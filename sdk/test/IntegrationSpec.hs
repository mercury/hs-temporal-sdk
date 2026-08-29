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

module IntegrationSpec where

import Common
import Control.Concurrent
import TestHelpers (waitForWorkflowStart)
import Control.Exception
import Control.Exception.Annotated
import qualified Control.Exception.Annotated as Annotated
import Control.Monad (replicateM, when)
import qualified Control.Monad.Catch as Catch
import Control.Monad.Logger
import Control.Monad.Reader
import Data.Aeson (FromJSON, ToJSON, Value (..), toJSON)
import qualified Data.Aeson as Aeson
import qualified Data.ByteString as BS
import Data.Either (isLeft, isRight)
import Data.Foldable (traverse_)
import Data.Functor
import Data.IORef
import Data.Int
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map
import Data.Maybe (fromJust, isJust)
import Data.Text (Text)
import qualified Data.Text as Text
import Data.Time (Day (ModifiedJulianDay), diffUTCTime, getCurrentTime)
import Data.Time.Clock (UTCTime)
import qualified Data.UUID as UUID
import qualified Data.UUID.V4 as UUID
import Data.Vector (Vector)
import qualified Data.Vector as V
import DiscoverInstances (discoverInstances)
import GHC.Generics
import GHC.Stack (SrcLoc (..), callStack, fromCallSiteList)
import IntegrationSpec.HangingWorkflow
import IntegrationSpec.NoOpWorkflow
import IntegrationSpec.Signals
import IntegrationSpec.TimeSkipping
import IntegrationSpec.TimeoutsInWorkflows
import IntegrationSpec.Updates
import Lens.Family2
import OpenTelemetry.Trace
import qualified Proto.Temporal.Api.Failure.V1.Message_Fields as Failure
import qualified Proto.Temporal.Api.History.V1.Message_Fields as History
import RequireCallStack
import System.Directory
import System.Environment (lookupEnv)
import System.IO
import Temporal.Activity hiding (activityId, retryPolicy, workflowId)
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
import Temporal.Exception hiding (activityId)
import Temporal.Interceptor
import Temporal.Operator (IndexedValueType (..), SearchAttributes (..), addSearchAttributes, listSearchAttributes)
import Temporal.Payload hiding (around)
import Temporal.SearchAttributes hiding (Bool)
import qualified Temporal.SearchAttributes as SA
import Temporal.TH (ActivityFn, WorkflowFn, discoverDefinitions)
import Temporal.Testing.Assertions
import Temporal.Worker
import Temporal.Workflow
  ( StartActivityOptions(retryPolicy, activityId)
  , StartChildWorkflowOptions(workflowId, workflowIdReusePolicy)
  )
import qualified Temporal.Workflow as W
import Temporal.Workflow.Unsafe (performUnsafeNonDeterministicIO)
import Test.Hspec


temporalBundle
  [d|
    data WorkflowTests = WorkflowTests
      { shouldRunWorkflowTest :: W.Workflow ()
      , raceBlockOnLeftSideWorks :: W.Workflow (Either Bool Bool)
      , raceBlockOnBothSidesWorks :: W.Workflow (Either Bool Bool)
      , raceThrowsRhsErrorWhenLhsBlocked :: W.Workflow (Either Bool Bool)
      , raceIgnoresRhsErrorOnLhsSuccess :: W.Workflow (Either Bool Bool)
      , continueAsNewWorks :: Int -> W.Workflow Text
      , basicActivityWf :: W.Workflow Int
      , basicActivity :: Activity () Int
      , heartbeatWorks :: Activity () Int
      , runHeartbeat :: W.Workflow Int
      , faultyActivity :: Activity () Int
      , faultyWorkflow :: W.Workflow Int
      , simpleWait :: W.Workflow ()
      , multipleArgs :: Int -> Text -> Bool -> W.Workflow (Int, Text, Bool)
      , nonRetryableFailureTest :: W.Workflow ()
      , nonRetryableFailureAct :: Activity () ()
      , retryableFailureTest :: W.Workflow ()
      , retryableFailureAct :: Activity () ()
      , -- Workflow with failing children
        workflowWithFailingChildren :: [Text] -> W.Workflow ()
      , workflowWithFailingChildrenChild :: W.Workflow ()
      }
      deriving stock (Generic)
    |]


temporalBundle
  [d|
    data DerivingStrategiesWork = DerivingStrategiesWork
      { derivingStrategyExampleThing :: Int
      }
      deriving stock (Show)
    |]


data SampleException = SampleException
  deriving stock (Show)


instance Exception SampleException


data CustomTestException = CustomTestException
  deriving stock (Show)


instance Exception CustomTestException


isWorkflowFailed :: WorkflowExecutionClosed -> Bool
isWorkflowFailed (WorkflowExecutionFailed _) = True
isWorkflowFailed _ = False


data AnApplicationFailure = AnApplicationFailure
  deriving stock (Show)


instance Exception AnApplicationFailure where
  toException = applicationFailureToException
  fromException = applicationFailureFromException


instance ToApplicationFailure AnApplicationFailure where
  toApplicationFailure _ =
    ApplicationFailure
      "AnApplicationFailure"
      "Uh oh"
      False
      []
      ""
      (Just $ seconds 1)


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
            -- , targetUrl = pack ("http://localhost:" <> show pn)
    }


mkWithWorker :: PortNumber -> WorkerConfig actEnv -> IO a -> IO a
mkWithWorker pn conf m = do
  let clientConfig_ = configWithRetry pn
  c <- runStdoutLoggingT $ connectClient globalRuntime clientConfig_
  bracket (startWorker c (conf {payloadProcessor = sillyEncryptionPayloadProcessor})) shutdown (const m)


-- Increment the bytestring words by 1 on encode, and decrement by 1 on decode
--
-- This is used to test that the payload processor is working correctly
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


data TestEnv = TestEnv
  { useClient :: forall a. ReaderT C.WorkflowClient IO a -> IO a
  , baseConf :: ConfigM () ()
  , taskQueue :: W.TaskQueue
  , withWorker :: forall a. WorkerConfig () -> IO a -> IO a
  }


data TemporalWorkflowJobPayload = TemporalWorkflowJobPayload
  { workflowId :: W.WorkflowId
  , workflowType :: W.WorkflowType
  , workflowArgs :: [Data.Aeson.Value]
  , workflowNamespace :: W.Namespace
  , workflowTaskQueue :: W.TaskQueue
  , workflowRetryPolicy :: Maybe W.RetryPolicy
  , workflowIdReusePolicy :: Maybe W.WorkflowIdReusePolicy
  , workflowSearchAttributes :: Map SearchAttributeKey SearchAttributeType
  }
  deriving stock (Eq, Show, Generic)


instance ToJSON TemporalWorkflowJobPayload


instance FromJSON TemporalWorkflowJobPayload


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
      }


setupTimeSkipping :: Interceptors () -> PortNumber -> (TestEnv -> IO ()) -> IO ()
setupTimeSkipping additionalInterceptors fp go = do
  otelInterceptors <- makeOpenTelemetryInterceptor
  let interceptors = otelInterceptors <> additionalInterceptors
  (client, _) <- makeTimeSkippingClient fp interceptors
  (conf, taskQueue) <- mkBaseConf interceptors
  go
    TestEnv
      { useClient = flip runReaderT client
      , withWorker = mkWithWorker fp
      , baseConf = conf
      , taskQueue
      }


spec :: Spec
spec = do
  describe "Exception converters" $ do
    let handlers = mkAnnotatedHandlers standardApplicationFailureHandlers
    it "exception conversion works" $ do
      let aFailure = mkApplicationFailure (toException SampleException) handlers
      aFailure
        `shouldBe` ApplicationFailure
          { stack = ""
          , nonRetryable = False
          , details = []
          , message = "SampleException"
          , type' = "SampleException"
          , nextRetryDelay = Nothing
          }
    it "annotated exception conversion works (pt1)" $ do
      let bFailure = mkApplicationFailure (toException $ AnnotatedException [] SampleException) handlers
      bFailure
        `shouldBe` ApplicationFailure
          { stack = ""
          , nonRetryable = False
          , details = []
          , message = "SampleException"
          , type' = "SampleException"
          , nextRetryDelay = Nothing
          }
    it "annotated exception conversion works (pt2)" $ do
      let cFailure =
            mkApplicationFailure
              ( SomeException
                  $ AnnotatedException
                    [ Annotation Foo
                    , Annotation $
                        fromCallSiteList
                          [
                            ( "Foo"
                            , SrcLoc
                                { srcLocPackage = "Foo"
                                , srcLocModule = "Foo"
                                , srcLocFile = "Foo.hs"
                                , srcLocStartLine = 1
                                , srcLocStartCol = 1
                                , srcLocEndLine = 1
                                , srcLocEndCol = 1
                                }
                            )
                          ]
                    ]
                  $ SomeException SampleException
              )
              handlers
      cFailure
        `shouldBe` ApplicationFailure
          { stack = "Foo, called at Foo.hs:1:1 in Foo:Foo\n"
          , nonRetryable = False
          , details = [Payload {payloadData = "\"Annotation @RegressionTask Foo\"", payloadMetadata = Map.fromList [("encoding", "json/plain"), ("messageType", "[Char]")]}]
          , message = "SampleException"
          , type' = "SampleException"
          , nextRetryDelay = Nothing
          }
    it "Straight ApplicationFailure usage works" $ do
      let basic =
            ApplicationFailure
              { stack = "Foo, called at Foo.hs:1:1 in Foo:Foo\n"
              , nonRetryable = False
              , details = [Payload {payloadData = "\"Annotation @RegressionTask Foo\"", payloadMetadata = Map.fromList [("encoding", "json/plain"), ("messageType", "[Char]")]}]
              , message = "SampleException"
              , type' = "SampleException"
              , nextRetryDelay = Nothing
              }
      mkApplicationFailure (toException basic) handlers `shouldBe` basic
    it "ApplicationFailure hierarchy works" $ do
      let anAppFailure = mkApplicationFailure (toException AnApplicationFailure) handlers
      anAppFailure
        `shouldBe` toApplicationFailure AnApplicationFailure
    it "Annotation checkpoints work" $ do
      eRes <- Annotated.try $ do
        Annotated.checkpointMany [annotateNonRetryableError, annotateNextRetryDelay $ seconds 2] $ do
          Control.Exception.Annotated.throw AnApplicationFailure
      --   pure ()
      -- eRes `shouldSatisfy` isLeft
      case eRes of
        Right () -> fail "Should have failed"
        Left err -> do
          let appFailure = mkApplicationFailure err handlers
          appFailure
            `shouldBe` ApplicationFailure
              "AnApplicationFailure"
              "Uh oh"
              True
              []
              appFailure.stack
              (Just $ seconds 2)

  aroundAll withServer $ do
    aroundAllWith (flip $ setup mempty) needsClient
    aroundAllWith (flip $ setup mempty) terminateTests
    updatesWithInterceptors

  -- Whether time-skipping is enabled is global state in the test server (it's not tracked
  -- per workflow or anything) so we need to use around (rather than aroundAll) to get a
  -- distinct server for each test
  around withTimeSkippingServer $ do
    aroundWith (flip $ setupTimeSkipping mempty) needsTimeSkipping


type MyWorkflow a = W.RequireCallStack => W.Workflow a


defaultCodec :: JSON
defaultCodec = JSON


data RegressionTask = Foo | Bar
  deriving stock (Eq, Show, Generic)


instance ToJSON RegressionTask


instance FromJSON RegressionTask


signalUnblockWorkflow :: W.KnownSignal '[]
signalUnblockWorkflow = W.KnownSignal "unblockWorkflow" defaultCodec


