use ffi_convert::*;
use serde::{Deserialize, Serialize};
use std::collections::HashMap;
use std::future::Future;
use std::net::SocketAddr;
use std::os::raw::c_int;
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

pub struct RuntimeRef {
    pub(crate) runtime: Runtime,
}

#[derive(Clone)]
pub(crate) struct Runtime {
    pub(crate) core: Arc<CoreRuntime>,
    pub(crate) try_put_mvar: extern "C" fn(capability: Capability, mvar: *mut MVar) -> (),
    core_runtime_dropper: mpsc::Sender<Arc<CoreRuntime>>,
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

struct CoreRuntimeKeepAlive {
    runtime: Option<Arc<CoreRuntime>>,
    dropper: mpsc::Sender<Arc<CoreRuntime>>,
}

impl CoreRuntimeKeepAlive {
    fn new(runtime: Arc<CoreRuntime>, dropper: mpsc::Sender<Arc<CoreRuntime>>) -> Self {
        Self {
            runtime: Some(runtime),
            dropper,
        }
    }
}

impl Drop for CoreRuntimeKeepAlive {
    fn drop(&mut self) {
        let runtime = self.runtime.take().unwrap();
        if let Err(runtime) = self.dropper.send(runtime) {
            // Do not unwind and drop `runtime` on a Tokio worker. Losing the
            // Runtime's dropper is an internal lifecycle invariant failure.
            std::mem::forget(runtime);
            eprintln!("hs-temporal-sdk: Core runtime dropper exited unexpectedly; aborting");
            std::process::abort();
        }
    }
}

fn init_runtime(
    telemetry_config: TelemetryOptions,
    late_telemetry_options: HsTelemetryOptions,
    try_put_mvar: extern "C" fn(capability: Capability, mvar: *mut MVar) -> (),
) -> Result<Box<RuntimeRef>, String> {
    let runtime_options = RuntimeOptions::builder()
        .telemetry_options(telemetry_config)
        .build()
        .map_err(|err| format!("Invalid runtime options: {err}"))?;
    let mut runtime = CoreRuntime::new(runtime_options, TokioRuntimeBuilder::default())
        .map_err(|err| format!("Failed to start the Core runtime: {err:#}"))?;

    let core_meter = {
        // Exporters spawn Tokio tasks, so they must start inside the runtime.
        let _guard = runtime.tokio_handle().enter();
        build_core_meter(late_telemetry_options)?
    };
    runtime.telemetry_mut().attach_late_init_metrics(core_meter);

    Ok(Box::new(RuntimeRef {
        runtime: Runtime {
            core: Arc::new(runtime),
            try_put_mvar,
            core_runtime_dropper: spawn_core_runtime_dropper(),
        },
    }))
}

fn build_core_meter(options: HsTelemetryOptions) -> Result<Arc<dyn CoreMeter>, String> {
    match options {
        HsTelemetryOptions::NoTelemetry => Ok(Arc::new(NoOpCoreMeter)),
        HsTelemetryOptions::OtelTelemetryOptions {
            url,
            headers,
            metric_periodicity,
            global_tags,
        } => {
            let url = url
                .parse()
                .map_err(|err| format!("Invalid OpenTelemetry collector URL {url:?}: {err}"))?;
            let meter = build_otlp_metric_exporter(
                OtelCollectorOptions::builder()
                    .url(url)
                    .metric_periodicity(metric_periodicity.unwrap_or_else(|| Duration::new(1, 0)))
                    .headers(headers)
                    .global_tags(global_tags)
                    .build(),
            )
            .map_err(|err| format!("Failed to build the OpenTelemetry metric exporter: {err:#}"))?;
            Ok(Arc::new(meter))
        }
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
            .map_err(|err| {
                format!("Failed to start the Prometheus exporter on {socket_addr}: {err:#}")
            })?;
            Ok(srv.meter)
        }
    }
}

/// Parse the telemetry options sent by `Temporal.Runtime.initializeRuntime`.
pub(crate) fn parse_telemetry_options(json: &[u8]) -> Result<HsTelemetryOptions, String> {
    serde_json::from_slice(json).map_err(|err| format!("Invalid telemetry options: {err}"))
}

/// Copy a byte array owned by Haskell.
///
/// # Safety
///
/// `array` must be null or point to a live `CArray<u8>` whose `data_ptr` is valid
/// for `size` bytes.
pub(crate) unsafe fn copy_byte_array(
    array: *const CArray<u8>,
    description: &str,
) -> Result<Vec<u8>, String> {
    let array = unsafe { CArray::raw_borrow(array) }
        .map_err(|_| format!("{description} pointer is null"))?;
    if array.size > 0 && array.data_ptr.is_null() {
        return Err(format!("{description} data pointer is null"));
    }
    array
        .as_rust()
        .map_err(|err| format!("Failed to read {description}: {err}"))
}

