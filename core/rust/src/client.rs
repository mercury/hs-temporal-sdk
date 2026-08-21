use crate::runtime::{self, Capability, HsCallback, MVar};
use ffi_convert::*;
use serde::{Deserialize, Serialize};
use std::collections::HashMap;
use std::ffi::CStr;
use std::str::{FromStr, from_utf8_unchecked};
use std::time::Duration;
use temporalio_client::{
    ClientOptions, ConfiguredClient, RetryClient, RetryOptions, TemporalServiceClient, TlsOptions,
};
use tonic::metadata::{MetadataKey, errors::InvalidMetadataValue};
use url::Url;

type Client = RetryClient<ConfiguredClient<TemporalServiceClient>>;

/// Configuration options for [connect_client].
#[derive(Serialize, Deserialize)]
pub struct ClientConfig {
    /// The server to connect to.
    target_url: String,
    /// The name of the SDK being implemented on top of the Rust core SDK.
    ///
    /// This is used to set the `client-name` header in all RPC calls.
    client_name: String,
    /// The version of the SDK being implemented on top of the Rust core SDK.
    ///
    /// This is used to set the `client-version` header in all RPC calls; the server decides if the client is supported
    /// based on this.
    client_version: String,
    /// HTTP headers to include on every RPC call.
    ///
    /// These must be valid gRPC metadata keys; invalid keys or values will return an error upon connection.
    metadata: HashMap<String, String>,
    /// An API key to use for authentication; if set, TLS will be enabled by default.
    api_key: Option<String>,
    /// A human-readable string that can identify this process.
    identity: String,
    /// If specified, the client will establish a TLS connection as defined by [ClientTlsConfig].
    tls_config: Option<ClientTlsConfig>,
    /// Client retry configuration; defaults to [RetryOptions::default].
    retry_config: Option<ClientRetryConfig>,
}

/// Configuration options for TLS and, optionally, mTLS.
#[derive(Serialize, Deserialize)]
struct ClientTlsConfig {
    /// Bytes representing the root CA certificate used by the server.
    ///
    /// If not set, the SDK will fall back to the operating system's root CA certificate store.
    server_root_ca_cert: Option<Vec<u8>>,
    /// Sets the domain name against which to verify the server's TLS certificates.
    ///
    /// If not provided, the SDK will fall back to extracting the domain name from the URL used to connect.
    domain: Option<String>,
    /// The PEM-encoded certificate this client should use for mTLS authentication.
    client_cert: Option<Vec<u8>>,
    /// The PEM-encoded private key this client should use for mTLS authentication.
    client_private_key: Option<Vec<u8>>,
}

/// Configuration for retrying requests to the server.
#[derive(Serialize, Deserialize)]
struct ClientRetryConfig {
    /// Initial wait time before the first retry, in milliseconds.
    pub initial_interval_millis: u64,
    /// Fractional value used to determine jitter that should be added to, or subtracted from, the retry interval length.
    ///
    /// For example, a factor of `0.2` will jitter by ±20%.
    pub randomization_factor: f64,
    /// Rate at which retry time should be increased, until it reaches [max_interval_millis].
    pub multiplier: f64,
    /// Maximum amount of time to wait between retries, in milliseconds.
    pub max_interval_millis: u64,
    /// Maximum total amount of time requests should be retried for, in milliseconds.
    ///
    /// If [None], then no limit will be applied.
    pub max_elapsed_time_millis: Option<u64>,
    /// Maximum number of retry attempts.
    pub max_retries: usize,
}

impl TryFrom<ClientConfig> for ClientOptions {
    type Error = anyhow::Error;

    fn try_from(cfg: ClientConfig) -> anyhow::Result<Self> {
        let tls_cfg = cfg.tls_config.map(|c| c.try_into()).transpose()?;
        let retry_cfg = cfg
            .retry_config
            .map_or(RetryOptions::default(), |c| c.into());
        Ok(ClientOptions::builder()
            .target_url(Url::parse(&cfg.target_url)?)
            .client_name(cfg.client_name)
            .client_version(cfg.client_version)
            .identity(cfg.identity)
            .retry_options(retry_cfg)
            .maybe_api_key(cfg.api_key)
            .maybe_tls_options(tls_cfg)
            .build())
    }
}

