module ReplaySpec where

import Control.Concurrent (threadDelay, yield)
import qualified Control.Concurrent.Async as Async
import Control.Exception (IOException, bracket, catch, fromException, try)
import Control.Monad (void, when)
import Data.Either (isLeft, isRight)
import Data.ProtoLens.Encoding (encodeMessage)
import qualified Data.Text as Text
import qualified GHC.Conc.Sync as Conc
import qualified Network.Socket as N
import RequireCallStack (provideCallStack)
import System.Directory (findExecutable, getTemporaryDirectory, removeFile)
import System.Timeout (timeout)
import Temporal.Activity
import qualified Temporal.Client as C
import qualified Temporal.Core.Internal.TestFixture as TestFixture
import qualified Temporal.Core.Worker as Core
import Temporal.Duration
import qualified Temporal.EphemeralServer as Ephemeral
import qualified Temporal.EphemeralServer as TemporalDevServerConfig (TemporalDevServerConfig (..))
import Temporal.Payload
import Temporal.Replay (readHistoryProtobufFile, writeHistoryProtobufFile)
import Temporal.Worker
import qualified Temporal.Workflow as W
import Test.Hspec
import TestHelpers


spec :: Spec
spec = do
  describe "Tokio FFI interruption" $ do
    specify "interrupts a blocked poll and reaps its eventual result" $
      bracket newIdleReplayWorker shutdownIdleReplayWorker $ \(worker, _) -> do
        poller <- Async.async $ Core.pollWorkflowActivation worker

        blocked <- timeout 5_000_000 $ waitUntilBlockedOnMVar (Async.asyncThreadId poller)
        blocked `shouldBe` Just ()

        cancelled <- timeout 5_000_000 $ Async.cancel poller
        cancelled `shouldBe` Just ()
        Async.waitCatch poller >>= \case
          Left err
            | Just Async.AsyncCancelled <- fromException err -> pure ()
          outcome -> expectationFailure $ "expected AsyncCancelled, got " <> show outcome

    specify "shares repeated worker finalization" $
      bracket newIdleReplayWorker shutdownIdleReplayWorker $
        const $
          pure ()

    specify "frees the Rust result of an interrupted call" $ do
      before <- TestFixture.testResourceDropCount
      call <- Async.async $ TestFixture.acquireDelayedTestResource globalRuntime 1_000
      blocked <- timeout 5_000_000 $ waitUntilBlockedOnMVar (Async.asyncThreadId call)
      blocked `shouldBe` Just ()
      cancelled <- timeout 5_000_000 $ Async.cancel call
      cancelled `shouldBe` Just ()
      -- Interrupting the wait cannot cancel the Rust future; the forked
      -- reaper must free the result the future eventually produces.
      reaped <- timeout 30_000_000 $ waitUntil ((> before) <$> TestFixture.testResourceDropCount)
      reaped `shouldBe` Just ()

    specify "frees the Rust result of a completed call" $ do
      before <- TestFixture.testResourceDropCount
      result <- TestFixture.acquireDelayedTestResource globalRuntime 0
      result `shouldBe` Right ()
      after <- TestFixture.testResourceDropCount
      after `shouldSatisfy` (> before)

  describe "Ephemeral server shutdown" $ do
    specify "shares repeated shutdown results" $
      bracket newEphemeralServer (void . Ephemeral.shutdownEphemeralServer) $ \server -> do
        first <- Ephemeral.shutdownEphemeralServer server
        second <- Ephemeral.shutdownEphemeralServer server
        first `shouldBe` Right ()
        second `shouldBe` first

    specify "stops a dev server whose startup wait was interrupted" $ do
      freePort <- Ephemeral.getFreePort
      serverConfig <- devServerConfig freePort
      starter <- Async.async $ Ephemeral.launchDevServer globalRuntime serverConfig
      blocked <- timeout 10_000_000 $ waitUntilBlockedOnMVar (Async.asyncThreadId starter)
      blocked `shouldBe` Just ()
      cancelled <- timeout 5_000_000 $ Async.cancel starter
      cancelled `shouldBe` Just ()
      -- Interrupting the wait cannot cancel the Rust future, so the server
      -- still finishes starting and binds its port...
      started <- timeout 60_000_000 $ waitUntil (portIsListening freePort)
      started `shouldBe` Just ()
      -- ...and the abandon handler must then shut the orphaned server down,
      -- stopping the process and releasing the port.
      stopped <- timeout 60_000_000 $ waitUntil (not <$> portIsListening freePort)
      stopped `shouldBe` Just ()

  withTestServer_ $ do
    describe "Worker shutdown" $ do
      specify "shares repeated high-level shutdown" $ \TestEnv {baseConf, coreClient} ->
        bracket (startWorker coreClient $ configure () replayActivityDef baseConf) shutdown shutdown

      specify "survives interrupted startup" $ \TestEnv {baseConf, coreClient} -> do
        starter <- Async.async $ startWorker coreClient $ configure () replayActivityDef baseConf
        blocked <- timeout 10_000_000 $ waitUntilBlockedOnMVar (Async.asyncThreadId starter)
        blocked `shouldBe` Just ()
        cancelled <- timeout 5_000_000 $ Async.cancel starter
        cancelled `shouldBe` Just ()
        -- The interrupted startup hands its core worker to a background
        -- teardown. Until that teardown deregisters the worker from Core's
        -- client registry, restarting on the same task queue is rejected, so
        -- retry until the registration is released.
        let restart =
              try (startWorker coreClient $ configure () replayActivityDef baseConf) >>= \case
                Left (_ :: Core.WorkerError) -> threadDelay 10_000 *> restart
                Right worker -> pure worker
        restarted <- timeout 30_000_000 restart
        case restarted of
          Nothing -> expectationFailure "worker could not be restarted after interrupted startup"
          Just worker -> shutdown worker

    tests