/// Move `bytes` into a byte array that Haskell frees with `hs_temporal_drop_byte_array`.
pub(crate) fn byte_array(bytes: Vec<u8>) -> CArray<u8> {
    // Converting a `Vec<u8>` only boxes it, so this cannot fail.
    CArray::c_repr_of(bytes).expect("byte arrays have a C representation")
}

/// Build the byte-array error value used by bridge calls that report a message.
pub(crate) fn error_bytes(message: impl Into<String>) -> CArray<u8> {
    byte_array(message.into().into_bytes())
}

/// Store `message` in a nullable error out-parameter.
///
/// # Safety
///
/// `slot` must be null or valid for writes.
pub(crate) unsafe fn write_error_slot(slot: *mut *mut CArray<u8>, message: impl Into<String>) {
    if !slot.is_null() {
        unsafe { *slot = error_bytes(message).into_raw_pointer_mut() };
    }
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
///
/// Returns null on failure and stores a UTF-8 message in `*error_slot`, which
/// the caller frees with `hs_temporal_drop_byte_array`. On success,
/// `*error_slot` is set to null.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_init_runtime(
    telemetry_opts: *const CArray<u8>,
    try_put_mvar: extern "C" fn(Capability, *mut MVar) -> (),
    error_slot: *mut *mut CArray<u8>,
) -> *mut RuntimeRef {
    if !error_slot.is_null() {
        unsafe { *error_slot = std::ptr::null_mut() };
    }
    let result = unsafe { copy_byte_array(telemetry_opts, "telemetry options") }
        .and_then(|json| parse_telemetry_options(&json))
        .and_then(|telemetry_opts| {
            let early_options = TelemetryOptions::builder()
                .logging(Logger::Forward {
                    filter: construct_filter_string(Level::INFO, Level::ERROR),
                })
                .attach_service_name(true)
                .build();
            init_runtime(early_options, telemetry_opts, try_put_mvar)
        });
    match result {
        Ok(rt) => Box::into_raw(rt),
        Err(message) => {
            unsafe { write_error_slot(error_slot, message) };
            std::ptr::null_mut()
        }
    }
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
        let runtime =
            CoreRuntimeKeepAlive::new(self.core.clone(), self.core_runtime_dropper.clone());
        let task = handle.spawn(async move {
            callback.put_result(try_put_mvar, fut.await);
        });

        // Detached Tokio tasks do not propagate panics. Supervise this one so
        // a panic remains fail-fast, as it was when `block_on` ran inside the C
        // ABI call, rather than leaving the Haskell waiter blocked forever. The
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
            core,
            try_put_mvar: notify_haskell,
            core_runtime_dropper: spawn_core_runtime_dropper(),
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

    #[test]
    fn telemetry_options_reject_invalid_input() {
        for json in [
            &br#"{"tag":"Unknown"}"#[..],
            br#"{"tag":"PrometheusTelemetryOptions","socket_addr":"not an address",
                 "global_tags":{},"counters_total_suffix":false,"unit_suffix":false}"#,
            b"not json",
        ] {
            let err = parse_telemetry_options(json).err().unwrap_or_else(|| {
                panic!("accepted {}", String::from_utf8_lossy(json));
            });
            assert!(err.starts_with("Invalid telemetry options"), "{err}");
        }
    }

    #[test]
    fn otel_meter_rejects_an_invalid_url() {
        let err = build_core_meter(HsTelemetryOptions::OtelTelemetryOptions {
            url: "not a url".into(),
            headers: HashMap::new(),
            metric_periodicity: None,
            global_tags: HashMap::new(),
        })
        .err()
        .unwrap();
        assert!(err.contains("Invalid OpenTelemetry collector URL"), "{err}");
    }

    #[test]
    fn prometheus_meter_reports_a_bind_failure() {
        let taken = std::net::TcpListener::bind("127.0.0.1:0").unwrap();
        let socket_addr = taken.local_addr().unwrap();
        let tokio = tokio::runtime::Runtime::new().unwrap();
        let _guard = tokio.enter();
        let err = build_core_meter(HsTelemetryOptions::PrometheusTelemetryOptions {
            socket_addr,
            global_tags: HashMap::new(),
            counters_total_suffix: false,
            unit_suffix: false,
        })
        .err()
        .unwrap();
        assert!(
            err.contains("Failed to start the Prometheus exporter"),
            "{err}"
        );
    }

    fn init_runtime_from_json(json: &[u8]) -> (*mut RuntimeRef, Option<String>) {
        let input = CArray::c_repr_of(json.to_vec()).unwrap();
        let mut error_slot: *mut CArray<u8> = std::ptr::null_mut();
        let runtime = unsafe { hs_temporal_init_runtime(&input, notify_haskell, &mut error_slot) };
        let error = (!error_slot.is_null()).then(|| {
            let error = unsafe { CArray::from_raw_pointer_mut(error_slot) }.unwrap();
            String::from_utf8(error.as_rust().unwrap()).unwrap()
        });
        (runtime, error)
    }

    #[test]
    fn init_runtime_returns_an_error_for_invalid_options() {
        let (runtime, error) = init_runtime_from_json(br#"{"tag":"Unknown"}"#);
        assert!(runtime.is_null());
        assert!(error.unwrap().starts_with("Invalid telemetry options"));

        let (runtime, error) = init_runtime_from_json(
            br#"{"tag":"OtelTelemetryOptions","url":"not a url","headers":{},
                 "metric_periodicity":null,"global_tags":{}}"#,
        );
        assert!(runtime.is_null());
        assert!(
            error
                .unwrap()
                .contains("Invalid OpenTelemetry collector URL")
        );

        let mut error_slot: *mut CArray<u8> = std::ptr::null_mut();
        let runtime =
            unsafe { hs_temporal_init_runtime(std::ptr::null(), notify_haskell, &mut error_slot) };
        assert!(runtime.is_null());
        let error = unsafe { CArray::from_raw_pointer_mut(error_slot) }.unwrap();
        assert_eq!(
            String::from_utf8(error.as_rust().unwrap()).unwrap(),
            "telemetry options pointer is null"
        );
    }

    #[test]
    fn init_runtime_succeeds_without_telemetry() {
        let (runtime, error) = init_runtime_from_json(br#"{"tag":"NoTelemetry"}"#);
        assert_eq!(error, None);
        assert!(!runtime.is_null());
        unsafe { hs_temporal_free_runtime(runtime) };
    }

    #[test]
    fn copy_byte_array_rejects_null_pointers() {
        let err = unsafe { copy_byte_array(std::ptr::null(), "input") }.unwrap_err();
        assert_eq!(err, "input pointer is null");
        let dangling = CArray::<u8> {
            data_ptr: std::ptr::null(),
            size: 3,
        };
        let err = unsafe { copy_byte_array(&dangling, "input") }.unwrap_err();
        assert_eq!(err, "input data pointer is null");
        let empty = CArray::<u8> {
            data_ptr: std::ptr::null(),
            size: 0,
        };
        assert_eq!(
            unsafe { copy_byte_array(&empty, "input") }.unwrap(),
            Vec::<u8>::new()
        );
    }
}

