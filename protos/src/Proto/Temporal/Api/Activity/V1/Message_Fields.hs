{- This file was auto-generated from temporal/api/activity/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Activity.V1.Message_Fields where
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
activityClosed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activityClosed" a) =>
  Lens.Family2.LensLike' f s a
activityClosed = Data.ProtoLens.Field.field @"activityClosed"
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
attempt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "attempt" a) =>
  Lens.Family2.LensLike' f s a
attempt = Data.ProtoLens.Field.field @"attempt"
canceledReason ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "canceledReason" a) =>
  Lens.Family2.LensLike' f s a
canceledReason = Data.ProtoLens.Field.field @"canceledReason"
closeTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "closeTime" a) =>
  Lens.Family2.LensLike' f s a
closeTime = Data.ProtoLens.Field.field @"closeTime"
closedByPrincipal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "closedByPrincipal" a) =>
  Lens.Family2.LensLike' f s a
closedByPrincipal = Data.ProtoLens.Field.field @"closedByPrincipal"
currentRetryInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "currentRetryInterval" a) =>
  Lens.Family2.LensLike' f s a
currentRetryInterval
  = Data.ProtoLens.Field.field @"currentRetryInterval"
eagerExecutionAccepted ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "eagerExecutionAccepted" a) =>
  Lens.Family2.LensLike' f s a
eagerExecutionAccepted
  = Data.ProtoLens.Field.field @"eagerExecutionAccepted"
executionDuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "executionDuration" a) =>
  Lens.Family2.LensLike' f s a
executionDuration = Data.ProtoLens.Field.field @"executionDuration"
executionTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "executionTime" a) =>
  Lens.Family2.LensLike' f s a
executionTime = Data.ProtoLens.Field.field @"executionTime"
expirationTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "expirationTime" a) =>
  Lens.Family2.LensLike' f s a
expirationTime = Data.ProtoLens.Field.field @"expirationTime"
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
heartbeatDetails ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "heartbeatDetails" a) =>
  Lens.Family2.LensLike' f s a
heartbeatDetails = Data.ProtoLens.Field.field @"heartbeatDetails"
heartbeatTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "heartbeatTimeout" a) =>
  Lens.Family2.LensLike' f s a
heartbeatTimeout = Data.ProtoLens.Field.field @"heartbeatTimeout"
info ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "info" a) =>
  Lens.Family2.LensLike' f s a
info = Data.ProtoLens.Field.field @"info"
lastAttemptCompleteTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastAttemptCompleteTime" a) =>
  Lens.Family2.LensLike' f s a
lastAttemptCompleteTime
  = Data.ProtoLens.Field.field @"lastAttemptCompleteTime"
lastDeploymentVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastDeploymentVersion" a) =>
  Lens.Family2.LensLike' f s a
lastDeploymentVersion
  = Data.ProtoLens.Field.field @"lastDeploymentVersion"
lastFailure ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastFailure" a) =>
  Lens.Family2.LensLike' f s a
lastFailure = Data.ProtoLens.Field.field @"lastFailure"
lastHeartbeatTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastHeartbeatTime" a) =>
  Lens.Family2.LensLike' f s a
lastHeartbeatTime = Data.ProtoLens.Field.field @"lastHeartbeatTime"
lastStartedTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastStartedTime" a) =>
  Lens.Family2.LensLike' f s a
lastStartedTime = Data.ProtoLens.Field.field @"lastStartedTime"
lastWorkerIdentity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastWorkerIdentity" a) =>
  Lens.Family2.LensLike' f s a
lastWorkerIdentity
  = Data.ProtoLens.Field.field @"lastWorkerIdentity"
lastWorkerPrincipal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastWorkerPrincipal" a) =>
  Lens.Family2.LensLike' f s a
lastWorkerPrincipal
  = Data.ProtoLens.Field.field @"lastWorkerPrincipal"
links ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "links" a) =>
  Lens.Family2.LensLike' f s a
links = Data.ProtoLens.Field.field @"links"
maybe'activityClosed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'activityClosed" a) =>
  Lens.Family2.LensLike' f s a
maybe'activityClosed
  = Data.ProtoLens.Field.field @"maybe'activityClosed"
maybe'activityType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'activityType" a) =>
  Lens.Family2.LensLike' f s a
maybe'activityType
  = Data.ProtoLens.Field.field @"maybe'activityType"
maybe'closeTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'closeTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'closeTime = Data.ProtoLens.Field.field @"maybe'closeTime"
maybe'closedByPrincipal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'closedByPrincipal" a) =>
  Lens.Family2.LensLike' f s a
maybe'closedByPrincipal
  = Data.ProtoLens.Field.field @"maybe'closedByPrincipal"
maybe'currentRetryInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'currentRetryInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'currentRetryInterval
  = Data.ProtoLens.Field.field @"maybe'currentRetryInterval"
maybe'executionDuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'executionDuration" a) =>
  Lens.Family2.LensLike' f s a
maybe'executionDuration
  = Data.ProtoLens.Field.field @"maybe'executionDuration"
maybe'executionTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'executionTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'executionTime
  = Data.ProtoLens.Field.field @"maybe'executionTime"
maybe'expirationTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'expirationTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'expirationTime
  = Data.ProtoLens.Field.field @"maybe'expirationTime"
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
maybe'heartbeatDetails ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'heartbeatDetails" a) =>
  Lens.Family2.LensLike' f s a
maybe'heartbeatDetails
  = Data.ProtoLens.Field.field @"maybe'heartbeatDetails"
maybe'heartbeatTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'heartbeatTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'heartbeatTimeout
  = Data.ProtoLens.Field.field @"maybe'heartbeatTimeout"
