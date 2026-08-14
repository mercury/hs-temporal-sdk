use ffi_convert::*;
use serde::{Deserialize, Serialize};
use std::collections::HashMap;
use std::future::Future;
use std::net::SocketAddr;
use std::os::raw::c_int;
use std::sync::Arc;
use std::time::{Duration, SystemTime};
use temporalio_common::telemetry::metrics::{CoreMeter, NoOpCoreMeter};
use temporalio_common::telemetry::{
    CoreTelemetry, Logger, OtelCollectorOptions, PrometheusExporterOptions, TelemetryOptions,
};
use temporalio_sdk_core::telemetry::{
    build_otlp_metric_exporter, construct_filter_string, start_prometheus_metric_exporter,
};
use temporalio_sdk_core::{CoreRuntime, RuntimeOptions, TokioRuntimeBuilder};
use tracing::Level;

pub struct RuntimeRef {
    pub(crate) runtime: Runtime,
}

#[derive(Clone)]
pub(crate) struct Runtime {
    pub(crate) core: Arc<CoreRuntime>,
    pub(crate) try_put_mvar: extern "C" fn(capability: Capability, mvar: *mut MVar) -> (),
}

fn init_runtime(
    telemetry_config: TelemetryOptions,
    late_telemetry_options: HsTelemetryOptions,
    try_put_mvar: extern "C" fn(capability: Capability, mvar: *mut MVar) -> (),
) -> Box<RuntimeRef> {
    let runtime_options = RuntimeOptions::builder()
        .telemetry_options(telemetry_config)
        .build()
        .unwrap();
    let mut runtime = CoreRuntime::new(runtime_options, TokioRuntimeBuilder::default()).unwrap();

    let _guard = runtime.tokio_handle().enter();
    let core_meter: Arc<dyn CoreMeter> = match late_telemetry_options {
        HsTelemetryOptions::NoTelemetry => Arc::new(NoOpCoreMeter) as Arc<dyn CoreMeter>,
        HsTelemetryOptions::OtelTelemetryOptions {
            url,
            headers,
            metric_periodicity,
            global_tags,
        } => Arc::new(
            build_otlp_metric_exporter(
                OtelCollectorOptions::builder()
                    .url(url.parse().expect("Invalid URL"))
                    .metric_periodicity(metric_periodicity.unwrap_or_else(|| Duration::new(1, 0)))
                    .headers(headers)
                    .global_tags(global_tags)
                    .build(),
            )
            .expect("Otel Metric exporter"),
        ) as Arc<dyn CoreMeter>,
        HsTelemetryOptions::PrometheusTelemetryOptions {
            socket_addr,
            global_tags,
            counters_total_suffix,
            unit_suffix,
        } => {
            let srv = start_prometheus_metric_exporter(
                PrometheusExporterOptions::builder()
                    .socket_addr(socket_addr)
                    .unit_suffix(unit_suffix)
                    .global_tags(global_tags)
                    .counters_total_suffix(counters_total_suffix)
                    .build(),
            )
            .expect("Failed to start prometheus exporter");
            srv.meter as Arc<dyn CoreMeter>
        }
    };
    runtime.telemetry_mut().attach_late_init_metrics(core_meter);

    // TODO need to figure out how to handle errors here
    Box::new(RuntimeRef {
        runtime: Runtime {
            core: Arc::new(runtime),
            try_put_mvar,
        },
    })
}

