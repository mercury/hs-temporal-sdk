{- This file was auto-generated from temporal/api/common/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Common.V1.Message_Fields where
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
import qualified Proto.Temporal.Api.Enums.V1.Common
import qualified Proto.Temporal.Api.Enums.V1.EventType
import qualified Proto.Temporal.Api.Enums.V1.Reset
activity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activity" a) =>
  Lens.Family2.LensLike' f s a
activity = Data.ProtoLens.Field.field @"activity"
activityId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activityId" a) =>
  Lens.Family2.LensLike' f s a
activityId = Data.ProtoLens.Field.field @"activityId"
attachCompletionCallbacks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "attachCompletionCallbacks" a) =>
  Lens.Family2.LensLike' f s a
attachCompletionCallbacks
  = Data.ProtoLens.Field.field @"attachCompletionCallbacks"
attachLinks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "attachLinks" a) =>
  Lens.Family2.LensLike' f s a
attachLinks = Data.ProtoLens.Field.field @"attachLinks"
attachRequestId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "attachRequestId" a) =>
  Lens.Family2.LensLike' f s a
attachRequestId = Data.ProtoLens.Field.field @"attachRequestId"
backoffCoefficient ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "backoffCoefficient" a) =>
  Lens.Family2.LensLike' f s a
backoffCoefficient
  = Data.ProtoLens.Field.field @"backoffCoefficient"
batchJob ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "batchJob" a) =>
  Lens.Family2.LensLike' f s a
batchJob = Data.ProtoLens.Field.field @"batchJob"
buildId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "buildId" a) =>
  Lens.Family2.LensLike' f s a
buildId = Data.ProtoLens.Field.field @"buildId"
businessId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "businessId" a) =>
  Lens.Family2.LensLike' f s a
businessId = Data.ProtoLens.Field.field @"businessId"
callback ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "callback" a) =>
  Lens.Family2.LensLike' f s a
callback = Data.ProtoLens.Field.field @"callback"
componentPath ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "componentPath" a) =>
  Lens.Family2.LensLike' f s a
componentPath = Data.ProtoLens.Field.field @"componentPath"
currentRunOnly ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "currentRunOnly" a) =>
  Lens.Family2.LensLike' f s a
currentRunOnly = Data.ProtoLens.Field.field @"currentRunOnly"
currentSessionSkipCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "currentSessionSkipCount" a) =>
  Lens.Family2.LensLike' f s a
currentSessionSkipCount
  = Data.ProtoLens.Field.field @"currentSessionSkipCount"
currentTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "currentTime" a) =>
  Lens.Family2.LensLike' f s a
currentTime = Data.ProtoLens.Field.field @"currentTime"
data' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "data'" a) =>
  Lens.Family2.LensLike' f s a
data' = Data.ProtoLens.Field.field @"data'"
deploymentSeriesName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "deploymentSeriesName" a) =>
  Lens.Family2.LensLike' f s a
deploymentSeriesName
  = Data.ProtoLens.Field.field @"deploymentSeriesName"
disablePropagation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "disablePropagation" a) =>
  Lens.Family2.LensLike' f s a
disablePropagation
  = Data.ProtoLens.Field.field @"disablePropagation"
duration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "duration" a) =>
  Lens.Family2.LensLike' f s a
duration = Data.ProtoLens.Field.field @"duration"
effectiveConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "effectiveConfig" a) =>
  Lens.Family2.LensLike' f s a
effectiveConfig = Data.ProtoLens.Field.field @"effectiveConfig"
enabled ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "enabled" a) =>
  Lens.Family2.LensLike' f s a
enabled = Data.ProtoLens.Field.field @"enabled"
encodingType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "encodingType" a) =>
  Lens.Family2.LensLike' f s a
encodingType = Data.ProtoLens.Field.field @"encodingType"
eventId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "eventId" a) =>
  Lens.Family2.LensLike' f s a
eventId = Data.ProtoLens.Field.field @"eventId"
eventRef ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "eventRef" a) =>
  Lens.Family2.LensLike' f s a
