{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NumericUnderscores #-}
{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeApplications #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Redundant bracket" #-}

module TestHelpers (
  module TestHelpers,
  module Common,
  PortNumber,
) where

import Common
import Control.Concurrent
import Control.Exception
import Control.Monad.Logger
import Control.Monad.Reader
import qualified Data.ByteString as BS
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map
import Data.Text (Text)
import qualified Data.Text as Text
import qualified Data.UUID as UUID
import qualified Data.UUID.V4 as UUID
import DiscoverInstances (discoverInstances)
import Lens.Family2
import OpenTelemetry.Trace
import RequireCallStack
import System.Directory
import System.Environment (lookupEnv)
import System.IO
import Temporal.Activity
import Temporal.Bundle
import Temporal.Bundle.TH
import qualified Temporal.Client as C
import qualified Temporal.Client.TestService
import Temporal.Contrib.OpenTelemetry
import Temporal.Core.Client hiding (RpcError)
import Temporal.Duration
import Temporal.EphemeralServer
import qualified Temporal.EphemeralServer as TemporalDevServerConfig (TemporalDevServerConfig (..))
import qualified Temporal.EphemeralServer as TemporalTestServerConfig (TemporalTestServerConfig (..))
import Temporal.Exception
import Temporal.Interceptor
import Temporal.Operator (IndexedValueType (..), SearchAttributes (..), addSearchAttributes, listSearchAttributes)
import Temporal.Payload hiding (around)
import Temporal.SearchAttributes
import Temporal.TH (ActivityFn, WorkflowFn, discoverDefinitions)
import Temporal.Testing.Assertions
import Temporal.Worker
import qualified Temporal.Workflow as W
import Temporal.Workflow.Unsafe (performUnsafeNonDeterministicIO)
import Test.Hspec


type MyWorkflow a = W.RequireCallStack => W.Workflow a


defaultCodec :: JSON
defaultCodec = JSON


data TestEnv = TestEnv
  { useClient :: forall a. ReaderT C.WorkflowClient IO a -> IO a
  , baseConf :: ConfigM () ()
  , taskQueue :: W.TaskQueue
  , withWorker :: forall a. WorkerConfig () -> IO a -> IO a
  , coreClient :: Client
  }


configWithRetry :: PortNumber -> ClientConfig
configWithRetry pn =
  defaultClientConfig
    { targetUrl = "http://localhost:" <> Text.pack (show pn)
    , retryConfig =
        Just $
          ClientRetryConfig
            { initialIntervalMillis = 500
            , randomizationFactor = 0.2
            , multiplier = 1.5
            , maxIntervalMillis = 10_000
            , maxRetries = 15
            , maxElapsedTimeMillis = Just 60_000
            }
    }


mkWithWorker :: PortNumber -> WorkerConfig actEnv -> IO a -> IO a
mkWithWorker pn conf m = do
  let clientConfig_ = configWithRetry pn
  c <- runStdoutLoggingT $ connectClient globalRuntime clientConfig_
  bracket (startWorker c (conf {payloadProcessor = conf.payloadProcessor <> sillyEncryptionPayloadProcessor})) shutdown (const m)


sillyEncryptionPayloadProcessor :: PayloadProcessor
sillyEncryptionPayloadProcessor = PayloadProcessor incr decr
  where
    incr (Payload data_ meta) = pure $ Payload (BS.map (+ 1) data_) meta
    decr (Payload data_ meta) = pure $ Right $ Payload (BS.map (\x -> x - 1) data_) meta


makeClient :: PortNumber -> Interceptors env -> IO (C.WorkflowClient, Client)
makeClient pn interceptors = makeClient' pn interceptors False


makeTimeSkippingClient :: PortNumber -> Interceptors env -> IO (C.WorkflowClient, Client)
makeTimeSkippingClient pn interceptors = makeClient' pn interceptors True


makeClient' :: PortNumber -> Interceptors env -> Bool -> IO (C.WorkflowClient, Client)
makeClient' pn Interceptors {..} enableTimeSkipping = do
  let conf = configWithRetry pn
  c <- runStdoutLoggingT $ connectClient globalRuntime conf
  (,)
    <$> C.workflowClient
      c
      ( C.WorkflowClientConfig
          { namespace = "default"
          , interceptors = clientInterceptors
          , payloadProcessor = sillyEncryptionPayloadProcessor
          , enableTimeSkipping
          }
      )
    <*> pure c


uuidText :: IO Text
uuidText = UUID.toText <$> UUID.nextRandom


withServer :: (PortNumber -> IO a) -> IO a
withServer f = do
  lookupEnv "HS_TEMPORAL_SDK_LOCAL_TEST_SERVER" >>= \case
    Just _ -> f 7233
    _ -> do
      fp <- getFreePort
      mTemporalPath <- findExecutable "temporal"
      conf <- case mTemporalPath of
        Nothing -> error "Could not find the 'temporal' executable in PATH"
        Just temporalPath -> do
          let serverConfig =
                defaultTemporalDevServerConfig
                  { TemporalDevServerConfig.port = Just $ fromIntegral fp
                  , TemporalDevServerConfig.exe = ExistingPath temporalPath
                  }
          pure serverConfig
      withDevServer globalRuntime conf $ \_ -> do
        f fp


withTimeSkippingServer :: (PortNumber -> IO a) -> IO a
withTimeSkippingServer f = do
  lookupEnv "HS_TEMPORAL_SDK_LOCAL_TIME_SKIPPING_TEST_SERVER" >>= \case
    Just _ -> f 7234
    _ -> do
      fp <- getFreePort
      mTemporalPath <- findExecutable "temporal-test-server"
      conf <- case mTemporalPath of
        Nothing -> error "Could not find the 'temporal-test-server' (time-skipping) executable in PATH"
        Just temporalPath -> do
          pure
            TemporalTestServerConfig
              { TemporalTestServerConfig.exe = ExistingPath temporalPath
              , TemporalTestServerConfig.port = Just $ fromIntegral fp
              , TemporalTestServerConfig.extraArgs = []
              }
      withTestServer globalRuntime conf $ \_ -> do
        f fp


mkBaseConf :: Interceptors () -> IO (ConfigM () (), W.TaskQueue)
mkBaseConf interceptors = do
  taskQueue <- W.TaskQueue <$> uuidText
  pure
    ( do
        setNamespace $ W.Namespace "default"
        setTaskQueue taskQueue
        addInterceptors interceptors
        setLogger $ defaultOutput stdout
    , taskQueue
    )


setup :: Interceptors () -> PortNumber -> (TestEnv -> IO ()) -> IO ()
setup additionalInterceptors fp go = do
  otelInterceptors <- makeOpenTelemetryInterceptor
  let interceptors = otelInterceptors <> additionalInterceptors
  (client, coreClient) <- makeClient fp interceptors

  SearchAttributes {customAttributes} <- either throwIO pure =<< listSearchAttributes coreClient (W.Namespace "default")
  let allTestAttributes =
        Map.fromList
          [ ("attr1", Temporal.Operator.Bool)
          , ("attr2", Temporal.Operator.Int)
          ]
  _ <- addSearchAttributes coreClient (W.Namespace "default") (allTestAttributes `Map.difference` customAttributes)

  (conf, taskQueue) <- mkBaseConf interceptors
  go
    TestEnv
      { useClient = flip runReaderT client
      , withWorker = mkWithWorker fp
      , baseConf = conf
      , taskQueue
      , coreClient
      }


setupTimeSkipping :: Interceptors () -> PortNumber -> (TestEnv -> IO ()) -> IO ()
setupTimeSkipping additionalInterceptors fp go = do
  otelInterceptors <- makeOpenTelemetryInterceptor
  let interceptors = otelInterceptors <> additionalInterceptors
  (client, tsClient) <- makeTimeSkippingClient fp interceptors
  (conf, taskQueue) <- mkBaseConf interceptors
  go
    TestEnv
      { useClient = flip runReaderT client
      , withWorker = mkWithWorker fp
      , baseConf = conf
      , taskQueue
      , coreClient = tsClient
      }


withInterceptors :: Interceptors () -> SpecWith TestEnv -> SpecWith PortNumber
withInterceptors interceptors = aroundAllWith $ flip $ setup interceptors


-- Convenience: wrap a SpecWith TestEnv as a top-level spec against a shared server
withTestServer_ :: SpecWith TestEnv -> Spec
withTestServer_ s =
  aroundAll withServer $
    aroundAllWith (flip $ setup mempty) s


-- Standard start options
defaultStartOpts :: W.TaskQueue -> C.StartWorkflowOptions
defaultStartOpts tq =
  (C.startWorkflowOptions tq)
    { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
    }


defaultStartOptsWithTimeout :: W.TaskQueue -> Duration -> C.StartWorkflowOptions
defaultStartOptsWithTimeout tq d =
  (defaultStartOpts tq)
    { C.timeouts =
        C.TimeoutOptions
          { C.runTimeout = Just d
          , C.executionTimeout = Nothing
          , C.taskTimeout = Nothing
          }
    }


-- | Block until the workflow's first workflow task has been processed.
--
-- Queries the built-in @__stack_trace@ handler, which is registered on every
-- workflow instance at creation time. A successful response proves the worker
-- has executed the workflow code up to its first blocking point, so all
-- user-registered query\/update\/signal handlers are in place.
--
-- Retries up to @maxAttempts@ times on any exception (transport errors,
-- "workflow not found", etc.). Each retry is a full gRPC round-trip, so
-- there is a natural backoff without needing @threadDelay@.
waitForWorkflowStart :: MonadIO m => C.WorkflowHandle a -> m ()
waitForWorkflowStart h = liftIO $ go maxAttempts
  where
    maxAttempts :: Int
    maxAttempts = 50
    stackTraceQuery :: W.KnownQuery '[()] Text
    stackTraceQuery = W.KnownQuery "__stack_trace" JSON
    go 0 = error "waitForWorkflowStart: workflow did not become ready after retries"
    go n = do
      result <- try @SomeException (C.query h stackTraceQuery C.defaultQueryOptions ())
      case result of
        Right (Right _) -> pure ()
        _ -> go (n - 1)
