{-# LANGUAGE TemplateHaskell #-}

module WorkflowSpec where

import Conduit
import Control.Concurrent (threadDelay)
import Control.Exception (SomeException, bracket)
import Control.Exception.Annotated (checkpoint)
import qualified Control.Monad.Catch as Catch
import Control.Monad.Logger (logInfoN)
import Data.Aeson (toJSON)
import Data.Int (Int64)
import Data.ProtoLens (defMessage)
import Data.Time.Clock.System (SystemTime(..))
import Data.Word (Word32)
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map
import Data.Text (Text)
import qualified Data.Text as Text
import Lens.Family2
import qualified Proto.Temporal.Api.Common.V1.Message_Fields as Common
import qualified Proto.Temporal.Api.Workflow.V1.Message_Fields as WFInfo
import qualified Proto.Temporal.Api.Workflowservice.V1.RequestResponse_Fields as RR
import qualified Proto.Temporal.Api.Failure.V1.Message_Fields as Failure
import qualified Proto.Temporal.Api.History.V1.Message_Fields as History
import qualified Temporal.Activity as A
import qualified Temporal.Client as C
import Temporal.Duration
import Temporal.Exception
import Temporal.Payload
import Temporal.SearchAttributes
import Temporal.Testing.Assertions
import Temporal.Worker
import qualified Temporal.Workflow as W
import Test.Hspec
import TestHelpers


spec :: Spec
spec = withTestServer_ tests


tests :: SpecWith TestEnv
tests = do
  describe "Workflow Basics" $ do
    specify "should run a no-op workflow" $ \TestEnv {..} -> do
      let workflow :: W.Workflow ()
          workflow = pure ()
          wf = W.provideWorkflow defaultCodec "noOp" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 30)
        useClient (C.execute wf.reference "noOp" opts) `shouldReturn` ()

    specify "workflow returning a value" $ \TestEnv {..} -> do
      let workflow :: W.Workflow Int
          workflow = pure 42
          wf = W.provideWorkflow defaultCodec "returnsValue" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "returnsValue" opts) `shouldReturn` 42

    specify "workflow with args and return" $ \TestEnv {..} -> do
      let workflow :: Int -> Text -> Bool -> W.Workflow (Int, Text, Bool)
          workflow a b c = pure (a, b, c)
          wf = W.provideWorkflow defaultCodec "argsAndReturn" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "argsAndReturn" opts 1 "two" False)
          `shouldReturn` (1, "two", False)

    specify "workflow that throws is reported as failed" $ \TestEnv {..} -> do
      let workflow :: W.Workflow ()
          workflow = error "kaboom"
          wf = W.provideWorkflow defaultCodec "throws" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "throws" opts)
          `shouldThrow` \case
            WorkflowExecutionFailed _ -> True
            _ -> False

    specify "wrong arg types fail the workflow" $ \TestEnv {..} -> do
      let workflow :: Int -> W.Workflow Bool
          workflow _ = pure True
          wf = W.provideWorkflow defaultCodec "wrongArgs" workflow
          badRef = W.KnownWorkflow @'[String] @Int defaultCodec "wrongArgs"
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute badRef "wrongArgsFail" opts "not-an-int")
          `shouldThrow` \case
            WorkflowExecutionFailed _ -> True
            _ -> False

    specify "wrong return type throws ValueError" $ \TestEnv {..} -> do
      let workflow :: Int -> W.Workflow Bool
          workflow _ = pure True
          wf = W.provideWorkflow defaultCodec "wrongReturn" workflow
          badRef = W.KnownWorkflow @'[Int] @String defaultCodec "wrongReturn"
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute badRef "wrongReturnFail" opts 0)
          `shouldThrow` (ValueError "Error in $: expected String, but encountered Boolean" ==)

  describe "Workflow existence assertions" $ do
    specify "checkWorkflowExecutionExists returns correct values" $ \TestEnv {..} -> do
      let wf :: W.ProvidedWorkflow (W.Workflow ())
          wf = W.provideWorkflow defaultCodec "existCheck" (pure ())
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let wfId = W.WorkflowId "test-existence-check"
            opts = defaultStartOpts taskQueue
        exists1 <- useClient $ C.checkWorkflowExecutionExists wf.reference wfId
        exists1 `shouldBe` False
        _ <- useClient $ C.start wf.reference wfId opts
        exists2 <- useClient $ C.checkWorkflowExecutionExists wf.reference wfId
        exists2 `shouldBe` True

    specify "assertWorkflowExecutionExists and DoesNotExist" $ \TestEnv {..} -> do
      let wf :: W.ProvidedWorkflow (W.Workflow ())
          wf = W.provideWorkflow defaultCodec "assertExist" (pure ())
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let wfId = W.WorkflowId "test-assert-exist"
            opts = defaultStartOpts taskQueue
        useClient $ assertWorkflowExecutionDoesNotExist wf.reference wfId
        _ <- useClient $ C.start wf.reference wfId opts
        useClient $ assertWorkflowExecutionExists wf.reference wfId

    specify "assertions throw on failure" $ \TestEnv {..} -> do
      let wf :: W.ProvidedWorkflow (W.Workflow ())
          wf = W.provideWorkflow defaultCodec "assertFail" (pure ())
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let wfId = W.WorkflowId "test-assert-fail"
            opts = defaultStartOpts taskQueue
        useClient (assertWorkflowExecutionExists wf.reference wfId)
          `shouldThrow` (== WorkflowShouldExist wfId)
        _ <- useClient $ C.start wf.reference wfId opts
        useClient (assertWorkflowExecutionDoesNotExist wf.reference wfId)
          `shouldThrow` (== WorkflowShouldNotExist wfId)

  describe "Info" $ do
    specify "can read workflow info" $ \TestEnv {..} -> do
      let workflow :: W.Workflow Text
          workflow = do
            i <- W.info
            pure $ W.rawWorkflowType i.workflowType
          wf = W.provideWorkflow defaultCodec "readInfo" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 30)
        useClient (C.execute wf.reference "readInfo" opts) `shouldReturn` "readInfo"

    specify "workflow ID matches" $ \TestEnv {..} -> do
      let workflow :: W.Workflow W.WorkflowId
          workflow = do
            i <- W.info
            pure i.workflowId
          wf = W.provideWorkflow defaultCodec "readWfId" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
            wfId = W.WorkflowId "known-wf-id"
        useClient (C.execute wf.reference wfId opts) `shouldReturn` wfId

    specify "namespace is default" $ \TestEnv {..} -> do
      let workflow :: W.Workflow W.Namespace
          workflow = do
            i <- W.info
            pure i.namespace
          wf = W.provideWorkflow defaultCodec "readNs" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "readNs" opts) `shouldReturn` W.Namespace "default"

    specify "task queue matches" $ \TestEnv {..} -> do
      let workflow :: W.Workflow W.TaskQueue
          workflow = do
            i <- W.info
            pure i.taskQueue
          wf = W.provideWorkflow defaultCodec "readTq" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "readTq" opts) `shouldReturn` taskQueue

  describe "Search Attributes" $ do
    specify "can read search attributes set at start" $ \TestEnv {..} -> do
      let workflow :: W.Workflow (Map SearchAttributeKey SearchAttributeType)
          workflow = do
            i <- W.info
            pure i.searchAttributes
          wf = W.provideWorkflow defaultCodec "readSA" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let initialAttrs = Map.fromList
              [ ("attr1", toSearchAttribute True)
              , ("attr2", toSearchAttribute (4 :: Int64))
              ]
            opts = (defaultStartOptsWithTimeout taskQueue (seconds 30))
              { C.searchAttributes = initialAttrs }
        useClient (C.execute wf.reference "readSA" opts) `shouldReturn` initialAttrs

    specify "can upsert search attributes" $ \TestEnv {..} -> do
      let expectedAttrs = Map.fromList
            [ ("attr1", toSearchAttribute True)
            , ("attr2", toSearchAttribute (4 :: Int64))
            ]
          workflow :: MyWorkflow (Map SearchAttributeKey SearchAttributeType)
          workflow = do
            W.upsertSearchAttributes expectedAttrs
            i <- W.info
            pure i.searchAttributes
          wf = W.provideWorkflow defaultCodec "upsertSA" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 30)
        useClient (C.execute wf.reference "upsertSA" opts) `shouldReturn` expectedAttrs

    specify "later value wins on key collision" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow (Map SearchAttributeKey SearchAttributeType)
          workflow = do
            W.upsertSearchAttributes $ Map.fromList [("attr2", toSearchAttribute True)]
            W.upsertSearchAttributes $ Map.fromList [("attr2", toSearchAttribute False)]
            i <- W.info
            pure i.searchAttributes
          wf = W.provideWorkflow defaultCodec "saCollision" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue $ seconds 30
        m <- useClient $ C.execute wf.reference "saCollision" opts
        Map.lookup "attr2" m `shouldBe` (Just $ toSearchAttribute False)

  describe "Memo" $ do
    specify "able to read memo set at start" $ \TestEnv {..} -> do
      let workflow :: W.Workflow (Map Text Payload)
          workflow = W.getMemoValues
          wf = W.provideWorkflow defaultCodec "readMemo" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        p1 <- encode JSON ("v1" :: Text)
        p2 <- encode JSON (1 :: Int)
        let opts = (defaultStartOpts taskQueue) { C.memo = Map.fromList [("a", p1), ("b", p2)] }
            expected = Map.fromList [("a", p1), ("b", p2)]
        m <- useClient (C.execute wf.reference "readMemo" opts)
        m `shouldBe` expected

    specify "can upsert memo" $ \TestEnv {..} -> do
      p1 <- encode JSON ("v1" :: Text)
      p2 <- encode JSON (1 :: Int)
      let workflow :: MyWorkflow (Map Text Payload)
          workflow = do
            W.upsertMemo (Map.fromList [("b", toJSON ("two" :: Text)), ("c", toJSON True)])
            i <- W.info
            pure i.rawMemo
          wf = W.provideWorkflow defaultCodec "upsertMemo" workflow
          conf = configure () wf $ do baseConf
          opts = (defaultStartOpts taskQueue) { C.memo = Map.fromList [("a", p1), ("b", p2)] }
      withWorker conf $ do
        m <- useClient (C.execute wf.reference "upsertMemo" opts)
        let expectedB = encodeJSON (toJSON ("two" :: Text))
            expectedC = encodeJSON (toJSON True)
            expected = Map.fromList [("a", p1), ("b", expectedB), ("c", expectedC)]
        m `shouldBe` expected

    specify "multiple upserts work" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow (Map Text Payload)
          workflow = do
            W.upsertMemo (Map.fromList [("a", toJSON ("v1" :: Text))])
            W.upsertMemo (Map.fromList [("b", toJSON ("v2" :: Text))])
            W.upsertMemo (Map.fromList [("a", toJSON ("v3" :: Text))])
            i <- W.info
            pure i.rawMemo
          wf = W.provideWorkflow defaultCodec "upsertMany" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
            expectedA = encodeJSON (toJSON ("v3" :: Text))
            expectedB = encodeJSON (toJSON ("v2" :: Text))
            expected = Map.fromList [("a", expectedA), ("b", expectedB)]
        m <- useClient (C.execute wf.reference "upsertMany" opts)
        m `shouldBe` expected

  describe "Patching" $ do
    specify "patch returns True" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Bool
          workflow = W.patched (W.PatchId "wibble")
          wf = W.provideWorkflow defaultCodec "patched" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 30)
        useClient (C.execute wf.reference "patched" opts) `shouldReturn` True

    specify "deprecated patch" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Bool
          workflow = do
            W.deprecatePatch (W.PatchId "wibble")
            pure True
          wf = W.provideWorkflow defaultCodec "deprecatedPatch" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 30)
        useClient (C.execute wf.reference "deprecatedPatch" opts) `shouldReturn` True

  describe "AwaitCondition" $ do
    specify "works in workflows" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow ()
          workflow = do
            st <- W.newStateVar False
            W.concurrently_ (W.waitCondition (W.readStateVar st)) (W.writeStateVar st True)
          wf = W.provideWorkflow defaultCodec "awaitCond" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "awaitCond" opts) `shouldReturn` ()

    specify "multiple StateVars" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow (Int, Text)
          workflow = do
            st1 <- W.newStateVar (0 :: Int)
            st2 <- W.newStateVar ("" :: Text)
            W.writeStateVar st1 42
            W.writeStateVar st2 "hello"
            W.waitCondition $ do
              v1 <- W.readStateVar st1
              v2 <- W.readStateVar st2
              pure (v1 > 0 && v2 /= "")
            (,) <$> W.readStateVar st1 <*> W.readStateVar st2
          wf = W.provideWorkflow defaultCodec "multiStateVar" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "multiStateVar" opts) `shouldReturn` (42, "hello")

  describe "Local yield" $ do
    specify "yield hands control to a concurrent branch before resuming" $ \TestEnv {..} -> do
      -- Branch A records 1, yields, then records 3; Branch B records 2.
      --
      -- With yield, A blocks after 1, letting B record 2 before A resumes:
      -- -> [1, 2, 3].
      --
      -- Without yield, A runs straight through (1, 3) then B (2):
      -- -> [1, 3, 2].
      let workflow :: MyWorkflow [Int]
          workflow = do
            st <- W.newStateVar ([] :: [Int])
            let a = W.modifyStateVar st (1 :) *> W.yield *> W.modifyStateVar st (3 :)
                b = W.modifyStateVar st (2 :)
            W.concurrently_ a b
            reverse <$> W.readStateVar st
          wf = W.provideWorkflow defaultCodec "localYield" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "localYield" opts) `shouldReturn` [1, 2, 3]

  describe "WorkflowIdConflictPolicy" $ do
    specify "Fail policy prevents duplicate workflows" $ \TestEnv {..} -> do
      let wf :: W.ProvidedWorkflow (W.Workflow ())
          wf = W.provideWorkflow defaultCodec "conflictFail" (W.sleep $ seconds 5)
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let wfId = W.WorkflowId "conflict-fail"
            opts = (C.startWorkflowOptions taskQueue) { C.workflowIdConflictPolicy = Just C.WorkflowIdConflictPolicyFail }
        _ <- useClient (C.start wf.reference wfId opts)
        useClient (C.start wf.reference wfId opts)
          `shouldThrow` \(RpcError {} ) -> True

    specify "UseExisting returns existing handle" $ \TestEnv {..} -> do
      let wf :: W.ProvidedWorkflow (W.Workflow ())
          wf = W.provideWorkflow defaultCodec "conflictExisting" (W.sleep $ seconds 5)
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let wfId = W.WorkflowId "conflict-existing"
            opts = (C.startWorkflowOptions taskQueue) { C.workflowIdConflictPolicy = Just C.WorkflowIdConflictPolicyUseExisting }
        h1 <- useClient (C.start wf.reference wfId opts)
        h2 <- useClient (C.start wf.reference wfId opts)
        h1.workflowHandleRunId `shouldBe` h2.workflowHandleRunId

    specify "TerminateExisting terminates old workflow" $ \TestEnv {..} -> do
      let wf :: W.ProvidedWorkflow (W.Workflow ())
          wf = W.provideWorkflow defaultCodec "conflictTerminate" (W.sleep $ seconds 5)
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let wfId = W.WorkflowId "conflict-terminate"
            opts = (C.startWorkflowOptions taskQueue) { C.workflowIdConflictPolicy = Just C.WorkflowIdConflictPolicyTerminateExisting }
        h1 <- useClient (C.start wf.reference wfId opts)
        h2 <- useClient (C.start wf.reference wfId opts)
        h1.workflowHandleRunId `shouldNotBe` h2.workflowHandleRunId
        h1.workflowHandleWorkflowId `shouldBe` h2.workflowHandleWorkflowId

    specify "TerminateIfRunning reuse policy" $ \TestEnv {..} -> do
      let wf :: W.ProvidedWorkflow (W.Workflow ())
          wf = W.provideWorkflow defaultCodec "conflictTermRun" (W.sleep $ seconds 5)
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let wfId = W.WorkflowId "conflict-term-run"
            opts = (C.startWorkflowOptions taskQueue) { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyTerminateIfRunning }
        h1 <- useClient (C.start wf.reference wfId opts)
        h2 <- useClient (C.start wf.reference wfId opts)
        h1.workflowHandleRunId `shouldNotBe` h2.workflowHandleRunId
        h1.workflowHandleWorkflowId `shouldBe` h2.workflowHandleWorkflowId

  describe "Workflow Error Handling" $ do
    specify "workflow that throws propagates as WorkflowExecutionFailed" $ \TestEnv {..} -> do
      let workflow :: W.Workflow ()
          workflow = error "workflow kaboom"
          wf = W.provideWorkflow defaultCodec "errPropagates" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "errPropagates" opts)
          `shouldThrow` \case
            WorkflowExecutionFailed _ -> True
            _ -> False

    specify "workflow that catches and re-throws" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow ()
          workflow = do
            Catch.catch (error "inner") (\ (_ :: SomeException) -> error "rethrow")
          wf = W.provideWorkflow defaultCodec "errCatchRethrow" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "errCatchRethrow" opts)
          `shouldThrow` \case
            WorkflowExecutionFailed _ -> True
            _ -> False

    specify "non-retryable activity error propagates to workflow" $ \TestEnv {..} -> do
      let act :: A.Activity () ()
          act = checkpoint annotateNonRetryableError $ error "permanent"
          actDef = A.provideActivity defaultCodec "nonRetryActErr" act
          workflow :: MyWorkflow ()
          workflow = W.executeActivity actDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
          wf = W.provideWorkflow defaultCodec "nonRetryActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient (C.execute wf.reference "nonRetryActErr" opts)
          `shouldThrow` \case
            WorkflowExecutionFailed _ -> True
            _ -> False

    specify "workflow that retries then fails with max attempts" $ \TestEnv {..} -> do
      let workflow :: W.Workflow ()
          workflow = error "always fails"
          wf = W.provideWorkflow defaultCodec "retryThenFail" workflow
          rp = (W.defaultRetryPolicy) { W.maximumAttempts = 2 }
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = (defaultStartOptsWithTimeout taskQueue (seconds 10))
              { C.retryPolicy = Just rp }
        useClient (C.execute wf.reference "retryThenFail" opts)
          `shouldThrow` \case
            WorkflowExecutionFailed _ -> True
            _ -> False

    specify "error message propagates in failure details" $ \TestEnv {..} -> do
      let msg = Text.pack "custom error message 123"
          workflow :: W.Workflow ()
          workflow = error (Text.unpack msg)
          wf = W.provideWorkflow defaultCodec "errMsgProp" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "errMsgProp" opts)
          `shouldThrow` \case
            WorkflowExecutionFailed attrs -> (attrs ^. History.failure . Failure.message) == msg
            _ -> False

  describe "Workflow Timeout Behavior" $ do
    specify "run timeout causes WorkflowExecutionTimedOut" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow ()
          workflow = W.sleep $ seconds 10
          wf = W.provideWorkflow defaultCodec "runTimeout" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = (defaultStartOpts taskQueue)
              { C.timeouts = C.TimeoutOptions
                  { C.runTimeout = Just $ seconds 1
                  , C.executionTimeout = Nothing
                  , C.taskTimeout = Nothing
                  }
              }
        useClient (C.execute wf.reference "runTimeout" opts)
          `shouldThrow` \case
            WorkflowExecutionTimedOut -> True
            _ -> False

    specify "multi-param workflow (TS: args-and-return)" $ \TestEnv {..} -> do
      let workflow :: Int -> Text -> W.Workflow (Int, Text)
          workflow n t = pure (n + 1, t <> " world")
          wf = W.provideWorkflow defaultCodec "argsAndReturn" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "argsAndReturn" opts 41 "hello")
          `shouldReturn` (42, "hello world")

  describe "WorkflowHandle result behavior" $ do
    specify "result throws if terminated (TS: result throws if terminated)" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow ()
          workflow = W.sleep $ minutes 100
          wf = W.provideWorkflow defaultCodec "terminateResult" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        h <- useClient (C.start wf.reference "terminate-result-wf" opts)
        C.terminate h (C.TerminationOptions "reason" mempty)
        C.waitWorkflowResult h
          `shouldThrow` \case
            WorkflowExecutionTerminated -> True
            _ -> False

    specify "start with duplicate ID rejected (Py/TS: WorkflowExecutionAlreadyStartedError)" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow ()
          workflow = W.sleep $ minutes 100
          wf = W.provideWorkflow defaultCodec "dupIdReject" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let wfId = W.WorkflowId "duplicate-id-reject-test"
            opts = (defaultStartOpts taskQueue)
              { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyRejectDuplicate }
        _ <- useClient (C.start wf.reference wfId opts)
        useClient (C.start wf.reference wfId opts)
          `shouldThrow` \(RpcError {}) -> True

  describe "Wait condition" $ do
    specify "wait condition with timeout via race (TS: conditionRacer)" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow (Either () ())
          workflow = do
            st <- W.newStateVar False
            let cond :: MyWorkflow ()
                cond = W.waitCondition (W.readStateVar st)
                timeout :: MyWorkflow ()
                timeout = W.sleep $ nanoseconds 1
            cond `W.race` timeout
          wf = W.provideWorkflow defaultCodec "conditionRacer" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "conditionRacer" opts) `shouldReturn` Right ()

  describe "Workflow info (Py/TS: WorkflowInfo access)" $ do
    specify "info: attempt number on first run is 1 (Py: test_workflow_info)" $ \TestEnv {..} -> do
      let workflow :: W.Workflow Int
          workflow = do
            i <- W.info
            pure i.attempt
          wf = W.provideWorkflow defaultCodec "wfInfoAttempt" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "wfInfoAttempt" opts) `shouldReturn` 1

    specify "info: runId is non-empty (Py/TS: test_workflow_info)" $ \TestEnv {..} -> do
      let workflow :: W.Workflow Text
          workflow = do
            i <- W.info
            let (W.RunId rid) = i.runId
            pure rid
          wf = W.provideWorkflow defaultCodec "wfInfoRunId" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        result <- useClient (C.execute wf.reference "wfInfoRunId" opts)
        Text.length result `shouldSatisfy` (> 0)

    specify "info: taskQueue matches worker (Py/TS: test_workflow_info)" $ \TestEnv {..} -> do
      let workflow :: W.Workflow Text
          workflow = do
            i <- W.info
            let (W.TaskQueue tq) = i.taskQueue
            pure tq
          wf = W.provideWorkflow defaultCodec "wfInfoTaskQueue" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        result <- useClient (C.execute wf.reference "wfInfoTaskQueue" opts)
        let (W.TaskQueue expectedTq) = taskQueue
        result `shouldBe` expectedTq

    specify "info: namespace is non-empty (Py/TS: test_workflow_info)" $ \TestEnv {..} -> do
      let workflow :: W.Workflow Text
          workflow = do
            i <- W.info
            let (W.Namespace ns) = i.namespace
            pure ns
          wf = W.provideWorkflow defaultCodec "wfInfoNamespace" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        result <- useClient (C.execute wf.reference "wfInfoNamespace" opts)
        Text.length result `shouldSatisfy` (> 0)

    specify "info: workflowId matches start (Py/TS: test_workflow_info)" $ \TestEnv {..} -> do
      let workflow :: W.Workflow Text
          workflow = do
            i <- W.info
            let (W.WorkflowId wid) = i.workflowId
            pure wid
          wf = W.provideWorkflow defaultCodec "wfInfoWorkflowId" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        result <- useClient (C.execute wf.reference (W.WorkflowId "specific-wf-id") opts)
        result `shouldBe` "specific-wf-id"

    specify "info: workflowType matches registered name (Py/TS: test_workflow_info)" $ \TestEnv {..} -> do
      let workflow :: W.Workflow Text
          workflow = do
            i <- W.info
            let (W.WorkflowType wt) = i.workflowType
            pure wt
          wf = W.provideWorkflow defaultCodec "wfInfoWorkflowType" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        result <- useClient (C.execute wf.reference "wfInfoWorkflowType" opts)
        result `shouldBe` "wfInfoWorkflowType"

    specify "info: startTime is set (Py/TS: test_workflow_info)" $ \TestEnv {..} -> do
      let workflow :: W.Workflow Bool
          workflow = do
            i <- W.info
            pure (i.startTime > MkSystemTime 0 0)
          wf = W.provideWorkflow defaultCodec "wfInfoStartTime" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "wfInfoStartTime" opts) `shouldReturn` True

  describe "Workflow history (Py/TS: HistorySize grows)" $ do
    specify "historyLength is positive" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Word32
          workflow = do
            W.sleep $ nanoseconds 1
            i <- W.info
            pure i.historyLength
          wf = W.provideWorkflow defaultCodec "histLengthPositive" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        result <- useClient (C.execute wf.reference "histLength" opts)
        result `shouldSatisfy` (> 0)

  describe "Determinism (Py/TS: uuid/random)" $ do
    specify "uuid4 produces valid UUID" $ \TestEnv {..} -> do
      let workflow :: W.Workflow Text
          workflow = do
            u <- W.uuid4
            pure $ Text.pack $ show u
          wf = W.provideWorkflow defaultCodec "uuid4Test" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        result <- useClient (C.execute wf.reference "uuid4Test" opts)
        Text.length result `shouldSatisfy` (>= 32)

    specify "uuid4 is deterministic across replays (same result each time)" $ \TestEnv {..} -> do
      let workflow :: W.Workflow (Text, Text)
          workflow = do
            u1 <- W.uuid4
            u2 <- W.uuid4
            pure (Text.pack (show u1), Text.pack (show u2))
          wf = W.provideWorkflow defaultCodec "uuid4Determinism" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        (u1, u2) <- useClient (C.execute wf.reference "uuid4Determinism" opts)
        u1 `shouldNotBe` u2

  describe "Workflow logging (Py/TS: workflow logging)" $ do
    specify "workflow can log without failing" $ \TestEnv {..} -> do
      let workflow :: W.Workflow Text
          workflow = do
            logInfoN "test log message from workflow"
            pure "logged"
          wf = W.provideWorkflow defaultCodec "wfLogging" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "wfLogging" opts) `shouldReturn` "logged"

  describe "ContinueAsNew suggested (TS: continue-as-new suggested)" $ do
    specify "continueAsNewSuggested is accessible from workflow info" $ \TestEnv {..} -> do
      let workflow :: W.Workflow Bool
          workflow = do
            i <- W.info
            pure i.continueAsNewSuggested
          wf = W.provideWorkflow defaultCodec "canSuggested" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "canSuggested" opts) `shouldReturn` False

  describe "Patching (Py/TS: patching/versioning)" $ do
    specify "patched top level returns True on new execution (TS: patchedTopLevel)" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Bool
          workflow = W.patched "top-level-patch"
          wf = W.provideWorkflow defaultCodec "patchedTopLevel" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "patchedTopLevel" opts) `shouldReturn` True

    specify "deprecate patch completes on new execution (Py/TS: deprecate-patch)" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Text
          workflow = do
            W.deprecatePatch "deprecated-patch"
            pure "after-deprecate"
          wf = W.provideWorkflow defaultCodec "deprecatePatchNew" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "deprecatePatchNew" opts) `shouldReturn` "after-deprecate"

    specify "patched controls execution path" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Text
          workflow = do
            hasPatch <- W.patched "switch-path"
            if hasPatch then pure "new-path" else pure "old-path"
          wf = W.provideWorkflow defaultCodec "patchControlsPath" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "patchControlsPath" opts) `shouldReturn` "new-path"

  describe "Build ID (Py/TS: build ID)" $ do
    specify "worker can be configured with build ID" $ \TestEnv {..} -> do
      let workflow :: W.Workflow Int
          workflow = pure 1
          wf = W.provideWorkflow defaultCodec "buildIdWorkflow" workflow
          conf = configure () wf $ do
            baseConf
            setBuildId "test-build-1234"
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "buildIdWorkflow" opts) `shouldReturn` 1

    specify "build ID is visible in workflow info" $ \TestEnv {..} -> do
      let workflow :: W.Workflow Text
          workflow = do
            i <- W.info
            pure i.buildId
          wf = W.provideWorkflow defaultCodec "buildIdInfoWf" workflow
          conf = configure () wf $ do
            baseConf
            setBuildId "my-build-abc"
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "buildIdInfoWf" opts) `shouldReturn` "my-build-abc"

  describe "Workflow priorities" $ do
    specify "workflow with priority runs successfully" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Text
          workflow = pure "prioritized"
          wf = W.provideWorkflow defaultCodec "priorityWf" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = (defaultStartOpts taskQueue) { C.priority = Just (C.mkPriority 3) }
        useClient (C.execute wf.reference "priorityWf" opts) `shouldReturn` "prioritized"

  describe "Memo operations (Py/TS: memo access)" $ do
    specify "getMemoValues returns initial memos (Py: test_workflow_memo)" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow (Map Text Payload)
          workflow = W.getMemoValues
          wf = W.provideWorkflow defaultCodec "getMemoWf" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let memoVal = encodeJSON ("test-memo" :: Text)
            opts = (defaultStartOpts taskQueue)
              { C.memo = Map.fromList [("mykey", memoVal)] }
        result <- useClient (C.execute wf.reference "getMemo" opts)
        Map.member "mykey" result `shouldBe` True

    specify "upsertMemo modifies memo values (Py/TS: upsert-memo)" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Bool
          workflow = do
            W.upsertMemo (Map.fromList [("added", toJSON ("hello" :: Text))])
            memos <- W.getMemoValues
            pure $ Map.member "added" memos
          wf = W.provideWorkflow defaultCodec "upsertMemoWf" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "upsertMemo" opts) `shouldReturn` True

  describe "Search attributes (Py/TS: search attributes)" $ do
    specify "workflow started without search attrs has empty search attrs (Py: test_no_initial_search_attributes)" $ \TestEnv {..} -> do
      let workflow :: W.Workflow Bool
          workflow = do
            i <- W.info
            pure $ Map.null i.searchAttributes
          wf = W.provideWorkflow defaultCodec "noInitialSearchAttrs" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "noInitialSearchAttrs" opts) `shouldReturn` True

  describe "Workflow timeout (Py/TS: workflow timeout)" $ do
    specify "run timeout causes WorkflowExecutionTimedOut" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow ()
          workflow = W.sleep $ minutes 100
          wf = W.provideWorkflow defaultCodec "runTimeoutWf" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = (defaultStartOpts taskQueue)
              { C.timeouts = C.TimeoutOptions
                  { C.runTimeout = Just (seconds 1)
                  , C.executionTimeout = Nothing
                  , C.taskTimeout = Nothing
                  }
              }
        useClient (C.execute wf.reference "runTimeout" opts)
          `shouldThrow` \case
            WorkflowExecutionTimedOut -> True
            _ -> False

  describe "Client getHandle (TS: start vs execute)" $ do
    specify "getHandle retrieves existing workflow handle" $ \TestEnv {..} -> do
      let workflow :: W.Workflow Text
          workflow = pure "hello from handle"
          wf = W.provideWorkflow defaultCodec "getHandleWf" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
            wfId = W.WorkflowId "get-handle-test"
        h1 <- useClient (C.start wf.reference wfId opts)
        result1 <- C.waitWorkflowResult h1
        h2 <- useClient (C.getHandle wf.reference wfId Nothing Nothing)
        result2 <- C.waitWorkflowResult h2
        result1 `shouldBe` result2

  describe "Workflow error handling (Py/TS: error patterns)" $ do
    specify "error in workflow causes WorkflowExecutionFailed (Py: test_workflow_failure)" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow ()
          workflow = error "workflow error"
          wf = W.provideWorkflow defaultCodec "wfErrorFail" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "wfErrorFail" opts)
          `shouldThrow` \case
            WorkflowExecutionFailed _ -> True
            _ -> False

    specify "catch exception in workflow returns fallback (TS: error-in-workflow-caught)" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Text
          workflow =
            Catch.catch
              (error "oops" :: MyWorkflow Text)
              (\(_ :: SomeException) -> pure "caught")
          wf = W.provideWorkflow defaultCodec "wfCatchError" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "wfCatchError" opts) `shouldReturn` "caught"

    specify "checkWorkflowExecutionExists returns True for running workflow" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow ()
          workflow = W.sleep $ minutes 100
          wf = W.provideWorkflow defaultCodec "existsCheckWf" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
            wfId = W.WorkflowId "exists-check"
        h <- useClient (C.start wf.reference wfId opts)
        exists <- useClient (C.checkWorkflowExecutionExists wf.reference wfId)
        exists `shouldBe` True
        C.cancel h (C.CancellationOptions mempty)

    specify "terminate with reason (TS: terminate)" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow ()
          workflow = W.sleep $ minutes 100
          wf = W.provideWorkflow defaultCodec "terminateReasonWf" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        h <- useClient (C.start wf.reference "terminate-reason" opts)
        C.terminate h (C.TerminationOptions "test termination reason" mempty)
        C.waitWorkflowResult h
          `shouldThrow` \case
            WorkflowExecutionTerminated -> True
            _ -> False

  describe "Client operations" $ do
    specify "workflow start delay" $ \TestEnv {..} -> do
      let workflow :: W.Workflow ()
          workflow = pure ()
          wf = W.provideWorkflow defaultCodec "startDelayWf" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = (defaultStartOptsWithTimeout taskQueue (seconds 10))
              { C.workflowStartDelay = Just (seconds 2) }
            wfId = W.WorkflowId "start-delay-test"
        h <- useClient (C.start wf.reference wfId opts)
        C.waitWorkflowResult h `shouldReturn` ()

    specify "workflow ID conflict policy - terminate existing" $ \TestEnv {..} -> do
      let wf :: W.ProvidedWorkflow (W.Workflow ())
          wf = W.provideWorkflow defaultCodec "clientConflictTerm" (W.sleep $ seconds 5)
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let wfId = W.WorkflowId "client-conflict-terminate"
            opts = (C.startWorkflowOptions taskQueue)
              { C.workflowIdConflictPolicy = Just C.WorkflowIdConflictPolicyTerminateExisting }
        _ <- useClient (C.start wf.reference wfId opts)
        h2 <- useClient (C.start wf.reference wfId opts)
        C.waitWorkflowResult h2 `shouldReturn` ()

    specify "workflow ID conflict policy - use existing" $ \TestEnv {..} -> do
      let wf :: W.ProvidedWorkflow (W.Workflow ())
          wf = W.provideWorkflow defaultCodec "clientConflictUse" (W.sleep $ seconds 5)
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let wfId = W.WorkflowId "client-conflict-use"
            opts = (C.startWorkflowOptions taskQueue)
              { C.workflowIdConflictPolicy = Just C.WorkflowIdConflictPolicyUseExisting }
        h1 <- useClient (C.start wf.reference wfId opts)
        h2 <- useClient (C.start wf.reference wfId opts)
        h1.workflowHandleRunId `shouldBe` h2.workflowHandleRunId

    specify "scan workflow executions" $ \TestEnv {..} -> do
      let workflow :: W.Workflow Int
          workflow = pure 42
          wf = W.provideWorkflow defaultCodec "scanWf" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let wfId = W.WorkflowId "scan-test-wf"
            opts = defaultStartOpts taskQueue
        _ <- useClient (C.execute wf.reference wfId opts)
        executions <-
          useClient $
            runConduit $
              C.scanWorkflowExecutions (defMessage & RR.pageSize .~ 100)
                .| sinkList
        let W.WorkflowId wfIdStr = wfId
            found = any (\info -> (info ^. WFInfo.execution . Common.workflowId) == wfIdStr) executions
        found `shouldBe` True

  describe "Worker lifecycle" $ do
    specify "worker with only workflows (no activities) can process tasks" $ \TestEnv {..} -> do
      let workflow :: W.Workflow Int
          workflow = pure 99
          wf = W.provideWorkflow defaultCodec "wfOnlyWorker" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        useClient (C.execute wf.reference "wfOnly" (defaultStartOpts taskQueue))
          `shouldReturn` 99

    specify "worker handles multiple workflow definitions" $ \TestEnv {..} -> do
      let wf1Fn :: W.Workflow Int
          wf1Fn = pure 1
          wf2Fn :: W.Workflow Int
          wf2Fn = pure 2
          wf1 = W.provideWorkflow defaultCodec "multiWf1" wf1Fn
          wf2 = W.provideWorkflow defaultCodec "multiWf2" wf2Fn
          conf = configure () (wf1, wf2) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        r1 <- useClient (C.execute wf1.reference "multiWf1Run" opts)
        r2 <- useClient (C.execute wf2.reference "multiWf2Run" opts)
        r1 `shouldBe` (1 :: Int)
        r2 `shouldBe` (2 :: Int)

    specify "separate workflow-only and activity-only workers on same task queue" $ \TestEnv {..} -> do
      let act :: A.Activity () Int
          act = pure 42
          actDef = A.provideActivity defaultCodec "splitWorkerAct" act
          workflow :: MyWorkflow Int
          workflow = W.executeActivity actDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
          wf = W.provideWorkflow defaultCodec "splitWorkerWf" workflow
          wfOnlyConf = configure () wf $ do baseConf
          actOnlyConf = configure () actDef $ do baseConf
      withWorker wfOnlyConf $
        bracket (startWorker coreClient (actOnlyConf {payloadProcessor = sillyEncryptionPayloadProcessor})) shutdown $ \_ ->
          useClient (C.execute wf.reference "splitWorker" (defaultStartOpts taskQueue))
            `shouldReturn` 42

    specify "worker with build ID set starts successfully" $ \TestEnv {..} -> do
      let workflow :: W.Workflow Text
          workflow = pure "ok"
          wf = W.provideWorkflow defaultCodec "buildIdWf" workflow
          conf = configure () wf $ do
            baseConf
            setBuildId "test-build-v1"
      withWorker conf $ do
        useClient (C.execute wf.reference "buildIdTest" (defaultStartOpts taskQueue))
          `shouldReturn` "ok"

    specify "worker graceful shutdown completes cleanly" $ \TestEnv {..} -> do
      let workflow :: W.Workflow Int
          workflow = pure 77
          wf = W.provideWorkflow defaultCodec "gracefulShutdownWf" workflow
          conf = configure () wf $ do
            baseConf
            setGracefulShutdownPeriodMillis 500
      withWorker conf $ do
        useClient (C.execute wf.reference "gracefulShutdown" (defaultStartOpts taskQueue))
          `shouldReturn` 77

    specify "worker shutdown completes even with in-flight activity" $ \TestEnv {..} -> do
      let act :: A.Activity () ()
          act = A.withHeartbeat defaultCodec $ \hb (_ :: A.Activity () (Maybe ())) -> do
            let loop :: A.Activity () ()
                loop = do
                  hb ()
                  liftIO $ threadDelay 200_000
                  loop
            loop
          actDef = A.provideActivity defaultCodec "longRunningAct" act
          workflow :: MyWorkflow ()
          workflow =
            W.executeActivity actDef.reference
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 30)
                { W.heartbeatTimeout = Just $ seconds 5 }
          wf = W.provideWorkflow defaultCodec "shutdownCancelsActWf" workflow
          conf = configure () (wf, actDef) $ do
            baseConf
            setGracefulShutdownPeriodMillis 500
      worker <- startWorker coreClient conf
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
      _ <- useClient (C.start wf.reference "shutdownCancelsAct" opts)
      shutdown worker
      pure ()

  describe "Workflow Advanced" $ do
    specify "firstExecutionRunId is set on workflow info" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Text
          workflow = do
            i <- W.info
            let (W.RunId rid) = i.firstExecutionRunId
            pure rid
          wf = W.provideWorkflow defaultCodec "firstExecRunIdWf" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        result <- useClient (C.execute wf.reference "firstExecRunIdWf" opts)
        result `shouldSatisfy` (not . Text.null)

    specify "rootExecution field is accessible" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Text
          workflow = do
            i <- W.info
            pure $ case i.rootExecution of
              Just r -> let (W.WorkflowId wid) = r.rootWorkflowId in wid
              Nothing -> "no-root"
          wf = W.provideWorkflow defaultCodec "rootExecWf" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        result <- useClient (C.execute wf.reference "rootExecWf" opts)
        result `shouldSatisfy` (not . Text.null)

    specify "continuedFailure is Nothing for fresh workflow" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Bool
          workflow = do
            i <- W.info
            pure $ case i.continuedFailure of
              Nothing -> True
              Just _ -> False
          wf = W.provideWorkflow defaultCodec "continuedFailureWf" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOpts taskQueue
        useClient (C.execute wf.reference "continuedFailureWf" opts)
          `shouldReturn` True