newIdleReplayWorker :: IO (Core.Worker 'Core.Replay, Core.HistoryPusher)
newIdleReplayWorker =
  Core.newReplayWorker globalRuntime Core.defaultWorkerConfig >>= \case
    Left err -> error $ "failed to create replay worker: " <> show err
    Right resources -> pure resources


shutdownIdleReplayWorker :: (Core.Worker 'Core.Replay, Core.HistoryPusher) -> IO ()
shutdownIdleReplayWorker (worker, historyPusher) = do
  Core.closeHistory historyPusher
  Core.initiateShutdown worker
  expectFinalized worker
  expectFinalized worker
  Core.closeWorker worker


expectFinalized :: Core.Worker 'Core.Replay -> IO ()
expectFinalized worker =
  Core.finalizeShutdown worker >>= \case
    Left err -> error $ "failed to finalize replay worker: " <> show err
    Right () -> pure ()


devServerConfig :: N.PortNumber -> IO Ephemeral.TemporalDevServerConfig
devServerConfig port = do
  temporalPath <-
    findExecutable "temporal" >>= \case
      Nothing -> error "Could not find the 'temporal' executable in PATH"
      Just path -> pure path
  pure
    Ephemeral.defaultTemporalDevServerConfig
      { TemporalDevServerConfig.exe = Ephemeral.ExistingPath temporalPath
      , TemporalDevServerConfig.port = Just $ fromIntegral port
      , TemporalDevServerConfig.extraArgs = []
      }


newEphemeralServer :: IO Ephemeral.EphemeralServer
newEphemeralServer = do
  freePort <- Ephemeral.getFreePort
  serverConfig <- devServerConfig freePort
  Ephemeral.launchDevServer globalRuntime serverConfig >>= either (error . show) pure


waitUntilBlockedOnMVar :: Conc.ThreadId -> IO ()
waitUntilBlockedOnMVar threadId =
  Conc.threadStatus threadId >>= \case
    Conc.ThreadBlocked Conc.BlockedOnMVar -> pure ()
    Conc.ThreadFinished -> error "poll finished before blocking"
    Conc.ThreadDied -> error "poll died before blocking"
    _ -> yield *> waitUntilBlockedOnMVar threadId


-- | Poll a condition until it holds. Bound with 'timeout' at the call site.
waitUntil :: IO Bool -> IO ()
waitUntil probe =
  probe >>= \case
    True -> pure ()
    False -> threadDelay 10_000 *> waitUntil probe


portIsListening :: N.PortNumber -> IO Bool
portIsListening port =
  bracket (N.socket N.AF_INET N.Stream N.defaultProtocol) N.close $ \sock ->
    ( do
        N.connect sock (N.SockAddrInet port (N.tupleToHostAddress (127, 0, 0, 1)))
        -- A loopback connect can succeed with no listener through TCP
        -- simultaneous open, when the kernel assigns the destination as the
        -- ephemeral source port. That self-connection is not a server;
        -- closing the socket tears it down and frees the port again.
        localAddr <- N.getSocketName sock
        peerAddr <- N.getPeerName sock
        pure (localAddr /= peerAddr)
    )
      `catch` \(_ :: IOException) -> pure False


replayActivity :: Activity () Int
replayActivity = pure 1


replayActivityDef :: ProvidedActivity () (Activity () Int)
replayActivityDef = provideActivity JSON "replayAct" replayActivity


tests :: SpecWith TestEnv
tests = describe "Workflow Replay" $ do
  specify "compatible replay succeeds" $ \TestEnv {..} -> do
    let originalWorkflow :: W.ProvidedWorkflow (W.Workflow ())
        originalWorkflow = W.provideWorkflow JSON "replay-wf" $ provideCallStack $ do
          W.sleep $ milliseconds 10
          _ <- W.executeActivity replayActivityDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
          W.sleep $ milliseconds 10
        defs = (replayActivityDef, originalWorkflow)
        originalConf = provideCallStack $ configure () defs baseConf

    history <- withWorker originalConf $ do
      uuid <- uuidText
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
      useClient $ do
        wfHandle <- C.start originalWorkflow (W.WorkflowId uuid) opts
        C.waitWorkflowResult wfHandle
        C.fetchHistory wfHandle

    replayResult <- runReplayHistory globalRuntime originalConf history
    replayResult `shouldSatisfy` isRight

  specify "patched replay succeeds" $ \TestEnv {..} -> do
    let originalWorkflow :: W.ProvidedWorkflow (W.Workflow ())
        originalWorkflow = W.provideWorkflow JSON "replay-patch-wf" $ provideCallStack $ do
          W.sleep $ milliseconds 10
          _ <- W.executeActivity replayActivityDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
          W.sleep $ milliseconds 10
        originalDefs = (replayActivityDef, originalWorkflow)
        originalConf = provideCallStack $ configure () originalDefs baseConf

    history <- withWorker originalConf $ do
      uuid <- uuidText
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
      useClient $ do
        wfHandle <- C.start originalWorkflow (W.WorkflowId uuid) opts
        C.waitWorkflowResult wfHandle
        C.fetchHistory wfHandle

    let patchedWorkflow :: W.ProvidedWorkflow (W.Workflow ())
        patchedWorkflow = W.provideWorkflow JSON "replay-patch-wf" $ provideCallStack $ do
          W.sleep $ milliseconds 10
          _ <- W.executeActivity replayActivityDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
          hasPatch <- W.patched "new-feature"
          when hasPatch $
            void $
              W.executeActivity replayActivityDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
          W.sleep $ milliseconds 10
        patchedDefs = (replayActivityDef, patchedWorkflow)
        patchedConf = configure () patchedDefs baseConf

    patchedResult <- runReplayHistory globalRuntime patchedConf history
    patchedResult `shouldSatisfy` isRight

  specify "incompatible replay fails" $ \TestEnv {..} -> do
    let originalWorkflow :: W.ProvidedWorkflow (W.Workflow ())
        originalWorkflow = W.provideWorkflow JSON "replay-incompat-wf" $ provideCallStack $ do
          W.sleep $ milliseconds 10
          _ <- W.executeActivity replayActivityDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
          W.sleep $ milliseconds 10
        originalDefs = (replayActivityDef, originalWorkflow)
        originalConf = provideCallStack $ configure () originalDefs baseConf

    history <- withWorker originalConf $ do
      uuid <- uuidText
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
      useClient $ do
        wfHandle <- C.start originalWorkflow (W.WorkflowId uuid) opts
        C.waitWorkflowResult wfHandle
        C.fetchHistory wfHandle

    let incompatibleWorkflow :: W.ProvidedWorkflow (W.Workflow ())
        incompatibleWorkflow = W.provideWorkflow JSON "replay-incompat-wf" $ provideCallStack $ do
          W.sleep $ milliseconds 10
          _ <- W.executeActivity replayActivityDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
          _ <- W.executeActivity replayActivityDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
          W.sleep $ milliseconds 10
        incompatibleDefs = (replayActivityDef, incompatibleWorkflow)
        incompatibleConf = configure () incompatibleDefs baseConf

    incompatibleResult <- runReplayHistory globalRuntime incompatibleConf history
    incompatibleResult `shouldSatisfy` isLeft

  specify "replay from protobuf file round-trip" $ \TestEnv {..} -> do
    let workflow :: W.ProvidedWorkflow (W.Workflow ())
        workflow = W.provideWorkflow JSON "replay-file-wf" $ provideCallStack $ do
          W.sleep $ milliseconds 10
        conf = provideCallStack $ configure () workflow baseConf

    history <- withWorker conf $ do
      uuid <- uuidText
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
      useClient $ do
        wfHandle <- C.start workflow (W.WorkflowId uuid) opts
        C.waitWorkflowResult wfHandle
        C.fetchHistory wfHandle

    tmpDir <- getTemporaryDirectory
    let filePath = tmpDir ++ "/temporal-replay-test-history.bin"
    writeHistoryProtobufFile filePath history
    loadedHistory <- readHistoryProtobufFile filePath
    removeFile filePath
    replayResult <- runReplayHistory globalRuntime conf loadedHistory
    replayResult `shouldSatisfy` isRight

  specify "replay multiple histories sequentially" $ \TestEnv {..} -> do
    let mkWorkflow name = W.provideWorkflow JSON name $ provideCallStack $ do
          W.sleep $ milliseconds 10
          _ <- W.executeActivity replayActivityDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
          pure ()
        wf1 = mkWorkflow "replay-multi-1"
        wf2 = mkWorkflow "replay-multi-2"
        conf = provideCallStack $ configure () (replayActivityDef, wf1, wf2) baseConf

    (h1, h2) <- withWorker conf $ do
      uuid1 <- uuidText
      uuid2 <- uuidText
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
      useClient $ do
        handle1 <- C.start wf1 (W.WorkflowId uuid1) opts
        handle2 <- C.start wf2 (W.WorkflowId uuid2) opts
        C.waitWorkflowResult handle1
        C.waitWorkflowResult handle2
        (,) <$> C.fetchHistory handle1 <*> C.fetchHistory handle2

    r1 <- runReplayHistory globalRuntime conf h1
    r1 `shouldSatisfy` isRight
    r2 <- runReplayHistory globalRuntime conf h2
    r2 `shouldSatisfy` isRight

  specify "incompatible replay returns structured error" $ \TestEnv {..} -> do
    let originalWorkflow :: W.ProvidedWorkflow (W.Workflow ())
        originalWorkflow = W.provideWorkflow JSON "replay-error-wf" $ provideCallStack $ do
          W.sleep $ milliseconds 10
        originalConf = provideCallStack $ configure () originalWorkflow baseConf

    history <- withWorker originalConf $ do
      uuid <- uuidText
      let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
      useClient $ do
        wfHandle <- C.start originalWorkflow (W.WorkflowId uuid) opts
        C.waitWorkflowResult wfHandle
        C.fetchHistory wfHandle

    let modifiedWorkflow :: W.ProvidedWorkflow (W.Workflow ())
        modifiedWorkflow = W.provideWorkflow JSON "replay-error-wf" $ provideCallStack $ do
          _ <- W.executeActivity replayActivityDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
          W.sleep $ milliseconds 10
        modifiedConf = provideCallStack $ configure () (replayActivityDef, modifiedWorkflow) baseConf

    result <- runReplayHistory globalRuntime modifiedConf history
    result `shouldSatisfy` isLeft
    case result of
      Left err -> err.message `shouldSatisfy` (not . Text.null)
      Right () -> expectationFailure "Expected replay failure"

  describe "Replay from raw protobuf bytes" $ do
    specify "replays a simple workflow" $ \TestEnv {..} -> do
      let workflow :: W.ProvidedWorkflow (W.Workflow ())
          workflow = W.provideWorkflow JSON "replay-proto-wf" $ provideCallStack $ do
            W.sleep $ milliseconds 10
          conf = provideCallStack $ configure () workflow baseConf

      history <- withWorker conf $ do
        uuid <- uuidText
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient $ do
          wfHandle <- C.start workflow (W.WorkflowId uuid) opts
          C.waitWorkflowResult wfHandle
          C.fetchHistory wfHandle

      result <- runReplayHistoryProto globalRuntime conf (WorkflowId "replay-proto") (encodeMessage history)
      result `shouldSatisfy` isRight

    specify "replays a workflow with activities" $ \TestEnv {..} -> do
      let workflow :: W.ProvidedWorkflow (W.Workflow Int)
          workflow = W.provideWorkflow JSON "replay-proto-act-wf" $ provideCallStack $ do
            W.sleep $ milliseconds 10
            h <- W.startActivity replayActivityDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
            W.wait h
          conf = provideCallStack $ configure () (replayActivityDef, workflow) baseConf

      history <- withWorker conf $ do
        uuid <- uuidText
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient $ do
          wfHandle <- C.start workflow (W.WorkflowId uuid) opts
          C.waitWorkflowResult wfHandle
          C.fetchHistory wfHandle

      result <- runReplayHistoryProto globalRuntime conf (WorkflowId "replay-proto-act") (encodeMessage history)
      result `shouldSatisfy` isRight

    specify "rejects invalid protobuf bytes" $ \TestEnv {..} -> do
      let workflow :: W.ProvidedWorkflow (W.Workflow ())
          workflow = W.provideWorkflow JSON "replay-proto-invalid-wf" $ provideCallStack $ pure ()
          conf = provideCallStack $ configure () workflow baseConf
      result <- runReplayHistoryProto globalRuntime conf (WorkflowId "fake-wf-id") "this is not valid protobuf"
      result `shouldSatisfy` isLeft

  describe "Replay from JSON history" $ do
    specify "replays a simple workflow via JSON" $ \TestEnv {..} -> do
      let workflow :: W.ProvidedWorkflow (W.Workflow ())
          workflow = W.provideWorkflow JSON "replay-json-wf" $ provideCallStack $ do
            W.sleep $ milliseconds 10
          conf = provideCallStack $ configure () workflow baseConf

      history <- withWorker conf $ do
        uuid <- uuidText
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient $ do
          wfHandle <- C.start workflow (W.WorkflowId uuid) opts
          C.waitWorkflowResult wfHandle
          C.fetchHistory wfHandle

      Right jsonBytes <- Core.historyProtoToJson (encodeMessage history)
      result <- runReplayHistoryJson globalRuntime conf (WorkflowId "replay-json") jsonBytes
      result `shouldSatisfy` isRight

    specify "replays a workflow with activities via JSON" $ \TestEnv {..} -> do
      let workflow :: W.ProvidedWorkflow (W.Workflow Int)
          workflow = W.provideWorkflow JSON "replay-json-act-wf" $ provideCallStack $ do
            W.sleep $ milliseconds 10
            h <- W.startActivity replayActivityDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
            W.wait h
          conf = provideCallStack $ configure () (replayActivityDef, workflow) baseConf

      history <- withWorker conf $ do
        uuid <- uuidText
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient $ do
          wfHandle <- C.start workflow (W.WorkflowId uuid) opts
          C.waitWorkflowResult wfHandle
          C.fetchHistory wfHandle

      Right jsonBytes <- Core.historyProtoToJson (encodeMessage history)
      result <- runReplayHistoryJson globalRuntime conf (WorkflowId "replay-json-act") jsonBytes
      result `shouldSatisfy` isRight

    specify "rejects invalid JSON" $ \TestEnv {..} -> do
      let workflow :: W.ProvidedWorkflow (W.Workflow ())
          workflow = W.provideWorkflow JSON "replay-json-invalid-wf" $ provideCallStack $ pure ()
          conf = provideCallStack $ configure () workflow baseConf
      result <- runReplayHistoryJson globalRuntime conf (WorkflowId "fake-wf-id") "{ definitely not valid history json }"
      result `shouldSatisfy` isLeft

    specify "rejects empty JSON object" $ \TestEnv {..} -> do
      let workflow :: W.ProvidedWorkflow (W.Workflow ())
          workflow = W.provideWorkflow JSON "replay-json-empty-wf" $ provideCallStack $ pure ()
          conf = provideCallStack $ configure () workflow baseConf
      result <- runReplayHistoryJson globalRuntime conf (WorkflowId "fake-wf-id") "{}"
      result `shouldSatisfy` isLeft

  describe "historyProtoToJson" $ do
    specify "converts proto bytes to valid JSON" $ \TestEnv {..} -> do
      let workflow :: W.ProvidedWorkflow (W.Workflow Int)
          workflow = W.provideWorkflow JSON "replay-h2j-wf" $ provideCallStack $ do
            W.sleep $ milliseconds 10
            h <- W.startActivity replayActivityDef.reference (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
            W.wait h
          conf = provideCallStack $ configure () (replayActivityDef, workflow) baseConf

      history <- withWorker conf $ do
        uuid <- uuidText
        let opts = defaultStartOptsWithTimeout taskQueue (seconds 10)
        useClient $ do
          wfHandle <- C.start workflow (W.WorkflowId uuid) opts
          C.waitWorkflowResult wfHandle
          C.fetchHistory wfHandle

      result <- Core.historyProtoToJson (encodeMessage history)
      result `shouldSatisfy` isRight

    specify "rejects garbage proto bytes" $ \_env -> do
      result <- Core.historyProtoToJson "not valid protobuf at all"
      result `shouldSatisfy` isLeft
