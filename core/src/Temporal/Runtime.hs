{-# LANGUAGE DuplicateRecordFields #-}

module Temporal.Runtime (
  Runtime,
  CRuntime,
  RuntimeClosedError (..),
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
import Temporal.Runtime.Internal (Runtime, RuntimeClosedError (..))
import qualified Temporal.Runtime.Internal as Runtime.Internal


{- | Initialize the Rust runtime and thread-pool.

__NOTE__: You must call 'destroyRuntime' to free the acquired resource; prefer
'bracketRuntime' for automatic cleanup if possible.
-}
initializeRuntime :: TelemetryOptions -> IO Runtime
initializeRuntime opts = withCArrayBS (BL.toStrict $ encode opts) $ \optsP ->
  mask_ $ initRuntime optsP tryPutMVarPtr >>= Runtime.Internal.fromHandle


{- | Explicitly destroy a Runtime, releasing its handle.

Repeated calls have no effect: existing uses remain valid, but new calls to
'withRuntime' throw 'RuntimeClosedError'.

Other handles and pending Rust operations keep the underlying runtime object
alive until they are finalized.
-}
destroyRuntime :: Runtime -> IO ()
destroyRuntime rt = Runtime.Internal.closeWithCleanup rt (pure ())


{- | Access the underlying 'CRuntime' pointer for FFI calls.

Acquires an independent handle before running the callback. Once acquired,
the handle remains valid even if 'destroyRuntime' is called concurrently or
inside the callback; throws 'RuntimeClosedError' if called on a 'Runtime' that
has already been destroyed.

The callback must not free the pointer or use it after returning. The callback
runs without holding the runtime lock and preserves the caller's masking state.
-}
withRuntime :: Runtime -> (Ptr CRuntime -> IO a) -> IO a
withRuntime rt = bracket (Runtime.Internal.cloneHandle rt) freeRuntime


-- | Bracket runtime acquisition and release.
bracketRuntime :: TelemetryOptions -> (Runtime -> IO a) -> IO a
bracketRuntime opts = bracket (initializeRuntime opts) destroyRuntime


-- | Fetch logs from the 'Runtime'.
fetchLogs :: Runtime -> IO (V.Vector CoreLog)
fetchLogs r =
  bracket (withRuntime r raw_fetchLogs) raw_freeLogBuffer $ \clogs -> do
    logs <- peek clogs
    vec <- cArrayToVector cArrayToByteString logs
    V.mapM throwDecodeStrict vec
