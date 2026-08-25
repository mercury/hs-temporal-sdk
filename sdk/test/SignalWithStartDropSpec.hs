{-# LANGUAGE DataKinds #-}
{-# LANGUAGE OverloadedStrings #-}

module SignalWithStartDropSpec where

import Data.IORef (atomicModifyIORef', newIORef, readIORef)
import RequireCallStack (provideCallStack)
import qualified Temporal.Client as C
import Temporal.Duration (nanoseconds, seconds)
import Temporal.Worker (configure)
import qualified Temporal.Workflow as W
import qualified Temporal.Workflow.Unsafe as Unsafe
import Test.Hspec
import TestHelpers


kickSignal :: W.KnownSignal '[Int]
kickSignal = W.KnownSignal "kick" defaultCodec


spec :: Spec
spec = withTestServer_ $ describe "signalWithStart signal delivery" $ do
  -- a handler installed at the top of the workflow must observe a signal
  -- delivered atomically with start, even with no intervening yield.
  it "delivers the signal to an unguarded top-of-workflow handler" $ \TestEnv {..} -> do
    let wfBody :: W.Workflow (Maybe Int)
        wfBody = provideCallStack $ do
          received <- W.newStateVar (Nothing :: Maybe Int)
          W.setSignalHandler kickSignal $ \n -> W.writeStateVar received (Just n)
          W.readStateVar received
        wf = W.provideWorkflow defaultCodec "SignalWithStartDropSpec.unguarded" wfBody
    withWorker (configure () wf baseConf) $ do
      wfId <- W.WorkflowId <$> uuidText
      h <- useClient (C.signalWithStart wf wfId (defaultStartOptsWithTimeout taskQueue (seconds 30)) kickSignal 42)
      useClient (C.waitWorkflowResult h) `shouldReturn` Just 42

  it "executes the signal-with-start workflow body once" $ \TestEnv {..} -> do
    executionCount <- newIORef (0 :: Int)
    let wfBody :: W.Workflow (Maybe Int)
        wfBody = provideCallStack $ do
          Unsafe.performUnsafeNonDeterministicIO $
            atomicModifyIORef' executionCount $
              \count -> (count + 1, ())
          received <- W.newStateVar (Nothing :: Maybe Int)
          W.setSignalHandler kickSignal $ \n -> W.writeStateVar received (Just n)
          W.readStateVar received
        wf = W.provideWorkflow defaultCodec "SignalWithStartDropSpec.singleExecutor" wfBody
    withWorker (configure () wf baseConf) $ do
      wfId <- W.WorkflowId <$> uuidText
      h <- useClient $ C.signalWithStart wf wfId (defaultStartOptsWithTimeout taskQueue (seconds 30)) kickSignal 42
      useClient (C.waitWorkflowResult h) `shouldReturn` Just 42
      readIORef executionCount `shouldReturn` 1
