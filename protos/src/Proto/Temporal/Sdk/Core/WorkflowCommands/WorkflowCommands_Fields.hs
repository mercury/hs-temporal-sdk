{- This file was auto-generated from temporal/sdk/core/workflow_commands/workflow_commands.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields where
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
import qualified Proto.Google.Protobuf.Empty
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Temporal.Api.Common.V1.Message
import qualified Proto.Temporal.Api.Enums.V1.Workflow
import qualified Proto.Temporal.Api.Failure.V1.Message
import qualified Proto.Temporal.Api.Sdk.V1.EventGroupMarker
import qualified Proto.Temporal.Api.Sdk.V1.UserMetadata
import qualified Proto.Temporal.Api.Workflow.V1.Message
import qualified Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow
import qualified Proto.Temporal.Sdk.Core.Common.Common
import qualified Proto.Temporal.Sdk.Core.Nexus.Nexus
accepted ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "accepted" a) =>
  Lens.Family2.LensLike' f s a
accepted = Data.ProtoLens.Field.field @"accepted"
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
args ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "args" a) =>
  Lens.Family2.LensLike' f s a
args = Data.ProtoLens.Field.field @"args"
arguments ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "arguments" a) =>
  Lens.Family2.LensLike' f s a
arguments = Data.ProtoLens.Field.field @"arguments"
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
cancelChildWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cancelChildWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
cancelChildWorkflowExecution
  = Data.ProtoLens.Field.field @"cancelChildWorkflowExecution"
cancelSignalWorkflow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cancelSignalWorkflow" a) =>
  Lens.Family2.LensLike' f s a
cancelSignalWorkflow
  = Data.ProtoLens.Field.field @"cancelSignalWorkflow"
cancelTimer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cancelTimer" a) =>
  Lens.Family2.LensLike' f s a
cancelTimer = Data.ProtoLens.Field.field @"cancelTimer"
cancelWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cancelWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
cancelWorkflowExecution
  = Data.ProtoLens.Field.field @"cancelWorkflowExecution"
cancellationType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cancellationType" a) =>
  Lens.Family2.LensLike' f s a
cancellationType = Data.ProtoLens.Field.field @"cancellationType"
childWorkflowId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "childWorkflowId" a) =>
  Lens.Family2.LensLike' f s a
childWorkflowId = Data.ProtoLens.Field.field @"childWorkflowId"
childWorkflowSeq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "childWorkflowSeq" a) =>
  Lens.Family2.LensLike' f s a
childWorkflowSeq = Data.ProtoLens.Field.field @"childWorkflowSeq"
completeWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "completeWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
completeWorkflowExecution
  = Data.ProtoLens.Field.field @"completeWorkflowExecution"
completed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "completed" a) =>
  Lens.Family2.LensLike' f s a
completed = Data.ProtoLens.Field.field @"completed"
continueAsNewWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "continueAsNewWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
continueAsNewWorkflowExecution
  = Data.ProtoLens.Field.field @"continueAsNewWorkflowExecution"
cronSchedule ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cronSchedule" a) =>
  Lens.Family2.LensLike' f s a
cronSchedule = Data.ProtoLens.Field.field @"cronSchedule"
deprecated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "deprecated" a) =>
  Lens.Family2.LensLike' f s a
deprecated = Data.ProtoLens.Field.field @"deprecated"
details ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "details" a) =>
  Lens.Family2.LensLike' f s a
details = Data.ProtoLens.Field.field @"details"
doNotEagerlyExecute ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "doNotEagerlyExecute" a) =>
  Lens.Family2.LensLike' f s a
doNotEagerlyExecute
  = Data.ProtoLens.Field.field @"doNotEagerlyExecute"
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
failWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "failWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
failWorkflowExecution
  = Data.ProtoLens.Field.field @"failWorkflowExecution"
failed ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "failed" a) =>
  Lens.Family2.LensLike' f s a
failed = Data.ProtoLens.Field.field @"failed"
failure ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "failure" a) =>
  Lens.Family2.LensLike' f s a
failure = Data.ProtoLens.Field.field @"failure"
headers ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "headers" a) =>
  Lens.Family2.LensLike' f s a
headers = Data.ProtoLens.Field.field @"headers"
heartbeatTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "heartbeatTimeout" a) =>
  Lens.Family2.LensLike' f s a
heartbeatTimeout = Data.ProtoLens.Field.field @"heartbeatTimeout"
includeArgumentsInMarker ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "includeArgumentsInMarker" a) =>
  Lens.Family2.LensLike' f s a
includeArgumentsInMarker
  = Data.ProtoLens.Field.field @"includeArgumentsInMarker"
initialVersioningBehavior ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "initialVersioningBehavior" a) =>
  Lens.Family2.LensLike' f s a
