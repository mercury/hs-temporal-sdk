{- This file was auto-generated from temporal/api/namespace/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Namespace.V1.Message_Fields where
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
import qualified Proto.Temporal.Api.Enums.V1.Namespace
asyncUpdate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "asyncUpdate" a) =>
  Lens.Family2.LensLike' f s a
asyncUpdate = Data.ProtoLens.Field.field @"asyncUpdate"
badBinaries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "badBinaries" a) =>
  Lens.Family2.LensLike' f s a
badBinaries = Data.ProtoLens.Field.field @"badBinaries"
binaries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "binaries" a) =>
  Lens.Family2.LensLike' f s a
binaries = Data.ProtoLens.Field.field @"binaries"
blobSizeLimitError ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blobSizeLimitError" a) =>
  Lens.Family2.LensLike' f s a
blobSizeLimitError
  = Data.ProtoLens.Field.field @"blobSizeLimitError"
capabilities ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "capabilities" a) =>
  Lens.Family2.LensLike' f s a
capabilities = Data.ProtoLens.Field.field @"capabilities"
createTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "createTime" a) =>
  Lens.Family2.LensLike' f s a
createTime = Data.ProtoLens.Field.field @"createTime"
customSearchAttributeAliases ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "customSearchAttributeAliases" a) =>
  Lens.Family2.LensLike' f s a
customSearchAttributeAliases
  = Data.ProtoLens.Field.field @"customSearchAttributeAliases"
data' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "data'" a) =>
  Lens.Family2.LensLike' f s a
data' = Data.ProtoLens.Field.field @"data'"
description ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "description" a) =>
  Lens.Family2.LensLike' f s a
description = Data.ProtoLens.Field.field @"description"
eagerWorkflowStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "eagerWorkflowStart" a) =>
  Lens.Family2.LensLike' f s a
eagerWorkflowStart
  = Data.ProtoLens.Field.field @"eagerWorkflowStart"
historyArchivalState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "historyArchivalState" a) =>
  Lens.Family2.LensLike' f s a
historyArchivalState
  = Data.ProtoLens.Field.field @"historyArchivalState"
historyArchivalUri ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "historyArchivalUri" a) =>
  Lens.Family2.LensLike' f s a
historyArchivalUri
  = Data.ProtoLens.Field.field @"historyArchivalUri"
id ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "id" a) =>
  Lens.Family2.LensLike' f s a
id = Data.ProtoLens.Field.field @"id"
includeDeleted ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "includeDeleted" a) =>
  Lens.Family2.LensLike' f s a
includeDeleted = Data.ProtoLens.Field.field @"includeDeleted"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
limits ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "limits" a) =>
  Lens.Family2.LensLike' f s a
limits = Data.ProtoLens.Field.field @"limits"
maybe'badBinaries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'badBinaries" a) =>
  Lens.Family2.LensLike' f s a
maybe'badBinaries = Data.ProtoLens.Field.field @"maybe'badBinaries"
maybe'capabilities ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'capabilities" a) =>
  Lens.Family2.LensLike' f s a
maybe'capabilities
  = Data.ProtoLens.Field.field @"maybe'capabilities"
maybe'createTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'createTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'createTime = Data.ProtoLens.Field.field @"maybe'createTime"
maybe'limits ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'limits" a) =>
  Lens.Family2.LensLike' f s a
maybe'limits = Data.ProtoLens.Field.field @"maybe'limits"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
maybe'workflowExecutionRetentionTtl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowExecutionRetentionTtl" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowExecutionRetentionTtl
  = Data.ProtoLens.Field.field @"maybe'workflowExecutionRetentionTtl"
memoSizeLimitError ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "memoSizeLimitError" a) =>
  Lens.Family2.LensLike' f s a
memoSizeLimitError
  = Data.ProtoLens.Field.field @"memoSizeLimitError"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
operator ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "operator" a) =>
  Lens.Family2.LensLike' f s a
operator = Data.ProtoLens.Field.field @"operator"
ownerEmail ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ownerEmail" a) =>
  Lens.Family2.LensLike' f s a
ownerEmail = Data.ProtoLens.Field.field @"ownerEmail"
pollerAutoscaling ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pollerAutoscaling" a) =>
  Lens.Family2.LensLike' f s a
pollerAutoscaling = Data.ProtoLens.Field.field @"pollerAutoscaling"
pollerAutoscalingAutoEnroll ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pollerAutoscalingAutoEnroll" a) =>
  Lens.Family2.LensLike' f s a
