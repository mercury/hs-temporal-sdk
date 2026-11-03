//! Test-only fixtures for exercising the Haskell <-> Tokio FFI bridge.
//!
//! The Haskell test suites link the same compiled library as production code,
//! so these cannot be gated behind `#[cfg(test)]`. The `hs_temporal_test_`
//! prefix marks them as never-for-production; nothing outside of test suites
//! should call them.

use crate::client::parse_client_config;
use crate::ephemeral_server::{
    TemporalDevServerConfigDef, TestServerConfigDef, parse_dev_server_config,
    parse_test_server_config,
};
use crate::runtime::{
    Capability, HsCallback, MVar, RuntimeRef, byte_array, copy_byte_array, core_log_json,
    parse_telemetry_options, write_error_slot,
};
use crate::worker::{
    mark_used_context_json, parse_worker_config, release_context_json, reservation_context_json,
};
use ffi_convert::*;
use serde::Serialize;
use std::collections::HashMap;
use std::sync::atomic::{AtomicU64, Ordering};
use std::time::{Duration, SystemTime};
use temporalio_common::protos::coresdk::{
    ActivitySlotInfo, LocalActivitySlotInfo, NexusSlotInfo, WorkflowSlotInfo,
};
use temporalio_common::telemetry::CoreLog;
use temporalio_common::worker::{SlotInfo, SlotReservationContext, WorkerDeploymentVersion};
use tracing::Level;

/// Total number of [`CTestResource`] values dropped since process start.
static TEST_RESOURCE_DROPS: AtomicU64 = AtomicU64::new(0);

/// An opaque resource whose destructor is observable from Haskell through
/// [`hs_temporal_test_resource_drop_count`], letting tests prove that a result
/// produced after the Haskell waiter was interrupted is still reclaimed.
pub struct CTestResource {
    _private: u8,
}

impl Drop for CTestResource {
    fn drop(&mut self) {
        TEST_RESOURCE_DROPS.fetch_add(1, Ordering::SeqCst);
    }
}

impl RawPointerConverter<CTestResource> for CTestResource {
    fn into_raw_pointer(self) -> *const CTestResource {
        convert_into_raw_pointer(self)
    }

    fn into_raw_pointer_mut(self) -> *mut CTestResource {
        convert_into_raw_pointer_mut(self)
    }

    unsafe fn from_raw_pointer(
        ptr: *const CTestResource,
    ) -> Result<Self, UnexpectedNullPointerError> {
        unsafe { take_back_from_raw_pointer(ptr) }
    }

    unsafe fn from_raw_pointer_mut(
        ptr: *mut CTestResource,
    ) -> Result<Self, UnexpectedNullPointerError> {
        unsafe { take_back_from_raw_pointer_mut(ptr) }
    }
}

/// Resolve with a fresh [`CTestResource`] after `delay_millis` milliseconds.
///
/// # Safety
///
/// Haskell <-> Tokio FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_test_delayed_resource(
    runtime: *mut RuntimeRef,
    delay_millis: u64,
    mvar: *mut MVar,
    cap: Capability,
    error_slot: *mut *mut CArray<u8>,
    result_slot: *mut *mut CTestResource,
) {
    let runtime_ref = unsafe { runtime.as_ref().unwrap() };
    let hs: HsCallback<CTestResource, CArray<u8>> = HsCallback {
        cap,
        mvar,
        error_slot,
        result_slot,
    };
    runtime_ref.runtime.future_result_into_hs(hs, async move {
        tokio::time::sleep(Duration::from_millis(delay_millis)).await;
        Ok(CTestResource { _private: 0 })
    })
}

/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_drop_test_resource(resource: *mut CTestResource) {
    unsafe { drop(CTestResource::from_raw_pointer_mut(resource)) }
}

#[unsafe(no_mangle)]
pub extern "C" fn hs_temporal_test_resource_drop_count() -> u64 {
    TEST_RESOURCE_DROPS.load(Ordering::SeqCst)
}

/// Parse `json` with a bridge config parser and serialize the parsed value back
/// to JSON, so that a Haskell test can compare it with the JSON it sent.
///
/// # Safety
///
/// `json` must be null or point to a live `CArray<u8>`. `result_slot` and
/// `error_slot` must be valid for writes. The caller frees the array stored in
/// either slot with `hs_temporal_drop_byte_array`.
unsafe fn echo_config(
    json: *const CArray<u8>,
    result_slot: *mut *mut CArray<u8>,
    error_slot: *mut *mut CArray<u8>,
    round_trip: impl FnOnce(&[u8]) -> Result<Vec<u8>, String>,
) {
    unsafe {
        *result_slot = std::ptr::null_mut();
        *error_slot = std::ptr::null_mut();
    }
    match unsafe { copy_byte_array(json, "config") }.and_then(|json| round_trip(&json)) {
        Ok(json) => unsafe { *result_slot = byte_array(json).into_raw_pointer_mut() },
        Err(message) => unsafe { write_error_slot(error_slot, message) },
    }
}

