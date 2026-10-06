{-# LANGUAGE EmptyDataDecls #-}

{- | Test-only bindings for exercising the Tokio FFI bridge.

These wrap tiny bridge fixtures (prefixed @hs_temporal_test_@ on the Rust
side) that exist purely so test suites can observe cross-language resource
management, e.g. that a Rust result produced after the Haskell waiter was
interrupted is still reclaimed by the cleanup thread. They are compiled into
the production bridge library because the test suites link the same artifact,
but nothing outside of tests should call them.
-}
module Temporal.Core.Internal.TestFixture (
  acquireDelayedTestResource,
  testResourceDropCount,
  BridgeConfigType (..),
  echoBridgeConfig,
) where

import Control.Exception (bracket, mask_)
import Control.Monad ((>=>))
import Data.ByteString (ByteString)
import Data.Text (Text)
import Data.Word
import Foreign.Marshal.Alloc (alloca)
import Foreign.Ptr
import Foreign.Storable (peek, poke)
import Temporal.Core.CTypes
import Temporal.Internal.FFI
import Temporal.Runtime


-- | Opaque Rust-owned resource whose destructor increments a global counter.
data CTestResource


foreign import ccall "hs_temporal_test_delayed_resource" raw_delayedTestResource :: Ptr Runtime -> Word64 -> TokioCall (CArray Word8) CTestResource


foreign import ccall "hs_temporal_drop_test_resource" raw_dropTestResource :: Ptr CTestResource -> IO ()


-- | Total number of test resources freed since process start.
foreign import ccall "hs_temporal_test_resource_drop_count" testResourceDropCount :: IO Word64


{- | Schedule a bridge call that produces a drop-counted resource after the
given number of milliseconds, then wait for it like any other Tokio-backed
FFI call.
-}
acquireDelayedTestResource :: Runtime -> Word64 -> IO (Either ByteString ())
acquireDelayedTestResource r delayMillis = withRuntime r $ \rp ->
  withTokioAsyncCall
    (raw_delayedTestResource rp delayMillis)
    rust_dropByteArray
    raw_dropTestResource
    (peek >=> cArrayToByteString)
    (\_ -> pure ())


-- | A configuration type that the bridge decodes from JSON.
data BridgeConfigType
  = -- | @Temporal.Core.Worker.WorkerConfig@
    WorkerConfigType
  | -- | @Temporal.Core.Client.ClientConfig@
    ClientConfigType
  | -- | @Temporal.Runtime.TelemetryOptions@
    TelemetryOptionsType
  | -- | @Temporal.Core.EphemeralServer.TemporalDevServerConfig@
    DevServerConfigType
  | -- | @Temporal.Core.EphemeralServer.TemporalTestServerConfig@
    TestServerConfigType
  deriving stock (Show, Eq, Enum, Bounded)


type EchoConfig = Ptr (CArray Word8) -> Ptr (Ptr (CArray Word8)) -> Ptr (Ptr (CArray Word8)) -> IO ()


foreign import ccall "hs_temporal_test_echo_worker_config" raw_echoWorkerConfig :: EchoConfig


foreign import ccall "hs_temporal_test_echo_client_config" raw_echoClientConfig :: EchoConfig


foreign import ccall "hs_temporal_test_echo_telemetry_options" raw_echoTelemetryOptions :: EchoConfig


foreign import ccall "hs_temporal_test_echo_dev_server_config" raw_echoDevServerConfig :: EchoConfig


foreign import ccall "hs_temporal_test_echo_test_server_config" raw_echoTestServerConfig :: EchoConfig


{- | Decode JSON with the bridge's decoder for a configuration type, then
encode the decoded value back to JSON.

Returns the bridge's error message if it rejects the input. Tests compare the
result with the input to check that the Haskell encoder and the Rust type
agree on every field.
-}
echoBridgeConfig :: BridgeConfigType -> ByteString -> IO (Either Text ByteString)
echoBridgeConfig configType json = withCArrayBS json $ \jsonPtr ->
  alloca $ \resultSlot -> alloca $ \errorSlot -> mask_ $ do
    poke resultSlot nullPtr
    poke errorSlot nullPtr
    echo jsonPtr resultSlot errorSlot
    errPtr <- peek errorSlot
    resPtr <- peek resultSlot
    if errPtr /= nullPtr
      then Left <$> takeByteArray cArrayToText errPtr
      else
        if resPtr /= nullPtr
          then Right <$> takeByteArray cArrayToByteString resPtr
          else pure $ Left "the bridge returned no result and no error"
  where
    echo :: EchoConfig
    echo = case configType of
      WorkerConfigType -> raw_echoWorkerConfig
      ClientConfigType -> raw_echoClientConfig
      TelemetryOptionsType -> raw_echoTelemetryOptions
      DevServerConfigType -> raw_echoDevServerConfig
      TestServerConfigType -> raw_echoTestServerConfig

    takeByteArray :: (CArray Word8 -> IO a) -> Ptr (CArray Word8) -> IO a
    takeByteArray decode ptr = bracket (pure ptr) rust_dropByteArray (peek >=> decode)