testImpls :: Impl WorkflowTests
testImpls =
  provideCallStack $
    WorkflowTests
      { shouldRunWorkflowTest = $(logDebug) "oh hi!"
      , raceBlockOnLeftSideWorks = do
          let lhs, rhs :: RequireCallStack => W.Workflow Bool
              lhs = do
                $(logDebug) "sleepy lad"
                W.sleep (seconds 10)
                $(logDebug) "bad"
                pure False
              rhs = $(logDebug) "wow" $> True
          res <- lhs `W.race` rhs
          $(logDebug) "done"
          pure res
      , raceBlockOnBothSidesWorks = do
          let lhs, rhs :: RequireCallStack => W.Workflow Bool
              lhs = W.sleep (seconds 5_000) >> pure False
              rhs = W.sleep (seconds 1) >> pure True
          lhs `W.race` rhs
      , raceThrowsRhsErrorWhenLhsBlocked = do
          let lhs, rhs :: RequireCallStack => W.Workflow Bool
              lhs = W.sleep (seconds 5_000) >> pure False
              rhs = error "foo"
          lhs `W.race` rhs
      , raceIgnoresRhsErrorOnLhsSuccess = do
          pure True `W.race` (W.sleep (seconds 5_000) *> error "sad")
      , continueAsNewWorks = \execCount ->
          if execCount < 1
            then W.continueAsNew testRefs.continueAsNewWorks W.defaultContinueAsNewOptions (execCount + 1)
            else pure "woohoo"
      , -- should run a basic activity without issues
        basicActivityWf = do
          $logDebug "starting activity"
          h <-
            W.startActivity
              testRefs.basicActivity
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
          $logDebug "waiting for activity"
          W.wait (h :: W.Task Int)
      , basicActivity = pure 1
      , heartbeatWorks = withHeartbeat JSON $ \heartbeat _readHeartbeat -> do
          heartbeat ()
          liftIO $ threadDelay 200_000
          pure 1
      , runHeartbeat = do
          h <-
            W.startActivity
              testRefs.heartbeatWorks
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
          W.wait (h :: W.Task Int)
      , faultyActivity = do
          res <- askActivityInfo
          if res.attempt <= 2
            then do
              error "sad"
            else pure 1
      , faultyWorkflow = do
          h1 <-
            W.startActivity
              testRefs.faultyActivity
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 1)
          h2 <-
            W.startActivity
              testRefs.faultyActivity
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 1)
          _ <- W.wait @(W.Task Int) h1
          W.wait @(W.Task Int) h2
      , simpleWait = do
          st <- W.newStateVar False
          W.concurrently_ (W.waitCondition (W.readStateVar st)) (W.writeStateVar st True)
      , multipleArgs = \foo bar baz -> pure (foo, bar, baz)
      , nonRetryableFailureTest = do
          h <-
            W.startActivity
              testRefs.nonRetryableFailureAct
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 1)
          W.wait (h :: W.Task ())
      , nonRetryableFailureAct = checkpoint annotateNonRetryableError $ do
          error "sad"
      , retryableFailureTest = do
          h <-
            W.startActivity
              testRefs.retryableFailureAct
              (W.defaultStartActivityOptions $ W.StartToClose $ seconds 1)
          -- { retryPolicy = Just $ defaultRetryPolicy
          --   { nonRetryableErrorTypes = [ "ErrorCall" ]
          --   }
          -- })
          W.wait (h :: W.Task ())
      , retryableFailureAct = do
          i <- askActivityInfo
          if attempt i > 1
            then pure ()
            else error "sad"
      , workflowWithFailingChildren = \wfs -> do
          let runWf :: RequireCallStack => WorkflowId -> W.Workflow ()
              runWf f =
                W.executeChildWorkflow
                  testRefs.workflowWithFailingChildrenChild
                  ( W.defaultChildWorkflowOptions
                      { workflowId = Just f
                      , workflowIdReusePolicy = W.WorkflowIdReusePolicyAllowDuplicateFailedOnly
                      }
                  )
          traverse_ (runWf . WorkflowId) wfs
      , workflowWithFailingChildrenChild = do
          W.sleep $ seconds 2
      }


builtinStackTraceQuery :: W.KnownQuery '[] Text
builtinStackTraceQuery = W.KnownQuery "__stack_trace" defaultCodec


builtinEnhancedStackTraceQuery :: W.KnownQuery '[] Value
builtinEnhancedStackTraceQuery = W.KnownQuery "__enhanced_stack_trace" defaultCodec


builtinWorkflowMetadataQuery :: W.KnownQuery '[] Value
builtinWorkflowMetadataQuery = W.KnownQuery "__temporal_workflow_metadata" defaultCodec


testRefs :: Refs WorkflowTests
testRefs = refs defaultCodec


testDefs :: Defs () WorkflowTests
testDefs = defs defaultCodec testImpls


testConf :: Definitions ()
testConf = collectTemporalDefinitions testDefs


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