pollerAutoscalingAutoEnroll
  = Data.ProtoLens.Field.field @"pollerAutoscalingAutoEnroll"
reason ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "reason" a) =>
  Lens.Family2.LensLike' f s a
reason = Data.ProtoLens.Field.field @"reason"
reportedProblemsSearchAttribute ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "reportedProblemsSearchAttribute" a) =>
  Lens.Family2.LensLike' f s a
reportedProblemsSearchAttribute
  = Data.ProtoLens.Field.field @"reportedProblemsSearchAttribute"
standaloneActivities ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "standaloneActivities" a) =>
  Lens.Family2.LensLike' f s a
standaloneActivities
  = Data.ProtoLens.Field.field @"standaloneActivities"
standaloneActivityBatchOperations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "standaloneActivityBatchOperations" a) =>
  Lens.Family2.LensLike' f s a
standaloneActivityBatchOperations
  = Data.ProtoLens.Field.field @"standaloneActivityBatchOperations"
standaloneActivityOperatorCommands ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "standaloneActivityOperatorCommands" a) =>
  Lens.Family2.LensLike' f s a
standaloneActivityOperatorCommands
  = Data.ProtoLens.Field.field @"standaloneActivityOperatorCommands"
standaloneActivityStartDelay ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "standaloneActivityStartDelay" a) =>
  Lens.Family2.LensLike' f s a
standaloneActivityStartDelay
  = Data.ProtoLens.Field.field @"standaloneActivityStartDelay"
standaloneNexusOperation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "standaloneNexusOperation" a) =>
  Lens.Family2.LensLike' f s a
standaloneNexusOperation
  = Data.ProtoLens.Field.field @"standaloneNexusOperation"
state ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "state" a) =>
  Lens.Family2.LensLike' f s a
state = Data.ProtoLens.Field.field @"state"
supportsSchedules ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "supportsSchedules" a) =>
  Lens.Family2.LensLike' f s a
supportsSchedules = Data.ProtoLens.Field.field @"supportsSchedules"
syncUpdate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "syncUpdate" a) =>
  Lens.Family2.LensLike' f s a
syncUpdate = Data.ProtoLens.Field.field @"syncUpdate"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
visibilityArchivalState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "visibilityArchivalState" a) =>
  Lens.Family2.LensLike' f s a
visibilityArchivalState
  = Data.ProtoLens.Field.field @"visibilityArchivalState"
visibilityArchivalUri ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "visibilityArchivalUri" a) =>
  Lens.Family2.LensLike' f s a
visibilityArchivalUri
  = Data.ProtoLens.Field.field @"visibilityArchivalUri"
workerCommands ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workerCommands" a) =>
  Lens.Family2.LensLike' f s a
workerCommands = Data.ProtoLens.Field.field @"workerCommands"
workerHeartbeats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workerHeartbeats" a) =>
  Lens.Family2.LensLike' f s a
workerHeartbeats = Data.ProtoLens.Field.field @"workerHeartbeats"
workerPollCompleteOnShutdown ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workerPollCompleteOnShutdown" a) =>
  Lens.Family2.LensLike' f s a
workerPollCompleteOnShutdown
  = Data.ProtoLens.Field.field @"workerPollCompleteOnShutdown"
workflowExecutionRetentionTtl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowExecutionRetentionTtl" a) =>
  Lens.Family2.LensLike' f s a
workflowExecutionRetentionTtl
  = Data.ProtoLens.Field.field @"workflowExecutionRetentionTtl"
workflowPause ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowPause" a) =>
  Lens.Family2.LensLike' f s a
workflowPause = Data.ProtoLens.Field.field @"workflowPause"
workflowTaskCompletionPagination ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowTaskCompletionPagination" a) =>
  Lens.Family2.LensLike' f s a
workflowTaskCompletionPagination
  = Data.ProtoLens.Field.field @"workflowTaskCompletionPagination"
workflowTaskCompletionSizeLimitError ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowTaskCompletionSizeLimitError" a) =>
  Lens.Family2.LensLike' f s a
workflowTaskCompletionSizeLimitError
  = Data.ProtoLens.Field.field
      @"workflowTaskCompletionSizeLimitError"
workflowUpdateCallbacks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowUpdateCallbacks" a) =>
  Lens.Family2.LensLike' f s a
workflowUpdateCallbacks
  = Data.ProtoLens.Field.field @"workflowUpdateCallbacks"