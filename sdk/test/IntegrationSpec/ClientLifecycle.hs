{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}

module IntegrationSpec.ClientLifecycle (spec) where

import Control.Concurrent
import Control.Concurrent.Async
import Control.Exception
import Control.Monad
import Control.Monad.IO.Class (liftIO)
import Control.Monad.Logger (runLoggingT, runNoLoggingT)
import Data.Either (isRight)
import Data.IORef
import Data.ProtoLens (defMessage)
import Lens.Family2 ((&), (.~), (^.))
import Proto.Temporal.Api.Enums.V1.TaskQueue (TaskQueueType (TASK_QUEUE_TYPE_ACTIVITY))
import qualified Proto.Temporal.Api.Taskqueue.V1.Message_Fields as TQ
import qualified Proto.Temporal.Api.Workflowservice.V1.RequestResponse_Fields as RR
import Proto.Temporal.Api.Workflowservice.V1.Service (WorkflowService)
import System.Directory (findExecutable)
import System.Timeout (timeout)
import qualified Temporal.Core.Client as Core
import qualified Temporal.Core.Client.WorkflowService as Service
import qualified Temporal.Core.Worker as Worker
import qualified Temporal.EphemeralServer as Dev (TemporalDevServerConfig (..))
import qualified Temporal.EphemeralServer as Server
import Temporal.Runtime (RuntimeClosedError (..), TelemetryOptions (NoTelemetry), bracketRuntime, fetchLogs)
import Test.Hspec
import TestHelpers (configWithRetry, globalRuntime, uuidText, withServer)


foreign import ccall "hs_get_system_info" rawGetSystemInfo :: Core.PrimRpcCall


bounded :: IO a -> IO a
bounded action = timeout 5000000 action >>= maybe (throwIO (userError "client integration test hung")) pure


withQuietClient :: Core.ClientConfig -> (Core.Client -> IO a) -> IO a
withQuietClient config action = runNoLoggingT $ Core.bracketClient globalRuntime config (liftIO . action)


withReadyClient :: Core.ClientConfig -> (Core.Client -> IO a) -> IO a
withReadyClient config action = withQuietClient config $ \client -> do
  bounded $ Core.waitForConnection client
  action client


data LoggerFailure = LoggerFailure
  deriving stock (Eq, Show)
  deriving anyclass (Exception)


