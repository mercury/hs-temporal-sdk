{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NumericUnderscores #-}
{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}

module AsyncCompletionSpec where

import Control.Concurrent.MVar
import Control.Exception (SomeException)
import Control.Monad.IO.Class (liftIO)
import qualified Control.Monad.Catch as Catch
import Data.Text (Text)
import Temporal.Activity
import qualified Temporal.Client as C
import qualified Temporal.Client.AsyncActivity as Async
import Temporal.Duration
import Temporal.Exception
import Temporal.Payload
import Temporal.Worker (configure)
import qualified Temporal.Workflow as W
import Test.Hspec
import TestHelpers


spec :: Spec
spec = withTestServer_ tests


asyncAct :: MVar TaskToken -> Activity () Text
asyncAct tokenVar = do
  info <- askActivityInfo
  liftIO $ putMVar tokenVar info.taskToken
  completeAsync
  pure "never returned"


asyncActInfo :: MVar ActivityInfo -> Activity () Text
asyncActInfo infoVar = do
  info <- askActivityInfo
  liftIO $ putMVar infoVar info
  completeAsync
  pure "never returned"


actOpts :: W.StartActivityOptions
actOpts = W.defaultStartActivityOptions $ W.StartToClose $ seconds 30


actOptsNoRetry :: W.StartActivityOptions
actOptsNoRetry =
  actOpts {W.retryPolicy = Just W.defaultRetryPolicy {W.maximumAttempts = 1}}


actOptsHeartbeat :: W.StartActivityOptions
actOptsHeartbeat =
  actOpts {W.heartbeatTimeout = Just (seconds 5)}


tests :: SpecWith TestEnv
tests = describe "Async Activity Completion" $ do
  describe "Complete by token" $ do
    specify "Activity can complete asynchronously" $ \TestEnv {..} -> do
      tokenVar <- newEmptyMVar
      let actDef = provideActivity defaultCodec "asyncCompleteAct" (asyncAct tokenVar)
          workflow :: MyWorkflow Text
          workflow = do
            h <- W.startActivity actDef.reference actOpts
            W.wait (h :: W.Task Text)
          wf = W.provideWorkflow defaultCodec "asyncCompleteWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 30)
        wfHandle <- useClient $ C.start wf.reference "asyncComplete" opts
        tok <- takeMVar tokenVar
        let asyncClient = Async.asyncCompletionClientWithProcessor coreClient (W.Namespace "default") "test-identity" sillyEncryptionPayloadProcessor
            resultPayload = encodeJSON ("async-result" :: Text)
        Async.complete asyncClient tok resultPayload
        result <- useClient $ C.waitWorkflowResult wfHandle
        result `shouldBe` "async-result"

    specify "Activity can complete asynchronously by ID" $ \TestEnv {..} -> do
      infoVar <- newEmptyMVar
      let actDef = provideActivity defaultCodec "asyncCompleteByIdAct" (asyncActInfo infoVar)
          workflow :: MyWorkflow Text
          workflow = do
            h <- W.startActivity actDef.reference actOpts
            W.wait (h :: W.Task Text)
          wf = W.provideWorkflow defaultCodec "asyncCompleteByIdWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 30)
        wfHandle <- useClient $ C.start wf.reference "asyncCompleteById" opts
        info <- takeMVar infoVar
        let asyncClient = Async.asyncCompletionClientWithProcessor coreClient (W.Namespace "default") "test-identity" sillyEncryptionPayloadProcessor
            resultPayload = encodeJSON ("async-by-id-result" :: Text)
        Async.completeById asyncClient info.workflowId info.runId info.activityId resultPayload
        result <- useClient $ C.waitWorkflowResult wfHandle
        result `shouldBe` "async-by-id-result"

  describe "Fail by token" $ do
    specify "Activity can fail asynchronously" $ \TestEnv {..} -> do
      tokenVar <- newEmptyMVar
      let actDef = provideActivity defaultCodec "asyncFailAct" (asyncAct tokenVar)
          workflow :: MyWorkflow Text
          workflow = do
            h <- W.startActivity actDef.reference actOptsNoRetry
            W.wait (h :: W.Task Text)
          wf = W.provideWorkflow defaultCodec "asyncFailWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 30)
        wfHandle <- useClient $ C.start wf.reference "asyncFail" opts
        tok <- takeMVar tokenVar
        let asyncClient = Async.asyncCompletionClient coreClient (W.Namespace "default") "test-identity"
            appFailure =
              ApplicationFailure
                { type' = "AsyncTestFailure"
                , message = "deliberately failed async"
                , nonRetryable = True
                , details = []
                , stack = ""
                , nextRetryDelay = Nothing
                }
        Async.fail asyncClient tok appFailure
        res <- Catch.try @IO @WorkflowExecutionClosed $ useClient (C.waitWorkflowResult @Text wfHandle)
        res `shouldSatisfy` isLeft

    specify "Activity can fail asynchronously by ID" $ \TestEnv {..} -> do
      infoVar <- newEmptyMVar
      let actDef = provideActivity defaultCodec "asyncFailByIdAct" (asyncActInfo infoVar)
          workflow :: MyWorkflow Text
          workflow = do
            h <- W.startActivity actDef.reference actOptsNoRetry
            W.wait (h :: W.Task Text)
          wf = W.provideWorkflow defaultCodec "asyncFailByIdWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 30)
        wfHandle <- useClient $ C.start wf.reference "asyncFailById" opts
        info <- takeMVar infoVar
        let asyncClient = Async.asyncCompletionClient coreClient (W.Namespace "default") "test-identity"
            appFailure =
              ApplicationFailure
                { type' = "AsyncTestFailure"
                , message = "deliberately failed async by ID"
                , nonRetryable = True
                , details = []
                , stack = ""
                , nextRetryDelay = Nothing
                }
        Async.failById asyncClient info.workflowId info.runId info.activityId appFailure
        res <- Catch.try @IO @WorkflowExecutionClosed $ useClient (C.waitWorkflowResult @Text wfHandle)
        res `shouldSatisfy` isLeft

  describe "Heartbeat and cancel" $ do
    specify "Activity can heartbeat with AsyncCompletionClient" $ \TestEnv {..} -> do
      tokenVar <- newEmptyMVar
      let actDef = provideActivity defaultCodec "asyncHeartbeatAct" (asyncAct tokenVar)
          workflow :: MyWorkflow Text
          workflow = do
            h <- W.startActivity actDef.reference actOptsHeartbeat
            W.wait (h :: W.Task Text)
          wf = W.provideWorkflow defaultCodec "asyncHeartbeatWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 30)
        wfHandle <- useClient $ C.start wf.reference "asyncHeartbeat" opts
        tok <- takeMVar tokenVar
        let asyncClient = Async.asyncCompletionClientWithProcessor coreClient (W.Namespace "default") "test-identity" sillyEncryptionPayloadProcessor
        Async.heartbeat asyncClient tok []
        Async.complete asyncClient tok (encodeJSON ("heartbeat-ok" :: Text))
        result <- useClient $ C.waitWorkflowResult wfHandle
        result `shouldBe` "heartbeat-ok"

    specify "Activity can heartbeat by ID with AsyncCompletionClient" $ \TestEnv {..} -> do
      infoVar <- newEmptyMVar
      let actDef = provideActivity defaultCodec "asyncHeartbeatByIdAct" (asyncActInfo infoVar)
          workflow :: MyWorkflow Text
          workflow = do
            h <- W.startActivity actDef.reference actOptsHeartbeat
            W.wait (h :: W.Task Text)
          wf = W.provideWorkflow defaultCodec "asyncHeartbeatByIdWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 30)
        wfHandle <- useClient $ C.start wf.reference "asyncHeartbeatById" opts
        info <- takeMVar infoVar
        let asyncClient = Async.asyncCompletionClientWithProcessor coreClient (W.Namespace "default") "test-identity" sillyEncryptionPayloadProcessor
        Async.heartbeatById asyncClient info.workflowId info.runId info.activityId []
        Async.completeById asyncClient info.workflowId info.runId info.activityId (encodeJSON ("heartbeat-by-id-ok" :: Text))
        result <- useClient $ C.waitWorkflowResult wfHandle
        result `shouldBe` "heartbeat-by-id-ok"

  describe "Non-existing activity errors" $ do
    let mkAsyncClient env = Async.asyncCompletionClient env.coreClient (W.Namespace "default") "test"
        bogusTok = TaskToken "bogus-token-does-not-exist"
        bogusWfId = W.WorkflowId "nonexistent-wf"
        bogusRunId = W.RunId "nonexistent-run"
        bogusActId = W.ActivityId "nonexistent-act"

    specify "Non existing activity async completion throws" $ \env -> do
      let ac = mkAsyncClient env
          p = encodeJSON ("x" :: Text)
      res <- Catch.try @IO @SomeException (Async.complete ac bogusTok p)
      res `shouldSatisfy` isLeft

    specify "Non existing activity async completion by ID throws" $ \env -> do
      let ac = mkAsyncClient env
          p = encodeJSON ("x" :: Text)
      res <- Catch.try @IO @SomeException (Async.completeById ac bogusWfId bogusRunId bogusActId p)
      res `shouldSatisfy` isLeft

    specify "Non existing activity async failure throws" $ \env -> do
      let ac = mkAsyncClient env
          appF = ApplicationFailure "T" "msg" True [] "" Nothing
      res <- Catch.try @IO @SomeException (Async.fail ac bogusTok appF)
      res `shouldSatisfy` isLeft

    specify "Non existing activity async failure by ID throws" $ \env -> do
      let ac = mkAsyncClient env
          appF = ApplicationFailure "T" "msg" True [] "" Nothing
      res <- Catch.try @IO @SomeException (Async.failById ac bogusWfId bogusRunId bogusActId appF)
      res `shouldSatisfy` isLeft

    specify "Non existing activity async cancellation throws" $ \env -> do
      let ac = mkAsyncClient env
      res <- Catch.try @IO @SomeException (Async.reportCancellation ac bogusTok [])
      res `shouldSatisfy` isLeft

    specify "Non existing activity async cancellation by ID throws" $ \env -> do
      let ac = mkAsyncClient env
      res <- Catch.try @IO @SomeException (Async.reportCancellationById ac bogusWfId bogusRunId bogusActId [])
      res `shouldSatisfy` isLeft

    specify "Non existing activity async heartbeat throws" $ \env -> do
      let ac = mkAsyncClient env
      res <- Catch.try @IO @SomeException (Async.heartbeat ac bogusTok [])
      res `shouldSatisfy` isLeft

    specify "Non existing activity async heartbeat by ID throws" $ \env -> do
      let ac = mkAsyncClient env
      res <- Catch.try @IO @SomeException (Async.heartbeatById ac bogusWfId bogusRunId bogusActId [])
      res `shouldSatisfy` isLeft


isLeft :: Either a b -> Bool
isLeft (Left _) = True
isLeft _ = False
