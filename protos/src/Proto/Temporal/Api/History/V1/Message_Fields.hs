{- This file was auto-generated from temporal/api/history/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.History.V1.Message_Fields where
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
import qualified Proto.Temporal.Api.Common.V1.Message
import qualified Proto.Temporal.Api.Deployment.V1.Message
import qualified Proto.Temporal.Api.Enums.V1.EventType
import qualified Proto.Temporal.Api.Enums.V1.FailedCause
import qualified Proto.Temporal.Api.Enums.V1.Update
import qualified Proto.Temporal.Api.Enums.V1.Workflow
import qualified Proto.Temporal.Api.Failure.V1.Message
import qualified Proto.Temporal.Api.Nexus.V1.Message
import qualified Proto.Temporal.Api.Sdk.V1.EventGroupMarker
import qualified Proto.Temporal.Api.Sdk.V1.TaskCompleteMetadata
import qualified Proto.Temporal.Api.Sdk.V1.UserMetadata
import qualified Proto.Temporal.Api.Taskqueue.V1.Message
import qualified Proto.Temporal.Api.Update.V1.Message
import qualified Proto.Temporal.Api.Workflow.V1.Message
acceptedEventId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "acceptedEventId" a) =>
  Lens.Family2.LensLike' f s a
acceptedEventId = Data.ProtoLens.Field.field @"acceptedEventId"
acceptedRequest ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "acceptedRequest" a) =>
  Lens.Family2.LensLike' f s a
acceptedRequest = Data.ProtoLens.Field.field @"acceptedRequest"
acceptedRequestMessageId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "acceptedRequestMessageId" a) =>
  Lens.Family2.LensLike' f s a
acceptedRequestMessageId
  = Data.ProtoLens.Field.field @"acceptedRequestMessageId"
acceptedRequestSequencingEventId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "acceptedRequestSequencingEventId" a) =>
  Lens.Family2.LensLike' f s a
acceptedRequestSequencingEventId
  = Data.ProtoLens.Field.field @"acceptedRequestSequencingEventId"
activityId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activityId" a) =>
  Lens.Family2.LensLike' f s a
activityId = Data.ProtoLens.Field.field @"activityId"
activityPropertiesModifiedExternallyEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activityPropertiesModifiedExternallyEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
activityPropertiesModifiedExternallyEventAttributes
  = Data.ProtoLens.Field.field
      @"activityPropertiesModifiedExternallyEventAttributes"
activityTaskCancelRequestedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activityTaskCancelRequestedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
activityTaskCancelRequestedEventAttributes
  = Data.ProtoLens.Field.field
      @"activityTaskCancelRequestedEventAttributes"
activityTaskCanceledEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activityTaskCanceledEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
activityTaskCanceledEventAttributes
  = Data.ProtoLens.Field.field @"activityTaskCanceledEventAttributes"
activityTaskCompletedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activityTaskCompletedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
activityTaskCompletedEventAttributes
  = Data.ProtoLens.Field.field
      @"activityTaskCompletedEventAttributes"
activityTaskFailedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activityTaskFailedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
activityTaskFailedEventAttributes
  = Data.ProtoLens.Field.field @"activityTaskFailedEventAttributes"
activityTaskScheduledEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activityTaskScheduledEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
activityTaskScheduledEventAttributes
  = Data.ProtoLens.Field.field
      @"activityTaskScheduledEventAttributes"
activityTaskStartedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activityTaskStartedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
activityTaskStartedEventAttributes
  = Data.ProtoLens.Field.field @"activityTaskStartedEventAttributes"
activityTaskTimedOutEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activityTaskTimedOutEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
activityTaskTimedOutEventAttributes
  = Data.ProtoLens.Field.field @"activityTaskTimedOutEventAttributes"
activityType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activityType" a) =>
  Lens.Family2.LensLike' f s a
activityType = Data.ProtoLens.Field.field @"activityType"
attachedCompletionCallbacks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "attachedCompletionCallbacks" a) =>
  Lens.Family2.LensLike' f s a
attachedCompletionCallbacks
  = Data.ProtoLens.Field.field @"attachedCompletionCallbacks"
attachedRequestId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "attachedRequestId" a) =>
  Lens.Family2.LensLike' f s a
attachedRequestId = Data.ProtoLens.Field.field @"attachedRequestId"
attempt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "attempt" a) =>
  Lens.Family2.LensLike' f s a
attempt = Data.ProtoLens.Field.field @"attempt"
backoffStartInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "backoffStartInterval" a) =>
  Lens.Family2.LensLike' f s a
backoffStartInterval
  = Data.ProtoLens.Field.field @"backoffStartInterval"
baseRunId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "baseRunId" a) =>
  Lens.Family2.LensLike' f s a
baseRunId = Data.ProtoLens.Field.field @"baseRunId"
binaryChecksum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "binaryChecksum" a) =>
  Lens.Family2.LensLike' f s a
binaryChecksum = Data.ProtoLens.Field.field @"binaryChecksum"
buildIdRedirectCounter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "buildIdRedirectCounter" a) =>
  Lens.Family2.LensLike' f s a
buildIdRedirectCounter
  = Data.ProtoLens.Field.field @"buildIdRedirectCounter"
cause ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cause" a) =>
  Lens.Family2.LensLike' f s a
cause = Data.ProtoLens.Field.field @"cause"
childWorkflowExecutionCanceledEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "childWorkflowExecutionCanceledEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
childWorkflowExecutionCanceledEventAttributes
  = Data.ProtoLens.Field.field
      @"childWorkflowExecutionCanceledEventAttributes"
childWorkflowExecutionCompletedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "childWorkflowExecutionCompletedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
childWorkflowExecutionCompletedEventAttributes
  = Data.ProtoLens.Field.field
      @"childWorkflowExecutionCompletedEventAttributes"
childWorkflowExecutionFailedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "childWorkflowExecutionFailedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
childWorkflowExecutionFailedEventAttributes
  = Data.ProtoLens.Field.field
      @"childWorkflowExecutionFailedEventAttributes"
childWorkflowExecutionStartedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "childWorkflowExecutionStartedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
childWorkflowExecutionStartedEventAttributes
  = Data.ProtoLens.Field.field
      @"childWorkflowExecutionStartedEventAttributes"
childWorkflowExecutionTerminatedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "childWorkflowExecutionTerminatedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
childWorkflowExecutionTerminatedEventAttributes
  = Data.ProtoLens.Field.field
      @"childWorkflowExecutionTerminatedEventAttributes"
childWorkflowExecutionTimedOutEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "childWorkflowExecutionTimedOutEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
childWorkflowExecutionTimedOutEventAttributes
  = Data.ProtoLens.Field.field
      @"childWorkflowExecutionTimedOutEventAttributes"
childWorkflowOnly ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "childWorkflowOnly" a) =>
  Lens.Family2.LensLike' f s a
childWorkflowOnly = Data.ProtoLens.Field.field @"childWorkflowOnly"
completionCallbacks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "completionCallbacks" a) =>
  Lens.Family2.LensLike' f s a
completionCallbacks
  = Data.ProtoLens.Field.field @"completionCallbacks"
continuedExecutionRunId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "continuedExecutionRunId" a) =>
  Lens.Family2.LensLike' f s a
continuedExecutionRunId
  = Data.ProtoLens.Field.field @"continuedExecutionRunId"
continuedFailure ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "continuedFailure" a) =>
  Lens.Family2.LensLike' f s a
continuedFailure = Data.ProtoLens.Field.field @"continuedFailure"
control ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "control" a) =>
  Lens.Family2.LensLike' f s a
control = Data.ProtoLens.Field.field @"control"
cronSchedule ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cronSchedule" a) =>
  Lens.Family2.LensLike' f s a
