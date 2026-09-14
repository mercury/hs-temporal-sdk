use ffi_convert::*;
use serde::{Deserialize, Serialize};
use std::collections::HashMap;
use std::future::Future;
use std::net::SocketAddr;
use std::ops::Deref;
use std::os::raw::c_int;
use std::sync::atomic::{AtomicU64, Ordering};
use std::sync::{Arc, mpsc};
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

#[derive(Clone)]
pub struct RuntimeRef {
    pub(crate) runtime: Runtime,
}

/// A handle to the Core runtime and thread-pool.
///
/// `core` is `Arc<CoreRuntimeDeferredDrop>` rather than `Arc<CoreRuntime>` directly: every
/// clone of `Runtime` shares the same `Arc<CoreRuntimeDeferredDrop>`, so the *last* one
/// to drop always routes the teardown through `CoreRuntimeDeferredDrop::drop` and its
/// dropper thread.
#[derive(Clone)]
pub(crate) struct Runtime {
    pub(crate) core: Arc<CoreRuntimeDeferredDrop>,
    pub(crate) try_put_mvar: extern "C" fn(capability: Capability, mvar: *mut MVar) -> (),
}

/// Drops task-owned Core runtime references outside the Tokio runtime they keep alive.
///
/// A spawned bridge call may hold the final `Arc<CoreRuntime>` after Haskell destroys
/// its runtime handle. Dropping that reference inside the call's Tokio task would make
/// Tokio try to shut itself down from one of its own workers. Each Runtime has
/// a non-Tokio dropper thread on which spawned calls release their keepalives.
fn spawn_core_runtime_dropper() -> mpsc::Sender<Arc<CoreRuntime>> {
    let (tx, rx) = mpsc::channel::<Arc<CoreRuntime>>();
    std::thread::Builder::new()
        .name("temporal-core-runtime-dropper".to_owned())
        .spawn(move || {
            while let Ok(runtime) = rx.recv() {
                drop(runtime);
            }
        })
        .expect("failed to start the Core runtime dropper");
    tx
}

/// The number of distinct underlying Core runtimes (Tokio thread-pools) currently alive.
///
/// This is a *runtime* counter, not a *handle* counter: cloning a `Runtime` does not
/// change this count. Constructing a brand new Core runtime in `init_runtime` increments
/// it and only the underlying runtime's actual teardown in `CoreRuntimeDeferredDrop::drop`
/// decrements it.
///
/// This allows tests to observe that every clone of a runtime, including ones a public FFI
/// entry point never hands back a pointer for has actually been released, not merely that
/// some `RuntimeRef` pointer was freed.
static LIVE_CORE_RUNTIMES: AtomicU64 = AtomicU64::new(0);

/// Wraps `Arc<CoreRuntime>` so that dropping the *last* shared reference sends the
/// underlying runtime to the dropper thread instead of tearing it down in place.
///
/// This is what makes it safe for `Runtime::future_result_into_hs` to hand a clone of
/// this type to a spawned Tokio task: if that task ends up holding the last reference,
/// its own drop glue never touches `CoreRuntime` directly, so a Tokio worker can never
/// end up tearing down the very runtime it belongs to.
pub(crate) struct CoreRuntimeDeferredDrop {
    runtime: Option<Arc<CoreRuntime>>,
    dropper: mpsc::Sender<Arc<CoreRuntime>>,
}

impl CoreRuntimeDeferredDrop {
    fn new(runtime: Arc<CoreRuntime>, dropper: mpsc::Sender<Arc<CoreRuntime>>) -> Self {
        LIVE_CORE_RUNTIMES.fetch_add(1, Ordering::SeqCst);
        Self {
            runtime: Some(runtime),
            dropper,
        }
    }
}

impl Deref for CoreRuntimeDeferredDrop {
    type Target = CoreRuntime;

    fn deref(&self) -> &CoreRuntime {
        self.runtime.as_ref().unwrap()
    }
}

