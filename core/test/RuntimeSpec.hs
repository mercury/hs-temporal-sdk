{-# LANGUAGE DeriveAnyClass #-}

module RuntimeSpec (spec) where

import Control.Concurrent
import Control.Concurrent.Async
import Control.Exception
import Control.Monad (void)
import Foreign.Ptr (Ptr)
import System.Timeout
import qualified Temporal.Core.Internal.TestFixture as TestFixture
import Temporal.Runtime
import Test.Hspec


data CallbackFailed = CallbackFailed
  deriving stock (Eq, Show)
  deriving anyclass (Exception)


bounded :: IO a -> IO a
bounded action = timeout 5000000 action >>= maybe (throwIO (userError "runtime test hung")) pure


spec :: Spec
spec = describe "managed runtime ownership" $ do
  it "keeps an acquired handle usable after concurrent destruction" $
    bounded $
      bracketRuntime NoTelemetry $ \rt -> do
        -- This test must assert relative to this baseline rather than assuming
        -- an absolute value, since the counter is process-global.
        baseline <- TestFixture.runtimeLiveCount
        entered <- newEmptyMVar
        release <- newEmptyMVar
        let releaseWorker = void $ tryPutMVar release ()
            useRuntimeAfterDestruction = withRuntime rt $ \ptr -> do
              putMVar entered ()
              readMVar release
              useBorrowedRuntime ptr
        withAsync useRuntimeAfterDestruction $ \worker ->
          bracket_ (pure ()) releaseWorker $ do
            takeMVar entered
            mapConcurrently_ (const $ destroyRuntime rt) [1 :: Int .. 8]
            withRuntime rt (const $ pure ()) `shouldThrow` (== RuntimeClosedError)
            TestFixture.runtimeLiveCount `shouldReturn` baseline
            releaseWorker
            wait worker
        -- Now that the worker's callback has returned and released its clone,
        -- this test's Core runtime must actually be gone.
        TestFixture.runtimeLiveCount `shouldReturn` (baseline - 1)
  it "allows destruction inside a callback without deadlock" $
    bounded $
      bracketRuntime NoTelemetry $ \rt ->
        withRuntime rt $ \ptr -> destroyRuntime rt *> useBorrowedRuntime ptr
  it "preserves callback exceptions and remains usable afterward" $
    bounded $
      bracketRuntime NoTelemetry $ \rt -> do
        withRuntime rt (const $ throwIO CallbackFailed) `shouldThrow` (== CallbackFailed)
        void $ fetchLogs rt
  it "remains usable after callback cancellation" $
    bounded $
      bracketRuntime NoTelemetry $ \rt -> do
        entered <- newEmptyMVar
        blocked <- newEmptyMVar
        withAsync (withRuntime rt $ \_ -> putMVar entered () *> takeMVar blocked) $ \worker -> do
          takeMVar entered
          cancel worker
          wait worker `shouldThrow` (== AsyncCancelled)
        void $ fetchLogs rt
  it "supports nested acquisition" $
    bounded $
      bracketRuntime NoTelemetry $ \rt ->
        withRuntime rt $ \outer ->
          withRuntime rt $ \inner ->
            useBorrowedRuntime outer *> useBorrowedRuntime inner
  it "preserves caller masking state" $
    bounded $
      bracketRuntime NoTelemetry $ \rt -> do
        let check expected = withRuntime rt $ \_ -> getMaskingState `shouldReturn` expected
        check Unmasked
        mask_ $ check MaskedInterruptible
        uninterruptibleMask_ $ check MaskedUninterruptible


foreign import ccall "hs_temporal_runtime_fetch_logs" fetchBorrowedLogs :: Ptr CRuntime -> IO (Ptr ())


foreign import ccall "hs_temporal_runtime_free_logs" freeBorrowedLogs :: Ptr () -> IO ()


useBorrowedRuntime :: Ptr CRuntime -> IO ()
useBorrowedRuntime ptr = bracket (fetchBorrowedLogs ptr) freeBorrowedLogs (const $ pure ())
