use crate::runtime::{self, Capability, HsCallback, MVar, c_string_safe, error_bytes};
use ffi_convert::*;
use serde::{Deserialize, Serialize};
use std::collections::HashMap;
use std::ffi::CStr;
use std::str::{FromStr, Utf8Error};
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
            .headers(cfg.metadata)
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

/// Parse the client configuration sent by `Temporal.Core.Client.connectClient`.
pub(crate) fn parse_client_config(json: &[u8]) -> Result<ClientConfig, String> {
    serde_json::from_slice(json).map_err(|err| format!("Invalid client config: {err}"))
}

// TODO: [publish-crate]
/// Copy a Haskell linked list of metadata entries into a map.
///
/// A null pointer is an empty map. If a key repeats, the last entry wins.
///
/// # Safety
///
/// `hashmap` must be null or point to a live, null-terminated list whose keys
/// and values are valid for their stated lengths.
pub unsafe fn convert_hashmap(
    hashmap: *const HaskellHashMapEntries,
) -> Result<HashMap<String, String>, Utf8Error> {
    let mut map = HashMap::new();
    let mut hashmap_ptr = hashmap;
    while !hashmap_ptr.is_null() {
        let hashmap_val = unsafe { &*hashmap_ptr };
        let key = unsafe { haskell_str(hashmap_val.key, hashmap_val.key_len) }?;
        let value = unsafe { haskell_str(hashmap_val.value, hashmap_val.value_len) }?;
        map.insert(key.to_string(), value.to_string());
        hashmap_ptr = hashmap_val.next;
    }

    Ok(map)
}