impl Drop for CoreRuntimeDeferredDrop {
    fn drop(&mut self) {
        let runtime = self.runtime.take().unwrap();
        LIVE_CORE_RUNTIMES.fetch_sub(1, Ordering::SeqCst);
        if let Err(runtime) = self.dropper.send(runtime) {
            // Do not unwind and drop `runtime` on a Tokio worker. Losing the
            // Runtime's dropper is an internal lifecycle invariant failure.
            std::mem::forget(runtime);
            eprintln!("hs-temporal-sdk: Core runtime dropper exited unexpectedly; aborting");
            std::process::abort();
        }
    }
}

/// Test-only accessor for [`LIVE_CORE_RUNTIMES`]. See that item's documentation.
///
/// # Safety
///
/// None beyond the usual C ABI calling convention; this reads a global atomic.
#[unsafe(no_mangle)]
pub extern "C" fn hs_temporal_test_runtime_live_count() -> u64 {
    LIVE_CORE_RUNTIMES.load(Ordering::SeqCst)
}

fn init_runtime(
    telemetry_config: TelemetryOptions,
    late_telemetry_options: HsTelemetryOptions,
    try_put_mvar: extern "C" fn(capability: Capability, mvar: *mut MVar) -> (),
) -> Result<Box<RuntimeRef>, String> {
    let runtime_options = RuntimeOptions::builder()
        .telemetry_options(telemetry_config)
        .build()?;
    let mut runtime = CoreRuntime::new(runtime_options, TokioRuntimeBuilder::default())
        .map_err(|err| err.to_string())?;

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
                    .url(
                        url.parse()
                            .map_err(|err: url::ParseError| err.to_string())?,
                    )
                    .metric_periodicity(metric_periodicity.unwrap_or_else(|| Duration::new(1, 0)))
                    .headers(headers)
                    .global_tags(global_tags)
                    .build(),
            )
            .map_err(|err| err.to_string())?,
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
            .map_err(|err| err.to_string())?;
            srv.meter as Arc<dyn CoreMeter>
        }
    };
    runtime.telemetry_mut().attach_late_init_metrics(core_meter);

    Ok(Box::new(RuntimeRef {
        runtime: Runtime {
            core: Arc::new(CoreRuntimeDeferredDrop::new(
                Arc::new(runtime),
                spawn_core_runtime_dropper(),
            )),
            try_put_mvar,
        },
    }))
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
    result_slot: *mut *mut RuntimeRef,
    error_slot: *mut *mut CArray<u8>,
) {
    let telemetry_opts = unsafe {
        CArray::raw_borrow(telemetry_opts)
            .unwrap()
            .as_rust()
            .unwrap()
            .clone()
    };

    let result: Result<Box<RuntimeRef>, String> =
        serde_json::from_slice::<HsTelemetryOptions>(telemetry_opts.as_slice())
            .map_err(|err| err.to_string())
            .and_then(|telemetry_opts| {
                let early_options = TelemetryOptions::builder()
                    .logging(Logger::Forward {
                        filter: construct_filter_string(Level::INFO, Level::ERROR),
                    })
                    .attach_service_name(true)
                    // .metrics(core_meter)
                    .build();
                init_runtime(early_options, telemetry_opts, try_put_mvar)
            });

    match result {
        Ok(rt) => unsafe {
            *result_slot = Box::into_raw(rt);
        },
        Err(err) => unsafe {
            *error_slot = hs_error_message(err).into_raw_pointer_mut();
        },
    }
}

