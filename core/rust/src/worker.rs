use ffi_convert::{AsRust, CArray, CDrop, CDropError, CReprOf, RawPointerConverter};
use libc::c_char;
use prost::Message;
use std::collections::{HashMap, HashSet};
use std::marker::PhantomData;
use std::str;
use std::sync::Arc;
use std::time::Duration;
use temporalio_common::Worker;
use temporalio_common::errors::{PollError, WorkflowErrorType};
use temporalio_common::protos::coresdk::nexus::NexusTaskCompletion;
use temporalio_common::protos::coresdk::workflow_completion::WorkflowActivationCompletion;
use temporalio_common::protos::coresdk::{ActivityHeartbeat, ActivityTaskCompletion};
use temporalio_common::protos::temporal::api::history::v1::History;
use temporalio_common::worker::{
    PollerBehavior, SlotInfoTrait, SlotKind, SlotMarkUsedContext, SlotReleaseContext,
    SlotReservationContext, SlotSupplier, SlotSupplierPermit, WorkerVersioningStrategy,
};
use temporalio_sdk_core::replay::{HistoryForReplay, ReplayWorkerInput};
use temporalio_sdk_core::{
    FixedSizeSlotSupplier, ResourceBasedSlotsOptions, ResourceSlotOptions, SlotSupplierOptions,
    TunerBuilder, TunerHolder, TunerHolderOptions,
};
use tokio::sync::mpsc::{Sender, channel};
use tokio_stream::wrappers::ReceiverStream;

use crate::client;
use crate::runtime::{
    self, Capability, HsCallback, MVar, byte_array, c_string_safe, copy_byte_array,
};
use serde::{Deserialize, Serialize};

pub struct WorkerRef {
    worker: Option<Arc<temporalio_sdk_core::Worker>>,
    runtime: runtime::Runtime,
}

#[derive(Serialize, Deserialize, Clone, Debug)]
#[serde(tag = "type")]
pub enum SlotSupplierConfig {
    #[serde(rename = "fixed_size")]
    FixedSize { slots: usize },
    #[serde(rename = "resource_based")]
    ResourceBased {
        minimum_slots: Option<usize>,
        maximum_slots: Option<usize>,
        ramp_throttle_ms: Option<u64>,
    },
    #[serde(rename = "custom")]
    Custom { handle: u64 },
}

#[derive(Serialize, Deserialize, Clone, Debug)]
pub struct ResourceBasedTunerConfig {
    pub target_memory_usage: f64,
    pub target_cpu_usage: f64,
}

#[derive(Serialize, Deserialize, Clone, Debug)]
pub struct TunerConfig {
    pub workflow_slot_supplier: Option<SlotSupplierConfig>,
    pub activity_slot_supplier: Option<SlotSupplierConfig>,
    pub local_activity_slot_supplier: Option<SlotSupplierConfig>,
    pub nexus_slot_supplier: Option<SlotSupplierConfig>,
    pub resource_based_tuner_options: Option<ResourceBasedTunerConfig>,
}

impl<SK: SlotKind + Send + Sync + 'static> From<&SlotSupplierConfig>
    for temporalio_sdk_core::SlotSupplierOptions<SK>
{
    fn from(cfg: &SlotSupplierConfig) -> SlotSupplierOptions<SK> {
        match cfg {
            SlotSupplierConfig::FixedSize { slots } => {
                SlotSupplierOptions::FixedSize { slots: *slots }
            }
            SlotSupplierConfig::ResourceBased {
                minimum_slots,
                maximum_slots,
                ramp_throttle_ms,
            } => SlotSupplierOptions::ResourceBased(ResourceSlotOptions::new(
                minimum_slots.unwrap_or(1),
                maximum_slots.unwrap_or(10_000),
                Duration::from_millis(ramp_throttle_ms.unwrap_or(50)),
            )),
            SlotSupplierConfig::Custom { handle } => {
                let inner_ptr = *handle as *const HaskellSlotSupplierInner;
                let inner = unsafe { &*inner_ptr };
                let supplier: HaskellSlotSupplier<SK> = HaskellSlotSupplier {
                    inner: Arc::new(HaskellSlotSupplierInner {
                        reserve_fn: inner.reserve_fn,
                        try_reserve_fn: inner.try_reserve_fn,
                        mark_used_fn: inner.mark_used_fn,
                        release_fn: inner.release_fn,
                    }),
                    _phantom: PhantomData,
                };
                SlotSupplierOptions::Custom(Arc::new(supplier))
            }
        }
    }
}

impl TryFrom<&TunerConfig> for TunerHolderOptions {
    type Error = WorkerError;
    fn try_from(cfg: &TunerConfig) -> Result<Self, WorkerError> {
        let maybe_resource_opts = cfg.resource_based_tuner_options.as_ref().map(|rbt| {
            ResourceBasedSlotsOptions::builder()
                .target_mem_usage(rbt.target_memory_usage)
                .target_cpu_usage(rbt.target_cpu_usage)
                .build()
        });

        let suppliers = [
            &cfg.workflow_slot_supplier,
            &cfg.activity_slot_supplier,
            &cfg.local_activity_slot_supplier,
            &cfg.nexus_slot_supplier,
        ];
        let any_resource_based = suppliers
            .iter()
            .any(|s| matches!(s, Some(SlotSupplierConfig::ResourceBased { .. })));

        if any_resource_based && maybe_resource_opts.is_none() {
            return Err(WorkerError {
                code: WorkerErrorCode::InvalidWorkerConfig,
                message: "resource_based_tuner_options must be set when any slot supplier is resource_based".to_string(),
            });
        }

        // Converting a custom supplier dereferences its handle.
        if suppliers
            .iter()
            .any(|s| matches!(s, Some(SlotSupplierConfig::Custom { handle: 0 })))
        {
            return Err(WorkerError {
                code: WorkerErrorCode::InvalidWorkerConfig,
                message: "custom slot supplier handle is null".to_string(),
            });
        }

        let maybe_workflow_slot_opts = cfg.workflow_slot_supplier.as_ref().map(Into::into);
        let maybe_activity_slot_opts = cfg.activity_slot_supplier.as_ref().map(Into::into);
        let maybe_local_activity_slot_opts =
            cfg.local_activity_slot_supplier.as_ref().map(Into::into);
        let maybe_nexus_slot_opts = cfg.nexus_slot_supplier.as_ref().map(Into::into);

        TunerHolderOptions::builder()
            .maybe_workflow_slot_options(maybe_workflow_slot_opts)
            .maybe_activity_slot_options(maybe_activity_slot_opts)
            .maybe_local_activity_slot_options(maybe_local_activity_slot_opts)
            .maybe_nexus_slot_options(maybe_nexus_slot_opts)
            .maybe_resource_based_options(maybe_resource_opts)
            .build()
            .map_err(|err| WorkerError {
                code: WorkerErrorCode::InvalidWorkerConfig,
                message: format!("Invalid tuner config: {}", err),
            })
    }
}

impl TryFrom<&TunerConfig> for TunerHolder {
    type Error = WorkerError;
    fn try_from(cfg: &TunerConfig) -> Result<Self, WorkerError> {
        TunerHolderOptions::try_from(cfg)?
            .build_tuner_holder()
            .map_err(|err| WorkerError {
                code: WorkerErrorCode::InvalidWorkerConfig,
                message: format!("Failed building tuner: {}", err),
            })
    }
}

// ---------------------------------------------------------------------------
// Custom (Haskell-supplied) SlotSupplier
// ---------------------------------------------------------------------------