#[derive(Serialize, Deserialize)]
#[serde(tag = "tag")]
pub enum HsTelemetryOptions {
    OtelTelemetryOptions {
        url: String,
        headers: HashMap<String, String>,
        metric_periodicity: Option<Duration>,
        global_tags: HashMap<String, String>,
    },
    PrometheusTelemetryOptions {
        socket_addr: SocketAddr,
        global_tags: HashMap<String, String>,
        counters_total_suffix: bool,
        unit_suffix: bool,
    },
    NoTelemetry,
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_init_runtime(
    telemetry_opts: *const CArray<u8>,
    try_put_mvar: extern "C" fn(Capability, *mut MVar) -> (),
) -> *mut RuntimeRef {
    let telemetry_opts = unsafe {
        CArray::raw_borrow(telemetry_opts)
            .unwrap()
            .as_rust()
            .unwrap()
            .clone()
    };
    let telemetry_opts: HsTelemetryOptions =
        serde_json::from_slice(telemetry_opts.as_slice()).expect("Failed to parse");

    let early_options = TelemetryOptions::builder()
        .logging(Logger::Forward {
            filter: construct_filter_string(Level::INFO, Level::ERROR),
        })
        .attach_service_name(true)
        // .metrics(core_meter)
        .build();
    let rt = init_runtime(early_options, telemetry_opts, try_put_mvar);
    Box::into_raw(rt)
}

fn safe_drop_runtime(runtime: Box<RuntimeRef>) {
    drop(runtime)
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_free_runtime(runtime: *mut RuntimeRef) {
    unsafe { safe_drop_runtime(Box::from_raw(runtime)) };
}

#[repr(C)]
pub struct MVar {
    _data: [u8; 0],
    _marker: core::marker::PhantomData<(*mut u8, core::marker::PhantomPinned)>,
}

#[repr(C)]
pub struct Capability {
    pub cap_num: c_int,
}

pub struct HsCallback<A, E> {
    pub cap: Capability,
    pub mvar: *mut MVar,
    pub result_slot: *mut *mut A,
    pub error_slot: *mut *mut E,
}

// The raw pointers in an 'HsCallback' are owned by the Haskell thread that is
// parked on 'mvar', which keeps them alive until it is woken. Moving the
// callback onto a Tokio task is therefore safe, and is required so that
// 'future_result_into_hs' can spawn rather than block the calling thread.
unsafe impl<A, E> Send for HsCallback<A, E> {}

/// Carries an FFI result across a task boundary.
///
/// The `#[repr(C)]` result types are not `Send` because they contain raw
/// pointers, but a completed FFI result is unaliased and its ownership moves
/// with the value -- it is produced by the Tokio task and then handed to
/// exactly one Haskell caller. Wrapping it lets the result travel from the task
/// to the thread that fills the caller's MVar.
struct FfiResult<T>(T);

unsafe impl<T> Send for FfiResult<T> {}

impl<A, E> HsCallback<A, E> {
    pub(crate) fn put_success(self, runtime: &Runtime, result: A)
    where
        A: RawPointerConverter<A>,
    {
        unsafe {
            *self.result_slot = result.into_raw_pointer_mut();
            *self.error_slot = std::ptr::null_mut();
            runtime.put_mvar(self.cap, self.mvar);
        }
    }

    pub(crate) fn put_failure(self, runtime: &Runtime, error: E)
    where
        E: RawPointerConverter<E>,
    {
        unsafe {
            *self.error_slot = error.into_raw_pointer_mut();
            *self.result_slot = std::ptr::null_mut();
            runtime.put_mvar(self.cap, self.mvar);
        }
    }

    pub(crate) fn put_result(self, runtime: &Runtime, result: Result<A, E>)
    where
        A: RawPointerConverter<A>,
        E: RawPointerConverter<E>,
    {
        match result {
            Ok(result) => self.put_success(runtime, result),
            Err(error) => self.put_failure(runtime, error),
        }
    }
}

impl Runtime {
    /// Drive `fut` on the Tokio runtime and hand its result back to the Haskell
    /// thread parked on `callback.mvar`.
    ///
    /// This must `spawn` rather than `block_on`. The Haskell side of the bridge
    /// ('makeTokioAsyncCall') hands us a 'StablePtr PrimMVar' precisely so that
    /// the foreign call can return immediately and the Haskell thread can park
    /// on an *interruptible* 'takeMVar'. Blocking here instead pins the calling
    /// GHC worker thread inside the foreign call for the whole duration of the
    /// future, which makes every Temporal call uninterruptible from Haskell:
    /// 'timeout' and 'killThread' cannot touch a thread in a foreign call, so a
    /// long poll (or a hung one) becomes unkillable and takes any thunk it was
    /// evaluating -- e.g. a shared CAF of workflow definitions -- down with it.
    /// That was the root cause of the STAB-681 CI wedges.
    pub fn future_result_into_hs<F, T, E>(&self, callback: HsCallback<T, E>, fut: F)
    where
        F: Future<Output = Result<T, E>> + Send + 'static,
        T: RawPointerConverter<T> + 'static,
        E: RawPointerConverter<E> + 'static,
    {
        let runtime = self.clone();
        let handle = self.core.tokio_handle();
        let task = handle.spawn(async move { FfiResult(fut.await) });
        // Tokio swallows task panics, which would leave the Haskell thread
        // parked on its MVar forever. Joining the task lets us notice a panic
        // (or a cancellation) and fail loudly instead of hanging, matching the
        // previous behaviour of a panic unwinding across the FFI boundary.
        handle.spawn(async move {
            match task.await {
                Ok(FfiResult(result)) => callback.put_result(&runtime, result),
                Err(err) if err.is_panic() => {
                    eprintln!(
                        "hs-temporal-sdk: panic in the Tokio task servicing a Haskell call; \
                         aborting rather than leaving the caller blocked forever"
                    );
                    std::process::abort();
                }
                // The task was cancelled, which only happens when the runtime
                // is being torn down. The caller's MVar is left unfilled
                // deliberately: the process is going away, and aborting here
                // would turn an ordinary shutdown into a crash.
                Err(_) => {}
            }
        });
    }

    pub fn put_mvar(&self, capability: Capability, mvar: *mut MVar) {
        (self.try_put_mvar)(capability, mvar);
    }
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_drop_byte_array(str: *const CArray<u8>) {
    unsafe {
        drop(CArray::from_raw_pointer(str));
    }
}

#[derive(Serialize)]
pub struct CoreLogDef {
    pub target: String,
    pub message: String,
    pub timestamp: SystemTime,
    pub level: String,
    pub fields: HashMap<String, serde_json::Value>,
    pub span_contexts: Vec<String>,
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_runtime_fetch_logs(
    runtime: *mut RuntimeRef,
) -> *const CArray<CArray<u8>> {
    let runtime = unsafe { &*runtime };
    let logs = runtime.runtime.core.telemetry().fetch_buffered_logs();
    let hs_logs: Vec<Vec<u8>> = logs
        .iter()
        .map(|log| {
            let log = CoreLogDef {
                target: log.target.clone(),
                message: log.message.clone(),
                timestamp: log.timestamp,
                level: String::from(log.level.as_str()),
                fields: log.fields.clone(),
                span_contexts: log.span_contexts.clone(),
            };
            serde_json::to_vec(&log).expect("Failed to serialize log line")
        })
        .collect();
    CArray::c_repr_of(hs_logs).unwrap().into_raw_pointer()
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_runtime_free_logs(logs: *const CArray<CArray<u8>>) {
    unsafe {
        drop(CArray::from_raw_pointer(logs));
    }
}