/// # Safety
///
/// `ptr` must be valid for `len` bytes, or `len` must be zero.
unsafe fn haskell_str<'a>(ptr: *const u8, len: usize) -> Result<&'a str, Utf8Error> {
    if len == 0 {
        return Ok("");
    }
    std::str::from_utf8(unsafe { std::slice::from_raw_parts(ptr, len) })
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
    /// Invalid metadata is reported when the request is built, through the
    /// call's normal error result.
    pub(crate) metadata: Result<HashMap<String, String>, String>,
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
            metadata: unsafe { convert_hashmap(rpc_call.metadata) }
                .map_err(|err| format!("RPC metadata is not valid UTF-8: {err}")),
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

/// Connect a client and report the result through `hs_callback`.
///
/// An invalid `config` is reported through `hs_callback` like a connection
/// failure, so the Haskell waiter is always woken.
pub fn connect_client(
    runtime_ref: &runtime::RuntimeRef,
    config: Result<ClientConfig, String>,
    hs_callback: HsCallback<ClientRef, CArray<u8>>,
) {
    let opts: Result<ClientOptions, String> = config.and_then(|config| {
        config
            .try_into()
            .map_err(|err| format!("Invalid client config: {err:#}"))
    });
    let runtime = runtime_ref.runtime.clone();
    runtime_ref
        .runtime
        .future_result_into_hs(hs_callback, async move {
            let opts = opts.map_err(error_bytes)?;
            let retry_client_result = opts
                .connect_no_namespace(runtime.core.as_ref().telemetry().get_metric_meter())
                .await;

            match retry_client_result {
                Ok(retry_client) => Ok(ClientRef {
                    retry_client,
                    runtime,
                }),
                Err(e) => Err(error_bytes(e.to_string())),
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
    let config = if config_json.is_null() {
        Err("client config pointer is null".to_string())
    } else {
        parse_client_config(unsafe { CStr::from_ptr(config_json) }.to_bytes())
    };
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
    let metadata = call.metadata?;
    for (k, v) in &metadata {
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

impl From<RPCError> for CRPCError {
    fn from(err: RPCError) -> Self {
        CRPCError::c_repr_of(RPCError {
            message: c_string_safe(err.message),
            ..err
        })
        .expect("a message without NUL bytes has a C representation")
    }
}

impl From<String> for CRPCError {
    fn from(err: String) -> Self {
        RPCError {
            code: 0,
            message: err,
            details: vec![],
        }
        .into()
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
        Err(err) => Err(RPCError {
            code: err.code() as u32,
            message: err.message().to_owned(),
            details: err.details().into(),
        }
        .into()),
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::runtime::test_support::{call_bridge, new_test_runtime};
    use serde_json::json;
    use std::ffi::CString;
    use std::net::SocketAddr;
    use std::sync::{Arc, Mutex};
    use std::task::{Context, Poll};
    use tonic::codegen::Service;
    use tonic::codegen::http::{HeaderMap, Request, Response};
    use tonic::server::NamedService;
    use tonic::transport::server::TcpIncoming;

    /// Owns a Haskell-style metadata list for the duration of a test.
    struct HashMapEntries {
        entries: Box<[HaskellHashMapEntries]>,
    }

    impl HashMapEntries {
        fn new(pairs: &[(&'static str, &'static str)]) -> Self {
            let mut entries: Box<[HaskellHashMapEntries]> = pairs
                .iter()
                .map(|(key, value)| HaskellHashMapEntries {
                    key: key.as_ptr(),
                    key_len: key.len(),
                    value: value.as_ptr(),
                    value_len: value.len(),
                    next: std::ptr::null(),
                })
                .collect();
            let base = entries.as_mut_ptr();
            for i in 1..entries.len() {
                unsafe { (*base.add(i - 1)).next = base.add(i) };
            }
            Self { entries }
        }

        fn head(&self) -> *const HaskellHashMapEntries {
            self.entries.first().map_or(std::ptr::null(), |e| e)
        }
    }

    fn to_map(pairs: &[(&str, &str)]) -> HashMap<String, String> {
        pairs
            .iter()
            .map(|(k, v)| (k.to_string(), v.to_string()))
            .collect()
    }

    #[test]
    fn convert_hashmap_reads_every_entry() {
        assert_eq!(
            unsafe { convert_hashmap(std::ptr::null()) }.unwrap(),
            HashMap::new()
        );

        let one = [("authorization", "Bearer token")];
        let entries = HashMapEntries::new(&one);
        assert_eq!(
            unsafe { convert_hashmap(entries.head()) }.unwrap(),
            to_map(&one)
        );

        let three = [("a", "1"), ("b", ""), ("c", "3")];
        let entries = HashMapEntries::new(&three);
        assert_eq!(
            unsafe { convert_hashmap(entries.head()) }.unwrap(),
            to_map(&three)
        );
    }

    #[test]
    fn convert_hashmap_rejects_invalid_utf8() {
        let invalid = [0xff_u8, 0xfe];
        let entry = HaskellHashMapEntries {
            key: invalid.as_ptr(),
            key_len: invalid.len(),
            value: std::ptr::null(),
            value_len: 0,
            next: std::ptr::null(),
        };
        assert!(unsafe { convert_hashmap(&entry) }.is_err());
    }

    #[test]
    fn rpc_req_reports_invalid_metadata() {
        let call = TemporalCall {
            req: vec![],
            retry: false,
            metadata: Err("bad metadata".into()),
            timeout_millis: None,
        };
        let err = rpc_req::<prost_types::Empty>(call).unwrap_err();
        assert_eq!(err, "bad metadata");
    }

    fn full_client_config() -> serde_json::Value {
        json!({
            "target_url": "https://temporal.example:7233",
            "client_name": "client-name",
            "client_version": "1.2.3",
            "metadata": {"x-one": "1", "x-two": "2"},
            "api_key": "secret",
            "identity": "worker@host",
            "tls_config": {
                "server_root_ca_cert": [1, 2, 3],
                "domain": "tls.example",
                "client_cert": [4, 5],
                "client_private_key": [6, 7]
            },
            "retry_config": {
                "initial_interval_millis": 11,
                "randomization_factor": 0.25,
                "multiplier": 1.5,
                "max_interval_millis": 22,
                "max_elapsed_time_millis": 33,
                "max_retries": 4
            }
        })
    }

    fn connect_with_raw_config(config: &std::ffi::CStr) -> Result<ClientRef, CArray<u8>> {
        let runtime = new_test_runtime();
        call_bridge(|mvar, cap, error_slot, result_slot| unsafe {
            hs_temporal_connect_client(
                &runtime,
                config.as_ptr(),
                mvar,
                cap,
                error_slot,
                result_slot,
            )
        })
    }

    #[test]
    fn connect_client_reports_invalid_config_to_the_waiter() {
        let err = connect_with_raw_config(c"{not json").err().unwrap();
        assert!(error_text(err).starts_with("Invalid client config"));

        let mut config = full_client_config();
        config["target_url"] = json!("not a url");
        let config = std::ffi::CString::new(config.to_string()).unwrap();
        let err = connect_with_raw_config(&config).err().unwrap();
        assert!(error_text(err).starts_with("Invalid client config"));
    }

    /// A local WorkflowService that records the headers of each request and
    /// answers `Unimplemented`. Core accepts that answer to the
    /// `get_system_info` call it makes when it connects.
    #[derive(Clone, Default)]
    struct HeaderRecorder {
        requests: Arc<Mutex<Vec<HeaderMap>>>,
    }

    impl NamedService for HeaderRecorder {
        const NAME: &'static str = "temporal.api.workflowservice.v1.WorkflowService";
    }

    impl<B> Service<Request<B>> for HeaderRecorder {
        type Response = Response<tonic::body::Body>;
        type Error = std::convert::Infallible;
        type Future = std::future::Ready<Result<Self::Response, Self::Error>>;

        fn poll_ready(&mut self, _: &mut Context<'_>) -> Poll<Result<(), Self::Error>> {
            Poll::Ready(Ok(()))
        }

        fn call(&mut self, request: Request<B>) -> Self::Future {
            self.requests
                .lock()
                .unwrap()
                .push(request.headers().clone());
            std::future::ready(Ok(tonic::Status::unimplemented("recorded").into_http()))
        }
    }

    impl HeaderRecorder {
        /// Serve on a free local port until the returned Tokio runtime is dropped.
        fn start() -> (tokio::runtime::Runtime, SocketAddr, Self) {
            let server = tokio::runtime::Runtime::new().unwrap();
            let listener = server
                .block_on(tokio::net::TcpListener::bind("127.0.0.1:0"))
                .unwrap();
            let addr = listener.local_addr().unwrap();
            let recorder = Self::default();
            server.spawn(
                tonic::transport::Server::builder()
                    .add_service(recorder.clone())
                    .serve_with_incoming(TcpIncoming::from(listener)),
            );
            (server, addr, recorder)
        }

        fn last_request(&self) -> HeaderMap {
            let requests = self.requests.lock().unwrap();
            requests
                .last()
                .cloned()
                .expect("the server received no request")
        }
    }

    fn header<'a>(headers: &'a HeaderMap, name: &str) -> Option<&'a str> {
        headers.get(name).map(|value| value.to_str().unwrap())
    }

    fn connect_to_recorder(addr: SocketAddr) -> ClientRef {
        let mut config = full_client_config();
        config["target_url"] = json!(format!("http://{addr}"));
        config["tls_config"] = json!(null);
        config["retry_config"] = json!(null);
        let config = CString::new(config.to_string()).unwrap();
        connect_with_raw_config(&config)
            .map_err(|error| String::from_utf8(error.as_rust().unwrap()).unwrap())
            .expect("the client connects to the local server")
    }

    #[test]
    fn connect_sends_client_metadata_as_headers() {
        let (_server, addr, recorder) = HeaderRecorder::start();
        let _client = connect_to_recorder(addr);

        let headers = recorder.last_request();
        assert_eq!(header(&headers, "x-one"), Some("1"));
        assert_eq!(header(&headers, "x-two"), Some("2"));
        assert_eq!(header(&headers, "authorization"), Some("Bearer secret"));
        assert_eq!(header(&headers, "client-name"), Some("client-name"));
        assert_eq!(header(&headers, "client-version"), Some("1.2.3"));
    }

    #[test]
    fn rpc_call_sends_per_call_metadata() {
        let (_server, addr, recorder) = HeaderRecorder::start();
        let mut client = connect_to_recorder(addr);

        let request = runtime::byte_array(vec![]);
        let metadata =
            HashMapEntries::new(&[("x-call-a", "1"), ("x-call-b", "2"), ("x-call-c", "3")]);
        let call = RpcCall {
            req: &request,
            retry: false,
            metadata: metadata.head(),
            timeout_millis: std::ptr::null(),
        };
        let result: Result<CArray<u8>, CRPCError> =
            call_bridge(|mvar, cap, error_slot, result_slot| unsafe {
                crate::rpc::hs_get_system_info(
                    &mut client,
                    &call,
                    mvar,
                    cap,
                    error_slot,
                    result_slot,
                )
            });
        let err: RPCError = result
            .expect_err("the local server answers Unimplemented")
            .as_rust()
            .unwrap();
        assert_eq!(err.code, tonic::Code::Unimplemented as u32);

        let headers = recorder.last_request();
        assert_eq!(header(&headers, "x-call-a"), Some("1"));
        assert_eq!(header(&headers, "x-call-b"), Some("2"));
        assert_eq!(header(&headers, "x-call-c"), Some("3"));
        // Client-wide headers still apply.
        assert_eq!(header(&headers, "x-one"), Some("1"));
    }

    #[test]
    fn rpc_error_conversion_tolerates_nul_bytes() {
        let err = CRPCError::from("bad\0message".to_string());
        let err: RPCError = err.as_rust().unwrap();
        assert_eq!(err.message, "bad\u{FFFD}message");
    }
}