fn to_json<T: Serialize>(value: &T) -> Result<Vec<u8>, String> {
    serde_json::to_vec(value).map_err(|err| err.to_string())
}

/// `serde(remote)` types do not implement `Serialize`, so serialize them with
/// their definition's `serialize` function.
fn to_json_with<T>(
    value: &T,
    serialize: impl FnOnce(&T, &mut serde_json::Serializer<&mut Vec<u8>>) -> serde_json::Result<()>,
) -> Result<Vec<u8>, String> {
    let mut json = Vec::new();
    serialize(value, &mut serde_json::Serializer::new(&mut json)).map_err(|err| err.to_string())?;
    Ok(json)
}

/// # Safety
///
/// See [echo_config].
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_test_echo_worker_config(
    json: *const CArray<u8>,
    result_slot: *mut *mut CArray<u8>,
    error_slot: *mut *mut CArray<u8>,
) {
    unsafe {
        echo_config(json, result_slot, error_slot, |json| {
            to_json(&parse_worker_config(json).map_err(|err| err.to_string())?)
        })
    }
}

/// # Safety
///
/// See [echo_config].
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_test_echo_client_config(
    json: *const CArray<u8>,
    result_slot: *mut *mut CArray<u8>,
    error_slot: *mut *mut CArray<u8>,
) {
    unsafe {
        echo_config(json, result_slot, error_slot, |json| {
            to_json(&parse_client_config(json)?)
        })
    }
}

/// # Safety
///
/// See [echo_config].
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_test_echo_telemetry_options(
    json: *const CArray<u8>,
    result_slot: *mut *mut CArray<u8>,
    error_slot: *mut *mut CArray<u8>,
) {
    unsafe {
        echo_config(json, result_slot, error_slot, |json| {
            to_json(&parse_telemetry_options(json)?)
        })
    }
}

/// # Safety
///
/// See [echo_config].
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_test_echo_dev_server_config(
    json: *const CArray<u8>,
    result_slot: *mut *mut CArray<u8>,
    error_slot: *mut *mut CArray<u8>,
) {
    unsafe {
        echo_config(json, result_slot, error_slot, |json| {
            to_json_with(&parse_dev_server_config(json)?, |config, serializer| {
                TemporalDevServerConfigDef::serialize(config, serializer)
            })
        })
    }
}

/// # Safety
///
/// See [echo_config].
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_test_echo_test_server_config(
    json: *const CArray<u8>,
    result_slot: *mut *mut CArray<u8>,
    error_slot: *mut *mut CArray<u8>,
) {
    unsafe {
        echo_config(json, result_slot, error_slot, |json| {
            to_json_with(&parse_test_server_config(json)?, |config, serializer| {
                TestServerConfigDef::serialize(config, serializer)
            })
        })
    }
}

// The `hs_temporal_test_sample_*` fixtures serialize fixed sample values with
// the functions that build the JSON the bridge sends to Haskell.
// `OutputContractSpec` in the Haskell test suite expects these exact values,
// so change both together.

fn json_array(documents: Vec<Vec<u8>>) -> *mut CArray<u8> {
    let json = [&b"["[..], &documents.join(&b','), b"]"].concat();
    byte_array(json).into_raw_pointer_mut()
}

struct SampleReservationContext {
    deployment_version: Option<WorkerDeploymentVersion>,
}

impl SlotReservationContext for SampleReservationContext {
    fn task_queue(&self) -> &str {
        "contract-task-queue"
    }

    fn worker_identity(&self) -> &str {
        "contract-identity"
    }

    fn worker_deployment_version(&self) -> &Option<WorkerDeploymentVersion> {
        &self.deployment_version
    }

    fn num_issued_slots(&self) -> usize {
        3
    }

    fn is_sticky(&self) -> bool {
        true
    }
}

/// Returns a JSON array of slot reservation contexts. Free it with
/// `hs_temporal_drop_byte_array`.
#[unsafe(no_mangle)]
pub extern "C" fn hs_temporal_test_sample_slot_reservation_contexts() -> *mut CArray<u8> {
    let context = SampleReservationContext {
        deployment_version: None,
    };
    json_array(vec![reservation_context_json(&context)])
}

