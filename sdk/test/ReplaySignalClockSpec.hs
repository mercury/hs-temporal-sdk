module ReplaySignalClockSpec where

import Control.Monad (void, when)
import qualified Data.Aeson as Aeson
import qualified Data.ByteString as BS
import Data.IORef (IORef, atomicModifyIORef', newIORef, readIORef)
import Data.Maybe (fromMaybe, isJust)
import Data.Text (Text)
import Data.Time.Clock.System (SystemTime (..))
import Paths_temporal_sdk (getDataFileName)
import RequireCallStack (provideCallStack)
import System.Timeout (timeout)
import Temporal.Activity (KnownActivity (..))
import Temporal.Duration
import Temporal.Payload (JSON (..))
import Temporal.Runtime (Runtime, TelemetryOptions (NoTelemetry), bracketRuntime)
import Temporal.Worker
import qualified Temporal.Workflow as W
import Temporal.Workflow.Unsafe (performUnsafeNonDeterministicIO)
import Test.Hspec


-- These are desired-behavior regression tests for temporalio/sdk-rust#1737.
-- The clock and alignment cases intentionally fail on the current Core pin.
-- The +5 ms timing control must pass with the same workflow and payloads.
spec :: Spec
spec = around (bracketRuntime NoTelemetry) $ describe "Replay signal clock" $ do
  it "replays the +5 ms timing control with aligned activity results" $ \runtime -> do
    (outcome, observations) <- replayFixture runtime "control-plus5ms.bin"
    outcome `shouldBe` Just (Right ())
    activityResults observations `shouldBe` expectedResults

  it "preserves the signal's original workflow-task time" $ \runtime -> do
    (_, observations) <- replayFixture runtime "history.bin"
    signalTimes observations `shouldBe` [MkSystemTime 1819433856 183_000_000]

  it "preserves activity operations and result types across replay" $ \runtime -> do
    (_, observations) <- replayFixture runtime "history.bin"
    -- Checking runReplayHistoryProto's Right () alone misses this failure:
    -- Core also evicts an incomplete history after its last activation.
    activityResults observations `shouldBe` expectedResults


data Observation
  = SignalTime SystemTime
  | ActivityOperation Text
  | ContextResult Aeson.Value
  deriving stock (Eq, Show)


activityResults :: [Observation] -> [Observation]
activityResults = filter $ \case
  SignalTime _ -> False
  _ -> True


signalTimes :: [Observation] -> [SystemTime]
signalTimes = foldMap $ \case
  SignalTime time -> [time]
  _ -> []


expectedResults :: [Observation]
expectedResults =
  [ ActivityOperation "enabled"
  , ActivityOperation "enabled"
  , ActivityOperation "load_context"
  , ContextResult $ Aeson.object ["timezone" Aeson..= ("UTC" :: Text)]
  , ActivityOperation "enabled"
  ]


replayFixture :: Runtime -> FilePath -> IO (Maybe (Either ReplayHistoryFailure ()), [Observation])
replayFixture runtime filename = do
  observations <- newIORef []
  historyPath <- getDataFileName $ "test/fixtures/replay-signal-clock/" <> filename
  history <- BS.readFile historyPath
  let workflow = W.provideWorkflow JSON "SignalClockWorkflow" $ signalClockWorkflow observations
      config = configure () workflow $ do
        setNamespace $ W.Namespace "default"
        setTaskQueue $ W.TaskQueue "signal-clock-repro"
  outcome <- timeout 10_000_000 $ runReplayHistoryProto runtime config (W.WorkflowId "signal-clock-repro") history
  observed <- readIORef observations
  pure (outcome, observed)


signalClockWorkflow :: IORef [Observation] -> Aeson.Value -> W.Workflow ()
signalClockWorkflow observations _ = provideCallStack $ do
  received <- W.newStateVar (Nothing :: Maybe SystemTime)
  let inbound = W.KnownSignal @'[Aeson.Value] "inbound" JSON
  W.setSignalHandler inbound $ \_ -> do
    receivedAt <- W.time
    W.writeStateVar received (Just receivedAt)
    record $ SignalTime receivedAt
  void $ io "enabled"
  W.waitCondition $ isJust <$> W.readStateVar received
  receivedAt <- W.readStateVar received
  let deadline = addDurationToSystemTime (days 14) $ fromMaybe (error "missing signal after waitCondition") receivedAt
  W.sleepUntilSystemTime deadline
  now <- W.time
  void $ io "enabled"
  when (now < deadline) $ void $ io "enabled"
  context <- io "load_context"
  record $ ContextResult context
  case context of
    Aeson.Object _ -> pure ()
    _ -> error $ "Expected context object, got " <> show context
  void $ io "enabled"
  W.waitCondition $ pure False
  where
    -- Test-only observation sink. It records values without influencing any
    -- workflow decision, and shutdown joins the executor before we read it.
    record :: Observation -> W.Workflow ()
    record observation = performUnsafeNonDeterministicIO $
      atomicModifyIORef' observations $
        \seen -> (seen <> [observation], ())

    io :: Text -> W.Workflow Aeson.Value
    io operation = provideCallStack $ do
      record $ ActivityOperation operation
      W.executeActivity
        (KnownActivity @'[Aeson.Value] @Aeson.Value JSON "io")
        (W.defaultStartActivityOptions $ W.StartToClose $ minutes 1)
        (Aeson.object ["op" Aeson..= operation])
