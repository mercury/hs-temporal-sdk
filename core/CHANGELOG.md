# Revision history for temporal-sdk-core

## Unreleased

### Behaviour changes

* `ClientConfig.metadata` is now sent as gRPC headers on every RPC call.
  Before, the bridge decoded it and then dropped it. An invalid header key or
  value now makes `connectClient` fail with `ClientConnectionError`.
* The resource-based tuner now uses `targetCpuUsage` as its CPU target.
  Before, it used `targetMemoryUsage` for both the memory and the CPU target.

### Internal

* The bridge no longer loops forever when an RPC call carries two or more
  metadata entries. No Haskell caller sent RPC metadata yet.
* New Rust tests connect to an in-process gRPC server that records request
  headers. They check that client metadata, the API key and per-call RPC
  metadata reach the server.

## 0.1.0.0 -- YYYY-mm-dd

* First version. Released on an unsuspecting world.