needsClient :: SpecWith TestEnv
needsClient = do
  describe "Workflow" $ do
    specify "should run a workflow" $ \TestEnv {..} -> do
      let conf = configure () testConf $ do
            baseConf
      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts =
                    C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 30
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                }
        useClient (C.execute testRefs.shouldRunWorkflowTest "basicWf" opts)
          `shouldReturn` ()

    describe "Workflow existence assertions" $ do
      specify "checkWorkflowExecutionExists returns correct values" $ \TestEnv {..} -> do
        let wfId = WorkflowId "test-existence-check"
            opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                }

        exists1 <- useClient $ C.checkWorkflowExecutionExists testRefs.shouldRunWorkflowTest wfId
        exists1 `shouldBe` False

        _ <- useClient $ C.start testRefs.shouldRunWorkflowTest wfId opts

        exists2 <- useClient $ C.checkWorkflowExecutionExists testRefs.shouldRunWorkflowTest wfId
        exists2 `shouldBe` True

      specify "check that workflow existence assertions throw correct exceptions" $ \TestEnv {..} -> do
        let wfId = WorkflowId "test-assertion-existence"
            opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                }

        useClient $ assertWorkflowExecutionDoesNotExist testRefs.shouldRunWorkflowTest wfId

        _ <- useClient $ C.start testRefs.shouldRunWorkflowTest wfId opts

        useClient $ assertWorkflowExecutionExists testRefs.shouldRunWorkflowTest wfId

      specify "check that workflow existence assertions throw correct exceptions when assertions fail" $ \TestEnv {..} -> do
        let wfId = WorkflowId "test-assertion-failure"
            opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                }

        useClient (assertWorkflowExecutionExists testRefs.shouldRunWorkflowTest wfId)
          `shouldThrow` (== WorkflowShouldExist wfId)

        _ <- useClient $ C.start testRefs.shouldRunWorkflowTest wfId opts

        useClient (assertWorkflowExecutionDoesNotExist testRefs.shouldRunWorkflowTest wfId)
          `shouldThrow` (== WorkflowShouldNotExist wfId)

    describe "race" $ do
      specify "block on left side works" $ \TestEnv {..} -> do
        let conf = configure () testConf $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient (C.execute testRefs.raceBlockOnLeftSideWorks "blockLeftWorks" opts)
            `shouldReturn` Right True

      specify "block on both side works" $ \TestEnv {..} -> do
        let conf = configure () testConf $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient (C.execute testRefs.raceBlockOnBothSidesWorks "blockBothWorks" opts)
            `shouldReturn` Right True

      specify "throws immediately when either side throws" $ \TestEnv {..} -> do
        let conf = configure () testConf $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient (C.execute testRefs.raceThrowsRhsErrorWhenLhsBlocked "eitherSideThrows" opts)
            `shouldThrow` \case
              (WorkflowExecutionFailed _) -> True
              _ -> False

      specify "treats error as ok if LHS returns immediately" $ \TestEnv {..} -> do
        let conf = configure () testConf $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient (C.execute testRefs.raceIgnoresRhsErrorOnLhsSuccess "lhsError" opts)
            `shouldReturn` Left True
    describe "Activities" $ do
      specify "should run a basic activity without issues" $ \TestEnv {..} -> do
        let conf = configure () testConf $ do
              baseConf

        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient (C.execute testRefs.basicActivityWf "basicActivity" opts)
            `shouldReturn` 1
      specify "heartbeat works" $ \TestEnv {..} -> do
        let conf = configure () testConf $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient (C.execute testRefs.runHeartbeat "heartbeatWorks" opts)
            `shouldReturn` 1
      specify "should properly handle faulty workflows" $ \TestEnv {..} -> do
        let conf = configure () testConf $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient (C.execute testRefs.faultyWorkflow "faultyWorkflow" opts)
            `shouldReturn` 1
      specify "Immediate activity cancellation returns the expected result to workflows" $ \TestEnv {..} -> do
        let testActivity :: Activity () Int
            testActivity = withHeartbeat JSON $ \heartbeat _readHeartbeat -> do
              heartbeat ()
              pure 0

            testActivityAct :: ProvidedActivity () (Activity () Int)
            testActivityAct = provideActivity defaultCodec "immediateCancelResponse" testActivity

            testFn :: MyWorkflow Int
            testFn = do
              h1 <-
                W.startActivity
                  testActivityAct.reference
                  (W.defaultStartActivityOptions $ W.StartToClose $ seconds 1)
              W.cancel (h1 :: W.Task Int)
              W.wait h1 `Catch.catch` \(_ :: ActivityCancelled) -> pure 1

            wf = W.provideWorkflow defaultCodec "activityCancellation" testFn
            conf = configure () (wf, testActivityAct) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts =
                      C.TimeoutOptions
                        { C.runTimeout = Just $ seconds 30
                        , C.executionTimeout = Nothing
                        , C.taskTimeout = Nothing
                        }
                  }
          useClient (C.execute wf.reference "immediateActivityCancellation" opts)
            `shouldReturn` 1
      specify "Activity retry exhaustion returns that in the RetryState" $ \TestEnv {..} -> do
        wfId <- uuidText
        let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts =
                      C.TimeoutOptions
                        { C.runTimeout = Just $ seconds 30
                        , C.executionTimeout = Nothing
                        , C.taskTimeout = Nothing
                        }
                  }
          useClient (C.execute ActivityTimeoutInWorkflow (WorkflowId wfId) opts)
            `shouldReturn` False

    describe "Local Activities" $ do
      specify "should run a basic local activity" $ \TestEnv {..} -> do
        let localAct :: ProvidedActivity () (Activity () Int)
            localAct = provideCallStack $ provideActivity defaultCodec "basicLocalAct" $ pure 42

            workflow :: MyWorkflow Int
            workflow = do
              W.executeLocalActivity
                localAct.reference
                (W.defaultStartLocalActivityOptions {W.startToCloseTimeout = Just $ seconds 5})

            wf = W.provideWorkflow defaultCodec "basicLocalActivityWf" workflow
            conf = configure () (wf, activityDefinition localAct) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient (C.execute wf.reference "basicLocalActivity" opts)
            `shouldReturn` 42

      specify "local activity with arguments" $ \TestEnv {..} -> do
        let localAct :: ProvidedActivity () (Int -> Text -> Activity () Text)
            localAct = provideCallStack $ provideActivity defaultCodec "localActWithArgs" $ \n msg ->
              pure $ msg <> Text.pack (show n)

            workflow :: MyWorkflow Text
            workflow = do
              W.executeLocalActivity
                localAct.reference
                (W.defaultStartLocalActivityOptions {W.startToCloseTimeout = Just $ seconds 5})
                (3 :: Int)
                ("hello" :: Text)

            wf = W.provideWorkflow defaultCodec "localActivityWithArgsWf" workflow
            conf = configure () (wf, activityDefinition localAct) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient (C.execute wf.reference "localActivityWithArgs" opts)
            `shouldReturn` "hello3"

      specify "local activity failure propagates to workflow" $ \TestEnv {..} -> do
        let localAct :: ProvidedActivity () (Activity () ())
            localAct = provideCallStack $ provideActivity defaultCodec "failingLocalAct" $ do
              error "local activity failure"

            workflow :: MyWorkflow ()
            workflow = do
              W.executeLocalActivity
                localAct.reference
                (W.defaultStartLocalActivityOptions
                  { W.startToCloseTimeout = Just $ seconds 5
                  , W.retryPolicy = Just $ W.defaultRetryPolicy { W.maximumAttempts = 1 }
                  })

            wf = W.provideWorkflow defaultCodec "failingLocalActivityWf" workflow
            conf = configure () (wf, activityDefinition localAct) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts = C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 10
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                  }
          res <- Control.Exception.try @SomeException $ useClient (C.execute wf.reference "failingLocalActivity" opts)
          res `shouldSatisfy` isLeft

      specify "local activity with startLocalActivity and wait" $ \TestEnv {..} -> do
        let localAct :: ProvidedActivity () (Activity () Text)
            localAct = provideCallStack $ provideActivity defaultCodec "asyncLocalAct" $ pure "async-result"

            workflow :: MyWorkflow Text
            workflow = do
              task <- W.startLocalActivity
                localAct.reference
                (W.defaultStartLocalActivityOptions {W.startToCloseTimeout = Just $ seconds 5})
              W.wait task

            wf = W.provideWorkflow defaultCodec "asyncLocalActivityWf" workflow
            conf = configure () (wf, activityDefinition localAct) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient (C.execute wf.reference "asyncLocalActivity" opts)
            `shouldReturn` "async-result"

      specify "local activity retries on transient failure" $ \TestEnv {..} -> do
        attemptRef <- newIORef (0 :: Int)
        let localAct :: ProvidedActivity () (Activity () Int)
            localAct = provideCallStack $ provideActivity defaultCodec "retryLocalAct" $ do
              attempt <- liftIO $ atomicModifyIORef' attemptRef (\n -> (n + 1, n + 1))
              if attempt < 3
                then error "transient failure"
                else pure attempt

            workflow :: MyWorkflow Int
            workflow = do
              W.executeLocalActivity
                localAct.reference
                (W.defaultStartLocalActivityOptions
                  { W.startToCloseTimeout = Just $ seconds 10
                  , W.retryPolicy = Just $ W.defaultRetryPolicy
                      { W.maximumAttempts = 5
                      , W.initialInterval = milliseconds 100
                      }
                  })

            wf = W.provideWorkflow defaultCodec "retryLocalActivityWf" workflow
            conf = configure () (wf, activityDefinition localAct) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts = C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 30
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                  }
          useClient (C.execute wf.reference "retryLocalActivity" opts)
            `shouldReturn` 3

      specify "parallel local activities" $ \TestEnv {..} -> do
        let localAct :: ProvidedActivity () (Text -> Activity () Text)
            localAct = provideCallStack $ provideActivity defaultCodec "echoLocalAct" pure

            workflow :: MyWorkflow [Text]
            workflow = do
              let laOpts = W.defaultStartLocalActivityOptions {W.startToCloseTimeout = Just $ seconds 5}
              t1 <- W.startLocalActivity localAct.reference laOpts ("one" :: Text)
              t2 <- W.startLocalActivity localAct.reference laOpts ("two" :: Text)
              t3 <- W.startLocalActivity localAct.reference laOpts ("three" :: Text)
              r1 <- W.wait t1
              r2 <- W.wait t2
              r3 <- W.wait t3
              pure [r1, r2, r3]

            wf = W.provideWorkflow defaultCodec "parallelLocalActivitiesWf" workflow
            conf = configure () (wf, activityDefinition localAct) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient (C.execute wf.reference "parallelLocalActivities" opts)
            `shouldReturn` ["one", "two", "three"]

      specify "serial local activities in same task" $ \TestEnv {..} -> do
        let localAct :: ProvidedActivity () (Text -> Activity () Text)
            localAct = provideCallStack $ provideActivity defaultCodec "serialEchoLocalAct" pure

            workflow :: MyWorkflow [Text]
            workflow = do
              let laOpts = W.defaultStartLocalActivityOptions {W.startToCloseTimeout = Just $ seconds 5}
              r1 <- W.executeLocalActivity localAct.reference laOpts ("first" :: Text)
              r2 <- W.executeLocalActivity localAct.reference laOpts ("second" :: Text)
              r3 <- W.executeLocalActivity localAct.reference laOpts ("third" :: Text)
              pure [r1, r2, r3]

            wf = W.provideWorkflow defaultCodec "serialLocalActivitiesWf" workflow
            conf = configure () (wf, activityDefinition localAct) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient (C.execute wf.reference "serialLocalActivities" opts)
            `shouldReturn` ["first", "second", "third"]

      specify "local activity cancellation" $ \TestEnv {..} -> do
        blockForever <- newEmptyMVar
        let localAct :: ProvidedActivity () (Activity () Int)
            localAct = provideCallStack $ provideActivity defaultCodec "longRunningLocalAct" $ do
              liftIO $ takeMVar blockForever
              pure 0

            workflow :: MyWorkflow Int
            workflow = do
              h <- W.startLocalActivity
                localAct.reference
                (W.defaultStartLocalActivityOptions {W.startToCloseTimeout = Just $ seconds 10})
              W.cancel (h :: W.Task Int)
              W.wait h `Catch.catch` \(_ :: ActivityCancelled) -> pure 99

            wf = W.provideWorkflow defaultCodec "cancelLocalActivityWf" workflow
            conf = configure () (wf, activityDefinition localAct) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts = C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 15
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                  }
          useClient (C.execute wf.reference "cancelLocalActivity" opts)
            `shouldReturn` 99

      specify "local activity non-retryable error does not retry" $ \TestEnv {..} -> do
        attemptRef <- newIORef (0 :: Int)
        let localAct :: ProvidedActivity () (Activity () ())
            localAct = provideCallStack $ provideActivity defaultCodec "nonRetryLocalAct" $
              checkpoint annotateNonRetryableError $ do
                _ <- liftIO $ atomicModifyIORef' attemptRef (\n -> (n + 1, n + 1))
                error "non-retryable error"

            workflow :: MyWorkflow ()
            workflow = do
              W.executeLocalActivity
                localAct.reference
                (W.defaultStartLocalActivityOptions
                  { W.startToCloseTimeout = Just $ seconds 5
                  , W.retryPolicy = Just $ W.defaultRetryPolicy { W.maximumAttempts = 5 }
                  })

            wf = W.provideWorkflow defaultCodec "nonRetryLocalActivityWf" workflow
            conf = configure () (wf, activityDefinition localAct) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts = C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 10
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                  }
          res <- Control.Exception.try @SomeException $ useClient (C.execute wf.reference "nonRetryLocalActivity" opts)
          res `shouldSatisfy` isLeft
        finalAttempts <- readIORef attemptRef
        finalAttempts `shouldBe` 1

      specify "isLocal flag is set correctly" $ \TestEnv {..} -> do
        let checkIsLocalAct :: ProvidedActivity () (Activity () Bool)
            checkIsLocalAct = provideCallStack $ provideActivity defaultCodec "checkIsLocalAct" $ do
              info <- askActivityInfo
              pure info.isLocal

            workflow :: MyWorkflow (Bool, Bool)
            workflow = do
              localResult <- W.executeLocalActivity
                checkIsLocalAct.reference
                (W.defaultStartLocalActivityOptions {W.startToCloseTimeout = Just $ seconds 5})
              remoteResult <- W.executeActivity
                checkIsLocalAct.reference
                (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
              pure (localResult, remoteResult)

            wf = W.provideWorkflow defaultCodec "isLocalFlagWf" workflow
            conf = configure () (wf, activityDefinition checkIsLocalAct) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient (C.execute wf.reference "isLocalFlag" opts)
            `shouldReturn` (True, False)

      specify "local activity timer backoff" $ \TestEnv {..} -> do
        attemptRef <- newIORef (0 :: Int)
        let localAct :: ProvidedActivity () (Activity () Int)
            localAct = provideCallStack $ provideActivity defaultCodec "backoffLocalAct" $ do
              attempt <- liftIO $ atomicModifyIORef' attemptRef (\n -> (n + 1, n + 1))
              if attempt < 2
                then error "retry me"
                else pure attempt

            workflow :: MyWorkflow Int
            workflow = do
              W.executeLocalActivity
                localAct.reference
                (W.defaultStartLocalActivityOptions
                  { W.startToCloseTimeout = Just $ seconds 30
                  , W.localRetryThreshold = Just $ milliseconds 1
                  , W.retryPolicy = Just $ W.defaultRetryPolicy
                      { W.maximumAttempts = 3
                      , W.initialInterval = seconds 2
                      }
                  })

            wf = W.provideWorkflow defaultCodec "backoffLocalActivityWf" workflow
            conf = configure () (wf, activityDefinition localAct) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts = C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 60
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                  }
          useClient (C.execute wf.reference "backoffLocalActivity" opts)
            `shouldReturn` 2

      specify "local activity timeout configuration" $ \TestEnv {..} -> do
        let localAct :: ProvidedActivity () (Activity () (Maybe Duration, Maybe Duration))
            localAct = provideCallStack $ provideActivity defaultCodec "timeoutInfoLocalAct" $ do
              info <- askActivityInfo
              pure (info.startToCloseTimeout, info.scheduleToCloseTimeout)

            workflowStcOnly :: MyWorkflow (Maybe Duration, Maybe Duration)
            workflowStcOnly =
              W.executeLocalActivity
                localAct.reference
                (W.defaultStartLocalActivityOptions {W.startToCloseTimeout = Just $ seconds 5})

            workflowS2cOnly :: MyWorkflow (Maybe Duration, Maybe Duration)
            workflowS2cOnly =
              W.executeLocalActivity
                localAct.reference
                (W.defaultStartLocalActivityOptions {W.scheduleToCloseTimeout = Just $ seconds 7})

            workflowBoth :: MyWorkflow (Maybe Duration, Maybe Duration)
            workflowBoth =
              W.executeLocalActivity
                localAct.reference
                (W.defaultStartLocalActivityOptions
                  { W.startToCloseTimeout = Just $ seconds 3
                  , W.scheduleToCloseTimeout = Just $ seconds 7
                  })

            wfStc = W.provideWorkflow defaultCodec "timeoutStcOnlyWf" workflowStcOnly
            wfS2c = W.provideWorkflow defaultCodec "timeoutS2cOnlyWf" workflowS2cOnly
            wfBoth = W.provideWorkflow defaultCodec "timeoutBothWf" workflowBoth
            conf = configure () (wfStc, wfS2c, wfBoth, activityDefinition localAct) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          stcResult <- useClient (C.execute wfStc.reference "timeoutStcOnly" opts)
          fst stcResult `shouldBe` Just (seconds 5)

          s2cResult <- useClient (C.execute wfS2c.reference "timeoutS2cOnly" opts)
          snd s2cResult `shouldBe` Just (seconds 7)

          bothResult <- useClient (C.execute wfBoth.reference "timeoutBoth" opts)
          fst bothResult `shouldBe` Just (seconds 3)
          snd bothResult `shouldBe` Just (seconds 7)

      specify "cancel local activity during DoBackoff timer" $ \TestEnv {..} -> do
        attemptRef <- newIORef (0 :: Int)
        let localAct :: ProvidedActivity () (Activity () ())
            localAct = provideCallStack $ provideActivity defaultCodec "failForDoBackoffCancelAct" $ do
              n <- liftIO $ atomicModifyIORef' attemptRef (\n -> (n + 1, n))
              when (n < 5) $ error "retry me"

            workflow :: MyWorkflow Int
            workflow = do
              h <- W.startLocalActivity
                localAct.reference
                (W.defaultStartLocalActivityOptions
                  { W.startToCloseTimeout = Just $ seconds 30
                  , W.retryPolicy = Just $ W.defaultRetryPolicy
                      { W.maximumAttempts = 10
                      , W.initialInterval = seconds 30
                      }
                  -- Tiny threshold forces DoBackoff after every failure, creating
                  -- server-side timers that can be cancelled.
                  , W.localRetryThreshold = Just $ milliseconds 1
                  })
              -- Wait long enough for the first attempt to fail and the DoBackoff
              -- timer to be scheduled, then cancel.
              W.sleep $ seconds 2
              W.cancel (h :: W.Task ())
              (W.wait h >> pure 0) `Catch.catch` \(_ :: ActivityCancelled) -> pure 77

            wf = W.provideWorkflow defaultCodec "cancelDoBackoffLocalActivityWf" workflow
            conf = configure () (wf, activityDefinition localAct) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts = C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 30
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                  }
          useClient (C.execute wf.reference "cancelDoBackoffLocalActivity" opts)
            `shouldReturn` 77

      specify "worker shutdown completes local activity gracefully" $ \TestEnv {..} -> do
        activityStarted <- newEmptyMVar
        activityCanFinish <- newEmptyMVar
        let localAct :: ProvidedActivity () (Activity () Text)
            localAct = provideCallStack $ provideActivity defaultCodec "shutdownLocalAct" $ do
              liftIO $ putMVar activityStarted ()
              liftIO $ takeMVar activityCanFinish
              pure "completed-during-shutdown"

            workflow :: MyWorkflow Text
            workflow =
              W.executeLocalActivity
                localAct.reference
                (W.defaultStartLocalActivityOptions {W.startToCloseTimeout = Just $ seconds 30})

            wf = W.provideWorkflow defaultCodec "workerShutdownLocalActivityWf" workflow
            conf = configure () (wf, activityDefinition localAct) $ do
              baseConf
        -- Start workflow in one worker, then shut down while activity is running.
        -- The workflow should still complete because the activity finishes before
        -- the shutdown grace period expires.
        resultVar <- newEmptyMVar
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts = C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 30
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                  }
          _ <- forkIO $ do
            res <- useClient (C.execute wf.reference "workerShutdownLA" opts)
            putMVar resultVar res
          -- Wait until the activity has started executing
          takeMVar activityStarted
          -- Allow the activity to finish
          putMVar activityCanFinish ()
          -- Wait for the workflow result before the bracket-based shutdown
          res <- takeMVar resultVar
          res `shouldBe` "completed-during-shutdown"

      specify "local activity replay works" $ \TestEnv {..} -> do
        let localAct :: ProvidedActivity () (Text -> Activity () Text)
            localAct = provideCallStack $ provideActivity defaultCodec "replayEchoLocalAct" pure

            originalWorkflow :: W.ProvidedWorkflow (W.Workflow Text)
            originalWorkflow = W.provideWorkflow defaultCodec "replay-local-activity-wf" $ provideCallStack $ do
              W.executeLocalActivity
                localAct.reference
                (W.defaultStartLocalActivityOptions {W.startToCloseTimeout = Just $ seconds 5})
                ("replayed" :: Text)

            originalConf = provideCallStack $ configure () (testConf <> toDefinitions (activityDefinition localAct) <> toDefinitions originalWorkflow) baseConf

        history <- withWorker originalConf $ do
          uuid <- uuidText
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts = C.TimeoutOptions {C.runTimeout = Just $ seconds 10, C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                  }
          useClient $ do
            wfHandle <- C.start originalWorkflow (WorkflowId uuid) opts
            C.waitWorkflowResult wfHandle
            C.fetchHistory wfHandle

        let replayConf = originalConf {payloadProcessor = sillyEncryptionPayloadProcessor}
        replayResult <- runReplayHistory globalRuntime replayConf history
        replayResult `shouldSatisfy` isRight

    describe "Args and return values" $ do
      specify "args should be passed to the workflow in the correct order" $ \TestEnv {..} -> do
        let testFn :: Int -> Text -> Bool -> MyWorkflow (Int, Text, Bool)
            testFn a b c = pure (a, b, c)
            wf = W.provideWorkflow defaultCodec "test" testFn
            conf = configure () wf $ do
              baseConf

        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient (C.execute wf.reference "argOrderingIsCorrect" opts 1 "two" False)
            `shouldReturn` (1, "two", False)
      -- TODO, move to composite codec package
      -- specify "binary payloads work" $ \TestEnv{..} -> do
      --   let testFn :: ByteString -> W.Workflow ByteString
      --       testFn _ = pure "general kenobi"
      --       wf = W.provideWorkflow defaultCodec "test" testFn
      --       conf = configure () $ do
      --         baseConf
      --         addWorkflow wf
      --   withWorker conf $ do
      --     wfId <- uuidText
      --     let opts = C.startWorkflowOptions
      --           (W.WorkflowId wfId)
      --           taskQueue
      --     C.execute wf.reference opts "hello there."
      --       `shouldReturn` "general kenobi"
      specify "args that parse incorrectly should fail a Workflow appropriately" $ \TestEnv {..} -> do
        let testFn :: Int -> W.Workflow Bool
            testFn _ = pure True
            wf = W.provideWorkflow defaultCodec "test" testFn
            badWfRef = W.KnownWorkflow @'[String] @Int defaultCodec "test"
            conf = configure () wf $ do
              baseConf
            opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                }
        withWorker conf $ do
          useClient (C.execute badWfRef "incorrectWorkflowArg" opts "ruhroh")
            `shouldThrow` \case
              (WorkflowExecutionFailed _) -> True
              _ -> False
      specify "memo values that parse incorrectly should fail a Workflow appropriately" $ \TestEnv {..} -> do
        pending
      specify "header values that parse incorrectly should fail a Workflow appropriately" $ \TestEnv {..} -> do
        pending
      specify "search attribute values that parse incorrectly should fail a Workflow appropriately" $ \TestEnv {..} -> do
        pending
      specify "args that parse incorrectly should fail an Activity appropriately" $ \TestEnv {..} -> do
        let act :: Int -> Activity () Bool
            act _ = pure True
            actDef = provideActivity defaultCodec "badArgAct" act
            badActRef = KnownActivity @'[String] @Bool defaultCodec "badArgAct"
            workflow :: MyWorkflow Bool
            workflow =
              W.executeActivity badActRef
                (W.defaultStartActivityOptions $ W.ScheduleToClose $ seconds 3)
                  { retryPolicy = Just W.defaultRetryPolicy { W.maximumAttempts = 1 } }
                "notAnInt"
            wf = W.provideWorkflow defaultCodec "badArgActWf" workflow
            conf = configure () (wf, actDef) $ do
              baseConf
            opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts = C.TimeoutOptions {C.runTimeout = Just (seconds 10), C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                }
        withWorker conf $ do
          useClient (C.execute wf.reference "badArgAct" opts)
            `shouldThrow` \case
              (WorkflowExecutionFailed _) -> True
              _ -> False
      specify "Workflow return values that parse incorrectly should throw a ValueException for Client" $ \TestEnv {..} -> do
        let testFn :: Int -> W.Workflow Bool
            testFn _ = pure True
            wf = W.provideWorkflow defaultCodec "test" testFn
            badWfRef = W.KnownWorkflow @'[Int] @String defaultCodec "test"
            conf = configure () wf $ do
              baseConf
            opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                }
        withWorker conf $ do
          useClient (C.execute badWfRef "incorrectWorkflowArg" opts 0)
            `shouldThrow` (ValueError "Error in $: expected String, but encountered Boolean" ==)
      specify "ChildWorkflow return values that parse incorrectly should throw a ValueException in a Workflow" $ \TestEnv {..} -> do
        let childWorkflow :: W.Workflow Bool
            childWorkflow = pure True
            childWf = W.provideWorkflow defaultCodec "badRetChild" childWorkflow
            badChildRef = W.KnownWorkflow @'[] @String defaultCodec "badRetChild"
            parentWorkflow :: MyWorkflow String
            parentWorkflow =
              W.executeChildWorkflow badChildRef W.defaultChildWorkflowOptions
            parentWf = W.provideWorkflow defaultCodec "badRetChildParent" parentWorkflow
            conf = configure () (parentWf, childWf) $ do
              baseConf
            opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts = C.TimeoutOptions {C.runTimeout = Just (seconds 10), C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                }
        withWorker conf $ do
          useClient (C.execute parentWf.reference "badRetChild" opts)
            `shouldThrow` \case
              (WorkflowExecutionFailed _) -> True
              _ -> False
      specify "Activity return values that parse incorrectly should throw a ValueException in a Workflow" $ \TestEnv {..} -> do
        let act :: Activity () Bool
            act = pure True
            actDef = provideActivity defaultCodec "badRetAct" act
            badActRef = KnownActivity @'[] @String defaultCodec "badRetAct"
            workflow :: MyWorkflow String
            workflow =
              W.executeActivity badActRef (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
            wf = W.provideWorkflow defaultCodec "badRetActWf" workflow
            conf = configure () (wf, actDef) $ do
              baseConf
            opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts = C.TimeoutOptions {C.runTimeout = Just (seconds 10), C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                }
        withWorker conf $ do
          useClient (C.execute wf.reference "badRetAct" opts)
            `shouldThrow` \case
              (WorkflowExecutionFailed _) -> True
              _ -> False

    --   describe "not found" $ do
    --     xit "should result in a task retry" $ \TestEnv{..} -> do
    --       let conf = configure () () $ do
    --             baseConf
    --       withWorker conf $ do
    --         wfId <- uuidText
    --         let opts = C.startWorkflowOptions
    --               (W.WorkflowId wfId)
    --               taskQueue
    --         -- pending
    --         let nonExistentWorkflow :: W.KnownWorkflow '[] ()
    --             nonExistentWorkflow = W.KnownWorkflow JSON Nothing Nothing "foo"
    --         _wfHandle <- C.start nonExistentWorkflow opts
    --         _ <- getLine
    --         pure ()

    --   --   specify "the workflow should return the correct value" pending
    --   -- describe "Cancellation" $ do
    --   --   specify "cancel a workflow" pending
    --   --   specify "cancelling a workflow cancels its activities" pending
    --   -- describe "Randomness" $ do
    --   --   specify "randomness is deterministic" pending
    describe "Time" $ do
      specify "time is deterministic" $ \TestEnv {..} -> do
        let testFn :: MyWorkflow (UTCTime, UTCTime, UTCTime)
            testFn = do
              t1 <- W.now
              t2 <- W.now
              W.sleep $ nanoseconds 1
              t3 <- W.now
              pure (t1, t2, t3)
            wf = W.provideWorkflow defaultCodec "test" testFn
            conf = configure () wf $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          (t1, t2, t3) <- useClient (C.execute wf.reference "deterministicTime" opts)
          t1 `shouldBe` t2
          t3 `shouldSatisfy` (> t2)

    --   --   specify "ApplicationFailure exception" pending
    --   --   specify "ActivityFailure exception" pending
    --   --   specify "Non-wrapped exception" pending
    describe "Child workflows" $ do
      specify "failing children" $ \TestEnv {..} -> do
        let conf = configure () testConf $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts =
                      C.TimeoutOptions
                        { C.runTimeout = Nothing
                        , C.executionTimeout = Nothing
                        , C.taskTimeout = Nothing
                        }
                  }
          childWorkflowIds <- replicateM 3 uuidText
          wfId <- uuidText
          useClient (C.execute testRefs.workflowWithFailingChildren (WorkflowId wfId) opts childWorkflowIds)
            `shouldReturn` ()
          wfId2 <- uuidText
          useClient (C.execute testRefs.workflowWithFailingChildren (WorkflowId wfId2) opts childWorkflowIds)
            `shouldThrow` \case
              (WorkflowExecutionFailed _) -> True
              _ -> False

      specify "invoke" $ \TestEnv {..} -> do
        parentId <- uuidText
        let isEven :: Int -> W.Workflow Bool
            isEven x = pure (even x)
            isEventWf = W.provideWorkflow defaultCodec "isEven" isEven
            parentWorkflow :: MyWorkflow Bool
            parentWorkflow = do
              let childTimeout =
                    C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 5
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                  opts :: W.StartChildWorkflowOptions
                  opts = W.defaultChildWorkflowOptions {W.timeoutOptions = childTimeout}
              childWorkflow <- W.startChildWorkflow isEventWf.reference opts 2
              $(logDebug) "waiting for child workflow"
              res <- W.waitChildWorkflowResult childWorkflow
              $(logDebug) "got child workflow result"
              pure res
            parentWf = W.provideWorkflow defaultCodec "basicInvokeChildWorkflow" parentWorkflow
            conf = configure () (isEventWf, parentWf) $ do
              baseConf

        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts =
                      C.TimeoutOptions
                        { C.runTimeout = Just $ seconds 5
                        , C.executionTimeout = Nothing
                        , C.taskTimeout = Nothing
                        }
                  }
          useClient (C.execute parentWf.reference (W.WorkflowId parentId) opts)
            `shouldReturn` True

      specify "failure" $ \TestEnv {..} -> do
        parentId <- uuidText
        let busted :: W.Workflow ()
            busted = error "busted"
            bustedWf = W.provideWorkflow defaultCodec "busted" busted
            parentWorkflow :: MyWorkflow ()
            parentWorkflow = do
              childWorkflow <- W.startChildWorkflow bustedWf.reference W.defaultChildWorkflowOptions
              W.waitChildWorkflowResult childWorkflow
            parentWf = W.provideWorkflow defaultCodec "parent" parentWorkflow
            conf = configure () (bustedWf, parentWf) $ do
              baseConf

        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient (C.execute parentWf.reference (W.WorkflowId parentId) opts)
            `shouldThrow` \case
              (WorkflowExecutionFailed _) -> True
              _ -> False

      -- --     specify "termination" $ \_ -> pending
      -- --     specify "timeout" $ \_ -> pending
      -- --     specify "startFail" $ \_ -> pending
      specify "cancel immediately" $ \TestEnv {..} -> do
        parentId <- uuidText
        let cancelTest :: MyWorkflow ()
            cancelTest = W.sleep $ minutes 1
            childWf = W.provideWorkflow defaultCodec "immediateCancelTestChild" cancelTest
            parentWorkflow :: MyWorkflow String
            parentWorkflow = do
              childWorkflow <- W.startChildWorkflow childWf.reference W.defaultChildWorkflowOptions
              W.cancelChildWorkflowExecution childWorkflow
              result <- Catch.try $ W.waitChildWorkflowResult childWorkflow
              pure $ show (result :: Either SomeException ())
            parentWf = W.provideWorkflow defaultCodec "immediateCancelTestParent" parentWorkflow
            conf = configure () (childWf, parentWf) $ do
              baseConf

        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient (C.execute parentWf.reference (W.WorkflowId parentId) opts)
            `shouldReturn` "Left ChildWorkflowCancelled"

      -- TODO, the parent workflow event list doesn't really show the child workflow being cancelled???
      specify "cancel after child workflow has started" $ \TestEnv {..} -> do
        parentId <- uuidText
        let cancelTest :: MyWorkflow ()
            cancelTest = W.waitCancellation

            childWf = W.provideWorkflow defaultCodec "cancelTestChild" cancelTest
            parentWorkflow :: MyWorkflow String
            parentWorkflow = do
              childWorkflow <- W.startChildWorkflow childWf.reference W.defaultChildWorkflowOptions
              W.waitChildWorkflowStart childWorkflow
              W.cancelChildWorkflowExecution childWorkflow
              result <- Catch.try $ W.waitChildWorkflowResult childWorkflow
              pure $ show (result :: Either SomeException ())
            parentWf = W.provideWorkflow defaultCodec "cancelTestParent" parentWorkflow
            conf = configure () (childWf, parentWf) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient (C.execute parentWf.reference (W.WorkflowId parentId) opts)
            `shouldReturn` "Left ChildWorkflowCancelled"

    -- Signal tests are in SignalSpec.hs
    describe "Query" $ do
      specify "works" $ \TestEnv {..} -> do
        tp <- getGlobalTracerProvider
        let testTracer = makeTracer tp "testTracer" tracerOptions

        let echoQuery :: W.KnownQuery '[Text] Text
            echoQuery = W.KnownQuery "testQuery" defaultCodec
            workflow :: MyWorkflow ()
            workflow = do
              W.setQueryHandler echoQuery $ \msg -> pure msg
              W.sleep $ seconds 5
            wf = W.provideWorkflow defaultCodec "queryWorkflow" workflow
            conf = configure () wf $ do
              baseConf

        inSpan testTracer "Query.works" defaultSpanArguments $ do
          withWorker conf $ do
            let opts =
                  (C.startWorkflowOptions taskQueue)
                    { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                    }
            h <- useClient (C.start wf.reference "queryWorks" opts)
            result <- C.query h echoQuery C.defaultQueryOptions "hello"
            C.cancel h (C.CancellationOptions mempty)
            result `shouldBe` Right "hello"

      specify "query not found" $ \TestEnv {..} -> do
        uuid <- uuidText
        let echoQuery :: W.KnownQuery '[Text] Text
            echoQuery = W.KnownQuery "testQuery" defaultCodec
            workflow :: MyWorkflow ()
            workflow = do
              W.setQueryHandler echoQuery $ \msg -> pure msg
              W.sleep $ seconds 5
            wf = W.provideWorkflow defaultCodec "notFoundQueryWorkflow" workflow
            conf = configure () wf $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          h <- useClient (C.start wf.reference (WorkflowId uuid) opts)
          result <- C.query h echoQuery C.defaultQueryOptions "hello"
          C.cancel h (C.CancellationOptions mempty)
          result `shouldBe` Right "hello"
    -- specify "query and unblock" pending
    describe "Built-in queries" $ do
      let toMap :: Value -> Map Text Value
          toMap v = case Aeson.fromJSON v of
            Aeson.Success m -> m
            Aeson.Error e -> error $ "expected JSON object: " <> e

      specify "__stack_trace returns non-empty stack while workflow is blocked" $ \TestEnv {..} -> do
        let workflow :: MyWorkflow ()
            workflow = W.sleep (seconds 30)
            wf = W.provideWorkflow defaultCodec "stackTraceWorkflow" workflow
            conf = configure () wf $ baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          h <- useClient (C.start wf.reference "stackTraceTest" opts)
          result <- C.query h builtinStackTraceQuery C.defaultQueryOptions
          C.cancel h (C.CancellationOptions mempty)
          case result of
            Left _ -> expectationFailure "stack trace query was rejected"
            Right txt -> txt `shouldSatisfy` (not . Text.null)

      specify "__enhanced_stack_trace returns structured JSON with SDK info" $ \TestEnv {..} -> do
        let workflow :: MyWorkflow ()
            workflow = W.sleep (seconds 30)
            wf = W.provideWorkflow defaultCodec "enhancedStackTraceWorkflow" workflow
            conf = configure () wf $ baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          h <- useClient (C.start wf.reference "enhancedStackTraceTest" opts)
          result <- C.query h builtinEnhancedStackTraceQuery C.defaultQueryOptions
          C.cancel h (C.CancellationOptions mempty)
          case result of
            Left _ -> expectationFailure "enhanced stack trace query was rejected"
            Right val -> do
              let m = toMap val
              Map.member "sdk" m `shouldBe` True
              Map.member "stacks" m `shouldBe` True
              Map.member "sources" m `shouldBe` True
              let sdkMap = toMap (m Map.! "sdk")
              Map.lookup "name" sdkMap `shouldBe` Just (String "haskell")

      specify "__temporal_workflow_metadata includes handler definitions" $ \TestEnv {..} -> do
        let echoQuery :: W.KnownQuery '[Text] Text
            echoQuery = W.KnownQuery "testMetaQuery" defaultCodec
            mySignal :: W.KnownSignal '[]
            mySignal = W.KnownSignal "testMetaSignal" defaultCodec
            workflow :: MyWorkflow ()
            workflow = do
              W.setQueryHandler echoQuery $ \msg -> pure msg
              W.setSignalHandler mySignal $ pure ()
              W.sleep (seconds 30)
            wf = W.provideWorkflow defaultCodec "metadataWorkflow" workflow
            conf = configure () wf $ baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          h <- useClient (C.start wf.reference "metadataTest" opts)
          result <- C.query h builtinWorkflowMetadataQuery C.defaultQueryOptions
          C.cancel h (C.CancellationOptions mempty)
          case result of
            Left _ -> expectationFailure "workflow metadata query was rejected"
            Right val -> do
              let m = toMap val
                  defMap = toMap (m Map.! "definition")
              Map.lookup "type" defMap `shouldBe` Just (String "metadataWorkflow")
              case Map.lookup "queryDefinitions" defMap of
                Just (Array qs) -> do
                  let names = fmap (\q -> Map.lookup "name" (toMap q)) qs
                  names `shouldSatisfy` elem (Just (String "testMetaQuery"))
                _ -> expectationFailure "expected queryDefinitions array"
              case Map.lookup "signalDefinitions" defMap of
                Just (Array ss) -> do
                  let names = fmap (\s -> Map.lookup "name" (toMap s)) ss
                  names `shouldSatisfy` elem (Just (String "testMetaSignal"))
                _ -> expectationFailure "expected signalDefinitions array"

      specify "__stack_trace shows multiple stacks when workflow has concurrent branches" $ \TestEnv {..} -> do
        let workflow :: MyWorkflow ()
            workflow = do
              _ <- W.race (W.sleep (seconds 30)) (W.sleep (seconds 30))
              pure ()
            wf = W.provideWorkflow defaultCodec "concurrentStackTraceWorkflow" workflow
            conf = configure () wf $ baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          h <- useClient (C.start wf.reference "concurrentStackTraceTest" opts)
          result <- C.query h builtinStackTraceQuery C.defaultQueryOptions
          C.cancel h (C.CancellationOptions mempty)
          case result of
            Left _ -> expectationFailure "stack trace query was rejected"
            Right txt -> do
              let stacks = filter (not . Text.null) $ Text.splitOn "\n\n" txt
              length stacks `shouldSatisfy` (>= 2)

    describe "Await condition" $ do
      it "signal handlers can unblock workflows" $ \TestEnv {..} -> do
        let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          wfH <- useClient (C.start SignalUnblocksWorkflow "signalHandlerUnblock" opts)
          C.signal wfH unblockWorkflowSignal C.defaultSignalOptions
          C.waitWorkflowResult wfH `shouldReturn` ()

      it "works in signal handlers" $ \TestEnv {..} -> do
        let trigSig :: W.KnownSignal '[Int]
            trigSig = W.KnownSignal "trigSig" defaultCodec
            workflow :: MyWorkflow Int
            workflow = do
              st <- W.newStateVar (0 :: Int)
              W.setSignalHandler trigSig $ \n -> do
                W.waitCondition $ pure True
                W.modifyStateVar st (+ n)
              W.waitCondition $ do
                v <- W.readStateVar st
                pure $ v > 0
              W.readStateVar st
            wf = W.provideWorkflow defaultCodec "waitCondInSignal" workflow
            conf = configure () wf $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts = C.TimeoutOptions {C.runTimeout = Just (seconds 10), C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                  }
          wfH <- useClient (C.start wf.reference "waitCondInSignal" opts)
          C.signal wfH trigSig C.defaultSignalOptions 42
          C.waitWorkflowResult wfH `shouldReturn` 42
      it "works in Workflows" $ \TestEnv {..} -> do
        let conf = configure () testConf $ do
              baseConf

        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient (C.execute testRefs.simpleWait "simpleWait" opts) `shouldReturn` ()
    describe "Sleep" $ do
      specify "sleep" $ \TestEnv {..} -> do
        let workflow :: MyWorkflow Bool
            workflow = do
              earlier <- W.now
              W.sleep $ nanoseconds 1
              later <- W.now
              pure (later > earlier)
            wf = W.provideWorkflow defaultCodec "sleepy" workflow
            conf = configure () wf $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient (C.execute wf.reference "sleep" opts)
            `shouldReturn` True

    describe "Timer" $ do
      specify "timer" $ \TestEnv {..} -> do
        let workflow :: MyWorkflow Bool
            workflow = do
              earlier <- W.now
              t <- W.createTimer $ nanoseconds 10
              mapM_ W.wait t
              later <- W.now
              pure (later > earlier)
            wf = W.provideWorkflow defaultCodec "timer" workflow
            conf = configure () wf $ do
              baseConf

        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient (C.execute wf.reference "timer" opts)
            `shouldReturn` True

      specify "timer and cancel immediately" $ \TestEnv {..} -> do
        let workflow :: MyWorkflow Bool
            workflow = do
              t <- W.createTimer $ nanoseconds 1
              mapM_ W.cancel t
              mapM_ W.wait t
              pure True
            wf = W.provideWorkflow defaultCodec "timerAndCancelImmediately" workflow
            conf = configure () wf $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts =
                      C.TimeoutOptions
                        { C.runTimeout = Just $ seconds 30
                        , C.executionTimeout = Nothing
                        , C.taskTimeout = Nothing
                        }
                  }
          useClient (C.execute wf.reference "timerAndCancelImmediately" opts)
            `shouldReturn` True

      specify "timer and cancel with delay" $ \TestEnv {..} -> do
        let workflow :: MyWorkflow Bool
            workflow = do
              t <- W.createTimer $ seconds 5000
              W.sleep $ nanoseconds 1
              mapM_ W.cancel t
              mapM_ W.wait t
              pure True
            wf = W.provideWorkflow defaultCodec "timerAndCancelWithDelay" workflow
            conf = configure () wf $ do
              baseConf

        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts =
                      C.TimeoutOptions
                        { C.runTimeout = Just $ seconds 30
                        , C.executionTimeout = Nothing
                        , C.taskTimeout = Nothing
                        }
                  }
          useClient (C.execute wf.reference "timerAndCancelWithDelay" opts)
            `shouldReturn` True
    describe "Patching" $ do
      specify "patch" $ \TestEnv {..} -> do
        let workflow :: MyWorkflow Bool
            workflow = W.patched (W.PatchId "wibble")
            wf = W.provideWorkflow defaultCodec "patchedWorkflow" workflow
            conf = configure () wf $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts =
                      C.TimeoutOptions
                        { C.runTimeout = Just $ seconds 30
                        , C.executionTimeout = Nothing
                        , C.taskTimeout = Nothing
                        }
                  }
          useClient (C.execute wf.reference "supplyPatch" opts)
            `shouldReturn` True
      specify "deprecated patch" $ \TestEnv {..} -> do
        let workflow :: MyWorkflow Bool
            workflow = do
              W.deprecatePatch (W.PatchId "wibble")
              pure True
            wf = W.provideWorkflow defaultCodec "deprecatedPatchedWorkflow" workflow
            conf = configure () wf $ do
              baseConf

        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts =
                      C.TimeoutOptions
                        { C.runTimeout = Just $ seconds 30
                        , C.executionTimeout = Nothing
                        , C.taskTimeout = Nothing
                        }
                  }
          useClient (C.execute wf.reference "deprecatePatch" opts)
            `shouldReturn` True
  --   specify "default server options" pending
  --   describe "Search attributes" $ do
  --     specify "can read search attributes set at start" pending
  --     specify "can upsert search attributes" pending
  describe "Info" $ do
    specify "can read workflow info" $ \TestEnv {..} -> do
      let workflow :: W.Workflow Text
          workflow = do
            i <- W.info
            pure $ W.rawWorkflowType i.workflowType
          wf = W.provideWorkflow defaultCodec "readWorkflowInfo" workflow
          conf = configure () wf $ do
            baseConf

      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts =
                    C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 30
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                }
        useClient (C.execute wf.reference "readWorkflowInfo" opts)
          `shouldReturn` "readWorkflowInfo"

  -- Note, needs the temporal operator to have mapped these attributes up-front:
  -- >  temporal operator search-attribute create --name attr1 --type Bool --namespace test
  -- > temporal operator search-attribute create --name attr2 --type Int --namespace test
  --
  -- Until we have a way to do this in the SDK, we can't test this without manual intervention.
  describe "Search Attributes" $ do
    specify "can read search attributes set at start" $ \TestEnv {..} -> do
      let workflow :: W.Workflow (Map SearchAttributeKey SearchAttributeType)
          workflow = do
            i <- W.info
            pure (i.searchAttributes :: Map SearchAttributeKey SearchAttributeType)
          wf = W.provideWorkflow defaultCodec "readWorkflowInfo" workflow
          conf = configure () wf $ do
            baseConf
      withWorker conf $ do
        let initialAttrs =
              Map.fromList
                [ ("attr1", toSearchAttribute True)
                , ("attr2", toSearchAttribute (4 :: Int64))
                ]
            opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts =
                    C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 30
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                , C.searchAttributes = initialAttrs
                }
        useClient (C.execute wf.reference "attributesSetAtStart" opts)
          `shouldReturn` initialAttrs
    specify "can upsert search attributes" $ \TestEnv {..} -> do
      let expectedAttrs =
            Map.fromList
              [ ("attr1", toSearchAttribute True)
              , ("attr2", toSearchAttribute (4 :: Int64))
              ]
          workflow :: MyWorkflow (Map SearchAttributeKey SearchAttributeType)
          workflow = do
            W.upsertSearchAttributes expectedAttrs
            i <- W.info
            pure i.searchAttributes
          wf = W.provideWorkflow defaultCodec "upsertWorkflowInfo" workflow
          conf = configure () wf $ do
            baseConf

      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts =
                    C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 30
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                }
        useClient (C.execute wf.reference "searchAttributesUpsert" opts)
          `shouldReturn` expectedAttrs

  --   describe "WorkflowOptions" $ do
  --     specify "passed correctly with defaults" pending
  --     specify "passed correctly" pending
  --   describe "WorkflowHandle" $ do
  --     specify "throws exception if remote workflow is terminated" pending
  --     specify "throws if continued as new" pending
  --     specify "follows chain of execution" pending
  describe "ContinueAsNew" $ do
    specify "works" $ \TestEnv {..} -> do
      let conf = configure () testConf $ do
            baseConf
      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts =
                    C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 30
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                }
        useClient (C.execute testRefs.continueAsNewWorks "continueAsNewWorks" opts 0)
          `shouldReturn` "woohoo"

  describe "Regression tests" $ do
    specify "immediate activity start works" $ \TestEnv {..} -> do
      let taskMainActivity :: ProvidedActivity () (RegressionTask -> Activity () ())
          taskMainActivity = provideCallStack $ provideActivity JSON "legacyTaskMainAct" $ \command -> do
            pure ()

          taskMainWorkflow :: W.ProvidedWorkflow (RegressionTask -> W.Workflow ())
          taskMainWorkflow = provideCallStack $ W.provideWorkflow JSON "legacyTaskMain" $ \command -> do
            -- Info{..} <- info
            W.executeActivity
              taskMainActivity.reference
              ((W.defaultStartActivityOptions $ W.StartToClose infinity) {activityId = Just $ W.ActivityId "woejfwoefijweof"})
              command

          definitions =
            ( activityDefinition taskMainActivity
            , workflowDefinition taskMainWorkflow
            , testConf
            )
          conf = configure () definitions $ do
            baseConf

      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts =
                    C.TimeoutOptions
                      { C.runTimeout = Nothing
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                }
        useClient (C.execute taskMainWorkflow.reference "immediate-start-regression" opts Foo)
          `shouldReturn` ()

    -- specify "to different workflow" pending
    -- specify "to same workflow keeps memo and search attributes" pending
    -- specify "to different workflow keeps memo and search attributes by default" pending
    -- specify "to different workflow can set memo and search attributes" pending
    describe "signalWithStart" do
      it "works" $ \TestEnv {..} -> do
        let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts =
                      C.TimeoutOptions
                        { C.runTimeout = Just $ seconds 30
                        , C.executionTimeout = Nothing
                        , C.taskTimeout = Nothing
                        }
                  }
          useClient $ do
            liftIO $ putStrLn "signalWithStart call"
            wfH <-
              C.signalWithStart
                SignalUnblocksWorkflow
                "signalWithStart"
                opts
                unblockWorkflowSignal
            lift $ C.waitWorkflowResult wfH `shouldReturn` ()
      it "works with workflow and signal arguments" $ \TestEnv {..} -> do
        let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts =
                      C.TimeoutOptions
                        { C.runTimeout = Just $ seconds 30
                        , C.executionTimeout = Nothing
                        , C.taskTimeout = Nothing
                        }
                  }
          useClient $ do
            liftIO $ putStrLn "signalWithStart call"
            wfH <-
              C.signalWithStart
                SignalWithArgsWorkflow
                "signalWithStartWithArgs"
                opts
                signalWithArgs
                50
                2
            lift $ C.waitWorkflowResult wfH `shouldReturn` 25

      -- Test for signal buffering: signals sent via signalWithStart should be
      -- buffered until the handler is registered, not dropped.
      it "buffers signals until handler is registered" $ \TestEnv {..} -> do
        let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts =
                      C.TimeoutOptions
                        { -- Short timeout so test fails fast if signal is dropped
                          C.runTimeout = Just $ seconds 3
                        , C.executionTimeout = Nothing
                        , C.taskTimeout = Nothing
                        }
                  }
          useClient $ do
            wfH <-
              C.signalWithStart
                SignalBufferingWorkflow
                "signalBufferingTest"
                opts
                signalBufferingSignal
                42
            -- If signal buffering works, workflow completes with signal value
            -- If signal is dropped, workflow times out waiting for the signal
            lift $ C.waitWorkflowResult wfH `shouldReturn` 42

      -- Test that buffered signals are delivered in FIFO order
      it "delivers buffered signals in FIFO order" $ \TestEnv {..} -> do
        let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts =
                      C.TimeoutOptions
                        { C.runTimeout = Just $ seconds 5
                        , C.executionTimeout = Nothing
                        , C.taskTimeout = Nothing
                        }
                  }
          useClient $ do
            -- Start workflow with first signal (value 1)
            wfH <-
              C.signalWithStart
                SignalOrderingWorkflow
                "signalOrderingTest"
                opts
                signalBufferingSignal
                (1 :: Int)
            -- Immediately send second signal (value 2)
            C.signal wfH signalBufferingSignal C.defaultSignalOptions (2 :: Int)
            -- Workflow should return signals in order [1, 2]
            -- If order is wrong, we'd get [2, 1]
            lift $ C.waitWorkflowResult wfH `shouldReturn` [1, 2]

  --     specify "works as intended and returns correct runId" pending
  describe "RetryPolicy" $ do
    specify "is used for retryable failures" $ \TestEnv {..} -> do
      let conf = configure () testConf $ do
            baseConf

      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts =
                    C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 30
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                }
        useClient (C.execute testRefs.retryableFailureTest "use-for-retryable" opts)
    -- `shouldThrow` (== WorkflowExecutionFailed)

    specify "ignored for non-retryable failures" $ \TestEnv {..} -> do
      let conf = configure () testConf $ do
            baseConf

      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts =
                    C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 30
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                }
        useClient (C.execute testRefs.nonRetryableFailureTest "ignore-non-retryable" opts)
          `shouldThrow` \case
            (WorkflowExecutionFailed _) -> True
            _ -> False

  describe "Exception conversion" $ do
    specify "AnnotatedException and SomeException values don't appear in ApplicationFailure" $ \TestEnv {..} -> do
      uuid <- uuidText

      let
        -- taskMainActivity :: ProvidedActivity () (Activity () ())
        -- taskMainActivity = provideCallStack $ provideActivity JSON "legacyTaskMainAct" $ do
        --  pure ()

        taskMainWorkflow :: W.ProvidedWorkflow (W.Workflow ())
        taskMainWorkflow = provideCallStack $ W.provideWorkflow JSON "AnnotatedExceptionHaver" $ do
          -- Info{..} <- info
          -- W.executeActivity
          --   taskMainActivity.reference
          --   (W.defaultStartActivityOptions $ W.StartToClose infinity)
          Annotated.throw SampleException

        definitions =
          ( -- activityDefinition taskMainActivity
            -- ,
            workflowDefinition taskMainWorkflow
          , testConf
          )
        conf = configure () definitions $ do
          baseConf

      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts =
                    C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 1
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                }
        res <- Control.Exception.Annotated.try (useClient (C.execute taskMainWorkflow.reference (WorkflowId uuid) opts))
        res
          `shouldSatisfy` ( \case
                              Left (WorkflowExecutionFailed {}) -> True
                              _ -> False
                          )
  describe "Hanging Workflow" $ do
    specify "works" $ \TestEnv {..} -> do
      let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
            baseConf
      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts = C.TimeoutOptions {C.runTimeout = Just $ seconds 10, C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                }
        useClient
          ( C.execute PerformPartnerBankRollover "hanging-workflow" opts $
              RolloverRequest
                { orgId = 1
                , rolloverId = 1
                , originBank = Bank1
                , targetBank = Bank2
                , createdAccounts =
                    Accounts
                      { rolledOverDepositoryAccounts = Map.fromList [(1, 100), (2, 200)]
                      }
                , expectedSettlementDate = ModifiedJulianDay 1
                , effectiveDate = ModifiedJulianDay 1
                , transferRequests =
                    [ RolloverTransferFundsRequest
                        { transactionMetadataId = 1
                        , toAccountId = 1
                        , fromAccountId = 2
                        , amount = 100
                        }
                    ]
                }
          )
          `shouldReturn` ()

  describe "Workflow replay" $ do
    specify "works" $ \TestEnv {..} -> do
      let originalWorkflow :: W.ProvidedWorkflow (W.Workflow ())
          originalWorkflow = W.provideWorkflow JSON "replay-workflow" $ provideCallStack $ do
            W.sleep $ milliseconds 10
            _ <-
              W.executeActivity
                testRefs.basicActivity
                (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
            W.sleep $ milliseconds 10
          originalConf = provideCallStack $ configure () (testConf <> toDefinitions originalWorkflow) baseConf

      history <- withWorker originalConf $ do
        uuid <- uuidText
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts = C.TimeoutOptions {C.runTimeout = Just $ seconds 10, C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                }
        useClient $ do
          wfHandle <- C.start originalWorkflow (WorkflowId uuid) opts
          C.waitWorkflowResult wfHandle
          C.fetchHistory wfHandle

      replayResult <- runReplayHistory globalRuntime originalConf history
      replayResult `shouldSatisfy` isRight

      let patchedWorkflow :: W.ProvidedWorkflow (W.Workflow ())
          patchedWorkflow = W.provideWorkflow JSON "replay-workflow" $ provideCallStack $ do
            W.sleep $ milliseconds 10
            _ <-
              W.executeActivity
                testRefs.basicActivity
                (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
            hasPatch <- W.patched "wibble"
            when hasPatch $
              void $
                W.executeActivity
                  testRefs.basicActivity
                  (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
            W.sleep $ milliseconds 10

          patchedConf = configure () (testConf <> toDefinitions patchedWorkflow) baseConf

      patchedReplayResult <- runReplayHistory globalRuntime patchedConf history
      patchedReplayResult `shouldSatisfy` isRight

      let incompatibleWorkflow :: W.ProvidedWorkflow (W.Workflow ())
          incompatibleWorkflow = W.provideWorkflow JSON "replay-workflow" $ provideCallStack $ do
            W.sleep $ milliseconds 10
            _ <-
              W.executeActivity
                testRefs.basicActivity
                (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
            _ <-
              W.executeActivity
                testRefs.basicActivity
                (W.defaultStartActivityOptions $ W.StartToClose $ seconds 3)
            W.sleep $ milliseconds 10

          incompatibleConf = configure () (testConf <> toDefinitions incompatibleWorkflow) baseConf

      incompatibleReplayResult <- runReplayHistory globalRuntime incompatibleConf history
      incompatibleReplayResult `shouldSatisfy` isLeft

  describe "Update" $ do
    describe "startUpdate" $ do
      -- All the tests that call executeUpdate indirectly exercise startUpdate, but confirm here that validation failures are
      -- thrown immediately from startUpdate (without needing to wait for the update outcome)
      it "propagates validation failures" $ \TestEnv {..} -> do
        let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts = C.TimeoutOptions {C.runTimeout = Just $ seconds 10, C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                  }
          let updateOpts =
                C.UpdateOptions
                  { updateId = "start-update-with-a-validator-that-rejects"
                  , updateHeaders = mempty
                  }
          ( useClient do
              h <- C.start UpdateWithValidator "start-update-with-a-validator-that-rejects" opts
              C.startUpdate h testUpdate updateOpts (-12)
            )
            `shouldThrow` \case
              UpdateFailure _ -> True
      it "propagates validation exceptions if the validator throws" $ \TestEnv {..} -> do
        let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts = C.TimeoutOptions {C.runTimeout = Just $ seconds 10, C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                  }
          let updateOpts =
                C.UpdateOptions
                  { updateId = "start-update-with-a-validator-that-throws"
                  , updateHeaders = mempty
                  }
          ( useClient do
              h <- C.start UpdateWithValidator "start-update-with-a-validator-that-throws" opts
              C.startUpdate h testUpdate updateOpts 5
            )
            `shouldThrow` \case
              UpdateFailure _ -> True
    it "works with no validator" $ \TestEnv {..} -> do
      let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
            baseConf
      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts = C.TimeoutOptions {C.runTimeout = Just $ seconds 10, C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                }
        let updateOpts =
              C.UpdateOptions
                { updateId = "update-with-no-validator"
                , updateHeaders = mempty
                }
        (updateResult, workflowResult) <- useClient do
          h <- C.start UpdateWithoutValidator "update-with-no-validator" opts
          updateResult <- C.executeUpdate h testUpdate updateOpts 12
          workflowResult <- C.waitWorkflowResult h
          pure (updateResult, workflowResult)
        updateResult `shouldBe` 12
        workflowResult `shouldBe` 12
    it "works with a validator" $ \TestEnv {..} -> do
      let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
            baseConf
      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts = C.TimeoutOptions {C.runTimeout = Just $ seconds 10, C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                }
        let updateOpts =
              C.UpdateOptions
                { updateId = "update-with-a-validator"
                , updateHeaders = mempty
                }
        (updateResult, workflowResult) <- useClient do
          h <- C.start UpdateWithValidator "update-with-a-validator" opts
          liftIO $ waitForWorkflowStart h
          updateResult <- C.executeUpdate h testUpdate updateOpts 12
          workflowResult <- C.waitWorkflowResult h
          pure (updateResult, workflowResult)
        updateResult `shouldBe` 12
        workflowResult `shouldBe` 12
    it "propagates validation failures" $ \TestEnv {..} -> do
      let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
            baseConf
      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts = C.TimeoutOptions {C.runTimeout = Just $ seconds 10, C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                }
        let updateOpts =
              C.UpdateOptions
                { updateId = "update-with-a-validator-that-rejects"
                , updateHeaders = mempty
                }
        ( useClient do
            h <- C.start UpdateWithValidator "update-with-a-validator-that-rejects" opts
            C.executeUpdate h testUpdate updateOpts (-12)
          )
          `shouldThrow` \case
            UpdateFailure _ -> True
    it "propagates validation exceptions if the validator throws" $ \TestEnv {..} -> do
      let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
            baseConf
      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts = C.TimeoutOptions {C.runTimeout = Just $ seconds 10, C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                }
        let updateOpts =
              C.UpdateOptions
                { updateId = "update-with-a-validator-that-throws"
                , updateHeaders = mempty
                }
        ( useClient do
            h <- C.start UpdateWithValidator "update-with-a-validator-that-throws" opts
            C.executeUpdate h testUpdate updateOpts 5
          )
          `shouldThrow` \case
            UpdateFailure _ -> True
    it "propogates update exceptions if the update throws" $ \TestEnv {..} -> do
      let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
            baseConf
      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts = C.TimeoutOptions {C.runTimeout = Just $ seconds 10, C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                }
        let updateOpts =
              C.UpdateOptions
                { updateId = "update-that-throws"
                , updateHeaders = mempty
                }
        ( useClient do
            h <- C.start UpdateThatThrows "update-that-throws" opts
            C.executeUpdate h testUpdate updateOpts 5
          )
          `shouldThrow` \case
            UpdateFailure _ -> True
    it "should fail if the args don't parse correctly" $ \TestEnv {..} -> do
      -- state <- runIO $ newIORef (0 :: Int)
      let testUpdateFn :: Int -> W.Workflow Int
          testUpdateFn arg = do
            -- performUnsafeNonDeterministicIO $ modifyIORef state (+ arg)
            -- performUnsafeNonDeterministicIO $ readIORef state
            pure arg
          testWorkflowFn :: W.Workflow Int
          testWorkflowFn = provideCallStack do
            W.setUpdateHandler testUpdate testUpdateFn Nothing
            -- W.waitCondition do
            --   x <- performUnsafeNonDeterministicIO $ readIORef state
            --   pure $ x > 0
            -- performUnsafeNonDeterministicIO $ readIORef state
            W.sleep $ seconds 1
            pure 1
          wfRef = W.provideWorkflow defaultCodec "test" testWorkflowFn
          updateRef = W.provideUpdate defaultCodec "test" testUpdateFn
          badUpdateRef = W.KnownUpdate @'[String] @String defaultCodec "test"
          conf = configure () wfRef $ do
            baseConf
          opts =
            (C.startWorkflowOptions taskQueue)
              { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
              , C.timeouts = C.TimeoutOptions {C.runTimeout = Just $ seconds 10, C.executionTimeout = Nothing, C.taskTimeout = Nothing}
              }
          updateOpts =
            C.UpdateOptions
              { updateId = "update-args-do-not-parse"
              , updateHeaders = mempty
              }
      withWorker conf $ do
        ( useClient do
            h <- C.start wfRef "update-args-do-not-parse" opts
            C.executeUpdate h badUpdateRef updateOpts "ruhroh"
          )
          `shouldThrow` \case
            UpdateFailure _ -> True
    it "works with an update that causes the workflow to suspend" $ \TestEnv {..} -> do
      let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
            baseConf
      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts = C.TimeoutOptions {C.runTimeout = Just $ seconds 10, C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                }
        let updateOpts =
              C.UpdateOptions
                { updateId = "update-that-suspends"
                , updateHeaders = mempty
                }
        (updateResult, workflowResult) <- useClient do
          h <- C.start UpdateThatSleeps "update-that-suspends" opts
          updateResult <- C.executeUpdate h testUpdate updateOpts 12
          workflowResult <- C.waitWorkflowResult h
          pure (updateResult, workflowResult)
        updateResult `shouldBe` 12
        workflowResult `shouldBe` 12
    it "does not process the update if the workflow throws first" $ \TestEnv {..} -> do
      let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
            baseConf
      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts = C.TimeoutOptions {C.runTimeout = Just $ seconds 10, C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                }
        let updateOpts =
              C.UpdateOptions
                { updateId = "no-update-if-workflow-throws-first"
                , updateHeaders = mempty
                }
        (eUpdateResult, eWorkflowResult) <- useClient do
          h <- C.start WorkflowThatThrowsBeforeTheUpdate "no-update-if-workflow-throws-first" opts
          liftIO $ waitForWorkflowStart h
          updateResult <- Catch.try $ C.executeUpdate h testUpdate updateOpts 12
          workflowResult <- Catch.try $ C.waitWorkflowResult h
          let _ = show (updateResult :: Either RpcError Int)
          let _ = show (workflowResult :: Either WorkflowExecutionClosed Int)
          pure (updateResult, workflowResult)
        eUpdateResult `shouldSatisfy` \case
          Left (RpcError _ message _) -> message == "workflow execution already completed"
          _ -> False
        eWorkflowResult `shouldSatisfy` \case
          Left (WorkflowExecutionFailed attrs) -> (attrs ^. History.failure . Failure.message) == "Current state var: 0"
          _ -> False
    it "does process the update if the workflow only fails later" $ \TestEnv {..} -> do
      let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
            baseConf
      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts = C.TimeoutOptions {C.runTimeout = Just $ seconds 10, C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                }
        let updateOpts =
              C.UpdateOptions
                { updateId = "yes-update-if-workflow-throws-later"
                , updateHeaders = mempty
                }
        (eUpdateResult, eWorkflowResult) <- useClient do
          h <- C.start WorkflowThatThrowsAfterTheUpdate "yes-update-if-workflow-throws-later" opts
          liftIO $ waitForWorkflowStart h
          updateResult <- Catch.try $ C.executeUpdate h testUpdate updateOpts 12
          workflowResult <- Catch.try $ C.waitWorkflowResult h
          let _ = show (updateResult :: Either RpcError Int)
          let _ = show (workflowResult :: Either WorkflowExecutionClosed Int)
          pure (updateResult, workflowResult)
        eUpdateResult `shouldSatisfy` \case
          Right 12 -> True
          _ -> False
        eWorkflowResult `shouldSatisfy` \case
          Left (WorkflowExecutionFailed attrs) -> (attrs ^. History.failure . Failure.message) == "Current state var: 12"
          _ -> False
  describe "Time Skipping" do
    it "fails if not connected to the time-skipping server" $ \TestEnv {..} -> do
      let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
            baseConf
      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts =
                    C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 15
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                }
        h <- useClient (C.start VariableSleepWorkflow "variable-sleep-workflow" opts 10)
        (Temporal.Client.TestService.unlockTimeSkippingWithSleep (C.clientCore (C.workflowHandleClient h)) (seconds 10))
          `shouldThrow` \case
            Temporal.Client.TestService.TimeSkippingNotSupported -> True
  describe "Memo" $ do
    specify "able to read memo set at start" $ \TestEnv {..} -> do
      let workflow :: W.Workflow (Map Text Payload)
          workflow = W.getMemoValues
          wf = W.provideWorkflow JSON "readMemo" workflow
          conf = configure () wf $ do
            baseConf
      withWorker conf $ do
        p1 <- encode JSON ("v1" :: Text)
        p2 <- encode JSON (1 :: Int)
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.memo = Map.fromList [("a", p1), ("b", p2)]
                }
        let expected = Map.fromList [("a", p1), ("b", p2)]
        m <- useClient (C.execute wf.reference "memo-read" opts)
        m `shouldBe` expected
    specify "can upsert memo" $ \TestEnv {..} -> do
      p1 <- encode JSON ("v1" :: Text)
      p2 <- encode JSON (1 :: Int)
      let workflow :: MyWorkflow (Map Text Payload)
          workflow = do
            W.upsertMemo (Map.fromList [("b", toJSON ("two" :: Text)), ("c", toJSON True)])
            i <- W.info
            pure i.rawMemo
          wf = W.provideWorkflow JSON "upsertMemo" workflow
          conf = configure () wf $ do
            baseConf
          opts =
            (C.startWorkflowOptions taskQueue)
              { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
              , C.memo = Map.fromList [("a", p1), ("b", p2)]
              }
      withWorker conf $ do
        m <- useClient (C.execute wf.reference "memo-upsert" opts)
        let expectedB = encodeJSON (toJSON ("two" :: Text))
            expectedC = encodeJSON (toJSON True)
            expected =
              Map.fromList
                [ ("a", p1)
                , ("b", expectedB)
                , ("c", expectedC)
                ]
        m `shouldBe` expected
    specify "multiple upserts work" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow (Map Text Payload)
          workflow = do
            W.upsertMemo (Map.fromList [("a", toJSON ("v1" :: Text))])
            W.upsertMemo (Map.fromList [("b", toJSON ("v2" :: Text))])
            W.upsertMemo (Map.fromList [("a", toJSON ("v3" :: Text))])
            i <- W.info
            pure i.rawMemo
          wf = W.provideWorkflow JSON "memo-upsert-many" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        let expectedA = encodeJSON (toJSON ("v3" :: Text))
            expectedB = encodeJSON (toJSON ("v2" :: Text))
            expected = Map.fromList [("a", expectedA), ("b", expectedB)]
            opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                }
        m <- useClient (C.execute wf.reference "memo-upsert-many" opts)
        m `shouldBe` expected


needsTimeSkipping :: SpecWith TestEnv
needsTimeSkipping = do
  describe "Workflow" $ do
    it "should run a workflow" $ \TestEnv {..} -> do
      let conf = configure () testConf $ do
            baseConf
      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts =
                    C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 30
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                }
        useClient (C.execute testRefs.shouldRunWorkflowTest "basicWf" opts)
          `shouldReturn` ()
    it "should skip over sleeps in a workflow" $ \TestEnv {..} -> do
      let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
            baseConf
      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts =
                    C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 15
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                }
        startTime <- getCurrentTime
        useClient (C.execute VariableSleepWorkflow "variable-sleep-workflow" opts 10)
        endTime <- getCurrentTime
        let secondsElapsed = diffUTCTime endTime startTime
        secondsElapsed `shouldSatisfy` (< 1)
    it "should skip over sleeps in a child workflow" $ \TestEnv {..} -> do
      let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
            baseConf
      withWorker conf $ do
        let opts =
              (C.startWorkflowOptions taskQueue)
                { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                , C.timeouts =
                    C.TimeoutOptions
                      { C.runTimeout = Just $ seconds 15
                      , C.executionTimeout = Nothing
                      , C.taskTimeout = Nothing
                      }
                }
        startTime <- getCurrentTime
        useClient (C.execute VariableSleepFromChildWorkflow "variable-sleep-from-child-workflow" opts 10)
        endTime <- getCurrentTime
        let secondsElapsed = diffUTCTime endTime startTime
        secondsElapsed `shouldSatisfy` (< 1)


