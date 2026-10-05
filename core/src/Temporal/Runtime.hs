{-# LANGUAGE DuplicateRecordFields #-}

module Temporal.Runtime (
  Runtime,
  TelemetryOptions (..),
  Periodicity (..),
  initializeRuntime,
  RuntimeInitializationError (..),
  withRuntime,
  destroyRuntime,
  fetchLogs,
  CoreLog (..),
  LogLevel (..),

  -- * Resource-safe wrappers
  bracketRuntime,
) where

import Control.Exception
import Control.Monad ((>=>))
import Data.Aeson
import qualified Data.ByteString.Lazy as BL
import Data.Text (Text)
import qualified Data.Vector as V
import Foreign.Marshal.Alloc (alloca)
import Foreign.Ptr
import Foreign.Storable
import Temporal.Core.CTypes
import Temporal.Internal.FFI


{- | Thrown by 'initializeRuntime' when the Rust bridge cannot start a runtime.

For example, the telemetry options are invalid, the OpenTelemetry collector URL
does not parse, or the Prometheus exporter cannot bind its socket.
-}
newtype RuntimeInitializationError = RuntimeInitializationError Text
  deriving stock (Show, Eq)


instance Exception RuntimeInitializationError


{- | Initialize the Rust runtime and thread-pool.

IMPORTANT: You must call 'destroyRuntime' when done, or use 'withRuntime'/'bracketRuntime'
for automatic cleanup.

Throws 'RuntimeInitializationError' if the runtime cannot start.
-}
initializeRuntime :: TelemetryOptions -> IO Runtime
initializeRuntime opts = withCArrayBS (BL.toStrict $ encode opts) $ \optsP ->
  alloca $ \errorSlot -> mask_ $ do
    poke errorSlot nullPtr
    rtP <- initRuntime optsP tryPutMVarPtr errorSlot
    if rtP /= nullPtr
      then pure (Runtime rtP)
      else do
        errP <- peek errorSlot
        message <-
          if errP == nullPtr
            then pure "the Rust bridge returned no runtime and no error"
            else bracket (pure errP) rust_dropByteArray (peek >=> cArrayToText)
        throwIO $ RuntimeInitializationError message


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