/// Callback signatures that Haskell exports.
///
/// `reserve_slot`: called from async context. Haskell must fork a thread, do its work,
///   then call `hs_temporal_slot_reserve_complete(completion)` when ready.
///   `ctx_ptr`/`ctx_len` point to a JSON-encoded `SerializedSlotReservationContext`.
///   Haskell MUST copy the bytes before the callback returns (Rust frees them afterward).
///
/// `try_reserve_slot`: synchronous. Returns 1 if a slot was granted, 0 otherwise.
///
/// `mark_slot_used` / `release_slot`: fire-and-forget notifications with JSON-encoded info.
type ReserveSlotFn = unsafe extern "C" fn(
    ctx_ptr: *const u8,
    ctx_len: usize,
    completion: *mut SlotReserveCompletion,
);
type TryReserveSlotFn = unsafe extern "C" fn(ctx_ptr: *const u8, ctx_len: usize) -> i32;
type MarkSlotUsedFn = unsafe extern "C" fn(info_ptr: *const u8, info_len: usize);
type ReleaseSlotFn = unsafe extern "C" fn(info_ptr: *const u8, info_len: usize);

pub struct SlotReserveCompletion {
    sender: Option<tokio::sync::oneshot::Sender<()>>,
}

pub struct HaskellSlotSupplierInner {
    reserve_fn: ReserveSlotFn,
    try_reserve_fn: TryReserveSlotFn,
    mark_used_fn: MarkSlotUsedFn,
    release_fn: ReleaseSlotFn,
}

unsafe impl Send for HaskellSlotSupplierInner {}
unsafe impl Sync for HaskellSlotSupplierInner {}

struct HaskellSlotSupplier<SK: SlotKind> {
    inner: Arc<HaskellSlotSupplierInner>,
    _phantom: PhantomData<SK>,
}

unsafe impl<SK: SlotKind> Send for HaskellSlotSupplier<SK> {}
unsafe impl<SK: SlotKind> Sync for HaskellSlotSupplier<SK> {}

#[derive(Serialize)]
struct SerializedSlotReservationContext {
    task_queue: String,
    worker_identity: String,
    num_issued_slots: usize,
    is_sticky: bool,
}

impl SerializedSlotReservationContext {
    fn from_ctx(ctx: &dyn SlotReservationContext) -> Self {
        Self {
            task_queue: ctx.task_queue().to_string(),
            worker_identity: ctx.worker_identity().to_string(),
            num_issued_slots: ctx.num_issued_slots(),
            is_sticky: ctx.is_sticky(),
        }
    }
}

#[derive(Serialize)]
#[serde(tag = "type")]
enum SerializedSlotInfo {
    #[serde(rename = "workflow")]
    Workflow {
        workflow_type: String,
        is_sticky: bool,
    },
    #[serde(rename = "activity")]
    Activity { activity_type: String },
    #[serde(rename = "local_activity")]
    LocalActivity { activity_type: String },
    #[serde(rename = "nexus")]
    Nexus { service: String, operation: String },
}

impl SerializedSlotInfo {
    fn from_info(info: temporalio_common::worker::SlotInfo<'_>) -> Self {
        match info {
            temporalio_common::worker::SlotInfo::Workflow(i) => Self::Workflow {
                workflow_type: i.workflow_type.clone(),
                is_sticky: i.is_sticky,
            },
            temporalio_common::worker::SlotInfo::Activity(i) => Self::Activity {
                activity_type: i.activity_type.clone(),
            },
            temporalio_common::worker::SlotInfo::LocalActivity(i) => Self::LocalActivity {
                activity_type: i.activity_type.clone(),
            },
            temporalio_common::worker::SlotInfo::Nexus(i) => Self::Nexus {
                service: i.service.clone(),
                operation: i.operation.clone(),
            },
        }
    }
}

#[derive(Serialize)]
struct SerializedMarkUsedContext {
    slot_info: SerializedSlotInfo,
}

#[derive(Serialize)]
struct SerializedReleaseContext {
    slot_info: Option<SerializedSlotInfo>,
}

#[async_trait::async_trait]
impl<SK: SlotKind + 'static> SlotSupplier for HaskellSlotSupplier<SK>
where
    SK::Info: SlotInfoTrait,
{
    type SlotKind = SK;

    async fn reserve_slot(&self, ctx: &dyn SlotReservationContext) -> SlotSupplierPermit {
        let json = serde_json::to_vec(&SerializedSlotReservationContext::from_ctx(ctx))
            .expect("serialization should not fail");
        let (tx, rx) = tokio::sync::oneshot::channel();
        let completion = Box::into_raw(Box::new(SlotReserveCompletion { sender: Some(tx) }));

        unsafe { (self.inner.reserve_fn)(json.as_ptr(), json.len(), completion) };
        // json is alive until this point; Haskell must have copied the bytes synchronously.

        let _ = rx.await;
        SlotSupplierPermit::default()
    }

    fn try_reserve_slot(&self, ctx: &dyn SlotReservationContext) -> Option<SlotSupplierPermit> {
        let json = serde_json::to_vec(&SerializedSlotReservationContext::from_ctx(ctx))
            .expect("serialization should not fail");
        let result = unsafe { (self.inner.try_reserve_fn)(json.as_ptr(), json.len()) };
        if result != 0 {
            Some(SlotSupplierPermit::default())
        } else {
            None
        }
    }

    fn mark_slot_used(&self, ctx: &dyn SlotMarkUsedContext<SlotKind = SK>) {
        let info = SerializedSlotInfo::from_info(ctx.info().downcast());
        let json = serde_json::to_vec(&SerializedMarkUsedContext { slot_info: info })
            .expect("serialization should not fail");
        unsafe { (self.inner.mark_used_fn)(json.as_ptr(), json.len()) };
    }

    fn release_slot(&self, ctx: &dyn SlotReleaseContext<SlotKind = SK>) {
        let info = ctx
            .info()
            .map(|i| SerializedSlotInfo::from_info(i.downcast()));
        let json = serde_json::to_vec(&SerializedReleaseContext { slot_info: info })
            .expect("serialization should not fail");
        unsafe { (self.inner.release_fn)(json.as_ptr(), json.len()) };
    }
}

/// Create a custom slot supplier handle from Haskell-supplied callback function pointers.
/// Returns a raw pointer that must be freed with `hs_temporal_drop_custom_slot_supplier`.
///
/// # Safety
///
/// Haskell FFI bridge invariants. All function pointers must remain valid for the
/// lifetime of the returned handle.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_new_custom_slot_supplier(
    reserve_fn: ReserveSlotFn,
    try_reserve_fn: TryReserveSlotFn,
    mark_used_fn: MarkSlotUsedFn,
    release_fn: ReleaseSlotFn,
) -> *mut HaskellSlotSupplierInner {
    Box::into_raw(Box::new(HaskellSlotSupplierInner {
        reserve_fn,
        try_reserve_fn,
        mark_used_fn,
        release_fn,
    }))
}

/// Free a custom slot supplier handle.
///
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_drop_custom_slot_supplier(
    handle: *mut HaskellSlotSupplierInner,
) {
    unsafe { drop(Box::from_raw(handle)) };
}

/// Called from Haskell when a `reserve_slot` request has been fulfilled.
/// Takes ownership of the completion handle.
///
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_slot_reserve_complete(completion: *mut SlotReserveCompletion) {
    let mut completion = unsafe { Box::from_raw(completion) };
    if let Some(sender) = completion.sender.take() {
        let _ = sender.send(());
    }
}