updatesWithInterceptors :: SpecWith PortNumber
updatesWithInterceptors = do
  describe "Update interceptors" do
    handleUpdateWasCalled <- runIO $ newIORef False
    validateUpdateWasCalled <- runIO $ newIORef False
    updateWorkflowWasCalled <- runIO $ newIORef False
    let
      captureIfCalledInterceptors :: Interceptors ()
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
        let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts = C.TimeoutOptions {C.runTimeout = Just $ seconds 10, C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                  }
          let updateOpts =
                C.UpdateOptions
                  { updateId = "update-interceptors-are-called"
                  , updateHeaders = mempty
                  }
          (updateResult, workflowResult) <- useClient do
            h <- C.start UpdateWithValidator "update-interceptors-are-called" opts
            updateResult <- C.executeUpdate h testUpdate updateOpts 12
            workflowResult <- C.waitWorkflowResult h
            pure (updateResult, workflowResult)
          updateResult `shouldBe` 12
          workflowResult `shouldBe` 12
          readIORef handleUpdateWasCalled `shouldReturn` True
          readIORef validateUpdateWasCalled `shouldReturn` True
          readIORef updateWorkflowWasCalled `shouldReturn` True
    handleUpdateArgs <- runIO $ newIORef (Nothing :: Maybe (Vector Payload))
    validateUpdateArgs <- runIO $ newIORef (Nothing :: Maybe (Vector Payload))
    updateWorkflowArgs <- runIO $ newIORef (Nothing :: Maybe (Vector Payload))
    let
      captureArgsInterceptors :: Interceptors ()
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
      it "calls update interceptors with the expected args" $ \TestEnv {..} -> do
        let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts = C.TimeoutOptions {C.runTimeout = Just $ seconds 10, C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                  }
          let updateOpts =
                C.UpdateOptions
                  { updateId = "update-interceptors-get-expected-args"
                  , updateHeaders = mempty
                  }
          (updateResult, workflowResult) <- useClient do
            h <- C.start UpdateWithValidator "update-interceptors-get-expected-args" opts
            updateResult <- C.executeUpdate h testUpdate updateOpts 12
            workflowResult <- C.waitWorkflowResult h
            pure (updateResult, workflowResult)
          updateResult `shouldBe` 12
          workflowResult `shouldBe` 12
          updateArgsPayload <- readIORef handleUpdateArgs
          let updateArg = payloadData $ V.head $ fromJust updateArgsPayload
          updateArg `shouldBe` "12"
          validatorArgsPayload <- readIORef validateUpdateArgs
          let validatorArg = payloadData $ V.head $ fromJust validatorArgsPayload
          validatorArg `shouldBe` "12"
          updateWorkflowPayload <- readIORef updateWorkflowArgs
          let updateWorkflowArg = payloadData $ V.head $ fromJust updateWorkflowPayload
          updateWorkflowArg `shouldBe` "12"
    handleUpdateOrdering <- runIO $ newIORef ([] :: [Text])
    validateUpdateOrdering <- runIO $ newIORef ([] :: [Text])
    updateWorkflowOrdering <- runIO $ newIORef ([] :: [Text])
    let
      captureOrderingInterceptors0 :: Interceptors ()
      captureOrderingInterceptors0 =
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
      captureOrderingInterceptors1 :: Interceptors ()
      captureOrderingInterceptors1 =
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
      captureOrderingInterceptors :: Interceptors ()
      captureOrderingInterceptors = captureOrderingInterceptors0 <> captureOrderingInterceptors1
    withInterceptors captureOrderingInterceptors do
      it "calls update interceptors in the expected order" $ \TestEnv {..} -> do
        let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts = C.TimeoutOptions {C.runTimeout = Just $ seconds 10, C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                  }
          let updateOpts =
                C.UpdateOptions
                  { updateId = "update-interceptors-are-called-in-expected-order"
                  , updateHeaders = mempty
                  }
          (updateResult, workflowResult) <- useClient do
            h <- C.start UpdateWithValidator "update-interceptors-are-called-in-expected-order" opts
            updateResult <- C.executeUpdate h testUpdate updateOpts 12
            workflowResult <- C.waitWorkflowResult h
            pure (updateResult, workflowResult)
          updateResult `shouldBe` 12
          workflowResult `shouldBe` 12
          readIORef handleUpdateOrdering `shouldReturn` ["a", "b"]
          readIORef validateUpdateOrdering `shouldReturn` ["a", "b"]
          readIORef updateWorkflowOrdering `shouldReturn` ["a", "b"]
    let
      modifyArgsInterceptors :: Interceptors ()
      modifyArgsInterceptors =
        mempty
          { workflowInboundInterceptors =
              mempty
                { handleUpdate = \input next -> do
                    let metadata = payloadMetadata $ V.head input.handleUpdateInputArgs
                    next $ input {handleUpdateInputArgs = V.singleton Payload {payloadData = "24", payloadMetadata = metadata}}
                }
          , clientInterceptors = mempty
          }
    withInterceptors modifyArgsInterceptors do
      it "supports modifying the args passed to update" $ \TestEnv {..} -> do
        let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts = C.TimeoutOptions {C.runTimeout = Just $ seconds 10, C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                  }
          let updateOpts =
                C.UpdateOptions
                  { updateId = "update-interceptors-can-modify-args"
                  , updateHeaders = mempty
                  }
          (updateResult, workflowResult) <- useClient do
            h <- C.start UpdateWithValidator "update-interceptors-can-modify-args" opts
            updateResult <- C.executeUpdate h testUpdate updateOpts 12
            workflowResult <- C.waitWorkflowResult h
            pure (updateResult, workflowResult)
          updateResult `shouldBe` 24
          workflowResult `shouldBe` 24
    let
      modifyArgsOnClientInterceptors :: Interceptors ()
      modifyArgsOnClientInterceptors =
        mempty
          { clientInterceptors =
              mempty
                { updateWorkflow = \input next -> do
                    let metadata = payloadMetadata $ V.head input.updateWorkflowArgs
                    next $ input {updateWorkflowArgs = V.singleton Payload {payloadData = "24", payloadMetadata = metadata}}
                }
          }
    withInterceptors modifyArgsOnClientInterceptors do
      it "supports modifying the args passed to update client-side" $ \TestEnv {..} -> do
        let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  , C.timeouts = C.TimeoutOptions {C.runTimeout = Just $ seconds 10, C.executionTimeout = Nothing, C.taskTimeout = Nothing}
                  }
          let updateOpts =
                C.UpdateOptions
                  { updateId = "update-client-interceptors-can-modify-args"
                  , updateHeaders = mempty
                  }
          (updateResult, workflowResult) <- useClient do
            h <- C.start UpdateWithValidator "update-client-interceptors-can-modify-args" opts
            updateResult <- C.executeUpdate h testUpdate updateOpts 12
            workflowResult <- C.waitWorkflowResult h
            pure (updateResult, workflowResult)
          updateResult `shouldBe` 24
          workflowResult `shouldBe` 24