eventRef = Data.ProtoLens.Field.field @"eventRef"
eventType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "eventType" a) =>
  Lens.Family2.LensLike' f s a
eventType = Data.ProtoLens.Field.field @"eventType"
execution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "execution" a) =>
  Lens.Family2.LensLike' f s a
execution = Data.ProtoLens.Field.field @"execution"
externalPayloads ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "externalPayloads" a) =>
  Lens.Family2.LensLike' f s a
externalPayloads = Data.ProtoLens.Field.field @"externalPayloads"
fairnessKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fairnessKey" a) =>
  Lens.Family2.LensLike' f s a
fairnessKey = Data.ProtoLens.Field.field @"fairnessKey"
fairnessWeight ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fairnessWeight" a) =>
  Lens.Family2.LensLike' f s a
fairnessWeight = Data.ProtoLens.Field.field @"fairnessWeight"
fastForwardConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fastForwardConfig" a) =>
  Lens.Family2.LensLike' f s a
fastForwardConfig = Data.ProtoLens.Field.field @"fastForwardConfig"
fastForwardDuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fastForwardDuration" a) =>
  Lens.Family2.LensLike' f s a
fastForwardDuration
  = Data.ProtoLens.Field.field @"fastForwardDuration"
fastForwardId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fastForwardId" a) =>
  Lens.Family2.LensLike' f s a
fastForwardId = Data.ProtoLens.Field.field @"fastForwardId"
fastForwardInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fastForwardInfo" a) =>
  Lens.Family2.LensLike' f s a
fastForwardInfo = Data.ProtoLens.Field.field @"fastForwardInfo"
fastForwardTargetTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fastForwardTargetTime" a) =>
  Lens.Family2.LensLike' f s a
fastForwardTargetTime
  = Data.ProtoLens.Field.field @"fastForwardTargetTime"
fields ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fields" a) =>
  Lens.Family2.LensLike' f s a
fields = Data.ProtoLens.Field.field @"fields"
firstWorkflowTask ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "firstWorkflowTask" a) =>
  Lens.Family2.LensLike' f s a
firstWorkflowTask = Data.ProtoLens.Field.field @"firstWorkflowTask"
hasCompleted ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hasCompleted" a) =>
  Lens.Family2.LensLike' f s a
hasCompleted = Data.ProtoLens.Field.field @"hasCompleted"
header ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "header" a) =>
  Lens.Family2.LensLike' f s a
header = Data.ProtoLens.Field.field @"header"
id ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "id" a) =>
  Lens.Family2.LensLike' f s a
id = Data.ProtoLens.Field.field @"id"
indexedFields ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "indexedFields" a) =>
  Lens.Family2.LensLike' f s a
indexedFields = Data.ProtoLens.Field.field @"indexedFields"
initialInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "initialInterval" a) =>
  Lens.Family2.LensLike' f s a
initialInterval = Data.ProtoLens.Field.field @"initialInterval"
initialSkipCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "initialSkipCount" a) =>
  Lens.Family2.LensLike' f s a
initialSkipCount = Data.ProtoLens.Field.field @"initialSkipCount"
initialSkippedDuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "initialSkippedDuration" a) =>
  Lens.Family2.LensLike' f s a
initialSkippedDuration
  = Data.ProtoLens.Field.field @"initialSkippedDuration"
internal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "internal" a) =>
  Lens.Family2.LensLike' f s a
internal = Data.ProtoLens.Field.field @"internal"
jobId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "jobId" a) =>
  Lens.Family2.LensLike' f s a
jobId = Data.ProtoLens.Field.field @"jobId"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
lastWorkflowTask ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastWorkflowTask" a) =>
  Lens.Family2.LensLike' f s a
lastWorkflowTask = Data.ProtoLens.Field.field @"lastWorkflowTask"
links ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "links" a) =>
  Lens.Family2.LensLike' f s a
