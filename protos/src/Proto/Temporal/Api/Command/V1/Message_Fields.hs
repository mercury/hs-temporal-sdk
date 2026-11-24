{- This file was auto-generated from temporal/api/command/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Command.V1.Message_Fields where
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
import qualified Proto.Temporal.Api.Common.V1.Message
import qualified Proto.Temporal.Api.Enums.V1.CommandType
import qualified Proto.Temporal.Api.Enums.V1.Workflow
import qualified Proto.Temporal.Api.Failure.V1.Message
import qualified Proto.Temporal.Api.Sdk.V1.EventGroupMarker
import qualified Proto.Temporal.Api.Sdk.V1.UserMetadata
import qualified Proto.Temporal.Api.Taskqueue.V1.Message
import qualified Proto.Temporal.Api.Workflow.V1.Message
activityId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activityId" a) =>
  Lens.Family2.LensLike' f s a
activityId = Data.ProtoLens.Field.field @"activityId"
activityType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activityType" a) =>
  Lens.Family2.LensLike' f s a
activityType = Data.ProtoLens.Field.field @"activityType"
backoffStartInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "backoffStartInterval" a) =>
  Lens.Family2.LensLike' f s a
backoffStartInterval
  = Data.ProtoLens.Field.field @"backoffStartInterval"
cancelTimerCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cancelTimerCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
cancelTimerCommandAttributes
  = Data.ProtoLens.Field.field @"cancelTimerCommandAttributes"
cancelWorkflowExecutionCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cancelWorkflowExecutionCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
cancelWorkflowExecutionCommandAttributes
  = Data.ProtoLens.Field.field
      @"cancelWorkflowExecutionCommandAttributes"
childWorkflowOnly ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "childWorkflowOnly" a) =>
  Lens.Family2.LensLike' f s a
childWorkflowOnly = Data.ProtoLens.Field.field @"childWorkflowOnly"
commandType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commandType" a) =>
  Lens.Family2.LensLike' f s a
commandType = Data.ProtoLens.Field.field @"commandType"
completeWorkflowExecutionCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "completeWorkflowExecutionCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
completeWorkflowExecutionCommandAttributes
  = Data.ProtoLens.Field.field
      @"completeWorkflowExecutionCommandAttributes"
continueAsNewWorkflowExecutionCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "continueAsNewWorkflowExecutionCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
continueAsNewWorkflowExecutionCommandAttributes
  = Data.ProtoLens.Field.field
      @"continueAsNewWorkflowExecutionCommandAttributes"
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
details ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "details" a) =>
  Lens.Family2.LensLike' f s a
details = Data.ProtoLens.Field.field @"details"
endpoint ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "endpoint" a) =>
  Lens.Family2.LensLike' f s a
endpoint = Data.ProtoLens.Field.field @"endpoint"
eventGroupMarkers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "eventGroupMarkers" a) =>
  Lens.Family2.LensLike' f s a
eventGroupMarkers = Data.ProtoLens.Field.field @"eventGroupMarkers"
execution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "execution" a) =>
  Lens.Family2.LensLike' f s a
execution = Data.ProtoLens.Field.field @"execution"
failWorkflowExecutionCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "failWorkflowExecutionCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
failWorkflowExecutionCommandAttributes
  = Data.ProtoLens.Field.field
      @"failWorkflowExecutionCommandAttributes"
failure ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "failure" a) =>
  Lens.Family2.LensLike' f s a
failure = Data.ProtoLens.Field.field @"failure"
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
inheritBuildId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "inheritBuildId" a) =>
  Lens.Family2.LensLike' f s a
inheritBuildId = Data.ProtoLens.Field.field @"inheritBuildId"
initialVersioningBehavior ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "initialVersioningBehavior" a) =>
  Lens.Family2.LensLike' f s a
initialVersioningBehavior
  = Data.ProtoLens.Field.field @"initialVersioningBehavior"
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
markerName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "markerName" a) =>
  Lens.Family2.LensLike' f s a
markerName = Data.ProtoLens.Field.field @"markerName"
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
maybe'cancelTimerCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cancelTimerCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'cancelTimerCommandAttributes
  = Data.ProtoLens.Field.field @"maybe'cancelTimerCommandAttributes"
maybe'cancelWorkflowExecutionCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cancelWorkflowExecutionCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'cancelWorkflowExecutionCommandAttributes
  = Data.ProtoLens.Field.field
      @"maybe'cancelWorkflowExecutionCommandAttributes"
maybe'completeWorkflowExecutionCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'completeWorkflowExecutionCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'completeWorkflowExecutionCommandAttributes
  = Data.ProtoLens.Field.field
      @"maybe'completeWorkflowExecutionCommandAttributes"
maybe'continueAsNewWorkflowExecutionCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'continueAsNewWorkflowExecutionCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'continueAsNewWorkflowExecutionCommandAttributes
  = Data.ProtoLens.Field.field
      @"maybe'continueAsNewWorkflowExecutionCommandAttributes"