withInterceptors :: Interceptors () -> SpecWith TestEnv -> SpecWith PortNumber
withInterceptors interceptors = aroundAllWith $ flip $ setup interceptors


terminateTests :: SpecWith TestEnv
terminateTests = do
  describe "Terminate" $ do
    describe "when neither runId nor firstExecutionRunId is provided" $ do
      it "returns" $ \TestEnv {..} -> do
        let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient $ do
            C.start NoOpWorkflow "test-terminate-works-without-run-ids" opts
            h <- C.getHandle (workflowRef NoOpWorkflow) "test-terminate-works-without-run-ids" Nothing Nothing
            C.terminate
              h {C.workflowHandleRunId = Nothing, C.workflowHandleFirstExecutionRunId = Nothing}
              C.TerminationOptions {terminationReason = "testing", terminationDetails = []}
    describe "when runId is provided without firstExecutionRunId" $ do
      it "returns if runId matches a workflow" $ \TestEnv {..} -> do
        let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient $ do
            h <- C.start NoOpWorkflow "test-terminate-works-with-good-run-id" opts
            h' <- C.getHandle (workflowRef NoOpWorkflow) "test-terminate-works-with-good-run-id" h.workflowHandleRunId Nothing
            C.terminate h' C.TerminationOptions {terminationReason = "testing", terminationDetails = []}
      it "throws if runId does not match a workflow" $ \TestEnv {..} -> do
        let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
              baseConf
        withWorker conf $
          do
            let opts =
                  (C.startWorkflowOptions taskQueue)
                    { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                    }
            ( useClient $ do
                h <- C.start NoOpWorkflow "test-terminate-throws-with-bad-run-id" opts
                h' <- C.getHandle (workflowRef NoOpWorkflow) "test-terminate-throws-with-bad-run-id" (Just "bad-run-id") Nothing
                C.terminate h' C.TerminationOptions {terminationReason = "testing", terminationDetails = []}
              )
            `shouldThrow` \case
              RpcError {} -> True
              _ -> False
    describe "when firstExecutionRunId is provided without runId" $ do
      it "returns if firstExecutionRunId matches a workflow" $ \TestEnv {..} -> do
        let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient $ do
            h <- C.start NoOpWorkflow "test-terminate-works-with-good-first-execution-run-id" opts
            h' <-
              C.getHandle
                (workflowRef NoOpWorkflow)
                "test-terminate-works-with-good-first-execution-run-id"
                Nothing
                $ Just C.GetHandleOptions {C.firstExecutionRunId = Just $ fromJust h.workflowHandleFirstExecutionRunId}
            C.terminate h' C.TerminationOptions {terminationReason = "testing", terminationDetails = []}
      it "throws if firstExecutionRunId does not match a workflow" $ \TestEnv {..} -> do
        let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
              baseConf
        withWorker conf $
          do
            let opts =
                  (C.startWorkflowOptions taskQueue)
                    { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                    }
            ( useClient $ do
                h <- C.start NoOpWorkflow "test-terminate-throws-with-bad-first-execution-run-id" opts
                h' <-
                  C.getHandle
                    (workflowRef NoOpWorkflow)
                    "test-terminate-throws-with-bad-first-execution-run-id"
                    Nothing
                    $ Just C.GetHandleOptions {C.firstExecutionRunId = Just "bad-first-execution-run-id"}
                C.terminate h' C.TerminationOptions {terminationReason = "testing", terminationDetails = []}
              )
            `shouldThrow` \case
              RpcError {} -> True
              _ -> False
    describe "when both runId and firstExecutionRunId are provided" $ do
      it "returns if both runId and firstExecutionRunId match a workflow" $ \TestEnv {..} -> do
        let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient $ do
            h <- C.start NoOpWorkflow "test-terminate-works-with-good-run-id-bad-first-execution-run-id" opts
            h' <-
              C.getHandle
                (workflowRef NoOpWorkflow)
                "test-terminate-works-with-good-run-id-bad-first-execution-run-id"
                h.workflowHandleRunId
                $ Just
                  C.GetHandleOptions
                    { C.firstExecutionRunId = Just $ fromJust h.workflowHandleFirstExecutionRunId
                    }
            C.terminate h' C.TerminationOptions {terminationReason = "testing", terminationDetails = []}
      it "throws if runId does not match a workflow" $ \TestEnv {..} -> do
        let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
              baseConf
        withWorker conf $ do
          let opts =
                (C.startWorkflowOptions taskQueue)
                  { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                  }
          useClient
            ( do
                h <- C.start NoOpWorkflow "test-terminate-works-with-bad-run-id-good-first-execution-run-id" opts
                h' <-
                  C.getHandle
                    (workflowRef NoOpWorkflow)
                    "test-terminate-works-with-bad-run-id-good-first-execution-run-id"
                    (Just "bad-run-id")
                    ( Just
                        C.GetHandleOptions
                          { C.firstExecutionRunId = Just $ fromJust h.workflowHandleFirstExecutionRunId
                          }
                    )
                C.terminate h' C.TerminationOptions {terminationReason = "testing", terminationDetails = []}
            )
            `shouldThrow` \case
              RpcError {} -> True
              _ -> False
      it "throws if firstExecutionRunId does not match a workflow" $ \TestEnv {..} -> do
        let conf = provideCallStack $ configure () (discoverDefinitions @() $$(discoverInstances) $$(discoverInstances)) $ do
              baseConf
        withWorker conf $
          do
            let opts =
                  (C.startWorkflowOptions taskQueue)
                    { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
                    }
            useClient
              ( do
                  h <- C.start NoOpWorkflow "test-terminate-throws-good-run-id-bad-first-execution-run-id" opts
                  h' <-
                    C.getHandle
                      (workflowRef NoOpWorkflow)
                      "test-terminate-throws-with-good-run-id-bad-first-execution-run-id"
                      (Just $ fromJust h.workflowHandleRunId)
                      (Just C.GetHandleOptions {C.firstExecutionRunId = Just "bad-first-execution-run-id"})
                  C.terminate h' C.TerminationOptions {terminationReason = "testing", terminationDetails = []}
              )
            `shouldThrow` \case
              RpcError {} -> True
              _ -> False

  describe "WorkflowIdConflictPolicy" $ do
    specify "Fail policy prevents duplicate workflows" $ \TestEnv {..} -> do
      let wfId = WorkflowId "test-conflict-fail"
          opts =
            (C.startWorkflowOptions taskQueue)
              { C.workflowIdConflictPolicy = Just C.WorkflowIdConflictPolicyFail
              }

      -- Start first workflow
      h1 <- useClient (C.start testRefs.shouldRunWorkflowTest wfId opts)

      -- Try to start second with same ID - should fail
      useClient (C.start testRefs.shouldRunWorkflowTest wfId opts)
        `shouldThrow` \case
          RpcError {} -> True
          _ -> False

    specify "UseExisting policy returns existing workflow" $ \TestEnv {..} -> do
      let wfId = WorkflowId "test-conflict-use-existing"
          opts =
            (C.startWorkflowOptions taskQueue)
              { C.workflowIdConflictPolicy = Just C.WorkflowIdConflictPolicyUseExisting
              }

      -- Start first workflow
      h1 <- useClient (C.start testRefs.shouldRunWorkflowTest wfId opts)

      -- Start second with same ID - should return handle to existing
      h2 <- useClient (C.start testRefs.shouldRunWorkflowTest wfId opts)

      -- Both handles should refer to same execution
      h1.workflowHandleWorkflowId `shouldBe` h2.workflowHandleWorkflowId
      h1.workflowHandleRunId `shouldBe` h2.workflowHandleRunId

    specify "TerminateExisting policy terminates old workflow" $ \TestEnv {..} -> do
      let wfId = WorkflowId "test-conflict-terminate"
          opts =
            (C.startWorkflowOptions taskQueue)
              { C.workflowIdConflictPolicy = Just C.WorkflowIdConflictPolicyTerminateExisting
              }

      -- Start first workflow
      h1 <- useClient (C.start testRefs.shouldRunWorkflowTest wfId opts)

      -- Start second with same ID - should terminate first and start new
      h2 <- useClient (C.start testRefs.shouldRunWorkflowTest wfId opts)

      -- Should have different run IDs but same workflow ID
      h1.workflowHandleRunId `shouldNotBe` h2.workflowHandleRunId
      h1.workflowHandleWorkflowId `shouldBe` h2.workflowHandleWorkflowId

    specify "Default conflict policy works with TerminateIfRunning reuse policy" $ \TestEnv {..} -> do
      let wfId = WorkflowId "test-terminate-if-running-no-conflict-policy"
          opts =
            (C.startWorkflowOptions taskQueue)
              { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyTerminateIfRunning
              }

      -- Start first workflow
      h1 <- useClient (C.start testRefs.shouldRunWorkflowTest wfId opts)

      -- Start second with same ID - should terminate first and start new
      h2 <- useClient (C.start testRefs.shouldRunWorkflowTest wfId opts)

      -- Should have different run IDs but same workflow ID
      h1.workflowHandleRunId `shouldNotBe` h2.workflowHandleRunId
      h1.workflowHandleWorkflowId `shouldBe` h2.workflowHandleWorkflowId

