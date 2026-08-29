{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveLift #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE TypeFamilies #-}

module Temporal.Common where

import Data.Aeson (FromJSON, FromJSONKey, ToJSON, ToJSONKey)
import Data.ByteString (ByteString)
import Data.Data (Data)
import Data.Hashable (Hashable)
import Data.Int (Int32)
import Data.Kind
import Data.Map (Map)
import qualified Data.Map.Strict as Map
import Data.ProtoLens
import Data.String
import Data.Text (Text)
import qualified Data.Text as T
import Data.Time.Clock.System
import Data.Typeable
import Data.Vector (Vector)
import Data.Word (Word32)
import GHC.Generics (Generic)
import Instances.TH.Lift ()
import Language.Haskell.TH.Syntax (Lift)
import Lens.Family2
import qualified Proto.Google.Protobuf.Timestamp as Timestamp
import qualified Proto.Google.Protobuf.Timestamp_Fields as Timestamp
import qualified Proto.Temporal.Api.Common.V1.Message as Message
import qualified Proto.Temporal.Api.Common.V1.Message_Fields as Message
import qualified Proto.Temporal.Api.Enums.V1.Workflow as Workflow
import Temporal.Duration
import Temporal.Payload


-- | This is generally the name of the function itself
newtype WorkflowType = WorkflowType {rawWorkflowType :: Text}
  deriving stock (Lift)
  deriving newtype (Eq, Ord, Show, Hashable, IsString, ToJSON, ToJSONKey, FromJSON, FromJSONKey)


-- | A Workflow Id is a customizable, application-level identifier for a Workflow Execution that is unique to an Open Workflow Execution within a Namespace.
newtype WorkflowId = WorkflowId {rawWorkflowId :: Text}
  deriving stock (Lift)
  deriving newtype (Eq, Ord, Show, Hashable, IsString, ToJSON, ToJSONKey, FromJSON, FromJSONKey)


newtype UpdateId = UpdateId {rawUpdateId :: Text}
  deriving stock (Lift)
  deriving newtype (Eq, Ord, Show, Hashable, IsString, ToJSON, ToJSONKey, FromJSON, FromJSONKey)


-- | An Event ID refers to a specific event in a workflow's history
newtype EventId = EventId {rawEventId :: Int}
  deriving stock (Lift)
  deriving newtype (Eq, Ord, Read, Show, Num, ToJSON, FromJSON)


-- | A Namespace is a unit of isolation within the Temporal Platform
newtype Namespace = Namespace {rawNamespace :: Text}
  deriving stock (Lift)
  deriving newtype (Eq, Ord, Show, Hashable, IsString, ToJSON, ToJSONKey, FromJSON, FromJSONKey)


{- | A Run Id is a globally unique, platform-level identifier for a Workflow Execution.

The current Run Id is mutable and can change during a Workflow Retry. You shouldn't rely on storing the current Run Id, or using it for any logical choices, because a Workflow Retry changes the Run Id and can lead to non-determinism issues.

Temporal guarantees that only one Workflow Execution with a given Workflow Id can be in an Open state at any given time. But when a Workflow Execution reaches a Closed state, it is possible to have another Workflow Execution in an Open state with the same Workflow Id. For example, a Temporal Cron Job is a chain of Workflow Executions that all have the same Workflow Id. Each Workflow Execution within the chain is considered a Run.

A Run Id uniquely identifies a Workflow Execution even if it shares a Workflow Id with other Workflow Executions.
-}
newtype RunId = RunId {rawRunId :: Text}
  deriving stock (Lift)
  deriving newtype (Eq, Ord, Show, Hashable, IsString, ToJSON, ToJSONKey, FromJSON, FromJSONKey)


newtype PatchId = PatchId {rawPatchId :: Text}
  deriving stock (Lift)
  deriving newtype (Eq, Ord, Show, Hashable, IsString, ToJSON, ToJSONKey, FromJSON, FromJSONKey)


{- | A Task Queue is a queue that a Worker Process polls for Tasks.

Task Queues do not have any ordering guarantees.
It is possible to have a Task that stays in a Task Queue for a period of time, if there is a backlog that wasn't drained for that time.

Task Queues are very lightweight components.
Task Queues do not require explicit registration but instead are created on demand when a Workflow Execution or Activity spawns or
when a Worker Process subscribes to it. When a Task Queue is created, both a Workflow Task Queue and an Activity Task Queue are
created under the same name. There is no limit to the number of Task Queues a Temporal Application can use or a Temporal Cluster
can maintain.
-}
newtype TaskQueue = TaskQueue {rawTaskQueue :: Text}
  deriving stock (Data, Lift)
  deriving newtype (Eq, Ord, Show, Hashable, IsString, ToJSON, ToJSONKey, FromJSON, FromJSONKey)


-- | A Nexus Endpoint name, as configured via the Operator Service.
newtype NexusEndpointName = NexusEndpointName {rawNexusEndpointName :: Text}
  deriving stock (Data, Lift)
  deriving newtype (Eq, Ord, Show, Hashable, IsString, ToJSON, FromJSON)


-- | A Nexus Service name identifying a group of related operations.
newtype NexusServiceName = NexusServiceName {rawNexusServiceName :: Text}
  deriving stock (Data, Lift)
  deriving newtype (Eq, Ord, Show, Hashable, IsString, ToJSON, FromJSON)


-- | A Nexus Operation name within a service.
newtype NexusOperationName = NexusOperationName {rawNexusOperationName :: Text}
  deriving stock (Data, Lift)
  deriving newtype (Eq, Ord, Show, Hashable, IsString, ToJSON, FromJSON)


newtype ActivityType = ActivityType {rawActivityType :: Text}
  deriving stock (Data, Lift)
  deriving newtype (Eq, Ord, Show, Hashable, IsString, ToJSON, ToJSONKey, FromJSON, FromJSONKey)


-- | A unique identifier for an Activity Execution.
newtype ActivityId = ActivityId {rawActivityId :: Text}
  deriving stock (Lift)
  deriving newtype (Eq, Ord, Show, Hashable, IsString, ToJSON, ToJSONKey, FromJSON, FromJSONKey)


newtype ScheduleId = ScheduleId {rawScheduleId :: Text}
  deriving stock (Lift)
  deriving newtype (Eq, Ord, Show, Hashable, IsString, ToJSON, ToJSONKey, FromJSON, FromJSONKey)


newtype SignalId = SignalId {rawSignalId :: Text}
  deriving stock (Lift)
  deriving newtype (Eq, Ord, Show, Hashable, IsString, ToJSON, ToJSONKey, FromJSON, FromJSONKey)


newtype TimerId = TimerId {rawTimerId :: Text}
  deriving stock (Lift)
  deriving newtype (Eq, Ord, Show, Hashable, IsString, ToJSON, ToJSONKey, FromJSON, FromJSONKey)


newtype CancellationId = CancellationId {rawCancellationId :: Text}
  deriving stock (Lift)
  deriving newtype (Eq, Ord, Show, Hashable, IsString, ToJSON, ToJSONKey, FromJSON, FromJSONKey)


newtype QueryId = QueryId {rawQueryId :: Text}
  deriving stock (Lift)
  deriving newtype (Eq, Ord, Show, Hashable, IsString, ToJSON, ToJSONKey, FromJSON, FromJSONKey)


-- | A Task Token is a unique identifier for a Task. It can be used with the 'Temporal.Client.AsyncActivity' API to signal activity completion or failure.
newtype TaskToken = TaskToken
  { rawTaskToken :: ByteString
  -- ^ An opaque token that can be used to uniquely identify a Task. This token should not be modified by consumers, but is exposed here as a raw ByteString for transport purposes.
  }
  deriving newtype (Eq, Show, Ord, Hashable, IsString)


timespecFromTimestamp :: Timestamp.Timestamp -> SystemTime
timespecFromTimestamp ts =
  MkSystemTime
    { systemSeconds = ts ^. Timestamp.seconds
    , systemNanoseconds = fromIntegral (ts ^. Timestamp.nanos)
    }


timespecToTimestamp :: SystemTime -> Timestamp.Timestamp
timespecToTimestamp ts =
  defMessage
    & Timestamp.seconds .~ systemSeconds ts
    & Timestamp.nanos .~ fromIntegral (systemNanoseconds ts)


-- | A Retry Policy is a collection of attributes that instructs the Temporal Server how to retry a failure of a Workflow Execution or an Activity Task Execution.
data RetryPolicy = RetryPolicy
  { initialInterval :: Duration
  -- ^ Amount of time that must elapse before the first retry occurs.
  --
  -- The default value is 1 second.
  --
  -- Use case: This is used as the base interval time for the Backoff Coefficient to multiply against.
  , backoffCoefficient :: Double
  -- ^ The value dictates how much the retry interval increases.
  --
  -- The default value is 2.0.
  --
  -- A backoff coefficient of 1.0 means that the retry interval always equals the Initial Interval.
  --
  -- Use case: Use this attribute to increase the interval between retries. By having a backoff coefficient greater than 1.0, the first few retries happen relatively
  -- quickly to overcome intermittent failures, but subsequent retries happen farther and farther apart to account for longer outages. Use the Maximum Interval attribute
  -- to prevent the coefficient from increasing the retry interval too much.
  , maximumInterval :: Maybe Duration
  -- ^ Specifies the maximum interval between retries.
  --
  -- The default value is 100x of the Initial Interval.
  --
  -- Use case: This attribute is useful for Backoff Coefficients that are greater than 1.0 because it prevents the retry interval from growing infinitely.
  , maximumAttempts :: Int32
  -- ^ Specifies the maximum number of execution attempts that can be made in the presence of failures.
  --
  -- The default is unlimited.
  --
  -- If this limit is exceeded, the execution fails without retrying again. When this happens an error is returned.
  --
  -- * Setting the value to 0 also means unlimited.
  -- * Setting the value to 1 means a single execution attempt and no retries.
  -- * Setting the value to a negative integer results in an error when the execution is invoked.
  --
  -- Use case: Use this attribute to ensure that retries do not
  -- continue indefinitely. However, if your use case is such that
  -- late is wrong and it's better to just abort if things take too
  -- long, consider the Workflow Execution Timeout (in the case of
  -- Workflows) or Schedule-To-Close Timeout (in the case of
  -- Activities) to limit the total duration of retries instead of
  -- using this attribute.
  , nonRetryableErrorTypes :: Vector Text
  -- ^ Description: Specifies errors that shouldn't be retried.
  --
  -- The default is an empty vector.
  -- Errors are matched against the @type@ field of the Application Failure.
  -- If one of those errors occurs, a retry does not occur.
  }
  deriving stock (Show, Eq, Generic, Lift, Data)


instance ToJSON RetryPolicy


instance FromJSON RetryPolicy


errorType :: Typeable e => proxy e -> Text
errorType = T.pack . show . typeRep


retryPolicyToProto :: RetryPolicy -> Message.RetryPolicy
retryPolicyToProto (RetryPolicy initialInterval backoffCoefficient maximumInterval maximumAttempts nonRetryableErrorTypes) =
  -- Using a full destructure here to make sure we don't miss any new fields later. ^
  defMessage
    & Message.initialInterval .~ durationToProto initialInterval
    & Message.backoffCoefficient .~ backoffCoefficient
    & Message.maybe'maximumInterval .~ fmap durationToProto maximumInterval
    & Message.maximumAttempts .~ maximumAttempts
    & Message.vec'nonRetryableErrorTypes .~ nonRetryableErrorTypes


retryPolicyFromProto :: Message.RetryPolicy -> RetryPolicy
retryPolicyFromProto p =
  RetryPolicy
    { initialInterval = durationFromProto (p ^. Message.initialInterval)
    , backoffCoefficient = p ^. Message.backoffCoefficient
    , maximumInterval = fmap durationFromProto (p ^. Message.maybe'maximumInterval)
    , maximumAttempts = p ^. Message.maximumAttempts
    , nonRetryableErrorTypes = p ^. Message.vec'nonRetryableErrorTypes
    }


data RetryState
  = RetryStateUnspecified
  | RetryStateInProgress
  | RetryStateNonRetryableFailure
  | RetryStateTimeout
  | RetryStateMaximumAttemptsReached
  | RetryStateRetryPolicyNotSet
  | RetryStateInternalServerError
  | RetryStateCancelRequested
  deriving stock (Show, Eq)


retryStateFromProto :: Workflow.RetryState -> RetryState
retryStateFromProto = \case
  Workflow.RETRY_STATE_UNSPECIFIED -> RetryStateUnspecified
  Workflow.RETRY_STATE_IN_PROGRESS -> RetryStateInProgress
  Workflow.RETRY_STATE_NON_RETRYABLE_FAILURE -> RetryStateNonRetryableFailure
  Workflow.RETRY_STATE_TIMEOUT -> RetryStateTimeout
  Workflow.RETRY_STATE_MAXIMUM_ATTEMPTS_REACHED -> RetryStateMaximumAttemptsReached
  Workflow.RETRY_STATE_RETRY_POLICY_NOT_SET -> RetryStateRetryPolicyNotSet
  Workflow.RETRY_STATE_INTERNAL_SERVER_ERROR -> RetryStateInternalServerError
  Workflow.RETRY_STATE_CANCEL_REQUESTED -> RetryStateCancelRequested
  (Workflow.RetryState'Unrecognized _) -> error "retryStateFromProto: invalid retry state"


{- | A Workflow Id Reuse Policy determines whether a Workflow Execution is allowed to spawn with a particular Workflow Id,
if that Workflow Id has been used with a previous, and now Closed, Workflow Execution.

It is not possible for a new Workflow Execution to spawn with the same Workflow Id as another Open Workflow Execution,
regardless of the Workflow Id Reuse Policy. In some cases, an attempt to spawn a Workflow Execution with a Workflow Id
that is the same as the Id of a currently Open Workflow Execution results in a Workflow execution already started error.
-}
data WorkflowIdReusePolicy
  = WorkflowIdReusePolicyUnspecified
  | -- | The Workflow Execution is allowed to exist regardless of the Closed status of a previous Workflow Execution with
    -- the same Workflow Id. This is currently the default policy, if one is not specified.
    -- Use this when it is OK to have a Workflow Execution with the same Workflow Id as a previous,
    -- but now Closed, Workflow Execution.
    WorkflowIdReusePolicyAllowDuplicate
  | -- | The Workflow Execution is allowed to exist only if a previous Workflow Execution with the same Workflow Id does not
    -- have a Completed status. Use this policy when there is a need to re-execute a Failed, Timed Out, Terminated or
    -- Cancelled Workflow Execution and guarantee that the Completed Workflow Execution will not be re-executed.
    WorkflowIdReusePolicyAllowDuplicateFailedOnly
  | -- | The Workflow Execution cannot exist if a previous Workflow Execution has the same Workflow Id, regardless of the
    -- Closed status. Use this when there can only be one Workflow Execution per Workflow Id within a Namespace for
    -- the given retention period.
    WorkflowIdReusePolicyRejectDuplicate
  | -- | Specifies that if a Workflow Execution with the same Workflow Id is already running,
    -- it should be terminated and a new Workflow Execution with the same Workflow Id should be started.
    -- This policy allows for only one Workflow Execution with a specific Workflow Id to be running at any given time.
    WorkflowIdReusePolicyTerminateIfRunning
  deriving stock (Eq, Ord, Read, Show, Enum, Bounded, Generic, Lift, Data)


{- | A Workflow Id Conflict Policy determines how to resolve a conflict when spawning
a new Workflow Execution with a particular `Workflow.RunId` used by an existing Open Workflow Execution.

By default, this results in a Workflow execution already started error.
-}
data WorkflowIdConflictPolicy
  = WorkflowIdConflictPolicyUnspecified
  | -- | Prevents the Workflow Execution from spawning and returns a Workflow execution already started error.
    -- This is the default policy, if one isn't specified.
    WorkflowIdConflictPolicyFail
  | -- | Prevents the Workflow Execution from spawning and returns a successful response
    -- with the Open Workflow Execution's 'RunId'.
    WorkflowIdConflictPolicyUseExisting
  | -- | Terminates the Open Workflow Execution then spawns the new Workflow Execution
    -- with the same 'WorkflowId'.
    WorkflowIdConflictPolicyTerminateExisting
  deriving stock (Eq, Ord, Read, Show, Enum, Bounded, Generic, Lift, Data)


instance ToJSON WorkflowIdConflictPolicy


instance FromJSON WorkflowIdConflictPolicy


instance ToJSON WorkflowIdReusePolicy


instance FromJSON WorkflowIdReusePolicy


-- | Convert a 'WorkflowIdConflictPolicy' to its protobuf representation.
workflowIdConflictPolicyToProto :: WorkflowIdConflictPolicy -> Workflow.WorkflowIdConflictPolicy
workflowIdConflictPolicyToProto = \case
  WorkflowIdConflictPolicyUnspecified -> Workflow.WORKFLOW_ID_CONFLICT_POLICY_UNSPECIFIED
  WorkflowIdConflictPolicyFail -> Workflow.WORKFLOW_ID_CONFLICT_POLICY_FAIL
  WorkflowIdConflictPolicyUseExisting -> Workflow.WORKFLOW_ID_CONFLICT_POLICY_USE_EXISTING
  WorkflowIdConflictPolicyTerminateExisting -> Workflow.WORKFLOW_ID_CONFLICT_POLICY_TERMINATE_EXISTING


-- | Convert a protobuf 'Workflow.WorkflowIdConflictPolicy' to its Haskell representation.
workflowIdConflictPolicyFromProto :: Workflow.WorkflowIdConflictPolicy -> WorkflowIdConflictPolicy
workflowIdConflictPolicyFromProto = \case
  Workflow.WORKFLOW_ID_CONFLICT_POLICY_UNSPECIFIED -> WorkflowIdConflictPolicyUnspecified
  Workflow.WORKFLOW_ID_CONFLICT_POLICY_FAIL -> WorkflowIdConflictPolicyFail
  Workflow.WORKFLOW_ID_CONFLICT_POLICY_USE_EXISTING -> WorkflowIdConflictPolicyUseExisting
  Workflow.WORKFLOW_ID_CONFLICT_POLICY_TERMINATE_EXISTING -> WorkflowIdConflictPolicyTerminateExisting
  (Workflow.WorkflowIdConflictPolicy'Unrecognized _) -> WorkflowIdConflictPolicyUnspecified


-- | Convert a 'WorkflowIdReusePolicy' to its protobuf representation.
workflowIdReusePolicyToProto :: WorkflowIdReusePolicy -> Workflow.WorkflowIdReusePolicy
workflowIdReusePolicyToProto = \case
  WorkflowIdReusePolicyUnspecified -> Workflow.WORKFLOW_ID_REUSE_POLICY_UNSPECIFIED
  WorkflowIdReusePolicyAllowDuplicate -> Workflow.WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE
  WorkflowIdReusePolicyAllowDuplicateFailedOnly -> Workflow.WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
  WorkflowIdReusePolicyRejectDuplicate -> Workflow.WORKFLOW_ID_REUSE_POLICY_REJECT_DUPLICATE
  WorkflowIdReusePolicyTerminateIfRunning -> Workflow.WORKFLOW_ID_REUSE_POLICY_TERMINATE_IF_RUNNING


memoAttributesToProto :: Map.Map Text Message.Payload -> Message.Memo
memoAttributesToProto memoAttrs = defMessage & Message.fields .~ memoAttrs


memoAttributesFromProto :: Message.Memo -> Map.Map Text Message.Payload
memoAttributesFromProto = view Message.fields


headerToProto :: Map.Map Text Message.Payload -> Message.Header
headerToProto header = defMessage & Message.fields .~ header


headerFromProto :: Message.Header -> Map.Map Text Message.Payload
headerFromProto = view Message.fields


data ParentInfo = ParentInfo
  { parentNamespace :: Namespace
  , parentRunId :: RunId
  , parentWorkflowId :: WorkflowId
  }
  deriving stock (Show, Eq, Generic)


newtype Sequence = Sequence {rawSequence :: Word32}
  deriving stock (Eq, Ord, Show)
  deriving newtype (Hashable, Enum, Num)


class FunctionHoist (args :: [Type]) where
  hoistFn :: (forall x. m x -> n x) -> Proxy args -> Proxy result -> (args :->: m result) -> (args :->: n result)


instance FunctionHoist '[] where
  hoistFn trans _ _ = trans


instance FunctionHoist args => FunctionHoist (a ': args) where
  hoistFn trans _ res f = hoistFn trans (Proxy @args) res . f


-- | A specalized version of 'hoist' that allows you to change the end result functor of a given function.
hoist
  :: forall m n f
   . (f ~ (ArgsOf f :->: m (ResultOf m f)), FunctionHoist (ArgsOf f))
  => (forall x. m x -> n x)
  -> f
  -> (ArgsOf f :->: n (ResultOf m f))
hoist trans = hoistFn trans (Proxy @(ArgsOf f)) (Proxy @(ResultOf m f))


nonEmptyString :: Text -> Maybe Text
nonEmptyString t = if T.null t then Nothing else Just t


convertToProtoMemo :: Map Text Payload -> Message.Memo
convertToProtoMemo m = defMessage & Message.fields .~ fmap convertToProtoPayload m


convertFromProtoMemo :: Message.Memo -> Map Text Payload
convertFromProtoMemo m = fmap convertFromProtoPayload (m ^. Message.fields)


data TimeoutOptions = TimeoutOptions
  { executionTimeout :: Maybe Duration
  -- ^ A Workflow Execution Timeout is the maximum time that a Workflow Execution can be executing (have an Open status) including retries and any usage of Continue As New.
  --
  -- The default value is ∞ (infinite). If this timeout is reached, the Workflow Execution changes to a Timed Out status. This timeout is different from the Workflow Run Timeout. This timeout is most commonly used for stopping the execution of a Temporal Cron Job after a certain amount of time has passed.
  , runTimeout :: Maybe Duration
  -- ^ A Workflow Run Timeout is the maximum amount of time that a single Workflow Run is restricted to.
  --
  -- The default is set to the same value as the Workflow Execution Timeout. This timeout is most commonly used to limit the execution time of a single Temporal Cron Job Execution.
  --
  -- If the Workflow Run Timeout is reached, the Workflow Execution is Terminated.
  , taskTimeout :: Maybe Duration
  -- ^ A Workflow Task Timeout is the maximum amount of time allowed for a Worker to execute a Workflow Task after the Worker has pulled that Workflow Task from the Task Queue.
  --
  -- The default value is 10 seconds. This timeout is primarily available to recognize whether a Worker has gone down so that the Workflow Execution can be recovered on a different Worker. The main reason for increasing the default value would be to accommodate a Workflow Execution that has a very long Workflow Execution History that could take longer than 10 seconds for the Worker to load.
  }
  deriving stock (Show, Eq, Lift, Data)


{- |
Default options for timeouts.

@
'TimeoutOptions'
  { executionTimeout = 'Nothing'
  , runTimeout = 'Nothing'
  , taskTimeout = 'Nothing'
  }
@
-}
defaultTimeoutOptions :: TimeoutOptions
defaultTimeoutOptions =
  TimeoutOptions
    { executionTimeout = Nothing
    , runTimeout = Nothing
    , taskTimeout = Nothing
    }
