use crate::runtime::{Capability, HsCallback, MVar, Runtime, RuntimeRef, error_bytes};
use crate::worker::CUnit;
use ffi_convert::*;
use serde::Deserialize;
use std::ffi::{CStr, c_char};
use std::time::Duration;
use temporalio_sdk_core::ephemeral_server::*;

pub struct EphemeralServerRef {
    pub(crate) server: EphemeralServer,
    runtime: Runtime,
}

impl RawPointerConverter<EphemeralServerRef> for EphemeralServerRef {
    fn into_raw_pointer(self) -> *const EphemeralServerRef {
        convert_into_raw_pointer(self)
    }

    fn into_raw_pointer_mut(self) -> *mut EphemeralServerRef {
        convert_into_raw_pointer_mut(self)
    }

    unsafe fn from_raw_pointer(
        ptr: *const EphemeralServerRef,
    ) -> Result<Self, UnexpectedNullPointerError> {
        unsafe { take_back_from_raw_pointer(ptr) }
    }

    unsafe fn from_raw_pointer_mut(
        ptr: *mut EphemeralServerRef,
    ) -> Result<Self, UnexpectedNullPointerError> {
        unsafe { take_back_from_raw_pointer_mut(ptr) }
    }
}

/// Where to find an executable. Can be a path or download.
#[derive(Deserialize)]
#[serde(tag = "type", content = "contents", remote = "EphemeralExe")]
pub enum EphemeralExeDef {
    /// Existing path on the filesystem for the executable.
    ExistingPath(String),
    /// Download the executable if not already there.
    CachedDownload {
        /// Which version to download.
        #[serde(with = "EphemeralExeVersionDef")]
        version: EphemeralExeVersion,
        /// Destination directory or the user temp directory if none set.
        dest_dir: Option<String>,
        ttl: Option<Duration>,
    },
}

/// Which version of the exe to download.
#[derive(Deserialize)]
#[serde(tag = "type", content = "contents", remote = "EphemeralExeVersion")]
pub enum EphemeralExeVersionDef {
    /// Use a default version for the given SDK name and version.
    SDKDefault {
        /// Name of the SDK to get the default for.
        sdk_name: String,
        /// Version of the SDK to get the default for.
        sdk_version: String,
    },
    /// Specific version.
    Fixed(String),
}

#[derive(Deserialize)]
#[serde(remote = "TemporalDevServerConfig")]
pub struct TemporalDevServerConfigDef {
    /// Required path to executable or download info.
    #[serde(with = "EphemeralExeDef")]
    pub exe: EphemeralExe,
    /// Namespace to use.
    pub namespace: String,
    /// IP to bind to.
    pub ip: String,
    /// Port to use or obtains a free one if none given.
    pub port: Option<u16>,
    /// Sqlite DB filename if persisting or non-persistent if none.
    pub db_filename: Option<String>,
    /// Whether to enable the UI.
    pub ui: bool,
    /// What port to run the UI on.
    pub ui_port: Option<u16>,
    /// Log format and level
    pub log: (String, String),
    /// Additional arguments to Temporalite.
    pub extra_args: Vec<String>,
}

pub(crate) fn parse_dev_server_config(json: &[u8]) -> Result<TemporalDevServerConfig, String> {
    let mut de = serde_json::Deserializer::from_slice(json);
    TemporalDevServerConfigDef::deserialize(&mut de)
        .and_then(|config| de.end().map(|()| config))
        .map_err(|err| format!("Invalid dev server config: {err}"))
}

pub(crate) fn parse_test_server_config(json: &[u8]) -> Result<TestServerConfig, String> {
    let mut de = serde_json::Deserializer::from_slice(json);
    TestServerConfigDef::deserialize(&mut de)
        .and_then(|config| de.end().map(|()| config))
        .map_err(|err| format!("Invalid test server config: {err}"))
}

/// # Safety
///
/// `json` must be null or point to a NUL-terminated string.
unsafe fn json_bytes<'a>(json: *const c_char) -> Result<&'a [u8], String> {
    if json.is_null() {
        Err("server config pointer is null".to_string())
    } else {
        Ok(unsafe { CStr::from_ptr(json) }.to_bytes())
    }
}