initialVersioningBehavior
  = Data.ProtoLens.Field.field @"initialVersioningBehavior"
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
localRetryThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "localRetryThreshold" a) =>
  Lens.Family2.LensLike' f s a
localRetryThreshold
  = Data.ProtoLens.Field.field @"localRetryThreshold"
maybe'accepted ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'accepted" a) =>
  Lens.Family2.LensLike' f s a
maybe'accepted = Data.ProtoLens.Field.field @"maybe'accepted"
maybe'backoffStartInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'backoffStartInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'backoffStartInterval
  = Data.ProtoLens.Field.field @"maybe'backoffStartInterval"
maybe'cancelChildWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cancelChildWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
maybe'cancelChildWorkflowExecution
  = Data.ProtoLens.Field.field @"maybe'cancelChildWorkflowExecution"
maybe'cancelSignalWorkflow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cancelSignalWorkflow" a) =>
  Lens.Family2.LensLike' f s a
maybe'cancelSignalWorkflow
  = Data.ProtoLens.Field.field @"maybe'cancelSignalWorkflow"
maybe'cancelTimer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cancelTimer" a) =>
  Lens.Family2.LensLike' f s a
maybe'cancelTimer = Data.ProtoLens.Field.field @"maybe'cancelTimer"
maybe'cancelWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cancelWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
maybe'cancelWorkflowExecution
  = Data.ProtoLens.Field.field @"maybe'cancelWorkflowExecution"
maybe'childWorkflowId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'childWorkflowId" a) =>
  Lens.Family2.LensLike' f s a
maybe'childWorkflowId
  = Data.ProtoLens.Field.field @"maybe'childWorkflowId"
maybe'completeWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'completeWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
maybe'completeWorkflowExecution
  = Data.ProtoLens.Field.field @"maybe'completeWorkflowExecution"
maybe'completed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'completed" a) =>
  Lens.Family2.LensLike' f s a
maybe'completed = Data.ProtoLens.Field.field @"maybe'completed"
maybe'continueAsNewWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'continueAsNewWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
maybe'continueAsNewWorkflowExecution
  = Data.ProtoLens.Field.field
      @"maybe'continueAsNewWorkflowExecution"
maybe'details ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'details" a) =>
  Lens.Family2.LensLike' f s a
maybe'details = Data.ProtoLens.Field.field @"maybe'details"
maybe'failWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'failWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
maybe'failWorkflowExecution
  = Data.ProtoLens.Field.field @"maybe'failWorkflowExecution"
maybe'failed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'failed" a) =>
  Lens.Family2.LensLike' f s a
maybe'failed = Data.ProtoLens.Field.field @"maybe'failed"
maybe'failure ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'failure" a) =>
  Lens.Family2.LensLike' f s a
maybe'failure = Data.ProtoLens.Field.field @"maybe'failure"
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
maybe'localRetryThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'localRetryThreshold" a) =>
  Lens.Family2.LensLike' f s a
maybe'localRetryThreshold
  = Data.ProtoLens.Field.field @"maybe'localRetryThreshold"
maybe'modifyWorkflowProperties ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'modifyWorkflowProperties" a) =>
  Lens.Family2.LensLike' f s a
maybe'modifyWorkflowProperties
  = Data.ProtoLens.Field.field @"maybe'modifyWorkflowProperties"
maybe'originalScheduleTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'originalScheduleTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'originalScheduleTime
  = Data.ProtoLens.Field.field @"maybe'originalScheduleTime"
maybe'priority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'priority" a) =>
  Lens.Family2.LensLike' f s a
maybe'priority = Data.ProtoLens.Field.field @"maybe'priority"
maybe'rejected ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rejected" a) =>
  Lens.Family2.LensLike' f s a
maybe'rejected = Data.ProtoLens.Field.field @"maybe'rejected"
maybe'requestCancelActivity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestCancelActivity" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestCancelActivity
  = Data.ProtoLens.Field.field @"maybe'requestCancelActivity"
maybe'requestCancelExternalWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestCancelExternalWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestCancelExternalWorkflowExecution
  = Data.ProtoLens.Field.field
      @"maybe'requestCancelExternalWorkflowExecution"
maybe'requestCancelLocalActivity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestCancelLocalActivity" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestCancelLocalActivity
  = Data.ProtoLens.Field.field @"maybe'requestCancelLocalActivity"
maybe'requestCancelNexusOperation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestCancelNexusOperation" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestCancelNexusOperation
  = Data.ProtoLens.Field.field @"maybe'requestCancelNexusOperation"
maybe'respondToQuery ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'respondToQuery" a) =>
  Lens.Family2.LensLike' f s a
maybe'respondToQuery
  = Data.ProtoLens.Field.field @"maybe'respondToQuery"
maybe'response ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'response" a) =>
  Lens.Family2.LensLike' f s a