-- describe "WorkflowClient" $ do
--   specify "WorkflowExecutionAlreadyStartedError" pending
--   specify "follows only own execution chain" pending
--   specify "Handle from signalWithStart follows only own execution chain" pending
--   specify "getHandle only follows own execution chain" pending
--   specify "Handle from start terminates run after continue as new" pending
--   specify "Handle from start does not terminate run after continue as new if given runId" pending
-- specify "Download and replay multiple executions with client list method" pending

  describe "Custom Data Conversion" $ do
    let mkOpts tq = (C.startWorkflowOptions tq)
          { C.workflowIdReusePolicy = Just W.WorkflowIdReusePolicyAllowDuplicate
          , C.timeouts = C.TimeoutOptions
              { C.runTimeout = Just (seconds 10)
              , C.executionTimeout = Nothing
              , C.taskTimeout = Nothing
              }
          }

    specify "custom payload codec (encrypt/decrypt round-trip)" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow Text
          workflow = pure "secret-data"
          wf = W.provideWorkflow defaultCodec "payloadCodecWf" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        result <- useClient (C.execute wf.reference "payloadCodecWf" (mkOpts taskQueue))
        result `shouldBe` "secret-data"

    specify "failure converter maps custom exceptions" $ \TestEnv {..} -> do
      let workflow :: MyWorkflow ()
          workflow = Catch.throwM CustomTestException
          wf = W.provideWorkflow defaultCodec "failureConverterWf" workflow
          conf = configure () wf $ do
            baseConf
            addErrorConverter $ \CustomTestException ->
              ApplicationFailure
                { message = "custom-mapped"
                , type' = "CustomTestException"
                , nonRetryable = True
                , details = []
                , stack = ""
                , nextRetryDelay = Nothing
                }
      withWorker conf $ do
        useClient (C.execute wf.reference "failureConverterWf" (mkOpts taskQueue))
          `shouldThrow` isWorkflowFailed

    specify "search attributes round-trip through codec" $ \TestEnv {..} -> do
      let expectedAttrs = Map.fromList [("attr1", toSearchAttribute True)]
          workflow :: MyWorkflow (Map SearchAttributeKey SearchAttributeType)
          workflow = do
            W.upsertSearchAttributes expectedAttrs
            i <- W.info
            pure i.searchAttributes
          wf = W.provideWorkflow defaultCodec "searchAttrCodecWf" workflow
          conf = configure () wf $ do baseConf
      withWorker conf $ do
        useClient (C.execute wf.reference "searchAttrCodecWf" (mkOpts taskQueue))
          `shouldReturn` expectedAttrs

    specify "payload codec works with activity arguments" $ \TestEnv {..} -> do
      let act :: Activity () Int
          act = pure 42
          actDef = provideActivity defaultCodec "codecTestAct" act
          workflow :: MyWorkflow Int
          workflow = W.executeActivity actDef.reference
            (W.defaultStartActivityOptions $ W.StartToClose $ seconds 5)
          wf = W.provideWorkflow defaultCodec "payloadCodecActWf" workflow
          conf = configure () (wf, actDef) $ do baseConf
      withWorker conf $ do
        useClient (C.execute wf.reference "payloadCodecActWf" (mkOpts taskQueue))
          `shouldReturn` 42
