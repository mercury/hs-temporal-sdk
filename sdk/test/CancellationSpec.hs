-- Pinned here for the formatter: this module is missing from the cabal
-- other-modules list, so fourmolu does not see the default extension and
-- rewrites @x.field@ as composition.
{-# LANGUAGE OverloadedRecordDot #-}

module CancellationSpec where

import Control.Concurrent (threadDelay)
import Control.Exception (SomeException)
import Control.Monad (join)
import qualified Control.Monad.Catch as Catch
import Control.Monad.IO.Class (liftIO)
import Data.Text (Text)
import Temporal.Activity
import qualified Temporal.Client as C
import Temporal.Duration
import Temporal.Exception
import Temporal.Payload
import Temporal.Worker
import qualified Temporal.Workflow as W
import Test.Hspec
import TestHelpers


isWorkflowFailed :: WorkflowExecutionClosed -> Bool
isWorkflowFailed (WorkflowExecutionFailed _) = True
isWorkflowFailed _ = False


childOptsWithId :: W.WorkflowId -> W.StartChildWorkflowOptions
childOptsWithId wfId =
  W.StartChildWorkflowOptions
    { W.cancellationType = W.ChildWorkflowCancellationAbandon
    , W.parentClosePolicy = W.ParentClosePolicyUnspecified
    , W.timeoutOptions = W.defaultTimeoutOptions
    , W.retryPolicy = Nothing
    , W.cronSchedule = Nothing
    , W.initialMemo = mempty
    , W.searchAttributes = mempty
    , W.headers = mempty
    , W.workflowIdReusePolicy = W.WorkflowIdReusePolicyUnspecified
    , W.workflowId = Just wfId
    , W.taskQueue = Nothing
    , W.priority = Nothing
    }


spec :: Spec
spec = withTestServer_ tests


tests :: SpecWith TestEnv
tests = describe "Cancellation" $ do
  describe "Client cancel" $ do
    specify "Simple workflow cancel raises WorkflowExecutionCanceled" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow ()
          workflow = W.waitCancellation
          wf = W.provideWorkflow defaultCodec "simpleCancel" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        h <- useClient (C.start wf.reference "simpleCancelWf" opts)
        waitForWorkflowStart h
        C.cancel h (C.CancellationOptions mempty)
        C.waitWorkflowResult h `shouldThrow` (== WorkflowExecutionCanceled)

    specify "Cancel returns correct result when workflow catches and returns" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Text
          workflow = do
            result <- Catch.try W.waitCancellation
            case (result :: Either WorkflowCancelRequested ()) of
              Left _ -> pure "caught-cancel"
              Right () -> pure "not-cancelled"
          wf = W.provideWorkflow defaultCodec "cancelCatchReturn" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        h <- useClient (C.start wf.reference "cancelCatchReturn" opts)
        waitForWorkflowStart h
        C.cancel h (C.CancellationOptions mempty)
        C.waitWorkflowResult h `shouldReturn` "caught-cancel"

    specify "Cancel propagates via waitCancellation" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow ()
          workflow = do
            _ <- (W.sleep (minutes 100) >> pure (Left ())) `W.race` (Right <$> W.waitCancellation)
            pure ()
          wf = W.provideWorkflow defaultCodec "cancelPropagate" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        h <- useClient (C.start wf.reference "cancelPropagateWf" opts)
        waitForWorkflowStart h
        C.cancel h (C.CancellationOptions mempty)
        C.waitWorkflowResult h `shouldThrow` (== WorkflowExecutionCanceled)

    specify "isCancelRequested returns true after cancel" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Bool
          workflow = do
            _ <- Catch.try W.waitCancellation :: W.Workflow (Either WorkflowCancelRequested ())
            W.isCancelRequested
          wf = W.provideWorkflow defaultCodec "isCancelAfter" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        h <- useClient (C.start wf.reference "isCancelAfterWf" opts)
        waitForWorkflowStart h
        C.cancel h (C.CancellationOptions mempty)
        C.waitWorkflowResult h `shouldReturn` True

    specify "waitCancellation blocks until cancelled" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Text
          workflow = do
            result <- Catch.try W.waitCancellation
            case (result :: Either WorkflowCancelRequested ()) of
              Left _ -> pure "unblocked"
              Right () -> pure "still-waiting"
          wf = W.provideWorkflow defaultCodec "waitCancelBlock" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        h <- useClient (C.start wf.reference "waitCancelBlockWf" opts)
        waitForWorkflowStart h
        C.cancel h (C.CancellationOptions mempty)
        C.waitWorkflowResult h `shouldReturn` "unblocked"

    specify "Shield work from cancellation (catch and continue)" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Text
          workflow = do
            _ <- Catch.try W.waitCancellation :: W.Workflow (Either WorkflowCancelRequested ())
            pure "shielded"
          wf = W.provideWorkflow defaultCodec "shieldCancel" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        h <- useClient (C.start wf.reference "shieldCancelWf" opts)
        waitForWorkflowStart h
        C.cancel h (C.CancellationOptions mempty)
        C.waitWorkflowResult h `shouldReturn` "shielded"

  describe "isCancelRequested" $ do
    specify "returns false when not cancelled" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Bool
          workflow = W.isCancelRequested
          wf = W.provideWorkflow defaultCodec "isCancelRequestedFalseWorkflow" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "isCancelRequestedFalse" opts)
          `shouldReturn` False

  describe "Activity cancellation" $ do
    specify "Immediate activity cancellation returns expected result" $ \TestEnv {..} -> do
      let testActivity :: Activity () Int
          testActivity = withHeartbeat JSON $ \heartbeat _readHeartbeat -> do
            heartbeat ()
            pure 0
          testActivityAct = provideActivity defaultCodec "immediateCancelResponse" testActivity
          workflow :: MyWorkflow Int
          workflow = do
            h <-
              W.startActivity
                testActivityAct.reference
                (W.defaultStartActivityOptions $ W.StartToClose $ seconds 1)
            W.cancel (h :: W.Task Int)
            W.wait h `Catch.catch` \(_ :: ActivityCancelled) -> pure 1
          wf = W.provideWorkflow defaultCodec "activityCancellation" workflow
          conf = configure () (wf, testActivityAct) $ do baseConf
      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts =
                    C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 4
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                }
        useClient (C.execute wf.reference "immediateActivityCancellation" opts)
          `shouldReturn` 1

    specify "Activity cancellation on heartbeat" $ \TestEnv {..} -> do
      let testActivity :: Activity () Int
          testActivity = withHeartbeat JSON $ \heartbeat _readHeartbeat -> do
            let loop :: Activity () Int
                loop = do
                  heartbeat ()
                  liftIO $ threadDelay 200_000
                  loop
            loop
          testActivityAct = provideActivity defaultCodec "heartbeatCancelActivity" testActivity
          workflow :: MyWorkflow Int
          workflow = do
            h <-
              W.startActivity
                testActivityAct.reference
                (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
                  { W.heartbeatTimeout = Just $ seconds 1
                  }
            W.sleep $ nanoseconds 1
            W.cancel (h :: W.Task Int)
            W.wait h `Catch.catch` \(_ :: ActivityCancelled) -> pure 1
          wf = W.provideWorkflow defaultCodec "activityCancelHeartbeat" workflow
          conf = configure () (wf, testActivityAct) $ do baseConf
      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts =
                    C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 10
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                }
        useClient (C.execute wf.reference "activityCancelHeartbeat" opts)
          `shouldReturn` 1

  describe "Child workflow cancellation" $ do
    specify "cancel child workflow immediately" $ \TestEnv {..} -> do
      let cancelTest :: MyWorkflow ()
          cancelTest = W.sleep $ minutes 1
          childWf = W.provideWorkflow defaultCodec "cancelChildImmediate" cancelTest
          parentWorkflow :: MyWorkflow String
          parentWorkflow = do
            childWorkflow <- W.startChildWorkflow childWf.reference W.defaultChildWorkflowOptions
            W.cancelChildWorkflowExecution childWorkflow
            result <- Catch.try $ W.waitChildWorkflowResult childWorkflow
            pure $ show (result :: Either SomeException ())
          parentWf = W.provideWorkflow defaultCodec "cancelChildImmediateParent" parentWorkflow
          conf = configure () (childWf, parentWf) $ do baseConf
      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                }
        useClient (C.execute parentWf.reference "cancelChildImm" opts)
          `shouldReturn` "Left ChildWorkflowCancelled"

  describe "Race cancellation" $ do
    specify "Race loser gets cancelled timer" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow (Either Bool Bool)
          workflow = do
            let lhs :: MyWorkflow Bool
                lhs = W.sleep (seconds 1) >> pure True
                rhs :: MyWorkflow Bool
                rhs = do
                  t <- W.createTimer $ minutes 100
                  mapM_ W.wait t
                  pure False
            lhs `W.race` rhs
          wf = W.provideWorkflow defaultCodec "raceLoserCancelWorkflow" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 30)
        useClient (C.execute wf.reference "raceLoserCancel" opts)
          `shouldReturn` Left True

    specify "Nested cancellation propagation through race (TS: nestedCancellation)" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Int
          workflow = do
            r <- (W.sleep (seconds 1) >> pure 1) `W.race` (W.sleep (minutes 100) >> pure 2)
            pure $ case r of
              Left n -> n
              Right n -> n
          wf = W.provideWorkflow defaultCodec "nestedCancelProp" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 30)
        useClient (C.execute wf.reference "nestedCancelProp" opts)
          `shouldReturn` 1

    specify "Multiple concurrent tasks cancelled via race (Py: cancel multi)" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Int
          workflow = do
            st <- W.newStateVar (0 :: Int)
            let fast :: MyWorkflow ()
                fast = do
                  W.sleep $ nanoseconds 1
                  W.modifyStateVar st (+ 1)
                slow1 :: MyWorkflow ()
                slow1 = W.sleep (minutes 100)
                slow2 :: MyWorkflow ()
                slow2 = W.sleep (minutes 100)
            _ <- fast `W.race` (slow1 >> slow2)
            W.readStateVar st
          wf = W.provideWorkflow defaultCodec "cancelMulti" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 30)
        useClient (C.execute wf.reference "cancelMulti" opts)
          `shouldReturn` 1

  describe "Workflow-internal cancellation patterns" $ do
    specify "Shield work from cancellation (catch cancel, continue working) (TS: nonCancellable)" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Text
          workflow = do
            _ <- Catch.try W.waitCancellation :: W.Workflow (Either WorkflowCancelRequested ())
            st <- W.newStateVar ("before" :: Text)
            W.writeStateVar st "after-cancel"
            W.readStateVar st
          wf = W.provideWorkflow defaultCodec "nonCancellable" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        h <- useClient (C.start wf.reference "nonCancellableWf" opts)
        waitForWorkflowStart h
        C.cancel h (C.CancellationOptions mempty)
        C.waitWorkflowResult h `shouldReturn` "after-cancel"

    specify "Catch cancel, do cleanup, return value (TS: cancel complete after cleanup)" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Text
          workflow = do
            st <- W.newStateVar ("init" :: Text)
            result <- Catch.try W.waitCancellation
            case (result :: Either WorkflowCancelRequested ()) of
              Left _ -> W.writeStateVar st "cleaned-up"
              Right () -> pure ()
            W.readStateVar st
          wf = W.provideWorkflow defaultCodec "cancelCleanup" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        h <- useClient (C.start wf.reference "cancelCleanupWf" opts)
        waitForWorkflowStart h
        C.cancel h (C.CancellationOptions mempty)
        C.waitWorkflowResult h `shouldReturn` "cleaned-up"

    specify "Catch cancel, throw different error (TS: cancel fail immediately)" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow ()
          workflow = do
            result <- Catch.try W.waitCancellation
            case (result :: Either WorkflowCancelRequested ()) of
              Left _ -> Catch.throwM $ ApplicationFailure {type' = "custom-failure", message = "cancel-replaced", nonRetryable = False, details = [], stack = "", nextRetryDelay = Nothing}
              Right () -> pure ()
          wf = W.provideWorkflow defaultCodec "cancelFailImm" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        h <- useClient (C.start wf.reference "cancelFailImmWf" opts)
        waitForWorkflowStart h
        C.cancel h (C.CancellationOptions mempty)
        C.waitWorkflowResult h `shouldThrow` isWorkflowFailed

  describe "External workflow cancellation" $ do
    specify "cancel external workflow from parent" $ \TestEnv {..} -> do
      let childWfId = W.WorkflowId "ext-cancel-child-target"
          childWorkflow :: MyWorkflow ()
          childWorkflow = do
            W.waitCancellation
            Catch.throwM WorkflowCancelRequested
          childWf = W.provideWorkflow defaultCodec "extCancelChild" childWorkflow
          parentWorkflow :: MyWorkflow Text
          parentWorkflow = do
            let childOpts = childOptsWithId childWfId
            h <- W.startChildWorkflow childWf.reference childOpts
            _ <- W.waitChildWorkflowStart h
            extHandle <- W.getExternalWorkflowHandle childWfId Nothing
            join (W.cancel extHandle)
            result <- Catch.try $ W.waitChildWorkflowResult h
            case (result :: Either SomeException ()) of
              Left _ -> pure "cancelled"
              Right () -> pure "not cancelled"
          parentWf = W.provideWorkflow defaultCodec "extCancelParent" parentWorkflow
          conf = configure () (childWf, parentWf) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 30)
        useClient (C.execute parentWf.reference "ext-cancel-parent" opts)
          `shouldReturn` "cancelled"

    specify "signal external workflow" $ \TestEnv {..} -> do
      let childWfId = W.WorkflowId "ext-signal-child-target"
          sig :: W.KnownSignal '[Int]
          sig = W.KnownSignal "extSig" defaultCodec
          childWorkflow :: MyWorkflow Int
          childWorkflow = do
            st <- W.newStateVar (0 :: Int)
            W.setSignalHandler sig $ \n -> W.writeStateVar st n
            W.waitCondition $ (/= 0) <$> W.readStateVar st
            W.readStateVar st
          childWf = W.provideWorkflow defaultCodec "extSignalChild" childWorkflow
          parentWorkflow :: MyWorkflow Int
          parentWorkflow = do
            let childOpts = childOptsWithId childWfId
            h <- W.startChildWorkflow childWf.reference childOpts
            _ <- W.waitChildWorkflowStart h
            extHandle <- W.getExternalWorkflowHandle childWfId Nothing
            _ <- W.wait =<< W.signal extHandle sig 42
            W.waitChildWorkflowResult h
          parentWf = W.provideWorkflow defaultCodec "extSignalParent" parentWorkflow
          conf = configure () (childWf, parentWf) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 30)
        useClient (C.execute parentWf.reference "ext-signal-parent" opts)
          `shouldReturn` 42