/// Per-worker configuration options.
///
/// This struct should mirror the configuration we want to expose from [temporal::sdk_core::worker::WorkerConfig] in a
/// way that can be cleanly passed across the C FFI from Haskell.
///
/// Where possible, we'll try to adhere to the naming conventions used in the Rust SDK, and most of the field comments
/// have been copied verbatim from the upstream [temporal::sdk_core::worker::WorkerConfig] fields.
#[derive(Serialize, Deserialize)]
pub struct WorkerConfig {
    /// The Temporal service namespace this worker is bound to.
    namespace: String,
    /// The task queue this worker will poll from; this task queue name applies to both workflow and activity polling.
    task_queue: String,
    /// Legacy build identifier string, in the future this will be replaced with a proper [WorkerVersioningStrategy]
    /// enum bridge type that allows us to select one of the versioning strategies provided by the upstream SDK.
    ///
    /// This will eventually be replaced with a `versioning_strategy` configuration field.
    build_id: String,
    /// A human-readable string that can identify this worker.
    ///
    /// If set, overrides the identity set (if any) on the client used by this worker.
    client_identity_override: Option<String>,
    /// If set nonzero, workflows will be cached and sticky task queues will be used, meaning that history updates are
    /// applied incrementally to suspended instances of workflow execution.
    ///
    /// Workflows are evicted according to a least-recently-used policy once the cache maximum has been reached.
    ///
    /// Workflows may also be explicitly evicted at any time, or as a result of errors or failures.
    max_cached_workflows: usize,
    /// Set a [crate::WorkerTuner] for this worker by way of our [TunerConfig] FFI bridge type.
    ///
    /// Either this or at least one of the `max_outstanding_*` fields must be set.
    tuner: Option<TunerConfig>,
    /// The maximum allowed number of workflow tasks that will ever be given to this worker at one time.
    ///
    /// Note that one workflow task may require multiple activations - so the WFT counts as "outstanding" until all
    /// activations it requires have been completed. Must be at least 2 if `max_cached_workflows` is > 0, or is an
    /// error.
    ///
    /// Mutually exclusive with `tuner`; if both are defined, `tuner` has priority over this field.
    max_outstanding_workflow_tasks: usize,
    /// The maximum number of activity tasks that will ever be given to this worker concurrently.
    ///
    /// Mutually exclusive with `tuner`; if both are defined, `tuner` has priority over this field.
    max_outstanding_activities: usize,
    /// The maximum number of local activity tasks that will ever be given to this worker concurrently.
    ///
    /// Mutually exclusive with `tuner`; if both are defined, `tuner` has priority over this field.
    max_outstanding_local_activities: usize,
    /// The maximum number of nexus tasks that will ever be given to this worker concurrently.
    ///
    /// Mutually exclusive with `tuner`; if both are defined, `tuner` has priority over this field.
    max_outstanding_nexus_tasks: Option<usize>,
    /// Legacy maximum concurrent workflow task poller configuration field, in the future this will be replaced with
    /// a proper [PollerBehavior] enum bridge type that allows us to provide an appropriate polling behavior based on
    /// the upstream SDK.
    ///
    /// This will eventually be replaced with a `workflow_task_poller_behavior` configuration field.
    max_concurrent_workflow_task_polls: usize,
    /// Legacy maximum concurrent activity task poller configuration field, in the future this will be replaced with
    /// a proper [PollerBehavior] enum bridge type that allows us to provide an appropriate polling behavior based on
    /// the upstream SDK.
    ///
    /// This will eventually be replaced with an `activity_task_poller_behavior` configuration field.
    max_concurrent_activity_task_polls: usize,
    /// Legacy maximum concurrent nexus task poller configuration field, in the future this will be replaced with
    /// a proper [PollerBehavior] enum bridge type that allows us to provide an appropriate polling behavior based on
    /// the upstream SDK.
    ///
    /// This will eventually be replaced with a `nexus_task_poller_behavior` configuration field.
    max_concurrent_nexus_task_polls: Option<usize>,
    /// (max workflow task polls * this number) = the number of max pollers that will be allowed for
    /// the nonsticky queue when sticky tasks are enabled.
    ///
    /// Because we only support [PollerBehavior::SimpleMaximum] currently, this applies if sticky tasks are enabled.
    nonsticky_to_sticky_poll_ratio: f32,
    /// How long a workflow task is allowed to sit on the sticky queue before it is timed out and moved to the
    /// non-sticky queue where it may be picked up by any worker.
    sticky_queue_schedule_to_start_timeout_millis: u64,
    /// Longest interval for throttling activity heartbeat, in milliseconds.
    max_heartbeat_throttle_interval_millis: u64,
    /// Default interval for throttling activity heartbeats in case an activity's heartbeat timeout is not set, in
    /// milliseconds.
    ///
    /// When the timeout *is* set, throttling is set to 80% of that value.
    default_heartbeat_throttle_interval_millis: u64,
    /// Sets the maximum number of activities per second the task queue will dispatch, controlled server-side.
    ///
    /// Note that this only takes effect upon an activity poll request.
    ///
    /// If multiple workers on the same queue have different values set, they will thrash with the last poller winning.
    ///
    /// Setting this to a nonzero value will also disable eager activity execution.
    max_task_queue_activities_per_second: Option<f64>,
    /// Limits the number of activities per second that this worker will process.
    ///
    /// The worker will not poll for new activities if by doing so it might receive and execute an activity which would
    /// cause it to exceed this limit.
    ///
    /// Negative, zero, or NaN values will cause building the options to fail.
    max_worker_activities_per_second: Option<f64>,
    /// The grace period, in milliseconds, that the core worker will afford any running workflows & activities after
    /// shutdown has been initiated.
    graceful_shutdown_period_millis: u64,
    /// Whether nondeterministic workflows will trigger a workflow failure.
    nondeterminism_as_workflow_fail: bool,
    /// A list of workflow types for whom workflow failures will be considered to be nondeterminism errors.
    nondeterminism_as_workflow_fail_for_types: Vec<String>,
    /// If set to true this worker will only handle workflow tasks and local activities, it will not poll for activity
    /// tasks.
    ///
    /// This will eventually be replaced with a `task_types` field enumerating `WorkerTaskTypes`.
    no_remote_activities: bool,
}

impl TryFrom<&WorkerConfig> for TunerHolder {
    type Error = WorkerError;
    fn try_from(conf: &WorkerConfig) -> Result<TunerHolder, WorkerError> {
        match conf.tuner {
            Some(ref tuner_config) => tuner_config.try_into(),
            None => {
                let mut builder = TunerBuilder::default();
                builder.workflow_slot_supplier(Arc::new(FixedSizeSlotSupplier::new(
                    conf.max_outstanding_workflow_tasks,
                )));
                builder.activity_slot_supplier(Arc::new(FixedSizeSlotSupplier::new(
                    conf.max_outstanding_activities,
                )));
                builder.local_activity_slot_supplier(Arc::new(FixedSizeSlotSupplier::new(
                    conf.max_outstanding_local_activities,
                )));
                if let Some(m) = conf.max_outstanding_nexus_tasks {
                    builder.nexus_slot_supplier(Arc::new(FixedSizeSlotSupplier::new(m)));
                };
                Ok(builder.build())
            }
        }
    }
}

impl TryFrom<WorkerConfig> for temporalio_sdk_core::WorkerConfig {
    type Error = WorkerError;

