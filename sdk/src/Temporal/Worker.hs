{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{- |
Module: Temporal.Worker
Description: Define and manage Temporal workers for executing workflows and activities.

Temporal workers are responsible for executing workflows and activities by polling
the Temporal service for tasks in specific task queues. This module provides
types and functions for defining and configuring Temporal workers, including
both workflow and activity workers.

Types and functions for configuring workers, adding workflows and activities,
and setting worker options are included in this module.

Note: workers only poll from a single task queue. If you need to poll from
multiple task queues, you will need to start multiple workers. Multiple workers
may run in the same process.
-}
module Temporal.Worker (
  Temporal.Worker.Worker,
  startWorker,
  waitWorker,
  shutdown,
  linkWorker,
  pollWorkerSTM,
  waitWorkerSTM,
  replaceEnvironment,

  -- * Configuration
  WorkerConfig (..),
  Definitions (..),
  ToDefinitions (..),
  mapDefinitionsEnv,
  ConfigM,
  configure,

  -- * Replay

  --
  -- A replay worker is a worker that is used to replay a workflow execution.
  -- It is not used for real-world execution of workflows, but is used to
  -- replay a workflow execution from history. This is useful for test suites,
  -- as it allows you to ensure that changes to your workflow code do not
  -- break determinism.
  runReplayHistory,
  runReplayHistoryProto,
  runReplayHistoryJson,
  ReplayHistoryFailure (..),
  subscribeToEvictions,
  subscribeToEvictionsSTM,
  Workflow.EvictionWithRunID (..),
  evictionMessage,
  evictionWasNonRecoverable,
  -- startReplayWorker,
  -- Core.HistoryPusher,
  -- Core.pushHistory,
  -- Core.closeHistory,

  -- ** Worker options
  WorkflowDef (..),
  ActivityDef (..),
  addErrorConverter,
  setLogger,
  setTracerProvider,
  setNamespace,
  setTaskQueue,
  setBuildId,
  setIdentity,
  setMaxCachedWorkflows,
  setMaxOutstandingWorkflowTasks,
  setMaxOutstandingActivities,
  setMaxOutstandingLocalActivities,
  setMaxOutstandingNexusTasks,
  unsetMaxOutstandingNexusTasks,
  setMaxConcurrentWorkflowTaskPolls,
  setNonstickyToStickyPollRatio,
  setMaxConcurrentActivityTaskPolls,
  setNoRemoteActivities,
  setStickyQueueScheduleToStartTimeoutMillis,
  setMaxHeartbeatThrottleIntervalMillis,
  setDefaultHeartbeatThrottleIntervalMillis,
  setMaxActivitiesPerSecond,
  setMaxTaskQueueActivitiesPerSecond,
  setGracefulShutdownPeriodMillis,
  addInterceptors,
  setPayloadProcessor,
  addNexusServiceHandler,
  Nexus.NexusServiceHandler (..),
  Nexus.NexusOperationHandler (..),
  NexusEndpointName (..),
  NexusServiceName (..),
  NexusOperationName (..),
  NexusClient (..),
  makeNexusClient,

  -- ** Worker tuner
  setTuner,
  Core.TunerConfig (..),
  Core.SlotSupplierConfig (..),
  Core.ResourceBasedTunerConfig (..),

  -- ** Custom slot supplier
  Core.CustomSlotSupplier (..),
  Core.SlotReservationContext (..),
  Core.SlotInfo (..),
  Core.MarkSlotUsedContext (..),
  Core.ReleaseSlotContext (..),
  Core.CustomSlotSupplierHandle,
  Core.newCustomSlotSupplierHandle,
  Core.freeCustomSlotSupplierHandle,
  WorkflowId (..),
) where

import Control.Concurrent
import Control.Monad
import Control.Monad.Catch
import Control.Monad.Logger
import Control.Monad.Reader
import Control.Monad.State
import qualified Data.ByteString as BS
import Data.Either (lefts)
import Data.Foldable
import Data.HashMap.Strict (HashMap)
import qualified Data.HashMap.Strict as HashMap
import Data.ProtoLens (encodeMessage)
import Data.Text (Text)
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.UUID as UUID
import Data.UUID.V4 (nextRandom)
import Data.Word
import qualified GHC.Conc.Sync
import Lens.Family2
import qualified OpenTelemetry.Context.ThreadLocal as OTContext
import OpenTelemetry.Trace.Core hiding (inSpan)
import qualified OpenTelemetry.Trace.Core as OT
import OpenTelemetry.Trace.Monad
import Proto.Temporal.Api.History.V1.Message (History)
import Proto.Temporal.Api.History.V1.Message_Fields (maybe'workflowExecutionStartedEventAttributes, vec'events, workflowId)
import Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation
import qualified Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields as Activation
import RequireCallStack
import qualified StmContainers.Map as StmMap
import System.IO.Unsafe
import Temporal.Activity.Definition
import qualified Temporal.Activity.Worker as Activity
import Temporal.Common
import Temporal.Common.Async
import qualified Temporal.Common.Logging as Logging
import Temporal.Core.Client
import Temporal.Core.Worker (InactiveForReplay)
import qualified Temporal.Core.Worker as Core
import Temporal.Exception
import Temporal.Interceptor
import qualified Temporal.Nexus.Worker as Nexus
import Temporal.Payload (PayloadProcessor (..))
import Temporal.Runtime
import Temporal.Worker.Types
import Temporal.Workflow.Definition
import qualified Temporal.Workflow.Internal.ActivationLoop as ActivationLoop
import Temporal.Workflow.Types (NexusClient (..), makeNexusClient)
import qualified Temporal.Workflow.Worker as Workflow
import UnliftIO


newtype ConfigM actEnv a = ConfigM {unConfigM :: State (WorkerConfig actEnv) a}
  deriving newtype (Functor, Applicative, Monad)


instance Semigroup a => Semigroup (ConfigM actEnv a) where
  (<>) = liftA2 (<>)


instance Monoid a => Monoid (ConfigM actEnv a) where
  mempty = pure mempty


------------------------------------------------------------------------------------
-- Configuration

-- TODO, it would be nice to expose an inert Tracer Provider in hs-opentelemetry-api
inertTracerProvider :: TracerProvider
inertTracerProvider = unsafePerformIO $ createTracerProvider [] emptyTracerProviderOptions
{-# NOINLINE inertTracerProvider #-}


-- | Turn a configuration block into the final configuration.
configure :: ToDefinitions actEnv defs => actEnv -> defs -> ConfigM actEnv () -> WorkerConfig actEnv
configure actEnv defs = flip execState defaultConfig . unConfigM
  where
    defaultConfig =
      let (Definitions wfDefs actDefs) = toDefinitions defs
      in WorkerConfig
          { coreConfig = Core.defaultWorkerConfig
          , deadlockTimeout = Just 1000000
          , interceptorConfig = mempty
          , applicationErrorConverters = standardApplicationFailureHandlers
          , logger = \_ _ _ _ -> pure ()
          , tracerProvider = inertTracerProvider
          , payloadProcessor = PayloadProcessor pure (pure . Right)
          , nexusServiceHandlers = []
          , ..
          }


data Definitions env = Definitions
  { workflowDefinitions :: {-# UNPACK #-} !(HashMap Text WorkflowDefinition)
  , activityDefinitions :: {-# UNPACK #-} !(HashMap Text (ActivityDefinition env))
  }


{- | If you have a worker that needs to run activities derived from a larger environment context,
you can apply this function to the definitions to get a new set of definitions that will run
the activities in the right environment.
-}
mapDefinitionsEnv :: (env' -> env) -> Definitions env -> Definitions env'
mapDefinitionsEnv f (Definitions w a) = Definitions w (fmap (mapActivityDefinitionEnv f) a)


instance Semigroup (Definitions env) where
  (Definitions w1 a1) <> (Definitions w2 a2) = Definitions (w1 <> w2) (a1 <> a2)


instance Monoid (Definitions env) where
  mempty = Definitions mempty mempty


instance ToDefinitions env (Definitions env) where
  toDefinitions = id


class ToDefinitions env f where
  toDefinitions :: f -> Definitions env


instance ToDefinitions env WorkflowDefinition where
  toDefinitions wf = Definitions (HashMap.singleton (workflowName wf) wf) mempty


instance ToDefinitions env (ProvidedWorkflow f) where
  toDefinitions wf = toDefinitions wf.definition


instance ToDefinitions env (ActivityDefinition env) where
  toDefinitions act = Definitions mempty (HashMap.singleton (activityName act) act)


instance ToDefinitions env (ProvidedActivity env f) where
  toDefinitions act = toDefinitions act.definition


instance (ToDefinitions env _1, ToDefinitions env _2) => ToDefinitions env (_1, _2) where
  toDefinitions (a, b) = toDefinitions a <> toDefinitions b


instance (ToDefinitions env _1, ToDefinitions env _2, ToDefinitions env _3) => ToDefinitions env (_1, _2, _3) where
  toDefinitions (a, b, c) = toDefinitions a <> toDefinitions b <> toDefinitions c


instance (ToDefinitions env _1, ToDefinitions env _2, ToDefinitions env _3, ToDefinitions env _4) => ToDefinitions env (_1, _2, _3, _4) where
  toDefinitions (a, b, c, d) = toDefinitions a <> toDefinitions b <> toDefinitions c <> toDefinitions d


instance (ToDefinitions env _1, ToDefinitions env _2, ToDefinitions env _3, ToDefinitions env _4, ToDefinitions env _5) => ToDefinitions env (_1, _2, _3, _4, _5) where
  toDefinitions (a, b, c, d, e) = toDefinitions a <> toDefinitions b <> toDefinitions c <> toDefinitions d <> toDefinitions e


instance (ToDefinitions env _1, ToDefinitions env _2, ToDefinitions env _3, ToDefinitions env _4, ToDefinitions env _5, ToDefinitions env _6) => ToDefinitions env (_1, _2, _3, _4, _5, _6) where
  toDefinitions (a, b, c, d, e, f) = toDefinitions a <> toDefinitions b <> toDefinitions c <> toDefinitions d <> toDefinitions e <> toDefinitions f


addInterceptors :: Interceptors actEnv -> ConfigM actEnv ()
addInterceptors i = ConfigM $ modify' $ \conf ->
  conf
    { interceptorConfig = i <> interceptorConfig conf
    }


addErrorConverter :: (Exception e) => (e -> ApplicationFailure) -> ConfigM actEnv ()
addErrorConverter f = ConfigM $ modify' $ \conf ->
  conf
    { applicationErrorConverters = ApplicationFailureHandler f : applicationErrorConverters conf
    }


modifyCore :: (Core.WorkerConfig -> Core.WorkerConfig) -> ConfigM actEnv ()
modifyCore f = ConfigM $ modify' $ \conf ->
  conf
    { coreConfig = f (coreConfig conf)
    }


{- | The namespace that all workflows and activities will be
registered in for this worker.

If you need to register workflows and activities in multiple namespaces,
you will need to start multiple workers. Multiple workers may run in the
same process.
-}
setNamespace :: Namespace -> ConfigM actEnv ()
setNamespace (Namespace ns) = modifyCore $ \conf ->
  conf
    { Core.namespace = ns
    }


{- | A temporal worker, whether polling for workflows or activities, does so by polling a specific "Task Queue".

Any time there is a new activity task or workflow task that needs to be performed by a worker, it'll be queued in a specific task queue.
-}
setTaskQueue :: TaskQueue -> ConfigM actEnv ()
setTaskQueue (TaskQueue tq) = modifyCore $ \conf ->
  conf
    { Core.taskQueue = tq
    }


{- | A string that should be unique to the exact worker code/binary being executed.

This is used to uniquely identify the worker's code for a handful of purposes,
including the worker versioning feature if you have opted into that with useVersioning.
It will also populate the binaryChecksum field on older servers.

N.B. this is not the same as the worker's identity, which is a string that identifies
the worker instance. The identity is used to identify the worker instance in logs and
in the Temporal UI. The buildId is used to identify the exact version of the code and
its dependencies. In e.g. Nix, the executable path in the Nix store would be a useful
buildId.
-}
setBuildId :: Text -> ConfigM actEnv ()
setBuildId bid = modifyCore $ \conf ->
  conf
    { Core.buildId = bid
    }


setIdentity :: Text -> ConfigM actEnv ()
setIdentity ident = modifyCore $ \conf ->
  conf
    { Core.clientIdentityOverride = Just ident
    }


setMaxCachedWorkflows :: Word64 -> ConfigM actEnv ()
setMaxCachedWorkflows n = modifyCore $ \conf ->
  conf
    { Core.maxCachedWorkflows = n
    }


setMaxOutstandingWorkflowTasks :: Word64 -> ConfigM actEnv ()
setMaxOutstandingWorkflowTasks n = modifyCore $ \conf ->
  conf
    { Core.maxOutstandingWorkflowTasks = n
    }


setMaxOutstandingActivities :: Word64 -> ConfigM actEnv ()
setMaxOutstandingActivities n = modifyCore $ \conf ->
  conf
    { Core.maxOutstandingActivities = n
    }


setMaxOutstandingLocalActivities :: Word64 -> ConfigM actEnv ()
setMaxOutstandingLocalActivities n = modifyCore $ \conf ->
  conf
    { Core.maxOutstandingLocalActivities = n
    }


setMaxOutstandingNexusTasks :: Word64 -> ConfigM actEnv ()
setMaxOutstandingNexusTasks n = modifyCore $ \conf ->
  conf
    { Core.maxOutstandingNexusTasks = Just n
    }


unsetMaxOutstandingNexusTasks :: ConfigM actEnv ()
unsetMaxOutstandingNexusTasks = modifyCore $ \conf ->
  conf
    { Core.maxOutstandingNexusTasks = Nothing
    }


setMaxConcurrentWorkflowTaskPolls :: Word64 -> ConfigM actEnv ()
setMaxConcurrentWorkflowTaskPolls n = modifyCore $ \conf ->
  conf
    { Core.maxConcurrentWorkflowTaskPolls = n
    }


setNonstickyToStickyPollRatio :: Float -> ConfigM actEnv ()
setNonstickyToStickyPollRatio n = modifyCore $ \conf ->
  conf
    { Core.nonstickyToStickyPollRatio = n
    }


{- | Maximum number of Activity tasks to poll concurrently.

Increase this setting if your Worker is failing to fill in all
of its maxConcurrentActivityTaskExecutions slots despite a
backlog of Activity Tasks in the Task Queue (ie. due to network latency).
Can't be higher than maxConcurrentActivityTaskExecutions.
-}
setMaxConcurrentActivityTaskPolls :: Word64 -> ConfigM actEnv ()
setMaxConcurrentActivityTaskPolls n = modifyCore $ \conf ->
  conf
    { Core.maxConcurrentActivityTaskPolls = n
    }


setNoRemoteActivities :: Bool -> ConfigM actEnv ()
setNoRemoteActivities n = modifyCore $ \conf ->
  conf
    { Core.noRemoteActivities = n
    }


-- | How long a workflow task is allowed to sit on the sticky queue before it is timed out and moved to the non-sticky queue where it may be picked up by any worker.
setStickyQueueScheduleToStartTimeoutMillis :: Word64 -> ConfigM actEnv ()
setStickyQueueScheduleToStartTimeoutMillis n = modifyCore $ \conf ->
  conf
    { Core.stickyQueueScheduleToStartTimeoutMillis = n
    }


-- | Longest interval for throttling activity heartbeats
setMaxHeartbeatThrottleIntervalMillis :: Word64 -> ConfigM actEnv ()
setMaxHeartbeatThrottleIntervalMillis n = modifyCore $ \conf ->
  conf
    { Core.maxHeartbeatThrottleIntervalMillis = n
    }


{- | Default interval for throttling activity heartbeats in case
ActivityOptions.heartbeat_timeout is unset.
When the timeout is set in the ActivityOptions,
throttling is set to @heartbeat_timeout * 0.8@.
-}
setDefaultHeartbeatThrottleIntervalMillis :: Word64 -> ConfigM actEnv ()
setDefaultHeartbeatThrottleIntervalMillis n = modifyCore $ \conf ->
  conf
    { Core.defaultHeartbeatThrottleIntervalMillis = n
    }


{- | Limits the number of Activities per second that this Worker will process.
(Does not limit the number of Local Activities.) The Worker will not poll for
new Activities if by doing so it might receive and execute an Activity which
would cause it to exceed this limit. Must be a positive number.

If unset, no rate limiting will be applied to Worker's Activities. (tctl task-queue describe will display the absence of a limit as 100,000.)
-}
setMaxActivitiesPerSecond :: Double -> ConfigM actEnv ()
setMaxActivitiesPerSecond n = modifyCore $ \conf ->
  conf
    { Core.maxWorkerActivitiesPerSecond = Just n
    }


{- | Sets the maximum number of activities per second the task queue will dispatch, controlled server-side. Note that this only takes effect upon an activity poll request.
If multiple workers on the same queue have different values set, they will thrash with the last poller winning.

If unset, no rate limiting will be applied to the task queue.
-}
setMaxTaskQueueActivitiesPerSecond :: Double -> ConfigM actEnv ()
setMaxTaskQueueActivitiesPerSecond n = modifyCore $ \conf ->
  conf
    { Core.maxTaskQueueActivitiesPerSecond = Just n
    }


{- | Time to wait for pending tasks to drain after shutdown was requested.

In-flight activities will be cancelled after this period and their current
attempt will be resolved as failed if they confirm cancellation
(by throwing a CancelledFailure or AbortError).
-}
setGracefulShutdownPeriodMillis :: Word64 -> ConfigM actEnv ()
setGracefulShutdownPeriodMillis n = modifyCore $ \conf ->
  conf
    { Core.gracefulShutdownPeriodMillis = n
    }


{- | Set a tuner for the worker, controlling how task slots are allocated.

When a tuner is set, the @maxOutstandingWorkflowTasks@, @maxOutstandingActivities@,
@maxOutstandingLocalActivities@, and @maxOutstandingNexusTasks@ fields are
ignored in favor of the tuner's slot suppliers.

This enables dynamic scaling strategies like resource-based autoscaling with PID
controllers targeting CPU and memory thresholds.

Use 'Core.FixedSizeSlotSupplier' for a static number of slots, or
'Core.ResourceBasedSlotSupplier' to scale slots based on system resource usage.
When any slot supplier is 'Core.ResourceBasedSlotSupplier', you must also provide
'Core.ResourceBasedTunerConfig' with target CPU and memory usage thresholds (values
between 0 and 1).
-}
setTuner :: Core.TunerConfig -> ConfigM actEnv ()
setTuner t = modifyCore $ \conf ->
  conf
    { Core.tuner = Just t
    }


-- | Set the logger for the worker. This is used to log messages from the worker.
setLogger :: (Loc -> LogSource -> Control.Monad.Logger.LogLevel -> LogStr -> IO ()) -> ConfigM actEnv ()
setLogger f = ConfigM $ modify' $ \conf ->
  conf
    { logger = f
    }


-- | Set the tracer provider for the worker. This is used to trace the worker's internal activity.
setTracerProvider :: TracerProvider -> ConfigM actEnv ()
setTracerProvider tp = ConfigM $ modify' $ \conf ->
  conf
    { tracerProvider = tp
    }


setPayloadProcessor :: PayloadProcessor -> ConfigM actEnv ()
setPayloadProcessor p = ConfigM $ modify' $ \conf ->
  conf
    { payloadProcessor = p
    }


addNexusServiceHandler :: Nexus.NexusServiceHandler -> ConfigM actEnv ()
addNexusServiceHandler svc = ConfigM $ modify' $ \conf ->
  conf
    { nexusServiceHandlers = svc : conf.nexusServiceHandlers
    }


------------------------------------------------------------------------------------

{- | A Worker is responsible for polling a Task Queue, dequeueing a Task, executing
your code in response to a Task, and responding to the Temporal Cluster with the results.

Worker Processes are external to a Temporal Cluster. Temporal Application developers are
responsible for developing Worker Programs and operating Worker Processes. Said another way,
the Temporal Cluster (including the Temporal Cloud) doesn't execute any of your code
(Workflow and Activity Definitions) on Temporal Cluster machines. The Cluster is solely
responsible for orchestrating State Transitions and providing Tasks to the next available
Worker Entity.

A Worker Process can be both a Workflow Worker Process and an Activity Worker Process.
Haskell the ability to have multiple Worker Entities in a single Worker Process.

A single Worker Entity can listen to only a single Task Queue. But if a Worker Process has multiple Worker Entities, the Worker Process could be listening to multiple Task Queues.
-}
data WorkerShutdownState
  = WorkerShutdownNotStarted
  | WorkerShutdownStarted !(Control.Concurrent.MVar (Either SomeException ()))


data Worker env = forall ty.
  Core.KnownWorkerType ty =>
  Worker
  { workerType :: !(Core.SWorkerType ty)
  , workerWorkflowLoop :: !(Async ())
  , workerActivityLoop :: !(InactiveForReplay ty (Async ()))
  , workerNexusLoop :: !(InactiveForReplay ty (Async ()))
  , workerActivityWorker :: !(InactiveForReplay ty (Activity.ActivityWorker env))
  , workerCore :: !(Core.Worker ty)
  , workerTracer :: !Tracer
  , workerEvictionEmitter :: !(TChan Workflow.EvictionWithRunID)
  , workerShutdownState :: !(Control.Concurrent.MVar WorkerShutdownState)
  }


{- | Best-effort teardown of a core worker that was created but never returned
to a caller as a public 'Worker'.

'startWorker' and 'startReplayWorker' can fail or be interrupted after the
core worker has been allocated — most notably during the interruptible
validation wait, where even a 'UnliftIO.bracket' acquire can receive a timeout
or 'killThread'. At that point no public 'Worker' value exists, so 'shutdown'
can never run; the core worker must be shut down here or it leaks its pollers,
client reference, and runtime keepalive.

The teardown runs on a separate thread: the caller is typically dying from an
asynchronous exception, and the shutdown FFI waits are themselves
interruptible. 'Core.finalizeShutdown' is single-flight and 'Core.closeWorker'
waits for in-flight finalization, so this sequence is safe even if it races
another shutdown path.

Because the teardown is asynchronous, Core may briefly still consider the old
worker registered: restarting a worker for the same task queue immediately
after interrupting startup can fail with a registration conflict until the
teardown completes.
-}
destroyUnstartedCoreWorker :: Core.KnownWorkerType ty => IO () -> Core.Worker ty -> IO ()
destroyUnstartedCoreWorker releaseExtras workerCore =
  void $ forkIOLabelled "temporal/worker/destroy-unstarted" $ do
    void $ UnliftIO.tryAny releaseExtras
    void $ UnliftIO.tryAny $ do
      Core.initiateShutdown workerCore
      void $ Core.finalizeShutdown workerCore
    void $ UnliftIO.tryAny $ Core.closeWorker workerCore


startReplayWorker :: (MonadUnliftIO m, MonadCatch m) => Runtime -> WorkerConfig actEnv -> m (Temporal.Worker.Worker actEnv, Core.HistoryPusher)
startReplayWorker rt conf = provideCallStack $ runWorkerContext conf $ do
  Logging.logDebug "Starting replay worker"
  let coreConfig' = conf.coreConfig {Core.nondeterminismAsWorkflowFail = True}
  (workerCore, replay) <- either throwIO pure =<< liftIO (Core.newReplayWorker rt coreConfig')
  Logging.logDebug "Instantiated core"
  -- Same ownership rule as 'startWorker': if anything below fails or is
  -- interrupted before the Worker value reaches the caller, the core worker
  -- (and its history pusher) must be destroyed here or it leaks.
  (`UnliftIO.onException` liftIO (destroyUnstartedCoreWorker (Core.closeHistory replay) workerCore)) $ do
    workerEvictionEmitter <- newBroadcastTChanIO
    workerShutdownState <- UnliftIO.newMVar WorkerShutdownNotStarted
    runningWorkflows <- liftIO StmMap.newIO
    workerActivationLoop <- liftIO $ newTVarIO ActivationLoop.initialActivationLoop
    workerActivationTails <- liftIO StmMap.newIO
    uuid <- liftIO nextRandom
    let workerWorkflowFunctions = conf.wfDefs
        workerTaskQueue = TaskQueue (Core.taskQueue conf.coreConfig <> "-" <> UUID.toText uuid)
        workerInboundInterceptors = conf.interceptorConfig.workflowInboundInterceptors
        workerOutboundInterceptors = conf.interceptorConfig.workflowOutboundInterceptors
        workerDeadlockTimeout = conf.deadlockTimeout
        workerClient = ()
        workerErrorConverters = conf.applicationErrorConverters
        processor = conf.payloadProcessor
        workerVault = conf.interceptorConfig.interceptorVault
        workflowWorker = Workflow.WorkflowWorker {..}
        workerActivityWorker = ()
        workerActivityLoop = ()
        workerNexusLoop = ()
        workerType = Core.SReplay
        workerTracer = makeTracer conf.tracerProvider "hs-temporal-sdk" tracerOptions
    -- Spawn the loop with async exceptions masked so cancellation cannot land
    -- between the spawn and returning the Worker value; the loop body itself
    -- runs unmasked.
    UnliftIO.mask_ $ do
      workerWorkflowLoop <- asyncLabelledWithUnmask (T.unpack $ T.concat ["temporal/worker/workflow/", Core.namespace conf.coreConfig, "/", Core.taskQueue conf.coreConfig]) $ \unmask -> unmask $ do
        Logging.logInfo $
          T.concat
            [ "Starting replay workflow worker loop:"
            , "namespace="
            , Core.namespace conf.coreConfig
            , " "
            , "taskQueue="
            , Core.taskQueue conf.coreConfig
            ]
        res <- UnliftIO.try $ Workflow.execute workflowWorker
        case res of
          Left (e :: SomeException) ->
            Logging.logError $
              T.concat
                [ "Exiting replay workflow worker loop with error: "
                , "namespace="
                , Core.namespace conf.coreConfig
                , " "
                , "taskQueue="
                , Core.taskQueue conf.coreConfig
                , " "
                , "error="
                , T.pack $ show e
                ]
          Right _ ->
            Logging.logInfo $
              T.concat
                [ "Exiting replay workflow worker loop normally: "
                , "namespace="
                , Core.namespace conf.coreConfig
                , " "
                , "taskQueue="
                , Core.taskQueue conf.coreConfig
                ]
      pure (Temporal.Worker.Worker {..}, replay)


data ReplayHistoryFailure = ReplayHistoryFailure
  { message :: Text
  }
  deriving stock (Show, Eq)
  deriving anyclass (Exception)


{- | Run a worker in replay mode, feeding a history to the worker in order to ensure that
the worker execution still works as expected.
-}
runReplayHistory :: (MonadUnliftIO m, MonadCatch m) => Runtime -> WorkerConfig actEnv -> History -> m (Either ReplayHistoryFailure ())
runReplayHistory rt conf history = runWorkerContext conf $ UnliftIO.bracket (startReplayWorker rt conf) (\(worker, pusher) -> liftIO (Core.closeHistory pusher) *> shutdown worker) $ \(worker, pusher) -> do
  evictions <- subscribeToEvictions worker
  let mWfId = history ^? vec'events . traverse . maybe'workflowExecutionStartedEventAttributes . traverse . workflowId . to T.encodeUtf8
  wfId <- maybe (throwIO $ userError "No workflow ID found in history") pure mWfId
  Logging.logDebug $ "Pushing history for workflow ID " <> T.pack (show wfId)
  Logging.logDebug $ T.pack $ show history
  res <- liftIO $ Core.pushHistory pusher wfId (Left $ encodeMessage history)
  Logging.logDebug $ "Pushed history for workflow ID " <> T.pack (show wfId)
  case res of
    Left e -> pure $ Left $ ReplayHistoryFailure {message = e.message}
    Right () -> do
      eviction <- atomically $ readTChan evictions
      if evictionWasNonRecoverable eviction
        then pure $ Left $ ReplayHistoryFailure {message = evictionMessage eviction}
        else pure $ Right ()


{- | Run a worker in replay mode from raw protobuf bytes.
Skips the proto-lens decode\/encode round-trip — the bytes go straight to the Rust SDK.
Use with 'Temporal.Replay.readHistoryProtobufFile' when you already have the workflow ID.
-}
runReplayHistoryProto :: (MonadUnliftIO m, MonadCatch m) => Runtime -> WorkerConfig actEnv -> WorkflowId -> BS.ByteString -> m (Either ReplayHistoryFailure ())
runReplayHistoryProto rt conf (WorkflowId wfId) protoBytes = runWorkerContext conf $ UnliftIO.bracket (startReplayWorker rt conf) (\(worker, pusher) -> liftIO (Core.closeHistory pusher) *> shutdown worker) $ \(worker, pusher) -> do
  evictions <- subscribeToEvictions worker
  let wfIdBytes = T.encodeUtf8 wfId
  Logging.logDebug $ "Pushing proto history for workflow ID " <> wfId
  res <- liftIO $ Core.pushHistory pusher wfIdBytes (Left protoBytes)
  Logging.logDebug $ "Pushed proto history for workflow ID " <> wfId
  case res of
    Left e -> pure $ Left $ ReplayHistoryFailure {message = e.message}
    Right () -> do
      eviction <- atomically $ readTChan evictions
      if evictionWasNonRecoverable eviction
        then pure $ Left $ ReplayHistoryFailure {message = evictionMessage eviction}
        else pure $ Right ()


{- | Run a worker in replay mode from a JSON-encoded history.
Use this with histories exported from the Temporal UI or CLI, which use protobuf
canonical JSON encoding. The JSON is deserialized on the Rust side, bypassing
proto-lens's incomplete protobuf JSON support.
-}
runReplayHistoryJson :: (MonadUnliftIO m, MonadCatch m) => Runtime -> WorkerConfig actEnv -> WorkflowId -> BS.ByteString -> m (Either ReplayHistoryFailure ())
runReplayHistoryJson rt conf (WorkflowId wfId) historyJson = runWorkerContext conf $ UnliftIO.bracket (startReplayWorker rt conf) (\(worker, pusher) -> liftIO (Core.closeHistory pusher) *> shutdown worker) $ \(worker, pusher) -> do
  evictions <- subscribeToEvictions worker
  let wfIdBytes = T.encodeUtf8 wfId
  Logging.logDebug $ "Pushing JSON history for workflow ID " <> wfId
  res <- liftIO $ Core.pushHistoryJson pusher wfIdBytes historyJson
  Logging.logDebug $ "Pushed JSON history for workflow ID " <> wfId
  case res of
    Left e -> pure $ Left $ ReplayHistoryFailure {message = e.message}
    Right () -> do
      eviction <- atomically $ readTChan evictions
      if evictionWasNonRecoverable eviction
        then pure $ Left $ ReplayHistoryFailure {message = evictionMessage eviction}
        else pure $ Right ()


traced :: WorkerConfig env -> ReaderT Tracer m a -> m a
traced conf m =
  runReaderT m $
    makeTracer
      conf.tracerProvider
      "hs-temporal-sdk"
      tracerOptions


runWorkerContext :: WorkerConfig conf -> WorkerContextM m a -> m a
runWorkerContext conf (WorkerContextM m) = flip runLoggingT conf.logger $ traced conf m


newtype WorkerContextM m a = WorkerContextM (ReaderT Tracer (LoggingT m) a)
  deriving newtype (Functor, Applicative, Monad, MonadIO, MonadUnliftIO, MonadLogger, MonadLoggerIO, MonadCatch, MonadThrow)


instance Monad m => MonadTracer (WorkerContextM m) where
  getTracer = WorkerContextM ask


startWorker :: (MonadUnliftIO m, MonadCatch m) => Client -> WorkerConfig actEnv -> m (Temporal.Worker.Worker actEnv)
startWorker client conf = provideCallStack $ runWorkerContext conf $ inSpan "startWorker" defaultSpanArguments $ do
  workerCore <-
    inSpan
      "Core.newWorker"
      defaultSpanArguments
      (either throwIO pure =<< liftIO (Core.newWorker client conf.coreConfig))
  -- From here until the caller receives the Worker value this thread owns
  -- workerCore, and nothing else can ever shut it down. The validation wait
  -- below is interruptible even inside a 'bracket' acquire, so a timeout or
  -- killThread — as well as a validation failure — must destroy the core
  -- worker here or it leaks.
  (`UnliftIO.onException` liftIO (destroyUnstartedCoreWorker (pure ()) workerCore)) $ do
    liftIO (Core.validateWorker workerCore) >>= either throwIO pure
    workerEvictionEmitter <- newBroadcastTChanIO
    workerShutdownState <- UnliftIO.newMVar WorkerShutdownNotStarted
    runningWorkflows <- liftIO StmMap.newIO
    workerActivationLoop <- liftIO $ newTVarIO ActivationLoop.initialActivationLoop
    workerActivationTails <- liftIO StmMap.newIO
    runningActivities <- liftIO StmMap.newIO
    activityEnv <- newIORef conf.actEnv
    let errorConverters = mkAnnotatedHandlers conf.applicationErrorConverters
        workerWorkflowFunctions = conf.wfDefs
        workerTaskQueue = TaskQueue $ Core.taskQueue conf.coreConfig
        workerInboundInterceptors = conf.interceptorConfig.workflowInboundInterceptors
        workerOutboundInterceptors = conf.interceptorConfig.workflowOutboundInterceptors
        workerDeadlockTimeout = conf.deadlockTimeout
        workerErrorConverters = errorConverters
        workerVault = conf.interceptorConfig.interceptorVault
        processor = conf.payloadProcessor
        workflowWorker = Workflow.WorkflowWorker {..}
        definitions = conf.actDefs
        activityInboundInterceptors = conf.interceptorConfig.activityInboundInterceptors
        activityOutboundInterceptors = conf.interceptorConfig.activityOutboundInterceptors
        clientInterceptors = conf.interceptorConfig.clientInterceptors
        activityErrorConverters = errorConverters
        payloadProcessor = conf.payloadProcessor
        workerActivityWorker = Activity.ActivityWorker {..}
        workerClient = client
        workerTracer = makeTracer conf.tracerProvider "hs-temporal-sdk" tracerOptions
    let workerType = Core.SReal
    -- logs <- liftIO $ fetchLogs globalRuntime
    -- forM_ logs $ \l -> case l.level of
    --   Trace -> Logging.logDebug l.message
    --   Debug -> Logging.logDebug l.message
    --   Info -> Logging.logInfo l.message
    --   Warn -> Logging.logWarn l.message
    --   Error -> Logging.logError l.message
    -- Spawn the loops with async exceptions masked so cancellation cannot land
    -- between the spawns and orphan an already-started loop; the loop bodies
    -- themselves run unmasked.
    UnliftIO.mask_ $ do
      workerWorkflowLoop <- asyncLabelledWithUnmask (T.unpack $ T.concat ["temporal/worker/workflow/", Core.namespace conf.coreConfig, "/", Core.taskQueue conf.coreConfig]) $ \unmask -> unmask $ do
        Logging.logInfo $
          T.concat
            [ "Starting replay workflow worker loop:"
            , "namespace="
            , Core.namespace conf.coreConfig
            , " "
            , "taskQueue="
            , Core.taskQueue conf.coreConfig
            ]
        res <- UnliftIO.try $ Workflow.execute workflowWorker
        case res of
          Left (e :: SomeException) ->
            Logging.logError $
              T.concat
                [ "Exiting workflow worker loop with error: "
                , "namespace="
                , Core.namespace conf.coreConfig
                , " "
                , "taskQueue="
                , Core.taskQueue conf.coreConfig
                , " "
                , "error="
                , T.pack $ show e
                ]
          Right _ ->
            Logging.logInfo $
              T.concat
                [ "Exiting workflow worker loop normally: "
                , "namespace="
                , Core.namespace conf.coreConfig
                , " "
                , "taskQueue="
                , Core.taskQueue conf.coreConfig
                ]
      workerActivityLoop <- asyncLabelledWithUnmask (T.unpack $ T.concat ["temporal/worker/activity/", Core.namespace conf.coreConfig, "/", Core.taskQueue conf.coreConfig]) $ \unmask -> unmask $ do
        Logging.logDebug "Starting activity worker loop"
        res <- UnliftIO.try $ Activity.execute workerActivityWorker
        case res of
          Left (e :: SomeException) ->
            Logging.logError $
              T.concat
                [ "Exiting activity worker loop with error: "
                , "namespace="
                , Core.namespace conf.coreConfig
                , " "
                , "taskQueue="
                , Core.taskQueue conf.coreConfig
                , " "
                , "error="
                , T.pack $ show e
                ]
          Right _ ->
            Logging.logInfo $
              T.concat
                [ "Exiting activity worker loop normally: "
                , "namespace="
                , Core.namespace conf.coreConfig
                , " "
                , "taskQueue="
                , Core.taskQueue conf.coreConfig
                ]
      workerNexusLoop <- asyncLabelledWithUnmask (T.unpack $ T.concat ["temporal/worker/nexus/", Core.namespace conf.coreConfig, "/", Core.taskQueue conf.coreConfig]) $ \unmask -> unmask $ do
        let services = HashMap.fromList [(svc.serviceName, svc) | svc <- conf.nexusServiceHandlers]
        if HashMap.null services
          then Logging.logDebug "No nexus services registered, skipping nexus worker loop"
          else do
            Logging.logDebug "Starting nexus worker loop"
            let nexusWorker =
                  Nexus.NexusWorker
                    { Nexus.workerCore = workerCore
                    , Nexus.nexusServices = services
                    }
            res <- UnliftIO.try $ Nexus.execute nexusWorker
            case res of
              Left (e :: SomeException) ->
                Logging.logError $
                  T.concat
                    [ "Exiting nexus worker loop with error: "
                    , "namespace="
                    , Core.namespace conf.coreConfig
                    , " "
                    , "taskQueue="
                    , Core.taskQueue conf.coreConfig
                    , " "
                    , "error="
                    , T.pack $ show e
                    ]
              Right _ ->
                Logging.logInfo $
                  T.concat
                    [ "Exiting nexus worker loop normally: "
                    , "namespace="
                    , Core.namespace conf.coreConfig
                    , " "
                    , "taskQueue="
                    , Core.taskQueue conf.coreConfig
                    ]
      pure Temporal.Worker.Worker {..}


{- | Wait for a worker to exit. This waits for both the workflow and activity loops to complete.

Any exceptions thrown by the workflow or activity loops will be rethrown.

This function is generally not needed, as 'shutdown' will wait for the worker to exit.
-}
waitWorker :: (MonadIO m) => Temporal.Worker.Worker actEnv -> m ()
waitWorker (Temporal.Worker.Worker {workerType, workerWorkflowLoop, workerActivityLoop, workerNexusLoop}) = do
  case workerType of
    Core.SReal -> do
      wfRes <- waitCatch workerWorkflowLoop
      actRes <- waitCatch workerActivityLoop
      nexusRes <- waitCatch workerNexusLoop
      for_ (lefts [wfRes, actRes, nexusRes]) throwIO
    Core.SReplay -> do
      _ <- wait workerWorkflowLoop
      pure ()


-- logs <- liftIO $ fetchLogs globalRuntime
-- forM_ logs $ \l -> do
--   Logging.logInfo $ Text.pack $ show l

{- | Link a worker to the current thread. This will cause uncaught worker exceptions to be rethrown in the current thread.

If the worker has both workflow and activity definitions registered, this will link both the workflow and activity loops.
If one of the loops fails, the worker will initiate graceful shutdown (but not block) before rethrowing the exception.
-}
linkWorker :: Temporal.Worker.Worker actEnv -> IO ()
linkWorker Temporal.Worker.Worker {workerCore, workerType, workerWorkflowLoop, workerActivityLoop} = do
  tid <- myThreadId
  void $ forkIOLabelled (T.unpack $ T.concat ["temporal/worker/link/", Core.namespace c, "/", Core.taskQueue c]) $ do
    let errorClause :: SomeException -> IO ()
        errorClause e = do
          Core.initiateShutdown workerCore
          Control.Concurrent.throwTo tid e
    case workerType of
      Core.SReal -> do
        eeRes <- race (waitCatch workerWorkflowLoop) (waitCatch workerActivityLoop)
        case eeRes of
          Left (Left e) -> errorClause e
          Right (Left e) -> errorClause e
          _ -> pure ()
      Core.SReplay -> do
        eRes <- waitCatch workerWorkflowLoop
        case eRes of
          Left e -> errorClause e
          _ -> pure ()
  where
    c = Core.getWorkerConfig workerCore


pollWorkerSTM :: Temporal.Worker.Worker actEnv -> STM (Maybe (Either SomeException ()))
pollWorkerSTM Temporal.Worker.Worker {workerType, workerWorkflowLoop, workerActivityLoop} = do
  case workerType of
    Core.SReal -> do
      wfRes <- pollSTM workerWorkflowLoop
      actRes <- pollSTM workerActivityLoop
      pure $ case (wfRes, actRes) of
        (Just (Left e), _) -> Just (Left e)
        (_, Just (Left e)) -> Just (Left e)
        (Just (Right ()), Just (Right ())) -> Just (Right ())
        _ -> Nothing
    Core.SReplay -> pollSTM workerWorkflowLoop


waitWorkerSTM :: Temporal.Worker.Worker actEnv -> STM ()
waitWorkerSTM Temporal.Worker.Worker {workerType, workerWorkflowLoop, workerActivityLoop, workerNexusLoop} = do
  case workerType of
    Core.SReal -> do
      waitSTM workerWorkflowLoop
      waitSTM workerActivityLoop
      waitSTM workerNexusLoop
    Core.SReplay -> waitSTM workerWorkflowLoop


{- | Shut down a worker.

The shutdown flow is as follows:

* this function calls 'Core.initiateShutdown' to issue a shutdown command from
  the Rust SDK
* the Rust SDK sends a cancelation request to the Temporal server, which marks
  the activity as canceled & issues a cancelation task to the worker process
* 'Temporal.Activity.Worker.execute' receives the cancelation request and
  sends an asynchronous 'Temporal.Exception.ActivityCancelReason' exception to
  the running activity

__NOTE__: It is /very important/ that the Temporal server is notified of task
cancelation before this function completes; if we were to exit before the
server is informed that a task has been canceled, it won't "notice" that the
activity has ended until the next hearbeat interval.

Both blocking phases below are bounded by a 'timeout'. Because 'shutdown' is
normally called from a cleanup handler -- and @unliftio@'s and
@safe-exceptions@' 'bracket' run cleanup under 'uninterruptibleMask' -- those
timeouts are run on a dedicated unmasked thread rather than inline. Running them
inline would inherit the caller's masking state, leaving the timeouts unable to
deliver their exception. The worker thread reports its result through an 'MVar',
allowing the timeouts to remain effective even when the caller is masked.
-}
shutdown :: (MonadUnliftIO m) => Temporal.Worker.Worker actEnv -> m ()
shutdown worker@Temporal.Worker.Worker {workerShutdownState} = UnliftIO.withRunInIO $ \runInIO -> UnliftIO.mask $ \restore -> do
  (shouldStart, resultVar) <-
    UnliftIO.modifyMVar workerShutdownState $ \case
      WorkerShutdownNotStarted -> do
        resultVar <- UnliftIO.newEmptyMVar
        pure (WorkerShutdownStarted resultVar, (True, resultVar))
      shutdownState@(WorkerShutdownStarted resultVar) ->
        pure (shutdownState, (False, resultVar))

  when shouldStart $ do
    -- Carry the first caller's trace context to the single shutdown thread;
    -- thread-local context does not follow 'forkIO'.
    callerContext <- OTContext.getContext
    spawned <-
      UnliftIO.try @IO @SomeException $
        forkIOWithUnmask $ \unmask ->
          UnliftIO.putMVar resultVar
            =<< UnliftIO.try @IO @SomeException do
              -- Distinguish the synchronous shutdown call from the
              -- interruptible waits in 'shutdownBounded'.
              Control.Concurrent.myThreadId >>= \tid -> GHC.Conc.Sync.labelThread tid "temporal/worker/shutdownBounded"
              unmask (OTContext.attachContext callerContext *> runInIO (shutdownBounded worker))
    case spawned of
      Left err -> UnliftIO.putMVar resultVar (Left err)
      Right _ -> pure ()

  restore (UnliftIO.readMVar resultVar) >>= either UnliftIO.throwIO pure


-- | The bounded shutdown sequence. Must be run unmasked; see 'shutdown'.
shutdownBounded :: (MonadUnliftIO m) => Temporal.Worker.Worker actEnv -> m ()
shutdownBounded worker@Temporal.Worker.Worker {workerCore, workerTracer} = OT.inSpan workerTracer "shutdown" defaultSpanArguments $ UnliftIO.mask $ \restore -> do
  OT.inSpan workerTracer "initiateShutdown" defaultSpanArguments $ liftIO $ Core.initiateShutdown workerCore

  -- Add 1s of buffer time to the graceful shutdown timeout so the Rust SDK
  -- has time to return when/if it hits the graceful shutdown period; without
  -- the buffer, our timeout fires a bit earlier than Rust's does and we can
  -- end up killing the process too soon.
  let gracefulShutdownMicros = 1_000_000 + 1000 * fromIntegral (Core.gracefulShutdownPeriodMillis $ Core.getWorkerConfig workerCore)

  _ <-
    OT.inSpan workerTracer "waitWorker" defaultSpanArguments . restore $
      timeout gracefulShutdownMicros (waitWorker worker)

  -- Throw a 'RuntimeError' exception if we don't finalize after a few seconds;
  -- this should never happen in practice but it's worth keeping to ensure
  -- that 'shutdown' finishes promptly if it's used as a finalizer.
  let finalizeTimeoutMicros = 5_000_000
  finalized <-
    OT.inSpan workerTracer "finalizeShutdown" defaultSpanArguments . restore $
      timeout finalizeTimeoutMicros (liftIO $ Core.finalizeShutdown workerCore)
  case finalized of
    Nothing -> throwIO $ RuntimeError "Worker.shutdown: finalizeShutdown timed out"
    Just (Left err) -> throwIO err
    Just (Right ()) -> pure ()


-- | Subscribe to evictions from the worker. This is not generally needed, but can be useful for debugging.
subscribeToEvictions :: MonadIO m => Temporal.Worker.Worker actEnv -> m (TChan Workflow.EvictionWithRunID)
subscribeToEvictions worker = liftIO $ atomically $ dupTChan worker.workerEvictionEmitter


-- | Subscribe to evictions from the worker. This is not generally needed, but can be useful for debugging.
subscribeToEvictionsSTM :: Temporal.Worker.Worker actEnv -> STM (TChan Workflow.EvictionWithRunID)
subscribeToEvictionsSTM worker = dupTChan worker.workerEvictionEmitter


evictionMessage :: Workflow.EvictionWithRunID -> Text
evictionMessage Workflow.EvictionWithRunID {eviction} = eviction ^. Activation.message


evictionWasNonRecoverable :: Workflow.EvictionWithRunID -> Bool
evictionWasNonRecoverable Workflow.EvictionWithRunID {eviction} = case eviction ^. Activation.reason of
  RemoveFromCache'FATAL -> True
  RemoveFromCache'NONDETERMINISM -> True
  _ -> False


{- | Replace the environment for activities run within a Worker. This is generally not needed, but can be useful for reusing
a Worker under test.
-}
replaceEnvironment :: MonadIO m => Temporal.Worker.Worker actEnv -> actEnv -> m ()
replaceEnvironment Temporal.Worker.Worker {..} env = do
  case workerType of
    Core.SReal -> do
      liftIO $ writeIORef workerActivityWorker.activityEnv env
    Core.SReplay -> pure ()
