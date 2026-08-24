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
) where

import Control.Monad ((>=>))
import Data.ByteString (ByteString)
import Data.Word
import Foreign.Ptr
import Foreign.Storable (peek)
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