    fn try_from(conf: WorkerConfig) -> Result<Self, WorkerError> {
        let converted_tuner: TunerHolder = (&conf).try_into()?;
        temporalio_sdk_core::WorkerConfig::builder()
            .namespace(conf.namespace)
            .task_queue(conf.task_queue)
            .versioning_strategy(WorkerVersioningStrategy::None {
                build_id: conf.build_id,
            })
            .maybe_client_identity_override(conf.client_identity_override)
            .max_cached_workflows(conf.max_cached_workflows)
            .tuner(Arc::new(converted_tuner))
            .workflow_task_poller_behavior(PollerBehavior::SimpleMaximum(
                conf.max_concurrent_workflow_task_polls,
            ))
            .nonsticky_to_sticky_poll_ratio(conf.nonsticky_to_sticky_poll_ratio)
            .activity_task_poller_behavior(PollerBehavior::SimpleMaximum(
                conf.max_concurrent_activity_task_polls,
            ))
            .sticky_queue_schedule_to_start_timeout(Duration::from_millis(
                conf.sticky_queue_schedule_to_start_timeout_millis,
            ))
            .max_heartbeat_throttle_interval(Duration::from_millis(
                conf.max_heartbeat_throttle_interval_millis,
            ))
            .default_heartbeat_throttle_interval(Duration::from_millis(
                conf.default_heartbeat_throttle_interval_millis,
            ))
            .maybe_max_worker_activities_per_second(conf.max_worker_activities_per_second)
            .maybe_max_task_queue_activities_per_second(conf.max_task_queue_activities_per_second)
            .graceful_shutdown_period(Duration::from_millis(conf.graceful_shutdown_period_millis))
            .workflow_failure_errors(if conf.nondeterminism_as_workflow_fail {
                HashSet::from([WorkflowErrorType::Nondeterminism])
            } else {
                HashSet::new()
            })
            .workflow_types_to_failure_errors(
                conf.nondeterminism_as_workflow_fail_for_types
                    .iter()
                    .map(|s| {
                        (
                            s.to_owned(),
                            HashSet::from([WorkflowErrorType::Nondeterminism]),
                        )
                    })
                    .collect::<HashMap<String, HashSet<WorkflowErrorType>>>(),
            )
            .nexus_task_poller_behavior(PollerBehavior::SimpleMaximum(
                conf.max_concurrent_nexus_task_polls.unwrap_or(5),
            ))
            // FIXME: Implement 'WorkerTaskTypes' as an FFI type
            .task_types(temporalio_common::worker::WorkerTaskTypes {
                enable_workflows: true,
                enable_local_activities: true,
                enable_remote_activities: !conf.no_remote_activities,
                enable_nexus: true,
            })
            .build()
            .map_err(|err| WorkerError {
                code: WorkerErrorCode::InvalidWorkerConfig,
                message: err.to_string(),
            })
    }
}

macro_rules! enter_sync {
    ($runtime:expr) => {
        let _trace_guard = $runtime
            .core
            .telemetry()
            .trace_subscriber()
            .map(|s| tracing::subscriber::set_default(s));
        let _guard = $runtime.core.tokio_handle().enter();
    };
}

#[repr(u8)]
#[derive(Copy, Clone, Debug)]
pub enum WorkerErrorCode {
    SDKError = 1,
    InitWorkerFailed = 2,
    InitReplayWorkerFailed = 3,
    InvalidProto = 4,
    ReplayWorkerClosed = 5,
    PollShutdownError = 6,
    PollFailure = 7,
    CompletionFailure = 8,
    InvalidWorkerConfig = 9,
}

impl AsRust<WorkerErrorCode> for WorkerErrorCode {
    fn as_rust(&self) -> Result<WorkerErrorCode, ffi_convert::AsRustError> {
        Ok(*self)
    }
}

impl CDrop for WorkerErrorCode {
    fn do_drop(&mut self) -> Result<(), CDropError> {
        Ok(())
    }
}

impl CReprOf<WorkerErrorCode> for WorkerErrorCode {
    fn c_repr_of(input: WorkerErrorCode) -> Result<WorkerErrorCode, ffi_convert::CReprOfError> {
        Ok(input)
    }
}

#[derive(Debug)]
pub struct WorkerError {
    code: WorkerErrorCode,
    message: String,
}

impl std::fmt::Display for WorkerError {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.write_str(&self.message)
    }
}

impl WorkerError {
    fn new(code: WorkerErrorCode, message: impl Into<String>) -> Self {
        Self {
            code,
            message: message.into(),
        }
    }
}

#[repr(C)]
#[derive(CReprOf, AsRust, RawPointerConverter, CDrop)]
#[target_type(WorkerError)]
pub struct CWorkerError {
    code: WorkerErrorCode,
    message: *const c_char,
}

impl From<WorkerError> for CWorkerError {
    fn from(err: WorkerError) -> Self {
        CWorkerError::c_repr_of(WorkerError {
            message: c_string_safe(err.message),
            ..err
        })
        .expect("a message without NUL bytes has a C representation")
    }
}

struct FormattedError {
    message: String,
}

#[repr(C)]
#[derive(CReprOf, AsRust, RawPointerConverter, CDrop)]
#[target_type(FormattedError)]
pub struct CWorkerValidationError {
    message: *const c_char,
}

