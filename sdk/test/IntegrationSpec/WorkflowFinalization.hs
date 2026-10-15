{-# LANGUAGE OverloadedRecordDot #-}

module IntegrationSpec.WorkflowFinalization (spec) where

import Control.Concurrent.MVar.Extra (newBarrier, signalBarrier, waitBarrier)
import Control.Exception (SomeException, throwIO)
import qualified Control.Exception as Exception
import Data.IORef
import Data.List (nub)
import Data.Text (Text)
import RequireCallStack (provideCallStack)
import System.Mem.StableName (makeStableName)
import System.Timeout (timeout)
import qualified Temporal.Client as C
import Temporal.Duration (seconds)
import Temporal.Interceptor
import Temporal.Payload
import Temporal.Worker
import qualified Temporal.Workflow as W
import Test.Hspec
import TestHelpers (PortNumber, TestEnv (..), defaultCodec, defaultStartOptsWithTimeout, failDecodingOnce, failEncodingOnce, setup, shouldCompleteWith)


spec :: SpecWith PortNumber
spec = do
  workflowFinalizationOnInterceptorFailure
  workflowFinalizationOnCompletion


workflowFinalizationOnInterceptorFailure :: SpecWith PortNumber
workflowFinalizationOnInterceptorFailure = do
  finalizations <- runIO $ newIORef []
  finalized <- runIO newBarrier
  let interceptor =
        mempty
          { workflowInboundInterceptors =
              mempty
                { executeWorkflow = \_input _next -> throwIO $ ValueError "workflow interceptor failed"
                , finalizeWorkflow = \_ result -> do
                    modifyIORef' finalizations (result :)
                    signalBarrier finalized result
                }
          }
  aroundAllWith (flip $ setup interceptor) do
    describe "Workflow finalization" do
      specify "finalizes once when the workflow interceptor throws" $ \TestEnv {..} -> do
        let wf = W.provideWorkflow defaultCodec "failing-interceptor-workflow" (pure () :: W.Workflow ())
            conf = configure () wf baseConf
        withWorker conf do
          _ <- useClient $ C.start wf.reference "failing-interceptor" (C.startWorkflowOptions taskQueue)
          result <- timeout 5_000_000 (waitBarrier finalized)
          case result of
            Just (Just (WorkflowExitFailed _)) -> pure ()
            _ -> expectationFailure "expected the finalizer to receive the workflow interceptor failed"

        results <- reverse <$> readIORef finalizations
        case results of
          [Just (WorkflowExitFailed _)] -> pure ()
          _ -> expectationFailure "expected exactly one failure notification after worker shutdown"


workflowFinalizationOnCompletion :: SpecWith PortNumber
workflowFinalizationOnCompletion =
  aroundWith recordFinalizations $ do
    describe "Workflow finalization" do
      specify "finalizes both runs of a continue-as-new workflow before the client receives its result" $ \(TestEnv {..}, recorder) -> do
        let workflow :: Int -> W.Workflow Text
            workflow count =
              provideCallStack $
                if count < 1
                  then W.continueAsNew wf.reference W.defaultContinueAsNewOptions (count + 1)
                  else pure "woohoo"
            wf = W.provideWorkflow defaultCodec "finalize-continued-workflow" workflow
            conf = configure () wf baseConf
            startOptions =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                }
        withWorker conf do
          useClient (C.execute wf.reference "finalize-continued-runs" startOptions 0)
            `shouldReturn` "woohoo"

          readFinalizations recorder >>= \case
            [Just (WorkflowExitContinuedAsNew _), Just (WorkflowExitSuccess _)] -> pure ()
            _ -> expectationFailure "expected continue-as-new and success notifications before the client receives the result"

      specify "reports workflow result encoding failure to finalizers before retry succeeds" $ \(TestEnv {..}, recorder) -> do
        processor <- failEncodingOnce "workflow-result"
        let wf = W.provideWorkflow defaultCodec "workflow-result-encoding-retry" (pure "workflow-result" :: W.Workflow Text)
            conf = (configure () wf baseConf) {payloadProcessor = processor}
        withWorker conf do
          h <- useClient $ C.start wf.reference "workflow-result-encoding-retry" (C.startWorkflowOptions taskQueue)
          useClient (C.waitWorkflowResult h) `shouldCompleteWith` "workflow-result"
          readFinalizations recorder >>= \case
            [Just (WorkflowExitFailed _), Just (WorkflowExitSuccess _)] -> pure ()
            _ -> expectationFailure "expected a failure notification for result encoding, then success after retry"
        results <- readFinalizations recorder
        length results `shouldBe` 2

      specify "does not finalize again when decoding a query for a completed workflow fails" $ \(TestEnv {..}, recorder) -> do
        processor <- failDecodingOnce "query-processing-failure"
        let query :: W.KnownQuery '[Text] Text
            query = W.KnownQuery "query-processing-failure" defaultCodec
            wf = W.provideWorkflow defaultCodec "completed-query-processing-failure" $ provideCallStack do
              W.setQueryHandler query pure
              pure ()
            conf = (configure () wf baseConf) {payloadProcessor = processor}
        withWorker conf do
          h <- useClient $ C.start wf.reference "completed-query-decoding" (defaultStartOptsWithTimeout taskQueue (seconds 10))
          useClient (C.waitWorkflowResult h) `shouldCompleteWith` ()
          let argument = "query-processing-failure"
          -- The client may throw an exception or return a query error.
          result <- Exception.try @SomeException $ useClient $ C.query h query C.defaultQueryOptions argument
          case result of
            Left _ -> pure ()
            Right (Left _) -> pure ()
            Right (Right _) -> expectationFailure "expected query processing failure"
          useClient (C.query h query C.defaultQueryOptions argument) `shouldReturn` Right argument
          results <- readFinalizations recorder
          length results `shouldSatisfy` (> 0)
          all isSuccessfulFinalization results `shouldBe` True
        assertEachInstanceFinalizedOnce recorder

      specify "does not finalize again when encoding a query result for a completed workflow fails" $ \(TestEnv {..}, recorder) -> do
        processor <- failEncodingOnce "query-processing-failure"
        let query :: W.KnownQuery '[Text] Text
            query = W.KnownQuery "query-processing-failure" defaultCodec
            wf = W.provideWorkflow defaultCodec "completed-query-processing-failure" $ provideCallStack do
              W.setQueryHandler query pure
              pure ()
            conf = (configure () wf baseConf) {payloadProcessor = processor}
        withWorker conf do
          h <- useClient $ C.start wf.reference "completed-query-encoding" (defaultStartOptsWithTimeout taskQueue (seconds 10))
          useClient (C.waitWorkflowResult h) `shouldCompleteWith` ()
          let argument = "query-processing-failure"
          -- The client may throw an exception or return a query error.
          result <- Exception.try @SomeException $ useClient $ C.query h query C.defaultQueryOptions argument
          case result of
            Left _ -> pure ()
            Right (Left _) -> pure ()
            Right (Right _) -> expectationFailure "expected query processing failure"
          useClient (C.query h query C.defaultQueryOptions argument) `shouldReturn` Right argument
          results <- readFinalizations recorder
          length results `shouldSatisfy` (> 0)
          all isSuccessfulFinalization results `shouldBe` True
        assertEachInstanceFinalizedOnce recorder