maybe'response = Data.ProtoLens.Field.field @"maybe'response"
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
maybe'scheduleActivity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scheduleActivity" a) =>
  Lens.Family2.LensLike' f s a
maybe'scheduleActivity
  = Data.ProtoLens.Field.field @"maybe'scheduleActivity"
maybe'scheduleLocalActivity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scheduleLocalActivity" a) =>
  Lens.Family2.LensLike' f s a
maybe'scheduleLocalActivity
  = Data.ProtoLens.Field.field @"maybe'scheduleLocalActivity"
maybe'scheduleNexusOperation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scheduleNexusOperation" a) =>
  Lens.Family2.LensLike' f s a
maybe'scheduleNexusOperation
  = Data.ProtoLens.Field.field @"maybe'scheduleNexusOperation"
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
maybe'setPatchMarker ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'setPatchMarker" a) =>
  Lens.Family2.LensLike' f s a
maybe'setPatchMarker
  = Data.ProtoLens.Field.field @"maybe'setPatchMarker"
maybe'signalExternalWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'signalExternalWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
maybe'signalExternalWorkflowExecution
  = Data.ProtoLens.Field.field
      @"maybe'signalExternalWorkflowExecution"
maybe'startChildWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'startChildWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
maybe'startChildWorkflowExecution
  = Data.ProtoLens.Field.field @"maybe'startChildWorkflowExecution"
maybe'startTimer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'startTimer" a) =>
  Lens.Family2.LensLike' f s a
maybe'startTimer = Data.ProtoLens.Field.field @"maybe'startTimer"
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
maybe'succeeded ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'succeeded" a) =>
  Lens.Family2.LensLike' f s a
maybe'succeeded = Data.ProtoLens.Field.field @"maybe'succeeded"
maybe'target ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'target" a) =>
  Lens.Family2.LensLike' f s a
maybe'target = Data.ProtoLens.Field.field @"maybe'target"
maybe'updateResponse ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'updateResponse" a) =>
  Lens.Family2.LensLike' f s a
maybe'updateResponse
  = Data.ProtoLens.Field.field @"maybe'updateResponse"
maybe'upsertWorkflowSearchAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'upsertWorkflowSearchAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'upsertWorkflowSearchAttributes
  = Data.ProtoLens.Field.field
      @"maybe'upsertWorkflowSearchAttributes"
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
maybe'variant ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'variant" a) =>
  Lens.Family2.LensLike' f s a
maybe'variant = Data.ProtoLens.Field.field @"maybe'variant"
maybe'versioningOverride ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'versioningOverride" a) =>
  Lens.Family2.LensLike' f s a
maybe'versioningOverride
  = Data.ProtoLens.Field.field @"maybe'versioningOverride"
maybe'workflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecution" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecution
  = Data.ProtoLens.Field.field @"maybe'workflowExecution"
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
memo ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "memo" a) =>
  Lens.Family2.LensLike' f s a
memo = Data.ProtoLens.Field.field @"memo"
modifyWorkflowProperties ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "modifyWorkflowProperties" a) =>
  Lens.Family2.LensLike' f s a
modifyWorkflowProperties
  = Data.ProtoLens.Field.field @"modifyWorkflowProperties"
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
originalScheduleTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "originalScheduleTime" a) =>
  Lens.Family2.LensLike' f s a
originalScheduleTime
  = Data.ProtoLens.Field.field @"originalScheduleTime"
parentClosePolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "parentClosePolicy" a) =>
  Lens.Family2.LensLike' f s a
parentClosePolicy = Data.ProtoLens.Field.field @"parentClosePolicy"
patchId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "patchId" a) =>
  Lens.Family2.LensLike' f s a
patchId = Data.ProtoLens.Field.field @"patchId"
priority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "priority" a) =>
  Lens.Family2.LensLike' f s a
priority = Data.ProtoLens.Field.field @"priority"
protocolInstanceId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "protocolInstanceId" a) =>
  Lens.Family2.LensLike' f s a
protocolInstanceId
  = Data.ProtoLens.Field.field @"protocolInstanceId"
queryId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "queryId" a) =>
  Lens.Family2.LensLike' f s a
queryId = Data.ProtoLens.Field.field @"queryId"
reason ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "reason" a) =>
  Lens.Family2.LensLike' f s a
reason = Data.ProtoLens.Field.field @"reason"
rejected ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rejected" a) =>
  Lens.Family2.LensLike' f s a
rejected = Data.ProtoLens.Field.field @"rejected"
requestCancelActivity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestCancelActivity" a) =>
  Lens.Family2.LensLike' f s a
requestCancelActivity
  = Data.ProtoLens.Field.field @"requestCancelActivity"
requestCancelExternalWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestCancelExternalWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
requestCancelExternalWorkflowExecution
  = Data.ProtoLens.Field.field
      @"requestCancelExternalWorkflowExecution"
