-- Pinned here for the formatter: this module is missing from the cabal
-- other-modules list, so fourmolu does not see the default extension and
-- rewrites @x.field@ as composition.
{-# LANGUAGE OverloadedRecordDot #-}

module ActivitySpec where

import Control.Concurrent (threadDelay)
import Control.Exception (SomeException)
import Control.Exception.Annotated (checkpoint)
import qualified Control.Monad.Catch as Catch
import Control.Monad.IO.Class (liftIO)
import Control.Monad.Logger
import Control.Monad.Reader (ask)
import Data.Functor (($>))
import Data.IORef
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map
import Data.Text (Text)
import qualified Data.Text as Text
import Data.Time.Clock.System (SystemTime (..))
import Data.Word (Word32)
import Lens.Family2
import qualified Proto.Temporal.Api.Common.V1.Message_Fields as Common
import qualified Proto.Temporal.Api.History.V1.Message_Fields as History
import RequireCallStack (provideCallStack)
import System.IO (stdout)
import Temporal.Activity hiding (activityId, cancellationType, heartbeatTimeout, retryPolicy)
import qualified Temporal.Activity as Act
import qualified Temporal.Client as C
import Temporal.Duration
import Temporal.Exception hiding (activityId)
import Temporal.Payload
import Temporal.Worker (configure, setLogger, setNamespace, setTaskQueue)
import Temporal.Workflow (StartActivityOptions (activityId, cancellationType, heartbeatTimeout, priority, retryPolicy))
import qualified Temporal.Workflow as W
import Test.Hspec
import TestHelpers


spec :: Spec
spec = withTestServer_ tests


tests :: SpecWith TestEnv
tests = describe "Activities" $ do
  describe "Basic" $ do
    specify "should run a basic activity without issues" $ \TestEnv {..} -> do
      let act :: Activity () Int
          act = pure 1
          actDef = provideActivity defaultCodec "basicAct" act
          workflow :: MyWorkflow Int
          workflow = do
            h <- W.startActivity actDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
            W.wait (h :: W.Task Int)
          wf = W.provideWorkflow defaultCodec "basicActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "basicAct" opts)
          `shouldReturn` 1

    specify "activity with multiple args" $ \TestEnv {..} -> do
      let act :: Int -> Text -> Activity () Text
          act n t = pure $ Text.replicate n t
          actDef = provideActivity defaultCodec "multiArgAct" act
          workflow :: MyWorkflow Text
          workflow = W.executeActivity actDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3) 3 "ha"
          wf = W.provideWorkflow defaultCodec "multiArgActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "multiArgAct" opts)
          `shouldReturn` "hahaha"

    specify "activity returning complex type" $ \TestEnv {..} -> do
      let act :: Activity () (Int, Text, Bool)
          act = pure (42, "hello", True)
          actDef = provideActivity defaultCodec "complexReturnAct" act
          workflow :: MyWorkflow (Int, Text, Bool)
          workflow = W.executeActivity actDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
          wf = W.provideWorkflow defaultCodec "complexReturnActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "complexReturnAct" opts)
          `shouldReturn` (42, "hello", True)

    specify "activity returns Maybe Just" $ \TestEnv {..} -> do
      let act :: Activity () (Maybe Int)
          act = pure $ Just 7
          actDef = provideActivity defaultCodec "maybeJustAct" act
          workflow :: MyWorkflow (Maybe Int)
          workflow = W.executeActivity actDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
          wf = W.provideWorkflow defaultCodec "maybeJustActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "maybeJustAct" opts)
          `shouldReturn` Just 7

    specify "activity returns Maybe Nothing" $ \TestEnv {..} -> do
      let act :: Activity () (Maybe Text)
          act = pure Nothing
          actDef = provideActivity defaultCodec "maybeNothingAct" act
          workflow :: MyWorkflow (Maybe Text)
          workflow = W.executeActivity actDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
          wf = W.provideWorkflow defaultCodec "maybeNothingActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "maybeNothingAct" opts)
          `shouldReturn` Nothing

    specify "activity returns tuple" $ \TestEnv {..} -> do
      let act :: Activity () (Bool, Int)
          act = pure (True, 100)
          actDef = provideActivity defaultCodec "tupleAct" act
          workflow :: MyWorkflow (Bool, Int)
          workflow = W.executeActivity actDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
          wf = W.provideWorkflow defaultCodec "tupleActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "tupleAct" opts)
          `shouldReturn` (True, 100)

    specify "activity returns list" $ \TestEnv {..} -> do
      let act :: Activity () [Int]
          act = pure [1, 2, 3, 4, 5]
          actDef = provideActivity defaultCodec "listAct" act
          workflow :: MyWorkflow [Int]
          workflow = W.executeActivity actDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
          wf = W.provideWorkflow defaultCodec "listActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "listAct" opts)
          `shouldReturn` [1, 2, 3, 4, 5]

    specify "activity with two args" $ \TestEnv {..} -> do
      let act :: Int -> Int -> Activity () Int
          act a b = pure (a + b)
          actDef = provideActivity defaultCodec "twoArgAct" act
          workflow :: MyWorkflow Int
          workflow = W.executeActivity actDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3) 10 20
          wf = W.provideWorkflow defaultCodec "twoArgActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "twoArgAct" opts)
          `shouldReturn` 30

    specify "activity returns Map" $ \TestEnv {..} -> do
      let act :: Activity () (Map Text Int)
          act = pure $ Map.fromList [("a", 1), ("b", 2), ("c", 3)]
          actDef = provideActivity defaultCodec "mapAct" act
          workflow :: MyWorkflow (Map Text Int)
          workflow = W.executeActivity actDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
          wf = W.provideWorkflow defaultCodec "mapActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "mapAct" opts)
          `shouldReturn` Map.fromList [("a", 1), ("b", 2), ("c", 3)]

  describe "Heartbeat" $ do
    specify "heartbeat works" $ \TestEnv {..} -> do
      let act :: Activity () Int
          act = withHeartbeat JSON $ \heartbeat _readHeartbeat -> do
            heartbeat ()
            pure 1
          actDef = provideActivity defaultCodec "hbAct" act
          workflow :: MyWorkflow Int
          workflow = W.executeActivity actDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
          wf = W.provideWorkflow defaultCodec "hbActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "heartbeatAct" opts)
          `shouldReturn` 1

    specify "multiple heartbeats work" $ \TestEnv {..} -> do
      let act :: Activity () Int
          act = withHeartbeat JSON $ \heartbeat _readHeartbeat -> do
            heartbeat (1 :: Int)
            heartbeat (2 :: Int)
            heartbeat (3 :: Int)
            pure 3
          actDef = provideActivity defaultCodec "multiHbAct" act
          workflow :: MyWorkflow Int
          workflow = W.executeActivity actDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
          wf = W.provideWorkflow defaultCodec "multiHbActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "multiHb" opts)
          `shouldReturn` 3

    specify "activity retries on failure then succeeds with heartbeat" $ \TestEnv {..} -> do
      let act :: Activity () Int
          act = withHeartbeat JSON $ \heartbeat _readHeartbeat -> do
            res <- askActivityInfo
            heartbeat ()
            if res.attempt <= 2
              then error "transient"
              else pure 99
          actDef = provideActivity defaultCodec "retryHbAct" act
          workflow :: MyWorkflow Int
          workflow = W.executeActivity actDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
          wf = W.provideWorkflow defaultCodec "retryHbActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "retryHbAct" opts)
          `shouldReturn` 99

  describe "Failure" $ do
    specify "retryable failure retries and eventually succeeds" $ \TestEnv {..} -> do
      let act :: Activity () Int
          act = do
            res <- askActivityInfo
            if res.attempt <= 2
              then error "transient"
              else pure 1
          actDef = provideActivity defaultCodec "retryAct" act
          workflow :: MyWorkflow Int
          workflow = W.executeActivity actDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
          wf = W.provideWorkflow defaultCodec "retryActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "retryAct" opts)
          `shouldReturn` 1

    specify "non-retryable failure propagates immediately" $ \TestEnv {..} -> do
      let act :: Activity () ()
          act = checkpoint annotateNonRetryableError $ error "permanent"
          actDef = provideActivity defaultCodec "nonRetryAct" act
          workflow :: MyWorkflow ()
          workflow = W.executeActivity actDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
          wf = W.provideWorkflow defaultCodec "nonRetryActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "nonRetryAct" opts)
          `shouldThrow` \case
            WorkflowExecutionFailed _ -> True
            _ -> False

    specify "activity timeout with max attempts returns RetryStateMaximumAttemptsReached" $ \TestEnv {..} -> do
      let act :: Activity () ()
          act = error "always fails"
          actDef = provideActivity defaultCodec "maxAttemptsAct" act
          workflow :: MyWorkflow Bool
          workflow = do
            eRes <-
              Catch.try @_ @ActivityFailure $
                W.executeActivity
                  actDef.reference
                  (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
                    { retryPolicy = Just $ W.defaultRetryPolicy {W.maximumAttempts = 1}
                    }
            case eRes of
              Left e -> pure (e.retryState == RetryStateMaximumAttemptsReached)
              Right () -> pure False
          wf = W.provideWorkflow defaultCodec "maxAttemptsActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "maxAttempts" opts)
          `shouldReturn` True

  describe "Cancellation" $ do
    specify "immediate activity cancellation" $ \TestEnv {..} -> do
      let act :: Activity () Int
          act = withHeartbeat JSON $ \heartbeat _readHeartbeat -> do
            heartbeat ()
            pure 0
          actDef = provideActivity defaultCodec "immCancelAct" act
          workflow :: MyWorkflow Int
          workflow = do
            h <- W.startActivity actDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
            W.cancel (h :: W.Task Int)
            W.wait h `Catch.catch` \(_ :: ActivityCancelled) -> pure 1
          wf = W.provideWorkflow defaultCodec "immCancelActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "immCancelAct" opts)
          `shouldReturn` 1

  describe "Info" $ do
    specify "can access activity info" $ \TestEnv {..} -> do
      let act :: Activity () Text
          act = do
            i <- askActivityInfo
            pure i.activityType
          actDef = provideActivity defaultCodec "actInfoAct" act
          workflow :: MyWorkflow Text
          workflow = W.executeActivity actDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
          wf = W.provideWorkflow defaultCodec "actInfoWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "actInfo" opts)
          `shouldReturn` "actInfoAct"

    specify "activity attempt count increments on retry" $ \TestEnv {..} -> do
      let act :: Activity () Int
          act = do
            i <- askActivityInfo
            if i.attempt < 3
              then error "retry me"
              else pure (fromIntegral i.attempt)
          actDef = provideActivity defaultCodec "attemptCountAct" act
          workflow :: MyWorkflow Int
          -- Fast retry interval to keep the test quick
          workflow =
            W.executeActivity
              actDef.reference
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
                { retryPolicy = Just $ W.defaultRetryPolicy {W.initialInterval = milliseconds 50}
                }
          wf = W.provideWorkflow defaultCodec "attemptCountWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        result <- useClient (C.execute wf.reference "attemptCount" opts)
        result `shouldSatisfy` (>= 3)

  describe "Multiple activities" $ do
    specify "two activities running sequentially" $ \TestEnv {..} -> do
      let act1 :: Activity () Int
          act1 = pure 10
          act2 :: Int -> Activity () Int
          act2 x = pure (x * 2)
          act1Def = provideActivity defaultCodec "seqAct1" act1
          act2Def = provideActivity defaultCodec "seqAct2" act2
          workflow :: MyWorkflow Int
          workflow = do
            r1 <- W.executeActivity act1Def.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
            W.executeActivity act2Def.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3) r1
          wf = W.provideWorkflow defaultCodec "seqActWf" workflow
          conf = configure () (wf, act1Def, act2Def) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "seqAct" opts)
          `shouldReturn` 20

    specify "two activities running concurrently" $ \TestEnv {..} -> do
      let act1 :: Activity () Int
          act1 = pure 10
          act2 :: Activity () Int
          act2 = pure 20
          act1Def = provideActivity defaultCodec "concAct1" act1
          act2Def = provideActivity defaultCodec "concAct2" act2
          workflow :: MyWorkflow Int
          workflow = do
            h1 <- W.startActivity act1Def.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
            h2 <- W.startActivity act2Def.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
            r1 <- W.wait (h1 :: W.Task Int)
            r2 <- W.wait (h2 :: W.Task Int)
            pure (r1 + r2)
          wf = W.provideWorkflow defaultCodec "concActWf" workflow
          conf = configure () (wf, act1Def, act2Def) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "concAct" opts)
          `shouldReturn` 30

    specify "sequential activities second depends on first" $ \TestEnv {..} -> do
      let act1 :: Activity () Int
          act1 = pure 5
          act2 :: Int -> Activity () Text
          act2 n = pure $ Text.pack $ show (n * 10)
          act1Def = provideActivity defaultCodec "seqDepAct1" act1
          act2Def = provideActivity defaultCodec "seqDepAct2" act2
          workflow :: MyWorkflow Text
          workflow = do
            r1 <- W.executeActivity act1Def.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
            W.executeActivity act2Def.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3) r1
          wf = W.provideWorkflow defaultCodec "seqDepActWf" workflow
          conf = configure () (wf, act1Def, act2Def) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "seqDepAct" opts)
          `shouldReturn` "50"

    specify "concurrent activities with different return types" $ \TestEnv {..} -> do
      let act1 :: Activity () Int
          act1 = pure 100
          act2 :: Activity () Text
          act2 = pure "done"
          act1Def = provideActivity defaultCodec "concDiffAct1" act1
          act2Def = provideActivity defaultCodec "concDiffAct2" act2
          workflow :: MyWorkflow (Int, Text)
          workflow = do
            h1 <- W.startActivity act1Def.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
            h2 <- W.startActivity act2Def.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
            r1 <- W.wait (h1 :: W.Task Int)
            r2 <- W.wait (h2 :: W.Task Text)
            pure (r1, r2)
          wf = W.provideWorkflow defaultCodec "concDiffActWf" workflow
          conf = configure () (wf, act1Def, act2Def) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "concDiffAct" opts)
          `shouldReturn` (100, "done")

  describe "Activity ID" $ do
    specify "custom activity ID is used" $ \TestEnv {..} -> do
      let act :: Activity () Text
          act = W.rawActivityId . Act.activityId <$> askActivityInfo
          actDef = provideActivity defaultCodec "customIdAct" act
          workflow :: MyWorkflow Text
          workflow =
            W.executeActivity
              actDef.reference
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
                { activityId = Just $ W.ActivityId "my-custom-id"
                }
          wf = W.provideWorkflow defaultCodec "customIdActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "customIdAct" opts)
          `shouldReturn` "my-custom-id"

  describe "Activity priority" $ do
    specify "explicit priority is recorded on the scheduled task" $ \TestEnv {..} -> do
      let act :: Activity () Int
          act = pure 7
          actDef = provideActivity defaultCodec "priorityAct" act
          workflow :: MyWorkflow Int
          workflow =
            W.executeActivity
              actDef.reference
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3) {priority = Just (W.mkPriority 1)}
          wf = W.provideWorkflow defaultCodec "priorityActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        wfId <- uuidText
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        (result, hist) <- useClient $ do
          h <- C.start wf.reference (W.WorkflowId wfId) opts
          result <- C.waitWorkflowResult h
          hist <- C.fetchHistory h
          pure (result, hist)
        result `shouldBe` 7
        let scheduledPriorityKeys = do
              ev <- hist ^. History.events
              Just attrs <- pure (ev ^. History.maybe'activityTaskScheduledEventAttributes)
              pure (attrs ^. History.priority . Common.priorityKey)
        scheduledPriorityKeys `shouldBe` [1]

  describe "Timeouts" $ do
    specify "activity with custom start-to-close and schedule-to-close timeouts" $ \TestEnv {..} -> do
      let act :: Activity () Int
          act = pure 123
          actDef = provideActivity defaultCodec "customTimeoutAct" act
          workflow :: MyWorkflow Int
          workflow =
            W.executeActivity
              actDef.reference
              (W.defaultStartActivityOptions (W.StartToClose $ seconds 2, W.ScheduleToClose $ seconds 5))
          wf = W.provideWorkflow defaultCodec "customTimeoutActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "customTimeoutAct" opts)
          `shouldReturn` 123

  describe "Activity Failure (Py/TS: activity failure)" $ do
    specify "activity failure propagates to workflow (TS: activity-failure)" $ \TestEnv {..} -> do
      let act :: Activity () ()
          act = error "activity kaboom"
          actDef = provideActivity defaultCodec "failingAct" act
          workflow :: MyWorkflow ()
          workflow =
            W.executeActivity
              actDef.reference
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
                { retryPolicy = Just $ W.defaultRetryPolicy {W.maximumAttempts = 1}
                }
          wf = W.provideWorkflow defaultCodec "failActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "failAct" opts)
          `shouldThrow` \case
            WorkflowExecutionFailed _ -> True
            _ -> False

    specify "non-retryable activity error (Py: activity error non-retryable)" $ \TestEnv {..} -> do
      let act :: Activity () ()
          act = checkpoint annotateNonRetryableError $ error "permanent"
          actDef = provideActivity defaultCodec "nonRetryableFailAct" act
          workflow :: MyWorkflow ()
          workflow =
            W.executeActivity
              actDef.reference
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
          wf = W.provideWorkflow defaultCodec "nonRetryableFailActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "nonRetryableFailAct" opts)
          `shouldThrow` \case
            WorkflowExecutionFailed _ -> True
            _ -> False

  describe "Activity Timeout (Py/TS: activity timeout)" $ do
    specify "activity times out with StartToClose (TS: multipleActivitiesSingleTimeout)" $ \TestEnv {..} -> do
      let act :: Activity () ()
          -- Only needs to outlast the 1s StartToClose timeout.
          act = liftIO $ threadDelay 2_000_000
          actDef = provideActivity defaultCodec "slowTimeoutAct" act
          workflow :: MyWorkflow ()
          workflow =
            W.executeActivity
              actDef.reference
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 1)
                { retryPolicy = Just $ W.defaultRetryPolicy {W.maximumAttempts = 1}
                }
          wf = W.provideWorkflow defaultCodec "actTimeoutWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "actTimeout" opts)
          `shouldThrow` \case
            WorkflowExecutionFailed _ -> True
            _ -> False

  describe "Activity nextRetryDelay (Py/TS: nextRetryDelay propagated)" $ do
    specify "annotateNextRetryDelay influences retry timing" $ \TestEnv {..} -> do
      let act :: Activity () ()
          act = checkpoint (annotateNextRetryDelay $ seconds 1) $ error "retry with delay"
          actDef = provideActivity defaultCodec "nextRetryDelayAct" act
          workflow :: MyWorkflow ()
          workflow =
            W.executeActivity
              actDef.reference
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 10)
                { retryPolicy = Just $ W.defaultRetryPolicy {W.maximumAttempts = 2}
                }
          wf = W.provideWorkflow defaultCodec "nextRetryDelayWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 15)
        useClient (C.execute wf.reference "nextRetryDelay" opts)
          `shouldThrow` \case
            WorkflowExecutionFailed _ -> True
            _ -> False

  describe "Activity info (Py/TS: test_activity_info)" $ do
    specify "activity info: taskQueue matches worker" $ \TestEnv {..} -> do
      let act :: Activity () Text
          act = do
            info <- askActivityInfo
            let (W.TaskQueue tq) = info.taskQueue
            pure tq
          actDef = provideActivity defaultCodec "actInfoTaskQueue" act
          workflow :: MyWorkflow Text
          workflow =
            W.executeActivity
              actDef.reference
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
          wf = W.provideWorkflow defaultCodec "actInfoTaskQueueWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
            (W.TaskQueue expectedTq) = taskQueue
        useClient (C.execute wf.reference "actInfoTaskQueue" opts) `shouldReturn` expectedTq

    specify "activity info: attempt is 1 on first try" $ \TestEnv {..} -> do
      let act :: Activity () Word32
          act = do
            info <- askActivityInfo
            pure info.attempt
          actDef = provideActivity defaultCodec "actInfoAttempt" act
          workflow :: MyWorkflow Word32
          workflow =
            W.executeActivity
              actDef.reference
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
          wf = W.provideWorkflow defaultCodec "actInfoAttemptWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "actInfoAttempt" opts) `shouldReturn` 1

    specify "activity info: startedTime is set" $ \TestEnv {..} -> do
      let act :: Activity () Bool
          act = do
            info <- askActivityInfo
            pure (info.startedTime > MkSystemTime 0 0)
          actDef = provideActivity defaultCodec "actInfoStarted" act
          workflow :: MyWorkflow Bool
          workflow =
            W.executeActivity
              actDef.reference
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
          wf = W.provideWorkflow defaultCodec "actInfoStartedWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "actInfoStarted" opts) `shouldReturn` True

    specify "activity info: scheduledTime is set" $ \TestEnv {..} -> do
      let act :: Activity () Bool
          act = do
            info <- askActivityInfo
            pure (info.scheduledTime > MkSystemTime 0 0)
          actDef = provideActivity defaultCodec "actInfoScheduled" act
          workflow :: MyWorkflow Bool
          workflow =
            W.executeActivity
              actDef.reference
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
          wf = W.provideWorkflow defaultCodec "actInfoScheduledWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "actInfoScheduled" opts) `shouldReturn` True

    specify "activity info: activityType matches registered name" $ \TestEnv {..} -> do
      let act :: Activity () Text
          act = do
            info <- askActivityInfo
            pure info.activityType
          actDef = provideActivity defaultCodec "actInfoType" act
          workflow :: MyWorkflow Text
          workflow =
            W.executeActivity
              actDef.reference
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
          wf = W.provideWorkflow defaultCodec "actInfoTypeWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "actInfoType" opts) `shouldReturn` "actInfoType"

    specify "activity info: workflowId matches parent workflow" $ \TestEnv {..} -> do
      let act :: Activity () Text
          act = do
            info <- askActivityInfo
            let (W.WorkflowId wid) = info.workflowId
            pure wid
          actDef = provideActivity defaultCodec "actInfoWfId" act
          workflow :: MyWorkflow Text
          workflow =
            W.executeActivity
              actDef.reference
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
          wf = W.provideWorkflow defaultCodec "actInfoWfIdWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        result <- useClient (C.execute wf.reference (W.WorkflowId "act-info-wfid") opts)
        result `shouldBe` "act-info-wfid"

    specify "activity info: attempt increments on retry (Py: test_activity_retry)" $ \TestEnv {..} -> do
      let act :: Activity () Word32
          act = do
            info <- askActivityInfo
            if info.attempt < 3
              then error "retry me"
              else pure info.attempt
          actDef = provideActivity defaultCodec "actInfoRetryAttempt" act
          workflow :: MyWorkflow Word32
          workflow =
            W.executeActivity
              actDef.reference
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 10)
                { retryPolicy =
                    Just $
                      W.defaultRetryPolicy
                        { W.maximumAttempts = 5
                        , W.initialInterval = milliseconds 100
                        }
                }
          wf = W.provideWorkflow defaultCodec "actInfoRetryAttemptWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 15)
        useClient (C.execute wf.reference "actInfoRetryAttempt" opts) `shouldReturn` 3

    specify "activity schedule-to-close timeout" $ \TestEnv {..} -> do
      let act :: Activity () ()
          act = liftIO $ threadDelay 2_000_000
          actDef = provideActivity defaultCodec "schedToCloseAct" act
          workflow :: MyWorkflow ()
          workflow =
            W.executeActivity
              actDef.reference
              (W.defaultStartActivityOptions $ W.ScheduleToClose $ seconds 1)
                { retryPolicy = Just $ W.defaultRetryPolicy {W.maximumAttempts = 1}
                }
          wf = W.provideWorkflow defaultCodec "schedToCloseWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "schedToClose" opts)
          `shouldThrow` \case
            WorkflowExecutionFailed _ -> True
            _ -> False

    specify "activity heartbeat timeout" $ \TestEnv {..} -> do
      let act :: Activity () ()
          act = liftIO $ threadDelay 2_000_000
          actDef = provideActivity defaultCodec "heartbeatTimeoutAct" act
          workflow :: MyWorkflow ()
          workflow =
            W.executeActivity
              actDef.reference
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 10)
                { heartbeatTimeout = Just $ seconds 1
                , retryPolicy = Just $ W.defaultRetryPolicy {W.maximumAttempts = 1}
                }
          wf = W.provideWorkflow defaultCodec "heartbeatTimeoutWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 15)
        useClient (C.execute wf.reference "heartbeatTimeout" opts)
          `shouldThrow` \case
            WorkflowExecutionFailed _ -> True
            _ -> False

  describe "Activity Cancellation Types (Py/TS)" $ do
    specify "TryCancel reports cancellation immediately" $ \TestEnv {..} -> do
      let act :: Activity () ()
          act = withHeartbeat JSON $ \heartbeat (_ :: Activity () (Maybe ())) -> do
            let loop :: Activity () ()
                loop = do
                  heartbeat ()
                  liftIO $ threadDelay 200_000
                  loop
            loop
          actDef = provideActivity defaultCodec "tryCancelAct" act
          workflow :: MyWorkflow Text
          workflow = do
            h <-
              W.startActivity
                actDef.reference
                (W.defaultStartActivityOptions $ W.StartToClose $ seconds 30)
                  { cancellationType = W.ActivityCancellationTryCancel
                  , heartbeatTimeout = Just $ seconds 5
                  }
            W.sleep $ nanoseconds 1
            W.cancel (h :: W.Task ())
            Catch.catch (W.wait h $> "completed") (\(_ :: ActivityCancelled) -> pure "cancelled")
          wf = W.provideWorkflow defaultCodec "tryCancelWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 15)
        useClient (C.execute wf.reference "tryCancelAct" opts)
          `shouldReturn` "cancelled"

    specify "WaitCancellationCompleted waits for activity to acknowledge" $ \TestEnv {..} -> do
      let act :: Activity () ()
          act = withHeartbeat JSON $ \heartbeat (_ :: Activity () (Maybe ())) -> do
            let loop :: Activity () ()
                loop = do
                  heartbeat ()
                  liftIO $ threadDelay 200_000
                  loop
            loop
          actDef = provideActivity defaultCodec "waitCancelAct" act
          workflow :: MyWorkflow Text
          workflow = do
            h <-
              W.startActivity
                actDef.reference
                (W.defaultStartActivityOptions $ W.StartToClose $ seconds 30)
                  { cancellationType = W.ActivityCancellationWaitCancellationCompleted
                  , heartbeatTimeout = Just $ seconds 5
                  }
            W.sleep $ nanoseconds 1
            W.cancel (h :: W.Task ())
            Catch.catch (W.wait h $> "completed") (\(_ :: ActivityCancelled) -> pure "cancelled")
          wf = W.provideWorkflow defaultCodec "waitCancelWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 15)
        useClient (C.execute wf.reference "waitCancelAct" opts)
          `shouldReturn` "cancelled"