data FinalizationRecorder = FinalizationRecorder
  { readFinalizations :: IO [Maybe (WorkflowExitVariant Payload)]
  -- ^ Read outcomes in the order they were recorded.
  , assertEachInstanceFinalizedOnce :: Expectation
  }


-- A fresh recorder and worker configuration for every example.
recordFinalizations
  :: ((TestEnv, FinalizationRecorder) -> IO ())
  -> PortNumber
  -> IO ()
recordFinalizations action port = do
  finalizations <- newIORef []
  let interceptor =
        mempty
          { workflowInboundInterceptors =
              mempty
                { finalizeWorkflow = \inst result -> do
                    instanceId <- makeStableName inst
                    atomicModifyIORef' finalizations (\xs -> ((instanceId, result) : xs, ()))
                }
          }
      recorder =
        FinalizationRecorder
          { readFinalizations = map snd . reverse <$> readIORef finalizations
          , assertEachInstanceFinalizedOnce = do
              -- A query may replay a completed workflow in a new instance.
              -- Each instance may finalize, but none should finalize twice.
              instances <- map fst <$> readIORef finalizations
              length instances `shouldBe` length (nub instances)
          }
  setup interceptor port $ \env -> action (env, recorder)


isSuccessfulFinalization :: Maybe (WorkflowExitVariant a) -> Bool
isSuccessfulFinalization = \case
  Just (WorkflowExitSuccess _) -> True
  _ -> False