cronSchedule = Data.ProtoLens.Field.field @"cronSchedule"
declinedTargetVersionUpgrade ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "declinedTargetVersionUpgrade" a) =>
  Lens.Family2.LensLike' f s a
declinedTargetVersionUpgrade
  = Data.ProtoLens.Field.field @"declinedTargetVersionUpgrade"
deployment ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "deployment" a) =>
  Lens.Family2.LensLike' f s a
deployment = Data.ProtoLens.Field.field @"deployment"
deploymentVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "deploymentVersion" a) =>
  Lens.Family2.LensLike' f s a
deploymentVersion = Data.ProtoLens.Field.field @"deploymentVersion"
details ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "details" a) =>
  Lens.Family2.LensLike' f s a
details = Data.ProtoLens.Field.field @"details"
disabledAfterFastForward ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "disabledAfterFastForward" a) =>
  Lens.Family2.LensLike' f s a
disabledAfterFastForward
  = Data.ProtoLens.Field.field @"disabledAfterFastForward"
eagerExecutionAccepted ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "eagerExecutionAccepted" a) =>
  Lens.Family2.LensLike' f s a
eagerExecutionAccepted
  = Data.ProtoLens.Field.field @"eagerExecutionAccepted"
endpoint ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "endpoint" a) =>
  Lens.Family2.LensLike' f s a
endpoint = Data.ProtoLens.Field.field @"endpoint"
endpointId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "endpointId" a) =>
  Lens.Family2.LensLike' f s a
endpointId = Data.ProtoLens.Field.field @"endpointId"
eventGroupMarkers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "eventGroupMarkers" a) =>
  Lens.Family2.LensLike' f s a
eventGroupMarkers = Data.ProtoLens.Field.field @"eventGroupMarkers"
eventId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "eventId" a) =>
  Lens.Family2.LensLike' f s a
eventId = Data.ProtoLens.Field.field @"eventId"
eventTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "eventTime" a) =>
  Lens.Family2.LensLike' f s a
eventTime = Data.ProtoLens.Field.field @"eventTime"
eventType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "eventType" a) =>
  Lens.Family2.LensLike' f s a
eventType = Data.ProtoLens.Field.field @"eventType"
events ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "events" a) =>
  Lens.Family2.LensLike' f s a
events = Data.ProtoLens.Field.field @"events"
externalInitiatedEventId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "externalInitiatedEventId" a) =>
  Lens.Family2.LensLike' f s a
externalInitiatedEventId
  = Data.ProtoLens.Field.field @"externalInitiatedEventId"
externalWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "externalWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
externalWorkflowExecution
  = Data.ProtoLens.Field.field @"externalWorkflowExecution"
externalWorkflowExecutionCancelRequestedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "externalWorkflowExecutionCancelRequestedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
externalWorkflowExecutionCancelRequestedEventAttributes
  = Data.ProtoLens.Field.field
      @"externalWorkflowExecutionCancelRequestedEventAttributes"
externalWorkflowExecutionSignaledEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "externalWorkflowExecutionSignaledEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
externalWorkflowExecutionSignaledEventAttributes
  = Data.ProtoLens.Field.field
      @"externalWorkflowExecutionSignaledEventAttributes"
failure ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "failure" a) =>
  Lens.Family2.LensLike' f s a
failure = Data.ProtoLens.Field.field @"failure"
firstExecutionRunId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "firstExecutionRunId" a) =>
  Lens.Family2.LensLike' f s a
firstExecutionRunId
  = Data.ProtoLens.Field.field @"firstExecutionRunId"
firstWorkflowTaskBackoff ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "firstWorkflowTaskBackoff" a) =>
  Lens.Family2.LensLike' f s a
firstWorkflowTaskBackoff
  = Data.ProtoLens.Field.field @"firstWorkflowTaskBackoff"
forkEventVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "forkEventVersion" a) =>
  Lens.Family2.LensLike' f s a
forkEventVersion = Data.ProtoLens.Field.field @"forkEventVersion"
header ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "header" a) =>
  Lens.Family2.LensLike' f s a
header = Data.ProtoLens.Field.field @"header"
heartbeatTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "heartbeatTimeout" a) =>
  Lens.Family2.LensLike' f s a
heartbeatTimeout = Data.ProtoLens.Field.field @"heartbeatTimeout"
historySizeBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "historySizeBytes" a) =>
  Lens.Family2.LensLike' f s a
historySizeBytes = Data.ProtoLens.Field.field @"historySizeBytes"
identity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "identity" a) =>
  Lens.Family2.LensLike' f s a
identity = Data.ProtoLens.Field.field @"identity"
inheritBuildId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "inheritBuildId" a) =>
  Lens.Family2.LensLike' f s a
inheritBuildId = Data.ProtoLens.Field.field @"inheritBuildId"
inheritedAutoUpgradeInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "inheritedAutoUpgradeInfo" a) =>
  Lens.Family2.LensLike' f s a
inheritedAutoUpgradeInfo
  = Data.ProtoLens.Field.field @"inheritedAutoUpgradeInfo"
inheritedBuildId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "inheritedBuildId" a) =>
  Lens.Family2.LensLike' f s a
inheritedBuildId = Data.ProtoLens.Field.field @"inheritedBuildId"
inheritedPinnedVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "inheritedPinnedVersion" a) =>
  Lens.Family2.LensLike' f s a
inheritedPinnedVersion
  = Data.ProtoLens.Field.field @"inheritedPinnedVersion"
initialVersioningBehavior ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "initialVersioningBehavior" a) =>
  Lens.Family2.LensLike' f s a
initialVersioningBehavior
  = Data.ProtoLens.Field.field @"initialVersioningBehavior"
initiatedEventId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "initiatedEventId" a) =>
  Lens.Family2.LensLike' f s a
initiatedEventId = Data.ProtoLens.Field.field @"initiatedEventId"
initiator ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "initiator" a) =>
  Lens.Family2.LensLike' f s a
initiator = Data.ProtoLens.Field.field @"initiator"
input ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "input" a) =>
  Lens.Family2.LensLike' f s a
input = Data.ProtoLens.Field.field @"input"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
lastCompletionResult ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastCompletionResult" a) =>
  Lens.Family2.LensLike' f s a
lastCompletionResult
  = Data.ProtoLens.Field.field @"lastCompletionResult"
lastFailure ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastFailure" a) =>
  Lens.Family2.LensLike' f s a
lastFailure = Data.ProtoLens.Field.field @"lastFailure"
latestCancelRequestedEventId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "latestCancelRequestedEventId" a) =>
  Lens.Family2.LensLike' f s a
latestCancelRequestedEventId
  = Data.ProtoLens.Field.field @"latestCancelRequestedEventId"
links ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "links" a) =>
  Lens.Family2.LensLike' f s a
links = Data.ProtoLens.Field.field @"links"
markerName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "markerName" a) =>
  Lens.Family2.LensLike' f s a
markerName = Data.ProtoLens.Field.field @"markerName"
markerRecordedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "markerRecordedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
markerRecordedEventAttributes
  = Data.ProtoLens.Field.field @"markerRecordedEventAttributes"
maybe'acceptedRequest ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'acceptedRequest" a) =>
  Lens.Family2.LensLike' f s a
maybe'acceptedRequest
  = Data.ProtoLens.Field.field @"maybe'acceptedRequest"
maybe'activityPropertiesModifiedExternallyEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'activityPropertiesModifiedExternallyEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'activityPropertiesModifiedExternallyEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'activityPropertiesModifiedExternallyEventAttributes"
maybe'activityTaskCancelRequestedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'activityTaskCancelRequestedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'activityTaskCancelRequestedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'activityTaskCancelRequestedEventAttributes"
maybe'activityTaskCanceledEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'activityTaskCanceledEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'activityTaskCanceledEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'activityTaskCanceledEventAttributes"
maybe'activityTaskCompletedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'activityTaskCompletedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'activityTaskCompletedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'activityTaskCompletedEventAttributes"
maybe'activityTaskFailedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'activityTaskFailedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'activityTaskFailedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'activityTaskFailedEventAttributes"
maybe'activityTaskScheduledEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'activityTaskScheduledEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'activityTaskScheduledEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'activityTaskScheduledEventAttributes"
maybe'activityTaskStartedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'activityTaskStartedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'activityTaskStartedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'activityTaskStartedEventAttributes"
maybe'activityTaskTimedOutEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'activityTaskTimedOutEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'activityTaskTimedOutEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'activityTaskTimedOutEventAttributes"
maybe'activityType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'activityType" a) =>
  Lens.Family2.LensLike' f s a
maybe'activityType
  = Data.ProtoLens.Field.field @"maybe'activityType"
maybe'attributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'attributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'attributes = Data.ProtoLens.Field.field @"maybe'attributes"
maybe'backoffStartInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'backoffStartInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'backoffStartInterval
  = Data.ProtoLens.Field.field @"maybe'backoffStartInterval"
maybe'childWorkflowExecutionCanceledEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'childWorkflowExecutionCanceledEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'childWorkflowExecutionCanceledEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'childWorkflowExecutionCanceledEventAttributes"
maybe'childWorkflowExecutionCompletedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'childWorkflowExecutionCompletedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'childWorkflowExecutionCompletedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'childWorkflowExecutionCompletedEventAttributes"
maybe'childWorkflowExecutionFailedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'childWorkflowExecutionFailedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'childWorkflowExecutionFailedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'childWorkflowExecutionFailedEventAttributes"
maybe'childWorkflowExecutionStartedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'childWorkflowExecutionStartedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'childWorkflowExecutionStartedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'childWorkflowExecutionStartedEventAttributes"
maybe'childWorkflowExecutionTerminatedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'childWorkflowExecutionTerminatedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'childWorkflowExecutionTerminatedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'childWorkflowExecutionTerminatedEventAttributes"
maybe'childWorkflowExecutionTimedOutEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'childWorkflowExecutionTimedOutEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'childWorkflowExecutionTimedOutEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'childWorkflowExecutionTimedOutEventAttributes"
maybe'continuedFailure ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'continuedFailure" a) =>
  Lens.Family2.LensLike' f s a
maybe'continuedFailure
  = Data.ProtoLens.Field.field @"maybe'continuedFailure"
maybe'declinedTargetVersionUpgrade ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'declinedTargetVersionUpgrade" a) =>
  Lens.Family2.LensLike' f s a
maybe'declinedTargetVersionUpgrade
  = Data.ProtoLens.Field.field @"maybe'declinedTargetVersionUpgrade"
maybe'deployment ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'deployment" a) =>
  Lens.Family2.LensLike' f s a
maybe'deployment = Data.ProtoLens.Field.field @"maybe'deployment"
maybe'deploymentVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'deploymentVersion" a) =>
  Lens.Family2.LensLike' f s a
maybe'deploymentVersion
  = Data.ProtoLens.Field.field @"maybe'deploymentVersion"
maybe'details ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'details" a) =>
  Lens.Family2.LensLike' f s a
maybe'details = Data.ProtoLens.Field.field @"maybe'details"
maybe'eventTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'eventTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'eventTime = Data.ProtoLens.Field.field @"maybe'eventTime"
maybe'externalWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'externalWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
maybe'externalWorkflowExecution
  = Data.ProtoLens.Field.field @"maybe'externalWorkflowExecution"
maybe'externalWorkflowExecutionCancelRequestedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'externalWorkflowExecutionCancelRequestedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'externalWorkflowExecutionCancelRequestedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'externalWorkflowExecutionCancelRequestedEventAttributes"
maybe'externalWorkflowExecutionSignaledEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'externalWorkflowExecutionSignaledEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'externalWorkflowExecutionSignaledEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'externalWorkflowExecutionSignaledEventAttributes"
maybe'failure ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'failure" a) =>
  Lens.Family2.LensLike' f s a
maybe'failure = Data.ProtoLens.Field.field @"maybe'failure"
maybe'firstWorkflowTaskBackoff ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'firstWorkflowTaskBackoff" a) =>
  Lens.Family2.LensLike' f s a
maybe'firstWorkflowTaskBackoff
  = Data.ProtoLens.Field.field @"maybe'firstWorkflowTaskBackoff"
maybe'header ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'header" a) =>
  Lens.Family2.LensLike' f s a
maybe'header = Data.ProtoLens.Field.field @"maybe'header"
maybe'heartbeatTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'heartbeatTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'heartbeatTimeout
  = Data.ProtoLens.Field.field @"maybe'heartbeatTimeout"
maybe'inheritedAutoUpgradeInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'inheritedAutoUpgradeInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'inheritedAutoUpgradeInfo
  = Data.ProtoLens.Field.field @"maybe'inheritedAutoUpgradeInfo"
maybe'inheritedPinnedVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'inheritedPinnedVersion" a) =>
  Lens.Family2.LensLike' f s a
maybe'inheritedPinnedVersion
  = Data.ProtoLens.Field.field @"maybe'inheritedPinnedVersion"
maybe'input ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'input" a) =>
  Lens.Family2.LensLike' f s a
maybe'input = Data.ProtoLens.Field.field @"maybe'input"
maybe'lastCompletionResult ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lastCompletionResult" a) =>
  Lens.Family2.LensLike' f s a
maybe'lastCompletionResult
  = Data.ProtoLens.Field.field @"maybe'lastCompletionResult"
maybe'lastFailure ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lastFailure" a) =>
  Lens.Family2.LensLike' f s a
maybe'lastFailure = Data.ProtoLens.Field.field @"maybe'lastFailure"
maybe'markerRecordedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'markerRecordedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'markerRecordedEventAttributes
  = Data.ProtoLens.Field.field @"maybe'markerRecordedEventAttributes"
maybe'memo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'memo" a) =>
  Lens.Family2.LensLike' f s a
maybe'memo = Data.ProtoLens.Field.field @"maybe'memo"
maybe'meta ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'meta" a) =>
  Lens.Family2.LensLike' f s a
maybe'meta = Data.ProtoLens.Field.field @"maybe'meta"
maybe'meteringMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'meteringMetadata" a) =>
  Lens.Family2.LensLike' f s a
maybe'meteringMetadata
  = Data.ProtoLens.Field.field @"maybe'meteringMetadata"
maybe'newRetryPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'newRetryPolicy" a) =>
  Lens.Family2.LensLike' f s a
maybe'newRetryPolicy
  = Data.ProtoLens.Field.field @"maybe'newRetryPolicy"
maybe'newWorkflowExecutionTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'newWorkflowExecutionTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'newWorkflowExecutionTimeout
  = Data.ProtoLens.Field.field @"maybe'newWorkflowExecutionTimeout"
maybe'newWorkflowRunTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'newWorkflowRunTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'newWorkflowRunTimeout
  = Data.ProtoLens.Field.field @"maybe'newWorkflowRunTimeout"
maybe'newWorkflowTaskTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'newWorkflowTaskTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'newWorkflowTaskTimeout
  = Data.ProtoLens.Field.field @"maybe'newWorkflowTaskTimeout"
maybe'nexusOperationCancelRequestCompletedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nexusOperationCancelRequestCompletedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'nexusOperationCancelRequestCompletedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'nexusOperationCancelRequestCompletedEventAttributes"
maybe'nexusOperationCancelRequestFailedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nexusOperationCancelRequestFailedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'nexusOperationCancelRequestFailedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'nexusOperationCancelRequestFailedEventAttributes"
maybe'nexusOperationCancelRequestedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nexusOperationCancelRequestedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'nexusOperationCancelRequestedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'nexusOperationCancelRequestedEventAttributes"
maybe'nexusOperationCanceledEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nexusOperationCanceledEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'nexusOperationCanceledEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'nexusOperationCanceledEventAttributes"
maybe'nexusOperationCompletedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nexusOperationCompletedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'nexusOperationCompletedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'nexusOperationCompletedEventAttributes"
maybe'nexusOperationFailedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nexusOperationFailedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'nexusOperationFailedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'nexusOperationFailedEventAttributes"
maybe'nexusOperationScheduledEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nexusOperationScheduledEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'nexusOperationScheduledEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'nexusOperationScheduledEventAttributes"
maybe'nexusOperationStartedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nexusOperationStartedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'nexusOperationStartedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'nexusOperationStartedEventAttributes"
maybe'nexusOperationTimedOutEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nexusOperationTimedOutEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'nexusOperationTimedOutEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'nexusOperationTimedOutEventAttributes"
maybe'outcome ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'outcome" a) =>
  Lens.Family2.LensLike' f s a
maybe'outcome = Data.ProtoLens.Field.field @"maybe'outcome"
maybe'parentWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'parentWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
maybe'parentWorkflowExecution
  = Data.ProtoLens.Field.field @"maybe'parentWorkflowExecution"
maybe'prevAutoResetPoints ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'prevAutoResetPoints" a) =>
  Lens.Family2.LensLike' f s a
maybe'prevAutoResetPoints
  = Data.ProtoLens.Field.field @"maybe'prevAutoResetPoints"
maybe'principal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'principal" a) =>
  Lens.Family2.LensLike' f s a
maybe'principal = Data.ProtoLens.Field.field @"maybe'principal"
maybe'priority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'priority" a) =>
  Lens.Family2.LensLike' f s a
maybe'priority = Data.ProtoLens.Field.field @"maybe'priority"
maybe'propagatedNexusSerializationContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'propagatedNexusSerializationContext" a) =>
  Lens.Family2.LensLike' f s a
maybe'propagatedNexusSerializationContext
  = Data.ProtoLens.Field.field
      @"maybe'propagatedNexusSerializationContext"
maybe'rejectedRequest ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rejectedRequest" a) =>
  Lens.Family2.LensLike' f s a
maybe'rejectedRequest
  = Data.ProtoLens.Field.field @"maybe'rejectedRequest"
maybe'request ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'request" a) =>
  Lens.Family2.LensLike' f s a
maybe'request = Data.ProtoLens.Field.field @"maybe'request"
maybe'requestCancelExternalWorkflowExecutionFailedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestCancelExternalWorkflowExecutionFailedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestCancelExternalWorkflowExecutionFailedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'requestCancelExternalWorkflowExecutionFailedEventAttributes"
maybe'requestCancelExternalWorkflowExecutionInitiatedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestCancelExternalWorkflowExecutionInitiatedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestCancelExternalWorkflowExecutionInitiatedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'requestCancelExternalWorkflowExecutionInitiatedEventAttributes"
maybe'result ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'result" a) =>
  Lens.Family2.LensLike' f s a
maybe'result = Data.ProtoLens.Field.field @"maybe'result"
maybe'retryPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'retryPolicy" a) =>
  Lens.Family2.LensLike' f s a
maybe'retryPolicy = Data.ProtoLens.Field.field @"maybe'retryPolicy"
maybe'rootWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rootWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
maybe'rootWorkflowExecution
  = Data.ProtoLens.Field.field @"maybe'rootWorkflowExecution"
maybe'scheduleToCloseTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scheduleToCloseTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'scheduleToCloseTimeout
  = Data.ProtoLens.Field.field @"maybe'scheduleToCloseTimeout"
maybe'scheduleToStartTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scheduleToStartTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'scheduleToStartTimeout
  = Data.ProtoLens.Field.field @"maybe'scheduleToStartTimeout"
maybe'sdkMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sdkMetadata" a) =>
  Lens.Family2.LensLike' f s a
maybe'sdkMetadata = Data.ProtoLens.Field.field @"maybe'sdkMetadata"
maybe'searchAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'searchAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'searchAttributes
  = Data.ProtoLens.Field.field @"maybe'searchAttributes"
maybe'signalExternalWorkflowExecutionFailedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'signalExternalWorkflowExecutionFailedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'signalExternalWorkflowExecutionFailedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'signalExternalWorkflowExecutionFailedEventAttributes"
maybe'signalExternalWorkflowExecutionInitiatedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'signalExternalWorkflowExecutionInitiatedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'signalExternalWorkflowExecutionInitiatedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'signalExternalWorkflowExecutionInitiatedEventAttributes"
maybe'sourceVersionStamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sourceVersionStamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'sourceVersionStamp
  = Data.ProtoLens.Field.field @"maybe'sourceVersionStamp"
maybe'startChildWorkflowExecutionFailedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'startChildWorkflowExecutionFailedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'startChildWorkflowExecutionFailedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'startChildWorkflowExecutionFailedEventAttributes"
maybe'startChildWorkflowExecutionInitiatedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'startChildWorkflowExecutionInitiatedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'startChildWorkflowExecutionInitiatedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'startChildWorkflowExecutionInitiatedEventAttributes"
maybe'startToCloseTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'startToCloseTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'startToCloseTimeout
  = Data.ProtoLens.Field.field @"maybe'startToCloseTimeout"
maybe'startToFireTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'startToFireTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'startToFireTimeout
  = Data.ProtoLens.Field.field @"maybe'startToFireTimeout"
maybe'targetTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'targetTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'targetTime = Data.ProtoLens.Field.field @"maybe'targetTime"
maybe'taskQueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'taskQueue" a) =>
  Lens.Family2.LensLike' f s a
maybe'taskQueue = Data.ProtoLens.Field.field @"maybe'taskQueue"
maybe'timeSkippingConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timeSkippingConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'timeSkippingConfig
  = Data.ProtoLens.Field.field @"maybe'timeSkippingConfig"
maybe'timeSkippingStatePropagation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timeSkippingStatePropagation" a) =>
  Lens.Family2.LensLike' f s a
maybe'timeSkippingStatePropagation
  = Data.ProtoLens.Field.field @"maybe'timeSkippingStatePropagation"
maybe'timerCanceledEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timerCanceledEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'timerCanceledEventAttributes
  = Data.ProtoLens.Field.field @"maybe'timerCanceledEventAttributes"
maybe'timerFiredEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timerFiredEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'timerFiredEventAttributes
  = Data.ProtoLens.Field.field @"maybe'timerFiredEventAttributes"
maybe'timerStartedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timerStartedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'timerStartedEventAttributes
  = Data.ProtoLens.Field.field @"maybe'timerStartedEventAttributes"
maybe'upsertWorkflowSearchAttributesEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'upsertWorkflowSearchAttributesEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'upsertWorkflowSearchAttributesEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'upsertWorkflowSearchAttributesEventAttributes"
maybe'upsertedMemo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'upsertedMemo" a) =>
  Lens.Family2.LensLike' f s a
maybe'upsertedMemo
  = Data.ProtoLens.Field.field @"maybe'upsertedMemo"
maybe'userMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'userMetadata" a) =>
  Lens.Family2.LensLike' f s a
maybe'userMetadata
  = Data.ProtoLens.Field.field @"maybe'userMetadata"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
maybe'versioningOverride ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'versioningOverride" a) =>
  Lens.Family2.LensLike' f s a
maybe'versioningOverride
  = Data.ProtoLens.Field.field @"maybe'versioningOverride"
maybe'wallClockTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'wallClockTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'wallClockTime
  = Data.ProtoLens.Field.field @"maybe'wallClockTime"
maybe'workerVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workerVersion" a) =>
  Lens.Family2.LensLike' f s a
maybe'workerVersion
  = Data.ProtoLens.Field.field @"maybe'workerVersion"
maybe'workflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecution" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecution
  = Data.ProtoLens.Field.field @"maybe'workflowExecution"
maybe'workflowExecutionCancelRequestedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecutionCancelRequestedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecutionCancelRequestedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowExecutionCancelRequestedEventAttributes"
maybe'workflowExecutionCanceledEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecutionCanceledEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecutionCanceledEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowExecutionCanceledEventAttributes"
maybe'workflowExecutionCompletedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecutionCompletedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecutionCompletedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowExecutionCompletedEventAttributes"
maybe'workflowExecutionContinuedAsNewEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecutionContinuedAsNewEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecutionContinuedAsNewEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowExecutionContinuedAsNewEventAttributes"
maybe'workflowExecutionExpirationTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecutionExpirationTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecutionExpirationTime
  = Data.ProtoLens.Field.field
      @"maybe'workflowExecutionExpirationTime"
maybe'workflowExecutionFailedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecutionFailedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecutionFailedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowExecutionFailedEventAttributes"
maybe'workflowExecutionOptionsUpdatedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecutionOptionsUpdatedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecutionOptionsUpdatedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowExecutionOptionsUpdatedEventAttributes"
maybe'workflowExecutionPausedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecutionPausedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecutionPausedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowExecutionPausedEventAttributes"
maybe'workflowExecutionSignaledEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecutionSignaledEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecutionSignaledEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowExecutionSignaledEventAttributes"
maybe'workflowExecutionStartedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecutionStartedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecutionStartedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowExecutionStartedEventAttributes"
maybe'workflowExecutionTerminatedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecutionTerminatedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecutionTerminatedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowExecutionTerminatedEventAttributes"
maybe'workflowExecutionTimeSkippingTransitionedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecutionTimeSkippingTransitionedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecutionTimeSkippingTransitionedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowExecutionTimeSkippingTransitionedEventAttributes"
maybe'workflowExecutionTimedOutEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecutionTimedOutEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecutionTimedOutEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowExecutionTimedOutEventAttributes"
maybe'workflowExecutionTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecutionTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecutionTimeout
  = Data.ProtoLens.Field.field @"maybe'workflowExecutionTimeout"
maybe'workflowExecutionUnpausedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecutionUnpausedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecutionUnpausedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowExecutionUnpausedEventAttributes"
maybe'workflowExecutionUpdateAcceptedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecutionUpdateAcceptedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecutionUpdateAcceptedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowExecutionUpdateAcceptedEventAttributes"
maybe'workflowExecutionUpdateAdmittedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecutionUpdateAdmittedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecutionUpdateAdmittedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowExecutionUpdateAdmittedEventAttributes"
maybe'workflowExecutionUpdateCompletedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecutionUpdateCompletedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecutionUpdateCompletedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowExecutionUpdateCompletedEventAttributes"
maybe'workflowExecutionUpdateRejectedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecutionUpdateRejectedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecutionUpdateRejectedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowExecutionUpdateRejectedEventAttributes"
maybe'workflowPropertiesModifiedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowPropertiesModifiedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowPropertiesModifiedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowPropertiesModifiedEventAttributes"
maybe'workflowPropertiesModifiedExternallyEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowPropertiesModifiedExternallyEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowPropertiesModifiedExternallyEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowPropertiesModifiedExternallyEventAttributes"
maybe'workflowRunTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowRunTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowRunTimeout
  = Data.ProtoLens.Field.field @"maybe'workflowRunTimeout"
maybe'workflowTaskCompletedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowTaskCompletedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowTaskCompletedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowTaskCompletedEventAttributes"
maybe'workflowTaskFailedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowTaskFailedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowTaskFailedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowTaskFailedEventAttributes"
maybe'workflowTaskScheduledEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowTaskScheduledEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowTaskScheduledEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowTaskScheduledEventAttributes"
maybe'workflowTaskStartedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowTaskStartedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowTaskStartedEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowTaskStartedEventAttributes"
maybe'workflowTaskTimedOutEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowTaskTimedOutEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowTaskTimedOutEventAttributes
  = Data.ProtoLens.Field.field
      @"maybe'workflowTaskTimedOutEventAttributes"
maybe'workflowTaskTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowTaskTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowTaskTimeout
  = Data.ProtoLens.Field.field @"maybe'workflowTaskTimeout"
maybe'workflowType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowType" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowType
  = Data.ProtoLens.Field.field @"maybe'workflowType"
memo ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "memo" a) =>
  Lens.Family2.LensLike' f s a
memo = Data.ProtoLens.Field.field @"memo"
meta ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "meta" a) =>
  Lens.Family2.LensLike' f s a
meta = Data.ProtoLens.Field.field @"meta"
meteringMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "meteringMetadata" a) =>
  Lens.Family2.LensLike' f s a
meteringMetadata = Data.ProtoLens.Field.field @"meteringMetadata"
namespace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "namespace" a) =>
  Lens.Family2.LensLike' f s a
namespace = Data.ProtoLens.Field.field @"namespace"
namespaceId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "namespaceId" a) =>
  Lens.Family2.LensLike' f s a
namespaceId = Data.ProtoLens.Field.field @"namespaceId"
newExecutionRunId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "newExecutionRunId" a) =>
  Lens.Family2.LensLike' f s a
newExecutionRunId = Data.ProtoLens.Field.field @"newExecutionRunId"
newRetryPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "newRetryPolicy" a) =>
  Lens.Family2.LensLike' f s a
newRetryPolicy = Data.ProtoLens.Field.field @"newRetryPolicy"
newRunId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "newRunId" a) =>
  Lens.Family2.LensLike' f s a
newRunId = Data.ProtoLens.Field.field @"newRunId"
newTaskQueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "newTaskQueue" a) =>
  Lens.Family2.LensLike' f s a
newTaskQueue = Data.ProtoLens.Field.field @"newTaskQueue"
newWorkflowExecutionTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "newWorkflowExecutionTimeout" a) =>
  Lens.Family2.LensLike' f s a
newWorkflowExecutionTimeout
  = Data.ProtoLens.Field.field @"newWorkflowExecutionTimeout"
newWorkflowRunTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "newWorkflowRunTimeout" a) =>
  Lens.Family2.LensLike' f s a
newWorkflowRunTimeout
  = Data.ProtoLens.Field.field @"newWorkflowRunTimeout"
newWorkflowTaskTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "newWorkflowTaskTimeout" a) =>
  Lens.Family2.LensLike' f s a
newWorkflowTaskTimeout
  = Data.ProtoLens.Field.field @"newWorkflowTaskTimeout"
nexusHeader ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nexusHeader" a) =>
  Lens.Family2.LensLike' f s a
nexusHeader = Data.ProtoLens.Field.field @"nexusHeader"
nexusOperationCancelRequestCompletedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nexusOperationCancelRequestCompletedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
nexusOperationCancelRequestCompletedEventAttributes
  = Data.ProtoLens.Field.field
      @"nexusOperationCancelRequestCompletedEventAttributes"
nexusOperationCancelRequestFailedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nexusOperationCancelRequestFailedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
nexusOperationCancelRequestFailedEventAttributes
  = Data.ProtoLens.Field.field
      @"nexusOperationCancelRequestFailedEventAttributes"
nexusOperationCancelRequestedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nexusOperationCancelRequestedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
nexusOperationCancelRequestedEventAttributes
  = Data.ProtoLens.Field.field
      @"nexusOperationCancelRequestedEventAttributes"
nexusOperationCanceledEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nexusOperationCanceledEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
nexusOperationCanceledEventAttributes
  = Data.ProtoLens.Field.field
      @"nexusOperationCanceledEventAttributes"
nexusOperationCompletedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nexusOperationCompletedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
nexusOperationCompletedEventAttributes
  = Data.ProtoLens.Field.field
      @"nexusOperationCompletedEventAttributes"
nexusOperationFailedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nexusOperationFailedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
nexusOperationFailedEventAttributes
  = Data.ProtoLens.Field.field @"nexusOperationFailedEventAttributes"
nexusOperationScheduledEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nexusOperationScheduledEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
nexusOperationScheduledEventAttributes
  = Data.ProtoLens.Field.field
      @"nexusOperationScheduledEventAttributes"
nexusOperationStartedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nexusOperationStartedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
nexusOperationStartedEventAttributes
  = Data.ProtoLens.Field.field
      @"nexusOperationStartedEventAttributes"
nexusOperationTimedOutEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nexusOperationTimedOutEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
nexusOperationTimedOutEventAttributes
  = Data.ProtoLens.Field.field
      @"nexusOperationTimedOutEventAttributes"
operation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "operation" a) =>
  Lens.Family2.LensLike' f s a
operation = Data.ProtoLens.Field.field @"operation"
operationId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "operationId" a) =>
  Lens.Family2.LensLike' f s a
operationId = Data.ProtoLens.Field.field @"operationId"
operationToken ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "operationToken" a) =>
  Lens.Family2.LensLike' f s a
operationToken = Data.ProtoLens.Field.field @"operationToken"
origin ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "origin" a) =>
  Lens.Family2.LensLike' f s a
origin = Data.ProtoLens.Field.field @"origin"
originalExecutionRunId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "originalExecutionRunId" a) =>
  Lens.Family2.LensLike' f s a
originalExecutionRunId
  = Data.ProtoLens.Field.field @"originalExecutionRunId"
outcome ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "outcome" a) =>
  Lens.Family2.LensLike' f s a
outcome = Data.ProtoLens.Field.field @"outcome"
parentClosePolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "parentClosePolicy" a) =>
  Lens.Family2.LensLike' f s a
parentClosePolicy = Data.ProtoLens.Field.field @"parentClosePolicy"
parentInitiatedEventId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "parentInitiatedEventId" a) =>
  Lens.Family2.LensLike' f s a
parentInitiatedEventId
  = Data.ProtoLens.Field.field @"parentInitiatedEventId"
parentInitiatedEventVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "parentInitiatedEventVersion" a) =>
  Lens.Family2.LensLike' f s a
parentInitiatedEventVersion
  = Data.ProtoLens.Field.field @"parentInitiatedEventVersion"
parentPinnedWorkerDeploymentVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "parentPinnedWorkerDeploymentVersion" a) =>
  Lens.Family2.LensLike' f s a
parentPinnedWorkerDeploymentVersion
  = Data.ProtoLens.Field.field @"parentPinnedWorkerDeploymentVersion"
parentWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "parentWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
parentWorkflowExecution
  = Data.ProtoLens.Field.field @"parentWorkflowExecution"
parentWorkflowNamespace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "parentWorkflowNamespace" a) =>
  Lens.Family2.LensLike' f s a
parentWorkflowNamespace
  = Data.ProtoLens.Field.field @"parentWorkflowNamespace"
parentWorkflowNamespaceId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "parentWorkflowNamespaceId" a) =>
  Lens.Family2.LensLike' f s a
parentWorkflowNamespaceId
  = Data.ProtoLens.Field.field @"parentWorkflowNamespaceId"
prevAutoResetPoints ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "prevAutoResetPoints" a) =>
  Lens.Family2.LensLike' f s a
prevAutoResetPoints
  = Data.ProtoLens.Field.field @"prevAutoResetPoints"
principal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "principal" a) =>
  Lens.Family2.LensLike' f s a
principal = Data.ProtoLens.Field.field @"principal"
priority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "priority" a) =>
  Lens.Family2.LensLike' f s a
priority = Data.ProtoLens.Field.field @"priority"
propagatedNexusSerializationContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "propagatedNexusSerializationContext" a) =>
  Lens.Family2.LensLike' f s a
propagatedNexusSerializationContext
  = Data.ProtoLens.Field.field @"propagatedNexusSerializationContext"
protocolInstanceId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "protocolInstanceId" a) =>
  Lens.Family2.LensLike' f s a
protocolInstanceId
  = Data.ProtoLens.Field.field @"protocolInstanceId"
reason ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "reason" a) =>
  Lens.Family2.LensLike' f s a
reason = Data.ProtoLens.Field.field @"reason"
rejectedRequest ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rejectedRequest" a) =>
  Lens.Family2.LensLike' f s a
rejectedRequest = Data.ProtoLens.Field.field @"rejectedRequest"
rejectedRequestMessageId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rejectedRequestMessageId" a) =>
  Lens.Family2.LensLike' f s a
rejectedRequestMessageId
  = Data.ProtoLens.Field.field @"rejectedRequestMessageId"
rejectedRequestSequencingEventId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rejectedRequestSequencingEventId" a) =>
  Lens.Family2.LensLike' f s a
rejectedRequestSequencingEventId
  = Data.ProtoLens.Field.field @"rejectedRequestSequencingEventId"
request ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "request" a) =>
  Lens.Family2.LensLike' f s a
request = Data.ProtoLens.Field.field @"request"
requestCancelExternalWorkflowExecutionFailedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestCancelExternalWorkflowExecutionFailedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
requestCancelExternalWorkflowExecutionFailedEventAttributes
  = Data.ProtoLens.Field.field
      @"requestCancelExternalWorkflowExecutionFailedEventAttributes"
requestCancelExternalWorkflowExecutionInitiatedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestCancelExternalWorkflowExecutionInitiatedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
requestCancelExternalWorkflowExecutionInitiatedEventAttributes
  = Data.ProtoLens.Field.field
      @"requestCancelExternalWorkflowExecutionInitiatedEventAttributes"
requestId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestId" a) =>
  Lens.Family2.LensLike' f s a
requestId = Data.ProtoLens.Field.field @"requestId"
requestedEventId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestedEventId" a) =>
  Lens.Family2.LensLike' f s a
requestedEventId = Data.ProtoLens.Field.field @"requestedEventId"
result ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "result" a) =>
  Lens.Family2.LensLike' f s a
result = Data.ProtoLens.Field.field @"result"
retryPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "retryPolicy" a) =>
  Lens.Family2.LensLike' f s a
retryPolicy = Data.ProtoLens.Field.field @"retryPolicy"
retryState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "retryState" a) =>
  Lens.Family2.LensLike' f s a
retryState = Data.ProtoLens.Field.field @"retryState"
revisionNumber ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "revisionNumber" a) =>
  Lens.Family2.LensLike' f s a
revisionNumber = Data.ProtoLens.Field.field @"revisionNumber"
rootWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rootWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
rootWorkflowExecution
  = Data.ProtoLens.Field.field @"rootWorkflowExecution"
scheduleToCloseTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scheduleToCloseTimeout" a) =>
  Lens.Family2.LensLike' f s a
scheduleToCloseTimeout
  = Data.ProtoLens.Field.field @"scheduleToCloseTimeout"
scheduleToStartTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scheduleToStartTimeout" a) =>
  Lens.Family2.LensLike' f s a
scheduleToStartTimeout
  = Data.ProtoLens.Field.field @"scheduleToStartTimeout"
scheduledEventId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scheduledEventId" a) =>
  Lens.Family2.LensLike' f s a
scheduledEventId = Data.ProtoLens.Field.field @"scheduledEventId"
sdkMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sdkMetadata" a) =>
  Lens.Family2.LensLike' f s a
sdkMetadata = Data.ProtoLens.Field.field @"sdkMetadata"
searchAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "searchAttributes" a) =>
  Lens.Family2.LensLike' f s a
searchAttributes = Data.ProtoLens.Field.field @"searchAttributes"
service ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "service" a) =>
  Lens.Family2.LensLike' f s a
service = Data.ProtoLens.Field.field @"service"
signalExternalWorkflowExecutionFailedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "signalExternalWorkflowExecutionFailedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
signalExternalWorkflowExecutionFailedEventAttributes
  = Data.ProtoLens.Field.field
      @"signalExternalWorkflowExecutionFailedEventAttributes"
signalExternalWorkflowExecutionInitiatedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "signalExternalWorkflowExecutionInitiatedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
signalExternalWorkflowExecutionInitiatedEventAttributes
  = Data.ProtoLens.Field.field
      @"signalExternalWorkflowExecutionInitiatedEventAttributes"
signalName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "signalName" a) =>
  Lens.Family2.LensLike' f s a
signalName = Data.ProtoLens.Field.field @"signalName"
skipGenerateWorkflowTask ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "skipGenerateWorkflowTask" a) =>
  Lens.Family2.LensLike' f s a
skipGenerateWorkflowTask
  = Data.ProtoLens.Field.field @"skipGenerateWorkflowTask"
sourceVersionStamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourceVersionStamp" a) =>
  Lens.Family2.LensLike' f s a
sourceVersionStamp
  = Data.ProtoLens.Field.field @"sourceVersionStamp"
startChildWorkflowExecutionFailedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startChildWorkflowExecutionFailedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
startChildWorkflowExecutionFailedEventAttributes
  = Data.ProtoLens.Field.field
      @"startChildWorkflowExecutionFailedEventAttributes"
startChildWorkflowExecutionInitiatedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startChildWorkflowExecutionInitiatedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
startChildWorkflowExecutionInitiatedEventAttributes
  = Data.ProtoLens.Field.field
      @"startChildWorkflowExecutionInitiatedEventAttributes"
startToCloseTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startToCloseTimeout" a) =>
  Lens.Family2.LensLike' f s a
startToCloseTimeout
  = Data.ProtoLens.Field.field @"startToCloseTimeout"
startToFireTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startToFireTimeout" a) =>
  Lens.Family2.LensLike' f s a
startToFireTimeout
  = Data.ProtoLens.Field.field @"startToFireTimeout"
startedEventId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startedEventId" a) =>
  Lens.Family2.LensLike' f s a
startedEventId = Data.ProtoLens.Field.field @"startedEventId"
suggestContinueAsNew ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "suggestContinueAsNew" a) =>
  Lens.Family2.LensLike' f s a
suggestContinueAsNew
  = Data.ProtoLens.Field.field @"suggestContinueAsNew"
suggestContinueAsNewReasons ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "suggestContinueAsNewReasons" a) =>
  Lens.Family2.LensLike' f s a
suggestContinueAsNewReasons
  = Data.ProtoLens.Field.field @"suggestContinueAsNewReasons"
targetTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "targetTime" a) =>
  Lens.Family2.LensLike' f s a
targetTime = Data.ProtoLens.Field.field @"targetTime"
targetWorkerDeploymentVersionChanged ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "targetWorkerDeploymentVersionChanged" a) =>
  Lens.Family2.LensLike' f s a
targetWorkerDeploymentVersionChanged
  = Data.ProtoLens.Field.field
      @"targetWorkerDeploymentVersionChanged"
taskId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "taskId" a) =>
  Lens.Family2.LensLike' f s a
taskId = Data.ProtoLens.Field.field @"taskId"
taskQueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "taskQueue" a) =>
  Lens.Family2.LensLike' f s a
taskQueue = Data.ProtoLens.Field.field @"taskQueue"
timeSkippingConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timeSkippingConfig" a) =>
  Lens.Family2.LensLike' f s a
timeSkippingConfig
  = Data.ProtoLens.Field.field @"timeSkippingConfig"
timeSkippingConfigUpdated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timeSkippingConfigUpdated" a) =>
  Lens.Family2.LensLike' f s a
timeSkippingConfigUpdated
  = Data.ProtoLens.Field.field @"timeSkippingConfigUpdated"
timeSkippingStatePropagation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timeSkippingStatePropagation" a) =>
  Lens.Family2.LensLike' f s a
timeSkippingStatePropagation
  = Data.ProtoLens.Field.field @"timeSkippingStatePropagation"
timeoutType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timeoutType" a) =>
  Lens.Family2.LensLike' f s a
timeoutType = Data.ProtoLens.Field.field @"timeoutType"
timerCanceledEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timerCanceledEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
timerCanceledEventAttributes
  = Data.ProtoLens.Field.field @"timerCanceledEventAttributes"
timerFiredEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timerFiredEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
timerFiredEventAttributes
  = Data.ProtoLens.Field.field @"timerFiredEventAttributes"
timerId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "timerId" a) =>
  Lens.Family2.LensLike' f s a
timerId = Data.ProtoLens.Field.field @"timerId"
timerStartedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timerStartedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
timerStartedEventAttributes
  = Data.ProtoLens.Field.field @"timerStartedEventAttributes"
unsetVersioningOverride ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unsetVersioningOverride" a) =>
  Lens.Family2.LensLike' f s a
unsetVersioningOverride
  = Data.ProtoLens.Field.field @"unsetVersioningOverride"
updateId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "updateId" a) =>
  Lens.Family2.LensLike' f s a
updateId = Data.ProtoLens.Field.field @"updateId"
upsertWorkflowSearchAttributesEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upsertWorkflowSearchAttributesEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
upsertWorkflowSearchAttributesEventAttributes
  = Data.ProtoLens.Field.field
      @"upsertWorkflowSearchAttributesEventAttributes"
upsertedMemo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upsertedMemo" a) =>
  Lens.Family2.LensLike' f s a
upsertedMemo = Data.ProtoLens.Field.field @"upsertedMemo"
useWorkflowBuildId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "useWorkflowBuildId" a) =>
  Lens.Family2.LensLike' f s a
useWorkflowBuildId
  = Data.ProtoLens.Field.field @"useWorkflowBuildId"
userMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "userMetadata" a) =>
  Lens.Family2.LensLike' f s a
userMetadata = Data.ProtoLens.Field.field @"userMetadata"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'attachedCompletionCallbacks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'attachedCompletionCallbacks" a) =>
  Lens.Family2.LensLike' f s a
vec'attachedCompletionCallbacks
  = Data.ProtoLens.Field.field @"vec'attachedCompletionCallbacks"
vec'completionCallbacks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'completionCallbacks" a) =>
  Lens.Family2.LensLike' f s a
vec'completionCallbacks
  = Data.ProtoLens.Field.field @"vec'completionCallbacks"
vec'eventGroupMarkers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'eventGroupMarkers" a) =>
  Lens.Family2.LensLike' f s a
vec'eventGroupMarkers
  = Data.ProtoLens.Field.field @"vec'eventGroupMarkers"
vec'events ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'events" a) =>
  Lens.Family2.LensLike' f s a
vec'events = Data.ProtoLens.Field.field @"vec'events"
vec'links ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'links" a) =>
  Lens.Family2.LensLike' f s a
vec'links = Data.ProtoLens.Field.field @"vec'links"
vec'suggestContinueAsNewReasons ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'suggestContinueAsNewReasons" a) =>
  Lens.Family2.LensLike' f s a
vec'suggestContinueAsNewReasons
  = Data.ProtoLens.Field.field @"vec'suggestContinueAsNewReasons"
vec'workflowUpdateOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'workflowUpdateOptions" a) =>
  Lens.Family2.LensLike' f s a
vec'workflowUpdateOptions
  = Data.ProtoLens.Field.field @"vec'workflowUpdateOptions"
version ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "version" a) =>
  Lens.Family2.LensLike' f s a
version = Data.ProtoLens.Field.field @"version"
versioningBehavior ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "versioningBehavior" a) =>
  Lens.Family2.LensLike' f s a
versioningBehavior
  = Data.ProtoLens.Field.field @"versioningBehavior"
versioningOverride ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "versioningOverride" a) =>
  Lens.Family2.LensLike' f s a
versioningOverride
  = Data.ProtoLens.Field.field @"versioningOverride"
wallClockTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "wallClockTime" a) =>
  Lens.Family2.LensLike' f s a
wallClockTime = Data.ProtoLens.Field.field @"wallClockTime"
workerDeploymentName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workerDeploymentName" a) =>
  Lens.Family2.LensLike' f s a
workerDeploymentName
  = Data.ProtoLens.Field.field @"workerDeploymentName"
workerDeploymentVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workerDeploymentVersion" a) =>
  Lens.Family2.LensLike' f s a
workerDeploymentVersion
  = Data.ProtoLens.Field.field @"workerDeploymentVersion"
workerMayIgnore ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workerMayIgnore" a) =>
  Lens.Family2.LensLike' f s a
workerMayIgnore = Data.ProtoLens.Field.field @"workerMayIgnore"
workerVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workerVersion" a) =>
  Lens.Family2.LensLike' f s a
workerVersion = Data.ProtoLens.Field.field @"workerVersion"
workflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecution" a) =>
  Lens.Family2.LensLike' f s a
workflowExecution = Data.ProtoLens.Field.field @"workflowExecution"
workflowExecutionCancelRequestedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecutionCancelRequestedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowExecutionCancelRequestedEventAttributes
  = Data.ProtoLens.Field.field
      @"workflowExecutionCancelRequestedEventAttributes"
workflowExecutionCanceledEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecutionCanceledEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowExecutionCanceledEventAttributes
  = Data.ProtoLens.Field.field
      @"workflowExecutionCanceledEventAttributes"
workflowExecutionCompletedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecutionCompletedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowExecutionCompletedEventAttributes
  = Data.ProtoLens.Field.field
      @"workflowExecutionCompletedEventAttributes"
workflowExecutionContinuedAsNewEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecutionContinuedAsNewEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowExecutionContinuedAsNewEventAttributes
  = Data.ProtoLens.Field.field
      @"workflowExecutionContinuedAsNewEventAttributes"
workflowExecutionExpirationTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecutionExpirationTime" a) =>
  Lens.Family2.LensLike' f s a
workflowExecutionExpirationTime
  = Data.ProtoLens.Field.field @"workflowExecutionExpirationTime"
workflowExecutionFailedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecutionFailedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowExecutionFailedEventAttributes
  = Data.ProtoLens.Field.field
      @"workflowExecutionFailedEventAttributes"
workflowExecutionOptionsUpdatedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecutionOptionsUpdatedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowExecutionOptionsUpdatedEventAttributes
  = Data.ProtoLens.Field.field
      @"workflowExecutionOptionsUpdatedEventAttributes"
workflowExecutionPausedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecutionPausedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowExecutionPausedEventAttributes
  = Data.ProtoLens.Field.field
      @"workflowExecutionPausedEventAttributes"
workflowExecutionSignaledEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecutionSignaledEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowExecutionSignaledEventAttributes
  = Data.ProtoLens.Field.field
      @"workflowExecutionSignaledEventAttributes"
workflowExecutionStartedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecutionStartedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowExecutionStartedEventAttributes
  = Data.ProtoLens.Field.field
      @"workflowExecutionStartedEventAttributes"
workflowExecutionTerminatedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecutionTerminatedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowExecutionTerminatedEventAttributes
  = Data.ProtoLens.Field.field
      @"workflowExecutionTerminatedEventAttributes"
workflowExecutionTimeSkippingTransitionedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecutionTimeSkippingTransitionedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowExecutionTimeSkippingTransitionedEventAttributes
  = Data.ProtoLens.Field.field
      @"workflowExecutionTimeSkippingTransitionedEventAttributes"
workflowExecutionTimedOutEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecutionTimedOutEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowExecutionTimedOutEventAttributes
  = Data.ProtoLens.Field.field
      @"workflowExecutionTimedOutEventAttributes"
workflowExecutionTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecutionTimeout" a) =>
  Lens.Family2.LensLike' f s a
workflowExecutionTimeout
  = Data.ProtoLens.Field.field @"workflowExecutionTimeout"
workflowExecutionUnpausedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecutionUnpausedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowExecutionUnpausedEventAttributes
  = Data.ProtoLens.Field.field
      @"workflowExecutionUnpausedEventAttributes"
workflowExecutionUpdateAcceptedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecutionUpdateAcceptedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowExecutionUpdateAcceptedEventAttributes
  = Data.ProtoLens.Field.field
      @"workflowExecutionUpdateAcceptedEventAttributes"
workflowExecutionUpdateAdmittedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecutionUpdateAdmittedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowExecutionUpdateAdmittedEventAttributes
  = Data.ProtoLens.Field.field
      @"workflowExecutionUpdateAdmittedEventAttributes"
workflowExecutionUpdateCompletedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecutionUpdateCompletedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowExecutionUpdateCompletedEventAttributes
  = Data.ProtoLens.Field.field
      @"workflowExecutionUpdateCompletedEventAttributes"
workflowExecutionUpdateRejectedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecutionUpdateRejectedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowExecutionUpdateRejectedEventAttributes
  = Data.ProtoLens.Field.field
      @"workflowExecutionUpdateRejectedEventAttributes"
workflowId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowId" a) =>
  Lens.Family2.LensLike' f s a
workflowId = Data.ProtoLens.Field.field @"workflowId"
workflowIdReusePolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowIdReusePolicy" a) =>
  Lens.Family2.LensLike' f s a
workflowIdReusePolicy
  = Data.ProtoLens.Field.field @"workflowIdReusePolicy"
workflowPropertiesModifiedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowPropertiesModifiedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowPropertiesModifiedEventAttributes
  = Data.ProtoLens.Field.field
      @"workflowPropertiesModifiedEventAttributes"
workflowPropertiesModifiedExternallyEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowPropertiesModifiedExternallyEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowPropertiesModifiedExternallyEventAttributes
  = Data.ProtoLens.Field.field
      @"workflowPropertiesModifiedExternallyEventAttributes"
workflowRunTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowRunTimeout" a) =>
  Lens.Family2.LensLike' f s a
workflowRunTimeout
  = Data.ProtoLens.Field.field @"workflowRunTimeout"
workflowTaskCompletedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowTaskCompletedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowTaskCompletedEventAttributes
  = Data.ProtoLens.Field.field
      @"workflowTaskCompletedEventAttributes"
workflowTaskCompletedEventId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowTaskCompletedEventId" a) =>
  Lens.Family2.LensLike' f s a
workflowTaskCompletedEventId
  = Data.ProtoLens.Field.field @"workflowTaskCompletedEventId"
workflowTaskFailedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowTaskFailedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowTaskFailedEventAttributes
  = Data.ProtoLens.Field.field @"workflowTaskFailedEventAttributes"
workflowTaskScheduledEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowTaskScheduledEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowTaskScheduledEventAttributes
  = Data.ProtoLens.Field.field
      @"workflowTaskScheduledEventAttributes"
workflowTaskStartedEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowTaskStartedEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowTaskStartedEventAttributes
  = Data.ProtoLens.Field.field @"workflowTaskStartedEventAttributes"
workflowTaskTimedOutEventAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowTaskTimedOutEventAttributes" a) =>
  Lens.Family2.LensLike' f s a
workflowTaskTimedOutEventAttributes
  = Data.ProtoLens.Field.field @"workflowTaskTimedOutEventAttributes"
workflowTaskTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowTaskTimeout" a) =>
  Lens.Family2.LensLike' f s a
workflowTaskTimeout
  = Data.ProtoLens.Field.field @"workflowTaskTimeout"
workflowType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowType" a) =>
  Lens.Family2.LensLike' f s a
workflowType = Data.ProtoLens.Field.field @"workflowType"
workflowUpdateOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowUpdateOptions" a) =>
  Lens.Family2.LensLike' f s a
workflowUpdateOptions
  = Data.ProtoLens.Field.field @"workflowUpdateOptions"