/// Helpers that stand in for the Haskell side of a bridge call in unit tests.
#[cfg(test)]
pub(crate) mod test_support {
    use super::*;
    use std::sync::mpsc;

    /// The test runtime's `try_put_mvar`. It consumes the sender that
    /// `call_bridge` passes as the `MVar`, as `hs_try_putmvar` consumes its
    /// `StablePtr`.
    extern "C" fn notify_test_waiter(_: Capability, mvar: *mut MVar) {
        let sender = unsafe { Box::from_raw(mvar.cast::<mpsc::Sender<()>>()) };
        let _ = sender.send(());
    }

    pub(crate) fn new_test_runtime() -> RuntimeRef {
        let core = CoreRuntime::new(
            RuntimeOptions::builder().build().unwrap(),
            TokioRuntimeBuilder::default(),
        )
        .unwrap();
        RuntimeRef {
            runtime: Runtime {
                core: Arc::new(core),
                try_put_mvar: notify_test_waiter,
                core_runtime_dropper: spawn_core_runtime_dropper(),
            },
        }
    }

    /// Stands in for the Haskell side of an async bridge call
    /// (`withTokioAsyncCall` in `Temporal.Internal.FFI`).
    ///
    /// `start` receives the `MVar`, capability, and error and result slots that
    /// Haskell would pass to a bridge entry point. The call blocks until the
    /// spawned task calls the runtime's `try_put_mvar`, then returns the value
    /// that the task wrote. The runtime must come from `new_test_runtime`.
    pub(crate) fn call_bridge<A, E>(
        start: impl FnOnce(*mut MVar, Capability, *mut *mut E, *mut *mut A),
    ) -> Result<A, E>
    where
        A: RawPointerConverter<A>,
        E: RawPointerConverter<E>,
    {
        let (sender, receiver) = mpsc::channel::<()>();
        // `notify_test_waiter` takes ownership of the sender.
        let mvar = Box::into_raw(Box::new(sender)).cast::<MVar>();
        let mut result: *mut A = std::ptr::null_mut();
        let mut error: *mut E = std::ptr::null_mut();
        // GHC's "any capability" value. `notify_test_waiter` ignores it.
        let cap = Capability { cap_num: -1 };
        start(mvar, cap, &raw mut error, &raw mut result);
        receiver
            .recv_timeout(Duration::from_secs(10))
            .expect("the bridge call never woke its waiter");
        unsafe {
            if error.is_null() {
                Ok(A::from_raw_pointer_mut(result).unwrap())
            } else {
                Err(E::from_raw_pointer_mut(error).unwrap())
            }
        }
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
