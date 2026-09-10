{-# LANGUAGE EmptyDataDecls #-}

{- | Test-only bindings for exercising the Tokio FFI bridge.

These wrap tiny bridge fixtures that exist purely so test suites can observe
cross-language resource management.

For example, they allow us to observe that a Rust result produced after the
Haskell waiter was interrupted is still reclaimed by its cleanup thread.
-}
module Temporal.Core.Internal.TestFixture (
  acquireDelayedTestResource,
  testResourceDropCount,
  runtimeLiveCount,
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


foreign import ccall "hs_temporal_test_delayed_resource" raw_delayedTestResource :: Ptr CRuntime -> Word64 -> TokioCall (CArray Word8) CTestResource


foreign import ccall "hs_temporal_drop_test_resource" raw_dropTestResource :: Ptr CTestResource -> IO ()


-- | Total number of test resources freed since process start.
foreign import ccall "hs_temporal_test_resource_drop_count" testResourceDropCount :: IO Word64


{- | Number of distinct core runtimes currently live.

This counts real Core runtimes, not 'Temporal.Runtime.Runtime' handles or their
clones.

Only constructing a brand new core runtime increments this counter, and only
that runtime's actual drop call decrements it.

This makes it possible to observe that a runtime clone nothing hands a
'Temporal.Runtime.Runtime' handle back for has actually been released.
-}
foreign import ccall "hs_temporal_test_runtime_live_count" runtimeLiveCount :: IO Word64


{- | Schedule a bridge call that produces a drop-counted resource after the
given number of milliseconds, then wait for it like any other Tokio-backed
FFI call.
-}
acquireDelayedTestResource :: Runtime -> Word64 -> IO (Either ByteString ())
acquireDelayedTestResource r delayMillis =
  withTokioAsyncCall
    (withScopedTokioCall (withRuntime r) $ \rp -> raw_delayedTestResource rp delayMillis)
    rust_dropByteArray
    raw_dropTestResource
    (peek >=> cArrayToByteString)
    (\_ -> pure ())