maybe'info ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'info" a) =>
  Lens.Family2.LensLike' f s a
maybe'info = Data.ProtoLens.Field.field @"maybe'info"
maybe'lastAttemptCompleteTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lastAttemptCompleteTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'lastAttemptCompleteTime
  = Data.ProtoLens.Field.field @"maybe'lastAttemptCompleteTime"
maybe'lastDeploymentVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lastDeploymentVersion" a) =>
  Lens.Family2.LensLike' f s a
maybe'lastDeploymentVersion
  = Data.ProtoLens.Field.field @"maybe'lastDeploymentVersion"
maybe'lastFailure ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lastFailure" a) =>
  Lens.Family2.LensLike' f s a
maybe'lastFailure = Data.ProtoLens.Field.field @"maybe'lastFailure"
maybe'lastHeartbeatTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lastHeartbeatTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'lastHeartbeatTime
  = Data.ProtoLens.Field.field @"maybe'lastHeartbeatTime"
maybe'lastStartedTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lastStartedTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'lastStartedTime
  = Data.ProtoLens.Field.field @"maybe'lastStartedTime"
maybe'lastWorkerPrincipal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lastWorkerPrincipal" a) =>
  Lens.Family2.LensLike' f s a
maybe'lastWorkerPrincipal
  = Data.ProtoLens.Field.field @"maybe'lastWorkerPrincipal"
maybe'nextAttemptScheduleTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nextAttemptScheduleTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'nextAttemptScheduleTime
  = Data.ProtoLens.Field.field @"maybe'nextAttemptScheduleTime"
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
maybe'scheduleTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scheduleTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'scheduleTime
  = Data.ProtoLens.Field.field @"maybe'scheduleTime"
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
maybe'startDelay ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'startDelay" a) =>
  Lens.Family2.LensLike' f s a
maybe'startDelay = Data.ProtoLens.Field.field @"maybe'startDelay"
maybe'startToCloseTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'startToCloseTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'startToCloseTimeout
  = Data.ProtoLens.Field.field @"maybe'startToCloseTimeout"
maybe'startedByPrincipal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'startedByPrincipal" a) =>
  Lens.Family2.LensLike' f s a
maybe'startedByPrincipal
  = Data.ProtoLens.Field.field @"maybe'startedByPrincipal"
maybe'taskQueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'taskQueue" a) =>
  Lens.Family2.LensLike' f s a
maybe'taskQueue = Data.ProtoLens.Field.field @"maybe'taskQueue"
maybe'trigger ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trigger" a) =>
  Lens.Family2.LensLike' f s a
maybe'trigger = Data.ProtoLens.Field.field @"maybe'trigger"
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
nextAttemptScheduleTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nextAttemptScheduleTime" a) =>
  Lens.Family2.LensLike' f s a
nextAttemptScheduleTime
  = Data.ProtoLens.Field.field @"nextAttemptScheduleTime"
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
runId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "runId" a) =>
  Lens.Family2.LensLike' f s a
runId = Data.ProtoLens.Field.field @"runId"
runState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "runState" a) =>
  Lens.Family2.LensLike' f s a
runState = Data.ProtoLens.Field.field @"runState"
scheduleTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scheduleTime" a) =>
  Lens.Family2.LensLike' f s a
scheduleTime = Data.ProtoLens.Field.field @"scheduleTime"
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
sdkName ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "sdkName" a) =>
  Lens.Family2.LensLike' f s a
sdkName = Data.ProtoLens.Field.field @"sdkName"
sdkVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sdkVersion" a) =>
  Lens.Family2.LensLike' f s a
sdkVersion = Data.ProtoLens.Field.field @"sdkVersion"
searchAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "searchAttributes" a) =>
  Lens.Family2.LensLike' f s a
searchAttributes = Data.ProtoLens.Field.field @"searchAttributes"
startDelay ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startDelay" a) =>
  Lens.Family2.LensLike' f s a
startDelay = Data.ProtoLens.Field.field @"startDelay"
startToCloseTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startToCloseTimeout" a) =>
  Lens.Family2.LensLike' f s a
startToCloseTimeout
  = Data.ProtoLens.Field.field @"startToCloseTimeout"
startedByPrincipal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startedByPrincipal" a) =>
  Lens.Family2.LensLike' f s a
startedByPrincipal
  = Data.ProtoLens.Field.field @"startedByPrincipal"
stateSizeBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stateSizeBytes" a) =>
  Lens.Family2.LensLike' f s a
stateSizeBytes = Data.ProtoLens.Field.field @"stateSizeBytes"
stateTransitionCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stateTransitionCount" a) =>
  Lens.Family2.LensLike' f s a
stateTransitionCount
  = Data.ProtoLens.Field.field @"stateTransitionCount"
status ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "status" a) =>
  Lens.Family2.LensLike' f s a
status = Data.ProtoLens.Field.field @"status"
taskQueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "taskQueue" a) =>
  Lens.Family2.LensLike' f s a
taskQueue = Data.ProtoLens.Field.field @"taskQueue"
totalHeartbeatCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalHeartbeatCount" a) =>
  Lens.Family2.LensLike' f s a
totalHeartbeatCount
  = Data.ProtoLens.Field.field @"totalHeartbeatCount"
trigger ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "trigger" a) =>
  Lens.Family2.LensLike' f s a
trigger = Data.ProtoLens.Field.field @"trigger"
userMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "userMetadata" a) =>
  Lens.Family2.LensLike' f s a
userMetadata = Data.ProtoLens.Field.field @"userMetadata"
vec'links ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'links" a) =>
  Lens.Family2.LensLike' f s a
vec'links = Data.ProtoLens.Field.field @"vec'links"