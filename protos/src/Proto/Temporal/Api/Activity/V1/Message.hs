{- This file was auto-generated from temporal/api/activity/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Activity.V1.Message (
        ActivityExecutionInfo(), ActivityExecutionListInfo(),
        ActivityExecutionOutcome(), ActivityExecutionOutcome'Value(..),
        _ActivityExecutionOutcome'Result,
        _ActivityExecutionOutcome'Failure, ActivityOptions(),
        CallbackInfo(), CallbackInfo'ActivityClosed(),
        CallbackInfo'Trigger(), CallbackInfo'Trigger'Variant(..),
        _CallbackInfo'Trigger'ActivityClosed
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes as Data.ProtoLens.Encoding.Bytes
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing as Data.ProtoLens.Encoding.Growing
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2 as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8 as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Temporal.Api.Callback.V1.Message
import qualified Proto.Temporal.Api.Common.V1.Message
import qualified Proto.Temporal.Api.Deployment.V1.Message
import qualified Proto.Temporal.Api.Enums.V1.Activity
import qualified Proto.Temporal.Api.Enums.V1.Workflow
import qualified Proto.Temporal.Api.Failure.V1.Message
import qualified Proto.Temporal.Api.Nexus.V1.Message
import qualified Proto.Temporal.Api.Sdk.V1.UserMetadata
import qualified Proto.Temporal.Api.Taskqueue.V1.Message
{- | Fields :
     
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.activityId' @:: Lens' ActivityExecutionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.runId' @:: Lens' ActivityExecutionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.activityType' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Common.V1.Message.ActivityType@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'activityType' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ActivityType)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.status' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Enums.V1.Activity.ActivityExecutionStatus@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.runState' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Enums.V1.Workflow.PendingActivityState@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.taskQueue' @:: Lens' ActivityExecutionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.scheduleToCloseTimeout' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'scheduleToCloseTimeout' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.scheduleToStartTimeout' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'scheduleToStartTimeout' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.startToCloseTimeout' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'startToCloseTimeout' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.heartbeatTimeout' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'heartbeatTimeout' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.retryPolicy' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Common.V1.Message.RetryPolicy@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'retryPolicy' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.heartbeatDetails' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'heartbeatDetails' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.lastHeartbeatTime' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'lastHeartbeatTime' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.lastStartedTime' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'lastStartedTime' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.attempt' @:: Lens' ActivityExecutionInfo Data.Int.Int32@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.executionDuration' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'executionDuration' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.scheduleTime' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'scheduleTime' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.expirationTime' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'expirationTime' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.closeTime' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'closeTime' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.lastFailure' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Failure.V1.Message.Failure@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'lastFailure' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.lastWorkerIdentity' @:: Lens' ActivityExecutionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.currentRetryInterval' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'currentRetryInterval' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.lastAttemptCompleteTime' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'lastAttemptCompleteTime' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.nextAttemptScheduleTime' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'nextAttemptScheduleTime' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.lastDeploymentVersion' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'lastDeploymentVersion' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.priority' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Common.V1.Message.Priority@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'priority' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.stateTransitionCount' @:: Lens' ActivityExecutionInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.stateSizeBytes' @:: Lens' ActivityExecutionInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.searchAttributes' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Common.V1.Message.SearchAttributes@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'searchAttributes' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.header' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Common.V1.Message.Header@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'header' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.userMetadata' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'userMetadata' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.canceledReason' @:: Lens' ActivityExecutionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.links' @:: Lens' ActivityExecutionInfo [Proto.Temporal.Api.Common.V1.Message.Link]@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.vec'links' @:: Lens' ActivityExecutionInfo (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Link)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.totalHeartbeatCount' @:: Lens' ActivityExecutionInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.sdkName' @:: Lens' ActivityExecutionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.sdkVersion' @:: Lens' ActivityExecutionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.startDelay' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'startDelay' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.executionTime' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'executionTime' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.propagatedNexusSerializationContext' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'propagatedNexusSerializationContext' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.eagerExecutionAccepted' @:: Lens' ActivityExecutionInfo Prelude.Bool@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.startedByPrincipal' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Common.V1.Message.ResolvedPrincipal@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'startedByPrincipal' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ResolvedPrincipal)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.closedByPrincipal' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Common.V1.Message.ResolvedPrincipal@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'closedByPrincipal' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ResolvedPrincipal)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.lastWorkerPrincipal' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Common.V1.Message.ResolvedPrincipal@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'lastWorkerPrincipal' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ResolvedPrincipal)@ -}
data ActivityExecutionInfo
  = ActivityExecutionInfo'_constructor {_ActivityExecutionInfo'activityId :: !Data.Text.Text,
                                        _ActivityExecutionInfo'runId :: !Data.Text.Text,
                                        _ActivityExecutionInfo'activityType :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ActivityType),
                                        _ActivityExecutionInfo'status :: !Proto.Temporal.Api.Enums.V1.Activity.ActivityExecutionStatus,
                                        _ActivityExecutionInfo'runState :: !Proto.Temporal.Api.Enums.V1.Workflow.PendingActivityState,
                                        _ActivityExecutionInfo'taskQueue :: !Data.Text.Text,
                                        _ActivityExecutionInfo'scheduleToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _ActivityExecutionInfo'scheduleToStartTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _ActivityExecutionInfo'startToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _ActivityExecutionInfo'heartbeatTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _ActivityExecutionInfo'retryPolicy :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy),
                                        _ActivityExecutionInfo'heartbeatDetails :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads),
                                        _ActivityExecutionInfo'lastHeartbeatTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                        _ActivityExecutionInfo'lastStartedTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                        _ActivityExecutionInfo'attempt :: !Data.Int.Int32,
                                        _ActivityExecutionInfo'executionDuration :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _ActivityExecutionInfo'scheduleTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                        _ActivityExecutionInfo'expirationTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                        _ActivityExecutionInfo'closeTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                        _ActivityExecutionInfo'lastFailure :: !(Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure),
                                        _ActivityExecutionInfo'lastWorkerIdentity :: !Data.Text.Text,
                                        _ActivityExecutionInfo'currentRetryInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _ActivityExecutionInfo'lastAttemptCompleteTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                        _ActivityExecutionInfo'nextAttemptScheduleTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                        _ActivityExecutionInfo'lastDeploymentVersion :: !(Prelude.Maybe Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion),
                                        _ActivityExecutionInfo'priority :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority),
                                        _ActivityExecutionInfo'stateTransitionCount :: !Data.Int.Int64,
                                        _ActivityExecutionInfo'stateSizeBytes :: !Data.Int.Int64,
                                        _ActivityExecutionInfo'searchAttributes :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes),
                                        _ActivityExecutionInfo'header :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header),
                                        _ActivityExecutionInfo'userMetadata :: !(Prelude.Maybe Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata),
                                        _ActivityExecutionInfo'canceledReason :: !Data.Text.Text,
                                        _ActivityExecutionInfo'links :: !(Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Link),
                                        _ActivityExecutionInfo'totalHeartbeatCount :: !Data.Int.Int64,
                                        _ActivityExecutionInfo'sdkName :: !Data.Text.Text,
                                        _ActivityExecutionInfo'sdkVersion :: !Data.Text.Text,
                                        _ActivityExecutionInfo'startDelay :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _ActivityExecutionInfo'executionTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                        _ActivityExecutionInfo'propagatedNexusSerializationContext :: !(Prelude.Maybe Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext),
                                        _ActivityExecutionInfo'eagerExecutionAccepted :: !Prelude.Bool,
                                        _ActivityExecutionInfo'startedByPrincipal :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ResolvedPrincipal),
                                        _ActivityExecutionInfo'closedByPrincipal :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ResolvedPrincipal),
                                        _ActivityExecutionInfo'lastWorkerPrincipal :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ResolvedPrincipal),
                                        _ActivityExecutionInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ActivityExecutionInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "activityId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'activityId
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'activityId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "runId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'runId
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'runId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "activityType" Proto.Temporal.Api.Common.V1.Message.ActivityType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'activityType
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'activityType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'activityType" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ActivityType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'activityType
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'activityType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "status" Proto.Temporal.Api.Enums.V1.Activity.ActivityExecutionStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'status
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "runState" Proto.Temporal.Api.Enums.V1.Workflow.PendingActivityState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'runState
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'runState = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "taskQueue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'taskQueue
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'taskQueue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "scheduleToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'scheduleToCloseTimeout
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'scheduleToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'scheduleToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'scheduleToCloseTimeout
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'scheduleToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "scheduleToStartTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'scheduleToStartTimeout
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'scheduleToStartTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'scheduleToStartTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'scheduleToStartTimeout
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'scheduleToStartTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "startToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'startToCloseTimeout
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'startToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'startToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'startToCloseTimeout
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'startToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "heartbeatTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'heartbeatTimeout
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'heartbeatTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'heartbeatTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'heartbeatTimeout
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'heartbeatTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "retryPolicy" Proto.Temporal.Api.Common.V1.Message.RetryPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'retryPolicy
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'retryPolicy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'retryPolicy" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'retryPolicy
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'retryPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "heartbeatDetails" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'heartbeatDetails
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'heartbeatDetails = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'heartbeatDetails" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'heartbeatDetails
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'heartbeatDetails = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "lastHeartbeatTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastHeartbeatTime
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'lastHeartbeatTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'lastHeartbeatTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastHeartbeatTime
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'lastHeartbeatTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "lastStartedTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastStartedTime
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'lastStartedTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'lastStartedTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastStartedTime
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'lastStartedTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "attempt" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'attempt
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'attempt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "executionDuration" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'executionDuration
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'executionDuration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'executionDuration" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'executionDuration
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'executionDuration = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "scheduleTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'scheduleTime
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'scheduleTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'scheduleTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'scheduleTime
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'scheduleTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "expirationTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'expirationTime
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'expirationTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'expirationTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'expirationTime
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'expirationTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "closeTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'closeTime
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'closeTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'closeTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'closeTime
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'closeTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "lastFailure" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastFailure
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'lastFailure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'lastFailure" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastFailure
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'lastFailure = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "lastWorkerIdentity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastWorkerIdentity
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'lastWorkerIdentity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "currentRetryInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'currentRetryInterval
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'currentRetryInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'currentRetryInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'currentRetryInterval
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'currentRetryInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "lastAttemptCompleteTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastAttemptCompleteTime
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'lastAttemptCompleteTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'lastAttemptCompleteTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastAttemptCompleteTime
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'lastAttemptCompleteTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "nextAttemptScheduleTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'nextAttemptScheduleTime
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'nextAttemptScheduleTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'nextAttemptScheduleTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'nextAttemptScheduleTime
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'nextAttemptScheduleTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "lastDeploymentVersion" Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastDeploymentVersion
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'lastDeploymentVersion = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'lastDeploymentVersion" (Prelude.Maybe Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastDeploymentVersion
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'lastDeploymentVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "priority" Proto.Temporal.Api.Common.V1.Message.Priority where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'priority
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'priority = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'priority" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'priority
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'priority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "stateTransitionCount" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'stateTransitionCount
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'stateTransitionCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "stateSizeBytes" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'stateSizeBytes
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'stateSizeBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "searchAttributes" Proto.Temporal.Api.Common.V1.Message.SearchAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'searchAttributes
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'searchAttributes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'searchAttributes" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'searchAttributes
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'searchAttributes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "header" Proto.Temporal.Api.Common.V1.Message.Header where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'header
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'header = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'header" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'header
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'header = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "userMetadata" Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'userMetadata
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'userMetadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'userMetadata" (Prelude.Maybe Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'userMetadata
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'userMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "canceledReason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'canceledReason
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'canceledReason = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "links" [Proto.Temporal.Api.Common.V1.Message.Link] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'links
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'links = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "vec'links" (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Link) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'links
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'links = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "totalHeartbeatCount" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'totalHeartbeatCount
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'totalHeartbeatCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "sdkName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'sdkName
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'sdkName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "sdkVersion" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'sdkVersion
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'sdkVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "startDelay" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'startDelay
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'startDelay = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'startDelay" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'startDelay
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'startDelay = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "executionTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'executionTime
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'executionTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'executionTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'executionTime
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'executionTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "propagatedNexusSerializationContext" Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'propagatedNexusSerializationContext
           (\ x__ y__
              -> x__
                   {_ActivityExecutionInfo'propagatedNexusSerializationContext = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'propagatedNexusSerializationContext" (Prelude.Maybe Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'propagatedNexusSerializationContext
           (\ x__ y__
              -> x__
                   {_ActivityExecutionInfo'propagatedNexusSerializationContext = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "eagerExecutionAccepted" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'eagerExecutionAccepted
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'eagerExecutionAccepted = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "startedByPrincipal" Proto.Temporal.Api.Common.V1.Message.ResolvedPrincipal where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'startedByPrincipal
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'startedByPrincipal = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'startedByPrincipal" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ResolvedPrincipal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'startedByPrincipal
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'startedByPrincipal = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "closedByPrincipal" Proto.Temporal.Api.Common.V1.Message.ResolvedPrincipal where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'closedByPrincipal
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'closedByPrincipal = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'closedByPrincipal" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ResolvedPrincipal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'closedByPrincipal
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'closedByPrincipal = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "lastWorkerPrincipal" Proto.Temporal.Api.Common.V1.Message.ResolvedPrincipal where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastWorkerPrincipal
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'lastWorkerPrincipal = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'lastWorkerPrincipal" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ResolvedPrincipal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastWorkerPrincipal
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'lastWorkerPrincipal = y__}))
        Prelude.id
instance Data.ProtoLens.Message ActivityExecutionInfo where
  messageName _
    = Data.Text.pack "temporal.api.activity.v1.ActivityExecutionInfo"
  packedMessageDescriptor _
    = "\n\
      \\NAKActivityExecutionInfo\DC2\US\n\
      \\vactivity_id\CAN\SOH \SOH(\tR\n\
      \activityId\DC2\NAK\n\
      \\ACKrun_id\CAN\STX \SOH(\tR\ENQrunId\DC2I\n\
      \\ractivity_type\CAN\ETX \SOH(\v2$.temporal.api.common.v1.ActivityTypeR\factivityType\DC2F\n\
      \\ACKstatus\CAN\EOT \SOH(\SO2..temporal.api.enums.v1.ActivityExecutionStatusR\ACKstatus\DC2H\n\
      \\trun_state\CAN\ENQ \SOH(\SO2+.temporal.api.enums.v1.PendingActivityStateR\brunState\DC2\GS\n\
      \\n\
      \task_queue\CAN\ACK \SOH(\tR\ttaskQueue\DC2T\n\
      \\EMschedule_to_close_timeout\CAN\a \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2T\n\
      \\EMschedule_to_start_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout\DC2N\n\
      \\SYNstart_to_close_timeout\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\DC2F\n\
      \\DC1heartbeat_timeout\CAN\n\
      \ \SOH(\v2\EM.google.protobuf.DurationR\DLEheartbeatTimeout\DC2F\n\
      \\fretry_policy\CAN\v \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2M\n\
      \\DC1heartbeat_details\CAN\f \SOH(\v2 .temporal.api.common.v1.PayloadsR\DLEheartbeatDetails\DC2J\n\
      \\DC3last_heartbeat_time\CAN\r \SOH(\v2\SUB.google.protobuf.TimestampR\DC1lastHeartbeatTime\DC2F\n\
      \\DC1last_started_time\CAN\SO \SOH(\v2\SUB.google.protobuf.TimestampR\SIlastStartedTime\DC2\CAN\n\
      \\aattempt\CAN\SI \SOH(\ENQR\aattempt\DC2H\n\
      \\DC2execution_duration\CAN\DLE \SOH(\v2\EM.google.protobuf.DurationR\DC1executionDuration\DC2?\n\
      \\rschedule_time\CAN\DC1 \SOH(\v2\SUB.google.protobuf.TimestampR\fscheduleTime\DC2C\n\
      \\SIexpiration_time\CAN\DC2 \SOH(\v2\SUB.google.protobuf.TimestampR\SOexpirationTime\DC29\n\
      \\n\
      \close_time\CAN\DC3 \SOH(\v2\SUB.google.protobuf.TimestampR\tcloseTime\DC2C\n\
      \\flast_failure\CAN\DC4 \SOH(\v2 .temporal.api.failure.v1.FailureR\vlastFailure\DC20\n\
      \\DC4last_worker_identity\CAN\NAK \SOH(\tR\DC2lastWorkerIdentity\DC2O\n\
      \\SYNcurrent_retry_interval\CAN\SYN \SOH(\v2\EM.google.protobuf.DurationR\DC4currentRetryInterval\DC2W\n\
      \\SUBlast_attempt_complete_time\CAN\ETB \SOH(\v2\SUB.google.protobuf.TimestampR\ETBlastAttemptCompleteTime\DC2W\n\
      \\SUBnext_attempt_schedule_time\CAN\CAN \SOH(\v2\SUB.google.protobuf.TimestampR\ETBnextAttemptScheduleTime\DC2k\n\
      \\ETBlast_deployment_version\CAN\EM \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\NAKlastDeploymentVersion\DC2<\n\
      \\bpriority\CAN\SUB \SOH(\v2 .temporal.api.common.v1.PriorityR\bpriority\DC24\n\
      \\SYNstate_transition_count\CAN\ESC \SOH(\ETXR\DC4stateTransitionCount\DC2(\n\
      \\DLEstate_size_bytes\CAN\FS \SOH(\ETXR\SOstateSizeBytes\DC2U\n\
      \\DC1search_attributes\CAN\GS \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC26\n\
      \\ACKheader\CAN\RS \SOH(\v2\RS.temporal.api.common.v1.HeaderR\ACKheader\DC2F\n\
      \\ruser_metadata\CAN\US \SOH(\v2!.temporal.api.sdk.v1.UserMetadataR\fuserMetadata\DC2'\n\
      \\SIcanceled_reason\CAN  \SOH(\tR\SOcanceledReason\DC22\n\
      \\ENQlinks\CAN! \ETX(\v2\FS.temporal.api.common.v1.LinkR\ENQlinks\DC22\n\
      \\NAKtotal_heartbeat_count\CAN\" \SOH(\ETXR\DC3totalHeartbeatCount\DC2\EM\n\
      \\bsdk_name\CAN# \SOH(\tR\asdkName\DC2\US\n\
      \\vsdk_version\CAN$ \SOH(\tR\n\
      \sdkVersion\DC2:\n\
      \\vstart_delay\CAN% \SOH(\v2\EM.google.protobuf.DurationR\n\
      \startDelay\DC2A\n\
      \\SOexecution_time\CAN& \SOH(\v2\SUB.google.protobuf.TimestampR\rexecutionTime\DC2\138\SOH\n\
      \&propagated_nexus_serialization_context\CAN' \SOH(\v25.temporal.api.nexus.v1.PropagatedSerializationContextR#propagatedNexusSerializationContext\DC28\n\
      \\CANeager_execution_accepted\CAN( \SOH(\bR\SYNeagerExecutionAccepted\DC2[\n\
      \\DC4started_by_principal\CAN) \SOH(\v2).temporal.api.common.v1.ResolvedPrincipalR\DC2startedByPrincipal\DC2Y\n\
      \\DC3closed_by_principal\CAN* \SOH(\v2).temporal.api.common.v1.ResolvedPrincipalR\DC1closedByPrincipal\DC2]\n\
      \\NAKlast_worker_principal\CAN+ \SOH(\v2).temporal.api.common.v1.ResolvedPrincipalR\DC3lastWorkerPrincipal"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        activityId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"activityId")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        runId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "run_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"runId")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        activityType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.ActivityType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'activityType")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Activity.ActivityExecutionStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        runState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "run_state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Workflow.PendingActivityState)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"runState")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        taskQueue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"taskQueue")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        scheduleToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        scheduleToStartTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_start_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToStartTimeout")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        startToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        heartbeatTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heartbeat_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heartbeatTimeout")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        retryPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.RetryPolicy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'retryPolicy")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        heartbeatDetails__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heartbeat_details"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payloads)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heartbeatDetails")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        lastHeartbeatTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_heartbeat_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastHeartbeatTime")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        lastStartedTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_started_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastStartedTime")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        attempt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attempt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"attempt")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        executionDuration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "execution_duration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'executionDuration")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        scheduleTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleTime")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        expirationTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expiration_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'expirationTime")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        closeTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "close_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'closeTime")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        lastFailure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastFailure")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        lastWorkerIdentity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_worker_identity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lastWorkerIdentity")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        currentRetryInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_retry_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'currentRetryInterval")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        lastAttemptCompleteTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_attempt_complete_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastAttemptCompleteTime")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        nextAttemptScheduleTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "next_attempt_schedule_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nextAttemptScheduleTime")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        lastDeploymentVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_deployment_version"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastDeploymentVersion")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        priority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "priority"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Priority)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'priority")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        stateTransitionCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state_transition_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stateTransitionCount")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        stateSizeBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state_size_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stateSizeBytes")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        searchAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "search_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.SearchAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'searchAttributes")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Header)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'header")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        userMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "user_metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'userMetadata")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        canceledReason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "canceled_reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"canceledReason")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        links__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "links"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Link)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"links")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        totalHeartbeatCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_heartbeat_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalHeartbeatCount")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        sdkName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sdk_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"sdkName")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        sdkVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sdk_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sdkVersion")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        startDelay__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_delay"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startDelay")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        executionTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "execution_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'executionTime")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        propagatedNexusSerializationContext__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "propagated_nexus_serialization_context"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'propagatedNexusSerializationContext")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        eagerExecutionAccepted__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "eager_execution_accepted"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"eagerExecutionAccepted")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        startedByPrincipal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "started_by_principal"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.ResolvedPrincipal)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startedByPrincipal")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        closedByPrincipal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "closed_by_principal"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.ResolvedPrincipal)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'closedByPrincipal")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        lastWorkerPrincipal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_worker_principal"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.ResolvedPrincipal)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastWorkerPrincipal")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, activityId__field_descriptor),
           (Data.ProtoLens.Tag 2, runId__field_descriptor),
           (Data.ProtoLens.Tag 3, activityType__field_descriptor),
           (Data.ProtoLens.Tag 4, status__field_descriptor),
           (Data.ProtoLens.Tag 5, runState__field_descriptor),
           (Data.ProtoLens.Tag 6, taskQueue__field_descriptor),
           (Data.ProtoLens.Tag 7, scheduleToCloseTimeout__field_descriptor),
           (Data.ProtoLens.Tag 8, scheduleToStartTimeout__field_descriptor),
           (Data.ProtoLens.Tag 9, startToCloseTimeout__field_descriptor),
           (Data.ProtoLens.Tag 10, heartbeatTimeout__field_descriptor),
           (Data.ProtoLens.Tag 11, retryPolicy__field_descriptor),
           (Data.ProtoLens.Tag 12, heartbeatDetails__field_descriptor),
           (Data.ProtoLens.Tag 13, lastHeartbeatTime__field_descriptor),
           (Data.ProtoLens.Tag 14, lastStartedTime__field_descriptor),
           (Data.ProtoLens.Tag 15, attempt__field_descriptor),
           (Data.ProtoLens.Tag 16, executionDuration__field_descriptor),
           (Data.ProtoLens.Tag 17, scheduleTime__field_descriptor),
           (Data.ProtoLens.Tag 18, expirationTime__field_descriptor),
           (Data.ProtoLens.Tag 19, closeTime__field_descriptor),
           (Data.ProtoLens.Tag 20, lastFailure__field_descriptor),
           (Data.ProtoLens.Tag 21, lastWorkerIdentity__field_descriptor),
           (Data.ProtoLens.Tag 22, currentRetryInterval__field_descriptor),
           (Data.ProtoLens.Tag 23, lastAttemptCompleteTime__field_descriptor),
           (Data.ProtoLens.Tag 24, nextAttemptScheduleTime__field_descriptor),
           (Data.ProtoLens.Tag 25, lastDeploymentVersion__field_descriptor),
           (Data.ProtoLens.Tag 26, priority__field_descriptor),
           (Data.ProtoLens.Tag 27, stateTransitionCount__field_descriptor),
           (Data.ProtoLens.Tag 28, stateSizeBytes__field_descriptor),
           (Data.ProtoLens.Tag 29, searchAttributes__field_descriptor),
           (Data.ProtoLens.Tag 30, header__field_descriptor),
           (Data.ProtoLens.Tag 31, userMetadata__field_descriptor),
           (Data.ProtoLens.Tag 32, canceledReason__field_descriptor),
           (Data.ProtoLens.Tag 33, links__field_descriptor),
           (Data.ProtoLens.Tag 34, totalHeartbeatCount__field_descriptor),
           (Data.ProtoLens.Tag 35, sdkName__field_descriptor),
           (Data.ProtoLens.Tag 36, sdkVersion__field_descriptor),
           (Data.ProtoLens.Tag 37, startDelay__field_descriptor),
           (Data.ProtoLens.Tag 38, executionTime__field_descriptor),
           (Data.ProtoLens.Tag 39, 
            propagatedNexusSerializationContext__field_descriptor),
           (Data.ProtoLens.Tag 40, eagerExecutionAccepted__field_descriptor),
           (Data.ProtoLens.Tag 41, startedByPrincipal__field_descriptor),
           (Data.ProtoLens.Tag 42, closedByPrincipal__field_descriptor),
           (Data.ProtoLens.Tag 43, lastWorkerPrincipal__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ActivityExecutionInfo'_unknownFields
        (\ x__ y__ -> x__ {_ActivityExecutionInfo'_unknownFields = y__})
  defMessage
    = ActivityExecutionInfo'_constructor
        {_ActivityExecutionInfo'activityId = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'runId = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'activityType = Prelude.Nothing,
         _ActivityExecutionInfo'status = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'runState = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'taskQueue = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'scheduleToCloseTimeout = Prelude.Nothing,
         _ActivityExecutionInfo'scheduleToStartTimeout = Prelude.Nothing,
         _ActivityExecutionInfo'startToCloseTimeout = Prelude.Nothing,
         _ActivityExecutionInfo'heartbeatTimeout = Prelude.Nothing,
         _ActivityExecutionInfo'retryPolicy = Prelude.Nothing,
         _ActivityExecutionInfo'heartbeatDetails = Prelude.Nothing,
         _ActivityExecutionInfo'lastHeartbeatTime = Prelude.Nothing,
         _ActivityExecutionInfo'lastStartedTime = Prelude.Nothing,
         _ActivityExecutionInfo'attempt = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'executionDuration = Prelude.Nothing,
         _ActivityExecutionInfo'scheduleTime = Prelude.Nothing,
         _ActivityExecutionInfo'expirationTime = Prelude.Nothing,
         _ActivityExecutionInfo'closeTime = Prelude.Nothing,
         _ActivityExecutionInfo'lastFailure = Prelude.Nothing,
         _ActivityExecutionInfo'lastWorkerIdentity = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'currentRetryInterval = Prelude.Nothing,
         _ActivityExecutionInfo'lastAttemptCompleteTime = Prelude.Nothing,
         _ActivityExecutionInfo'nextAttemptScheduleTime = Prelude.Nothing,
         _ActivityExecutionInfo'lastDeploymentVersion = Prelude.Nothing,
         _ActivityExecutionInfo'priority = Prelude.Nothing,
         _ActivityExecutionInfo'stateTransitionCount = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'stateSizeBytes = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'searchAttributes = Prelude.Nothing,
         _ActivityExecutionInfo'header = Prelude.Nothing,
         _ActivityExecutionInfo'userMetadata = Prelude.Nothing,
         _ActivityExecutionInfo'canceledReason = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'links = Data.Vector.Generic.empty,
         _ActivityExecutionInfo'totalHeartbeatCount = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'sdkName = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'sdkVersion = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'startDelay = Prelude.Nothing,
         _ActivityExecutionInfo'executionTime = Prelude.Nothing,
         _ActivityExecutionInfo'propagatedNexusSerializationContext = Prelude.Nothing,
         _ActivityExecutionInfo'eagerExecutionAccepted = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'startedByPrincipal = Prelude.Nothing,
         _ActivityExecutionInfo'closedByPrincipal = Prelude.Nothing,
         _ActivityExecutionInfo'lastWorkerPrincipal = Prelude.Nothing,
         _ActivityExecutionInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ActivityExecutionInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Common.V1.Message.Link
             -> Data.ProtoLens.Encoding.Bytes.Parser ActivityExecutionInfo
        loop x mutable'links
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'links <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'links)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'links") frozen'links x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "activity_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"activityId") y x)
                                  mutable'links
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "run_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"runId") y x)
                                  mutable'links
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "activity_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"activityType") y x)
                                  mutable'links
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                                  mutable'links
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "run_state"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"runState") y x)
                                  mutable'links
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "task_queue"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskQueue") y x)
                                  mutable'links
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToCloseTimeout") y x)
                                  mutable'links
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_start_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToStartTimeout") y x)
                                  mutable'links
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_to_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startToCloseTimeout") y x)
                                  mutable'links
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "heartbeat_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"heartbeatTimeout") y x)
                                  mutable'links
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "retry_policy"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"retryPolicy") y x)
                                  mutable'links
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "heartbeat_details"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"heartbeatDetails") y x)
                                  mutable'links
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_heartbeat_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastHeartbeatTime") y x)
                                  mutable'links
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_started_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastStartedTime") y x)
                                  mutable'links
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "attempt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"attempt") y x)
                                  mutable'links
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "execution_duration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"executionDuration") y x)
                                  mutable'links
                        138
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleTime") y x)
                                  mutable'links
                        146
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "expiration_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"expirationTime") y x)
                                  mutable'links
                        154
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "close_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"closeTime") y x)
                                  mutable'links
                        162
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_failure"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lastFailure") y x)
                                  mutable'links
                        170
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "last_worker_identity"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastWorkerIdentity") y x)
                                  mutable'links
                        178
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "current_retry_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"currentRetryInterval") y x)
                                  mutable'links
                        186
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_attempt_complete_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastAttemptCompleteTime") y x)
                                  mutable'links
                        194
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "next_attempt_schedule_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"nextAttemptScheduleTime") y x)
                                  mutable'links
                        202
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_deployment_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastDeploymentVersion") y x)
                                  mutable'links
                        210
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "priority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"priority") y x)
                                  mutable'links
                        216
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "state_transition_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stateTransitionCount") y x)
                                  mutable'links
                        224
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "state_size_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stateSizeBytes") y x)
                                  mutable'links
                        234
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "search_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"searchAttributes") y x)
                                  mutable'links
                        242
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "header"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"header") y x)
                                  mutable'links
                        250
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "user_metadata"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"userMetadata") y x)
                                  mutable'links
                        258
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "canceled_reason"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"canceledReason") y x)
                                  mutable'links
                        266
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "links"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'links y)
                                loop x v
                        272
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "total_heartbeat_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalHeartbeatCount") y x)
                                  mutable'links
                        282
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "sdk_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sdkName") y x)
                                  mutable'links
                        290
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "sdk_version"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sdkVersion") y x)
                                  mutable'links
                        298
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_delay"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startDelay") y x)
                                  mutable'links
                        306
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "execution_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"executionTime") y x)
                                  mutable'links
                        314
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "propagated_nexus_serialization_context"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"propagatedNexusSerializationContext")
                                     y x)
                                  mutable'links
                        320
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "eager_execution_accepted"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"eagerExecutionAccepted") y x)
                                  mutable'links
                        330
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "started_by_principal"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startedByPrincipal") y x)
                                  mutable'links
                        338
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "closed_by_principal"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"closedByPrincipal") y x)
                                  mutable'links
                        346
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_worker_principal"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastWorkerPrincipal") y x)
                                  mutable'links
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'links
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'links <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'links)
          "ActivityExecutionInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"activityId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"runId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'activityType") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                  Prelude.fromEnum _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"runState") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral)
                                     Prelude.fromEnum _v))
                         ((Data.Monoid.<>)
                            (let
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"taskQueue") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((Prelude..)
                                        (\ bs
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8 _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'scheduleToCloseTimeout")
                                      _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field
                                            @"maybe'scheduleToStartTimeout")
                                         _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field
                                               @"maybe'startToCloseTimeout")
                                            _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field
                                                  @"maybe'heartbeatTimeout")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field @"maybe'retryPolicy")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                     ((Prelude..)
                                                        (\ bs
                                                           -> (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                        Data.ProtoLens.encodeMessage _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'heartbeatDetails")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                                        ((Prelude..)
                                                           (\ bs
                                                              -> (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      (Prelude.fromIntegral
                                                                         (Data.ByteString.length
                                                                            bs)))
                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                      bs))
                                                           Data.ProtoLens.encodeMessage _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'lastHeartbeatTime")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              106)
                                                           ((Prelude..)
                                                              (\ bs
                                                                 -> (Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         (Prelude.fromIntegral
                                                                            (Data.ByteString.length
                                                                               bs)))
                                                                      (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                         bs))
                                                              Data.ProtoLens.encodeMessage _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'lastStartedTime")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 114)
                                                              ((Prelude..)
                                                                 (\ bs
                                                                    -> (Data.Monoid.<>)
                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                            (Prelude.fromIntegral
                                                                               (Data.ByteString.length
                                                                                  bs)))
                                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                            bs))
                                                                 Data.ProtoLens.encodeMessage _v))
                                                    ((Data.Monoid.<>)
                                                       (let
                                                          _v
                                                            = Lens.Family2.view
                                                                (Data.ProtoLens.Field.field
                                                                   @"attempt")
                                                                _x
                                                        in
                                                          if (Prelude.==)
                                                               _v Data.ProtoLens.fieldDefault then
                                                              Data.Monoid.mempty
                                                          else
                                                              (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   120)
                                                                ((Prelude..)
                                                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   Prelude.fromIntegral _v))
                                                       ((Data.Monoid.<>)
                                                          (case
                                                               Lens.Family2.view
                                                                 (Data.ProtoLens.Field.field
                                                                    @"maybe'executionDuration")
                                                                 _x
                                                           of
                                                             Prelude.Nothing -> Data.Monoid.mempty
                                                             (Prelude.Just _v)
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       130)
                                                                    ((Prelude..)
                                                                       (\ bs
                                                                          -> (Data.Monoid.<>)
                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                  (Prelude.fromIntegral
                                                                                     (Data.ByteString.length
                                                                                        bs)))
                                                                               (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                  bs))
                                                                       Data.ProtoLens.encodeMessage
                                                                       _v))
                                                          ((Data.Monoid.<>)
                                                             (case
                                                                  Lens.Family2.view
                                                                    (Data.ProtoLens.Field.field
                                                                       @"maybe'scheduleTime")
                                                                    _x
                                                              of
                                                                Prelude.Nothing
                                                                  -> Data.Monoid.mempty
                                                                (Prelude.Just _v)
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          138)
                                                                       ((Prelude..)
                                                                          (\ bs
                                                                             -> (Data.Monoid.<>)
                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                     (Prelude.fromIntegral
                                                                                        (Data.ByteString.length
                                                                                           bs)))
                                                                                  (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                     bs))
                                                                          Data.ProtoLens.encodeMessage
                                                                          _v))
                                                             ((Data.Monoid.<>)
                                                                (case
                                                                     Lens.Family2.view
                                                                       (Data.ProtoLens.Field.field
                                                                          @"maybe'expirationTime")
                                                                       _x
                                                                 of
                                                                   Prelude.Nothing
                                                                     -> Data.Monoid.mempty
                                                                   (Prelude.Just _v)
                                                                     -> (Data.Monoid.<>)
                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             146)
                                                                          ((Prelude..)
                                                                             (\ bs
                                                                                -> (Data.Monoid.<>)
                                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                        (Prelude.fromIntegral
                                                                                           (Data.ByteString.length
                                                                                              bs)))
                                                                                     (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                        bs))
                                                                             Data.ProtoLens.encodeMessage
                                                                             _v))
                                                                ((Data.Monoid.<>)
                                                                   (case
                                                                        Lens.Family2.view
                                                                          (Data.ProtoLens.Field.field
                                                                             @"maybe'closeTime")
                                                                          _x
                                                                    of
                                                                      Prelude.Nothing
                                                                        -> Data.Monoid.mempty
                                                                      (Prelude.Just _v)
                                                                        -> (Data.Monoid.<>)
                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                154)
                                                                             ((Prelude..)
                                                                                (\ bs
                                                                                   -> (Data.Monoid.<>)
                                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                           (Prelude.fromIntegral
                                                                                              (Data.ByteString.length
                                                                                                 bs)))
                                                                                        (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                           bs))
                                                                                Data.ProtoLens.encodeMessage
                                                                                _v))
                                                                   ((Data.Monoid.<>)
                                                                      (case
                                                                           Lens.Family2.view
                                                                             (Data.ProtoLens.Field.field
                                                                                @"maybe'lastFailure")
                                                                             _x
                                                                       of
                                                                         Prelude.Nothing
                                                                           -> Data.Monoid.mempty
                                                                         (Prelude.Just _v)
                                                                           -> (Data.Monoid.<>)
                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   162)
                                                                                ((Prelude..)
                                                                                   (\ bs
                                                                                      -> (Data.Monoid.<>)
                                                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                              (Prelude.fromIntegral
                                                                                                 (Data.ByteString.length
                                                                                                    bs)))
                                                                                           (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                              bs))
                                                                                   Data.ProtoLens.encodeMessage
                                                                                   _v))
                                                                      ((Data.Monoid.<>)
                                                                         (let
                                                                            _v
                                                                              = Lens.Family2.view
                                                                                  (Data.ProtoLens.Field.field
                                                                                     @"lastWorkerIdentity")
                                                                                  _x
                                                                          in
                                                                            if (Prelude.==)
                                                                                 _v
                                                                                 Data.ProtoLens.fieldDefault then
                                                                                Data.Monoid.mempty
                                                                            else
                                                                                (Data.Monoid.<>)
                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                     170)
                                                                                  ((Prelude..)
                                                                                     (\ bs
                                                                                        -> (Data.Monoid.<>)
                                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                (Prelude.fromIntegral
                                                                                                   (Data.ByteString.length
                                                                                                      bs)))
                                                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                bs))
                                                                                     Data.Text.Encoding.encodeUtf8
                                                                                     _v))
                                                                         ((Data.Monoid.<>)
                                                                            (case
                                                                                 Lens.Family2.view
                                                                                   (Data.ProtoLens.Field.field
                                                                                      @"maybe'currentRetryInterval")
                                                                                   _x
                                                                             of
                                                                               Prelude.Nothing
                                                                                 -> Data.Monoid.mempty
                                                                               (Prelude.Just _v)
                                                                                 -> (Data.Monoid.<>)
                                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                         178)
                                                                                      ((Prelude..)
                                                                                         (\ bs
                                                                                            -> (Data.Monoid.<>)
                                                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                    (Prelude.fromIntegral
                                                                                                       (Data.ByteString.length
                                                                                                          bs)))
                                                                                                 (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                    bs))
                                                                                         Data.ProtoLens.encodeMessage
                                                                                         _v))
                                                                            ((Data.Monoid.<>)
                                                                               (case
                                                                                    Lens.Family2.view
                                                                                      (Data.ProtoLens.Field.field
                                                                                         @"maybe'lastAttemptCompleteTime")
                                                                                      _x
                                                                                of
                                                                                  Prelude.Nothing
                                                                                    -> Data.Monoid.mempty
                                                                                  (Prelude.Just _v)
                                                                                    -> (Data.Monoid.<>)
                                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                            186)
                                                                                         ((Prelude..)
                                                                                            (\ bs
                                                                                               -> (Data.Monoid.<>)
                                                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                       (Prelude.fromIntegral
                                                                                                          (Data.ByteString.length
                                                                                                             bs)))
                                                                                                    (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                       bs))
                                                                                            Data.ProtoLens.encodeMessage
                                                                                            _v))
                                                                               ((Data.Monoid.<>)
                                                                                  (case
                                                                                       Lens.Family2.view
                                                                                         (Data.ProtoLens.Field.field
                                                                                            @"maybe'nextAttemptScheduleTime")
                                                                                         _x
                                                                                   of
                                                                                     Prelude.Nothing
                                                                                       -> Data.Monoid.mempty
                                                                                     (Prelude.Just _v)
                                                                                       -> (Data.Monoid.<>)
                                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                               194)
                                                                                            ((Prelude..)
                                                                                               (\ bs
                                                                                                  -> (Data.Monoid.<>)
                                                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                          (Prelude.fromIntegral
                                                                                                             (Data.ByteString.length
                                                                                                                bs)))
                                                                                                       (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                          bs))
                                                                                               Data.ProtoLens.encodeMessage
                                                                                               _v))
                                                                                  ((Data.Monoid.<>)
                                                                                     (case
                                                                                          Lens.Family2.view
                                                                                            (Data.ProtoLens.Field.field
                                                                                               @"maybe'lastDeploymentVersion")
                                                                                            _x
                                                                                      of
                                                                                        Prelude.Nothing
                                                                                          -> Data.Monoid.mempty
                                                                                        (Prelude.Just _v)
                                                                                          -> (Data.Monoid.<>)
                                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                  202)
                                                                                               ((Prelude..)
                                                                                                  (\ bs
                                                                                                     -> (Data.Monoid.<>)
                                                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                             (Prelude.fromIntegral
                                                                                                                (Data.ByteString.length
                                                                                                                   bs)))
                                                                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                             bs))
                                                                                                  Data.ProtoLens.encodeMessage
                                                                                                  _v))
                                                                                     ((Data.Monoid.<>)
                                                                                        (case
                                                                                             Lens.Family2.view
                                                                                               (Data.ProtoLens.Field.field
                                                                                                  @"maybe'priority")
                                                                                               _x
                                                                                         of
                                                                                           Prelude.Nothing
                                                                                             -> Data.Monoid.mempty
                                                                                           (Prelude.Just _v)
                                                                                             -> (Data.Monoid.<>)
                                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                     210)
                                                                                                  ((Prelude..)
                                                                                                     (\ bs
                                                                                                        -> (Data.Monoid.<>)
                                                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                (Prelude.fromIntegral
                                                                                                                   (Data.ByteString.length
                                                                                                                      bs)))
                                                                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                bs))
                                                                                                     Data.ProtoLens.encodeMessage
                                                                                                     _v))
                                                                                        ((Data.Monoid.<>)
                                                                                           (let
                                                                                              _v
                                                                                                = Lens.Family2.view
                                                                                                    (Data.ProtoLens.Field.field
                                                                                                       @"stateTransitionCount")
                                                                                                    _x
                                                                                            in
                                                                                              if (Prelude.==)
                                                                                                   _v
                                                                                                   Data.ProtoLens.fieldDefault then
                                                                                                  Data.Monoid.mempty
                                                                                              else
                                                                                                  (Data.Monoid.<>)
                                                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                       216)
                                                                                                    ((Prelude..)
                                                                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                       Prelude.fromIntegral
                                                                                                       _v))
                                                                                           ((Data.Monoid.<>)
                                                                                              (let
                                                                                                 _v
                                                                                                   = Lens.Family2.view
                                                                                                       (Data.ProtoLens.Field.field
                                                                                                          @"stateSizeBytes")
                                                                                                       _x
                                                                                               in
                                                                                                 if (Prelude.==)
                                                                                                      _v
                                                                                                      Data.ProtoLens.fieldDefault then
                                                                                                     Data.Monoid.mempty
                                                                                                 else
                                                                                                     (Data.Monoid.<>)
                                                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                          224)
                                                                                                       ((Prelude..)
                                                                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                          Prelude.fromIntegral
                                                                                                          _v))
                                                                                              ((Data.Monoid.<>)
                                                                                                 (case
                                                                                                      Lens.Family2.view
                                                                                                        (Data.ProtoLens.Field.field
                                                                                                           @"maybe'searchAttributes")
                                                                                                        _x
                                                                                                  of
                                                                                                    Prelude.Nothing
                                                                                                      -> Data.Monoid.mempty
                                                                                                    (Prelude.Just _v)
                                                                                                      -> (Data.Monoid.<>)
                                                                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                              234)
                                                                                                           ((Prelude..)
                                                                                                              (\ bs
                                                                                                                 -> (Data.Monoid.<>)
                                                                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                         (Prelude.fromIntegral
                                                                                                                            (Data.ByteString.length
                                                                                                                               bs)))
                                                                                                                      (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                         bs))
                                                                                                              Data.ProtoLens.encodeMessage
                                                                                                              _v))
                                                                                                 ((Data.Monoid.<>)
                                                                                                    (case
                                                                                                         Lens.Family2.view
                                                                                                           (Data.ProtoLens.Field.field
                                                                                                              @"maybe'header")
                                                                                                           _x
                                                                                                     of
                                                                                                       Prelude.Nothing
                                                                                                         -> Data.Monoid.mempty
                                                                                                       (Prelude.Just _v)
                                                                                                         -> (Data.Monoid.<>)
                                                                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                 242)
                                                                                                              ((Prelude..)
                                                                                                                 (\ bs
                                                                                                                    -> (Data.Monoid.<>)
                                                                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                            (Prelude.fromIntegral
                                                                                                                               (Data.ByteString.length
                                                                                                                                  bs)))
                                                                                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                            bs))
                                                                                                                 Data.ProtoLens.encodeMessage
                                                                                                                 _v))
                                                                                                    ((Data.Monoid.<>)
                                                                                                       (case
                                                                                                            Lens.Family2.view
                                                                                                              (Data.ProtoLens.Field.field
                                                                                                                 @"maybe'userMetadata")
                                                                                                              _x
                                                                                                        of
                                                                                                          Prelude.Nothing
                                                                                                            -> Data.Monoid.mempty
                                                                                                          (Prelude.Just _v)
                                                                                                            -> (Data.Monoid.<>)
                                                                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                    250)
                                                                                                                 ((Prelude..)
                                                                                                                    (\ bs
                                                                                                                       -> (Data.Monoid.<>)
                                                                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                               (Prelude.fromIntegral
                                                                                                                                  (Data.ByteString.length
                                                                                                                                     bs)))
                                                                                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                               bs))
                                                                                                                    Data.ProtoLens.encodeMessage
                                                                                                                    _v))
                                                                                                       ((Data.Monoid.<>)
                                                                                                          (let
                                                                                                             _v
                                                                                                               = Lens.Family2.view
                                                                                                                   (Data.ProtoLens.Field.field
                                                                                                                      @"canceledReason")
                                                                                                                   _x
                                                                                                           in
                                                                                                             if (Prelude.==)
                                                                                                                  _v
                                                                                                                  Data.ProtoLens.fieldDefault then
                                                                                                                 Data.Monoid.mempty
                                                                                                             else
                                                                                                                 (Data.Monoid.<>)
                                                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                      258)
                                                                                                                   ((Prelude..)
                                                                                                                      (\ bs
                                                                                                                         -> (Data.Monoid.<>)
                                                                                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                 (Prelude.fromIntegral
                                                                                                                                    (Data.ByteString.length
                                                                                                                                       bs)))
                                                                                                                              (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                 bs))
                                                                                                                      Data.Text.Encoding.encodeUtf8
                                                                                                                      _v))
                                                                                                          ((Data.Monoid.<>)
                                                                                                             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                                                                (\ _v
                                                                                                                   -> (Data.Monoid.<>)
                                                                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                           266)
                                                                                                                        ((Prelude..)
                                                                                                                           (\ bs
                                                                                                                              -> (Data.Monoid.<>)
                                                                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                      (Prelude.fromIntegral
                                                                                                                                         (Data.ByteString.length
                                                                                                                                            bs)))
                                                                                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                      bs))
                                                                                                                           Data.ProtoLens.encodeMessage
                                                                                                                           _v))
                                                                                                                (Lens.Family2.view
                                                                                                                   (Data.ProtoLens.Field.field
                                                                                                                      @"vec'links")
                                                                                                                   _x))
                                                                                                             ((Data.Monoid.<>)
                                                                                                                (let
                                                                                                                   _v
                                                                                                                     = Lens.Family2.view
                                                                                                                         (Data.ProtoLens.Field.field
                                                                                                                            @"totalHeartbeatCount")
                                                                                                                         _x
                                                                                                                 in
                                                                                                                   if (Prelude.==)
                                                                                                                        _v
                                                                                                                        Data.ProtoLens.fieldDefault then
                                                                                                                       Data.Monoid.mempty
                                                                                                                   else
                                                                                                                       (Data.Monoid.<>)
                                                                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                            272)
                                                                                                                         ((Prelude..)
                                                                                                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                            Prelude.fromIntegral
                                                                                                                            _v))
                                                                                                                ((Data.Monoid.<>)
                                                                                                                   (let
                                                                                                                      _v
                                                                                                                        = Lens.Family2.view
                                                                                                                            (Data.ProtoLens.Field.field
                                                                                                                               @"sdkName")
                                                                                                                            _x
                                                                                                                    in
                                                                                                                      if (Prelude.==)
                                                                                                                           _v
                                                                                                                           Data.ProtoLens.fieldDefault then
                                                                                                                          Data.Monoid.mempty
                                                                                                                      else
                                                                                                                          (Data.Monoid.<>)
                                                                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                               282)
                                                                                                                            ((Prelude..)
                                                                                                                               (\ bs
                                                                                                                                  -> (Data.Monoid.<>)
                                                                                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                          (Prelude.fromIntegral
                                                                                                                                             (Data.ByteString.length
                                                                                                                                                bs)))
                                                                                                                                       (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                          bs))
                                                                                                                               Data.Text.Encoding.encodeUtf8
                                                                                                                               _v))
                                                                                                                   ((Data.Monoid.<>)
                                                                                                                      (let
                                                                                                                         _v
                                                                                                                           = Lens.Family2.view
                                                                                                                               (Data.ProtoLens.Field.field
                                                                                                                                  @"sdkVersion")
                                                                                                                               _x
                                                                                                                       in
                                                                                                                         if (Prelude.==)
                                                                                                                              _v
                                                                                                                              Data.ProtoLens.fieldDefault then
                                                                                                                             Data.Monoid.mempty
                                                                                                                         else
                                                                                                                             (Data.Monoid.<>)
                                                                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                  290)
                                                                                                                               ((Prelude..)
                                                                                                                                  (\ bs
                                                                                                                                     -> (Data.Monoid.<>)
                                                                                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                             (Prelude.fromIntegral
                                                                                                                                                (Data.ByteString.length
                                                                                                                                                   bs)))
                                                                                                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                             bs))
                                                                                                                                  Data.Text.Encoding.encodeUtf8
                                                                                                                                  _v))
                                                                                                                      ((Data.Monoid.<>)
                                                                                                                         (case
                                                                                                                              Lens.Family2.view
                                                                                                                                (Data.ProtoLens.Field.field
                                                                                                                                   @"maybe'startDelay")
                                                                                                                                _x
                                                                                                                          of
                                                                                                                            Prelude.Nothing
                                                                                                                              -> Data.Monoid.mempty
                                                                                                                            (Prelude.Just _v)
                                                                                                                              -> (Data.Monoid.<>)
                                                                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                      298)
                                                                                                                                   ((Prelude..)
                                                                                                                                      (\ bs
                                                                                                                                         -> (Data.Monoid.<>)
                                                                                                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                 (Prelude.fromIntegral
                                                                                                                                                    (Data.ByteString.length
                                                                                                                                                       bs)))
                                                                                                                                              (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                 bs))
                                                                                                                                      Data.ProtoLens.encodeMessage
                                                                                                                                      _v))
                                                                                                                         ((Data.Monoid.<>)
                                                                                                                            (case
                                                                                                                                 Lens.Family2.view
                                                                                                                                   (Data.ProtoLens.Field.field
                                                                                                                                      @"maybe'executionTime")
                                                                                                                                   _x
                                                                                                                             of
                                                                                                                               Prelude.Nothing
                                                                                                                                 -> Data.Monoid.mempty
                                                                                                                               (Prelude.Just _v)
                                                                                                                                 -> (Data.Monoid.<>)
                                                                                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                         306)
                                                                                                                                      ((Prelude..)
                                                                                                                                         (\ bs
                                                                                                                                            -> (Data.Monoid.<>)
                                                                                                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                    (Prelude.fromIntegral
                                                                                                                                                       (Data.ByteString.length
                                                                                                                                                          bs)))
                                                                                                                                                 (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                    bs))
                                                                                                                                         Data.ProtoLens.encodeMessage
                                                                                                                                         _v))
                                                                                                                            ((Data.Monoid.<>)
                                                                                                                               (case
                                                                                                                                    Lens.Family2.view
                                                                                                                                      (Data.ProtoLens.Field.field
                                                                                                                                         @"maybe'propagatedNexusSerializationContext")
                                                                                                                                      _x
                                                                                                                                of
                                                                                                                                  Prelude.Nothing
                                                                                                                                    -> Data.Monoid.mempty
                                                                                                                                  (Prelude.Just _v)
                                                                                                                                    -> (Data.Monoid.<>)
                                                                                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                            314)
                                                                                                                                         ((Prelude..)
                                                                                                                                            (\ bs
                                                                                                                                               -> (Data.Monoid.<>)
                                                                                                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                       (Prelude.fromIntegral
                                                                                                                                                          (Data.ByteString.length
                                                                                                                                                             bs)))
                                                                                                                                                    (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                       bs))
                                                                                                                                            Data.ProtoLens.encodeMessage
                                                                                                                                            _v))
                                                                                                                               ((Data.Monoid.<>)
                                                                                                                                  (let
                                                                                                                                     _v
                                                                                                                                       = Lens.Family2.view
                                                                                                                                           (Data.ProtoLens.Field.field
                                                                                                                                              @"eagerExecutionAccepted")
                                                                                                                                           _x
                                                                                                                                   in
                                                                                                                                     if (Prelude.==)
                                                                                                                                          _v
                                                                                                                                          Data.ProtoLens.fieldDefault then
                                                                                                                                         Data.Monoid.mempty
                                                                                                                                     else
                                                                                                                                         (Data.Monoid.<>)
                                                                                                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                              320)
                                                                                                                                           ((Prelude..)
                                                                                                                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                              (\ b
                                                                                                                                                 -> if b then
                                                                                                                                                        1
                                                                                                                                                    else
                                                                                                                                                        0)
                                                                                                                                              _v))
                                                                                                                                  ((Data.Monoid.<>)
                                                                                                                                     (case
                                                                                                                                          Lens.Family2.view
                                                                                                                                            (Data.ProtoLens.Field.field
                                                                                                                                               @"maybe'startedByPrincipal")
                                                                                                                                            _x
                                                                                                                                      of
                                                                                                                                        Prelude.Nothing
                                                                                                                                          -> Data.Monoid.mempty
                                                                                                                                        (Prelude.Just _v)
                                                                                                                                          -> (Data.Monoid.<>)
                                                                                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                  330)
                                                                                                                                               ((Prelude..)
                                                                                                                                                  (\ bs
                                                                                                                                                     -> (Data.Monoid.<>)
                                                                                                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                             (Prelude.fromIntegral
                                                                                                                                                                (Data.ByteString.length
                                                                                                                                                                   bs)))
                                                                                                                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                             bs))
                                                                                                                                                  Data.ProtoLens.encodeMessage
                                                                                                                                                  _v))
                                                                                                                                     ((Data.Monoid.<>)
                                                                                                                                        (case
                                                                                                                                             Lens.Family2.view
                                                                                                                                               (Data.ProtoLens.Field.field
                                                                                                                                                  @"maybe'closedByPrincipal")
                                                                                                                                               _x
                                                                                                                                         of
                                                                                                                                           Prelude.Nothing
                                                                                                                                             -> Data.Monoid.mempty
                                                                                                                                           (Prelude.Just _v)
                                                                                                                                             -> (Data.Monoid.<>)
                                                                                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                     338)
                                                                                                                                                  ((Prelude..)
                                                                                                                                                     (\ bs
                                                                                                                                                        -> (Data.Monoid.<>)
                                                                                                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                                (Prelude.fromIntegral
                                                                                                                                                                   (Data.ByteString.length
                                                                                                                                                                      bs)))
                                                                                                                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                                bs))
                                                                                                                                                     Data.ProtoLens.encodeMessage
                                                                                                                                                     _v))
                                                                                                                                        ((Data.Monoid.<>)
                                                                                                                                           (case
                                                                                                                                                Lens.Family2.view
                                                                                                                                                  (Data.ProtoLens.Field.field
                                                                                                                                                     @"maybe'lastWorkerPrincipal")
                                                                                                                                                  _x
                                                                                                                                            of
                                                                                                                                              Prelude.Nothing
                                                                                                                                                -> Data.Monoid.mempty
                                                                                                                                              (Prelude.Just _v)
                                                                                                                                                -> (Data.Monoid.<>)
                                                                                                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                        346)
                                                                                                                                                     ((Prelude..)
                                                                                                                                                        (\ bs
                                                                                                                                                           -> (Data.Monoid.<>)
                                                                                                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                                   (Prelude.fromIntegral
                                                                                                                                                                      (Data.ByteString.length
                                                                                                                                                                         bs)))
                                                                                                                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                                   bs))
                                                                                                                                                        Data.ProtoLens.encodeMessage
                                                                                                                                                        _v))
                                                                                                                                           (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                                                                                              (Lens.Family2.view
                                                                                                                                                 Data.ProtoLens.unknownFields
                                                                                                                                                 _x))))))))))))))))))))))))))))))))))))))))))))