spec :: Spec
spec = describe "Client lifecycle" $ do
  let unreachable = Core.defaultClientConfig {Core.targetUrl = "http://127.0.0.1:0", Core.retryConfig = Nothing}
      isConnectionError = \case
        Core.ClientConnectionError _ -> True
        _ -> False
      isClosed = \case
        Core.ClientClosedError -> True
        _ -> False

  it "accesses the runtime after initialization failure without retrying" $ bounded $ do
    warnings <- newIORef (0 :: Int)
    let logger _ _ _ _ = modifyIORef' warnings (+ 1)
        acquire = runLoggingT (Core.connectClient globalRuntime unreachable) logger
    bracket acquire Core.closeClient $ \client -> do
      Core.waitForConnection client `shouldThrow` isConnectionError
      Core.withClientRuntime client $ void . fetchLogs
      readIORef warnings `shouldReturn` 1

  it "keeps a scoped runtime alive after its original runtime and client close" $ bounded $ do
    let acquire = bracketRuntime NoTelemetry $ \runtime ->
          runNoLoggingT $ Core.connectClient runtime unreachable
    bracket acquire Core.closeClient $ \client ->
      Core.withClientRuntime client $ \runtime -> do
        Core.closeClient client
        Core.closeClient client
        void $ fetchLogs runtime
        Core.withClientRuntime client (void . fetchLogs) `shouldThrow` isClosed

  it "keeps an admitted runtime callback alive across concurrent close" $ bounded $ do
    admitted <- newEmptyMVar
    proceed <- newEmptyMVar
    let acquire = bracketRuntime NoTelemetry $ \runtime ->
          runNoLoggingT $ Core.connectClient runtime unreachable
        useRuntimeAfterClose client = Core.withClientRuntime client $ \runtime -> do
          putMVar admitted ()
          takeMVar proceed
          void $ fetchLogs runtime
    bracket acquire Core.closeClient $ \client ->
      withAsync (useRuntimeAfterClose client) $ \caller -> do
        link caller
        takeMVar admitted
        Core.closeClient client
        Core.withClientRuntime client (void . fetchLogs) `shouldThrow` isClosed
        putMVar proceed ()
        wait caller

  it "closes promptly when it is the last owner of its Core runtime" $
    withServer $ \port -> bounded $ do
      let acquire = bracketRuntime NoTelemetry $ \runtime -> do
            client <- runNoLoggingT $ Core.connectClient runtime (configWithRetry port)
            bounded $ Core.waitForConnection client
            pure client
      client <- acquire
      closed <- timeout 2_000_000 $ Core.closeClient client
      closed `shouldBe` Just ()

  it "releases callback scopes on exceptions and cancellation" $
    bounded $
      withQuietClient unreachable $ \client -> do
        Core.withClientRuntime client (\_ -> throwIO RuntimeClosedError) `shouldThrow` (== RuntimeClosedError)
        Core.withClientRuntime client (\_ -> throwIO LoggerFailure) `shouldThrow` (== LoggerFailure)
        entered <- newEmptyMVar
        proceed <- newEmptyMVar
        let waitWithRuntime = Core.withClientRuntime client $ \_ -> do
              putMVar entered ()
              takeMVar proceed
        withAsync waitWithRuntime $ \caller -> do
          takeMVar entered
          cancel caller
          wait caller `shouldThrow` (== AsyncCancelled)
        Core.withClientRuntime client $ void . fetchLogs

  forM_ [False, True] $ \throughRpc ->
    it ("recovers unavailable initialization through " <> if throughRpc then "an RPC" else "readiness") $ do
      port <- Server.getFreePort
      executable <- findExecutable "temporal" >>= maybe (throwIO $ userError "temporal executable missing") pure
      let serverConfig = Server.defaultTemporalDevServerConfig {Dev.port = Just $ fromIntegral port, Dev.exe = Server.ExistingPath executable}
          config = (configWithRetry port) {Core.retryConfig = Nothing}
      withQuietClient config $ \client -> do
        bounded $ Core.waitForConnection client `shouldThrow` isConnectionError
        Server.withDevServer globalRuntime serverConfig $ \_ -> bounded $ do
          if throughRpc
            then Service.getSystemInfo client defMessage >>= (`shouldSatisfy` isRight)
            else Core.waitForConnection client
          Service.getSystemInfo client defMessage >>= (`shouldSatisfy` isRight)

  -- NB: this only exercises the happy path (sequential shutdown, no
  -- concurrent close). It does not cover a 'Worker.closeWorker' racing a
  -- concurrent poll/other in-flight call through 'Worker.withWorker' -- see
  -- that function's documentation for the known use-after-free gap this
  -- test does not detect.
  it "uses and shuts down a worker after its original runtime scope ends (happy path only)" $
    withServer $ \port -> bounded $ do
      let acquire = bracketRuntime NoTelemetry $ \runtime ->
            runNoLoggingT $ Core.bracketClient runtime (configWithRetry port) $ \client -> liftIO $ do
              Core.waitForConnection client
              Worker.newWorker client Worker.defaultWorkerConfig >>= either throwIO pure
          release worker = do
            Worker.initiateShutdown worker
            concurrently_
              (Worker.pollWorkflowActivation worker >>= (`shouldSatisfy` either ((== Worker.PollShutdown) . Worker.code) (const False)))
              (Worker.pollActivityTask worker >>= (`shouldSatisfy` either ((== Worker.PollShutdown) . Worker.code) (const False)))
            Worker.finalizeShutdown worker >>= either throwIO pure
            Worker.closeWorker worker
      bracket acquire release (Worker.validateWorker >=> (`shouldSatisfy` isRight))

  -- TODO: 'closeWorker' can race a concurrent call through 'withWorker'
  -- and free the underlying 'WorkerRef' out from under it.
  --
  -- Once we have a ref-counted 'WorkerRef' handle lands, replace this with a
  -- real regression test that starts a long poll, closes the worker
  -- concurrently, and asserts the poll observes a clean shutdown/error rather
  -- than a use-after-free.
  it "does not use-after-free when closeWorker races a concurrent poll" $
    pendingWith "known gap: no refcounted worker handle yet, see withWorker docs"

  it "uses the established transport after a server restart" $ do
    port <- Server.getFreePort
    executable <- findExecutable "temporal" >>= maybe (throwIO $ userError "temporal executable missing") pure
    let serverConfig = Server.defaultTemporalDevServerConfig {Dev.port = Just $ fromIntegral port, Dev.exe = Server.ExistingPath executable}
        acquire = Server.withDevServer globalRuntime serverConfig $ \_ ->
          bracketOnError (runNoLoggingT $ Core.connectClient globalRuntime $ configWithRetry port) Core.closeClient $ \client ->
            bounded (Core.waitForConnection client) >> pure client
    bracket acquire Core.closeClient $ \client ->
      Core.withClient client $ \ptr ->
        Server.withDevServer globalRuntime serverConfig $ \_ -> bounded $ do
          -- Submit through the handle acquired before the restart.
          Core.call @WorkflowService @"getSystemInfo" (\_ -> rawGetSystemInfo ptr) client defMessage >>= (`shouldSatisfy` isRight)

  it "waitForConnection returns when the client connects" $
    withServer $ \port ->
      bounded $
        withQuietClient (configWithRetry port) Core.waitForConnection

  forM_
    [ ("connection failure", pure (), (`shouldThrow` isConnectionError))
    , ("logger failure", throwIO LoggerFailure, (`shouldThrow` (== LoggerFailure)))
    ]
    $ \(name, logWarning, assertFailure) ->
      it ("publishes " <> name <> " durably through readiness") $
        bounded $
          runLoggingT
            ( Core.bracketClient globalRuntime unreachable $ \client -> liftIO $ do
                assertFailure (Core.waitForConnection client)
                assertFailure (Core.waitForConnection client)
            )
            (\_ _ _ _ -> logWarning)

  forM_ [False, True] $ \masked ->
    it ("closes while initialization is paused in its logger, masked=" <> show masked) $ do
      entered <- newEmptyMVar
      proceed <- newEmptyMVar
      let logger _ _ _ _ = (if masked then uninterruptibleMask_ else id) $ putMVar entered () >> readMVar proceed
          acquire = bracketRuntime NoTelemetry $ \runtime ->
            runLoggingT (Core.connectClient runtime unreachable) logger
          releaseLogger = void $ tryPutMVar proceed ()
          closeWhileLoggerBlocked = bracket acquire Core.closeClient $ \client -> do
            takeMVar entered
            Core.withClientRuntime client $ void . fetchLogs
            withAsync (Core.waitForConnection client) $ \caller -> do
              Core.closeClient client
              wait caller `shouldThrow` isClosed
              Core.waitForConnection client `shouldThrow` isClosed
              Service.getSystemInfo client defMessage `shouldThrow` isClosed
      bounded closeWhileLoggerBlocked `finally` releaseLogger

  it "does not leave waitForConnection blocked when connection completion races with close" $
    withServer $ \port -> bounded $
      replicateM_ 30 $ do
        gate <- newEmptyMVar
        let acquire = bracketRuntime NoTelemetry $ \runtime ->
              runNoLoggingT $ Core.connectClient runtime (configWithRetry port)
        bracket acquire Core.closeClient $ \client ->
          withAsync (readMVar gate >> Core.waitForConnection client) $ \caller ->
            withAsync (readMVar gate >> Core.closeClient client) $ \closer -> do
              putMVar gate ()
              wait closer
              waitCatch caller >>= \case
                Right () -> pure ()
                Left err -> fromException err `shouldSatisfy` maybe False isClosed
              Core.waitForConnection client `shouldThrow` isClosed

  it "retains the runtime across an initialization retry" $ do
    entered <- newEmptyMVar
    proceed <- newEmptyMVar
    warnings <- newIORef (0 :: Int)
    let config =
          unreachable
            { Core.retryConfig =
                Just
                  Core.ClientRetryConfig
                    { Core.initialIntervalMillis = 1
                    , Core.maxIntervalMillis = 1
                    , Core.multiplier = 1
                    , Core.randomizationFactor = 0
                    , Core.maxRetries = 2
                    , Core.maxElapsedTimeMillis = Just 1000
                    }
            }
        logger _ _ _ _ = do
          count <- atomicModifyIORef' warnings (\n -> (n + 1, n + 1))
          when (count == 1) $ putMVar entered () >> readMVar proceed
        acquire = bracketRuntime NoTelemetry $ \runtime ->
          bracketOnError
            (runLoggingT (Core.connectClient runtime config) logger)
            Core.closeClient
            (\client -> takeMVar entered >> pure client)
    bounded
      ( bracket acquire Core.closeClient $ \client -> do
          -- Both this operation and later recovery retain their own runtime.
          putMVar proceed ()
          Core.waitForConnection client `shouldThrow` isConnectionError
          readIORef warnings `shouldReturn` 2
          Core.waitForConnection client `shouldThrow` isConnectionError
          readIORef warnings `shouldReturn` 4
      )
      `finally` void (tryPutMVar proceed ())

  it "uses an acquired pointer twice after close" $
    withServer $ \port -> do
      let config = configWithRetry port
          withConnection = withReadyClient config
      withConnection $ \driver -> withConnection $ \client -> bounded $ do
        -- The driver supplies normal request/callback marshalling through
        -- the public call helper. Both RPCs submit the independently scoped
        -- pointer from client, even after its original owner is destroyed.
        admitted <- newEmptyMVar
        proceed <- newEmptyMVar
        withAsync
          ( Core.withClient client $ \ptr -> do
              putMVar admitted ()
              takeMVar proceed
              let rpc = Core.call @WorkflowService @"getSystemInfo" (\_ -> rawGetSystemInfo ptr) driver defMessage
              rpc >>= (`shouldSatisfy` isRight)
              rpc >>= (`shouldSatisfy` isRight)
          )
          $ \caller -> do
            link caller
            takeMVar admitted
            Core.closeClient client
            putMVar proceed ()
            wait caller

  it "completes a second RPC while a long poll is pending and promptly cancels the thread awaiting its result" $
    withServer $ \port ->
      withReadyClient (configWithRetry port) $ \client -> bounded $ do
        poller <- uuidText
        let queue = defMessage & TQ.name .~ ("client-ownership-long-poll-" <> poller)
            pollRequest = defMessage & RR.namespace .~ "default" & RR.taskQueue .~ queue & RR.identity .~ poller
            description = defMessage & RR.namespace .~ "default" & RR.taskQueue .~ queue & RR.taskQueueType .~ TASK_QUEUE_TYPE_ACTIVITY
            readyPoller = do
              response <- Service.describeTaskQueue client description
              case response of
                Left err -> expectationFailure (show err)
                Right info -> unless (any (\p -> p ^. TQ.identity == poller) (info ^. RR.pollers)) readyPoller
        withAsync (Service.pollActivityTaskQueue client pollRequest) $ \caller -> do
          -- Fail immediately if the poll ends before the concurrent RPC completes.
          race (wait caller) (readyPoller *> (Service.getSystemInfo client defMessage >>= (`shouldSatisfy` isRight))) >>= \case
            Left result -> expectationFailure ("long poll completed before cancellation: " <> show result)
            Right () -> pure ()
          cancel caller
          wait caller `shouldThrow` (== AsyncCancelled)