links = Data.ProtoLens.Field.field @"links"
maxSessionSkipCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxSessionSkipCount" a) =>
  Lens.Family2.LensLike' f s a
maxSessionSkipCount
  = Data.ProtoLens.Field.field @"maxSessionSkipCount"
maximumAttempts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maximumAttempts" a) =>
  Lens.Family2.LensLike' f s a
maximumAttempts = Data.ProtoLens.Field.field @"maximumAttempts"
maximumInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maximumInterval" a) =>
  Lens.Family2.LensLike' f s a
maximumInterval = Data.ProtoLens.Field.field @"maximumInterval"
maybe'activity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'activity" a) =>
  Lens.Family2.LensLike' f s a
maybe'activity = Data.ProtoLens.Field.field @"maybe'activity"
maybe'batchJob ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'batchJob" a) =>
  Lens.Family2.LensLike' f s a
maybe'batchJob = Data.ProtoLens.Field.field @"maybe'batchJob"
maybe'buildId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'buildId" a) =>
  Lens.Family2.LensLike' f s a
maybe'buildId = Data.ProtoLens.Field.field @"maybe'buildId"
maybe'callback ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'callback" a) =>
  Lens.Family2.LensLike' f s a
maybe'callback = Data.ProtoLens.Field.field @"maybe'callback"
maybe'currentTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'currentTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'currentTime = Data.ProtoLens.Field.field @"maybe'currentTime"
maybe'duration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'duration" a) =>
  Lens.Family2.LensLike' f s a
maybe'duration = Data.ProtoLens.Field.field @"maybe'duration"
maybe'effectiveConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'effectiveConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'effectiveConfig
  = Data.ProtoLens.Field.field @"maybe'effectiveConfig"
maybe'eventRef ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'eventRef" a) =>
  Lens.Family2.LensLike' f s a
maybe'eventRef = Data.ProtoLens.Field.field @"maybe'eventRef"
maybe'execution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'execution" a) =>
  Lens.Family2.LensLike' f s a
maybe'execution = Data.ProtoLens.Field.field @"maybe'execution"
maybe'fastForwardConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fastForwardConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'fastForwardConfig
  = Data.ProtoLens.Field.field @"maybe'fastForwardConfig"
maybe'fastForwardDuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fastForwardDuration" a) =>
  Lens.Family2.LensLike' f s a
maybe'fastForwardDuration
  = Data.ProtoLens.Field.field @"maybe'fastForwardDuration"
maybe'fastForwardInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fastForwardInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'fastForwardInfo
  = Data.ProtoLens.Field.field @"maybe'fastForwardInfo"
maybe'fastForwardTargetTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fastForwardTargetTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'fastForwardTargetTime
  = Data.ProtoLens.Field.field @"maybe'fastForwardTargetTime"
maybe'firstWorkflowTask ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'firstWorkflowTask" a) =>
  Lens.Family2.LensLike' f s a
maybe'firstWorkflowTask
  = Data.ProtoLens.Field.field @"maybe'firstWorkflowTask"
maybe'initialInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'initialInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'initialInterval
  = Data.ProtoLens.Field.field @"maybe'initialInterval"
maybe'initialSkippedDuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'initialSkippedDuration" a) =>
  Lens.Family2.LensLike' f s a
maybe'initialSkippedDuration
  = Data.ProtoLens.Field.field @"maybe'initialSkippedDuration"
maybe'internal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'internal" a) =>
  Lens.Family2.LensLike' f s a
maybe'internal = Data.ProtoLens.Field.field @"maybe'internal"
maybe'lastWorkflowTask ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lastWorkflowTask" a) =>
  Lens.Family2.LensLike' f s a
maybe'lastWorkflowTask
  = Data.ProtoLens.Field.field @"maybe'lastWorkflowTask"
maybe'maximumInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maximumInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'maximumInterval
  = Data.ProtoLens.Field.field @"maybe'maximumInterval"
maybe'nexus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nexus" a) =>
  Lens.Family2.LensLike' f s a
