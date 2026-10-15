# Revision history for temporal-sdk-core

## Unreleased

### Behaviour changes

* `ClientConfig.metadata` is now sent as gRPC headers on every RPC call.
  Before, the bridge decoded it and then dropped it. An invalid header key or
  value now makes `connectClient` fail with `ClientConnectionError`.
* The resource-based tuner now uses `targetCpuUsage` as its CPU target.
  Before, it used `targetMemoryUsage` for both the memory and the CPU target.
* Invalid input from the caller now returns an error instead of aborting the
  process:
  * `initializeRuntime` throws `RuntimeInitializationError` for invalid
    telemetry options, an invalid OpenTelemetry collector URL, a failed
    OpenTelemetry exporter, or a Prometheus exporter that cannot bind.
  * `connectClient` reports an invalid configuration (for example an
    unparsable `targetUrl`, or TLS with only one of `clientCert` and
    `clientPrivateKey`) as `ClientConnectionError`.
  * `startDevServer` and `startTestServer` return `Left` for a configuration
    that the bridge cannot decode.
  * Error messages that contain a NUL byte no longer abort the process.

### New API

* `Temporal.Runtime.RuntimeInitializationError`.

### Internal

* `hs_temporal_init_runtime` takes an extra error out-parameter and returns
  null on failure. This changes the C ABI of `temporal_bridge`.
* The bridge no longer loops forever when an RPC call carries two or more
  metadata entries. No Haskell caller sent RPC metadata yet.
* New `temporal-sdk-core-tests` test suite. It checks that invalid input
  reaches Haskell as an ordinary error.
* New Rust tests connect to an in-process gRPC server that records request
  headers. They check that client metadata, the API key and per-call RPC
  metadata reach the server.

## 0.1.0.0 -- YYYY-mm-dd

* First version. Released on an unsuspecting world.