requestCancelLocalActivity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestCancelLocalActivity" a) =>
  Lens.Family2.LensLike' f s a
requestCancelLocalActivity
  = Data.ProtoLens.Field.field @"requestCancelLocalActivity"
requestCancelNexusOperation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestCancelNexusOperation" a) =>
  Lens.Family2.LensLike' f s a
requestCancelNexusOperation
  = Data.ProtoLens.Field.field @"requestCancelNexusOperation"
respondToQuery ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "respondToQuery" a) =>
  Lens.Family2.LensLike' f s a
respondToQuery = Data.ProtoLens.Field.field @"respondToQuery"
response ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "response" a) =>
  Lens.Family2.LensLike' f s a
response = Data.ProtoLens.Field.field @"response"
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
scheduleActivity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scheduleActivity" a) =>
  Lens.Family2.LensLike' f s a
scheduleActivity = Data.ProtoLens.Field.field @"scheduleActivity"
scheduleLocalActivity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scheduleLocalActivity" a) =>
  Lens.Family2.LensLike' f s a
scheduleLocalActivity
  = Data.ProtoLens.Field.field @"scheduleLocalActivity"
scheduleNexusOperation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scheduleNexusOperation" a) =>
  Lens.Family2.LensLike' f s a
scheduleNexusOperation
  = Data.ProtoLens.Field.field @"scheduleNexusOperation"
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
searchAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "searchAttributes" a) =>
  Lens.Family2.LensLike' f s a
searchAttributes = Data.ProtoLens.Field.field @"searchAttributes"
seq ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "seq" a) =>
  Lens.Family2.LensLike' f s a
seq = Data.ProtoLens.Field.field @"seq"
service ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "service" a) =>
  Lens.Family2.LensLike' f s a
service = Data.ProtoLens.Field.field @"service"
setPatchMarker ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "setPatchMarker" a) =>
  Lens.Family2.LensLike' f s a
setPatchMarker = Data.ProtoLens.Field.field @"setPatchMarker"
signalExternalWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "signalExternalWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
signalExternalWorkflowExecution
  = Data.ProtoLens.Field.field @"signalExternalWorkflowExecution"
signalName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "signalName" a) =>
  Lens.Family2.LensLike' f s a
signalName = Data.ProtoLens.Field.field @"signalName"
startChildWorkflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startChildWorkflowExecution" a) =>
  Lens.Family2.LensLike' f s a
startChildWorkflowExecution
  = Data.ProtoLens.Field.field @"startChildWorkflowExecution"
startTimer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startTimer" a) =>
  Lens.Family2.LensLike' f s a
startTimer = Data.ProtoLens.Field.field @"startTimer"
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
succeeded ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "succeeded" a) =>
  Lens.Family2.LensLike' f s a
succeeded = Data.ProtoLens.Field.field @"succeeded"
taskQueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "taskQueue" a) =>
  Lens.Family2.LensLike' f s a
taskQueue = Data.ProtoLens.Field.field @"taskQueue"
updateResponse ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "updateResponse" a) =>
  Lens.Family2.LensLike' f s a
updateResponse = Data.ProtoLens.Field.field @"updateResponse"
upsertWorkflowSearchAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upsertWorkflowSearchAttributes" a) =>
  Lens.Family2.LensLike' f s a
upsertWorkflowSearchAttributes
  = Data.ProtoLens.Field.field @"upsertWorkflowSearchAttributes"
upsertedMemo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upsertedMemo" a) =>
  Lens.Family2.LensLike' f s a
upsertedMemo = Data.ProtoLens.Field.field @"upsertedMemo"
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
vec'args ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'args" a) =>
  Lens.Family2.LensLike' f s a
vec'args = Data.ProtoLens.Field.field @"vec'args"
vec'arguments ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'arguments" a) =>
  Lens.Family2.LensLike' f s a
vec'arguments = Data.ProtoLens.Field.field @"vec'arguments"
vec'eventGroupMarkers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'eventGroupMarkers" a) =>
  Lens.Family2.LensLike' f s a
vec'eventGroupMarkers
  = Data.ProtoLens.Field.field @"vec'eventGroupMarkers"
vec'input ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'input" a) =>
  Lens.Family2.LensLike' f s a
vec'input = Data.ProtoLens.Field.field @"vec'input"
versioningIntent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "versioningIntent" a) =>
  Lens.Family2.LensLike' f s a
versioningIntent = Data.ProtoLens.Field.field @"versioningIntent"
versioningOverride ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "versioningOverride" a) =>
  Lens.Family2.LensLike' f s a
versioningOverride
  = Data.ProtoLens.Field.field @"versioningOverride"
workflowExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecution" a) =>
  Lens.Family2.LensLike' f s a
workflowExecution = Data.ProtoLens.Field.field @"workflowExecution"
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