maybe'details ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'details" a) =>
  Lens.Family2.LensLike' f s a
maybe'details = Data.ProtoLens.Field.field @"maybe'details"
maybe'execution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'execution" a) =>
  Lens.Family2.LensLike' f s a
maybe'execution = Data.ProtoLens.Field.field @"maybe'execution"
maybe'failWorkflowExecutionCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'failWorkflowExecutionCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'failWorkflowExecutionCommandAttributes
  = Data.ProtoLens.Field.field
      @"maybe'failWorkflowExecutionCommandAttributes"
maybe'failure ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'failure" a) =>
  Lens.Family2.LensLike' f s a
maybe'failure = Data.ProtoLens.Field.field @"maybe'failure"
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
maybe'memo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'memo" a) =>
  Lens.Family2.LensLike' f s a
maybe'memo = Data.ProtoLens.Field.field @"maybe'memo"
maybe'modifyWorkflowPropertiesCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'modifyWorkflowPropertiesCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'modifyWorkflowPropertiesCommandAttributes
  = Data.ProtoLens.Field.field
      @"maybe'modifyWorkflowPropertiesCommandAttributes"
maybe'priority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'priority" a) =>
  Lens.Family2.LensLike' f s a
maybe'priority = Data.ProtoLens.Field.field @"maybe'priority"
maybe'protocolMessageCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'protocolMessageCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'protocolMessageCommandAttributes
  = Data.ProtoLens.Field.field
      @"maybe'protocolMessageCommandAttributes"
maybe'recordMarkerCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'recordMarkerCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'recordMarkerCommandAttributes
  = Data.ProtoLens.Field.field @"maybe'recordMarkerCommandAttributes"
maybe'requestCancelActivityTaskCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestCancelActivityTaskCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestCancelActivityTaskCommandAttributes
  = Data.ProtoLens.Field.field
      @"maybe'requestCancelActivityTaskCommandAttributes"
maybe'requestCancelExternalWorkflowExecutionCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestCancelExternalWorkflowExecutionCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestCancelExternalWorkflowExecutionCommandAttributes
  = Data.ProtoLens.Field.field
      @"maybe'requestCancelExternalWorkflowExecutionCommandAttributes"
maybe'requestCancelNexusOperationCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestCancelNexusOperationCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestCancelNexusOperationCommandAttributes
  = Data.ProtoLens.Field.field
      @"maybe'requestCancelNexusOperationCommandAttributes"
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
maybe'scheduleActivityTaskCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scheduleActivityTaskCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'scheduleActivityTaskCommandAttributes
  = Data.ProtoLens.Field.field
      @"maybe'scheduleActivityTaskCommandAttributes"
maybe'scheduleNexusOperationCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scheduleNexusOperationCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'scheduleNexusOperationCommandAttributes
  = Data.ProtoLens.Field.field
      @"maybe'scheduleNexusOperationCommandAttributes"
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
maybe'searchAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'searchAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'searchAttributes
  = Data.ProtoLens.Field.field @"maybe'searchAttributes"
maybe'signalExternalWorkflowExecutionCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'signalExternalWorkflowExecutionCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'signalExternalWorkflowExecutionCommandAttributes
  = Data.ProtoLens.Field.field
      @"maybe'signalExternalWorkflowExecutionCommandAttributes"
maybe'startChildWorkflowExecutionCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'startChildWorkflowExecutionCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'startChildWorkflowExecutionCommandAttributes
  = Data.ProtoLens.Field.field
      @"maybe'startChildWorkflowExecutionCommandAttributes"
maybe'startTimerCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'startTimerCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'startTimerCommandAttributes
  = Data.ProtoLens.Field.field @"maybe'startTimerCommandAttributes"
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
maybe'taskQueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'taskQueue" a) =>
  Lens.Family2.LensLike' f s a
maybe'taskQueue = Data.ProtoLens.Field.field @"maybe'taskQueue"
maybe'upsertWorkflowSearchAttributesCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'upsertWorkflowSearchAttributesCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'upsertWorkflowSearchAttributesCommandAttributes
  = Data.ProtoLens.Field.field
      @"maybe'upsertWorkflowSearchAttributesCommandAttributes"
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
maybe'workflowExecutionTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecutionTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecutionTimeout
  = Data.ProtoLens.Field.field @"maybe'workflowExecutionTimeout"
maybe'workflowRunTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowRunTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowRunTimeout
  = Data.ProtoLens.Field.field @"maybe'workflowRunTimeout"
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
messageId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "messageId" a) =>
  Lens.Family2.LensLike' f s a
messageId = Data.ProtoLens.Field.field @"messageId"
modifyWorkflowPropertiesCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "modifyWorkflowPropertiesCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
modifyWorkflowPropertiesCommandAttributes
  = Data.ProtoLens.Field.field
      @"modifyWorkflowPropertiesCommandAttributes"