impl TryFrom<ClientTlsConfig> for TlsOptions {
    type Error = anyhow::Error;

    fn try_from(cfg: ClientTlsConfig) -> anyhow::Result<Self> {
        Ok(TlsOptions {
            server_root_ca_cert: cfg.server_root_ca_cert,
            domain: cfg.domain,
            client_tls_options: match (cfg.client_cert, cfg.client_private_key) {
                (None, None) => None,
                (Some(client_cert), Some(client_private_key)) => {
                    Some(temporalio_client::ClientTlsOptions {
                        client_cert,
                        client_private_key,
                    })
                }
                _ => {
                    return Err(anyhow::anyhow!(
                        "Must have both client cert and private key or neither"
                    ));
                }
            },
        })
    }
}

impl From<ClientRetryConfig> for RetryOptions {
    fn from(cfg: ClientRetryConfig) -> Self {
        RetryOptions {
            initial_interval: Duration::from_millis(cfg.initial_interval_millis),
            randomization_factor: cfg.randomization_factor,
            multiplier: cfg.multiplier,
            max_interval: Duration::from_millis(cfg.max_interval_millis),
            max_elapsed_time: cfg.max_elapsed_time_millis.map(Duration::from_millis),
            max_retries: cfg.max_retries,
        }
    }
}

#[repr(C)]
pub struct HaskellHashMapEntries {
    key: *const u8,
    key_len: usize,
    value: *const u8,
    value_len: usize,
    next: *const HaskellHashMapEntries,
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
pub unsafe fn convert_hashmap(hashmap: *const HaskellHashMapEntries) -> HashMap<String, String> {
    let mut map = HashMap::new();
    if hashmap.is_null() {
        return map;
    }

    let mut hashmap_ptr = hashmap;
    while !hashmap_ptr.is_null() {
        let hashmap_val = unsafe { &*hashmap_ptr };
        let key = unsafe {
            from_utf8_unchecked(std::slice::from_raw_parts(
                hashmap_val.key,
                hashmap_val.key_len,
            ))
        };
        let value = unsafe {
            from_utf8_unchecked(std::slice::from_raw_parts(
                hashmap_val.value,
                hashmap_val.value_len,
            ))
        };
        map.insert(key.to_string(), value.to_string());
        hashmap_ptr = unsafe { (*hashmap).next };
    }

    map
}
#[repr(C)]
pub struct RpcCall {
    req: *const CArray<u8>,
    retry: bool,
    metadata: *const HaskellHashMapEntries,
    // nullable
    timeout_millis: *const u64,
}

pub(crate) struct TemporalCall {
    pub(crate) req: Vec<u8>,
    pub(crate) retry: bool,
    pub(crate) metadata: HashMap<String, String>,
    pub(crate) timeout_millis: Option<u64>,
}

impl From<&RpcCall> for TemporalCall {
    fn from(rpc_call: &RpcCall) -> Self {
        TemporalCall {
            req: unsafe {
                let req_array = rpc_call.req;
                let rust_vec = (*req_array).as_rust();
                rust_vec.unwrap().clone()
            },
            retry: rpc_call.retry,
            metadata: unsafe { convert_hashmap(rpc_call.metadata) },
            timeout_millis: if rpc_call.timeout_millis.is_null() {
                None
            } else {
                Some(unsafe { *rpc_call.timeout_millis })
            },
        }
    }
}

pub struct ClientRef {
    pub(crate) retry_client: Client,
    pub(crate) runtime: runtime::Runtime,
}

impl RawPointerConverter<ClientRef> for ClientRef {
    fn into_raw_pointer(self) -> *const ClientRef {
        convert_into_raw_pointer(self)
    }

    fn into_raw_pointer_mut(self) -> *mut ClientRef {
        convert_into_raw_pointer_mut(self)
    }

