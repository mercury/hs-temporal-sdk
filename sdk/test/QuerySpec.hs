{-# LANGUAGE OverloadedRecordDot #-}

module QuerySpec where

import Control.Exception (SomeException)
import Control.Monad (forM_)
import qualified Control.Monad.Catch as Catch
import Data.Text (Text)
import qualified Data.Text as Text
import RequireCallStack (provideCallStack)
import qualified Temporal.Client as C
import Temporal.Duration
import Temporal.Payload
import Temporal.Worker
import qualified Temporal.Workflow as W
import Test.Hspec
import TestHelpers


spec :: Spec
spec = withTestServer_ tests


tests :: SpecWith TestEnv
tests = describe "Query" $ do
  specify "basic query returns correct value" $ \TestEnv {..} -> do
    let echoQuery :: W.KnownQuery '[Text] Text
        echoQuery = W.KnownQuery "echo" defaultCodec
        workflow :: MyWorkflow ()
        workflow = do
          W.setQueryHandler echoQuery $ \msg -> pure msg
          W.sleep $ seconds 5
        wf = W.provideWorkflow defaultCodec "basicQueryWorkflow" workflow
        conf = configure () wf $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOpts taskQueue
      h <- useClient (C.start wf.reference "basic-query-wf" opts)
      waitForWorkflowStart h
      result <- C.query h echoQuery C.defaultQueryOptions "hello"
      C.cancel h (C.CancellationOptions mempty)
      result `shouldBe` Right "hello"

  specify "query with arguments" $ \TestEnv {..} -> do
    let echoQuery :: W.KnownQuery '[Text] Text
        echoQuery = W.KnownQuery "echoArgs" defaultCodec
        workflow :: MyWorkflow ()
        workflow = do
          W.setQueryHandler echoQuery $ \msg -> pure msg
          W.sleep $ seconds 5
        wf = W.provideWorkflow defaultCodec "queryWithArgsWorkflow" workflow
        conf = configure () wf $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOpts taskQueue
      h <- useClient (C.start wf.reference "query-args-wf" opts)
      result <- C.query h echoQuery C.defaultQueryOptions "echo-me-back"
      C.cancel h (C.CancellationOptions mempty)
      result `shouldBe` Right "echo-me-back"
  specify "immediately serves newly started workflow query handlers" $ \TestEnv {..} -> do
    let query :: W.KnownQuery '[Text] Text
        query = W.KnownQuery "initializationQuery" defaultCodec
        workflow :: MyWorkflow ()
        workflow = do
          W.setQueryHandler query pure
          W.sleep $ seconds 5
        wf = W.provideWorkflow defaultCodec "initializationQueryWorkflow" workflow
        conf = configure () wf $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOpts taskQueue
      wfId <- W.WorkflowId <$> uuidText
      h <- useClient (C.start wf.reference wfId opts)
      forM_ [1 :: Int .. 100] $ \_ -> do
        result <- useClient $ C.query h query C.defaultQueryOptions "ready"
        result `shouldBe` Right "ready"
      C.cancel h (C.CancellationOptions mempty)
  specify "query reflects current state" $ \TestEnv {..} -> do
    let incSignal :: W.KnownSignal '[]
        incSignal = W.KnownSignal "inc" defaultCodec
        stateQuery :: W.KnownQuery '[Text] Int
        stateQuery = W.KnownQuery "state" defaultCodec
        workflow :: MyWorkflow Int
        workflow = do
          counter <- W.newStateVar (0 :: Int)
          W.setSignalHandler incSignal $ W.modifyStateVar counter (+ 1)
          W.setQueryHandler stateQuery $ \_unused -> W.readStateVar counter
          W.waitCondition $ (>= 2) <$> W.readStateVar counter
          W.readStateVar counter
        wf = W.provideWorkflow defaultCodec "queryStateWorkflow" workflow
        conf = configure () wf $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOpts taskQueue
      h <- useClient (C.start wf.reference "query-state-wf" opts)
      r0 <- C.query h stateQuery C.defaultQueryOptions "q"
      r0 `shouldBe` Right 0
      C.signal h incSignal C.defaultSignalOptions
      r1 <- C.query h stateQuery C.defaultQueryOptions "q"
      r1 `shouldBe` Right 1
      C.signal h incSignal C.defaultSignalOptions
      r2 <- C.query h stateQuery C.defaultQueryOptions "q"
      r2 `shouldBe` Right 2
      C.waitWorkflowResult h `shouldReturn` 2

  specify "query on completed workflow" $ \TestEnv {..} -> do
    let stateQuery :: W.KnownQuery '[Text] Text
        stateQuery = W.KnownQuery "finalState" defaultCodec
        workflow :: MyWorkflow Text
        workflow = do
          W.setQueryHandler stateQuery $ \_unused -> pure "completed"
          pure "done"
        wf = W.provideWorkflow defaultCodec "queryCompletedWorkflow" workflow
        conf = configure () wf $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOpts taskQueue
      wfId <- W.WorkflowId <$> uuidText
      h <- useClient (C.start wf.reference wfId opts)
      _ <- C.waitWorkflowResult h
      result <- C.query h stateQuery C.defaultQueryOptions "q"
      result `shouldBe` Right "completed"

  specify "multiple query handlers" $ \TestEnv {..} -> do
    let queryA :: W.KnownQuery '[Text] Text
        queryA = W.KnownQuery "queryA" defaultCodec
        queryB :: W.KnownQuery '[Text] Int
        queryB = W.KnownQuery "queryB" defaultCodec
        workflow :: MyWorkflow ()
        workflow = do
          W.setQueryHandler queryA $ \_unused -> pure "fromA"
          W.setQueryHandler queryB $ \_unused -> pure (42 :: Int)
          W.sleep $ seconds 5
        wf = W.provideWorkflow defaultCodec "multiQueryWorkflow" workflow
        conf = configure () wf $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOpts taskQueue
      h <- useClient (C.start wf.reference "multi-query-wf" opts)
      rA <- C.query h queryA C.defaultQueryOptions "q"
      rB <- C.query h queryB C.defaultQueryOptions "q"
      C.cancel h (C.CancellationOptions mempty)
      rA `shouldBe` Right "fromA"
      rB `shouldBe` Right 42

  specify "query does not block workflow" $ \TestEnv {..} -> do
    let echoQuery :: W.KnownQuery '[Text] Text
        echoQuery = W.KnownQuery "echoNoBlock" defaultCodec
        workflow :: MyWorkflow ()
        workflow = do
          W.setQueryHandler echoQuery $ \msg -> pure msg
          W.sleep $ seconds 10
        wf = W.provideWorkflow defaultCodec "queryNoBlockWorkflow" workflow
        conf = configure () wf $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOpts taskQueue
      h <- useClient (C.start wf.reference "query-no-block-wf" opts)
      result <- C.query h echoQuery C.defaultQueryOptions "quick"
      result `shouldBe` Right "quick"
      C.cancel h (C.CancellationOptions mempty)

  specify "query does not run waitCondition" $ \TestEnv {..} -> do
    let unblockSig :: W.KnownSignal '[]
        unblockSig = W.KnownSignal "unblock" defaultCodec
        stateQuery :: W.KnownQuery '[Text] Bool
        stateQuery = W.KnownQuery "stateNoWait" defaultCodec
        workflow :: MyWorkflow ()
        workflow = do
          st <- W.newStateVar False
          W.setSignalHandler unblockSig $ W.writeStateVar st True
          W.setQueryHandler stateQuery $ \_unused -> W.readStateVar st
          W.waitCondition (W.readStateVar st)
          pure ()
        wf = W.provideWorkflow defaultCodec "queryNoWaitCondWorkflow" workflow
        conf = configure () wf $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOpts taskQueue
      h <- useClient (C.start wf.reference "query-no-waitcond-wf" opts)
      result <- C.query h stateQuery C.defaultQueryOptions "q"
      result `shouldBe` Right False
      C.signal h unblockSig C.defaultSignalOptions
      C.waitWorkflowResult h `shouldReturn` ()

  specify "query not found returns error (TS: query not found)" $ \TestEnv {..} -> do
    let stateQuery :: W.KnownQuery '[Text] Int
        stateQuery = W.KnownQuery "nonExistentQuery" defaultCodec
        sig :: W.KnownSignal '[]
        sig = W.KnownSignal "qnfSig" defaultCodec
        workflow :: MyWorkflow ()
        workflow = provideCallStack $ do
          st <- W.newStateVar False
          W.setSignalHandler sig $ W.writeStateVar st True
          W.waitCondition (W.readStateVar st)
        wf = W.provideWorkflow defaultCodec "queryNotFoundWorkflow" workflow
        conf = configure () wf $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOpts taskQueue
      h <- useClient (C.start wf.reference "query-not-found-wf" opts)
      queryResult <- Catch.try @IO @SomeException $ C.query h stateQuery C.defaultQueryOptions "q"
      C.signal h sig C.defaultSignalOptions
      _ <- C.waitWorkflowResult h
      case queryResult of
        Left _ -> pure ()
        Right (Left _) -> pure ()
        Right (Right _) -> expectationFailure "Expected query to fail for non-existent handler"

  specify "query returns updated state after signal (Py/TS: query+signal coordination)" $ \TestEnv {..} -> do
    let sig :: W.KnownSignal '[Int]
        sig = W.KnownSignal "queryCoordSig" defaultCodec
        q :: W.KnownQuery '[()] Int
        q = W.KnownQuery "queryCoordQ" defaultCodec
        workflow :: MyWorkflow ()
        workflow = provideCallStack $ do
          st <- W.newStateVar (0 :: Int)
          W.setSignalHandler sig $ \n -> W.writeStateVar st n
          W.setQueryHandler q $ \() -> W.readStateVar st
          W.waitCondition $ (>= 10) <$> W.readStateVar st
        wf = W.provideWorkflow defaultCodec "queryCoord" workflow
        conf = configure () wf $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOpts taskQueue
      h <- useClient (C.start wf.reference "query-coord-wf" opts)
      r0 <- C.query h q C.defaultQueryOptions ()
      r0 `shouldBe` Right 0
      C.signal h sig C.defaultSignalOptions 5
      r1 <- C.query h q C.defaultQueryOptions ()
      r1 `shouldBe` Right 5
      C.signal h sig C.defaultSignalOptions 10
      C.waitWorkflowResult h `shouldReturn` ()

  specify "__stack_trace query returns a non-empty string" $ \TestEnv {..} -> do
    let stackTraceQuery :: W.KnownQuery '[()] Text
        stackTraceQuery = W.KnownQuery "__stack_trace" defaultCodec
        unblockSig :: W.KnownSignal '[]
        unblockSig = W.KnownSignal "unblockStack" defaultCodec
        workflow :: MyWorkflow ()
        workflow = provideCallStack $ do
          st <- W.newStateVar False
          W.setSignalHandler unblockSig $ W.writeStateVar st True
          W.waitCondition (W.readStateVar st)
        wf = W.provideWorkflow defaultCodec "stackTraceQueryWorkflow" workflow
        conf = configure () wf $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOpts taskQueue
      wfId <- W.WorkflowId <$> uuidText
      result <- useClient $ do
        h <- C.start wf.reference wfId opts
        (r :: Either C.QueryRejected Text) <- C.query h stackTraceQuery C.defaultQueryOptions ()
        C.signal h unblockSig C.defaultSignalOptions
        _ <- C.waitWorkflowResult h
        pure r
      case result of
        Right trace -> trace `shouldSatisfy` (not . Text.null)
        Left err -> expectationFailure $ "Query failed: " <> show err

  specify "multiple query handlers on same workflow (TS: multiple queries)" $ \TestEnv {..} -> do
    wfId <- uuidText
    let q1 :: W.KnownQuery '[()] Text
        q1 = W.KnownQuery "multiQ1" defaultCodec
        q2 :: W.KnownQuery '[()] Int
        q2 = W.KnownQuery "multiQ2" defaultCodec
        sig :: W.KnownSignal '[]
        sig = W.KnownSignal "multiQSig" defaultCodec
        workflow :: MyWorkflow ()
        workflow = provideCallStack $ do
          W.setQueryHandler q1 $ \() -> pure ("answer" :: Text)
          W.setQueryHandler q2 $ \() -> pure (42 :: Int)
          st <- W.newStateVar False
          W.setSignalHandler sig $ W.writeStateVar st True
          W.waitCondition (W.readStateVar st)
        wf = W.provideWorkflow defaultCodec "multiQuery" workflow
        conf = configure () wf $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOpts taskQueue
      h <- useClient (C.start wf.reference (W.WorkflowId wfId) opts)
      r1 <- C.query h q1 C.defaultQueryOptions ()
      r1 `shouldBe` Right "answer"
      r2 <- C.query h q2 C.defaultQueryOptions ()
      r2 `shouldBe` Right 42
      C.signal h sig C.defaultSignalOptions
      C.waitWorkflowResult h `shouldReturn` ()

  specify "default query handler catches unknown query types" $ \TestEnv {..} -> do
    let unknownQuery :: W.KnownQuery '[Text] Text
        unknownQuery = W.KnownQuery "neverRegistered" defaultCodec
        sig :: W.KnownSignal '[]
        sig = W.KnownSignal "defaultQSig" defaultCodec
        workflow :: MyWorkflow ()
        workflow = provideCallStack $ do
          W.setDefaultQueryHandler $ \_args ->
            pure $ encodeJSON ("default-response" :: Text)
          st <- W.newStateVar False
          W.setSignalHandler sig $ W.writeStateVar st True
          W.waitCondition (W.readStateVar st)
        wf = W.provideWorkflow defaultCodec "defaultQueryHandlerWf" workflow
        conf = configure () wf $ do baseConf
    withWorker conf $ do
      let opts = defaultStartOpts taskQueue
      wfId <- W.WorkflowId <$> uuidText
      h <- useClient (C.start wf.reference wfId opts)
      result <- C.query h unknownQuery C.defaultQueryOptions "anything"
      C.signal h sig C.defaultSignalOptions
      _ <- C.waitWorkflowResult h
      result `shouldBe` Right "default-response"
