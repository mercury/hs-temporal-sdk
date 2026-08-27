{-# LANGUAGE CPP #-}
-- Pinned here for the formatter: with CPP enabled it no longer picks the
-- extension up from the cabal defaults and rewrites @x.field@ as composition.
{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

-- hlint's CPP pass hides the Template Haskell splices below, producing false
-- "unused pragma" and "redundant bracket" hints for the @$$(...)@ occurrences.
{-# HLINT ignore "Unused LANGUAGE pragma" #-}
{-# HLINT ignore "Redundant bracket" #-}

module UpdateSpec where

import Control.Exception (SomeException)
import qualified Control.Monad.Catch as Catch
import Data.IORef
import Data.Maybe (fromJust)
import Data.Text (Text)
import Data.Vector (Vector)
import qualified Data.Vector as V
import DiscoverInstances (discoverInstances)
import IntegrationSpec.Updates
import Lens.Family2
import qualified Proto.Temporal.Api.Failure.V1.Message_Fields as Failure
import qualified Proto.Temporal.Api.History.V1.Message_Fields as History
import RequireCallStack (provideCallStack)
import Temporal.Activity
import qualified Temporal.Client as C
import Temporal.Duration
import Temporal.Exception
import Temporal.Interceptor


#if MIN_VERSION_hs_opentelemetry_api(1,0,0)
import Control.Exception (bracket_)
import Control.Monad (when)
import Data.List (isInfixOf)
import OpenTelemetry.Internal.Logging (getGlobalErrorHandler, setGlobalErrorHandler)
#endif
import Temporal.Payload
import Temporal.TH (ActivityFn, WorkflowFn, discoverDefinitions)
import Temporal.Worker
import qualified Temporal.Workflow as W
import Temporal.Workflow.Unsafe (performUnsafeNonDeterministicIO)
import Test.Hspec
import TestHelpers


spec :: Spec
spec = do
  aroundAll withServer $ do
    aroundAllWith (flip $ setup mempty) updateTests
    updateInterceptorTests


updateConf baseConf_ = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do baseConf_


{- | The interceptor stack must never hold a thread-local context token across
a workflow suspension: suspended handlers overlap without nesting, so the
first completion detaches out of LIFO order and permanently desynchronizes
the executor thread's token state. Every later detach then logs
hs-opentelemetry's "LIFO ordering violated" diagnostic and restores a stale
context. These tests count those diagnostics via the global error handler.

hs-opentelemetry-api < 1.0 has no attach\/detach tokens, so there is no LIFO
discipline to validate there.
-}
#if MIN_VERSION_hs_opentelemetry_api(1,0,0)
lifoDisciplineTests :: SpecWith TestEnv
lifoDisciplineTests = do
  it "emits no LIFO context diagnostics when an update handler suspends" $ \TestEnv {..} -> do
    lifoErrors <- newIORef (0 :: Int)
    previousHandler <- getGlobalErrorHandler
    let countLifo msg = do
          when ("LIFO" `isInfixOf` msg) $ atomicModifyIORef' lifoErrors $ \n -> (n + 1, ())
          previousHandler msg
    count <- bracket_ (setGlobalErrorHandler countLifo) (setGlobalErrorHandler previousHandler) $ do
      let conf = updateConf baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
            updateOpts = C.UpdateOptions { updateId = "update-lifo-discipline", updateHeaders = mempty }
        (updateResult, workflowResult) <- useClient do
          h <- C.start UpdateThatSleeps "update-lifo-discipline" opts
          ur <- C.executeUpdate h testUpdate updateOpts 12
          wr <- C.waitWorkflowResult h
          pure (ur, wr)
        updateResult `shouldBe` 12
        workflowResult `shouldBe` 12
      readIORef lifoErrors
    count `shouldBe` 0

  it "emits no LIFO context diagnostics when two update handlers suspend concurrently" $ \TestEnv {..} -> do
    lifoErrors <- newIORef (0 :: Int)
    previousHandler <- getGlobalErrorHandler
    let countLifo msg = do
          when ("LIFO" `isInfixOf` msg) $ atomicModifyIORef' lifoErrors $ \n -> (n + 1, ())
          previousHandler msg
    count <- bracket_ (setGlobalErrorHandler countLifo) (setGlobalErrorHandler previousHandler) $ do
      let conf = updateConf baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
            updateOptsA = C.UpdateOptions { updateId = "update-lifo-concurrent-a", updateHeaders = mempty }
            updateOptsB = C.UpdateOptions { updateId = "update-lifo-concurrent-b", updateHeaders = mempty }
        (resultA, resultB, workflowResult) <- useClient do
          h <- C.start ConcurrentSleepingUpdates "update-lifo-concurrent" opts
          -- Update A sleeps 1s, update B sleeps 2s: both handlers suspend
          -- concurrently and A (attached first) completes first.
          ha <- C.startUpdate h testUpdate updateOptsA 1
          hb <- C.startUpdate h testUpdate updateOptsB 2
          ra <- C.waitUpdateResult ha
          rb <- C.waitUpdateResult hb
          wr <- C.waitWorkflowResult h
          pure (ra, rb, wr)
        resultA `shouldBe` 1
        resultB `shouldBe` 3
        workflowResult `shouldBe` 3
      readIORef lifoErrors
    count `shouldBe` 0
#else
lifoDisciplineTests :: SpecWith TestEnv
lifoDisciplineTests = pure ()
#endif


updateTests :: SpecWith TestEnv
updateTests = describe "Update" $ do
  describe "startUpdate" $ do
    it "propagates validation failures" $ \TestEnv {..} -> do
      let conf = updateConf baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
            updateOpts = C.UpdateOptions {updateId = "startUpdate-rejects", updateHeaders = mempty}
        ( useClient do
            h <- C.start UpdateWithValidator "startUpdate-rejects" opts
            C.startUpdate h testUpdate updateOpts (-12)
          )
          `shouldThrow` \case
            UpdateFailure failure -> failure ^. Failure.message == "in a bad state!!!"

    it "propagates validation exceptions" $ \TestEnv {..} -> do
      let conf = updateConf baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
            updateOpts = C.UpdateOptions {updateId = "startUpdate-throws", updateHeaders = mempty}
        ( useClient do
            h <- C.start UpdateWithValidator "startUpdate-throws" opts
            C.startUpdate h testUpdate updateOpts 5
          )
          `shouldThrow` \case
            UpdateFailure _ -> True

  describe "executeUpdate" $ do
    it "works with no validator" $ \TestEnv {..} -> do
      let conf = updateConf baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
            updateOpts = C.UpdateOptions {updateId = "update-no-val", updateHeaders = mempty}
        (updateResult, workflowResult) <- useClient do
          h <- C.start UpdateWithoutValidator "update-no-val" opts
          ur <- C.executeUpdate h testUpdate updateOpts 12
          wr <- C.waitWorkflowResult h
          pure (ur, wr)
        updateResult `shouldBe` 12
        workflowResult `shouldBe` 12

    it "works with a validator" $ \TestEnv {..} -> do
      let conf = updateConf baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
            updateOpts = C.UpdateOptions {updateId = "update-with-val", updateHeaders = mempty}
        (updateResult, workflowResult) <- useClient do
          h <- C.start UpdateWithValidator "update-with-val" opts
          ur <- C.executeUpdate h testUpdate updateOpts 12
          wr <- C.waitWorkflowResult h
          pure (ur, wr)
        updateResult `shouldBe` 12
        workflowResult `shouldBe` 12

    it "propagates validation failures" $ \TestEnv {..} -> do
      let conf = updateConf baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
            updateOpts = C.UpdateOptions {updateId = "update-rejects", updateHeaders = mempty}
        ( useClient do
            h <- C.start UpdateWithValidator "update-rejects" opts
            C.executeUpdate h testUpdate updateOpts (-12)
          )
          `shouldThrow` \case
            UpdateFailure _ -> True

    it "propagates validator exceptions" $ \TestEnv {..} -> do
      let conf = updateConf baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
            updateOpts = C.UpdateOptions {updateId = "update-val-throws", updateHeaders = mempty}
        ( useClient do
            h <- C.start UpdateWithValidator "update-val-throws" opts
            C.executeUpdate h testUpdate updateOpts 5
          )
          `shouldThrow` \case
            UpdateFailure _ -> True

    it "propagates update handler exceptions" $ \TestEnv {..} -> do
      let conf = updateConf baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
            updateOpts = C.UpdateOptions {updateId = "update-handler-throws", updateHeaders = mempty}
        ( useClient do
            h <- C.start UpdateThatThrows "update-handler-throws" opts
            C.executeUpdate h testUpdate updateOpts 5
          )
          `shouldThrow` \case
            UpdateFailure _ -> True

    it "bad args fail" $ \TestEnv {..} -> do
      let testUpdateFn :: Int -> W.Workflow Int
          testUpdateFn = pure
          testWorkflowFn :: W.Workflow Int
          testWorkflowFn = provideCallStack do
            W.setUpdateHandler testUpdate testUpdateFn Nothing
            W.sleep $ seconds 1
            pure 1
          wfRef = W.provideWorkflow defaultCodec "badArgsUpdate" testWorkflowFn
          badUpdateRef = W.KnownUpdate @'[String] @String defaultCodec "test-update"
          conf = configure () wfRef $ do baseConf
          opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
          updateOpts = C.UpdateOptions {updateId = "bad-args", updateHeaders = mempty}
      withWorker conf $ do
        ( useClient do
            h <- C.start wfRef "bad-args" opts
            C.executeUpdate h badUpdateRef updateOpts "ruhroh"
          )
          `shouldThrow` \case
            UpdateFailure _ -> True

    it "works with suspend (sleep in update)" $ \TestEnv {..} -> do
      let conf = updateConf baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
            updateOpts = C.UpdateOptions {updateId = "update-suspends", updateHeaders = mempty}
        (updateResult, workflowResult) <- useClient do
          h <- C.start UpdateThatSleeps "update-suspends" opts
          ur <- C.executeUpdate h testUpdate updateOpts 12
          wr <- C.waitWorkflowResult h
          pure (ur, wr)
        updateResult `shouldBe` 12
        workflowResult `shouldBe` 12

    lifoDisciplineTests

    it "not processed if workflow throws first" $ \TestEnv {..} -> do
      let conf = updateConf baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
            updateOpts = C.UpdateOptions {updateId = "wf-throws-first", updateHeaders = mempty}
        (eUpdateResult, eWorkflowResult) <- useClient do
          h <- C.start WorkflowThatThrowsBeforeTheUpdate "wf-throws-first" opts
          wr <- Catch.try $ C.waitWorkflowResult h
          ur <- Catch.try $ C.executeUpdate h testUpdate updateOpts 12
          let _ = show (ur :: Either RpcError Int)
          let _ = show (wr :: Either WorkflowExecutionClosed Int)
          pure (ur, wr)
        eUpdateResult `shouldSatisfy` \case
          Left (RpcError _ message _) -> message == "workflow execution already completed"
          _ -> False
        eWorkflowResult `shouldSatisfy` \case
          Left (WorkflowExecutionFailed attrs) -> (attrs ^. History.failure . Failure.message) == "Current state var: 0"
          _ -> False

    it "processed if workflow throws later" $ \TestEnv {..} -> do
      let conf = updateConf baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
            updateOpts = C.UpdateOptions {updateId = "wf-throws-later", updateHeaders = mempty}
        (eUpdateResult, eWorkflowResult) <- useClient do
          h <- C.start WorkflowThatThrowsAfterTheUpdate "wf-throws-later" opts
          ur <- Catch.try $ C.executeUpdate h testUpdate updateOpts 12
          wr <- Catch.try $ C.waitWorkflowResult h
          let _ = show (ur :: Either RpcError Int)
          let _ = show (wr :: Either WorkflowExecutionClosed Int)
          pure (ur, wr)
        eUpdateResult `shouldSatisfy` \case
          Right 12 -> True
          _ -> False
        eWorkflowResult `shouldSatisfy` \case
          Left (WorkflowExecutionFailed attrs) -> (attrs ^. History.failure . Failure.message) == "Current state var: 12"
          _ -> False

  describe "multiple updates" $ do
    it "sequential updates accumulate state" $ \TestEnv {..} -> do
      let conf = updateConf baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        (u1, wr) <- useClient do
          h <- C.start UpdateWithoutValidator "multi-update" opts
          u1 <- C.executeUpdate h testUpdate (C.UpdateOptions "u1" mempty) 5
          wr <- C.waitWorkflowResult h
          pure (u1, wr)
        u1 `shouldBe` 5
        wr `shouldBe` 5

  describe "Update lifecycle (TS: update-after-complete)" $ do
    it "update on completed workflow fails" $ \TestEnv {..} -> do
      let conf = updateConf baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        result <- (Catch.try :: IO a -> IO (Either SomeException a)) $ useClient do
          h <- C.start UpdateWithoutValidator "update-after-complete" opts
          _ <- C.executeUpdate h testUpdate (C.UpdateOptions {updateId = "first", updateHeaders = mempty}) 1
          _ <- C.waitWorkflowResult h
          C.executeUpdate h testUpdate (C.UpdateOptions {updateId = "after-complete", updateHeaders = mempty}) 2
        result `shouldSatisfy` \case
          Left _ -> True
          Right _ -> False

  describe "Update advanced" $ do
    it "two sequential updates accumulate state" $ \TestEnv {..} -> do
      let conf = updateConf baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        (u1, wr) <- useClient do
          h <- C.start UpdateWithoutValidator "two-updates" opts
          ur1 <- C.executeUpdate h testUpdate (C.UpdateOptions {updateId = "upd-1", updateHeaders = mempty}) 10
          wfr <- C.waitWorkflowResult h
          pure (ur1, wfr)
        u1 `shouldBe` 10
        wr `shouldBe` 10

    it "update handler can execute activity" $ \TestEnv {..} -> do
      let addOneAct :: Int -> Activity () Int
          addOneAct n = pure (n + 1)
          actDef = provideActivity defaultCodec "addOneUpdateAct" addOneAct
          updateDef :: W.KnownUpdate '[Int] Int SomeException
          updateDef = W.KnownUpdate {knownUpdateCodec = defaultCodec, knownUpdateName = "actUpdate"}
          workflow :: MyWorkflow Int
          workflow = do
            st <- W.newStateVar (0 :: Int)
            W.setUpdateHandler
              updateDef
              ( \n -> do
                  result <-
                    W.executeActivity
                      actDef.reference
                      (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
                      n
                  W.writeStateVar st result
                  pure result
              )
              Nothing
            W.waitCondition $ (/= 0) <$> W.readStateVar st
            W.readStateVar st
          wf = W.provideWorkflow defaultCodec "updateWithActivity" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
            updateOpts = C.UpdateOptions {updateId = "act-update", updateHeaders = mempty}
        (ur, wr) <- useClient do
          h <- C.start wf.reference "updateWithActivityWf" opts
          updateResult <- C.executeUpdate h updateDef updateOpts 41
          wfResult <- C.waitWorkflowResult h
          pure (updateResult, wfResult)
        ur `shouldBe` 42
        wr `shouldBe` 42


updateInterceptorTests :: SpecWith PortNumber
updateInterceptorTests = do
  describe "Update interceptors" do
    handleUpdateWasCalled <- runIO $ newIORef False
    validateUpdateWasCalled <- runIO $ newIORef False
    updateWorkflowWasCalled <- runIO $ newIORef False
    let captureIfCalledInterceptors :: Interceptors ()
        captureIfCalledInterceptors =
          mempty
            { workflowInboundInterceptors =
                mempty
                  { handleUpdate = \input next -> do
                      performUnsafeNonDeterministicIO $ writeIORef handleUpdateWasCalled True
                      next input
                  , validateUpdate = \input next -> do
                      writeIORef validateUpdateWasCalled True
                      next input
                  }
            , clientInterceptors =
                mempty
                  { updateWorkflow = \input next -> do
                      writeIORef updateWorkflowWasCalled True
                      next input
                  }
            }
    withInterceptors captureIfCalledInterceptors do
      it "should call update interceptors" $ \TestEnv {..} -> do
        let conf = updateConf baseConf
        withWorker conf $ do
          let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
              updateOpts = C.UpdateOptions {updateId = "interceptors-called", updateHeaders = mempty}
          (updateResult, workflowResult) <- useClient do
            h <- C.start UpdateWithValidator "interceptors-called" opts
            ur <- C.executeUpdate h testUpdate updateOpts 12
            wr <- C.waitWorkflowResult h
            pure (ur, wr)
          updateResult `shouldBe` 12
          workflowResult `shouldBe` 12
          readIORef handleUpdateWasCalled `shouldReturn` True
          readIORef validateUpdateWasCalled `shouldReturn` True
          readIORef updateWorkflowWasCalled `shouldReturn` True

    handleUpdateArgs <- runIO $ newIORef (Nothing :: Maybe (Vector Payload))
    validateUpdateArgs <- runIO $ newIORef (Nothing :: Maybe (Vector Payload))
    updateWorkflowArgs <- runIO $ newIORef (Nothing :: Maybe (Vector Payload))
    let captureArgsInterceptors :: Interceptors ()
        captureArgsInterceptors =
          mempty
            { workflowInboundInterceptors =
                mempty
                  { handleUpdate = \input next -> do
                      performUnsafeNonDeterministicIO $ writeIORef handleUpdateArgs $ Just input.handleUpdateInputArgs
                      next input
                  , validateUpdate = \input next -> do
                      writeIORef validateUpdateArgs $ Just input.handleUpdateInputArgs
                      next input
                  }
            , clientInterceptors =
                mempty
                  { updateWorkflow = \input next -> do
                      writeIORef updateWorkflowArgs $ Just input.updateWorkflowArgs
                      next input
                  }
            }
    withInterceptors captureArgsInterceptors do
      it "calls update interceptors with expected args" $ \TestEnv {..} -> do
        let conf = updateConf baseConf
        withWorker conf $ do
          let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
              updateOpts = C.UpdateOptions {updateId = "interceptors-args", updateHeaders = mempty}
          (updateResult, workflowResult) <- useClient do
            h <- C.start UpdateWithValidator "interceptors-args" opts
            ur <- C.executeUpdate h testUpdate updateOpts 12
            wr <- C.waitWorkflowResult h
            pure (ur, wr)
          updateResult `shouldBe` 12
          workflowResult `shouldBe` 12
          uArgs <- readIORef handleUpdateArgs
          payloadData (V.head $ fromJust uArgs) `shouldBe` "12"
          vArgs <- readIORef validateUpdateArgs
          payloadData (V.head $ fromJust vArgs) `shouldBe` "12"
          cwArgs <- readIORef updateWorkflowArgs
          payloadData (V.head $ fromJust cwArgs) `shouldBe` "12"

    let modifyArgsInterceptors :: Interceptors ()
        modifyArgsInterceptors =
          mempty
            { workflowInboundInterceptors =
                mempty
                  { handleUpdate = \input next -> do
                      let metadata = payloadMetadata $ V.head input.handleUpdateInputArgs
                      next $ input {handleUpdateInputArgs = V.singleton Payload {payloadData = "24", payloadMetadata = metadata}}
                  }
            }
    withInterceptors modifyArgsInterceptors do
      it "supports modifying args in workflow interceptor" $ \TestEnv {..} -> do
        let conf = updateConf baseConf
        withWorker conf $ do
          let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
              updateOpts = C.UpdateOptions {updateId = "modify-args", updateHeaders = mempty}
          (updateResult, workflowResult) <- useClient do
            h <- C.start UpdateWithValidator "modify-args" opts
            ur <- C.executeUpdate h testUpdate updateOpts 12
            wr <- C.waitWorkflowResult h
            pure (ur, wr)
          updateResult `shouldBe` 24
          workflowResult `shouldBe` 24

    let modifyClientInterceptors :: Interceptors ()
        modifyClientInterceptors =
          mempty
            { clientInterceptors =
                mempty
                  { updateWorkflow = \input next -> do
                      let metadata = payloadMetadata $ V.head input.updateWorkflowArgs
                      next $ input {updateWorkflowArgs = V.singleton Payload {payloadData = "24", payloadMetadata = metadata}}
                  }
            }
    withInterceptors modifyClientInterceptors do
      it "supports modifying args in client interceptor" $ \TestEnv {..} -> do
        let conf = updateConf baseConf
        withWorker conf $ do
          let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
              updateOpts = C.UpdateOptions {updateId = "modify-client-args", updateHeaders = mempty}
          (updateResult, workflowResult) <- useClient do
            h <- C.start UpdateWithValidator "modify-client-args" opts
            ur <- C.executeUpdate h testUpdate updateOpts 12
            wr <- C.waitWorkflowResult h
            pure (ur, wr)
          updateResult `shouldBe` 24
          workflowResult `shouldBe` 24

    handleUpdateOrdering <- runIO $ newIORef ([] :: [Text])
    validateUpdateOrdering <- runIO $ newIORef ([] :: [Text])
    updateWorkflowOrdering <- runIO $ newIORef ([] :: [Text])
    let captureOrdering0 :: Interceptors ()
        captureOrdering0 =
          mempty
            { workflowInboundInterceptors =
                mempty
                  { handleUpdate = \input next -> do
                      performUnsafeNonDeterministicIO $ modifyIORef handleUpdateOrdering (++ ["a"])
                      next input
                  , validateUpdate = \input next -> do
                      modifyIORef validateUpdateOrdering (++ ["a"])
                      next input
                  }
            , clientInterceptors =
                mempty
                  { updateWorkflow = \input next -> do
                      modifyIORef updateWorkflowOrdering (++ ["a"])
                      next input
                  }
            }
        captureOrdering1 :: Interceptors ()
        captureOrdering1 =
          mempty
            { workflowInboundInterceptors =
                mempty
                  { handleUpdate = \input next -> do
                      performUnsafeNonDeterministicIO $ modifyIORef handleUpdateOrdering (++ ["b"])
                      next input
                  , validateUpdate = \input next -> do
                      modifyIORef validateUpdateOrdering (++ ["b"])
                      next input
                  }
            , clientInterceptors =
                mempty
                  { updateWorkflow = \input next -> do
                      modifyIORef updateWorkflowOrdering (++ ["b"])
                      next input
                  }
            }
    withInterceptors (captureOrdering0 <> captureOrdering1) do
      it "calls interceptors in expected order" $ \TestEnv {..} -> do
        let conf = updateConf baseConf
        withWorker conf $ do
          let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
              updateOpts = C.UpdateOptions {updateId = "interceptor-order", updateHeaders = mempty}
          (updateResult, workflowResult) <- useClient do
            h <- C.start UpdateWithValidator "interceptor-order" opts
            ur <- C.executeUpdate h testUpdate updateOpts 12
            wr <- C.waitWorkflowResult h
            pure (ur, wr)
          updateResult `shouldBe` 12
          workflowResult `shouldBe` 12
          readIORef handleUpdateOrdering `shouldReturn` ["a", "b"]
          readIORef validateUpdateOrdering `shouldReturn` ["a", "b"]
          readIORef updateWorkflowOrdering `shouldReturn` ["a", "b"]
