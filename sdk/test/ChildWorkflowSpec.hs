-- Pinned here for the formatter: this module is missing from the cabal
-- other-modules list, so fourmolu does not see the default extension and
-- rewrites @x.field@ as composition.
{-# LANGUAGE OverloadedRecordDot #-}

module ChildWorkflowSpec where

import Control.Exception (SomeException)
import qualified Control.Monad.Catch as Catch
import Data.Text (Text)
import qualified Data.Text as Text
import Lens.Family2
import qualified Proto.Temporal.Api.Common.V1.Message_Fields as Common
import qualified Proto.Temporal.Api.History.V1.Message_Fields as History
import RequireCallStack (provideCallStack)
import qualified Temporal.Client as C
import Temporal.Duration
import Temporal.Exception
import Temporal.Payload
import Temporal.SearchAttributes
import Temporal.Worker
import Temporal.Workflow (StartChildWorkflowOptions (priority, timeoutOptions, workflowId, workflowIdReusePolicy))
import qualified Temporal.Workflow as W
import Test.Hspec
import TestHelpers


spec :: Spec
spec = withTestServer_ tests


tests :: SpecWith TestEnv
tests = describe "Child Workflows" $ do
  specify "basic invoke and return result" $ \TestEnv {..} -> do
    let child :: Int -> W.Workflow Bool
        child x = pure (even x)
        childWf = W.provideWorkflow defaultCodec "isEvenChild" child
        parent :: MyWorkflow Bool
        parent = do
          ch <- W.startChildWorkflow childWf.reference W.defaultChildWorkflowOptions 2
          W.waitChildWorkflowResult ch
        parentWf = W.provideWorkflow defaultCodec "invokeChild" parent
        conf = configure () (childWf, parentWf) $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
      useClient (C.execute parentWf.reference "childInvoke" opts)
        `shouldReturn` True

  specify "child workflow with different args" $ \TestEnv {..} -> do
    let child :: Int -> Text -> W.Workflow Text
        child n prefix = pure $ prefix <> " x" <> Text.pack (show n)
        childWf = W.provideWorkflow defaultCodec "argChild" child
        parent :: MyWorkflow Text
        parent = do
          ch <- W.startChildWorkflow childWf.reference W.defaultChildWorkflowOptions 3 "item"
          W.waitChildWorkflowResult ch
        parentWf = W.provideWorkflow defaultCodec "argParent" parent
        conf = configure () (childWf, parentWf) $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
      useClient (C.execute parentWf.reference "childArgs" opts)
        `shouldReturn` "item x3"

  specify "child workflow failure propagates to parent" $ \TestEnv {..} -> do
    let child :: W.Workflow ()
        child = error "child exploded"
        childWf = W.provideWorkflow defaultCodec "failChild" child
        parent :: MyWorkflow ()
        parent = do
          ch <- W.startChildWorkflow childWf.reference W.defaultChildWorkflowOptions
          W.waitChildWorkflowResult ch
        parentWf = W.provideWorkflow defaultCodec "failParent" parent
        conf = configure () (childWf, parentWf) $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
      useClient (C.execute parentWf.reference "childFail" opts)
        `shouldThrow` \case
          WorkflowExecutionFailed _ -> True
          _ -> False

  specify "cancel child workflow immediately" $ \TestEnv {..} -> do
    let child :: MyWorkflow ()
        child = W.sleep $ minutes 1
        childWf = W.provideWorkflow defaultCodec "cancelChild" child
        parent :: MyWorkflow String
        parent = do
          ch <- W.startChildWorkflow childWf.reference W.defaultChildWorkflowOptions
          W.cancelChildWorkflowExecution ch
          result <- Catch.try $ W.waitChildWorkflowResult ch
          pure $ show (result :: Either SomeException ())
        parentWf = W.provideWorkflow defaultCodec "cancelChildParent" parent
        conf = configure () (childWf, parentWf) $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
      useClient (C.execute parentWf.reference "cancelChildImm" opts)
        `shouldReturn` "Left ChildWorkflowCancelled"

  specify "cancel child workflow after start" $ \TestEnv {..} -> do
    let child :: MyWorkflow ()
        child = W.waitCancellation
        childWf = W.provideWorkflow defaultCodec "cancelAfterStartChild" child
        parent :: MyWorkflow String
        parent = do
          ch <- W.startChildWorkflow childWf.reference W.defaultChildWorkflowOptions
          W.waitChildWorkflowStart ch
          W.cancelChildWorkflowExecution ch
          result <- Catch.try $ W.waitChildWorkflowResult ch
          pure $ show (result :: Either SomeException ())
        parentWf = W.provideWorkflow defaultCodec "cancelAfterStartParent" parent
        conf = configure () (childWf, parentWf) $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
      useClient (C.execute parentWf.reference "cancelChildAfterStart" opts)
        `shouldReturn` "Left ChildWorkflowCancelled"

  specify "multiple child workflows" $ \TestEnv {..} -> do
    let child :: Int -> W.Workflow Int
        child x = pure (x * x)
        childWf = W.provideWorkflow defaultCodec "squareChild" child
        parent :: MyWorkflow [Int]
        parent = do
          h1 <- W.startChildWorkflow childWf.reference W.defaultChildWorkflowOptions 2
          h2 <- W.startChildWorkflow childWf.reference W.defaultChildWorkflowOptions 3
          h3 <- W.startChildWorkflow childWf.reference W.defaultChildWorkflowOptions 4
          r1 <- W.waitChildWorkflowResult h1
          r2 <- W.waitChildWorkflowResult h2
          r3 <- W.waitChildWorkflowResult h3
          pure [r1, r2, r3]
        parentWf = W.provideWorkflow defaultCodec "multiChildParent" parent
        conf = configure () (childWf, parentWf) $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
      useClient (C.execute parentWf.reference "multiChild" opts)
        `shouldReturn` [4, 9, 16]

  specify "nested child workflows" $ \TestEnv {..} -> do
    let grandchild :: W.Workflow Int
        grandchild = pure 42
        grandchildWf = W.provideWorkflow defaultCodec "grandchild" grandchild
        child :: MyWorkflow Int
        child = do
          ch <- W.startChildWorkflow grandchildWf.reference W.defaultChildWorkflowOptions
          W.waitChildWorkflowResult ch
        childWf = W.provideWorkflow defaultCodec "middleChild" child
        parent :: MyWorkflow Int
        parent = do
          ch <- W.startChildWorkflow childWf.reference W.defaultChildWorkflowOptions
          W.waitChildWorkflowResult ch
        parentWf = W.provideWorkflow defaultCodec "nestedParent" parent
        conf = configure () (grandchildWf, childWf, parentWf) $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
      useClient (C.execute parentWf.reference "nestedChild" opts)
        `shouldReturn` 42

  specify "child workflow with custom ID reuse policy" $ \TestEnv {..} -> do
    childId <- uuidText
    let child :: MyWorkflow ()
        child = W.sleep $ seconds 2
        childWf = W.provideWorkflow defaultCodec "reuseChild" child
        parent :: MyWorkflow ()
        parent = do
          let opts =
                W.defaultChildWorkflowOptions
                  { workflowId = Just $ W.WorkflowId childId
                  , workflowIdReusePolicy = W.WorkflowIdReusePolicyAllowDuplicateFailedOnly
                  }
          W.executeChildWorkflow childWf.reference opts
        parentWf = W.provideWorkflow defaultCodec "reuseParent" parent
        conf = configure () (childWf, parentWf) $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
      useClient (C.execute parentWf.reference "childReuse" opts)
        `shouldReturn` ()

  specify "child workflow with explicit priority" $ \TestEnv {..} -> do
    let child :: W.Workflow Int
        child = pure 7
        childWf = W.provideWorkflow defaultCodec "priorityChild" child
        parent :: MyWorkflow Int
        parent =
          W.executeChildWorkflow childWf.reference W.defaultChildWorkflowOptions {priority = Just (W.mkPriority 1)}
        parentWf = W.provideWorkflow defaultCodec "priorityParent" parent
        conf = configure () (childWf, parentWf) $ do baseConf
    withWorker conf $ do
      wfId <- uuidText
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
      (result, hist) <- useClient $ do
        h <- C.start parentWf.reference (W.WorkflowId wfId) opts
        result <- C.waitWorkflowResult h
        hist <- C.fetchHistory h
        pure (result, hist)
      result `shouldBe` 7
      let initiatedPriorityKeys = do
            ev <- hist ^. History.events
            Just attrs <- pure (ev ^. History.maybe'startChildWorkflowExecutionInitiatedEventAttributes)
            pure (attrs ^. History.priority . Common.priorityKey)
      initiatedPriorityKeys `shouldBe` [1]

  specify "executeChildWorkflow convenience" $ \TestEnv {..} -> do
    let child :: W.Workflow Int
        child = pure 99
        childWf = W.provideWorkflow defaultCodec "execChild" child
        parent :: MyWorkflow Int
        parent = W.executeChildWorkflow childWf.reference W.defaultChildWorkflowOptions
        parentWf = W.provideWorkflow defaultCodec "execParent" parent
        conf = configure () (childWf, parentWf) $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
      useClient (C.execute parentWf.reference "execChild" opts)
        `shouldReturn` 99

  specify "child workflow timeout (TS: child-workflow-timeout)" $ \TestEnv {..} -> do
    let child :: MyWorkflow ()
        child = W.sleep $ minutes 100
        childWf = W.provideWorkflow defaultCodec "childTimeout" child
        parent :: MyWorkflow String
        parent = do
          let childOpts =
                (W.defaultChildWorkflowOptions :: W.StartChildWorkflowOptions)
                  { timeoutOptions =
                      W.TimeoutOptions
                        { W.executionTimeout = Just $ seconds 1
                        , W.runTimeout = Just $ seconds 1
                        , W.taskTimeout = Nothing
                        }
                  }
          result <- Catch.try $ W.executeChildWorkflow childWf.reference childOpts
          pure $ show (result :: Either SomeException ())
        parentWf = W.provideWorkflow defaultCodec "childTimeoutParent" parent
        conf = configure () (childWf, parentWf) $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 15)
      result <- useClient (C.execute parentWf.reference "childTimeout" opts)
      result `shouldSatisfy` \s -> "Left" `elem` words s

  specify "child workflow start fail / already started (Py/TS: child-workflow-start-fail)" $ \TestEnv {..} -> do
    let child :: MyWorkflow ()
        child = W.sleep $ minutes 1
        childWf = W.provideWorkflow defaultCodec "childStartFail" child
        parent :: MyWorkflow Bool
        parent = do
          let childOpts =
                (W.defaultChildWorkflowOptions :: W.StartChildWorkflowOptions)
                  { workflowId = Just "fixed-child-id-for-dup"
                  , workflowIdReusePolicy = W.WorkflowIdReusePolicyRejectDuplicate
                  }
          h1 <- W.startChildWorkflow childWf.reference childOpts
          W.waitChildWorkflowStart h1
          h2 <- W.startChildWorkflow childWf.reference childOpts
          result <- Catch.try @_ @SomeException $ W.waitChildWorkflowStart h2
          case result of
            Left _ -> pure True
            Right _ -> pure False
        parentWf = W.provideWorkflow defaultCodec "childStartFailParent" parent
        conf = configure () (childWf, parentWf) $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 15)
      useClient (C.execute parentWf.reference "childStartFail" opts)
        `shouldReturn` True

  specify "signal child workflow (Py/TS: child-workflow-signals)" $ \TestEnv {..} -> do
    let childSignal :: W.KnownSignal '[Int]
        childSignal = W.KnownSignal "childSig" defaultCodec
        child :: W.Workflow Int
        child = provideCallStack $ do
          st <- W.newStateVar (0 :: Int)
          W.setSignalHandler childSignal $ \n -> W.writeStateVar st n
          W.waitCondition $ (> 0) <$> W.readStateVar st
          W.readStateVar st
        childWf = W.provideWorkflow defaultCodec "childSigChild" child
        parent :: MyWorkflow Int
        parent = do
          ch <- W.startChildWorkflow childWf.reference W.defaultChildWorkflowOptions
          W.waitChildWorkflowStart ch
          _ <- W.signal ch childSignal 42
          W.waitChildWorkflowResult ch
        parentWf = W.provideWorkflow defaultCodec "childSigParent" parent
        conf = configure () (childWf, parentWf) $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 15)
      useClient (C.execute parentWf.reference "childSig" opts)
        `shouldReturn` 42

  specify "cancel child workflow (TS: child-workflow-cancel)" $ \TestEnv {..} -> do
    let child :: MyWorkflow ()
        child = W.sleep $ minutes 100
        childWf = W.provideWorkflow defaultCodec "cancelChild" child
        parent :: MyWorkflow Bool
        parent = do
          ch <- W.startChildWorkflow childWf.reference W.defaultChildWorkflowOptions
          W.waitChildWorkflowStart ch
          W.cancelChildWorkflowExecution ch
          result <- Catch.try @_ @SomeException $ W.waitChildWorkflowResult ch
          case result of
            Left _ -> pure True
            Right _ -> pure False
        parentWf = W.provideWorkflow defaultCodec "cancelChildParent" parent
        conf = configure () (childWf, parentWf) $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 15)
      useClient (C.execute parentWf.reference "cancelChild" opts)
        `shouldReturn` True

  specify "child workflow returns complex result (TS: child-workflow-result)" $ \TestEnv {..} -> do
    let child :: MyWorkflow (Text, Int)
        child = pure ("hello", 42)
        childWf = W.provideWorkflow defaultCodec "childResult" child
        parent :: MyWorkflow (Text, Int)
        parent = W.executeChildWorkflow childWf.reference W.defaultChildWorkflowOptions
        parentWf = W.provideWorkflow defaultCodec "childResultParent" parent
        conf = configure () (childWf, parentWf) $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
      useClient (C.execute parentWf.reference "childResult" opts)
        `shouldReturn` ("hello", 42)

  specify "child workflow in different task queue (TS: child-workflow-task-queue)" $ \TestEnv {..} -> do
    let child :: MyWorkflow Text
        child = pure "from-child"
        childWf = W.provideWorkflow defaultCodec "childTaskQueueChild" child
        parent :: MyWorkflow Text
        parent =
          W.executeChildWorkflow childWf.reference W.defaultChildWorkflowOptions
        parentWf = W.provideWorkflow defaultCodec "childTaskQueueParent" parent
        conf = configure () (childWf, parentWf) $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
      useClient (C.execute parentWf.reference "childTaskQueue" opts)
        `shouldReturn` "from-child"

  specify "nested child workflows (TS: nested children)" $ \TestEnv {..} -> do
    let leaf :: MyWorkflow Int
        leaf = pure 1
        leafWf = W.provideWorkflow defaultCodec "nestedLeaf" leaf
        mid :: MyWorkflow Int
        mid = W.executeChildWorkflow leafWf.reference W.defaultChildWorkflowOptions
        midWf = W.provideWorkflow defaultCodec "nestedMid" mid
        root :: MyWorkflow Int
        root = W.executeChildWorkflow midWf.reference W.defaultChildWorkflowOptions
        rootWf = W.provideWorkflow defaultCodec "nestedRoot" root
        conf = configure () (leafWf, midWf, rootWf) $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 15)
      useClient (C.execute rootWf.reference "nestedChildren" opts)
        `shouldReturn` 1