maybe'nexus = Data.ProtoLens.Field.field @"maybe'nexus"
maybe'nexusHandler ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nexusHandler" a) =>
  Lens.Family2.LensLike' f s a
maybe'nexusHandler
  = Data.ProtoLens.Field.field @"maybe'nexusHandler"
maybe'nexusOperation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nexusOperation" a) =>
  Lens.Family2.LensLike' f s a
maybe'nexusOperation
  = Data.ProtoLens.Field.field @"maybe'nexusOperation"
maybe'reference ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'reference" a) =>
  Lens.Family2.LensLike' f s a
maybe'reference = Data.ProtoLens.Field.field @"maybe'reference"
maybe'requestIdRef ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestIdRef" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestIdRef
  = Data.ProtoLens.Field.field @"maybe'requestIdRef"
maybe'selector ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'selector" a) =>
  Lens.Family2.LensLike' f s a
maybe'selector = Data.ProtoLens.Field.field @"maybe'selector"
maybe'sourceContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sourceContext" a) =>
  Lens.Family2.LensLike' f s a
maybe'sourceContext
  = Data.ProtoLens.Field.field @"maybe'sourceContext"
maybe'target ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'target" a) =>
  Lens.Family2.LensLike' f s a
maybe'target = Data.ProtoLens.Field.field @"maybe'target"
maybe'targetTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'targetTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'targetTime = Data.ProtoLens.Field.field @"maybe'targetTime"
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
maybe'workerInstanceKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workerInstanceKey" a) =>
  Lens.Family2.LensLike' f s a
maybe'workerInstanceKey
  = Data.ProtoLens.Field.field @"maybe'workerInstanceKey"
maybe'workflow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflow" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflow = Data.ProtoLens.Field.field @"maybe'workflow"
maybe'workflowEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowEvent" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowEvent
  = Data.ProtoLens.Field.field @"maybe'workflowEvent"
maybe'workflowTaskId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowTaskId" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowTaskId
  = Data.ProtoLens.Field.field @"maybe'workflowTaskId"
metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metadata" a) =>
  Lens.Family2.LensLike' f s a
metadata = Data.ProtoLens.Field.field @"metadata"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
nameAtWriteTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nameAtWriteTime" a) =>
  Lens.Family2.LensLike' f s a
nameAtWriteTime = Data.ProtoLens.Field.field @"nameAtWriteTime"
namespace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "namespace" a) =>
  Lens.Family2.LensLike' f s a
namespace = Data.ProtoLens.Field.field @"namespace"
nexus ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nexus" a) =>
  Lens.Family2.LensLike' f s a
nexus = Data.ProtoLens.Field.field @"nexus"
nexusHandler ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nexusHandler" a) =>
  Lens.Family2.LensLike' f s a
nexusHandler = Data.ProtoLens.Field.field @"nexusHandler"
nexusOperation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nexusOperation" a) =>
  Lens.Family2.LensLike' f s a
nexusOperation = Data.ProtoLens.Field.field @"nexusOperation"
nonRetryableErrorTypes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nonRetryableErrorTypes" a) =>
  Lens.Family2.LensLike' f s a
nonRetryableErrorTypes
  = Data.ProtoLens.Field.field @"nonRetryableErrorTypes"
nonfirstLocalActivityExecutionAttempts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nonfirstLocalActivityExecutionAttempts" a) =>
  Lens.Family2.LensLike' f s a
nonfirstLocalActivityExecutionAttempts
  = Data.ProtoLens.Field.field
      @"nonfirstLocalActivityExecutionAttempts"
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
payloads ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "payloads" a) =>
  Lens.Family2.LensLike' f s a
payloads = Data.ProtoLens.Field.field @"payloads"
priorityKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "priorityKey" a) =>
  Lens.Family2.LensLike' f s a
priorityKey = Data.ProtoLens.Field.field @"priorityKey"
reason ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "reason" a) =>
  Lens.Family2.LensLike' f s a
