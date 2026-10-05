{-# LANGUAGE DuplicateRecordFields #-}

module Temporal.Runtime (
  Runtime,
  TelemetryOptions (..),
  Periodicity (..),
  initializeRuntime,
  withRuntime,
  destroyRuntime,
  fetchLogs,
  CoreLog (..),
  LogLevel (..),

  -- * Resource-safe wrappers
  bracketRuntime,
) where

import Control.Exception
import Data.Aeson
import qualified Data.ByteString.Lazy as BL
import qualified Data.Vector as V
import Foreign.Ptr
import Foreign.Storable
import Temporal.Core.CTypes
import Temporal.Internal.FFI


{- | Initialize the Rust runtime and thread-pool.

IMPORTANT: You must call 'destroyRuntime' when done, or use 'withRuntime'/'bracketRuntime'
for automatic cleanup.
-}
initializeRuntime :: TelemetryOptions -> IO Runtime
initializeRuntime opts = withCArrayBS (BL.toStrict $ encode opts) $ \optsP ->
  mask_ $ do
    rtP <- initRuntime optsP tryPutMVarPtr
    return (Runtime rtP)


{- | Explicitly destroy a Runtime, freeing its resources immediately.

This should only be called once, and the Runtime should not be used afterwards.
-}
destroyRuntime :: Runtime -> IO ()
destroyRuntime (Runtime ptr) = freeRuntime ptr


-- | Access the underlying 'Runtime' pointer for calling out to Rust.
withRuntime :: Runtime -> (Ptr Runtime -> IO a) -> IO a
withRuntime (Runtime ptr) f = f ptr


{- | Bracket-style wrapper for Runtime that ensures proper cleanup.

Example:

@
bracketRuntime telemetryOpts $ \\rt -> do
  ...
@
-}
bracketRuntime :: TelemetryOptions -> (Runtime -> IO a) -> IO a
bracketRuntime opts = bracket (initializeRuntime opts) destroyRuntime


{- | The Rust runtime exports logs to the Haskell runtime. This function fetches
those logs so they can be fed through a logging framework.
-}
fetchLogs :: Runtime -> IO (V.Vector CoreLog)
fetchLogs r = withRuntime r $ \p -> do
  bracket (raw_fetchLogs p) raw_freeLogs $ \clogs -> do
    logs <- peek clogs
    vec <- cArrayToVector cArrayToByteString logs
    V.mapM throwDecodeStrict vec
