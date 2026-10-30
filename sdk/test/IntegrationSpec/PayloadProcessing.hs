{-# LANGUAGE OverloadedRecordDot #-}

module IntegrationSpec.PayloadProcessing (spec) where

import Control.Concurrent (myThreadId, threadDelay)
import Control.Concurrent.MVar.Extra (newBarrier, waitBarrier)
import Control.Exception (SomeException)
import Control.Monad (when)
import qualified Control.Monad.Catch as Catch
import Control.Monad.Reader (ReaderT, liftIO)
import qualified Data.ByteString as BS
import Data.Foldable (for_)
import Data.IORef (atomicModifyIORef', newIORef, readIORef)
import qualified Data.Map.Strict as Map
import Data.Maybe (isJust)
import Data.Text (Text)
import Lens.Family2 ((^.))
import qualified Proto.Temporal.Api.History.V1.Message_Fields as History
import RequireCallStack (provideCallStack)
import System.IO.Unsafe (unsafePerformIO)
import Temporal.Activity (Activity, ProvidedActivity (reference), provideActivity)
import qualified Temporal.Client as C
import Temporal.Duration (milliseconds, seconds)
import Temporal.Payload (Payload (payloadData, payloadMetadata), PayloadProcessor (..), encode)
import Temporal.Worker (WorkerConfig (deadlockTimeout, payloadProcessor), configure)
import qualified Temporal.Workflow as W
import Temporal.Workflow.Unsafe (performUnsafeNonDeterministicIO)
import Test.Hspec (Expectation, SpecWith, describe, shouldReturn, shouldSatisfy, specify)
import TestHelpers (MyWorkflow, TestEnv (TestEnv, baseConf, taskQueue, useClient, withWorker), defaultCodec, defaultStartOptsWithTimeout, failDecodingOnce, failEncodingOnce, shouldCompleteWith, sillyEncryptionPayloadProcessor, waitForWorkflowStart)


spec :: SpecWith TestEnv
spec =
  describe "Workflow payload processing" do
    specify "retries the workflow task when workflow code blocks after a timer fires" $ \TestEnv {..} -> do
      evaluationAttempts <- newIORef (0 :: Int)
      blocked <- newBarrier @()
      let workflow = provideCallStack do
            W.sleep $ milliseconds 1
            performUnsafeNonDeterministicIO do
              attempt <- atomicModifyIORef' evaluationAttempts $ \n ->
                let next = n + 1
                in (next, next)
              when (attempt == 1) $ waitBarrier blocked
          wf = W.provideWorkflow defaultCodec "workflow-activation-deadlock-retry" workflow
          conf =
            (configure () wf baseConf)
              { deadlockTimeout = Just 100_000
              }
          startOptions = defaultStartOptsWithTimeout taskQueue (seconds 10)
      withWorker conf do
        workflowHandle <- useClient $ C.start wf.reference "workflow-activation-deadlock-retry" startOptions
        useClient (C.waitWorkflowResult workflowHandle) `shouldCompleteWith` ()
        readIORef evaluationAttempts `shouldReturn` 2

    specify "decodes workflow arguments, headers and memo once at startup" $ \TestEnv {..} -> do
      (processor, assertDecodedOnce) <- recordDecodedPayloads
      let workflow :: Text -> MyWorkflow Text
          workflow = pure
          wf = W.provideWorkflow defaultCodec "initialization-processing-once" workflow
          conf = (configure () wf baseConf) {payloadProcessor = processor}
      -- The client expects callers to encode headers themselves.
      header <- encode defaultCodec ("workflow-header" :: Text) >>= payloadProcessorEncode sillyEncryptionPayloadProcessor
      memo <- encode defaultCodec ("workflow-memo" :: Text)
      let opts =
            (defaultStartOptsWithTimeout taskQueue (seconds 10))
              { C.headers = Map.singleton "header" header
              , C.memo = Map.singleton "memo" memo
              }
      withWorker conf do
        h <- useClient $ C.start wf.reference "initialization-processing-once" opts "workflow-argument"
        useClient (C.waitWorkflowResult h) `shouldCompleteWith` "workflow-argument"
        for_ ["workflow-argument", "workflow-header", "workflow-memo"] assertDecodedOnce

    specify "decodes signals sent at startup and after startup once" $ \TestEnv {..} -> do
      (processor, assertDecodedOnce) <- recordDecodedPayloads
      let signal :: W.KnownSignal '[Text]
          signal = W.KnownSignal "payload-signal" defaultCodec
          workflow = provideCallStack do
            received <- W.newStateVar []
            W.setSignalHandler signal $ \value -> W.modifyStateVar received (<> [value])
            W.waitCondition $ (== 2) . length <$> W.readStateVar received
            W.readStateVar received
          wf = W.provideWorkflow defaultCodec "signal-processing-once" workflow
          conf = (configure () wf baseConf) {payloadProcessor = processor}
      withWorker conf do
        h <- useClient $ C.signalWithStart wf "signal-processing-once" (defaultStartOptsWithTimeout taskQueue (seconds 10)) signal "signal-at-start"
        useClient $ waitForWorkflowStart h
        useClient $ C.signal h signal C.defaultSignalOptions "signal-after-start"
        useClient (C.waitWorkflowResult h)
          `shouldCompleteWith` ["signal-at-start", "signal-after-start"]
        for_ ["signal-at-start", "signal-after-start"] assertDecodedOnce

    specify "decodes query arguments once after the workflow completes" $ \TestEnv {..} -> do
      (processor, assertDecodedOnce) <- recordDecodedPayloads
      let query :: W.KnownQuery '[Text] Text
          query = W.KnownQuery "payload-query" defaultCodec
          workflow = provideCallStack do
            W.setQueryHandler query pure
            pure ()
          wf = W.provideWorkflow defaultCodec "query-processing-once" workflow
          conf = (configure () wf baseConf) {payloadProcessor = processor}
      withWorker conf do
        h <- useClient $ C.start wf.reference "query-processing-once" (defaultStartOptsWithTimeout taskQueue (seconds 10))
        useClient (C.waitWorkflowResult h) `shouldCompleteWith` ()
        useClient (C.query h query C.defaultQueryOptions "query-argument")
          `shouldCompleteWith` Right "query-argument"
        assertDecodedOnce "query-argument"

    specify "does not count processor IO against the deadlock timeout" $ \TestEnv {..} -> do
      -- Processor IO takes longer than the 100 ms workflow execution timeout.
      let slowProcess payload = threadDelay 250_000 >> pure payload
          slowProcessor = PayloadProcessor slowProcess (fmap Right . slowProcess)
          act :: Int -> Activity () Int
          act n = pure (n + 1)
          actDef = provideActivity defaultCodec "slow-processor-activity" act
          workflow :: Int -> MyWorkflow Int
          workflow =
            W.executeActivity
              actDef.reference
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
          wf = W.provideWorkflow defaultCodec "slow-processor-workflow" workflow
          conf =
            (configure () (wf, actDef) baseConf)
              { deadlockTimeout = Just 100_000
              , payloadProcessor = slowProcessor
              }
          startOptions = defaultStartOptsWithTimeout taskQueue (seconds 10)
      withWorker conf do
        workflowHandle <- useClient $ C.start wf.reference "slow-processor-io" startOptions 41
        useClient (C.waitWorkflowResult workflowHandle)
          `shouldCompleteWith` 42

    specify "does not count evaluation of processor results against the deadlock timeout" $ \TestEnv {..} -> do
      -- The delay occurs only when the returned fields are evaluated.
      let slowPayloadField :: a -> a
          slowPayloadField value = unsafePerformIO $ threadDelay 150_000 >> pure value
          {-# NOINLINE slowPayloadField #-}
          slowProcess payload =
            pure
              payload
                { payloadData = slowPayloadField payload.payloadData
                , payloadMetadata = slowPayloadField payload.payloadMetadata
                }
          slowProcessor = PayloadProcessor slowProcess (fmap Right . slowProcess)
          act :: Int -> Activity () Int
          act n = pure (n + 1)
          actDef = provideActivity defaultCodec "slow-processor-activity" act
          workflow :: Int -> MyWorkflow Int
          workflow =
            W.executeActivity
              actDef.reference
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
          wf = W.provideWorkflow defaultCodec "slow-processor-workflow" workflow
          conf =
            (configure () (wf, actDef) baseConf)
              { deadlockTimeout = Just 100_000
              , payloadProcessor = slowProcessor
              }
          startOptions = defaultStartOptsWithTimeout taskQueue (seconds 10)
      withWorker conf do
        workflowHandle <- useClient $ C.start wf.reference "slow-processor-fields" startOptions 41
        useClient (C.waitWorkflowResult workflowHandle)
          `shouldCompleteWith` 42

    specify "retries activity result decoding without running the workflow's catch handler" $ \TestEnv {..} -> do
      failingResultDecode <- failDecodingOnce "activity-result"
      let act :: Activity () Text
          act = pure "activity-result"
          actDef = provideActivity defaultCodec "payload-decode-error-activity" act
          workflow = provideCallStack do
            (result :: Either SomeException Text) <-
              Catch.try $
                W.executeActivity
                  actDef.reference
                  (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
            pure $ case result of
              Left _ -> "caught-processor-error" :: Text
              Right _ -> "completed"
          wf = W.provideWorkflow defaultCodec "payload-decode-error-workflow" workflow
          conf =
            (configure () (wf, actDef) baseConf)
              { payloadProcessor = failingResultDecode
              }
          startOptions = defaultStartOptsWithTimeout taskQueue (seconds 10)
      withWorker conf do
        workflowHandle <- useClient $ C.start wf.reference "payload-decode-error-workflow" startOptions
        useClient (C.waitWorkflowResult workflowHandle)
          `shouldCompleteWith` ("completed" :: Text)
        useClient $ assertWorkflowTaskFailed workflowHandle

    specify "retries activity argument encoding without running the workflow's catch handler" $ \TestEnv {..} -> do
      failingArgEncode <- failEncodingOnce "activity-argument"
      let act :: Text -> Activity () Text
          act _ = pure "ok"
          actDef = provideActivity defaultCodec "payload-encode-error-activity" act
          workflow = provideCallStack do
            (result :: Either SomeException Text) <-
              Catch.try $
                W.executeActivity
                  actDef.reference
                  (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
                  "activity-argument"
            pure $ case result of
              Left _ -> "caught-processor-error" :: Text
              Right _ -> "completed"
          wf = W.provideWorkflow defaultCodec "payload-encode-error-workflow" workflow
          conf =
            (configure () (wf, actDef) baseConf)
              { payloadProcessor = failingArgEncode
              }
          startOptions = defaultStartOptsWithTimeout taskQueue (seconds 10)
      withWorker conf do
        workflowHandle <- useClient $ C.start wf.reference "payload-encode-error-workflow" startOptions
        useClient (C.waitWorkflowResult workflowHandle) `shouldCompleteWith` ("completed" :: Text)
        useClient $ assertWorkflowTaskFailed workflowHandle

    specify "completes an update after retrying a task that failed to decode its argument" $ \TestEnv {..} -> do
      failingDecode <- failDecodingOnce "update-argument"
      let updateFn :: Text -> W.Workflow Text
          updateFn = pure
          updateDef :: W.ProvidedUpdate (Text -> W.Workflow Text) SomeException
          updateDef = W.provideUpdate defaultCodec "decode-fail-update" updateFn
          workflow = provideCallStack do
            done <- W.newStateVar False
            W.setUpdateHandler updateDef (\n -> W.writeStateVar done True >> updateFn n) Nothing
            W.waitCondition $ W.readStateVar done
          wf = W.provideWorkflow defaultCodec "decode-fail-update-workflow" workflow
          conf =
            (configure () wf baseConf)
              { payloadProcessor = failingDecode
              }
          startOptions = defaultStartOptsWithTimeout taskQueue (seconds 10)
          updateOpts =
            C.UpdateOptions
              { updateId = "decode-fail-update"
              , updateHeaders = mempty
              }
      withWorker conf do
        workflowHandle <- useClient $ C.start wf.reference "decode-fail-update-workflow" startOptions
        useClient (waitForWorkflowStart workflowHandle) `shouldCompleteWith` ()
        useClient (C.executeUpdate workflowHandle updateDef.updateReference updateOpts "update-argument")
          `shouldCompleteWith` "update-argument"
        useClient $ assertWorkflowTaskFailed workflowHandle
        useClient (C.waitWorkflowResult workflowHandle) `shouldCompleteWith` ()


assertWorkflowTaskFailed :: C.WorkflowHandle a -> ReaderT C.WorkflowClient IO ()
assertWorkflowTaskFailed workflowHandle = do
  history <- C.fetchHistory workflowHandle
  liftIO $
    (history ^. History.events)
      `shouldSatisfy` any (isJust . (^. History.maybe'workflowTaskFailedEventAttributes))


recordDecodedPayloads :: IO (PayloadProcessor, BS.ByteString -> Expectation)
recordDecodedPayloads = do
  decoded <- newIORef Map.empty
  let processor =
        mempty
          { payloadProcessorDecode = \payload -> do
              workflowThread <- myThreadId
              atomicModifyIORef' decoded $ \seen -> (Map.insertWith (<>) workflowThread [payload.payloadData] seen, ())
              pure $ Right payload
          }
      assertDecodedOnce matchingBytes = do
        seen <- readIORef decoded
        -- Replay can decode the same input again on a new workflow thread.
        -- Require one decode on each thread that received this payload,
        -- and check that at least one thread received it.
        let counts = filter (> 0) $ map (length . filter (BS.isInfixOf matchingBytes)) (Map.elems seen)
        counts `shouldSatisfy` (not . null)
        counts `shouldSatisfy` all (== 1)
  pure (processor, assertDecodedOnce)