/// Release a `RuntimeRef` handle.
///
/// This only drops the handle itself; it does not guarantee the underlying Core runtime
/// tears down here or on this thread.
///
/// The last handle to drop routes the actual teardown through `CoreRuntimeDeferredDrop::drop`
/// and its dedicated dropper thread, which is what makes dropping this `Box` itself safe
/// regardless of which thread it is called from.
fn release_runtime_handle(runtime: Box<RuntimeRef>) {
    drop(runtime)
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_free_runtime(runtime: *mut RuntimeRef) {
    unsafe { release_runtime_handle(Box::from_raw(runtime)) };
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

/// Build a `CArray<u8>` error payload from a displayable error, for entry points
/// that report failures as UTF-8 error messages through an `error_slot`.
///
/// Used to turn malformed-config errors (bad JSON, invalid URLs, unparseable TLS
/// material, etc.) into a value the Haskell side can observe, instead of a
/// `.unwrap()`/`.expect()` panic that would abort the whole process for what is
/// ultimately bad caller input rather than an internal invariant violation.
///
/// # Panics
///
/// Only if the allocation backing the `CArray` itself fails, which indicates
/// memory exhaustion rather than a problem with `message`.
pub(crate) fn hs_error_message(message: impl std::fmt::Display) -> CArray<u8> {
    CArray::c_repr_of(message.to_string().into_bytes())
        .expect("failed to allocate an error message for the Haskell FFI boundary")
}

impl Runtime {
    /// Schedule `fut` on Tokio and report its result through `callback`.
    ///
    /// The C ABI entry point must return after scheduling. Haskell then waits on
    /// an interruptible `readMVar`; using `block_on` here would instead keep it
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
        let runtime = self.core.clone();
        let task = handle.spawn(async move {
            callback.put_result(try_put_mvar, fut.await);
        });

        // Detached Tokio tasks do not propagate panics. Supervise this one so
        // a panic remains fail-fast, as it was when `block_on` ran inside the C
        // ABI call, rather than leaving the Haskell caller blocked forever. The
        // supervisor also keeps Tokio alive until the callback has completed.
        handle.spawn(async move {
            let _runtime = runtime;
            match task.await {
                Ok(()) => {}
                Err(err) if err.is_panic() => {
                    eprintln!(
                        "hs-temporal-sdk: panic in the Tokio task servicing a Haskell call; \
                         aborting rather than leaving the caller blocked forever"
                    );
                    std::process::abort();
                }
                // The task handle is not exposed, and `_runtime` prevents
                // runtime shutdown while the task is pending. Cancellation
                // would strand the Haskell callback and its cleanup thread.
                Err(_) => {
                    eprintln!(
                        "hs-temporal-sdk: Tokio task servicing a Haskell call was cancelled; \
                         aborting rather than leaving the caller blocked forever"
                    );
                    std::process::abort();
                }
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
    fn future_result_into_hs_returns_early_and_keeps_runtime_alive() {
        let core = CoreRuntime::new(
            RuntimeOptions::builder().build().unwrap(),
            TokioRuntimeBuilder::default(),
        )
        .unwrap();
        let core = Arc::new(core);
        let core_weak = Arc::downgrade(&core);
        let runtime = Runtime {
            core: Arc::new(CoreRuntimeDeferredDrop::new(
                core,
                spawn_core_runtime_dropper(),
            )),
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
        // Simulate an interrupted Haskell caller leaving `bracketRuntime` while
        // the Tokio operation and its cleanup callback are still pending.
        drop(runtime);
        let _ = returned_tx.send(());

        let returned_before_release = releaser.join().unwrap();
        completed_rx.recv_timeout(Duration::from_secs(1)).unwrap();

        unsafe {
            drop(Box::from_raw(completed_tx));
            drop(CArray::from_raw_pointer_mut(result_slot).unwrap());
        }

        let drop_deadline = std::time::Instant::now() + Duration::from_secs(1);
        while core_weak.strong_count() != 0 && std::time::Instant::now() < drop_deadline {
            std::thread::yield_now();
        }

        assert!(returned_before_release);
        assert!(error_slot.is_null());
        assert_eq!(core_weak.strong_count(), 0);
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

/// Clone a runtime handle, sharing the underlying runtime.
///
/// Release the returned handle exactly once with `hs_temporal_free_runtime`; either handle may outlive the other.
///
/// # Safety
/// `runtime` must be a non-null pointer to a live handle returned by
/// `hs_temporal_init_runtime` or `hs_temporal_clone_runtime`.
///
/// The caller must keep the source handle alive and prevent concurrent destruction
/// or mutation of the source wrapper throughout this call.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_clone_runtime(runtime: *const RuntimeRef) -> *mut RuntimeRef {
    let runtime = unsafe { &*runtime };
    Box::into_raw(Box::new(runtime.clone()))
}