/// An invalid `config` is reported through `hs`, so the Haskell waiter is
/// always woken.
fn start_server<C, F>(
    runtime_ref: &RuntimeRef,
    config: Result<C, String>,
    hs: HsCallback<EphemeralServerRef, CArray<u8>>,
    start: impl FnOnce(C) -> F + Send + 'static,
) where
    C: Send + 'static,
    F: Future<Output = anyhow::Result<EphemeralServer>> + Send + 'static,
{
    // The spawned future can outlive this C call and its borrowed `RuntimeRef`.
    // Capture an owned runtime before constructing the future so creating the
    // returned server never dereferences the raw FFI pointer after an await.
    let server_runtime = runtime_ref.runtime.clone();
    runtime_ref.runtime.future_result_into_hs(hs, async move {
        let config = config.map_err(error_bytes)?;
        match start(config).await {
            Ok(server) => Ok(EphemeralServerRef {
                server,
                runtime: server_runtime,
            }),
            Err(e) => Err(error_bytes(format!("Failed to start server: {e}"))),
        }
    })
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_start_dev_server(
    runtime: *mut RuntimeRef,
    json_string: *const c_char,
    mvar: *mut MVar,
    cap: Capability,
    error_slot: *mut *mut CArray<u8>,
    result_slot: *mut *mut EphemeralServerRef,
) {
    let runtime_ref = unsafe { runtime.as_ref() }.expect("runtime is null");
    let config = unsafe { json_bytes(json_string) }.and_then(parse_dev_server_config);
    let hs: HsCallback<EphemeralServerRef, CArray<u8>> = HsCallback {
        cap,
        mvar,
        error_slot,
        result_slot,
    };
    start_server(runtime_ref, config, hs, |config| async move {
        config.start_server().await
    })
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_shutdown_ephemeral_server(
    server: *mut EphemeralServerRef,
    mvar: *mut MVar,
    cap: Capability,
    error_slot: *mut *mut CArray<u8>,
    result_slot: *mut *mut CUnit,
) {
    let server_ref = unsafe { Box::from_raw(server) };
    let mut server = server_ref.server;
    let hs: HsCallback<CUnit, CArray<u8>> = HsCallback {
        cap,
        mvar,
        error_slot,
        result_slot,
    };
    server_ref.runtime.future_result_into_hs(hs, async move {
        let result = server.shutdown().await;
        match result {
            Ok(()) => Ok(CUnit {}),
            Err(e) => Err(error_bytes(format!("Failed to shutdown server: {e}"))),
        }
    })
}

/// Configuration for the test server.
#[derive(Deserialize)]
#[serde(remote = "TestServerConfig")]
pub struct TestServerConfigDef {
    /// Required path to executable or download info.
    #[serde(with = "EphemeralExeDef")]
    pub exe: EphemeralExe,
    /// Port to use or obtains a free one if none given.
    pub port: Option<u16>,
    /// Additional arguments to the test server.
    pub extra_args: Vec<String>,
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_start_test_server(
    runtime: *mut RuntimeRef,
    json_string: *const c_char,
    mvar: *mut MVar,
    cap: Capability,
    error_slot: *mut *mut CArray<u8>,
    result_slot: *mut *mut EphemeralServerRef,
) {
    let runtime_ref = unsafe { runtime.as_ref() }.expect("runtime is null");
    let config = unsafe { json_bytes(json_string) }.and_then(parse_test_server_config);
    let hs: HsCallback<EphemeralServerRef, CArray<u8>> = HsCallback {
        cap,
        mvar,
        error_slot,
        result_slot,
    };
    start_server(runtime_ref, config, hs, |config| async move {
        config.start_server().await
    })
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::runtime::test_support::{call_bridge, error_text, new_test_runtime};

    type StartServer = unsafe extern "C" fn(
        *mut RuntimeRef,
        *const c_char,
        *mut MVar,
        Capability,
        *mut *mut CArray<u8>,
        *mut *mut EphemeralServerRef,
    );

    fn start_with_raw_config(start: StartServer, json: Option<&CStr>) -> String {
        let mut runtime = new_test_runtime();
        let result: Result<EphemeralServerRef, CArray<u8>> =
            call_bridge(|mvar, cap, error_slot, result_slot| unsafe {
                start(
                    &mut runtime,
                    json.map_or(std::ptr::null(), CStr::as_ptr),
                    mvar,
                    cap,
                    error_slot,
                    result_slot,
                )
            });
        error_text(result.err().expect("the server must not start"))
    }

    #[test]
    fn start_server_reports_invalid_config_to_the_waiter() {
        let err = start_with_raw_config(hs_temporal_start_dev_server, Some(c"{\"exe\":1}"));
        assert!(err.starts_with("Invalid dev server config"), "{err}");
        let err = start_with_raw_config(hs_temporal_start_test_server, Some(c"[]"));
        assert!(err.starts_with("Invalid test server config"), "{err}");
        let err = start_with_raw_config(hs_temporal_start_dev_server, None);
        assert_eq!(err, "server config pointer is null");
    }
}
