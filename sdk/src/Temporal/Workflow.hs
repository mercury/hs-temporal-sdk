{-# HLINT ignore "Use ?~" #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilyDependencies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ViewPatterns #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use replicateM" #-}

{- |

This module provides the core functionality for defining functions that can be
executed as Temporal workflows.

In day-to-day conversations, the term Workflow frequently denotes either a Workflow Type, a Workflow Definition, or a Workflow Execution.

= What is a Workflow Definition?

A Workflow Definition is the code that defines the constraints of a Workflow Execution.

A Workflow Definition is often also referred to as a Workflow Function. In Temporal's documentation, a Workflow Definition refers to the source for the instance of a Workflow Execution, while a Workflow Function refers to the source for the instance of a Workflow Function Execution.

A Workflow Execution effectively executes once to completion, while a Workflow Function Execution occurs many times during the life of a Workflow Execution.

= Deterministic constraints

A critical aspect of developing Workflow Definitions is ensuring they exhibit certain deterministic traits – that is, making sure that the same Commands are emitted in the same sequence, whenever a corresponding Workflow Function Execution (instance of the Function Definition) is re-executed.

The execution semantics of a Workflow Execution include the re-execution of a Workflow Function, which is called a Replay. The use of Workflow APIs in the function is what generates Commands. Commands tell the Cluster which Events to create and add to the Workflow Execution's Event History. When a Workflow Function executes, the Commands that are emitted are compared with the existing Event History. If a corresponding Event already exists within the Event History that maps to the generation of that Command in the same sequence, and some specific metadata of that Command matches with some specific metadata of the Event, then the Function Execution progresses.

For example, using an SDK's "Execute Activity" API generates the ScheduleActivityTask Command. When this API is called upon re-execution, that Command is compared with the Event that is in the same location within the sequence. The Event in the sequence must be an ActivityTaskScheduled Event, where the Activity name is the same as what is in the Command.

If a generated Command doesn't match what it needs to in the existing Event History, then the Workflow Execution returns a non-deterministic error.

The following are the two reasons why a Command might be generated out of sequence or the wrong Command might be generated altogether:

- Code changes are made to a Workflow Definition that is in use by a running Workflow Execution.
- There is intrinsic non-deterministic logic (such as inline random branching).

= Code changes can cause non-deterministic behavior

The Workflow Definition can change in very limited ways once there is a Workflow Execution depending on it. To alleviate non-deterministic issues that arise from code changes, we recommend using Workflow Versioning.

For example, let's say we have a Workflow Definition that defines the following sequence:

1. Start and wait on a Timer/sleep.
2. Spawn and wait on an Activity Execution.
3. Complete.

We start a Worker and spawn a Workflow Execution that uses that Workflow Definition. The Worker would emit the StartTimer Command and the Workflow Execution would become suspended.

Before the Timer is up, we change the Workflow Definition to the following sequence:

1. Spawn and wait on an Activity Execution.
2. Start and wait on a Timer/sleep.
3. Complete.

When the Timer fires, the next Workflow Task will cause the Workflow Function to re-execute. The first Command the Worker sees would be ScheduleActivityTask Command, which wouldn't match up to the expected TimerStarted Event.

The Workflow Execution would fail and return a non-deterministic error.

The following are examples of minor changes that would not result in non-determinism errors when re-executing a History which already contain the Events:

- Changing the duration of a Timer
- Changing the arguments to:

    * The Activity Options in a call to spawn an Activity Execution (local or nonlocal).
    * The Child Workflow Options in a call to spawn a Child Workflow Execution.
    * Call to Signal an External Workflow Execution.

- Adding a Signal Handler for a Signal Type that has not been sent to this Workflow Execution.

= Workflow Versioning

Note: not yet implemented

The Workflow Versioning feature enables the creation of logical branching inside a Workflow Definition based on a developer specified version identifier. This feature is useful for Workflow Definition logic needs to be updated, but there are running Workflow Executions that currently depends on it. It is important to note that a practical way to handle different versions of Workflow Definitions, without using the versioning API, is to run the different versions on separate Task Queues.

= Handling unreliable Worker Processes

You do not handle Worker Process failure or restarts in a Workflow Definition.

Workflow Function Executions are completely oblivious to the Worker Process in terms of failures or downtime. The Temporal Platform ensures that the state of a Workflow Execution is recovered and progress resumes if there is an outage of either Worker Processes or the Temporal Cluster itself. The only reason a Workflow Execution might fail is due to the code throwing an error or exception, not because of underlying infrastructure outages.
-}
module Temporal.Workflow (
  Workflow,
  WorkflowDefinition (..),
  KnownWorkflow (..),
  ProvidedWorkflow (..),
  provideWorkflow,
  Task,
  StartToClose (..),
  ScheduleToClose (..),
  These (..),

  -- * Workflow monad operations
  -- $workflowBasics

  -- ** Activity operations
  -- $activityBasics
  ActivityRef (..),
  KnownActivity (..),
  StartActivityOptions (..), -- TODO fields conflict
  ActivityCancellationType (..),
  ActivityTimeoutPolicy (..),
  StartActivityTimeoutOption (..),
  defaultStartActivityOptions,
  startActivity,
  executeActivity,
  StartLocalActivityOptions (..),
  defaultStartLocalActivityOptions,
  startLocalActivity,
  executeLocalActivity,

  -- ** Child workflow operations
  -- $childWorkflow
  StartChildWorkflowOptions (..),
  defaultChildWorkflowOptions,
  WorkflowRef (..),
  startChildWorkflow,
  startChildWorkflowFromPayloads,
  executeChildWorkflow,
  ChildWorkflowHandle,
  Wait (..),
  Cancel (..),
  WorkflowHandle (..),
  waitChildWorkflowResult,
  waitChildWorkflowStart,
  cancelChildWorkflowExecution,
  ExternalWorkflowHandle,
  getExternalWorkflowHandle,
  Info (..),
  RootExecution (..),
  RetryPolicy (..),
  defaultRetryPolicy,
  ParentInfo (..),

  -- * Workflow metadata

  --
  info,
  getMemoValues,
  lookupMemoValue,
  upsertSearchAttributes,
  upsertMemo,

  -- * Versioning workflows
  -- $versioning
  patched,
  deprecatePatch,

  -- * Concurrency within Workflows
  Temporal.Workflow.race,
  Temporal.Workflow.race_,
  Temporal.Workflow.concurrently,
  Temporal.Workflow.concurrently_,
  Temporal.Workflow.mapConcurrently,
  Temporal.Workflow.mapConcurrently_,
  Temporal.Workflow.replicateConcurrently,
  Temporal.Workflow.replicateConcurrently_,
  Temporal.Workflow.forConcurrently,
  Temporal.Workflow.forConcurrently_,
  traverseConcurrently,
  traverseConcurrently_,
  sequenceConcurrently,
  sequenceConcurrently_,
  ConcurrentWorkflow (..),
  independently,
  biselect,
  biselectOpt,
  yield,

  -- * Interacting with running Workflows

  -- ** Queries
  -- $queries
  QueryRef (..),
  Query,
  KnownQuery (..),
  setQueryHandler,
  setDefaultQueryHandler,

  -- ** Signals
  -- $signals
  SignalRef (..),
  KnownSignal (..),
  setSignalHandler,
  ValidSignalHandler,
  Condition,
  waitCondition,

  -- ** Updates
  -- $updates
  setUpdateHandler,
  provideUpdate,
  ProvidedUpdate (..),
  KnownUpdate (..),

  -- * Other utilities
  unsafeAsyncEffectSink,

  -- * State vars
  StateVar,
  newStateVar,
  MonadReadStateVar (..),
  MonadWriteStateVar (..),

  -- * Time and timers
  now,
  time,
  sleep,
  sleepUntilSystemTime,
  sleepUntilUTCTime,
  Timer,
  createTimer,
  scheduledTime,

  -- * Workflow cancellation
  isCancelRequested,
  waitCancellation,

  -- * Random value generation
  -- $randomness
  randomGen,
  uuid4,
  uuid7,
  WorkflowGenM,

  -- * Nexus operations
  -- $nexus
  NexusClient (..),
  makeNexusClient,
  NexusEndpointName (..),
  NexusServiceName (..),
  NexusOperationName (..),
  ScheduleNexusOperationOptions (..),
  defaultScheduleNexusOperationOptions,
  startNexusOperation,
  executeNexusOperation,

  -- * Continue as new
  ContinueAsNewOptions (..), -- TODO, fields conflict
  defaultContinueAsNewOptions,
  Temporal.Workflow.continueAsNew,

  -- * Type definitions
  GatherArgs,
  ActivityId (..),
  WorkflowId (..),
  Namespace (..),
  TaskQueue (..),
  PatchId (..),
  RunId (..),
  ParentClosePolicy (..),
  ChildWorkflowCancellationType (..),
  WorkflowIdReusePolicy (..),
  WorkflowType (..),
  RequireCallStack,
  TimeoutOptions (..),
  defaultTimeoutOptions,

  -- * Commonly used
  (:->:),
) where

import Control.Applicative (Alternative (..))
import Control.Concurrent (forkIO)
import Control.Exception.Annotated (throwWithCallStack)
import Control.Monad
import Control.Monad.Catch
import Control.Monad.Logger
import Control.Monad.Reader
import Data.Aeson (Value)
import Data.Atomics (atomicModifyIORefCAS)
import qualified Data.Bits as Bits
import qualified Data.ByteString.Short as SBS
import Data.Coerce
import Data.Foldable (Foldable (..), for_, traverse_)
import qualified Data.HashMap.Strict as HashMap
import Data.Int (Int64)
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map
import Data.Maybe
import Data.Monoid (Endo (..))
import Data.ProtoLens
import Data.Proxy
import qualified Data.Set as Set
import Data.Text (Text)
import qualified Data.Text as Text
import Data.These (These (..))
import Data.Time.Clock (UTCTime)
import Data.Time.Clock.System (SystemTime (..), systemToUTCTime, utcToSystemTime)
import Data.Time.Format
import Data.UUID (UUID)
import qualified Data.UUID as UUID
import Data.UUID.Types.Internal (buildFromBytes)
import Data.Vector (Vector)
import qualified Data.Vector as V
import Data.Word (Word32, Word64, Word8)
import GHC.Stack
import Lens.Family2
import qualified Proto.Google.Protobuf.Timestamp as Timestamp
import qualified Proto.Temporal.Api.Common.V1.Message_Fields as Payloads
import qualified Proto.Temporal.Api.Failure.V1.Message_Fields as Failure
import qualified Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult as ActivityResult
import qualified Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields as ActivityResult
import qualified Proto.Temporal.Sdk.Core.Common.Common_Fields as Common
import qualified Proto.Temporal.Sdk.Core.Nexus.Nexus as NexusProto
import qualified Proto.Temporal.Sdk.Core.Nexus.Nexus_Fields as NexusFields
import qualified Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields as Activation
import qualified Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands as Command
import qualified Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields as Command
import RequireCallStack
import System.Random.Stateful
import Temporal.Activity.Definition (ActivityRef (..), KnownActivity (..))
import Temporal.Common
import qualified Temporal.Common.Logging as Logging
import Temporal.Common.TimeoutType
import Temporal.Duration (Duration (..), diffSystemTime, durationFromProto, durationToProto, nanoseconds, seconds)
import Temporal.Exception
import Temporal.Payload
import Temporal.SearchAttributes
import Temporal.SearchAttributes.Internal
import Temporal.Workflow.Definition
import Temporal.Workflow.Internal.Monad
import Temporal.Workflow.Query
import Temporal.Workflow.Signal
import Temporal.Workflow.Types
import Temporal.Workflow.Unsafe.Handle
import Temporal.Workflow.Update
import Temporal.Workflow.WorkflowInstance
import Temporal.WorkflowInstance
import UnliftIO


-- class MonadWorkflow m where
-- startChildWorkflowFromPayloads :: forall args result. RequireCallStack => KnownWorkflow args result -> StartChildWorkflowOptions -> [IO Payload] -> m (ChildWorkflowHandle result)
-- startActivityFromPayloads :: forall args result. RequireCallStack => KnownActivity args result -> StartActivityOptions -> [IO Payload] -> m (Task result)
-- askInfo :: m Info
-- getMemoValues :: m (Map Text Payload)
-- upsertSearchAttributes :: RequireCallStack => Map Text SearchAttributeType -> m ()
-- applyPatch :: RequireCallStack => PatchId -> Bool -> m Bool
-- randomGen :: m StdGen
-- uuid4 :: m UUID
-- setQueryHandler
-- setSignalHandler
-- time
-- createTimer
-- continueAsNew
-- getExternalWorkflowHandle
-- waitCondition
-- unsafeEffectSink

newtype WorkflowInternal a = WorkflowInternal (ReaderT ContinuationEnv InstanceM a)
  deriving newtype (Functor, Applicative, Monad, MonadIO)


-- | We need a specialized version of 'withArgs' since we aren't supposed to introduce arbitrary effects in the 'Workflow' monad.
withWorkflowArgs :: forall args result codec. (VarArgs args, AllArgs (Codec codec) args) => codec -> (V.Vector Payload -> Workflow result) -> args :->: Workflow result
withWorkflowArgs c f =
  mapResult
    @args
    @(WorkflowInternal (Result result))
    @(Workflow result)
    safely
    $ withArgs @args @(WorkflowInternal (Result result)) c
    $ \args -> do
      args' <- liftIO $ sequence args
      unsafely $ f args'
  where
    unsafely :: Workflow a -> WorkflowInternal (Result a)
    unsafely = coerce
    safely :: WorkflowInternal (Result a) -> Workflow a
    safely = coerce


{- $activityBasics

An Activity is an IO-based function that executes a single, well-defined action (either short or long running),
such as calling another service, transcoding a media file, or sending an email message.
Activity code can be non-deterministic.

We recommend that it be idempotent.

Workflow code orchestrates the execution of Activities, persisting the results.
If an Activity Function Execution fails, any future execution starts from initial state (except Heartbeats).

Activity Functions are executed by Worker Processes. When the Activity Function returns,
the Worker sends the results back to the Temporal Cluster as part of the ActivityTaskCompleted Event.
The Event is added to the Workflow Execution's Event History.
-}


startActivityFromPayloads
  :: forall args result
   . RequireCallStack
  => KnownActivity args result
  -> StartActivityOptions
  -> Vector Payload
  -> Workflow (Task result)
startActivityFromPayloads (KnownActivity codec name) opts typedPayloads = ilift $ do
  runInIO <- askRunInIO
  updateCallStack
  inst <- ask
  let intercept :: ActivityInput -> (ActivityInput -> IO (Task Payload)) -> IO (Task Payload)
      intercept = inst.outboundInterceptor.scheduleActivity
  s@(Sequence actSeq) <- nextActivitySequence
  rawTask <- liftIO $ intercept (ActivityInput name typedPayloads opts s) $ \activityInput -> runInIO $ do
    resultSlot <- newTrackedIVar
    atomically $ modifyTVar' inst.workflowSequenceMaps $ \seqMaps ->
      seqMaps {activities = HashMap.insert s resultSlot (activities seqMaps)}

    i <- readIORef inst.workflowInstanceInfo
    args <- processorEncodePayloads inst.payloadProcessor activityInput.args
    let actId = maybe (Text.pack $ show actSeq) rawActivityId (activityInput.options.activityId)
        scheduleActivity =
          defMessage
            & Command.seq .~ actSeq
            & Command.activityId .~ actId
            & Command.activityType .~ activityInput.activityType
            & Command.taskQueue .~ rawTaskQueue (fromMaybe i.taskQueue activityInput.options.taskQueue)
            & Command.headers .~ fmap convertToProtoPayload activityInput.options.headers
            & Command.vec'arguments .~ fmap convertToProtoPayload args
            & Command.maybe'retryPolicy .~ fmap retryPolicyToProto activityInput.options.retryPolicy
            & Command.cancellationType .~ activityCancellationTypeToProto activityInput.options.cancellationType
            & Command.maybe'scheduleToStartTimeout .~ fmap durationToProto activityInput.options.scheduleToStartTimeout
            & Command.maybe'heartbeatTimeout .~ fmap durationToProto activityInput.options.heartbeatTimeout
            & \msg ->
              case activityInput.options.timeout of
                StartToCloseTimeout t -> msg & Command.startToCloseTimeout .~ durationToProto t
                ScheduleToCloseTimeout t -> msg & Command.scheduleToCloseTimeout .~ durationToProto t
                StartToCloseAndScheduleToCloseTimeout stc stc' ->
                  msg
                    & Command.startToCloseTimeout .~ durationToProto stc
                    & Command.scheduleToCloseTimeout .~ durationToProto stc'
                & Command.doNotEagerlyExecute .~ activityInput.options.disableEagerExecution

    let cmd = defMessage & Command.scheduleActivity .~ scheduleActivity
    addCommand cmd
    pure $
      Task
        { waitAction = do
            res <- getIVar resultSlot
            Logging.logDebug ("Activity result: " <> Text.pack (show res))
            Workflow $ \_ -> case res ^. Activation.result . ActivityResult.maybe'status of
              Nothing -> error "Activity result missing status"
              Just (ActivityResult.ActivityResolution'Completed success) -> do
                decoded <- liftIO $ payloadProcessorDecode inst.payloadProcessor $ convertFromProtoPayload (success ^. ActivityResult.result)
                pure $ case decoded of
                  Left err -> Throw $ toException $ ValueError err
                  Right val -> Done val
              Just (ActivityResult.ActivityResolution'Failed failure_) ->
                let failure = failure_ ^. ActivityResult.failure
                in pure $
                    Throw $
                      toException $
                        ActivityFailure
                          { message = failure ^. Failure.message
                          , activityType = ActivityType activityInput.activityType
                          , activityId = ActivityId actId
                          , retryState = retryStateFromProto $ failure ^. Failure.activityFailureInfo . Failure.retryState
                          , identity = failure ^. Failure.activityFailureInfo . Failure.identity
                          , cause =
                              let cause_ = failure ^. Failure.cause
                              in ApplicationFailure
                                  { type' = cause_ ^. Failure.applicationFailureInfo . Failure.type'
                                  , message = cause_ ^. Failure.message
                                  , nonRetryable = cause_ ^. Failure.applicationFailureInfo . Failure.nonRetryable
                                  , details = cause_ ^. Failure.applicationFailureInfo . Failure.details . Payloads.payloads . to (fmap convertFromProtoPayload)
                                  , stack = cause_ ^. Failure.stackTrace
                                  , nextRetryDelay = fmap durationFromProto (cause_ ^. Failure.applicationFailureInfo . Failure.maybe'nextRetryDelay)
                                  }
                          , scheduledEventId = failure ^. Failure.activityFailureInfo . Failure.scheduledEventId
                          , startedEventId = failure ^. Failure.activityFailureInfo . Failure.startedEventId
                          , original = failure ^. Failure.activityFailureInfo
                          , stack = Text.pack $ Temporal.Exception.prettyCallStack callStack
                          }
              Just (ActivityResult.ActivityResolution'Cancelled details) -> pure $ Throw $ toException $ ActivityCancelled (details ^. ActivityResult.failure)
              Just (ActivityResult.ActivityResolution'Backoff _doBackoff) -> error "not implemented"
        , cancelAction = do
            let cancelCmd =
                  defMessage
                    & Command.requestCancelActivity
                      .~ ( defMessage
                            & Command.seq .~ actSeq
                         )
            ilift $ addCommand cancelCmd
        }
  pure
    ( rawTask
        `bindTask` ( \payload -> Workflow $ \_ -> do
                      result <- liftIO $ decode codec payload
                      case result of
                        Left err -> pure $ Throw $ toException $ ValueError err
                        Right val -> pure $ Done val
                   )
    )


startActivity
  :: forall activity
   . (RequireCallStack, ActivityRef activity)
  => activity
  -> StartActivityOptions
  -> (ActivityArgs activity :->: Workflow (Task (ActivityResult activity)))
startActivity (activityRef -> k@(KnownActivity codec _name)) opts =
  withWorkflowArgs @(ActivityArgs activity) @(Task (ActivityResult activity)) codec (startActivityFromPayloads k opts)


executeActivity
  :: forall activity
   . (RequireCallStack, ActivityRef activity)
  => activity
  -> StartActivityOptions
  -> (ActivityArgs activity :->: Workflow (ActivityResult activity))
executeActivity (activityRef -> k@(KnownActivity codec _name)) opts = withWorkflowArgs @(ActivityArgs activity) @(ActivityResult activity) codec $ \typedPayloads -> do
  -- gatherArgs (Proxy @(ActivityArgs activity)) codec id $ \typedPayloads -> do
  actHandle <- startActivityFromPayloads k opts typedPayloads
  Temporal.Workflow.Unsafe.Handle.wait actHandle


{- | Schedule a Nexus operation from a workflow. Returns a 'Task' that completes
with a raw 'Payload' when the operation finishes (sync or async).

Use 'makeNexusClient' to create a 'NexusClient' bound to an endpoint and service,
then pass an 'NexusOperationName' identifying the operation within that service.
-}
startNexusOperation
  :: RequireCallStack
  => NexusClient
  -> NexusOperationName
  -> ScheduleNexusOperationOptions
  -> Payload
  -> Workflow (Task Payload)
startNexusOperation client operationName opts input = ilift $ do
  updateCallStack
  inst <- ask
  s@(Sequence nexusSeq) <- nextNexusOperationSequence
  startVar <- newIVar
  resultVar <- newIVar
  atomically $ modifyTVar' inst.workflowSequenceMaps $ \seqMaps ->
    seqMaps {nexusOperations = HashMap.insert s (NexusOperationHandles startVar resultVar) (nexusOperations seqMaps)}

  encodedInput <- liftIO $ payloadProcessorEncode inst.payloadProcessor input
  let scheduleCmd =
        defMessage
          & Command.seq .~ nexusSeq
          & Command.endpoint .~ rawNexusEndpointName client.nexusEndpoint
          & Command.service .~ rawNexusServiceName client.nexusService
          & Command.operation .~ rawNexusOperationName operationName
          & Command.maybe'input .~ Just (convertToProtoPayload encodedInput)
          & Command.maybe'scheduleToCloseTimeout .~ fmap durationToProto opts.scheduleToCloseTimeout
          & Command.nexusHeader .~ opts.nexusHeaders
          & Command.cancellationType .~ nexusOperationCancellationTypeToProto opts.cancellationType
      cmd = defMessage & Command.scheduleNexusOperation .~ scheduleCmd
  addCommand cmd
  pure $
    Task
      { waitAction = do
          _ <- getIVar startVar
          result <- getIVar resultVar
          Workflow $ \_ -> case result ^. NexusFields.maybe'status of
            Nothing -> pure $ Throw $ toException $ RuntimeError "Nexus operation result missing status"
            Just (NexusProto.NexusOperationResult'Completed payload) -> do
              decoded <- liftIO $ payloadProcessorDecode inst.payloadProcessor (convertFromProtoPayload payload)
              pure $ case decoded of
                Left err -> Throw $ toException $ ValueError err
                Right val -> Done val
            Just (NexusProto.NexusOperationResult'Failed failure) ->
              pure $ Throw $ toException $ NexusOperationFailed (failure ^. Failure.message) Nothing
            Just (NexusProto.NexusOperationResult'Cancelled _) ->
              pure $ Throw $ toException NexusOperationCancelled
            Just (NexusProto.NexusOperationResult'TimedOut _) ->
              pure $ Throw $ toException NexusOperationTimedOut
      , cancelAction = do
          let cancelCmd =
                defMessage
                  & Command.requestCancelNexusOperation
                    .~ (defMessage & Command.seq .~ nexusSeq)
          ilift $ addCommand cancelCmd
      }


-- | Execute a Nexus operation and wait for the result.
executeNexusOperation
  :: RequireCallStack
  => NexusClient
  -> NexusOperationName
  -> ScheduleNexusOperationOptions
  -> Payload
  -> Workflow Payload
executeNexusOperation client operationName opts input = do
  task <- startNexusOperation client operationName opts input
  Temporal.Workflow.Unsafe.Handle.wait task


{- | A client side handle to a single Workflow instance. It can be used to signal a workflow execution.

Given the following Workflow definition:
-}
class WorkflowHandle h where
  -- | Signal a running Workflow.
  signal :: (SignalRef ref, RequireCallStack) => h result -> ref -> (SignalArgs ref :->: Workflow (Task ()))


instance WorkflowHandle ChildWorkflowHandle where
  signal h =
    signalWorkflow h (Command.childWorkflowId .~ rawWorkflowId h.childWorkflowId)


instance WorkflowHandle ExternalWorkflowHandle where
  signal h =
    signalWorkflow h (Command.workflowExecution .~ converted)
    where
      converted =
        defMessage
          & Common.workflowId .~ rawWorkflowId h.externalWorkflowWorkflowId
          & Common.runId .~ maybe "" rawRunId h.externalWorkflowRunId


-- TODO
-- & Common.namespace .~ rawNamespace h.externalNamespace

-- | A Workflow can send a Signal to another Workflow, in which case it's called an External Signal.
signalWorkflow
  :: forall result h ref
   . (RequireCallStack, SignalRef ref)
  => h result
  -> (Command.SignalExternalWorkflowExecution -> Command.SignalExternalWorkflowExecution)
  -> ref
  -> (SignalArgs ref :->: Workflow (Task ()))
signalWorkflow _ f (signalRef -> KnownSignal signalName signalCodec) = withWorkflowArgs @(SignalArgs ref) @(Task ()) signalCodec $ \ps -> do
  ilift $ do
    updateCallStack
    resVar <- newTrackedIVar
    inst <- ask
    s <- nextExternalSignalSequence
    args <- processorEncodePayloads inst.payloadProcessor ps
    let cmd =
          defMessage
            & Command.signalExternalWorkflowExecution
              .~ f
                ( defMessage
                    & Command.seq .~ rawSequence s
                    & Command.signalName .~ signalName
                    & Command.vec'args .~ fmap convertToProtoPayload args
                    -- TODO
                    -- & Command.headers .~ _
                )
    addCommand cmd
    atomically $ modifyTVar' inst.workflowSequenceMaps $ \seqMaps ->
      seqMaps {externalSignals = HashMap.insert s resVar seqMaps.externalSignals}
    pure $
      Task
        { waitAction = do
            res <- getIVar resVar
            case res ^. Activation.maybe'failure of
              Nothing -> pure ()
              Just failureInfo -> throw $ SignalExternalWorkflowFailed failureInfo
        , cancelAction = do
            let cancelCmd =
                  defMessage
                    & Command.cancelSignalWorkflow
                      .~ ( defMessage
                            & Command.seq .~ rawSequence s
                         )
            ilift $ addCommand cancelCmd
        }


startChildWorkflowFromPayloads
  :: forall wf
   . (RequireCallStack, WorkflowRef wf)
  => wf
  -> StartChildWorkflowOptions
  -> Vector Payload
  -> Workflow (ChildWorkflowHandle (WorkflowResult wf))
startChildWorkflowFromPayloads (workflowRef -> k@(KnownWorkflow codec _)) opts ps = do
  wfId <- case opts.workflowId of
    Nothing -> WorkflowId . UUID.toText <$> uuid4
    Just wfId -> pure wfId
  ilift $ go ps wfId
  where
    go :: Vector Payload -> WorkflowId -> InstanceM (ChildWorkflowHandle (WorkflowResult wf))
    go typedPayloads wfId = do
      updateCallStack
      sendChildWorkflowCommand typedPayloads wfId
    sendChildWorkflowCommand typedPayloads wfId = do
      inst <- ask
      -- TODO these need to pass through the interceptor
      runInIO <- askRunInIO
      wfHandle <- liftIO $ inst.outboundInterceptor.startChildWorkflowExecution (knownWorkflowName k) opts $ \wfName opts' -> runInIO $ do
        args <- processorEncodePayloads inst.payloadProcessor typedPayloads
        let convertedPayloads = fmap convertToProtoPayload args
        memo <- processorEncodePayloads inst.payloadProcessor opts'.initialMemo

        s@(Sequence wfSeq) <- nextChildWorkflowSequence
        startSlot <- newTrackedIVar
        resultSlot <- newTrackedIVar
        firstExecutionRunId <- newTrackedIVar
        i <- readIORef inst.workflowInstanceInfo
        searchAttrs <- liftIO $ searchAttributesToProto opts'.searchAttributes
        let childWorkflowOptions =
              defMessage
                & Command.seq .~ wfSeq
                & Command.namespace .~ rawNamespace i.namespace
                & Command.workflowId .~ rawWorkflowId wfId
                & Command.workflowType .~ wfName
                & Command.taskQueue .~ rawTaskQueue (fromMaybe i.taskQueue opts'.taskQueue)
                & Command.vec'input .~ convertedPayloads
                & Command.maybe'workflowExecutionTimeout .~ fmap durationToProto opts'.timeoutOptions.executionTimeout
                & Command.maybe'workflowRunTimeout .~ fmap durationToProto opts'.timeoutOptions.runTimeout
                & Command.maybe'workflowTaskTimeout .~ fmap durationToProto opts'.timeoutOptions.taskTimeout
                & Command.parentClosePolicy .~ parentClosePolicyToProto opts'.parentClosePolicy
                & Command.workflowIdReusePolicy .~ workflowIdReusePolicyToProto opts'.workflowIdReusePolicy
                & Command.maybe'retryPolicy .~ fmap retryPolicyToProto opts'.retryPolicy
                & Command.cronSchedule .~ fromMaybe "" opts'.cronSchedule
                & Command.headers .~ fmap convertToProtoPayload opts'.headers
                & Command.memo .~ fmap convertToProtoPayload memo
                & Command.searchAttributes .~ searchAttrs
                & Command.cancellationType .~ childWorkflowCancellationTypeToProto opts'.cancellationType

            cmd =
              defMessage
                & Command.startChildWorkflowExecution .~ childWorkflowOptions

            wfHandle =
              ChildWorkflowHandle
                { childWorkflowSequence = s
                , startHandle = startSlot
                , resultHandle = resultSlot
                , firstExecutionRunId = firstExecutionRunId
                , childWorkflowResultConverter = pure
                , childWorkflowId = wfId
                }

        atomically $ modifyTVar' inst.workflowSequenceMaps $ \seqMaps ->
          seqMaps {childWorkflows = HashMap.insert s (SomeChildWorkflowHandle wfHandle) seqMaps.childWorkflows}

        addCommand cmd
        pure wfHandle
      pure $
        wfHandle
          { childWorkflowResultConverter = \r -> do
              decodingResult <- decode codec =<< either (throwIO . ValueError) pure =<< payloadProcessorDecode inst.payloadProcessor r
              case decodingResult of
                Left err -> throwIO $ ValueError err
                Right val -> pure val
          }


{- $childWorkflow

A Child Workflow Execution is a Workflow Execution that is spawned from within another Workflow.

A Workflow Execution can be both a Parent and a Child Workflow Execution because any Workflow can spawn another Workflow.
-}


{- | Start a child Workflow execution

Returns a client-side handle that implements a child Workflow interface.

By default, a child will be scheduled on the same task queue as its parent.

A child Workflow handle supports awaiting completion, signaling and cancellation via the returned handle.

In order to query the child, use a WorkflowClient from an Activity.
-}
startChildWorkflow
  :: forall wf
   . (RequireCallStack, WorkflowRef wf)
  => wf
  -> StartChildWorkflowOptions
  -> (WorkflowArgs wf :->: Workflow (ChildWorkflowHandle (WorkflowResult wf)))
startChildWorkflow (workflowRef -> k@(KnownWorkflow codec _)) opts =
  withWorkflowArgs @(WorkflowArgs wf) @(ChildWorkflowHandle (WorkflowResult wf)) codec (startChildWorkflowFromPayloads k opts)


executeChildWorkflow
  :: forall wf
   . (RequireCallStack, WorkflowRef wf)
  => wf
  -> StartChildWorkflowOptions
  -> (WorkflowArgs wf :->: Workflow (WorkflowResult wf))
executeChildWorkflow (workflowRef -> k@(KnownWorkflow codec _)) opts = withWorkflowArgs @(WorkflowArgs wf) @(WorkflowResult wf) codec $ \typedPayloads -> do
  h <- startChildWorkflowFromPayloads k opts typedPayloads
  waitChildWorkflowResult h


startLocalActivityFromPayloads
  :: forall args result
   . RequireCallStack
  => KnownActivity args result
  -> StartLocalActivityOptions
  -> Vector Payload
  -> Workflow (Task result)
startLocalActivityFromPayloads (KnownActivity codec name) opts typedPayloads = do
  updateCallStackW
  originalTime <- time
  cancelledRef <- ilift $ liftIO $ newIORef False
  rawTask <- scheduleLocalActivityAttempt name opts typedPayloads 0 (timespecToTimestamp originalTime) cancelledRef
  pure
    ( rawTask
        `bindTask` ( \payload -> Workflow $ \_ -> do
                      result <- liftIO $ decode codec payload
                      case result of
                        Left err -> pure $ Throw $ toException $ ValueError err
                        Right val -> pure $ Done val
                   )
    )


{- | Schedule a single local activity attempt. Returns a Task that resolves with
the raw Payload on success. On DoBackoff, sleeps for the backoff duration and
recursively re-schedules with updated attempt/originalScheduleTime, creating
the server-side timer that core expects for long backoffs.

The @cancelledRef@ is shared across all retry attempts so that
'cancelAction' on the outermost 'Task' can signal cancellation to the
DoBackoff retry loop.
-}
scheduleLocalActivityAttempt
  :: RequireCallStack
  => Text
  -> StartLocalActivityOptions
  -> Vector Payload
  -> Word32
  -> Timestamp.Timestamp
  -> IORef Bool
  -> Workflow (Task Payload)
scheduleLocalActivityAttempt name opts typedPayloads attemptNum origSchedTime cancelledRef = ilift $ do
  runInIO <- askRunInIO
  inst <- ask
  s@(Sequence actSeq) <- nextActivitySequence
  let intercept :: LocalActivityInput -> (LocalActivityInput -> IO (Task Payload)) -> IO (Task Payload)
      intercept = inst.outboundInterceptor.scheduleLocalActivity
  liftIO $ intercept (LocalActivityInput name typedPayloads opts s) $ \localInput -> runInIO $ do
    resultSlot <- newTrackedIVar
    atomically $ modifyTVar' inst.workflowSequenceMaps $ \seqMaps ->
      seqMaps {activities = HashMap.insert s resultSlot (activities seqMaps)}
    let localOpts = localInput.localOptions
    hdrs <- processorEncodePayloads inst.payloadProcessor localOpts.headers
    args <- processorEncodePayloads inst.payloadProcessor localInput.localArgs
    let actId = maybe (Text.pack $ show actSeq) rawActivityId localOpts.activityId
        cmd =
          defMessage
            & Command.scheduleLocalActivity
              .~ ( defMessage
                    & Command.seq .~ actSeq
                    & Command.activityId .~ actId
                    & Command.activityType .~ localInput.localActivityType
                    & Command.headers .~ fmap convertToProtoPayload hdrs
                    & Command.attempt .~ attemptNum
                    & Command.originalScheduleTime .~ origSchedTime
                    & Command.vec'arguments .~ fmap convertToProtoPayload args
                    & Command.maybe'scheduleToCloseTimeout .~ (durationToProto <$> localOpts.scheduleToCloseTimeout)
                    & Command.maybe'scheduleToStartTimeout .~ (durationToProto <$> localOpts.scheduleToStartTimeout)
                    & Command.maybe'startToCloseTimeout .~ (durationToProto <$> localOpts.startToCloseTimeout)
                    & Command.maybe'retryPolicy .~ (retryPolicyToProto <$> localOpts.retryPolicy)
                    & Command.maybe'localRetryThreshold .~ (durationToProto <$> localOpts.localRetryThreshold)
                    & Command.cancellationType .~ activityCancellationTypeToProto localOpts.cancellationType
                 )
    addCommand cmd
    pure $
      Task
        { waitAction = do
            res <- getIVar resultSlot
            case res ^. Activation.result . ActivityResult.maybe'status of
              Nothing -> error "Local activity result missing status"
              Just (ActivityResult.ActivityResolution'Completed success) -> do
                res' <- ilift $ liftIO $ payloadProcessorDecode inst.payloadProcessor $ convertFromProtoPayload (success ^. ActivityResult.result)
                case res' of
                  Left err -> Temporal.Workflow.Internal.Monad.throw $ ValueError err
                  Right val -> pure val
              Just (ActivityResult.ActivityResolution'Failed failure_) ->
                let failure = failure_ ^. ActivityResult.failure
                    cause_ = failure ^. Failure.cause
                in Temporal.Workflow.Internal.Monad.throw $
                    ActivityFailure
                      { message = failure ^. Failure.message
                      , activityType = ActivityType localInput.localActivityType
                      , activityId = ActivityId actId
                      , retryState = retryStateFromProto $ failure ^. Failure.activityFailureInfo . Failure.retryState
                      , identity = failure ^. Failure.activityFailureInfo . Failure.identity
                      , cause =
                          ApplicationFailure
                            { type' = cause_ ^. Failure.applicationFailureInfo . Failure.type'
                            , message = cause_ ^. Failure.message
                            , nonRetryable = cause_ ^. Failure.applicationFailureInfo . Failure.nonRetryable
                            , details = cause_ ^. Failure.applicationFailureInfo . Failure.details . Payloads.payloads . to (fmap convertFromProtoPayload)
                            , stack = cause_ ^. Failure.stackTrace
                            , nextRetryDelay = fmap durationFromProto (cause_ ^. Failure.applicationFailureInfo . Failure.maybe'nextRetryDelay)
                            }
                      , scheduledEventId = failure ^. Failure.activityFailureInfo . Failure.scheduledEventId
                      , startedEventId = failure ^. Failure.activityFailureInfo . Failure.startedEventId
                      , original = failure ^. Failure.activityFailureInfo
                      , stack = Text.pack $ Temporal.Exception.prettyCallStack callStack
                      }
              Just (ActivityResult.ActivityResolution'Cancelled details) ->
                Temporal.Workflow.Internal.Monad.throw $ ActivityCancelled (details ^. ActivityResult.failure)
              Just (ActivityResult.ActivityResolution'Backoff doBackoff) -> do
                cancelled <- ilift $ liftIO $ readIORef cancelledRef
                if cancelled
                  then Temporal.Workflow.Internal.Monad.throw $ ActivityCancelled defMessage
                  else do
                    let dur = durationFromProto (doBackoff ^. ActivityResult.backoffDuration)
                        newOrigTime = doBackoff ^. ActivityResult.originalScheduleTime
                        newAttempt = doBackoff ^. ActivityResult.attempt
                    sleep dur
                    retryTask <- scheduleLocalActivityAttempt name opts typedPayloads newAttempt newOrigTime cancelledRef
                    Temporal.Workflow.Unsafe.Handle.wait retryTask
        , cancelAction = do
            ilift $ liftIO $ writeIORef cancelledRef True
            let cancelCmd =
                  defMessage
                    & Command.requestCancelLocalActivity
                      .~ ( defMessage
                            & Command.seq .~ actSeq
                         )
            ilift $ addCommand cancelCmd
        }


startLocalActivity
  :: forall act
   . (RequireCallStack, ActivityRef act)
  => act
  -> StartLocalActivityOptions
  -> (ActivityArgs act :->: Workflow (Task (ActivityResult act)))
startLocalActivity (activityRef -> k@(KnownActivity codec _name)) opts =
  withWorkflowArgs @(ActivityArgs act) @(Task (ActivityResult act)) codec (startLocalActivityFromPayloads k opts)


executeLocalActivity
  :: forall act
   . (RequireCallStack, ActivityRef act)
  => act
  -> StartLocalActivityOptions
  -> (ActivityArgs act :->: Workflow (ActivityResult act))
executeLocalActivity (activityRef -> k@(KnownActivity codec _name)) opts = withWorkflowArgs @(ActivityArgs act) @(ActivityResult act) codec $ \typedPayloads -> do
  actHandle <- startLocalActivityFromPayloads k opts typedPayloads
  Temporal.Workflow.Unsafe.Handle.wait actHandle


{- $metadata

Temporal provides a number of ways to access metadata about the current Workflow execution.

Some are useful for debugging (like 'memo', and 'upsertSearchAttributes'), and some are useful for
making decisions about how to proceed (like using 'info' to decide whether to continue-as-new).
-}


{- | We recommend calling 'info' whenever accessing 'Info' fields. Some 'Info' fields change during the lifetime of an Execution—
like historyLength and searchAttributes— and some may be changeable in the future— like taskQueue.
-}
info :: Workflow Info
info = askInstance >>= (\m -> Workflow $ \_ -> Done <$> m) . readIORef . workflowInstanceInfo


-- (ask >>= readIORef) workflowInstanceInfo <$> askInstance

-- | Current workflow's raw memo values.
getMemoValues :: Workflow (Map Text Payload)
getMemoValues = (.rawMemo) <$> info


-- | Lookup a memo value by key.
lookupMemoValue :: Text -> Workflow (Maybe Payload)
lookupMemoValue k = Map.lookup k <$> getMemoValues


{- | Updates this Workflow's Search Attributes by merging the provided searchAttributes with the existing Search Attributes

Using this function will overwrite any existing Search Attributes with the same key.
-}
upsertSearchAttributes :: RequireCallStack => Map SearchAttributeKey SearchAttributeType -> Workflow ()
upsertSearchAttributes values = ilift $ do
  updateCallStack
  attrs <- liftIO $ searchAttributesToProto values
  let cmd =
        defMessage
          & Command.upsertWorkflowSearchAttributes
            .~ ( defMessage
                  & Command.searchAttributes .~ attrs
               )
  addCommand cmd
  inst <- ask
  modifyIORef' inst.workflowInstanceInfo $ \Info {..} ->
    Info {searchAttributes = searchAttributes <> values, ..}


{- | Updates this Workflow's Memo by merging the provided values with the existing Memo.
Using this function will overwrite any existing Memo entries with the same key.
-}
upsertMemo :: RequireCallStack => Map Text Value -> Workflow ()
upsertMemo values = ilift $ do
  updateCallStack
  let encodedMap = fmap encodeJSON values
  let cmd =
        defMessage
          & Command.modifyWorkflowProperties
            .~ ( defMessage
                  & Command.upsertedMemo .~ convertToProtoMemo encodedMap
               )
  addCommand cmd
  inst <- ask
  modifyIORef' inst.workflowInstanceInfo $ \Info {..} ->
    Info {rawMemo = encodedMap <> rawMemo, ..}


{- | Current time from the workflow perspective.

The time returned is updated only when the workflow performs an
operation in the Workflow monad that blocks. Examples of such operations
are 'sleep', 'awaitCondition', 'awaitActivity', 'awaitWorkflow', etc.

Equivalent to `getCurrentTime` from the `time` package.
-}
now :: Workflow UTCTime
now = Workflow $ \_ ->
  Done <$> do
    wft <- asks workflowTime
    t <- readIORef wft
    pure $! systemToUTCTime t


{- | When using the "Schedules" feature of Temporal, this is the effective time that an instance was scheduled to run,
according to the @TemporalScheduledStartTime@ search attribute.

This is useful for backfilling or retrying a scheduled Workflow if you need the schedule to have a stable start time.
-}
scheduledTime :: Workflow (Maybe UTCTime)
scheduledTime = do
  i <- info
  pure $ case Map.lookup "TemporalScheduledStartTime" i.searchAttributes of
    Just (Datetime utcTime) ->
      -- The scheduled start time exists and is a datetime, so we can use it
      -- directly.
      pure utcTime
    Just (KeywordOrText text)
      | Just utcTime <- parseTimeM False defaultTimeLocale "%Y-%m-%dT%H:%M:%SZ" $ Text.unpack text ->
          -- The scheduled start time exists as a text value and can be parsed
          -- as a datetime, so we can use it.
          pure utcTime
    _ -> Nothing


{- $versioning

Versioning (known as "patching" in the Haskell library) lets you update Workflow Definitions
without causing non-deterministic behavior in current long-running Workflows.

You may need to patch if:

- You want to change the remaining logic of a Workflow while it is still running
- If your new logic can result in a different execution path
-}


applyPatch
  :: RequireCallStack
  => PatchId
  -> Bool
  -- ^ whether the patch is deprecated
  -> Workflow Bool
applyPatch pid deprecated = ilift $ do
  updateCallStack
  inst <- ask
  memoized <- readIORef inst.workflowMemoizedPatches
  case HashMap.lookup pid memoized of
    Just val -> pure val
    Nothing -> do
      isReplaying <- readIORef inst.workflowIsReplaying
      notifiedPatches <- readIORef inst.workflowNotifiedPatches
      let usePatch = not isReplaying || Set.member pid notifiedPatches
      writeIORef inst.workflowMemoizedPatches $ HashMap.insert pid usePatch memoized
      when usePatch $ do
        addCommand $
          defMessage
            & Command.setPatchMarker .~ (defMessage & Command.patchId .~ rawPatchId pid & Command.deprecated .~ deprecated)
      pure usePatch


{- | Patch or upgrade workflow code by checking or stating that this workflow has a certain patch.

See official Temporal docs page for info.

If the workflow is replaying an existing history, then this function returns true if that history
was produced by a worker which also had a patched call with the same patchId.

If the history was produced by a worker without such a call, then it will return false.

If the workflow is not currently replaying, then this call always returns true.

Your workflow code should run the "new" code if this returns true, if it returns false,
you should run the "old" code. By doing this, you can maintain determinism.
-}
patched :: RequireCallStack => PatchId -> Workflow Bool
patched pid = do
  updateCallStackW
  applyPatch pid False


{- | Indicate that a patch is being phased out.

See official Temporal docs page for info.

Workflows with this call may be deployed alongside workflows with a patched call, but they must not be deployed while any workers
still exist running old code without a patched call, or any runs with histories produced by such workers exist.
If either kind of worker encounters a history produced by the other, their behavior is undefined.

Once all live workflow runs have been produced by workers with this call, you can deploy workers which are free of either kind of
patch call for this ID. Workers with and without this call may coexist, as long as they are both running the "new" code.
-}
deprecatePatch :: RequireCallStack => PatchId -> Workflow ()
deprecatePatch pid = do
  updateCallStackW
  void $ applyPatch pid True


{- $randomness

Workflow executions are deterministic, so you can't use the usual IO-based random number generation.

Instead, each workflow execution is given a seed from the Temporal platform to seed a PRNG. This
allows you to generate random values in a deterministic way.

The 'Workflow' monad provides a 'RandomGen' instance, so you can use the usual 'random' and 'randomR'
functions from the 'System.Random' and 'System.Random.Stateful' modules.
-}


-- | Get a mutable randomness generator for the workflow.
randomGen :: Workflow WorkflowGenM
randomGen = workflowRandomnessSeed <$> askInstance


{- | Generate an RFC compliant V4 uuid.

Uses the workflow's deterministic PRNG, making it safe for use within a workflow.

This function is cryptographically insecure.
-}
uuid4 :: Workflow UUID
uuid4 = do
  wft <- workflowRandomnessSeed <$> askInstance
  sbs <- uniformShortByteString 16 wft
  pure $
    buildFromBytes
      4
      (sbs `SBS.index` 0x0)
      (sbs `SBS.index` 0x1)
      (sbs `SBS.index` 0x2)
      (sbs `SBS.index` 0x3)
      (sbs `SBS.index` 0x4)
      (sbs `SBS.index` 0x5)
      (sbs `SBS.index` 0x6)
      (sbs `SBS.index` 0x7)
      (sbs `SBS.index` 0x8)
      (sbs `SBS.index` 0x9)
      (sbs `SBS.index` 0xA)
      (sbs `SBS.index` 0xB)
      (sbs `SBS.index` 0xC)
      (sbs `SBS.index` 0xD)
      (sbs `SBS.index` 0xE)
      (sbs `SBS.index` 0xF)


{- | Generates a UUIDv7 using the current time (from 'time') and
random data (from 'workflowRandomnessSeed').
-}
uuid7 :: RequireCallStack => Workflow UUID
uuid7 = do
  t <- time
  wft <- workflowRandomnessSeed <$> askInstance
  -- Note that we only need 74 bits (12 + 62) of randomness. That's a little
  -- more than 9 bytes (72 bits), so we have to request 10 bytes (80 bits) of
  -- entropy. The extra 6 bits are discarded.
  b <- uniformShortByteString 10 wft
  pure $
    let u8_u64 = fromIntegral :: Word8 -> Word64
        f = Bits.shift . u8_u64 . SBS.index b
        r = f 0 0 + f 1 8
        s = f 2 0 + f 3 8 + f 4 16 + f 5 24 + f 6 32 + f 7 40 + f 8 48 + f 9 56
    in buildV7 t r s
  where
    buildV7
      -- Corresponds to the @unix_ts_ms@ field.
      :: SystemTime
      -- Corresponds to the @rand_a@ field. Only the low 12 bits are used.
      -> Word64
      -- Corresponds to the @rand_b@ field. Only the low 62 bits are used.
      -> Word64
      -> UUID.UUID
    buildV7 t r s =
      let i64_u64 = fromIntegral :: Int64 -> Word64
          u32_u64 = fromIntegral :: Word32 -> Word64
          unix_ts_ms =
            Bits.shift
              ( (i64_u64 (systemSeconds t) * 1000)
                  + u32_u64 (div (systemNanoseconds t) 1000000)
              )
              16
          ver = Bits.shift 0x7 12 :: Word64
          rand_a = r Bits..&. 0x0fff
          var = Bits.shift 0x2 62 :: Word64
          rand_b = s Bits..&. 0x3fffffffffffffff
      in UUID.fromWords64 (unix_ts_ms + ver + rand_a) (var + rand_b)


{- $queries

A Query is a synchronous operation that is used to get the state of a Workflow Execution.
The state of a running Workflow Execution is constantly changing.
You can use Queries to expose the internal Workflow Execution state to the external world.
Queries are available for running or completed Workflows Executions only if the Worker is
up and listening on the Task Queue.

Queries are strongly consistent and are guaranteed to return the most recent state.
This means that the data reflects the state of all confirmed Events that came in before
the Query was sent. An Event is considered confirmed if the call creating the Event returned
success. Events that are created while the Query is outstanding may or may not be reflected
in the Workflow state the Query result is based on.

A Query can carry arguments to specify the data it is requesting. And each Workflow can expose data to multiple types of Queries.

A Query cannot mutate the state of the Workflow Execution— that is, Queries are read-only and cannot contain any blocking code.
This means, for example, that Query handling logic cannot schedule Activity Executions.
-}


{- | Register a query handler.

The handler will be called when a query with the given name is received.
-}
setQueryHandler
  :: forall query f
   . ( QueryRef query
     , f ~ (QueryArgs query :->: Query (QueryResult query))
     , RequireCallStack
     )
  => query
  -> f
  -> Workflow ()
setQueryHandler (queryRef -> KnownQuery n codec) f = ilift $ do
  updateCallStack
  inst <- ask
  withRunInIO $ \runInIO -> do
    liftIO $ modifyIORef' inst.workflowQueryHandlers $ \handles ->
      HashMap.insert (Just n) (\qId vec hdrs -> runInIO $ qHandler qId vec hdrs) handles
  where
    qHandler :: QueryId -> Vector Payload -> Map Text Payload -> InstanceM (Either SomeException Payload)
    qHandler (QueryId _) vec _ = do
      eHandler <-
        liftIO $
          applyPayloads
            codec
            (Proxy @(QueryArgs query))
            (Proxy @(Query (QueryResult query)))
            f
            vec
      -- TODO handle exceptions properly
      case eHandler of
        Left err -> pure $ Left $ toException $ ValueError err
        Right (Query r) -> do
          eResult <- UnliftIO.try r
          case eResult of
            Left err -> pure $ Left err
            Right result -> liftIO $ UnliftIO.try $ encode codec result


{- | Register a default query handler that catches all query types without a specific handler.

The handler receives the raw 'Payload' arguments and must return an encoded 'Payload'.
Use this to provide a catch-all response for unknown query types.
-}
setDefaultQueryHandler
  :: RequireCallStack
  => (Vector Payload -> Query Payload)
  -> Workflow ()
setDefaultQueryHandler f = ilift $ do
  updateCallStack
  inst <- ask
  withRunInIO $ \runInIO -> do
    liftIO $ modifyIORef' inst.workflowQueryHandlers $ \handles ->
      HashMap.insert Nothing (\_ vec _ -> runInIO $ qHandler vec) handles
  where
    qHandler :: Vector Payload -> InstanceM (Either SomeException Payload)
    qHandler vec = do
      let (Query action) = f vec
      UnliftIO.try action


{- | Register an update handler, optionally with a validator.

The validator will be called when an update with the given name is received. If it returns true,
the update handler will be called, and its result returned to the client.
-}
setUpdateHandler
  :: forall update f validator e
   . ( UpdateRef update
     , f ~ (UpdateArgs update :->: Workflow (UpdateResult update))
     , Exception e
     , validator ~ (UpdateArgs update :->: Validation (Either e ()))
     , RequireCallStack
     )
  => update e
  -> f
  -> Maybe validator
  -> Workflow ()
setUpdateHandler (updateRef -> KnownUpdate codec n) f mValidator = ilift $ do
  updateCallStack
  inst <- ask
  let updateImplementation =
        WorkflowUpdateImplementation
          { updateImplementation = updateHandler
          , updateValidationImplementation = fmap updateValidatorHandler mValidator
          }
  liftIO $ modifyIORef' inst.workflowUpdateHandlers $ \handles ->
    HashMap.insert (Just n) updateImplementation handles
  where
    updateHandler :: UpdateId -> Vector Payload -> Map Text Payload -> Workflow Payload
    updateHandler _updateId vec _hdrs = do
      ePayloads <-
        ilift $
          liftIO $
            applyPayloads
              codec
              (Proxy @(UpdateArgs update))
              (Proxy @(Workflow (UpdateResult update)))
              f
              vec
      case ePayloads of
        Left err -> Workflow $ \_env -> do
          Logging.logDebug "Hit a decoding error"
          pure $ Throw $ toException $ ValueError err
        Right w -> w >>= \result -> ilift (liftIO $ encode codec result)
    updateValidatorHandler :: validator -> UpdateId -> Vector Payload -> Map Text Payload -> Validation (Either SomeException ())
    updateValidatorHandler v _updateId vec _hdrs = do
      eResult <-
        Validation $
          applyPayloads
            codec
            (Proxy @(UpdateArgs update))
            (Proxy @(Validation (Either e ())))
            v
            vec
      case eResult of
        Left err -> pure $ Left $ toException $ ValueError err
        Right result -> do
          x <- result
          case x of
            Left err' -> pure $ Left $ toException err'
            Right result' -> pure $ Right result'


type ValidSignalHandler f =
  ( ResultOf Workflow f ~ ()
  , (ArgsOf f :->: Workflow ()) ~ f
  )


setSignalHandler
  :: forall f ref
   . ( ValidSignalHandler f
     , RequireCallStack
     , SignalRef ref
     , ArgsOf f ~ SignalArgs ref
     )
  => ref
  -> f
  -> Workflow ()
setSignalHandler (signalRef -> KnownSignal n codec) f = do
  -- Register the handler and get any buffered signals
  bufferedSignals <- ilift $ do
    updateCallStack
    inst <- ask
    -- Register the handler
    liftIO $ modifyIORef' inst.workflowSignalHandlers $ \handlers ->
      HashMap.insert (Just n) handle' handlers
    -- Get and clear any buffered signals for this signal name
    -- Uses appEndo to convert the Endo diff-list back to a regular list
    liftIO $ atomicModifyIORefCAS inst.workflowBufferedSignals $ \buf ->
      (HashMap.delete n buf, foldMap (`appEndo` []) $ HashMap.lookup n buf)
  -- Process any buffered signals (matching TypeScript SDK behavior)
  for_ bufferedSignals handle'
  where
    handle' :: Vector Payload -> Workflow ()
    handle' vec = do
      eWorkflow <- Workflow $ \_env ->
        liftIO $
          Done
            <$> applyPayloads
              codec
              (Proxy @(ArgsOf f))
              (Proxy @(Workflow ()))
              f
              vec
      case eWorkflow of
        Left err -> throw $ ValueError err
        Right w -> w


{- | Current time from the workflow perspective.

The value is relative to epoch time.
-}
time :: RequireCallStack => Workflow SystemTime
time = ilift $ do
  updateCallStack
  wft <- asks workflowTime
  readIORef wft


data Timer = Timer
  { timerSequence :: Sequence
  , timerHandle :: IVar ()
  }


{- | Asynchronous sleep.

Creates a timer that fires after the specified duration.

The timer is not guaranteed to fire immediately after the duration expires,
but it is intended to fire as close to the expiration as possible.

Note that the timer is started when the command is received by the Temporal Platform,
not when the timer is created. The command is sent as soon as the workflow is blocked
by any operation, such as 'sleep', 'awaitCondition', 'awaitActivity', 'awaitWorkflow', etc.

If the duration is less than or equal to zero, no timer is created and this
returns 'Nothing'.
-}
createTimer :: Duration -> Workflow (Maybe Timer)
createTimer ts = provideCallStack $ ilift $ do
  inst <- ask
  s@(Sequence seqId) <- nextTimerSequence
  if ts <= mempty
    then pure Nothing
    else do
      let cmd =
            defMessage
              & Command.startTimer
                .~ ( defMessage
                      & Command.seq .~ seqId
                      & Command.startToFireTimeout .~ durationToProto ts
                   )
      Logging.logDebug "Add command: sleep"
      res <- newTrackedIVar
      atomically $ modifyTVar' inst.workflowSequenceMaps $ \seqMaps ->
        seqMaps {timers = HashMap.insert s res seqMaps.timers}
      addCommand cmd
      pure $ Just $ Timer {timerSequence = s, timerHandle = res}


{- | Suspends the workflow execution for the specified duration.

The timer is not guaranteed to fire immediately after the duration expires,
but it is intended to fire as close to the expiration as possible.

Note that the timer is started when the command is received by the Temporal Platform,
not when the timer is created. The command is sent as soon as the workflow is suspended
by any operation, such as 'sleep', 'awaitCondition', 'awaitActivity', 'awaitWorkflow', etc.

This function suspends the workflow itself, allowing other workflows to execute. It does not
block the workflow thread in a busy-wait.

__NOTE__: If the duration is less than or equal to zero, no timer is created and the
function returns immediately; see 'createTimer' for details.
-}
sleep :: RequireCallStack => Duration -> Workflow ()
sleep ts = do
  updateCallStackW
  timer <- createTimer ts
  traverse_ Temporal.Workflow.Unsafe.Handle.wait timer


{- | Suspends the workflow execution until the specified system time.

__NOTE__: If the target time is in the past, no timer is created and the
function returns immediately; see 'createTimer' for details.
-}
sleepUntilSystemTime :: RequireCallStack => SystemTime -> Workflow ()
sleepUntilSystemTime t = do
  updateCallStackW
  currentTime <- time
  timer <- createTimer (diffSystemTime currentTime t)
  traverse_ Temporal.Workflow.Unsafe.Handle.wait timer


{- | Suspends the workflow execution until the specified UTC time.

If the target time is in the past, the function returns immediately.

See 'sleep' for details about timer behavior and workflow suspension.
-}
sleepUntilUTCTime :: RequireCallStack => UTCTime -> Workflow ()
sleepUntilUTCTime = sleepUntilSystemTime . utcToSystemTime


instance Wait Timer where
  type WaitResult Timer = Workflow ()
  wait :: RequireCallStack => Timer -> WaitResult Timer
  wait t = do
    updateCallStackW
    getIVar $ timerHandle t


instance Cancel Timer where
  type CancelResult Timer = Workflow ()


  cancel t = Workflow $ \_ -> do
    updateCallStack
    inst <- ask
    let cmd =
          defMessage
            & Command.cancelTimer
              .~ ( defMessage
                    & Command.seq .~ rawSequence (timerSequence t)
                 )
    addCommand cmd
    Logging.logDebug "about to putIVar: cancelTimer"
    liftIO $
      putIVar
        t.timerHandle
        (Ok ())
        inst.workflowInstanceContinuationEnv

    atomically $ modifyTVar' inst.workflowSequenceMaps $ \seqMaps ->
      seqMaps {timers = HashMap.delete t.timerSequence seqMaps.timers}

    Logging.logDebug "finished putIVar: cancelTimer"
    pure $ Done ()


{- | Continue-As-New is a mechanism by which the latest relevant state is passed to a new Workflow Execution, with a fresh Event History.

As a precautionary measure, the Temporal Platform limits the total Event History to 51,200 Events or 50 MB, and will warn you after
10,240 Events or 10 MB. To prevent a Workflow Execution Event History from exceeding this limit and failing,
use Continue-As-New to start a new Workflow Execution with a fresh Event History.

All values passed to a Workflow Execution through parameters or returned through a result value are recorded into the Event History.
A Temporal Cluster stores the full Event History of a Workflow Execution for the duration of a Namespace's retention period.
A Workflow Execution that periodically executes many Activities has the potential of hitting the size limit.

A very large Event History can adversely affect the performance of a Workflow Execution. For example, in the case of a Workflow Worker failure,
the full Event History must be pulled from the Temporal Cluster and given to another Worker via a Workflow Task.
If the Event history is very large, it may take some time to load it.

The Continue-As-New feature enables developers to complete the current Workflow Execution and start a new one atomically.

The new Workflow Execution has the same Workflow Id, but a different Run Id, and has its own Event History.
TODO, don't make this an exception, make it a return value
-}
continueAsNew
  :: forall wf
   . WorkflowRef wf
  => wf
  -- ^ The workflow to continue as new. It doesn't have to be the same as the current workflow.
  -> ContinueAsNewOptions
  -> (WorkflowArgs wf :->: Workflow (WorkflowResult wf))
continueAsNew (workflowRef -> k@(KnownWorkflow codec _)) opts = withWorkflowArgs @(WorkflowArgs wf) @(WorkflowResult wf) codec $ \args -> do
  Workflow $ \_ -> do
    inst <- ask
    res <- liftIO $ (Temporal.Workflow.Internal.Monad.continueAsNew inst.outboundInterceptor) (knownWorkflowName k) opts $ \wfName (opts' :: ContinueAsNewOptions) -> do
      -- searchAttrs <- searchAttributesToProto
      --     (if opts'.searchAttributes == mempty
      --       then i.searchAttributes
      --       else opts'.searchAttributes)
      throwIO $ ContinueAsNewException (WorkflowType wfName) args opts'
    pure $ Done res


-- | Returns a client-side handle that can be used to signal and cancel an existing Workflow execution. It takes a Workflow ID and optional run ID.
getExternalWorkflowHandle :: RequireCallStack => WorkflowId -> Maybe RunId -> Workflow (ExternalWorkflowHandle result)
getExternalWorkflowHandle wfId mrId = do
  updateCallStackW
  pure $
    ExternalWorkflowHandle
      { externalWorkflowWorkflowId = wfId
      , externalWorkflowRunId = mrId
      }


{- | Wait on a condition to become true before continuing.

This must be used with signals, steps executed concurrently via the Applicative instance,
or with the `race` command, as those are the only way for
state to change in a workflow while a portion of the workflow itself is
in this blocking condition.

N.B. this should be used with care, as it can lead to the workflow
suspending indefinitely if the condition is never met.
(e.g. if there is no signal handler that changes the state appropriately)
-}
waitCondition :: RequireCallStack => Condition Bool -> Workflow ()
waitCondition c@(Condition m) = do
  updateCallStackW
  (conditionSatisfied, touchedVars) <- ilift $ do
    sRef <- newIORef mempty
    sat <- runReaderT m sRef
    (,) sat <$> readIORef sRef
  if conditionSatisfied
    then pure ()
    else go touchedVars
  where
    -- When blocked, the condition needs to be rechecked every time a signal is received
    -- or a new resolutions are received from a workflow activation.
    go touchedVars = do
      blockedVar <- ilift $ do
        inst <- ask
        res <- newTrackedIVar
        conditionSeq <- nextConditionSequence
        atomically $ modifyTVar' inst.workflowSequenceMaps $ \seqMaps ->
          seqMaps
            { conditionsAwaitingSignal = HashMap.insert conditionSeq (res, touchedVars) seqMaps.conditionsAwaitingSignal
            }
        pure res
      -- Wait for the condition to be signaled. Once signalled, we just try again.
      -- writeStateVar and friends are in charge of filling the ivar and clearing out the seqmaps between rechecks
      getIVar blockedVar
      waitCondition c


{- | While workflows are deterministic, there are categories of operational concerns (metrics, logging, tracing, etc.) that require
access to IO operations like the network or filesystem. The 'IO' monad is not generally available in the 'Workflow' monad, but you
can use 'sink' to run an 'IO' action in a workflow. In order to maintain determinism, the operation will be executed asynchronously
and does not return a value. Be sure that the sink operation terminates, or else you will leak memory and/or threads.

Do not use 'sink' for any Workflow logic, or else you will violate determinism.
-}
unsafeAsyncEffectSink :: RequireCallStack => IO () -> Workflow ()
unsafeAsyncEffectSink m = do
  updateCallStackW
  ilift $ liftIO $ void $ forkIO m


-- -----------------------------------------------------------------------------
-- Parallel operations

{-
If either workflow completes with a Left a result, the computation will short-circuit and immediately return @Left a@.
This means that if one branch produces a 'Left' result, the other branch's computation will be aborted if it hasn't already completed.

If both workflows complete with Right results, the function will return @Right (b, c)@.
In this case, both branches will be fully evaluated.
-}
biselect
  :: RequireCallStack
  => Workflow (Either a b)
  -> Workflow (Either a c)
  -> Workflow (Either a (b, c))
biselect = biselectOpt id id Left Right


{- | The 'biselectOpt' function combines two workflows and applies optimized selection logic.

This function is inspired by the 'Haxl' library's Haxl.Core.Parallel functions. It takes two workflows
and combines them, applying discrimination functions to their results to determine the final outcome.
The function works as follows:

1. It explores both workflows concurrently.

2. If the left workflow completes first:
   - If the first argument returns 'Left', the result is immediately returned using the third function.
   - If the first argument returns 'Right', it waits for the right workflow to complete.

3. If the right workflow completes first:
   - If the second argument returns 'Left', the result is immediately returned using the third function.
   - If the second argument returns 'Right', it waits for the left workflow to complete.

4. If both workflows complete:
   - The results are combined using the fourth function if both discriminators return 'Right'.

5. If either workflow throws an exception, the exception is propagated.

6. If either workflow is blocked, the function manages the blocking and resumption of computation.

This function optimizes the execution by short-circuiting when possible and managing concurrency
efficiently. Be cautious when using this function, as exceptions and evaluation order can be
unpredictable depending on the discriminator functions provided.
-}
{-# INLINE biselectOpt #-}
biselectOpt
  :: RequireCallStack
  => (l -> Either a b)
  -> (r -> Either a c)
  -> (a -> t)
  -> ((b, c) -> t)
  -> Workflow l
  -> Workflow r
  -> Workflow t
biselectOpt discrimA discrimB left right wfL wfR =
  let go (Workflow wfA) (Workflow wfB) = Workflow $ \env -> do
        ra <- wfA env
        case ra of
          Done ea ->
            case discrimA ea of
              Left a -> return (Done (left a))
              Right b -> do
                rb <- wfB env
                case rb of
                  Done eb ->
                    case discrimB eb of
                      Left a -> return (Done (left a))
                      Right c -> return (Done (right (b, c)))
                  Throw e -> return (Throw e)
                  Blocked ib wfB' ->
                    return
                      ( Blocked
                          ib
                          (wfB' :>>= \b' -> goRight b b')
                      )
          Throw e -> return (Throw e)
          Blocked ia wfA' -> do
            rb <- wfB env
            case rb of
              Done eb ->
                case discrimB eb of
                  Left a -> return (Done (left a))
                  Right c ->
                    return (Blocked ia (wfA' :>>= \a' -> goLeft a' c))
              Throw e -> return (Throw e)
              Blocked ib wfB' -> do
                i <- newIVar
                addJob env (return ()) i ia
                addJob env (return ()) i ib
                return (Blocked i (Cont (go (toWf wfA') (toWf wfB'))))
      -- The code above makes sure that the computation
      -- wakes up whenever either 'ia' or 'ib' is filled.
      -- The ivar 'i' is used as a synchronisation point
      -- for the whole computation, and we make sure that
      -- whenever 'ia' or 'ib' are filled in then 'i' will
      -- also be filled.

      goRight b eb =
        case discrimB eb of
          Left a -> return (left a)
          Right c -> return (right (b, c))
      goLeft ea c =
        case discrimA ea of
          Left a -> return (left a)
          Right b -> return (right (b, c))
  in go wfL wfR


{- | This function takes two Workflow computations as input, and returns the
output of whichever computation finished first. The evaluation of the remaining
computation is discontinued.

Note: This function doesn't have a way to explicitly signal to the
incomplete other computation that it will no longer be evaluated,
so you should be careful about ensuring that incomplete
computations are not problematic for your problem domain.
-}
race
  :: RequireCallStack
  => Workflow a
  -> Workflow b
  -> Workflow (Either a b)
race = biselectOpt discrimX discrimY id right
  where
    discrimX :: a -> Either (Either a b) ()
    discrimX a = Left (Left a)

    discrimY :: b -> Either (Either a b) ()
    discrimY b = Left (Right b)

    right _ = error "race: We should never have a 'Right ()'"


{- | Run two Workflow actions concurrently, and return the first to finish.

Unlike 'Control.Concurrent.Async.race, this function doesn't explicitly cancel
the other computation. If you want to cancel the other computation,
you should return sufficient context to do so manually
-}
race_ :: RequireCallStack => Workflow a -> Workflow b -> Workflow ()
race_ l r = void $ Temporal.Workflow.race l r


{- | Run two Workflow actions concurrently, and return both results. If either action throws an exception at any time, the other action will run to completion
as long as the exception is caught and handled.
-}
concurrently :: Workflow a -> Workflow b -> Workflow (a, b)
concurrently l r = runConcurrentWorkflowActions ((,) <$> ConcurrentWorkflow l <*> ConcurrentWorkflow r)


-- | Like 'concurrently', but ignore the result values.
concurrently_ :: Workflow a -> Workflow b -> Workflow ()
concurrently_ l r = void $ Temporal.Workflow.concurrently l r


{- | Map an effect-performing function over over any 'Traversable' data type, performing each action concurrently,
returning the original data structure with the arguments replaced with the results.

This is actually a bit of a misnomer, since it's really 'traverseConcurrently', but this is copied to mimic the 'async' package's naming
to slightly ease adoption.
-}
mapConcurrently :: Traversable t => (a -> Workflow b) -> t a -> Workflow (t b)
mapConcurrently = traverseConcurrently


-- | Alias for 'traverseConcurrently_'
mapConcurrently_ :: Foldable t => (a -> Workflow b) -> t a -> Workflow ()
mapConcurrently_ = traverseConcurrently_


-- | Perform the action in the given number of evaluation branches.
replicateConcurrently :: Int -> Workflow a -> Workflow [a]
replicateConcurrently n = runConcurrentWorkflowActions . sequenceA . replicate n . ConcurrentWorkflow


-- | Perform the action in the given number of evaluation branches, discarding the results
replicateConcurrently_ :: Int -> Workflow a -> Workflow ()
replicateConcurrently_ n = runConcurrentWorkflowActions . fold . replicate n . ConcurrentWorkflow . void


-- | Evaluate the action in the given number of evaluation branches, accumulating the results
traverseConcurrently :: Traversable t => (a -> Workflow b) -> t a -> Workflow (t b)
traverseConcurrently f xs = runConcurrentWorkflowActions $ traverse (ConcurrentWorkflow . f) xs


traverseConcurrently_ :: Foldable t => (a -> Workflow b) -> t a -> Workflow ()
traverseConcurrently_ f xs = runConcurrentWorkflowActions $ traverse_ (ConcurrentWorkflow . f) xs


-- | Evaluate each Workflow action in the structure concurrently, and collect the results.
sequenceConcurrently :: Traversable t => t (Workflow a) -> Workflow (t a)
sequenceConcurrently = runConcurrentWorkflowActions . traverse ConcurrentWorkflow


-- | Evaluate each Workflow action in the structure concurrently, and ignore the results.
sequenceConcurrently_ :: Foldable t => t (Workflow a) -> Workflow ()
sequenceConcurrently_ = runConcurrentWorkflowActions . traverse_ ConcurrentWorkflow


-- | 'traverseConcurrently' with the arguments flipped.
forConcurrently :: Traversable t => t a -> (a -> Workflow b) -> Workflow (t b)
forConcurrently = flip traverseConcurrently


-- | 'traverseConcurrently_' with the arguments flipped.
forConcurrently_ :: Foldable t => t a -> (a -> Workflow b) -> Workflow ()
forConcurrently_ = flip traverseConcurrently_


{- Similar to 'concurrently', but don't let the failure of one computation affect the other. -}
independently :: Workflow a -> Workflow b -> Workflow (a, b)
independently l r = do
  (el, er) <- Temporal.Workflow.concurrently (Control.Monad.Catch.try l) (Control.Monad.Catch.try r)
  let results = (,) <$> el <*> er
  case results of
    Left e -> throwWithCallStack (e :: SomeException)
    Right ok -> pure ok


{-
=== state vars ===

Since state vars await cause Conditions to await, we need a way to track whether they have
been updated since the condition suspended. We give each statevar a unique identifier for
lookups, and a sequence number that updates for each write to the IORef.
-}

{- | 'Workflow's may be sent a cancellation request from the Temporal Platform,
but Workflow code is not required to respond to the cancellation request.

In order to opt in to cancellation handling, you can call 'isCancelRequested'
periodically within your workflow code to check whether a cancellation request
has been received.
-}
isCancelRequested :: RequireCallStack => Workflow Bool
isCancelRequested = do
  updateCallStackW
  inst <- askInstance
  res <- tryReadIVar inst.workflowCancellationVar
  case res of
    Nothing -> pure False
    Just () -> pure True


{- | Block the current workflow's main execution thread until the workflow is cancelled.

The workflow can still respond to signals and queries while waiting for cancellation.

Upon cancellation, the workflow will throw a 'WorkflowCancelRequested' exception.

This function is useful for actor-style workflows that perform work in response to signals
and/or respond to queries, but otherwise need to remain idle on their main codepath.

N.B. It is likely not safe to call this in a signal handler.
-}
waitCancellation :: RequireCallStack => Workflow ()
waitCancellation = do
  updateCallStackW
  inst <- askInstance
  getIVar inst.workflowCancellationVar
  throw WorkflowCancelRequested


{- |
Default retry policy.

@
'RetryPolicy'
  { initialInterval = 'seconds' 1
  , backoffCoefficient = 2
  , maximumInterval = 'Nothing'
  , maximumAttempts = 0
  , nonRetryableErrorTypes = 'mempty'
  }
@
-}
defaultRetryPolicy :: RetryPolicy
defaultRetryPolicy =
  RetryPolicy
    { initialInterval = seconds 1
    , backoffCoefficient = 2
    , maximumInterval = Nothing
    , maximumAttempts = 0
    , nonRetryableErrorTypes = mempty
    }


{- | A value of type 'ConcurrentWorkflow' a is a 'Workflow' operation that can be composed with other ConcurrentWorkflow values, using the Applicative and Alternative instances.

'ConcurrentWorkflow' effectively operates as a computation DAG. It's evaluated by exploring the expression across all of the branches of computation until every branch becomes blocked
waiting on results from Temporal.

Once that happens, it submits all commands that it has accumulated to the Temporal orchestrator and waits to be reactivated with commands from the orchestrator that unblock
computation on one or more branches. This is repeated until the computation completes. When 'Applicative' is used, that means that each computation branch doesn't depend on the
result of the others, so they can all explore as far as possible and get blocked. If we use 'Monad', then that means that the result of the previous computation has to become
unblocked in order to provide the result to the subsequent computation.
-}
newtype ConcurrentWorkflow a = ConcurrentWorkflow {runConcurrentWorkflowActions :: Workflow a}
  deriving newtype (Functor, MonadLogger, Semigroup, Monoid, Alternative, MonadCatch, MonadThrow)


instance Applicative ConcurrentWorkflow where
  pure = ConcurrentWorkflow . pure
  ConcurrentWorkflow f <*> ConcurrentWorkflow a = ConcurrentWorkflow (parallelAp f a)


instance Monad ConcurrentWorkflow where
  ConcurrentWorkflow m >>= f = ConcurrentWorkflow $ do
    x <- m
    let ConcurrentWorkflow m' = f x
    m'
