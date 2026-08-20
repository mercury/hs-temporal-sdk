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

// SAFETY: Haskell allocates the two result slots before constructing this
// callback and keeps them alive until `hs_try_putmvar` wakes either the caller
// or its cleanup thread. The callback is their only writer. `mvar` is a
// `StablePtr PrimMVar`; `hs_try_putmvar` may be called from any OS thread and
// consumes that stable pointer. Moving these pointer values does not move or
// concurrently access their pointees.
unsafe impl<A, E> Send for HsCallback<A, E> {}

impl<A, E> HsCallback<A, E> {
    pub(crate) fn put_success(self, try_put_mvar: extern "C" fn(Capability, *mut MVar), result: A)
    where
        A: RawPointerConverter<A>,
    {
        unsafe {
            *self.result_slot = result.into_raw_pointer_mut();
            *self.error_slot = std::ptr::null_mut();
            try_put_mvar(self.cap, self.mvar);
        }
    }

    pub(crate) fn put_failure(self, try_put_mvar: extern "C" fn(Capability, *mut MVar), error: E)
    where
        E: RawPointerConverter<E>,
    {
        unsafe {
            *self.error_slot = error.into_raw_pointer_mut();
            *self.result_slot = std::ptr::null_mut();
            try_put_mvar(self.cap, self.mvar);
        }
    }

    pub(crate) fn put_result(
        self,
        try_put_mvar: extern "C" fn(Capability, *mut MVar),
        result: Result<A, E>,
    ) where
        A: RawPointerConverter<A>,
        E: RawPointerConverter<E>,
    {
        match result {
            Ok(result) => self.put_success(try_put_mvar, result),
            Err(error) => self.put_failure(try_put_mvar, error),
        }
    }
}

impl Runtime {
    /// Schedule `fut` on Tokio and report its result through `callback`.
    ///
    /// The C ABI entry point must return after scheduling. Haskell then waits on
    /// an interruptible `takeMVar`; using `block_on` here would instead keep it
    /// inside the foreign call until the future completed, preventing
    /// `timeout` and `killThread` from interrupting the wait.
    pub fn future_result_into_hs<F, T, E>(&self, callback: HsCallback<T, E>, fut: F)
    where
        F: Future<Output = Result<T, E>> + Send + 'static,
        T: RawPointerConverter<T> + 'static,
        E: RawPointerConverter<E> + 'static,
    {
        let handle = self.core.tokio_handle();
        let try_put_mvar = self.try_put_mvar;
        let task = handle.spawn(async move {
            callback.put_result(try_put_mvar, fut.await);
        });

        // Detached Tokio tasks do not propagate panics. Supervise this one so
        // a panic remains fail-fast, as it was when `block_on` ran inside the C
        // ABI call, rather than leaving the Haskell waiter blocked forever.
        handle.spawn(async move {
            match task.await {
                Ok(()) => {}
                Err(err) if err.is_panic() => {
                    eprintln!(
                        "hs-temporal-sdk: panic in the Tokio task servicing a Haskell call; \
                         aborting rather than leaving the caller blocked forever"
                    );
                    std::process::abort();
                }
                // This handle is not exposed, so cancellation is possible only
                // while the Tokio runtime itself is shutting down. In that
                // case the supervisor is shutting down too and cannot safely
                // call back into Haskell.
                Err(_) => {}
            }
        });
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use std::sync::mpsc;

    extern "C" fn notify_haskell(_: Capability, mvar: *mut MVar) {
        let sender = unsafe { &*mvar.cast::<mpsc::Sender<()>>() };
        sender.send(()).unwrap();
    }

    #[test]
    fn future_result_into_hs_returns_before_the_future_completes() {
        let core = CoreRuntime::new(
            RuntimeOptions::builder().build().unwrap(),
            TokioRuntimeBuilder::default(),
        )
        .unwrap();
        let runtime = Runtime {
            core: Arc::new(core),
            try_put_mvar: notify_haskell,
        };

        let (completed_tx, completed_rx) = mpsc::channel::<()>();
        let completed_tx = Box::into_raw(Box::new(completed_tx));
        let mut result_slot: *mut CArray<u8> = std::ptr::null_mut();
        let mut error_slot: *mut CArray<u8> = std::ptr::null_mut();
        let callback = HsCallback {
            cap: Capability { cap_num: -1 },
            mvar: completed_tx.cast(),
            result_slot: &mut result_slot,
            error_slot: &mut error_slot,
        };

        let (returned_tx, returned_rx) = mpsc::channel();
        let (release_tx, release_rx) = tokio::sync::oneshot::channel();
        let releaser = std::thread::spawn(move || {
            let returned_before_release =
                returned_rx.recv_timeout(Duration::from_millis(250)).is_ok();
            release_tx.send(()).unwrap();
            returned_before_release
        });

        runtime.future_result_into_hs(callback, async move {
            release_rx.await.unwrap();
            Ok::<_, CArray<u8>>(CArray::c_repr_of(vec![1_u8]).unwrap())
        });
        let _ = returned_tx.send(());

        let returned_before_release = releaser.join().unwrap();
        completed_rx.recv_timeout(Duration::from_secs(1)).unwrap();

        unsafe {
            drop(Box::from_raw(completed_tx));
            drop(CArray::from_raw_pointer_mut(result_slot).unwrap());
        }

        assert!(returned_before_release);
        assert!(error_slot.is_null());
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