/// Returns a JSON array of mark-used contexts, one for each kind of slot. Free
/// it with `hs_temporal_drop_byte_array`.
#[unsafe(no_mangle)]
pub extern "C" fn hs_temporal_test_sample_slot_mark_used_contexts() -> *mut CArray<u8> {
    let workflow = WorkflowSlotInfo {
        workflow_type: "contract-workflow".into(),
        is_sticky: true,
    };
    let local_activity = LocalActivitySlotInfo {
        activity_type: "contract-local-activity".into(),
    };
    let nexus = NexusSlotInfo {
        service: "contract-service".into(),
        operation: "contract-operation".into(),
    };
    json_array(vec![
        mark_used_context_json(SlotInfo::Workflow(&workflow)),
        mark_used_context_json(SlotInfo::Activity(&sample_activity_slot_info())),
        mark_used_context_json(SlotInfo::LocalActivity(&local_activity)),
        mark_used_context_json(SlotInfo::Nexus(&nexus)),
    ])
}

/// Returns a JSON array of release contexts, with and without slot info. Free
/// it with `hs_temporal_drop_byte_array`.
#[unsafe(no_mangle)]
pub extern "C" fn hs_temporal_test_sample_slot_release_contexts() -> *mut CArray<u8> {
    json_array(vec![
        release_context_json(Some(SlotInfo::Activity(&sample_activity_slot_info()))),
        release_context_json(None),
    ])
}

fn sample_activity_slot_info() -> ActivitySlotInfo {
    ActivitySlotInfo {
        activity_type: "contract-activity".into(),
    }
}

/// Returns a JSON array of log lines, one for each level. Free it with
/// `hs_temporal_drop_byte_array`.
#[unsafe(no_mangle)]
pub extern "C" fn hs_temporal_test_sample_core_logs() -> *mut CArray<u8> {
    let levels = [
        Level::TRACE,
        Level::DEBUG,
        Level::INFO,
        Level::WARN,
        Level::ERROR,
    ];
    json_array(
        levels
            .into_iter()
            .map(|level| {
                core_log_json(&CoreLog {
                    target: "contract_target".into(),
                    message: "contract message".into(),
                    timestamp: SystemTime::UNIX_EPOCH + Duration::new(1_700_000_000, 5),
                    level,
                    fields: HashMap::from([(
                        "contract_field".into(),
                        serde_json::json!({"nested": [1, "two"]}),
                    )]),
                    span_contexts: vec!["outer_span".into(), "inner_span".into()],
                })
            })
            .collect(),
    )
}

#[cfg(test)]
mod tests {
    use super::*;
    use serde_json::{Value, json};

    type Echo = unsafe extern "C" fn(*const CArray<u8>, *mut *mut CArray<u8>, *mut *mut CArray<u8>);

    fn echo(f: Echo, input: &Value) -> Result<Value, String> {
        let input = byte_array(input.to_string().into_bytes());
        let mut result: *mut CArray<u8> = std::ptr::null_mut();
        let mut error: *mut CArray<u8> = std::ptr::null_mut();
        unsafe { f(&input, &mut result, &mut error) };
        let take = |ptr| {
            let bytes = unsafe { CArray::from_raw_pointer_mut(ptr) }
                .unwrap()
                .as_rust()
                .unwrap();
            String::from_utf8(bytes).unwrap()
        };
        if error.is_null() {
            Ok(serde_json::from_str(&take(result)).unwrap())
        } else {
            Err(take(error))
        }
    }

    #[test]
    fn echo_returns_the_parsed_config() {
        let telemetry = json!({"tag": "NoTelemetry"});
        assert_eq!(
            echo(hs_temporal_test_echo_telemetry_options, &telemetry),
            Ok(telemetry)
        );
        let test_server = json!({
            "exe": {"type": "ExistingPath", "contents": "/bin/server"},
            "port": null,
            "extra_args": []
        });
        assert_eq!(
            echo(hs_temporal_test_echo_test_server_config, &test_server),
            Ok(test_server)
        );
    }

    #[test]
    fn echo_reports_parse_errors() {
        let err = echo(hs_temporal_test_echo_worker_config, &json!({})).unwrap_err();
        assert!(err.starts_with("Invalid worker config"), "{err}");
        let err = echo(hs_temporal_test_echo_client_config, &json!([])).unwrap_err();
        assert!(err.starts_with("Invalid client config"), "{err}");
        let err = echo(hs_temporal_test_echo_dev_server_config, &json!(1)).unwrap_err();
        assert!(err.starts_with("Invalid dev server config"), "{err}");
    }
}