reason = Data.ProtoLens.Field.field @"reason"
requestId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestId" a) =>
  Lens.Family2.LensLike' f s a
requestId = Data.ProtoLens.Field.field @"requestId"
requestIdRef ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestIdRef" a) =>
  Lens.Family2.LensLike' f s a
requestIdRef = Data.ProtoLens.Field.field @"requestIdRef"
resetReapplyExcludeTypes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "resetReapplyExcludeTypes" a) =>
  Lens.Family2.LensLike' f s a
resetReapplyExcludeTypes
  = Data.ProtoLens.Field.field @"resetReapplyExcludeTypes"
resetReapplyType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "resetReapplyType" a) =>
  Lens.Family2.LensLike' f s a
resetReapplyType = Data.ProtoLens.Field.field @"resetReapplyType"
runId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "runId" a) =>
  Lens.Family2.LensLike' f s a
runId = Data.ProtoLens.Field.field @"runId"
service ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "service" a) =>
  Lens.Family2.LensLike' f s a
service = Data.ProtoLens.Field.field @"service"
sizeBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sizeBytes" a) =>
  Lens.Family2.LensLike' f s a
sizeBytes = Data.ProtoLens.Field.field @"sizeBytes"
sourceContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourceContext" a) =>
  Lens.Family2.LensLike' f s a
sourceContext = Data.ProtoLens.Field.field @"sourceContext"
targetTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "targetTime" a) =>
  Lens.Family2.LensLike' f s a
targetTime = Data.ProtoLens.Field.field @"targetTime"
taskQueueName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "taskQueueName" a) =>
  Lens.Family2.LensLike' f s a
taskQueueName = Data.ProtoLens.Field.field @"taskQueueName"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
url ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "url" a) =>
  Lens.Family2.LensLike' f s a
url = Data.ProtoLens.Field.field @"url"
useVersioning ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "useVersioning" a) =>
  Lens.Family2.LensLike' f s a
useVersioning = Data.ProtoLens.Field.field @"useVersioning"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'componentPath ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'componentPath" a) =>
  Lens.Family2.LensLike' f s a
vec'componentPath = Data.ProtoLens.Field.field @"vec'componentPath"
vec'externalPayloads ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'externalPayloads" a) =>
  Lens.Family2.LensLike' f s a
vec'externalPayloads
  = Data.ProtoLens.Field.field @"vec'externalPayloads"
vec'links ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'links" a) =>
  Lens.Family2.LensLike' f s a
vec'links = Data.ProtoLens.Field.field @"vec'links"
vec'nonRetryableErrorTypes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'nonRetryableErrorTypes" a) =>
  Lens.Family2.LensLike' f s a
vec'nonRetryableErrorTypes
  = Data.ProtoLens.Field.field @"vec'nonRetryableErrorTypes"
vec'payloads ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'payloads" a) =>
  Lens.Family2.LensLike' f s a
vec'payloads = Data.ProtoLens.Field.field @"vec'payloads"
vec'resetReapplyExcludeTypes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'resetReapplyExcludeTypes" a) =>
  Lens.Family2.LensLike' f s a
vec'resetReapplyExcludeTypes
  = Data.ProtoLens.Field.field @"vec'resetReapplyExcludeTypes"
workerInstanceKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workerInstanceKey" a) =>
  Lens.Family2.LensLike' f s a
workerInstanceKey = Data.ProtoLens.Field.field @"workerInstanceKey"
workflow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflow" a) =>
  Lens.Family2.LensLike' f s a
workflow = Data.ProtoLens.Field.field @"workflow"
workflowEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowEvent" a) =>
  Lens.Family2.LensLike' f s a
workflowEvent = Data.ProtoLens.Field.field @"workflowEvent"
workflowId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowId" a) =>
  Lens.Family2.LensLike' f s a
workflowId = Data.ProtoLens.Field.field @"workflowId"
workflowTaskId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowTaskId" a) =>
  Lens.Family2.LensLike' f s a
workflowTaskId = Data.ProtoLens.Field.field @"workflowTaskId"