impl From<String> for CWorkerValidationError {
    fn from(message: String) -> Self {
        CWorkerValidationError::c_repr_of(FormattedError {
            message: c_string_safe(message),
        })
        .expect("a message without NUL bytes has a C representation")
    }
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_drop_worker_validation_error(
    err: *mut CWorkerValidationError,
) {
    unsafe { drop(CWorkerValidationError::from_raw_pointer_mut(err)) }
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_drop_worker_error(err: *mut CWorkerError) {
    unsafe { drop(CWorkerError::from_raw_pointer_mut(err)) }
}

pub struct Unit {}
#[repr(C)]
#[derive(CReprOf, AsRust, RawPointerConverter, CDrop)]
#[target_type(Unit)]
pub struct CUnit {}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_drop_unit(unit: *mut CUnit) {
    unsafe { drop(CUnit::from_raw_pointer_mut(unit)) }
}

fn new_worker(client: &client::ClientRef, config: WorkerConfig) -> Result<WorkerRef, WorkerError> {
    enter_sync!(&client.runtime);
    let config: temporalio_sdk_core::WorkerConfig = config.try_into()?;
    let worker = temporalio_sdk_core::init_worker(
        &client.runtime.core,
        config,
        client.retry_client.clone().into_inner(),
    )
    .map_err(|err| WorkerError {
        code: WorkerErrorCode::InitWorkerFailed,
        message: format!("Failed creating worker: {}", err),
    })?;
    Ok(WorkerRef {
        worker: Some(Arc::new(worker)),
        runtime: client.runtime.clone(),
    })
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_drop_worker(worker: *mut WorkerRef) {
    unsafe { drop(Box::from_raw(worker)) }
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_new_worker(
    client: *mut client::ClientRef,
    config: *const CArray<u8>,
    result_slot: *mut *mut WorkerRef,
    error_slot: *mut *mut CWorkerError,
) {
    let result = unsafe { client.as_ref() }
        .ok_or_else(|| WorkerError::new(WorkerErrorCode::SDKError, "client is null"))
        .and_then(|client_ref| {
            let config = unsafe { read_worker_config(config) }?;
            new_worker(client_ref, config)
        });
    match result {
        Ok(worker_ref) => unsafe { *result_slot = Box::into_raw(Box::new(worker_ref)) },
        Err(worker_error) => unsafe {
            *error_slot = CWorkerError::from(worker_error).into_raw_pointer_mut()
        },
    }
}

/// Parse the worker configuration sent by `Temporal.Core.Worker`.
pub(crate) fn parse_worker_config(json: &[u8]) -> Result<WorkerConfig, WorkerError> {
    serde_json::from_slice(json).map_err(|err| {
        WorkerError::new(
            WorkerErrorCode::InvalidWorkerConfig,
            format!("Invalid worker config: {err}"),
        )
    })
}

/// # Safety
///
/// See [runtime::copy_byte_array].
unsafe fn read_worker_config(config: *const CArray<u8>) -> Result<WorkerConfig, WorkerError> {
    let json = unsafe { copy_byte_array(config, "worker config") }
        .map_err(|message| WorkerError::new(WorkerErrorCode::InvalidWorkerConfig, message))?;
    parse_worker_config(&json)
}

/// Read a caller-supplied byte array, reporting a null pointer as `code`.
///
/// # Safety
///
/// See [runtime::copy_byte_array].
unsafe fn read_bytes(
    array: *const CArray<u8>,
    description: &str,
    code: WorkerErrorCode,
) -> Result<Vec<u8>, WorkerError> {
    unsafe { copy_byte_array(array, description) }
        .map_err(|message| WorkerError::new(code, message))
}

fn new_replay_worker(
    runtime_ref: &runtime::RuntimeRef,
    config: WorkerConfig,
) -> Result<(WorkerRef, HistoryPusher), WorkerError> {
    enter_sync!(runtime_ref.runtime);
    let config: temporalio_sdk_core::WorkerConfig = config.try_into()?;
    let (history_pusher, stream) = HistoryPusher::new(runtime_ref.runtime.clone());
    let worker = WorkerRef {
        worker: Some(Arc::new(
            temporalio_sdk_core::init_replay_worker(ReplayWorkerInput::new(config, stream))
                .map_err(|err| WorkerError {
                    code: WorkerErrorCode::InitReplayWorkerFailed,
                    message: format!("Failed creating replay worker: {}", err),
                })?,
        )),
        runtime: runtime_ref.runtime.clone(),
    };

    Ok((worker, history_pusher))
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_new_replay_worker(
    runtime: *mut runtime::RuntimeRef,
    config: *const CArray<u8>,
    worker_slot: *mut *mut WorkerRef,
    history_slot: *mut *mut HistoryPusher,
    error_slot: *mut *mut CWorkerError,
) {
    let result = unsafe { runtime.as_ref() }
        .ok_or_else(|| WorkerError::new(WorkerErrorCode::SDKError, "runtime is null"))
        .and_then(|runtime_ref| {
            let config = unsafe { read_worker_config(config) }?;
            new_replay_worker(runtime_ref, config)
        });
    match result {
        Ok((worker_ref, history_pusher)) => unsafe {
            *worker_slot = Box::into_raw(Box::new(worker_ref));
            *history_slot = Box::into_raw(Box::new(history_pusher));
        },
        Err(worker_error) => unsafe {
            *error_slot = CWorkerError::from(worker_error).into_raw_pointer_mut()
        },
    }
}

fn poll_error(err: PollError, failure_prefix: &str) -> WorkerError {
    match err {
        PollError::ShutDown => {
            WorkerError::new(WorkerErrorCode::PollShutdownError, "Poll shutdown error")
        }
        err => WorkerError::new(
            WorkerErrorCode::PollFailure,
            format!("{failure_prefix}{err}"),
        ),
    }
}

impl WorkerRef {
    /// The Core worker, unless finalization has already taken it.
    ///
    /// Haskell checks the worker lifecycle before each call, but a call can
    /// still race with `finalize_shutdown`; report that as `code`.
    fn core_worker(
        &self,
        code: WorkerErrorCode,
    ) -> Result<Arc<temporalio_sdk_core::Worker>, WorkerError> {
        self.worker
            .clone()
            .ok_or_else(|| WorkerError::new(code, "Worker finalization has already started"))
    }

    fn spawn_reporting<T, F>(&self, hs: HsCallback<T, CWorkerError>, fut: F)
    where
        F: Future<Output = Result<T, WorkerError>> + Send + 'static,
        T: RawPointerConverter<T> + 'static,
    {
        spawn_reporting(&self.runtime, hs, fut)
    }

    fn poll_workflow_activation(&self, hs: HsCallback<CArray<u8>, CWorkerError>) {
        let worker = self.core_worker(WorkerErrorCode::PollShutdownError);
        self.spawn_reporting(hs, async move {
            let act = worker?
                .poll_workflow_activation()
                .await
                .map_err(|err| poll_error(err, ""))?;
            Ok(byte_array(act.encode_to_vec()))
        })
    }

    fn poll_activity_task(&self, hs: HsCallback<CArray<u8>, CWorkerError>) {
        let worker = self.core_worker(WorkerErrorCode::PollShutdownError);
        self.spawn_reporting(hs, async move {
            let task = worker?
                .poll_activity_task()
                .await
                .map_err(|err| poll_error(err, "Poll failure: "))?;
            Ok(byte_array(task.encode_to_vec()))
        })
    }

    fn poll_nexus_task(&self, hs: HsCallback<CArray<u8>, CWorkerError>) {
        let worker = self.core_worker(WorkerErrorCode::PollShutdownError);
        self.spawn_reporting(hs, async move {
            let task = worker?
                .poll_nexus_task()
                .await
                .map_err(|err| poll_error(err, "Poll failure: "))?;
            Ok(byte_array(task.encode_to_vec()))
        })
    }

    fn complete_workflow_activation(
        &self,
        hs: HsCallback<CUnit, CWorkerError>,
        proto: Result<Vec<u8>, WorkerError>,
    ) {
        let worker = self.core_worker(WorkerErrorCode::CompletionFailure);
        let completion = proto.and_then(|proto| {
            WorkflowActivationCompletion::decode(proto.as_slice()).map_err(|err| {
                WorkerError::new(
                    WorkerErrorCode::InvalidProto,
                    format!("Invalid proto: {}", err),
                )
            })
        });
        self.spawn_reporting(hs, async move {
            let completion = completion?;
            worker?
                .complete_workflow_activation(completion)
                .await
                .map_err(|err| {
                    WorkerError::new(WorkerErrorCode::CompletionFailure, format!("{}", err))
                })?;
            Ok(CUnit {})
        })
    }

    fn complete_activity_task(
        &self,
        hs: HsCallback<CUnit, CWorkerError>,
        proto: Result<Vec<u8>, WorkerError>,
    ) {
        let worker = self.core_worker(WorkerErrorCode::CompletionFailure);
        let completion = proto.and_then(|proto| {
            ActivityTaskCompletion::decode(proto.as_slice())
                .map_err(|err| WorkerError::new(WorkerErrorCode::InvalidProto, format!("{}", err)))
        });
        self.spawn_reporting(hs, async move {
            let completion = completion?;
            worker?
                .complete_activity_task(completion)
                .await
                .map_err(|err| {
                    WorkerError::new(WorkerErrorCode::CompletionFailure, format!("{}", err))
                })?;
            Ok(CUnit {})
        })
    }

    fn complete_nexus_task(
        &self,
        hs: HsCallback<CUnit, CWorkerError>,
        proto: Result<Vec<u8>, WorkerError>,
    ) {
        let worker = self.core_worker(WorkerErrorCode::CompletionFailure);
        let completion = proto.and_then(|proto| {
            NexusTaskCompletion::decode(proto.as_slice()).map_err(|err| {
                WorkerError::new(
                    WorkerErrorCode::InvalidProto,
                    format!("Invalid proto: {}", err),
                )
            })
        });
        self.spawn_reporting(hs, async move {
            let completion = completion?;
            worker?
                .complete_nexus_task(completion)
                .await
                .map_err(|err| {
                    WorkerError::new(WorkerErrorCode::CompletionFailure, format!("{}", err))
                })?;
            Ok(CUnit {})
        })
    }

    fn record_activity_heartbeat(&self, proto: &[u8]) -> Result<(), WorkerError> {
        enter_sync!(self.runtime);
        let heartbeat = ActivityHeartbeat::decode(proto).map_err(|err| WorkerError {
            code: WorkerErrorCode::InvalidProto,
            message: format!("{}", err),
        });

        match self.worker.as_ref() {
            None => Ok(()),
            Some(worker) => {
                worker.record_activity_heartbeat(heartbeat?);
                // TODO return error
                Ok(())
            }
        }
    }

    fn request_workflow_eviction(&self, run_id: &str) {
        // There is nothing to evict once finalization has taken the worker.
        if let Some(worker) = &self.worker {
            enter_sync!(self.runtime);
            worker.request_workflow_eviction(run_id);
        }
    }

    fn initiate_shutdown(&self) {
        // Finalization consumes the inner worker. Treat a repeated shutdown
        // request as complete instead of panicking across the C ABI boundary.
        if let Some(worker) = &self.worker {
            worker.initiate_shutdown();
        }
    }

    fn finalize_shutdown(&mut self, hs: HsCallback<CUnit, CWorkerError>) {
        let core_worker = self.worker.take();
        self.spawn_reporting(hs, async move {
            let Some(core_worker) = core_worker else {
                return Err(WorkerError::new(
                    WorkerErrorCode::SDKError,
                    "Worker finalization has already started",
                ));
            };
            // An interrupted Haskell wait does not cancel its Tokio task. Wait
            // for Core shutdown before unwrapping so any outstanding poll or
            // completion task can finish and release its worker reference.
            core_worker.shutdown().await;
            match Arc::try_unwrap(core_worker) {
                Ok(worker) => {
                    worker.finalize_shutdown().await;
                    Ok(CUnit {})
                }
                Err(arc) => Err(WorkerError::new(
                    WorkerErrorCode::SDKError,
                    format!(
                        "Cannot finalize, expected 1 reference, got {}",
                        Arc::strong_count(&arc)
                    ),
                )),
            }
        })
    }
}

/// Schedule `fut` on `runtime` and report its result through `hs`.
fn spawn_reporting<T, F>(runtime: &runtime::Runtime, hs: HsCallback<T, CWorkerError>, fut: F)
where
    F: Future<Output = Result<T, WorkerError>> + Send + 'static,
    T: RawPointerConverter<T> + 'static,
{
    runtime.future_result_into_hs(hs, async move { fut.await.map_err(CWorkerError::from) })
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell <-> Tokio FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_validate_worker(
    worker: *mut WorkerRef,
    mvar: *mut MVar,
    cap: Capability,
    error_slot: *mut *mut CWorkerValidationError,
    result_slot: *mut *mut CUnit,
) {
    let worker = unsafe { &mut *worker };
    let hs = HsCallback {
        mvar,
        cap,
        error_slot,
        result_slot,
    };

    let w = worker.core_worker(WorkerErrorCode::SDKError);
    worker.runtime.future_result_into_hs(hs, async move {
        let w = w.map_err(|err| CWorkerValidationError::from(err.message))?;
        match w.validate().await {
            Ok(()) => Ok(CUnit {}),
            Err(err) => Err(CWorkerValidationError::from(format!("{}", err))),
        }
    })
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell <-> Tokio FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_worker_poll_workflow_activation(
    worker: *mut WorkerRef,
    mvar: *mut MVar,
    cap: Capability,
    error_slot: *mut *mut CWorkerError,
    result_slot: *mut *mut CArray<u8>,
) {
    let worker = unsafe { &*worker };
    let hs = HsCallback {
        mvar,
        cap,
        error_slot,
        result_slot,
    };
    worker.poll_workflow_activation(hs)
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell <-> Tokio FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_worker_poll_activity_task(
    worker: *mut WorkerRef,
    mvar: *mut MVar,
    cap: Capability,
    error_slot: *mut *mut CWorkerError,
    result_slot: *mut *mut CArray<u8>,
) {
    let worker = unsafe { &*worker };
    let hs = HsCallback {
        mvar,
        cap,
        error_slot,
        result_slot,
    };
    worker.poll_activity_task(hs)
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell <-> Tokio FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_worker_complete_workflow_activation(
    worker: *mut WorkerRef,
    proto: *const CArray<u8>,
    mvar: *mut MVar,
    cap: Capability,
    error_slot: *mut *mut CWorkerError,
    result_slot: *mut *mut CUnit,
) {
    let worker = unsafe { &*worker };
    let proto = unsafe { read_bytes(proto, "completion", WorkerErrorCode::InvalidProto) };
    let hs = HsCallback {
        mvar,
        cap,
        error_slot,
        result_slot,
    };
    worker.complete_workflow_activation(hs, proto)
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell <-> Tokio FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_worker_complete_activity_task(
    worker: *mut WorkerRef,
    proto: *const CArray<u8>,
    mvar: *mut MVar,
    cap: Capability,
    error_slot: *mut *mut CWorkerError,
    result_slot: *mut *mut CUnit,
) {
    let worker = unsafe { &*worker };
    let proto = unsafe { read_bytes(proto, "completion", WorkerErrorCode::InvalidProto) };
    let hs = HsCallback {
        mvar,
        cap,
        error_slot,
        result_slot,
    };
    worker.complete_activity_task(hs, proto)
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell <-> Tokio FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_worker_poll_nexus_task(
    worker: *mut WorkerRef,
    mvar: *mut MVar,
    cap: Capability,
    error_slot: *mut *mut CWorkerError,
    result_slot: *mut *mut CArray<u8>,
) {
    let worker = unsafe { &*worker };
    let hs = HsCallback {
        mvar,
        cap,
        error_slot,
        result_slot,
    };
    worker.poll_nexus_task(hs)
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell <-> Tokio FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_worker_complete_nexus_task(
    worker: *mut WorkerRef,
    proto: *const CArray<u8>,
    mvar: *mut MVar,
    cap: Capability,
    error_slot: *mut *mut CWorkerError,
    result_slot: *mut *mut CUnit,
) {
    let worker = unsafe { &*worker };
    let proto = unsafe { read_bytes(proto, "completion", WorkerErrorCode::InvalidProto) };
    let hs = HsCallback {
        mvar,
        cap,
        error_slot,
        result_slot,
    };
    worker.complete_nexus_task(hs, proto)
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_worker_record_activity_heartbeat(
    worker: *mut WorkerRef,
    proto: *const CArray<u8>,
    error_slot: *mut *mut CWorkerError,
    result_slot: *mut *mut CUnit,
) {
    let worker = unsafe { &*worker };
    let result = unsafe { read_bytes(proto, "heartbeat", WorkerErrorCode::InvalidProto) }
        .and_then(|proto| worker.record_activity_heartbeat(&proto));
    match result {
        Ok(_) => unsafe {
            *error_slot = std::ptr::null_mut();
            *result_slot = std::ptr::null_mut();
        },
        Err(err) => unsafe {
            *error_slot = CWorkerError::from(err).into_raw_pointer_mut();
            *result_slot = std::ptr::null_mut();
        },
    }
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_worker_request_workflow_eviction(
    worker: *mut WorkerRef,
    run_id: *const CArray<u8>,
) {
    let worker = unsafe { &*worker };
    // This call has no error result. Run IDs are UTF-8 strings that Core
    // issued, so a missing or invalid one cannot match a cached run.
    let Ok(run_id) = (unsafe { copy_byte_array(run_id, "run ID") }) else {
        return;
    };
    if let Ok(run_id) = str::from_utf8(&run_id) {
        worker.request_workflow_eviction(run_id)
    }
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_worker_initiate_shutdown(worker: *mut WorkerRef) {
    let worker = unsafe { &*worker };
    worker.initiate_shutdown()
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell <-> Tokio FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_worker_finalize_shutdown(
    worker: *mut WorkerRef,
    mvar: *mut MVar,
    cap: Capability,
    error_slot: *mut *mut CWorkerError,
    result_slot: *mut *mut CUnit,
) {
    let worker = unsafe { &mut *worker };
    let hs = HsCallback {
        mvar,
        cap,
        error_slot,
        result_slot,
    };
    worker.finalize_shutdown(hs)
}

pub struct HistoryPusher {
    tx: Option<Sender<HistoryForReplay>>,
    runtime: runtime::Runtime,
}

impl HistoryPusher {
    fn new(runtime: runtime::Runtime) -> (Self, ReceiverStream<HistoryForReplay>) {
        let (tx, rx) = channel(1);
        (
            Self {
                tx: Some(tx),
                runtime,
            },
            ReceiverStream::new(rx),
        )
    }
}

impl HistoryPusher {
    fn push_history(
        &self,
        workflow_id: Result<String, WorkerError>,
        history_proto: Result<Vec<u8>, WorkerError>,
        hs: HsCallback<CUnit, CWorkerError>,
    ) {
        let history = history_proto.and_then(|proto| {
            History::decode(proto.as_slice()).map_err(|err| WorkerError {
                code: WorkerErrorCode::InvalidProto,
                message: format!("Invalid proto: {}", err),
            })
        });
        self.send_history(workflow_id, history, hs)
    }

    fn push_history_json(
        &self,
        workflow_id: Result<String, WorkerError>,
        history_json: Result<Vec<u8>, WorkerError>,
        hs: HsCallback<CUnit, CWorkerError>,
    ) {
        let history = history_json.and_then(|json| {
            serde_json::from_slice::<History>(&json).map_err(|err| WorkerError {
                code: WorkerErrorCode::InvalidProto,
                message: format!("Invalid history JSON: {}", err),
            })
        });
        self.send_history(workflow_id, history, hs)
    }

    fn send_history(
        &self,
        workflow_id: Result<String, WorkerError>,
        history: Result<History, WorkerError>,
        hs: HsCallback<CUnit, CWorkerError>,
    ) {
        let tx = if let Some(tx) = self.tx.as_ref() {
            Ok(tx.clone())
        } else {
            Err(WorkerError {
                code: WorkerErrorCode::ReplayWorkerClosed,
                message: "Replay worker is no longer accepting new histories".to_string(),
            })
        };
        spawn_reporting(&self.runtime, hs, async move {
            let wfid = workflow_id?;
            let history = history?;
            tx?.send(HistoryForReplay::new(history, wfid))
                .await
                .map_err(|_| {
                    WorkerError::new(
                        WorkerErrorCode::SDKError,
                        "Channel for history replay was dropped, this is an SDK bug.",
                    )
                })?;
            Ok(CUnit {})
        })
    }

    fn close(&mut self) {
        self.tx.take();
    }
}

/// Read a workflow ID, which Haskell passes as arbitrary bytes.
///
/// # Safety
///
/// See [runtime::copy_byte_array].
unsafe fn read_workflow_id(workflow_id: *const CArray<u8>) -> Result<String, WorkerError> {
    let bytes = unsafe { read_bytes(workflow_id, "workflow ID", WorkerErrorCode::InvalidProto) }?;
    String::from_utf8(bytes).map_err(|err| {
        WorkerError::new(
            WorkerErrorCode::InvalidProto,
            format!("Workflow ID is not valid UTF-8: {err}"),
        )
    })
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell <-> Tokio FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_history_pusher_push_history(
    history_pusher: *mut HistoryPusher,
    workflow_id: *const CArray<u8>,
    history_proto: *const CArray<u8>,
    mvar: *mut MVar,
    cap: Capability,
    error_slot: *mut *mut CWorkerError,
    result_slot: *mut *mut CUnit,
) {
    let history_pusher = unsafe { &mut *history_pusher };
    let workflow_id = unsafe { read_workflow_id(workflow_id) };
    let history_proto =
        unsafe { read_bytes(history_proto, "history", WorkerErrorCode::InvalidProto) };
    history_pusher.push_history(
        workflow_id,
        history_proto,
        HsCallback {
            mvar,
            cap,
            error_slot,
            result_slot,
        },
    )
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell <-> Tokio FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_history_pusher_push_history_json(
    history_pusher: *mut HistoryPusher,
    workflow_id: *const CArray<u8>,
    history_json: *const CArray<u8>,
    mvar: *mut MVar,
    cap: Capability,
    error_slot: *mut *mut CWorkerError,
    result_slot: *mut *mut CUnit,
) {
    let history_pusher = unsafe { &mut *history_pusher };
    let workflow_id = unsafe { read_workflow_id(workflow_id) };
    let history_json =
        unsafe { read_bytes(history_json, "history JSON", WorkerErrorCode::InvalidProto) };
    history_pusher.push_history_json(
        workflow_id,
        history_json,
        HsCallback {
            mvar,
            cap,
            error_slot,
            result_slot,
        },
    )
}

/// Convert a protobuf-encoded History to canonical protobuf JSON.
/// Useful for testing the JSON replay path.
///
/// # Safety
///
/// `history_proto` must be a valid pointer to a CArray<u8> containing protobuf bytes.
/// `result_slot` and `error_slot` must be valid pointers to output slots.
/// On success, `*result_slot` is set to a heap-allocated CArray<u8> containing JSON bytes.
/// On failure, `*error_slot` is set to a heap-allocated CArray<u8> containing an error message.
/// The caller must free the returned CArray via `hs_temporal_drop_byte_array`.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_history_proto_to_json(
    history_proto: *const CArray<u8>,
    result_slot: *mut *mut CArray<u8>,
    error_slot: *mut *mut CArray<u8>,
) {
    let json = unsafe { copy_byte_array(history_proto, "history") }.and_then(|bytes| {
        let history = History::decode(bytes.as_slice())
            .map_err(|err| format!("Proto decode failed: {}", err))?;
        serde_json::to_vec(&history).map_err(|err| format!("JSON serialization failed: {}", err))
    });
    match json {
        Ok(json_bytes) => unsafe {
            *result_slot = byte_array(json_bytes).into_raw_pointer_mut();
        },
        Err(message) => unsafe { runtime::write_error_slot(error_slot, message) },
    }
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
///
/// The caller must ensure that the argument is a live pointer to a [`HistoryPusher`], typically from across the FFI
/// boundary after having been constructed by [`hs_temporal_new_replay_worker`].
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_history_pusher_close(history_pusher: *mut HistoryPusher) {
    let history_pusher = unsafe { &mut *history_pusher };
    history_pusher.close()
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
///
/// The caller must ensure that the argument is a live pointer to a [`HistoryPusher`], typically from across the FFI
/// boundary after having been constructed by [`hs_temporal_new_replay_worker`].
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_history_pusher_drop(history_pusher: *mut HistoryPusher) {
    let history_pusher = unsafe { Box::from_raw(history_pusher) };
    drop(history_pusher)
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::runtime::test_support::{TestWaiter, new_test_runtime, test_cap};
    use serde_json::json;

    fn full_worker_config() -> serde_json::Value {
        json!({
            "namespace": "ns",
            "task_queue": "tq",
            "build_id": "build",
            "client_identity_override": "identity",
            "max_cached_workflows": 7,
            "tuner": null,
            "max_outstanding_workflow_tasks": 11,
            "max_outstanding_activities": 12,
            "max_outstanding_local_activities": 13,
            "max_outstanding_nexus_tasks": 14,
            "max_concurrent_workflow_task_polls": 3,
            "max_concurrent_activity_task_polls": 4,
            "max_concurrent_nexus_task_polls": 6,
            "nonsticky_to_sticky_poll_ratio": 0.5,
            "sticky_queue_schedule_to_start_timeout_millis": 1001,
            "max_heartbeat_throttle_interval_millis": 1002,
            "default_heartbeat_throttle_interval_millis": 1003,
            "max_task_queue_activities_per_second": 2.5,
            "max_worker_activities_per_second": 3.5,
            "graceful_shutdown_period_millis": 1004,
            "nondeterminism_as_workflow_fail": true,
            "nondeterminism_as_workflow_fail_for_types": ["WfA", "WfB"],
            "no_remote_activities": true
        })
    }

    fn full_tuner_config() -> serde_json::Value {
        json!({
            "workflow_slot_supplier": {"type": "fixed_size", "slots": 5},
            "activity_slot_supplier": {
                "type": "resource_based",
                "minimum_slots": 2,
                "maximum_slots": 20,
                "ramp_throttle_ms": 30
            },
            "local_activity_slot_supplier": {
                "type": "resource_based",
                "minimum_slots": null,
                "maximum_slots": null,
                "ramp_throttle_ms": null
            },
            "nexus_slot_supplier": null,
            "resource_based_tuner_options": {
                "target_memory_usage": 0.6,
                "target_cpu_usage": 0.8
            }
        })
    }

    fn tuner_config(json: serde_json::Value) -> TunerConfig {
        serde_json::from_value(json).unwrap()
    }

    #[test]
    fn resource_based_tuner_uses_both_targets() {
        let opts = TunerHolderOptions::try_from(&tuner_config(full_tuner_config())).unwrap();
        let resource = opts.resource_based_options.unwrap();
        assert_eq!(resource.target_mem_usage, 0.6);
        assert_eq!(resource.target_cpu_usage, 0.8);
    }

    #[test]
    fn custom_slot_supplier_handle_must_not_be_null() {
        let mut config = full_tuner_config();
        config["nexus_slot_supplier"] = json!({"type": "custom", "handle": 0});
        let err = TunerHolderOptions::try_from(&tuner_config(config))
            .err()
            .unwrap();
        assert!(matches!(err.code, WorkerErrorCode::InvalidWorkerConfig));
        assert_eq!(err.message, "custom slot supplier handle is null");
    }

    #[test]
    fn new_worker_reports_bad_input_instead_of_panicking() {
        let config = byte_array(full_worker_config().to_string().into_bytes());
        let mut worker: *mut WorkerRef = std::ptr::null_mut();
        let mut error: *mut CWorkerError = std::ptr::null_mut();
        unsafe { hs_temporal_new_worker(std::ptr::null_mut(), &config, &mut worker, &mut error) };
        assert!(worker.is_null());
        let error: WorkerError = unsafe { CWorkerError::from_raw_pointer_mut(error) }
            .unwrap()
            .as_rust()
            .unwrap();
        assert!(matches!(error.code, WorkerErrorCode::SDKError));
        assert_eq!(error.message, "client is null");
    }

    fn new_replay_worker_from(
        runtime: &mut runtime::RuntimeRef,
        config: *const CArray<u8>,
    ) -> Result<(WorkerRef, HistoryPusher), WorkerError> {
        let mut worker: *mut WorkerRef = std::ptr::null_mut();
        let mut pusher: *mut HistoryPusher = std::ptr::null_mut();
        let mut error: *mut CWorkerError = std::ptr::null_mut();
        unsafe {
            hs_temporal_new_replay_worker(runtime, config, &mut worker, &mut pusher, &mut error)
        };
        if error.is_null() {
            Ok(unsafe { (*Box::from_raw(worker), *Box::from_raw(pusher)) })
        } else {
            Err(unsafe { CWorkerError::from_raw_pointer_mut(error) }
                .unwrap()
                .as_rust()
                .unwrap())
        }
    }

    #[test]
    fn new_replay_worker_reports_invalid_config() {
        let mut runtime = new_test_runtime();
        let config = byte_array(b"{\"namespace\":1}".to_vec());
        let err = new_replay_worker_from(&mut runtime, &config).err().unwrap();
        assert!(matches!(err.code, WorkerErrorCode::InvalidWorkerConfig));
        assert!(err.message.starts_with("Invalid worker config"));

        let err = new_replay_worker_from(&mut runtime, std::ptr::null())
            .err()
            .unwrap();
        assert!(matches!(err.code, WorkerErrorCode::InvalidWorkerConfig));
        assert_eq!(err.message, "worker config pointer is null");
    }

    #[test]
    fn calls_after_finalization_report_errors() {
        let runtime = new_test_runtime();
        let worker = WorkerRef {
            worker: None,
            runtime: runtime.runtime.clone(),
        };

        let mut waiter = TestWaiter::<CArray<u8>, CWorkerError>::new();
        worker.poll_workflow_activation(HsCallback {
            cap: test_cap(),
            mvar: waiter.mvar(),
            result_slot: &mut *waiter.result_slot,
            error_slot: &mut *waiter.error_slot,
        });
        let err: WorkerError = waiter.wait().err().unwrap().as_rust().unwrap();
        assert!(matches!(err.code, WorkerErrorCode::PollShutdownError));

        let mut waiter = TestWaiter::<CUnit, CWorkerError>::new();
        worker.complete_activity_task(
            HsCallback {
                cap: test_cap(),
                mvar: waiter.mvar(),
                result_slot: &mut *waiter.result_slot,
                error_slot: &mut *waiter.error_slot,
            },
            Ok(vec![]),
        );
        let err: WorkerError = waiter.wait().err().unwrap().as_rust().unwrap();
        assert!(matches!(err.code, WorkerErrorCode::CompletionFailure));

        // Eviction has no error result; it must not panic.
        worker.request_workflow_eviction("run");
    }

    #[test]
    fn push_history_rejects_a_non_utf8_workflow_id() {
        let mut runtime = new_test_runtime();
        let config = byte_array(full_worker_config().to_string().into_bytes());
        let (_worker, mut pusher) = new_replay_worker_from(&mut runtime, &config).unwrap();
        let workflow_id = byte_array(vec![0xff, 0xfe]);
        let history = byte_array(vec![]);
        let mut waiter = TestWaiter::<CUnit, CWorkerError>::new();
        unsafe {
            hs_temporal_history_pusher_push_history(
                &mut pusher,
                &workflow_id,
                &history,
                waiter.mvar(),
                test_cap(),
                &mut *waiter.error_slot,
                &mut *waiter.result_slot,
            )
        };
        let err: WorkerError = waiter.wait().err().unwrap().as_rust().unwrap();
        assert!(matches!(err.code, WorkerErrorCode::InvalidProto));
        assert!(err.message.starts_with("Workflow ID is not valid UTF-8"));
    }

    #[test]
    fn worker_error_conversion_tolerates_nul_bytes() {
        let err = CWorkerError::from(WorkerError::new(WorkerErrorCode::SDKError, "a\0b"));
        let err: WorkerError = err.as_rust().unwrap();
        assert_eq!(err.message, "a\u{FFFD}b");
    }
}
