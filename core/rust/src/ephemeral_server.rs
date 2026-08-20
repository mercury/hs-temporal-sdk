use crate::runtime::{Capability, HsCallback, MVar, Runtime, RuntimeRef};
use crate::worker::{CUnit, Unit};
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
    let runtime_ref = unsafe { runtime.as_ref().unwrap() };
    // The spawned future can outlive this C call and its borrowed `RuntimeRef`.
    // Capture an owned runtime before constructing the future so creating the
    // returned server never dereferences the raw FFI pointer after an await.
    let server_runtime = runtime_ref.runtime.clone();
    let mut de = serde_json::Deserializer::from_str(unsafe {
        std::str::from_utf8_unchecked(CStr::from_ptr(json_string).to_bytes())
    });
    let conf =
        TemporalDevServerConfigDef::deserialize(&mut de).expect("Failed to deserialize config");
    let hs: HsCallback<EphemeralServerRef, CArray<u8>> = HsCallback {
        cap,
        mvar,
        error_slot,
        result_slot,
    };
    runtime_ref.runtime.future_result_into_hs(hs, async move {
        let result = conf.start_server().await;
        match result {
            Ok(server) => Ok(EphemeralServerRef {
                server,
                runtime: server_runtime,
            }),
            Err(e) => Err(
                CArray::c_repr_of(format!("Failed to start server: {}", e).into_bytes())
                    .expect("Failed to convert error to CArray"),
            ),
        }
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
            Ok(()) => Ok(CUnit::c_repr_of(Unit {}).unwrap()),
            Err(e) => Err(CArray::c_repr_of(
                format!("Failed to shutdown server: {}", e).into_bytes(),
            )
            .expect("Failed to convert error to CArray")),
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
    let runtime_ref = unsafe { runtime.as_ref().unwrap() };
    // See `hs_temporal_start_dev_server`: the future must not retain a borrow
    // derived from the raw runtime pointer after this C call returns.
    let server_runtime = runtime_ref.runtime.clone();
    let mut de = serde_json::Deserializer::from_str(unsafe {
        std::str::from_utf8_unchecked(CStr::from_ptr(json_string).to_bytes())
    });
    let conf = TestServerConfigDef::deserialize(&mut de).expect("Failed to deserialize config");
    let hs: HsCallback<EphemeralServerRef, CArray<u8>> = HsCallback {
        cap,
        mvar,
        error_slot,
        result_slot,
    };
    runtime_ref.runtime.future_result_into_hs(hs, async move {
        let result = conf.start_server().await;
        match result {
            Ok(server) => Ok(EphemeralServerRef {
                server,
                runtime: server_runtime,
            }),
            Err(e) => Err(
                CArray::c_repr_of(format!("Failed to start server: {}", e).into_bytes())
                    .expect("Failed to convert error to CArray"),
            ),
        }
    })
}