instance Control.DeepSeq.NFData ActivityExecutionInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ActivityExecutionInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ActivityExecutionInfo'activityId x__)
                (Control.DeepSeq.deepseq
                   (_ActivityExecutionInfo'runId x__)
                   (Control.DeepSeq.deepseq
                      (_ActivityExecutionInfo'activityType x__)
                      (Control.DeepSeq.deepseq
                         (_ActivityExecutionInfo'status x__)
                         (Control.DeepSeq.deepseq
                            (_ActivityExecutionInfo'runState x__)
                            (Control.DeepSeq.deepseq
                               (_ActivityExecutionInfo'taskQueue x__)
                               (Control.DeepSeq.deepseq
                                  (_ActivityExecutionInfo'scheduleToCloseTimeout x__)
                                  (Control.DeepSeq.deepseq
                                     (_ActivityExecutionInfo'scheduleToStartTimeout x__)
                                     (Control.DeepSeq.deepseq
                                        (_ActivityExecutionInfo'startToCloseTimeout x__)
                                        (Control.DeepSeq.deepseq
                                           (_ActivityExecutionInfo'heartbeatTimeout x__)
                                           (Control.DeepSeq.deepseq
                                              (_ActivityExecutionInfo'retryPolicy x__)
                                              (Control.DeepSeq.deepseq
                                                 (_ActivityExecutionInfo'heartbeatDetails x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_ActivityExecutionInfo'lastHeartbeatTime x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_ActivityExecutionInfo'lastStartedTime x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_ActivityExecutionInfo'attempt x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_ActivityExecutionInfo'executionDuration
                                                                x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_ActivityExecutionInfo'scheduleTime
                                                                   x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_ActivityExecutionInfo'expirationTime
                                                                      x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_ActivityExecutionInfo'closeTime
                                                                         x__)
                                                                      (Control.DeepSeq.deepseq
                                                                         (_ActivityExecutionInfo'lastFailure
                                                                            x__)
                                                                         (Control.DeepSeq.deepseq
                                                                            (_ActivityExecutionInfo'lastWorkerIdentity
                                                                               x__)
                                                                            (Control.DeepSeq.deepseq
                                                                               (_ActivityExecutionInfo'currentRetryInterval
                                                                                  x__)
                                                                               (Control.DeepSeq.deepseq
                                                                                  (_ActivityExecutionInfo'lastAttemptCompleteTime
                                                                                     x__)
                                                                                  (Control.DeepSeq.deepseq
                                                                                     (_ActivityExecutionInfo'nextAttemptScheduleTime
                                                                                        x__)
                                                                                     (Control.DeepSeq.deepseq
                                                                                        (_ActivityExecutionInfo'lastDeploymentVersion
                                                                                           x__)
                                                                                        (Control.DeepSeq.deepseq
                                                                                           (_ActivityExecutionInfo'priority
                                                                                              x__)
                                                                                           (Control.DeepSeq.deepseq
                                                                                              (_ActivityExecutionInfo'stateTransitionCount
                                                                                                 x__)
                                                                                              (Control.DeepSeq.deepseq
                                                                                                 (_ActivityExecutionInfo'stateSizeBytes
                                                                                                    x__)
                                                                                                 (Control.DeepSeq.deepseq
                                                                                                    (_ActivityExecutionInfo'searchAttributes
                                                                                                       x__)
                                                                                                    (Control.DeepSeq.deepseq
                                                                                                       (_ActivityExecutionInfo'header
                                                                                                          x__)
                                                                                                       (Control.DeepSeq.deepseq
                                                                                                          (_ActivityExecutionInfo'userMetadata
                                                                                                             x__)
                                                                                                          (Control.DeepSeq.deepseq
                                                                                                             (_ActivityExecutionInfo'canceledReason
                                                                                                                x__)
                                                                                                             (Control.DeepSeq.deepseq
                                                                                                                (_ActivityExecutionInfo'links
                                                                                                                   x__)
                                                                                                                (Control.DeepSeq.deepseq
                                                                                                                   (_ActivityExecutionInfo'totalHeartbeatCount
                                                                                                                      x__)
                                                                                                                   (Control.DeepSeq.deepseq
                                                                                                                      (_ActivityExecutionInfo'sdkName
                                                                                                                         x__)
                                                                                                                      (Control.DeepSeq.deepseq
                                                                                                                         (_ActivityExecutionInfo'sdkVersion
                                                                                                                            x__)
                                                                                                                         (Control.DeepSeq.deepseq
                                                                                                                            (_ActivityExecutionInfo'startDelay
                                                                                                                               x__)
                                                                                                                            (Control.DeepSeq.deepseq
                                                                                                                               (_ActivityExecutionInfo'executionTime
                                                                                                                                  x__)
                                                                                                                               (Control.DeepSeq.deepseq
                                                                                                                                  (_ActivityExecutionInfo'propagatedNexusSerializationContext
                                                                                                                                     x__)
                                                                                                                                  (Control.DeepSeq.deepseq
                                                                                                                                     (_ActivityExecutionInfo'eagerExecutionAccepted
                                                                                                                                        x__)
                                                                                                                                     (Control.DeepSeq.deepseq
                                                                                                                                        (_ActivityExecutionInfo'startedByPrincipal
                                                                                                                                           x__)
                                                                                                                                        (Control.DeepSeq.deepseq
                                                                                                                                           (_ActivityExecutionInfo'closedByPrincipal
                                                                                                                                              x__)
                                                                                                                                           (Control.DeepSeq.deepseq
                                                                                                                                              (_ActivityExecutionInfo'lastWorkerPrincipal
                                                                                                                                                 x__)
                                                                                                                                              ())))))))))))))))))))))))))))))))))))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.activityId' @:: Lens' ActivityExecutionListInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.runId' @:: Lens' ActivityExecutionListInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.activityType' @:: Lens' ActivityExecutionListInfo Proto.Temporal.Api.Common.V1.Message.ActivityType@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'activityType' @:: Lens' ActivityExecutionListInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ActivityType)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.scheduleTime' @:: Lens' ActivityExecutionListInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'scheduleTime' @:: Lens' ActivityExecutionListInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.closeTime' @:: Lens' ActivityExecutionListInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'closeTime' @:: Lens' ActivityExecutionListInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.status' @:: Lens' ActivityExecutionListInfo Proto.Temporal.Api.Enums.V1.Activity.ActivityExecutionStatus@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.searchAttributes' @:: Lens' ActivityExecutionListInfo Proto.Temporal.Api.Common.V1.Message.SearchAttributes@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'searchAttributes' @:: Lens' ActivityExecutionListInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.taskQueue' @:: Lens' ActivityExecutionListInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.stateTransitionCount' @:: Lens' ActivityExecutionListInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.stateSizeBytes' @:: Lens' ActivityExecutionListInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.executionDuration' @:: Lens' ActivityExecutionListInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'executionDuration' @:: Lens' ActivityExecutionListInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.executionTime' @:: Lens' ActivityExecutionListInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'executionTime' @:: Lens' ActivityExecutionListInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data ActivityExecutionListInfo
  = ActivityExecutionListInfo'_constructor {_ActivityExecutionListInfo'activityId :: !Data.Text.Text,
                                            _ActivityExecutionListInfo'runId :: !Data.Text.Text,
                                            _ActivityExecutionListInfo'activityType :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ActivityType),
                                            _ActivityExecutionListInfo'scheduleTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                            _ActivityExecutionListInfo'closeTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                            _ActivityExecutionListInfo'status :: !Proto.Temporal.Api.Enums.V1.Activity.ActivityExecutionStatus,
                                            _ActivityExecutionListInfo'searchAttributes :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes),
                                            _ActivityExecutionListInfo'taskQueue :: !Data.Text.Text,
                                            _ActivityExecutionListInfo'stateTransitionCount :: !Data.Int.Int64,
                                            _ActivityExecutionListInfo'stateSizeBytes :: !Data.Int.Int64,
                                            _ActivityExecutionListInfo'executionDuration :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                            _ActivityExecutionListInfo'executionTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                            _ActivityExecutionListInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ActivityExecutionListInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "activityId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'activityId
           (\ x__ y__ -> x__ {_ActivityExecutionListInfo'activityId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "runId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'runId
           (\ x__ y__ -> x__ {_ActivityExecutionListInfo'runId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "activityType" Proto.Temporal.Api.Common.V1.Message.ActivityType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'activityType
           (\ x__ y__ -> x__ {_ActivityExecutionListInfo'activityType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "maybe'activityType" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ActivityType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'activityType
           (\ x__ y__ -> x__ {_ActivityExecutionListInfo'activityType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "scheduleTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'scheduleTime
           (\ x__ y__ -> x__ {_ActivityExecutionListInfo'scheduleTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "maybe'scheduleTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'scheduleTime
           (\ x__ y__ -> x__ {_ActivityExecutionListInfo'scheduleTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "closeTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'closeTime
           (\ x__ y__ -> x__ {_ActivityExecutionListInfo'closeTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "maybe'closeTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'closeTime
           (\ x__ y__ -> x__ {_ActivityExecutionListInfo'closeTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "status" Proto.Temporal.Api.Enums.V1.Activity.ActivityExecutionStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'status
           (\ x__ y__ -> x__ {_ActivityExecutionListInfo'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "searchAttributes" Proto.Temporal.Api.Common.V1.Message.SearchAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'searchAttributes
           (\ x__ y__
              -> x__ {_ActivityExecutionListInfo'searchAttributes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "maybe'searchAttributes" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'searchAttributes
           (\ x__ y__
              -> x__ {_ActivityExecutionListInfo'searchAttributes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "taskQueue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'taskQueue
           (\ x__ y__ -> x__ {_ActivityExecutionListInfo'taskQueue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "stateTransitionCount" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'stateTransitionCount
           (\ x__ y__
              -> x__ {_ActivityExecutionListInfo'stateTransitionCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "stateSizeBytes" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'stateSizeBytes
           (\ x__ y__
              -> x__ {_ActivityExecutionListInfo'stateSizeBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "executionDuration" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'executionDuration
           (\ x__ y__
              -> x__ {_ActivityExecutionListInfo'executionDuration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "maybe'executionDuration" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'executionDuration
           (\ x__ y__
              -> x__ {_ActivityExecutionListInfo'executionDuration = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "executionTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'executionTime
           (\ x__ y__
              -> x__ {_ActivityExecutionListInfo'executionTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "maybe'executionTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'executionTime
           (\ x__ y__
              -> x__ {_ActivityExecutionListInfo'executionTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message ActivityExecutionListInfo where
  messageName _
    = Data.Text.pack
        "temporal.api.activity.v1.ActivityExecutionListInfo"
  packedMessageDescriptor _
    = "\n\
      \\EMActivityExecutionListInfo\DC2\US\n\
      \\vactivity_id\CAN\SOH \SOH(\tR\n\
      \activityId\DC2\NAK\n\
      \\ACKrun_id\CAN\STX \SOH(\tR\ENQrunId\DC2I\n\
      \\ractivity_type\CAN\ETX \SOH(\v2$.temporal.api.common.v1.ActivityTypeR\factivityType\DC2?\n\
      \\rschedule_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\fscheduleTime\DC29\n\
      \\n\
      \close_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\tcloseTime\DC2F\n\
      \\ACKstatus\CAN\ACK \SOH(\SO2..temporal.api.enums.v1.ActivityExecutionStatusR\ACKstatus\DC2U\n\
      \\DC1search_attributes\CAN\a \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC2\GS\n\
      \\n\
      \task_queue\CAN\b \SOH(\tR\ttaskQueue\DC24\n\
      \\SYNstate_transition_count\CAN\t \SOH(\ETXR\DC4stateTransitionCount\DC2(\n\
      \\DLEstate_size_bytes\CAN\n\
      \ \SOH(\ETXR\SOstateSizeBytes\DC2H\n\
      \\DC2execution_duration\CAN\v \SOH(\v2\EM.google.protobuf.DurationR\DC1executionDuration\DC2A\n\
      \\SOexecution_time\CAN\f \SOH(\v2\SUB.google.protobuf.TimestampR\rexecutionTime"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        activityId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"activityId")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
        runId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "run_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"runId")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
        activityType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.ActivityType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'activityType")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
        scheduleTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleTime")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
        closeTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "close_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'closeTime")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Activity.ActivityExecutionStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
        searchAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "search_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.SearchAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'searchAttributes")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
        taskQueue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"taskQueue")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
        stateTransitionCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state_transition_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stateTransitionCount")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
        stateSizeBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state_size_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stateSizeBytes")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
        executionDuration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "execution_duration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'executionDuration")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
        executionTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "execution_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'executionTime")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, activityId__field_descriptor),
           (Data.ProtoLens.Tag 2, runId__field_descriptor),
           (Data.ProtoLens.Tag 3, activityType__field_descriptor),
           (Data.ProtoLens.Tag 4, scheduleTime__field_descriptor),
           (Data.ProtoLens.Tag 5, closeTime__field_descriptor),
           (Data.ProtoLens.Tag 6, status__field_descriptor),
           (Data.ProtoLens.Tag 7, searchAttributes__field_descriptor),
           (Data.ProtoLens.Tag 8, taskQueue__field_descriptor),
           (Data.ProtoLens.Tag 9, stateTransitionCount__field_descriptor),
           (Data.ProtoLens.Tag 10, stateSizeBytes__field_descriptor),
           (Data.ProtoLens.Tag 11, executionDuration__field_descriptor),
           (Data.ProtoLens.Tag 12, executionTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ActivityExecutionListInfo'_unknownFields
        (\ x__ y__
           -> x__ {_ActivityExecutionListInfo'_unknownFields = y__})
  defMessage
    = ActivityExecutionListInfo'_constructor
        {_ActivityExecutionListInfo'activityId = Data.ProtoLens.fieldDefault,
         _ActivityExecutionListInfo'runId = Data.ProtoLens.fieldDefault,
         _ActivityExecutionListInfo'activityType = Prelude.Nothing,
         _ActivityExecutionListInfo'scheduleTime = Prelude.Nothing,
         _ActivityExecutionListInfo'closeTime = Prelude.Nothing,
         _ActivityExecutionListInfo'status = Data.ProtoLens.fieldDefault,
         _ActivityExecutionListInfo'searchAttributes = Prelude.Nothing,
         _ActivityExecutionListInfo'taskQueue = Data.ProtoLens.fieldDefault,
         _ActivityExecutionListInfo'stateTransitionCount = Data.ProtoLens.fieldDefault,
         _ActivityExecutionListInfo'stateSizeBytes = Data.ProtoLens.fieldDefault,
         _ActivityExecutionListInfo'executionDuration = Prelude.Nothing,
         _ActivityExecutionListInfo'executionTime = Prelude.Nothing,
         _ActivityExecutionListInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ActivityExecutionListInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser ActivityExecutionListInfo
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "activity_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"activityId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "run_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"runId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "activity_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"activityType") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleTime") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "close_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"closeTime") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "search_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"searchAttributes") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "task_queue"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskQueue") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "state_transition_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stateTransitionCount") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "state_size_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stateSizeBytes") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "execution_duration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"executionDuration") y x)
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "execution_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"executionTime") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ActivityExecutionListInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"activityId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"runId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'activityType") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'scheduleTime") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'closeTime") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         ((Data.Monoid.<>)
                            (let
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           Prelude.fromIntegral)
                                        Prelude.fromEnum _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'searchAttributes") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"taskQueue") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                           ((Prelude..)
                                              (\ bs
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Data.Text.Encoding.encodeUtf8 _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"stateTransitionCount")
                                              _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 Prelude.fromIntegral _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"stateSizeBytes") _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                 ((Prelude..)
                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    Prelude.fromIntegral _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'executionDuration")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                     ((Prelude..)
                                                        (\ bs
                                                           -> (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                        Data.ProtoLens.encodeMessage _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'executionTime")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                                        ((Prelude..)
                                                           (\ bs
                                                              -> (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      (Prelude.fromIntegral
                                                                         (Data.ByteString.length
                                                                            bs)))
                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                      bs))
                                                           Data.ProtoLens.encodeMessage _v))
                                              (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                 (Lens.Family2.view
                                                    Data.ProtoLens.unknownFields _x)))))))))))))
instance Control.DeepSeq.NFData ActivityExecutionListInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ActivityExecutionListInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ActivityExecutionListInfo'activityId x__)
                (Control.DeepSeq.deepseq
                   (_ActivityExecutionListInfo'runId x__)
                   (Control.DeepSeq.deepseq
                      (_ActivityExecutionListInfo'activityType x__)
                      (Control.DeepSeq.deepseq
                         (_ActivityExecutionListInfo'scheduleTime x__)
                         (Control.DeepSeq.deepseq
                            (_ActivityExecutionListInfo'closeTime x__)
                            (Control.DeepSeq.deepseq
                               (_ActivityExecutionListInfo'status x__)
                               (Control.DeepSeq.deepseq
                                  (_ActivityExecutionListInfo'searchAttributes x__)
                                  (Control.DeepSeq.deepseq
                                     (_ActivityExecutionListInfo'taskQueue x__)
                                     (Control.DeepSeq.deepseq
                                        (_ActivityExecutionListInfo'stateTransitionCount x__)
                                        (Control.DeepSeq.deepseq
                                           (_ActivityExecutionListInfo'stateSizeBytes x__)
                                           (Control.DeepSeq.deepseq
                                              (_ActivityExecutionListInfo'executionDuration x__)
                                              (Control.DeepSeq.deepseq
                                                 (_ActivityExecutionListInfo'executionTime x__)
                                                 ()))))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.retryState' @:: Lens' ActivityExecutionOutcome Proto.Temporal.Api.Enums.V1.Workflow.RetryState@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'value' @:: Lens' ActivityExecutionOutcome (Prelude.Maybe ActivityExecutionOutcome'Value)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'result' @:: Lens' ActivityExecutionOutcome (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.result' @:: Lens' ActivityExecutionOutcome Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'failure' @:: Lens' ActivityExecutionOutcome (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.failure' @:: Lens' ActivityExecutionOutcome Proto.Temporal.Api.Failure.V1.Message.Failure@ -}
data ActivityExecutionOutcome
  = ActivityExecutionOutcome'_constructor {_ActivityExecutionOutcome'retryState :: !Proto.Temporal.Api.Enums.V1.Workflow.RetryState,
                                           _ActivityExecutionOutcome'value :: !(Prelude.Maybe ActivityExecutionOutcome'Value),
                                           _ActivityExecutionOutcome'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ActivityExecutionOutcome where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ActivityExecutionOutcome'Value
  = ActivityExecutionOutcome'Result !Proto.Temporal.Api.Common.V1.Message.Payloads |
    ActivityExecutionOutcome'Failure !Proto.Temporal.Api.Failure.V1.Message.Failure
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ActivityExecutionOutcome "retryState" Proto.Temporal.Api.Enums.V1.Workflow.RetryState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionOutcome'retryState
           (\ x__ y__ -> x__ {_ActivityExecutionOutcome'retryState = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionOutcome "maybe'value" (Prelude.Maybe ActivityExecutionOutcome'Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionOutcome'value
           (\ x__ y__ -> x__ {_ActivityExecutionOutcome'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionOutcome "maybe'result" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionOutcome'value
           (\ x__ y__ -> x__ {_ActivityExecutionOutcome'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ActivityExecutionOutcome'Result x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ActivityExecutionOutcome'Result y__))
instance Data.ProtoLens.Field.HasField ActivityExecutionOutcome "result" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionOutcome'value
           (\ x__ y__ -> x__ {_ActivityExecutionOutcome'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ActivityExecutionOutcome'Result x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ActivityExecutionOutcome'Result y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ActivityExecutionOutcome "maybe'failure" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionOutcome'value
           (\ x__ y__ -> x__ {_ActivityExecutionOutcome'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ActivityExecutionOutcome'Failure x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ActivityExecutionOutcome'Failure y__))
instance Data.ProtoLens.Field.HasField ActivityExecutionOutcome "failure" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionOutcome'value
           (\ x__ y__ -> x__ {_ActivityExecutionOutcome'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ActivityExecutionOutcome'Failure x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ActivityExecutionOutcome'Failure y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ActivityExecutionOutcome where
  messageName _
    = Data.Text.pack
        "temporal.api.activity.v1.ActivityExecutionOutcome"
  packedMessageDescriptor _
    = "\n\
      \\CANActivityExecutionOutcome\DC2:\n\
      \\ACKresult\CAN\SOH \SOH(\v2 .temporal.api.common.v1.PayloadsH\NULR\ACKresult\DC2<\n\
      \\afailure\CAN\STX \SOH(\v2 .temporal.api.failure.v1.FailureH\NULR\afailure\DC2B\n\
      \\vretry_state\CAN\ETX \SOH(\SO2!.temporal.api.enums.v1.RetryStateR\n\
      \retryStateB\a\n\
      \\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        retryState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Workflow.RetryState)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"retryState")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionOutcome
        result__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payloads)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'result")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionOutcome
        failure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failure")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionOutcome
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 3, retryState__field_descriptor),
           (Data.ProtoLens.Tag 1, result__field_descriptor),
           (Data.ProtoLens.Tag 2, failure__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ActivityExecutionOutcome'_unknownFields
        (\ x__ y__ -> x__ {_ActivityExecutionOutcome'_unknownFields = y__})
  defMessage
    = ActivityExecutionOutcome'_constructor
        {_ActivityExecutionOutcome'retryState = Data.ProtoLens.fieldDefault,
         _ActivityExecutionOutcome'value = Prelude.Nothing,
         _ActivityExecutionOutcome'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ActivityExecutionOutcome
          -> Data.ProtoLens.Encoding.Bytes.Parser ActivityExecutionOutcome
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "retry_state"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"retryState") y x)
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "result"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"result") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "failure"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"failure") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ActivityExecutionOutcome"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"retryState") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (ActivityExecutionOutcome'Result v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage v)
                   (Prelude.Just (ActivityExecutionOutcome'Failure v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ActivityExecutionOutcome where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ActivityExecutionOutcome'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ActivityExecutionOutcome'retryState x__)
                (Control.DeepSeq.deepseq (_ActivityExecutionOutcome'value x__) ()))
instance Control.DeepSeq.NFData ActivityExecutionOutcome'Value where
  rnf (ActivityExecutionOutcome'Result x__) = Control.DeepSeq.rnf x__
  rnf (ActivityExecutionOutcome'Failure x__)
    = Control.DeepSeq.rnf x__
_ActivityExecutionOutcome'Result ::
  Data.ProtoLens.Prism.Prism' ActivityExecutionOutcome'Value Proto.Temporal.Api.Common.V1.Message.Payloads
_ActivityExecutionOutcome'Result
  = Data.ProtoLens.Prism.prism'
      ActivityExecutionOutcome'Result
      (\ p__
         -> case p__ of
              (ActivityExecutionOutcome'Result p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ActivityExecutionOutcome'Failure ::
  Data.ProtoLens.Prism.Prism' ActivityExecutionOutcome'Value Proto.Temporal.Api.Failure.V1.Message.Failure
_ActivityExecutionOutcome'Failure
  = Data.ProtoLens.Prism.prism'
      ActivityExecutionOutcome'Failure
      (\ p__
         -> case p__ of
              (ActivityExecutionOutcome'Failure p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.taskQueue' @:: Lens' ActivityOptions Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'taskQueue' @:: Lens' ActivityOptions (Prelude.Maybe Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.scheduleToCloseTimeout' @:: Lens' ActivityOptions Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'scheduleToCloseTimeout' @:: Lens' ActivityOptions (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.scheduleToStartTimeout' @:: Lens' ActivityOptions Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'scheduleToStartTimeout' @:: Lens' ActivityOptions (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.startToCloseTimeout' @:: Lens' ActivityOptions Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'startToCloseTimeout' @:: Lens' ActivityOptions (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.heartbeatTimeout' @:: Lens' ActivityOptions Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'heartbeatTimeout' @:: Lens' ActivityOptions (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.retryPolicy' @:: Lens' ActivityOptions Proto.Temporal.Api.Common.V1.Message.RetryPolicy@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'retryPolicy' @:: Lens' ActivityOptions (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.priority' @:: Lens' ActivityOptions Proto.Temporal.Api.Common.V1.Message.Priority@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'priority' @:: Lens' ActivityOptions (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.startDelay' @:: Lens' ActivityOptions Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'startDelay' @:: Lens' ActivityOptions (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data ActivityOptions
  = ActivityOptions'_constructor {_ActivityOptions'taskQueue :: !(Prelude.Maybe Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue),
                                  _ActivityOptions'scheduleToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _ActivityOptions'scheduleToStartTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _ActivityOptions'startToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _ActivityOptions'heartbeatTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _ActivityOptions'retryPolicy :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy),
                                  _ActivityOptions'priority :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority),
                                  _ActivityOptions'startDelay :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _ActivityOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ActivityOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ActivityOptions "taskQueue" Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'taskQueue
           (\ x__ y__ -> x__ {_ActivityOptions'taskQueue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityOptions "maybe'taskQueue" (Prelude.Maybe Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'taskQueue
           (\ x__ y__ -> x__ {_ActivityOptions'taskQueue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityOptions "scheduleToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'scheduleToCloseTimeout
           (\ x__ y__ -> x__ {_ActivityOptions'scheduleToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityOptions "maybe'scheduleToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'scheduleToCloseTimeout
           (\ x__ y__ -> x__ {_ActivityOptions'scheduleToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityOptions "scheduleToStartTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'scheduleToStartTimeout
           (\ x__ y__ -> x__ {_ActivityOptions'scheduleToStartTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityOptions "maybe'scheduleToStartTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'scheduleToStartTimeout
           (\ x__ y__ -> x__ {_ActivityOptions'scheduleToStartTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityOptions "startToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'startToCloseTimeout
           (\ x__ y__ -> x__ {_ActivityOptions'startToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityOptions "maybe'startToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'startToCloseTimeout
           (\ x__ y__ -> x__ {_ActivityOptions'startToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityOptions "heartbeatTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'heartbeatTimeout
           (\ x__ y__ -> x__ {_ActivityOptions'heartbeatTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityOptions "maybe'heartbeatTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'heartbeatTimeout
           (\ x__ y__ -> x__ {_ActivityOptions'heartbeatTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityOptions "retryPolicy" Proto.Temporal.Api.Common.V1.Message.RetryPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'retryPolicy
           (\ x__ y__ -> x__ {_ActivityOptions'retryPolicy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityOptions "maybe'retryPolicy" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'retryPolicy
           (\ x__ y__ -> x__ {_ActivityOptions'retryPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityOptions "priority" Proto.Temporal.Api.Common.V1.Message.Priority where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'priority
           (\ x__ y__ -> x__ {_ActivityOptions'priority = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityOptions "maybe'priority" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'priority
           (\ x__ y__ -> x__ {_ActivityOptions'priority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityOptions "startDelay" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'startDelay
           (\ x__ y__ -> x__ {_ActivityOptions'startDelay = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityOptions "maybe'startDelay" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'startDelay
           (\ x__ y__ -> x__ {_ActivityOptions'startDelay = y__}))
        Prelude.id
instance Data.ProtoLens.Message ActivityOptions where
  messageName _
    = Data.Text.pack "temporal.api.activity.v1.ActivityOptions"
  packedMessageDescriptor _
    = "\n\
      \\SIActivityOptions\DC2C\n\
      \\n\
      \task_queue\CAN\SOH \SOH(\v2$.temporal.api.taskqueue.v1.TaskQueueR\ttaskQueue\DC2T\n\
      \\EMschedule_to_close_timeout\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2T\n\
      \\EMschedule_to_start_timeout\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout\DC2N\n\
      \\SYNstart_to_close_timeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\DC2F\n\
      \\DC1heartbeat_timeout\CAN\ENQ \SOH(\v2\EM.google.protobuf.DurationR\DLEheartbeatTimeout\DC2F\n\
      \\fretry_policy\CAN\ACK \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2<\n\
      \\bpriority\CAN\a \SOH(\v2 .temporal.api.common.v1.PriorityR\bpriority\DC2:\n\
      \\vstart_delay\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\n\
      \startDelay"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        taskQueue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'taskQueue")) ::
              Data.ProtoLens.FieldDescriptor ActivityOptions
        scheduleToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor ActivityOptions
        scheduleToStartTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_start_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToStartTimeout")) ::
              Data.ProtoLens.FieldDescriptor ActivityOptions
        startToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor ActivityOptions
        heartbeatTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heartbeat_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heartbeatTimeout")) ::
              Data.ProtoLens.FieldDescriptor ActivityOptions
        retryPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.RetryPolicy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'retryPolicy")) ::
              Data.ProtoLens.FieldDescriptor ActivityOptions
        priority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "priority"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Priority)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'priority")) ::
              Data.ProtoLens.FieldDescriptor ActivityOptions
        startDelay__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_delay"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startDelay")) ::
              Data.ProtoLens.FieldDescriptor ActivityOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, taskQueue__field_descriptor),
           (Data.ProtoLens.Tag 2, scheduleToCloseTimeout__field_descriptor),
           (Data.ProtoLens.Tag 3, scheduleToStartTimeout__field_descriptor),
           (Data.ProtoLens.Tag 4, startToCloseTimeout__field_descriptor),
           (Data.ProtoLens.Tag 5, heartbeatTimeout__field_descriptor),
           (Data.ProtoLens.Tag 6, retryPolicy__field_descriptor),
           (Data.ProtoLens.Tag 7, priority__field_descriptor),
           (Data.ProtoLens.Tag 8, startDelay__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ActivityOptions'_unknownFields
        (\ x__ y__ -> x__ {_ActivityOptions'_unknownFields = y__})
  defMessage
    = ActivityOptions'_constructor
        {_ActivityOptions'taskQueue = Prelude.Nothing,
         _ActivityOptions'scheduleToCloseTimeout = Prelude.Nothing,
         _ActivityOptions'scheduleToStartTimeout = Prelude.Nothing,
         _ActivityOptions'startToCloseTimeout = Prelude.Nothing,
         _ActivityOptions'heartbeatTimeout = Prelude.Nothing,
         _ActivityOptions'retryPolicy = Prelude.Nothing,
         _ActivityOptions'priority = Prelude.Nothing,
         _ActivityOptions'startDelay = Prelude.Nothing,
         _ActivityOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ActivityOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser ActivityOptions
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "task_queue"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskQueue") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToCloseTimeout") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_start_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToStartTimeout") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_to_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startToCloseTimeout") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "heartbeat_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"heartbeatTimeout") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "retry_policy"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"retryPolicy") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "priority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"priority") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_delay"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startDelay") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ActivityOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'taskQueue") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'scheduleToCloseTimeout") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'scheduleToStartTimeout") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'startToCloseTimeout") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'heartbeatTimeout") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'retryPolicy") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'priority") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'startDelay") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData ActivityOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ActivityOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ActivityOptions'taskQueue x__)
                (Control.DeepSeq.deepseq
                   (_ActivityOptions'scheduleToCloseTimeout x__)
                   (Control.DeepSeq.deepseq
                      (_ActivityOptions'scheduleToStartTimeout x__)
                      (Control.DeepSeq.deepseq
                         (_ActivityOptions'startToCloseTimeout x__)
                         (Control.DeepSeq.deepseq
                            (_ActivityOptions'heartbeatTimeout x__)
                            (Control.DeepSeq.deepseq
                               (_ActivityOptions'retryPolicy x__)
                               (Control.DeepSeq.deepseq
                                  (_ActivityOptions'priority x__)
                                  (Control.DeepSeq.deepseq
                                     (_ActivityOptions'startDelay x__) ()))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.trigger' @:: Lens' CallbackInfo CallbackInfo'Trigger@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'trigger' @:: Lens' CallbackInfo (Prelude.Maybe CallbackInfo'Trigger)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.info' @:: Lens' CallbackInfo Proto.Temporal.Api.Callback.V1.Message.CallbackInfo@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'info' @:: Lens' CallbackInfo (Prelude.Maybe Proto.Temporal.Api.Callback.V1.Message.CallbackInfo)@ -}
data CallbackInfo
  = CallbackInfo'_constructor {_CallbackInfo'trigger :: !(Prelude.Maybe CallbackInfo'Trigger),
                               _CallbackInfo'info :: !(Prelude.Maybe Proto.Temporal.Api.Callback.V1.Message.CallbackInfo),
                               _CallbackInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CallbackInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CallbackInfo "trigger" CallbackInfo'Trigger where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CallbackInfo'trigger
           (\ x__ y__ -> x__ {_CallbackInfo'trigger = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CallbackInfo "maybe'trigger" (Prelude.Maybe CallbackInfo'Trigger) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CallbackInfo'trigger
           (\ x__ y__ -> x__ {_CallbackInfo'trigger = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CallbackInfo "info" Proto.Temporal.Api.Callback.V1.Message.CallbackInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CallbackInfo'info (\ x__ y__ -> x__ {_CallbackInfo'info = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CallbackInfo "maybe'info" (Prelude.Maybe Proto.Temporal.Api.Callback.V1.Message.CallbackInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CallbackInfo'info (\ x__ y__ -> x__ {_CallbackInfo'info = y__}))
        Prelude.id
instance Data.ProtoLens.Message CallbackInfo where
  messageName _
    = Data.Text.pack "temporal.api.activity.v1.CallbackInfo"
  packedMessageDescriptor _
    = "\n\
      \\fCallbackInfo\DC2H\n\
      \\atrigger\CAN\SOH \SOH(\v2..temporal.api.activity.v1.CallbackInfo.TriggerR\atrigger\DC2:\n\
      \\EOTinfo\CAN\STX \SOH(\v2&.temporal.api.callback.v1.CallbackInfoR\EOTinfo\SUB\DLE\n\
      \\SOActivityClosed\SUBv\n\
      \\aTrigger\DC2`\n\
      \\SIactivity_closed\CAN\SOH \SOH(\v25.temporal.api.activity.v1.CallbackInfo.ActivityClosedH\NULR\SOactivityClosedB\t\n\
      \\avariant"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        trigger__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trigger"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CallbackInfo'Trigger)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'trigger")) ::
              Data.ProtoLens.FieldDescriptor CallbackInfo
        info__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Callback.V1.Message.CallbackInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'info")) ::
              Data.ProtoLens.FieldDescriptor CallbackInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, trigger__field_descriptor),
           (Data.ProtoLens.Tag 2, info__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CallbackInfo'_unknownFields
        (\ x__ y__ -> x__ {_CallbackInfo'_unknownFields = y__})
  defMessage
    = CallbackInfo'_constructor
        {_CallbackInfo'trigger = Prelude.Nothing,
         _CallbackInfo'info = Prelude.Nothing,
         _CallbackInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CallbackInfo -> Data.ProtoLens.Encoding.Bytes.Parser CallbackInfo
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "trigger"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"trigger") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "info"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"info") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CallbackInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'trigger") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'info") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData CallbackInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CallbackInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CallbackInfo'trigger x__)
                (Control.DeepSeq.deepseq (_CallbackInfo'info x__) ()))
{- | Fields :
      -}
data CallbackInfo'ActivityClosed
  = CallbackInfo'ActivityClosed'_constructor {_CallbackInfo'ActivityClosed'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CallbackInfo'ActivityClosed where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message CallbackInfo'ActivityClosed where
  messageName _
    = Data.Text.pack
        "temporal.api.activity.v1.CallbackInfo.ActivityClosed"
  packedMessageDescriptor _
    = "\n\
      \\SOActivityClosed"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CallbackInfo'ActivityClosed'_unknownFields
        (\ x__ y__
           -> x__ {_CallbackInfo'ActivityClosed'_unknownFields = y__})
  defMessage
    = CallbackInfo'ActivityClosed'_constructor
        {_CallbackInfo'ActivityClosed'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CallbackInfo'ActivityClosed
          -> Data.ProtoLens.Encoding.Bytes.Parser CallbackInfo'ActivityClosed
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ActivityClosed"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData CallbackInfo'ActivityClosed where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CallbackInfo'ActivityClosed'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'variant' @:: Lens' CallbackInfo'Trigger (Prelude.Maybe CallbackInfo'Trigger'Variant)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'activityClosed' @:: Lens' CallbackInfo'Trigger (Prelude.Maybe CallbackInfo'ActivityClosed)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.activityClosed' @:: Lens' CallbackInfo'Trigger CallbackInfo'ActivityClosed@ -}
data CallbackInfo'Trigger
  = CallbackInfo'Trigger'_constructor {_CallbackInfo'Trigger'variant :: !(Prelude.Maybe CallbackInfo'Trigger'Variant),
                                       _CallbackInfo'Trigger'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CallbackInfo'Trigger where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data CallbackInfo'Trigger'Variant
  = CallbackInfo'Trigger'ActivityClosed !CallbackInfo'ActivityClosed
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField CallbackInfo'Trigger "maybe'variant" (Prelude.Maybe CallbackInfo'Trigger'Variant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CallbackInfo'Trigger'variant
           (\ x__ y__ -> x__ {_CallbackInfo'Trigger'variant = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CallbackInfo'Trigger "maybe'activityClosed" (Prelude.Maybe CallbackInfo'ActivityClosed) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CallbackInfo'Trigger'variant
           (\ x__ y__ -> x__ {_CallbackInfo'Trigger'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CallbackInfo'Trigger'ActivityClosed x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CallbackInfo'Trigger'ActivityClosed y__))
instance Data.ProtoLens.Field.HasField CallbackInfo'Trigger "activityClosed" CallbackInfo'ActivityClosed where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CallbackInfo'Trigger'variant
           (\ x__ y__ -> x__ {_CallbackInfo'Trigger'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CallbackInfo'Trigger'ActivityClosed x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CallbackInfo'Trigger'ActivityClosed y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message CallbackInfo'Trigger where
  messageName _
    = Data.Text.pack "temporal.api.activity.v1.CallbackInfo.Trigger"
  packedMessageDescriptor _
    = "\n\
      \\aTrigger\DC2`\n\
      \\SIactivity_closed\CAN\SOH \SOH(\v25.temporal.api.activity.v1.CallbackInfo.ActivityClosedH\NULR\SOactivityClosedB\t\n\
      \\avariant"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        activityClosed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_closed"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CallbackInfo'ActivityClosed)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'activityClosed")) ::
              Data.ProtoLens.FieldDescriptor CallbackInfo'Trigger
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, activityClosed__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CallbackInfo'Trigger'_unknownFields
        (\ x__ y__ -> x__ {_CallbackInfo'Trigger'_unknownFields = y__})
  defMessage
    = CallbackInfo'Trigger'_constructor
        {_CallbackInfo'Trigger'variant = Prelude.Nothing,
         _CallbackInfo'Trigger'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CallbackInfo'Trigger
          -> Data.ProtoLens.Encoding.Bytes.Parser CallbackInfo'Trigger
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "activity_closed"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"activityClosed") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Trigger"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'variant") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (CallbackInfo'Trigger'ActivityClosed v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CallbackInfo'Trigger where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CallbackInfo'Trigger'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CallbackInfo'Trigger'variant x__) ())
instance Control.DeepSeq.NFData CallbackInfo'Trigger'Variant where
  rnf (CallbackInfo'Trigger'ActivityClosed x__)
    = Control.DeepSeq.rnf x__
_CallbackInfo'Trigger'ActivityClosed ::
  Data.ProtoLens.Prism.Prism' CallbackInfo'Trigger'Variant CallbackInfo'ActivityClosed
_CallbackInfo'Trigger'ActivityClosed
  = Data.ProtoLens.Prism.prism'
      CallbackInfo'Trigger'ActivityClosed
      (\ p__
         -> case p__ of
              (CallbackInfo'Trigger'ActivityClosed p__val)
                -> Prelude.Just p__val)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&temporal/api/activity/v1/message.proto\DC2\CANtemporal.api.activity.v1\SUB\RSgoogle/protobuf/duration.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB$temporal/api/common/v1/message.proto\SUB(temporal/api/deployment/v1/message.proto\SUB$temporal/api/enums/v1/activity.proto\SUB&temporal/api/callback/v1/message.proto\SUB$temporal/api/enums/v1/workflow.proto\SUB%temporal/api/failure/v1/message.proto\SUB#temporal/api/nexus/v1/message.proto\SUB'temporal/api/taskqueue/v1/message.proto\SUB'temporal/api/sdk/v1/user_metadata.proto\"\225\SOH\n\
    \\CANActivityExecutionOutcome\DC2:\n\
    \\ACKresult\CAN\SOH \SOH(\v2 .temporal.api.common.v1.PayloadsH\NULR\ACKresult\DC2<\n\
    \\afailure\CAN\STX \SOH(\v2 .temporal.api.failure.v1.FailureH\NULR\afailure\DC2B\n\
    \\vretry_state\CAN\ETX \SOH(\SO2!.temporal.api.enums.v1.RetryStateR\n\
    \retryStateB\a\n\
    \\ENQvalue\"\220\EOT\n\
    \\SIActivityOptions\DC2C\n\
    \\n\
    \task_queue\CAN\SOH \SOH(\v2$.temporal.api.taskqueue.v1.TaskQueueR\ttaskQueue\DC2T\n\
    \\EMschedule_to_close_timeout\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2T\n\
    \\EMschedule_to_start_timeout\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout\DC2N\n\
    \\SYNstart_to_close_timeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\DC2F\n\
    \\DC1heartbeat_timeout\CAN\ENQ \SOH(\v2\EM.google.protobuf.DurationR\DLEheartbeatTimeout\DC2F\n\
    \\fretry_policy\CAN\ACK \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2<\n\
    \\bpriority\CAN\a \SOH(\v2 .temporal.api.common.v1.PriorityR\bpriority\DC2:\n\
    \\vstart_delay\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\n\
    \startDelay\"\229\SYN\n\
    \\NAKActivityExecutionInfo\DC2\US\n\
    \\vactivity_id\CAN\SOH \SOH(\tR\n\
    \activityId\DC2\NAK\n\
    \\ACKrun_id\CAN\STX \SOH(\tR\ENQrunId\DC2I\n\
    \\ractivity_type\CAN\ETX \SOH(\v2$.temporal.api.common.v1.ActivityTypeR\factivityType\DC2F\n\
    \\ACKstatus\CAN\EOT \SOH(\SO2..temporal.api.enums.v1.ActivityExecutionStatusR\ACKstatus\DC2H\n\
    \\trun_state\CAN\ENQ \SOH(\SO2+.temporal.api.enums.v1.PendingActivityStateR\brunState\DC2\GS\n\
    \\n\
    \task_queue\CAN\ACK \SOH(\tR\ttaskQueue\DC2T\n\
    \\EMschedule_to_close_timeout\CAN\a \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2T\n\
    \\EMschedule_to_start_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout\DC2N\n\
    \\SYNstart_to_close_timeout\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\DC2F\n\
    \\DC1heartbeat_timeout\CAN\n\
    \ \SOH(\v2\EM.google.protobuf.DurationR\DLEheartbeatTimeout\DC2F\n\
    \\fretry_policy\CAN\v \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2M\n\
    \\DC1heartbeat_details\CAN\f \SOH(\v2 .temporal.api.common.v1.PayloadsR\DLEheartbeatDetails\DC2J\n\
    \\DC3last_heartbeat_time\CAN\r \SOH(\v2\SUB.google.protobuf.TimestampR\DC1lastHeartbeatTime\DC2F\n\
    \\DC1last_started_time\CAN\SO \SOH(\v2\SUB.google.protobuf.TimestampR\SIlastStartedTime\DC2\CAN\n\
    \\aattempt\CAN\SI \SOH(\ENQR\aattempt\DC2H\n\
    \\DC2execution_duration\CAN\DLE \SOH(\v2\EM.google.protobuf.DurationR\DC1executionDuration\DC2?\n\
    \\rschedule_time\CAN\DC1 \SOH(\v2\SUB.google.protobuf.TimestampR\fscheduleTime\DC2C\n\
    \\SIexpiration_time\CAN\DC2 \SOH(\v2\SUB.google.protobuf.TimestampR\SOexpirationTime\DC29\n\
    \\n\
    \close_time\CAN\DC3 \SOH(\v2\SUB.google.protobuf.TimestampR\tcloseTime\DC2C\n\
    \\flast_failure\CAN\DC4 \SOH(\v2 .temporal.api.failure.v1.FailureR\vlastFailure\DC20\n\
    \\DC4last_worker_identity\CAN\NAK \SOH(\tR\DC2lastWorkerIdentity\DC2O\n\
    \\SYNcurrent_retry_interval\CAN\SYN \SOH(\v2\EM.google.protobuf.DurationR\DC4currentRetryInterval\DC2W\n\
    \\SUBlast_attempt_complete_time\CAN\ETB \SOH(\v2\SUB.google.protobuf.TimestampR\ETBlastAttemptCompleteTime\DC2W\n\
    \\SUBnext_attempt_schedule_time\CAN\CAN \SOH(\v2\SUB.google.protobuf.TimestampR\ETBnextAttemptScheduleTime\DC2k\n\
    \\ETBlast_deployment_version\CAN\EM \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\NAKlastDeploymentVersion\DC2<\n\
    \\bpriority\CAN\SUB \SOH(\v2 .temporal.api.common.v1.PriorityR\bpriority\DC24\n\
    \\SYNstate_transition_count\CAN\ESC \SOH(\ETXR\DC4stateTransitionCount\DC2(\n\
    \\DLEstate_size_bytes\CAN\FS \SOH(\ETXR\SOstateSizeBytes\DC2U\n\
    \\DC1search_attributes\CAN\GS \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC26\n\
    \\ACKheader\CAN\RS \SOH(\v2\RS.temporal.api.common.v1.HeaderR\ACKheader\DC2F\n\
    \\ruser_metadata\CAN\US \SOH(\v2!.temporal.api.sdk.v1.UserMetadataR\fuserMetadata\DC2'\n\
    \\SIcanceled_reason\CAN  \SOH(\tR\SOcanceledReason\DC22\n\
    \\ENQlinks\CAN! \ETX(\v2\FS.temporal.api.common.v1.LinkR\ENQlinks\DC22\n\
    \\NAKtotal_heartbeat_count\CAN\" \SOH(\ETXR\DC3totalHeartbeatCount\DC2\EM\n\
    \\bsdk_name\CAN# \SOH(\tR\asdkName\DC2\US\n\
    \\vsdk_version\CAN$ \SOH(\tR\n\
    \sdkVersion\DC2:\n\
    \\vstart_delay\CAN% \SOH(\v2\EM.google.protobuf.DurationR\n\
    \startDelay\DC2A\n\
    \\SOexecution_time\CAN& \SOH(\v2\SUB.google.protobuf.TimestampR\rexecutionTime\DC2\138\SOH\n\
    \&propagated_nexus_serialization_context\CAN' \SOH(\v25.temporal.api.nexus.v1.PropagatedSerializationContextR#propagatedNexusSerializationContext\DC28\n\
    \\CANeager_execution_accepted\CAN( \SOH(\bR\SYNeagerExecutionAccepted\DC2[\n\
    \\DC4started_by_principal\CAN) \SOH(\v2).temporal.api.common.v1.ResolvedPrincipalR\DC2startedByPrincipal\DC2Y\n\
    \\DC3closed_by_principal\CAN* \SOH(\v2).temporal.api.common.v1.ResolvedPrincipalR\DC1closedByPrincipal\DC2]\n\
    \\NAKlast_worker_principal\CAN+ \SOH(\v2).temporal.api.common.v1.ResolvedPrincipalR\DC3lastWorkerPrincipal\"\197\ENQ\n\
    \\EMActivityExecutionListInfo\DC2\US\n\
    \\vactivity_id\CAN\SOH \SOH(\tR\n\
    \activityId\DC2\NAK\n\
    \\ACKrun_id\CAN\STX \SOH(\tR\ENQrunId\DC2I\n\
    \\ractivity_type\CAN\ETX \SOH(\v2$.temporal.api.common.v1.ActivityTypeR\factivityType\DC2?\n\
    \\rschedule_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\fscheduleTime\DC29\n\
    \\n\
    \close_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\tcloseTime\DC2F\n\
    \\ACKstatus\CAN\ACK \SOH(\SO2..temporal.api.enums.v1.ActivityExecutionStatusR\ACKstatus\DC2U\n\
    \\DC1search_attributes\CAN\a \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC2\GS\n\
    \\n\
    \task_queue\CAN\b \SOH(\tR\ttaskQueue\DC24\n\
    \\SYNstate_transition_count\CAN\t \SOH(\ETXR\DC4stateTransitionCount\DC2(\n\
    \\DLEstate_size_bytes\CAN\n\
    \ \SOH(\ETXR\SOstateSizeBytes\DC2H\n\
    \\DC2execution_duration\CAN\v \SOH(\v2\EM.google.protobuf.DurationR\DC1executionDuration\DC2A\n\
    \\SOexecution_time\CAN\f \SOH(\v2\SUB.google.protobuf.TimestampR\rexecutionTime\"\158\STX\n\
    \\fCallbackInfo\DC2H\n\
    \\atrigger\CAN\SOH \SOH(\v2..temporal.api.activity.v1.CallbackInfo.TriggerR\atrigger\DC2:\n\
    \\EOTinfo\CAN\STX \SOH(\v2&.temporal.api.callback.v1.CallbackInfoR\EOTinfo\SUB\DLE\n\
    \\SOActivityClosed\SUBv\n\
    \\aTrigger\DC2`\n\
    \\SIactivity_closed\CAN\SOH \SOH(\v25.temporal.api.activity.v1.CallbackInfo.ActivityClosedH\NULR\SOactivityClosedB\t\n\
    \\avariantB\147\SOH\n\
    \\ESCio.temporal.api.activity.v1B\fMessageProtoP\SOHZ'go.temporal.io/api/activity/v1;activity\170\STX\SUBTemporalio.Api.Activity.V1\234\STX\GSTemporalio::Api::Activity::V1J\179e\n\
    \\a\DC2\ENQ\NUL\NUL\145\STX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NUL>\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\EOT\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NUL4\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\ENQ\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\ACK\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL-\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\a\NUL-\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL6\n\
    \\t\n\
    \\STX\b-\DC2\ETX\b\NUL6\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL7\n\
    \\t\n\
    \\STX\b%\DC2\ETX\t\NUL7\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\v\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\f\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\SO\NUL.\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\SI\NUL2\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\DLE\NUL.\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\DC1\NUL0\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\DC2\NUL.\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\DC3\NUL/\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\DC4\NUL-\n\
    \\t\n\
    \\STX\ETX\t\DC2\ETX\NAK\NUL1\n\
    \\t\n\
    \\STX\ETX\n\
    \\DC2\ETX\SYN\NUL1\n\
    \e\n\
    \\STX\EOT\NUL\DC2\EOT\EM\NUL$\SOH\SUBY The outcome of a completed activity execution: either a successful result or a failure.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\EM\b \n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\SUB\EOT\US\ENQ\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\SUB\n\
    \\SI\n\
    \A\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\FS\b3\SUB4 The result if the activity completed successfully.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\FS\b'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\FS(.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\FS12\n\
    \D\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\RS\b4\SUB7 The failure if the activity completed unsuccessfully.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\RS\b'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\RS(/\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\RS23\n\
    \\136\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX#\EOT5\SUB{ The retry state associated with an unsuccessful activity execution.\n\
    \ This field is only meaningful when `failure` is set.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX#\EOT$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX#%0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX#34\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT&\NULK\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX&\b\ETB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX'\EOT7\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX'\EOT'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX'(2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX'56\n\
    \\186\STX\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX.\EOT;\SUB\172\STX Indicates how long the caller is willing to wait for an activity completion. Limits how long\n\
    \ retries will be attempted. Either this or `start_to_close_timeout` must be specified.\n\
    \\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX.\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX.\GS6\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX.9:\n\
    \\158\ETX\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX6\EOT;\SUB\144\ETX Limits time an activity task can stay in a task queue before a worker picks it up. This\n\
    \ timeout is always non retryable, as all a retry would achieve is to put it back into the same\n\
    \ queue. Defaults to `schedule_to_close_timeout` or workflow execution timeout if not\n\
    \ specified.\n\
    \\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX6\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX6\GS6\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX69:\n\
    \\186\STX\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX=\EOT8\SUB\172\STX Maximum time an activity is allowed to execute after being picked up by a worker. This\n\
    \ timeout is always retryable. Either this or `schedule_to_close_timeout` must be\n\
    \ specified.\n\
    \\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETX=\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX=\GS3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX=67\n\
    \K\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX?\EOT3\SUB> Maximum permitted time between successful worker heartbeats.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\ETX?\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX?\GS.\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX?12\n\
    \`\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETXA\EOT8\SUBS The retry policy for the activity. Will never exceed `schedule_to_close_timeout`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\ETXA\EOT&\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETXA'3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETXA67\n\
    \\140\SOH\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETXE\EOT1\SUB\DEL Priority metadata. If this message is not present, or any fields are not\n\
    \ present, they inherit the values from the workflow.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\ETXE\EOT#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETXE$,\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETXE/0\n\
    \\190\STX\n\
    \\EOT\EOT\SOH\STX\a\DC2\ETXJ\EOT-\SUB\176\STX Time to wait before making the first activity task available for dispatch. This delay is not applied to retry attempts.\n\
    \ When updated, the time is added to the original `schedule_time`, not to the current time.\n\
    \ If the resulting time is in the past, the task is made available for dispatch immediately.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ACK\DC2\ETXJ\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETXJ\GS(\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETXJ+,\n\
    \7\n\
    \\STX\EOT\STX\DC2\ENQN\NUL\220\SOH\SOH\SUB* Information about a standalone activity.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXN\b\GS\n\
    \a\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXP\EOT\ESC\SUBT Unique identifier of this activity within its namespace along with run ID (below).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXP\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXP\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXP\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXQ\EOT\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXQ\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXQ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXQ\DC4\NAK\n\
    \a\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETXT\EOT:\SUBT The type of the activity, a string that maps to a registered activity on a worker.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETXT\EOT'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETXT(5\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETXT89\n\
    \\128\SOH\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETXV\EOT=\SUBs A general status for this activity, indicates whether it is currently running or in one of the terminal statuses.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\ETXV\EOT1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETXV28\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETXV;<\n\
    \L\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETXX\EOT=\SUB? More detailed breakdown of ACTIVITY_EXECUTION_STATUS_RUNNING.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ACK\DC2\ETXX\EOT.\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETXX/8\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETXX;<\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETXZ\EOT\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ENQ\DC2\ETXZ\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETXZ\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETXZ\CAN\EM\n\
    \\255\SOH\n\
    \\EOT\EOT\STX\STX\ACK\DC2\ETXa\EOT;\SUB\241\SOH Indicates how long the caller is willing to wait for an activity completion. Limits how long\n\
    \ retries will be attempted.\n\
    \\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ACK\DC2\ETXa\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\ETXa\GS6\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\ETXa9:\n\
    \\238\STX\n\
    \\EOT\EOT\STX\STX\a\DC2\ETXh\EOT;\SUB\224\STX Limits time an activity task can stay in a task queue before a worker picks it up. This\n\
    \ timeout is always non retryable, as all a retry would achieve is to put it back into the same\n\
    \ queue. Defaults to `schedule_to_close_timeout`.\n\
    \\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ACK\DC2\ETXh\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\SOH\DC2\ETXh\GS6\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ETX\DC2\ETXh9:\n\
    \\137\STX\n\
    \\EOT\EOT\STX\STX\b\DC2\ETXn\EOT8\SUB\251\SOH Maximum time a single activity attempt is allowed to execute after being picked up by a worker. This\n\
    \ timeout is always retryable.\n\
    \\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\b\ACK\DC2\ETXn\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\b\SOH\DC2\ETXn\GS3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\b\ETX\DC2\ETXn67\n\
    \K\n\
    \\EOT\EOT\STX\STX\t\DC2\ETXq\EOT4\SUB> Maximum permitted time between successful worker heartbeats.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\t\ACK\DC2\ETXq\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\t\SOH\DC2\ETXq\GS.\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\t\ETX\DC2\ETXq13\n\
    \`\n\
    \\EOT\EOT\STX\STX\n\
    \\DC2\ETXt\EOT9\SUBS The retry policy for the activity. Will never exceed `schedule_to_close_timeout`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\n\
    \\ACK\DC2\ETXt\EOT&\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\n\
    \\SOH\DC2\ETXt'3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\n\
    \\ETX\DC2\ETXt68\n\
    \\182\SOH\n\
    \\EOT\EOT\STX\STX\v\DC2\ETXx\EOT;\SUB\168\SOH Details provided in the last recorded activity heartbeat.\n\
    \ DescribeActivityExecution does not set this field unless include_heartbeat_details was true in the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\v\ACK\DC2\ETXx\EOT#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\v\SOH\DC2\ETXx$5\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\v\ETX\DC2\ETXx8:\n\
    \4\n\
    \\EOT\EOT\STX\STX\f\DC2\ETXz\EOT7\SUB' Time the last heartbeat was recorded.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\f\ACK\DC2\ETXz\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\f\SOH\DC2\ETXz\RS1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\f\ETX\DC2\ETXz46\n\
    \1\n\
    \\EOT\EOT\STX\STX\r\DC2\ETX|\EOT5\SUB$ Time the last attempt was started.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\r\ACK\DC2\ETX|\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\r\SOH\DC2\ETX|\RS/\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\r\ETX\DC2\ETX|24\n\
    \k\n\
    \\EOT\EOT\STX\STX\SO\DC2\ETX~\EOT\ETB\SUB^ The attempt this activity is currently on. Incremented each time a new attempt is scheduled.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SO\ENQ\DC2\ETX~\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SO\SOH\DC2\ETX~\n\
    \\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SO\ETX\DC2\ETX~\DC4\SYN\n\
    \q\n\
    \\EOT\EOT\STX\STX\SI\DC2\EOT\128\SOH\EOT5\SUBc How long this activity has been running for, including all attempts and backoff between attempts.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SI\ACK\DC2\EOT\128\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SI\SOH\DC2\EOT\128\SOH\GS/\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SI\ETX\DC2\EOT\128\SOH24\n\
    \`\n\
    \\EOT\EOT\STX\STX\DLE\DC2\EOT\130\SOH\EOT1\SUBR Time the activity was originally scheduled via a StartActivityExecution request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DLE\ACK\DC2\EOT\130\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DLE\SOH\DC2\EOT\130\SOH\RS+\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DLE\ETX\DC2\EOT\130\SOH.0\n\
    \\162\SOH\n\
    \\EOT\EOT\STX\STX\DC1\DC2\EOT\133\SOH\EOT3\SUB\147\SOH The time at which the activity's Schedule-to-Close timeout expires.\n\
    \ Calculated as `schedule_time` + `start_delay` + `schedule_to_close_timeout`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC1\ACK\DC2\EOT\133\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC1\SOH\DC2\EOT\133\SOH\RS-\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC1\ETX\DC2\EOT\133\SOH02\n\
    \F\n\
    \\EOT\EOT\STX\STX\DC2\DC2\EOT\135\SOH\EOT.\SUB8 Time when the activity transitioned to a closed state.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC2\ACK\DC2\EOT\135\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC2\SOH\DC2\EOT\135\SOH\RS(\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC2\ETX\DC2\EOT\135\SOH+-\n\
    \\166\SOH\n\
    \\EOT\EOT\STX\STX\DC3\DC2\EOT\139\SOH\EOT6\SUB\151\SOH Failure details from the last failed attempt.\n\
    \ DescribeActivityExecution does not set this field unless include_last_failure was true in the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC3\ACK\DC2\EOT\139\SOH\EOT#\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC3\SOH\DC2\EOT\139\SOH$0\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC3\ETX\DC2\EOT\139\SOH35\n\
    \\f\n\
    \\EOT\EOT\STX\STX\DC4\DC2\EOT\140\SOH\EOT%\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC4\ENQ\DC2\EOT\140\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC4\SOH\DC2\EOT\140\SOH\v\US\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC4\ETX\DC2\EOT\140\SOH\"$\n\
    \\138\EOT\n\
    \\EOT\EOT\STX\STX\NAK\DC2\EOT\148\SOH\EOT9\SUB\251\ETX Time from the last attempt failure to the next activity retry.\n\
    \ If the activity is currently running, this represents the next retry interval in case the attempt fails.\n\
    \ If activity is currently backing off between attempt, this represents the current retry interval.\n\
    \ If there is no next retry allowed, this field will be null.\n\
    \ This interval is typically calculated from the specified retry policy, but may be modified if an activity fails\n\
    \ with a retryable application failure specifying a retry delay.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NAK\ACK\DC2\EOT\148\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NAK\SOH\DC2\EOT\148\SOH\GS3\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NAK\ETX\DC2\EOT\148\SOH68\n\
    \{\n\
    \\EOT\EOT\STX\STX\SYN\DC2\EOT\151\SOH\EOT>\SUBm The time when the last activity attempt completed. If activity has not been completed yet, it will be null.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SYN\ACK\DC2\EOT\151\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SYN\SOH\DC2\EOT\151\SOH\RS8\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SYN\ETX\DC2\EOT\151\SOH;=\n\
    \\148\SOH\n\
    \\EOT\EOT\STX\STX\ETB\DC2\EOT\155\SOH\EOT>\SUB\133\SOH The time when the next activity attempt will be scheduled.\n\
    \ If activity is currently scheduled or started, this field will be null.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETB\ACK\DC2\EOT\155\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETB\SOH\DC2\EOT\155\SOH\RS8\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETB\ETX\DC2\EOT\155\SOH;=\n\
    \\192\SOH\n\
    \\EOT\EOT\STX\STX\CAN\DC2\EOT\159\SOH\EOTT\SUB\177\SOH The Worker Deployment Version this activity was dispatched to most recently.\n\
    \ If nil, the activity has not yet been dispatched or was last dispatched to an unversioned worker.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\CAN\ACK\DC2\EOT\159\SOH\EOT6\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\CAN\SOH\DC2\EOT\159\SOH7N\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\CAN\ETX\DC2\EOT\159\SOHQS\n\
    \\"\n\
    \\EOT\EOT\STX\STX\EM\DC2\EOT\162\SOH\EOT2\SUB\DC4 Priority metadata.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EM\ACK\DC2\EOT\162\SOH\EOT#\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EM\SOH\DC2\EOT\162\SOH$,\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EM\ETX\DC2\EOT\162\SOH/1\n\
    \U\n\
    \\EOT\EOT\STX\STX\SUB\DC2\EOT\165\SOH\EOT&\SUBG Incremented each time the activity's state is mutated in persistence.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SUB\ENQ\DC2\EOT\165\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SUB\SOH\DC2\EOT\165\SOH\n\
    \ \n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SUB\ETX\DC2\EOT\165\SOH#%\n\
    \F\n\
    \\EOT\EOT\STX\STX\ESC\DC2\EOT\168\SOH\EOT \SUB8 Updated once on scheduled and once on terminal status.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ESC\ENQ\DC2\EOT\168\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ESC\SOH\DC2\EOT\168\SOH\n\
    \\SUB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ESC\ETX\DC2\EOT\168\SOH\GS\US\n\
    \\f\n\
    \\EOT\EOT\STX\STX\FS\DC2\EOT\170\SOH\EOTC\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\FS\ACK\DC2\EOT\170\SOH\EOT+\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\FS\SOH\DC2\EOT\170\SOH,=\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\FS\ETX\DC2\EOT\170\SOH@B\n\
    \\f\n\
    \\EOT\EOT\STX\STX\GS\DC2\EOT\171\SOH\EOT.\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\GS\ACK\DC2\EOT\171\SOH\EOT!\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\GS\SOH\DC2\EOT\171\SOH\"(\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\GS\ETX\DC2\EOT\171\SOH+-\n\
    \y\n\
    \\EOT\EOT\STX\STX\RS\DC2\EOT\173\SOH\EOT8\SUBk Metadata for use by user interfaces to display the fixed as-of-start summary and details of the activity.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\RS\ACK\DC2\EOT\173\SOH\EOT$\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\RS\SOH\DC2\EOT\173\SOH%2\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\RS\ETX\DC2\EOT\173\SOH57\n\
    \:\n\
    \\EOT\EOT\STX\STX\US\DC2\EOT\176\SOH\EOT \SUB, Set if activity cancelation was requested.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\US\ENQ\DC2\EOT\176\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\US\SOH\DC2\EOT\176\SOH\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\US\ETX\DC2\EOT\176\SOH\GS\US\n\
    \Y\n\
    \\EOT\EOT\STX\STX \DC2\EOT\179\SOH\EOT4\SUBK Links to related entities, such as the entity that started this activity.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX \EOT\DC2\EOT\179\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\STX\STX \ACK\DC2\EOT\179\SOH\r(\n\
    \\r\n\
    \\ENQ\EOT\STX\STX \SOH\DC2\EOT\179\SOH).\n\
    \\r\n\
    \\ENQ\EOT\STX\STX \ETX\DC2\EOT\179\SOH13\n\
    \l\n\
    \\EOT\EOT\STX\STX!\DC2\EOT\182\SOH\EOT%\SUB^ Total number of heartbeats recorded across all attempts of this activity, including retries.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX!\ENQ\DC2\EOT\182\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\STX\STX!\SOH\DC2\EOT\182\SOH\n\
    \\US\n\
    \\r\n\
    \\ENQ\EOT\STX\STX!\ETX\DC2\EOT\182\SOH\"$\n\
    \\160\SOH\n\
    \\EOT\EOT\STX\STX\"\DC2\EOT\186\SOH\EOT\EM\SUB\145\SOH The name of the SDK of the worker that most recently picked up an attempt of this activity.\n\
    \ Overwritten on each new attempt. Empty if unknown.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\"\ENQ\DC2\EOT\186\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\"\SOH\DC2\EOT\186\SOH\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\"\ETX\DC2\EOT\186\SOH\SYN\CAN\n\
    \\163\SOH\n\
    \\EOT\EOT\STX\STX#\DC2\EOT\190\SOH\EOT\FS\SUB\148\SOH The version of the SDK of the worker that most recently picked up an attempt of this activity.\n\
    \ Overwritten on each new attempt. Empty if unknown.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX#\ENQ\DC2\EOT\190\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX#\SOH\DC2\EOT\190\SOH\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\STX\STX#\ETX\DC2\EOT\190\SOH\EM\ESC\n\
    \\135\SOH\n\
    \\EOT\EOT\STX\STX$\DC2\EOT\193\SOH\EOT.\SUBy Time to wait before making the first activity task available for dispatch. This delay is not applied to retry attempts.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX$\ACK\DC2\EOT\193\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX$\SOH\DC2\EOT\193\SOH\GS(\n\
    \\r\n\
    \\ENQ\EOT\STX\STX$\ETX\DC2\EOT\193\SOH+-\n\
    \\187\SOH\n\
    \\EOT\EOT\STX\STX%\DC2\EOT\197\SOH\EOT2\SUB\172\SOH The time at which the first activity task is made available for dispatch, computed as\n\
    \ `schedule_time + start_delay`. Same as `schedule_time` if `start_delay` is not set.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX%\ACK\DC2\EOT\197\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX%\SOH\DC2\EOT\197\SOH\RS,\n\
    \\r\n\
    \\ENQ\EOT\STX\STX%\ETX\DC2\EOT\197\SOH/1\n\
    \b\n\
    \\EOT\EOT\STX\STX&\DC2\EOT\200\SOH\EOTe\SUBT Serialization context propagated from the Nexus caller that started this activity.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX&\ACK\DC2\EOT\200\SOH\EOT8\n\
    \\r\n\
    \\ENQ\EOT\STX\STX&\SOH\DC2\EOT\200\SOH9_\n\
    \\r\n\
    \\ENQ\EOT\STX\STX&\ETX\DC2\EOT\200\SOHbd\n\
    \\129\SOH\n\
    \\EOT\EOT\STX\STX'\DC2\EOT\204\SOH\EOT'\SUBs Indicates whether eager execution was requested for this activity and accepted by the server\n\
    \ for its first task.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX'\ENQ\DC2\EOT\204\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\STX\STX'\SOH\DC2\EOT\204\SOH\t!\n\
    \\r\n\
    \\ENQ\EOT\STX\STX'\ETX\DC2\EOT\204\SOH$&\n\
    \\211\SOH\n\
    \\EOT\EOT\STX\STX(\DC2\EOT\210\SOH\EOTG\SUB\196\SOH Authenticated principal by which this activity execution was started.\n\
    \\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"by\" identifies the authenticated actor. --)\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX(\ACK\DC2\EOT\210\SOH\EOT,\n\
    \\r\n\
    \\ENQ\EOT\STX\STX(\SOH\DC2\EOT\210\SOH-A\n\
    \\r\n\
    \\ENQ\EOT\STX\STX(\ETX\DC2\EOT\210\SOHDF\n\
    \\210\SOH\n\
    \\EOT\EOT\STX\STX)\DC2\EOT\216\SOH\EOTF\SUB\195\SOH Authenticated principal by which this activity execution was closed.\n\
    \\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"by\" identifies the authenticated actor. --)\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX)\ACK\DC2\EOT\216\SOH\EOT,\n\
    \\r\n\
    \\ENQ\EOT\STX\STX)\SOH\DC2\EOT\216\SOH-@\n\
    \\r\n\
    \\ENQ\EOT\STX\STX)\ETX\DC2\EOT\216\SOHCE\n\
    \q\n\
    \\EOT\EOT\STX\STX*\DC2\EOT\219\SOH\EOTH\SUBc Authenticated principal of the worker that most recently interacted with this activity execution.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX*\ACK\DC2\EOT\219\SOH\EOT,\n\
    \\r\n\
    \\ENQ\EOT\STX\STX*\SOH\DC2\EOT\219\SOH-B\n\
    \\r\n\
    \\ENQ\EOT\STX\STX*\ETX\DC2\EOT\219\SOHEG\n\
    \\248\SOH\n\
    \\STX\EOT\ETX\DC2\ACK\225\SOH\NUL\128\STX\SOH\SUB\233\SOH Limited activity information returned in the list response.\n\
    \ When adding fields here, ensure that it is also present in ActivityExecutionInfo (note that it\n\
    \ may already be present in ActivityExecutionInfo but not at the top-level).\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\225\SOH\b!\n\
    \d\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\227\SOH\EOT\ESC\SUBV A unique identifier of this activity within its namespace along with run ID (below).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\EOT\227\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\227\SOH\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\227\SOH\EM\SUB\n\
    \6\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\229\SOH\EOT\SYN\SUB( The run ID of the standalone activity.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\EOT\229\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\229\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\229\SOH\DC4\NAK\n\
    \b\n\
    \\EOT\EOT\ETX\STX\STX\DC2\EOT\232\SOH\EOT:\SUBT The type of the activity, a string that maps to a registered activity on a worker.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\EOT\232\SOH\EOT'\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\EOT\232\SOH(5\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\EOT\232\SOH89\n\
    \`\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\EOT\234\SOH\EOT0\SUBR Time the activity was originally scheduled via a StartActivityExecution request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ACK\DC2\EOT\234\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\EOT\234\SOH\RS+\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\EOT\234\SOH./\n\
    \\129\SOH\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\EOT\236\SOH\EOT-\SUBs If the activity is in a terminal status, this field represents the time the activity transitioned to that status.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\ACK\DC2\EOT\236\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\EOT\236\SOH\RS(\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\EOT\236\SOH+,\n\
    \\156\SOH\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\EOT\239\SOH\EOT=\SUB\141\SOH Only scheduled and terminal statuses appear here. More detailed information in PendingActivityInfo but not\n\
    \ available in the list response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\ACK\DC2\EOT\239\SOH\EOT1\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\EOT\239\SOH28\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\EOT\239\SOH;<\n\
    \9\n\
    \\EOT\EOT\ETX\STX\ACK\DC2\EOT\242\SOH\EOTB\SUB+ Search attributes from the start request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ACK\ACK\DC2\EOT\242\SOH\EOT+\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ACK\SOH\DC2\EOT\242\SOH,=\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ACK\ETX\DC2\EOT\242\SOH@A\n\
    \\129\SOH\n\
    \\EOT\EOT\ETX\STX\a\DC2\EOT\245\SOH\EOT\SUB\SUBs The task queue this activity was scheduled on when it was originally started, updated on activity options update.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\a\ENQ\DC2\EOT\245\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\a\SOH\DC2\EOT\245\SOH\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\a\ETX\DC2\EOT\245\SOH\CAN\EM\n\
    \+\n\
    \\EOT\EOT\ETX\STX\b\DC2\EOT\247\SOH\EOT%\SUB\GS Updated on terminal status.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\b\ENQ\DC2\EOT\247\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\b\SOH\DC2\EOT\247\SOH\n\
    \ \n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\b\ETX\DC2\EOT\247\SOH#$\n\
    \F\n\
    \\EOT\EOT\ETX\STX\t\DC2\EOT\249\SOH\EOT \SUB8 Updated once on scheduled and once on terminal status.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\t\ENQ\DC2\EOT\249\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\t\SOH\DC2\EOT\249\SOH\n\
    \\SUB\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\t\ETX\DC2\EOT\249\SOH\GS\US\n\
    \~\n\
    \\EOT\EOT\ETX\STX\n\
    \\DC2\EOT\252\SOH\EOT5\SUBp The difference between close time and scheduled time.\n\
    \ This field is only populated if the activity is closed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ACK\DC2\EOT\252\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\n\
    \\SOH\DC2\EOT\252\SOH\GS/\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ETX\DC2\EOT\252\SOH24\n\
    \\187\SOH\n\
    \\EOT\EOT\ETX\STX\v\DC2\EOT\255\SOH\EOT2\SUB\172\SOH The time at which the first activity task is made available for dispatch, computed as\n\
    \ `schedule_time + start_delay`. Same as `schedule_time` if `start_delay` is not set.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\v\ACK\DC2\EOT\255\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\v\SOH\DC2\EOT\255\SOH\RS,\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\v\ETX\DC2\EOT\255\SOH/1\n\
    \Q\n\
    \\STX\EOT\EOT\DC2\ACK\131\STX\NUL\145\STX\SOH\SUBC CallbackInfo contains the state of an attached activity callback.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\131\STX\b\DC4\n\
    \8\n\
    \\EOT\EOT\EOT\ETX\NUL\DC2\EOT\133\STX\EOT\GS\SUB* Trigger for when the activity is closed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\ETX\NUL\SOH\DC2\EOT\133\STX\f\SUB\n\
    \\SO\n\
    \\EOT\EOT\EOT\ETX\SOH\DC2\ACK\135\STX\EOT\139\STX\ENQ\n\
    \\r\n\
    \\ENQ\EOT\EOT\ETX\SOH\SOH\DC2\EOT\135\STX\f\DC3\n\
    \\DLE\n\
    \\ACK\EOT\EOT\ETX\SOH\b\NUL\DC2\ACK\136\STX\b\138\STX\t\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\SOH\b\NUL\SOH\DC2\EOT\136\STX\SO\NAK\n\
    \\SO\n\
    \\ACK\EOT\EOT\ETX\SOH\STX\NUL\DC2\EOT\137\STX\f/\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\SOH\STX\NUL\ACK\DC2\EOT\137\STX\f\SUB\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\SOH\STX\NUL\SOH\DC2\EOT\137\STX\ESC*\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\SOH\STX\NUL\ETX\DC2\EOT\137\STX-.\n\
    \*\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\142\STX\EOT\CAN\SUB\FS Trigger for this callback.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\EOT\142\STX\EOT\v\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\142\STX\f\DC3\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\142\STX\SYN\ETB\n\
    \%\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\144\STX\EOT3\SUB\ETB Common callback info.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\EOT\144\STX\EOT)\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\144\STX*.\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\144\STX12b\ACKproto3"