    unsafe fn from_raw_pointer(ptr: *const ClientRef) -> Result<Self, UnexpectedNullPointerError> {
        unsafe { take_back_from_raw_pointer(ptr) }
    }

    unsafe fn from_raw_pointer_mut(
        ptr: *mut ClientRef,
    ) -> Result<Self, UnexpectedNullPointerError> {
        unsafe { take_back_from_raw_pointer_mut(ptr) }
    }
}

pub fn connect_client(
    runtime_ref: &runtime::RuntimeRef,
    config: ClientConfig,
    hs_callback: HsCallback<ClientRef, CArray<u8>>,
) {
    let opts: ClientOptions = config.try_into().unwrap();
    let runtime = runtime_ref.runtime.clone();
    runtime_ref
        .runtime
        .future_result_into_hs(hs_callback, async move {
            let retry_client_result = opts
                .connect_no_namespace(runtime.core.as_ref().telemetry().get_metric_meter())
                .await;

            match retry_client_result {
                Ok(retry_client) => Ok(ClientRef {
                    retry_client,
                    runtime,
                }),
                Err(e) => {
                    let err_message = e.to_string().into_bytes();
                    Err(CArray::c_repr_of(err_message).unwrap())
                }
            }
        })
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell <-> Tokio FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_connect_client(
    runtime_ref: *const runtime::RuntimeRef,
    config_json: *const libc::c_char,
    mvar: *mut MVar,
    cap: Capability,
    error_slot: *mut *mut CArray<u8>,
    result_slot: *mut *mut ClientRef,
) {
    let runtime_ref = unsafe { &*runtime_ref };
    let config_json = unsafe { CStr::from_ptr(config_json) };
    let config: ClientConfig = serde_json::from_slice(config_json.to_bytes()).unwrap();
    let hs_callback = runtime::HsCallback {
        cap,
        mvar,
        error_slot,
        result_slot,
    };
    connect_client(runtime_ref, config, hs_callback);
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_drop_client(client: *mut ClientRef) {
    unsafe {
        drop(Box::from_raw(client));
    }
}

pub(crate) fn rpc_req<P: prost::Message + Default>(
    call: TemporalCall,
) -> Result<tonic::Request<P>, String> {
    let buf = call.req.as_slice();
    let proto = P::decode(buf).map_err(|err| err.to_string())?;
    let mut req = tonic::Request::new(proto);
    let metadata = &call.metadata;
    for (k, v) in metadata {
        req.metadata_mut().insert(
            MetadataKey::from_str(k.as_str()).map_err(|err| err.to_string())?,
            v.parse()
                .map_err(|err: InvalidMetadataValue| err.to_string())?,
        );
    }
    if let Some(timeout_millis) = call.timeout_millis {
        req.set_timeout(Duration::from_millis(timeout_millis));
    }
    Ok(req)
}

#[derive(Debug)]
pub struct RPCError {
    pub code: u32,
    pub message: String,
    pub details: Vec<u8>,
}

#[repr(C)]
#[derive(CReprOf, AsRust, CDrop, RawPointerConverter)]
#[target_type(RPCError)]
pub struct CRPCError {
    code: u32,
    message: *const libc::c_char,
    details: *const CArray<u8>,
}

impl From<String> for CRPCError {
    fn from(err: String) -> Self {
        CRPCError::c_repr_of(RPCError {
            code: 0,
            message: err,
            details: vec![],
        })
        .unwrap()
    }
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_drop_rpc_error(error: *mut CRPCError) {
    unsafe {
        CRPCError::drop_raw_pointer(error).unwrap();
    }
}

pub(crate) fn rpc_resp<P>(
    res: Result<tonic::Response<P>, tonic::Status>,
) -> Result<Vec<u8>, CRPCError>
where
    P: prost::Message,
    P: Default,
{
    match res {
        Ok(resp) => Ok(resp.get_ref().encode_to_vec()),
        Err(err) => Err(CRPCError::c_repr_of(RPCError {
            code: err.code() as u32,
            message: err.message().to_owned(),
            details: err.details().into(),
        })
        .unwrap()),
    }
}