namespace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "namespace" a) =>
  Lens.Family2.LensLike' f s a
namespace = Data.ProtoLens.Field.field @"namespace"
nexusHeader ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nexusHeader" a) =>
  Lens.Family2.LensLike' f s a
nexusHeader = Data.ProtoLens.Field.field @"nexusHeader"
operation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "operation" a) =>
  Lens.Family2.LensLike' f s a
operation = Data.ProtoLens.Field.field @"operation"
parentClosePolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "parentClosePolicy" a) =>
  Lens.Family2.LensLike' f s a
parentClosePolicy = Data.ProtoLens.Field.field @"parentClosePolicy"
priority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "priority" a) =>
  Lens.Family2.LensLike' f s a
priority = Data.ProtoLens.Field.field @"priority"
protocolMessageCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "protocolMessageCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
protocolMessageCommandAttributes
  = Data.ProtoLens.Field.field @"protocolMessageCommandAttributes"
reason ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "reason" a) =>
  Lens.Family2.LensLike' f s a
reason = Data.ProtoLens.Field.field @"reason"
recordMarkerCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "recordMarkerCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
recordMarkerCommandAttributes
  = Data.ProtoLens.Field.field @"recordMarkerCommandAttributes"
requestCancelActivityTaskCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestCancelActivityTaskCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
requestCancelActivityTaskCommandAttributes
  = Data.ProtoLens.Field.field
      @"requestCancelActivityTaskCommandAttributes"
requestCancelExternalWorkflowExecutionCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestCancelExternalWorkflowExecutionCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
requestCancelExternalWorkflowExecutionCommandAttributes
  = Data.ProtoLens.Field.field
      @"requestCancelExternalWorkflowExecutionCommandAttributes"
requestCancelNexusOperationCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestCancelNexusOperationCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
requestCancelNexusOperationCommandAttributes
  = Data.ProtoLens.Field.field
      @"requestCancelNexusOperationCommandAttributes"
requestEagerExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestEagerExecution" a) =>
  Lens.Family2.LensLike' f s a
requestEagerExecution
  = Data.ProtoLens.Field.field @"requestEagerExecution"
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
runId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "runId" a) =>
  Lens.Family2.LensLike' f s a
runId = Data.ProtoLens.Field.field @"runId"
scheduleActivityTaskCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scheduleActivityTaskCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
scheduleActivityTaskCommandAttributes
  = Data.ProtoLens.Field.field
      @"scheduleActivityTaskCommandAttributes"
scheduleNexusOperationCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scheduleNexusOperationCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
scheduleNexusOperationCommandAttributes
  = Data.ProtoLens.Field.field
      @"scheduleNexusOperationCommandAttributes"
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
signalExternalWorkflowExecutionCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "signalExternalWorkflowExecutionCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
signalExternalWorkflowExecutionCommandAttributes
  = Data.ProtoLens.Field.field
      @"signalExternalWorkflowExecutionCommandAttributes"
signalName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "signalName" a) =>
  Lens.Family2.LensLike' f s a
signalName = Data.ProtoLens.Field.field @"signalName"
startChildWorkflowExecutionCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startChildWorkflowExecutionCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
startChildWorkflowExecutionCommandAttributes
  = Data.ProtoLens.Field.field
      @"startChildWorkflowExecutionCommandAttributes"
startTimerCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startTimerCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
startTimerCommandAttributes
  = Data.ProtoLens.Field.field @"startTimerCommandAttributes"
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
taskQueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "taskQueue" a) =>
  Lens.Family2.LensLike' f s a
taskQueue = Data.ProtoLens.Field.field @"taskQueue"
timerId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "timerId" a) =>
  Lens.Family2.LensLike' f s a
timerId = Data.ProtoLens.Field.field @"timerId"
upsertWorkflowSearchAttributesCommandAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upsertWorkflowSearchAttributesCommandAttributes" a) =>
  Lens.Family2.LensLike' f s a
upsertWorkflowSearchAttributesCommandAttributes
  = Data.ProtoLens.Field.field
      @"upsertWorkflowSearchAttributesCommandAttributes"
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
vec'eventGroupMarkers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'eventGroupMarkers" a) =>
  Lens.Family2.LensLike' f s a
vec'eventGroupMarkers
  = Data.ProtoLens.Field.field @"vec'eventGroupMarkers"
versioningOverride ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "versioningOverride" a) =>
  Lens.Family2.LensLike' f s a
versioningOverride
  = Data.ProtoLens.Field.field @"versioningOverride"
workflowExecutionTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecutionTimeout" a) =>
  Lens.Family2.LensLike' f s a
workflowExecutionTimeout
  = Data.ProtoLens.Field.field @"workflowExecutionTimeout"
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
workflowRunTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowRunTimeout" a) =>
  Lens.Family2.LensLike' f s a
workflowRunTimeout
  = Data.ProtoLens.Field.field @"workflowRunTimeout"
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