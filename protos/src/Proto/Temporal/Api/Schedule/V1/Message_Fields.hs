{- This file was auto-generated from temporal/api/schedule/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Schedule.V1.Message_Fields where
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
import qualified Proto.Temporal.Api.Enums.V1.Schedule
import qualified Proto.Temporal.Api.Enums.V1.Workflow
import qualified Proto.Temporal.Api.Workflow.V1.Message
action ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "action" a) =>
  Lens.Family2.LensLike' f s a
action = Data.ProtoLens.Field.field @"action"
actionCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "actionCount" a) =>
  Lens.Family2.LensLike' f s a
actionCount = Data.ProtoLens.Field.field @"actionCount"
actualTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "actualTime" a) =>
  Lens.Family2.LensLike' f s a
actualTime = Data.ProtoLens.Field.field @"actualTime"
backfillRequest ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "backfillRequest" a) =>
  Lens.Family2.LensLike' f s a
backfillRequest = Data.ProtoLens.Field.field @"backfillRequest"
bufferDropped ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bufferDropped" a) =>
  Lens.Family2.LensLike' f s a
bufferDropped = Data.ProtoLens.Field.field @"bufferDropped"
bufferSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bufferSize" a) =>
  Lens.Family2.LensLike' f s a
bufferSize = Data.ProtoLens.Field.field @"bufferSize"
calendar ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "calendar" a) =>
  Lens.Family2.LensLike' f s a
calendar = Data.ProtoLens.Field.field @"calendar"
catchupWindow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "catchupWindow" a) =>
  Lens.Family2.LensLike' f s a
catchupWindow = Data.ProtoLens.Field.field @"catchupWindow"
comment ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "comment" a) =>
  Lens.Family2.LensLike' f s a
comment = Data.ProtoLens.Field.field @"comment"
createTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "createTime" a) =>
  Lens.Family2.LensLike' f s a
createTime = Data.ProtoLens.Field.field @"createTime"
cronString ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cronString" a) =>
  Lens.Family2.LensLike' f s a
cronString = Data.ProtoLens.Field.field @"cronString"
dayOfMonth ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dayOfMonth" a) =>
  Lens.Family2.LensLike' f s a
dayOfMonth = Data.ProtoLens.Field.field @"dayOfMonth"
dayOfWeek ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dayOfWeek" a) =>
  Lens.Family2.LensLike' f s a
dayOfWeek = Data.ProtoLens.Field.field @"dayOfWeek"
end ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "end" a) =>
  Lens.Family2.LensLike' f s a
end = Data.ProtoLens.Field.field @"end"
endTime ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "endTime" a) =>
  Lens.Family2.LensLike' f s a
endTime = Data.ProtoLens.Field.field @"endTime"
excludeCalendar ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "excludeCalendar" a) =>
  Lens.Family2.LensLike' f s a
excludeCalendar = Data.ProtoLens.Field.field @"excludeCalendar"
excludeStructuredCalendar ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "excludeStructuredCalendar" a) =>
  Lens.Family2.LensLike' f s a
excludeStructuredCalendar
  = Data.ProtoLens.Field.field @"excludeStructuredCalendar"
futureActionTimes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "futureActionTimes" a) =>
  Lens.Family2.LensLike' f s a
futureActionTimes = Data.ProtoLens.Field.field @"futureActionTimes"
hour ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "hour" a) =>
  Lens.Family2.LensLike' f s a
hour = Data.ProtoLens.Field.field @"hour"
info ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "info" a) =>
  Lens.Family2.LensLike' f s a
info = Data.ProtoLens.Field.field @"info"
interval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "interval" a) =>
  Lens.Family2.LensLike' f s a
interval = Data.ProtoLens.Field.field @"interval"
invalidScheduleError ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "invalidScheduleError" a) =>
  Lens.Family2.LensLike' f s a
invalidScheduleError
  = Data.ProtoLens.Field.field @"invalidScheduleError"
jitter ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "jitter" a) =>
  Lens.Family2.LensLike' f s a
jitter = Data.ProtoLens.Field.field @"jitter"
keepOriginalWorkflowId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "keepOriginalWorkflowId" a) =>
  Lens.Family2.LensLike' f s a
keepOriginalWorkflowId
  = Data.ProtoLens.Field.field @"keepOriginalWorkflowId"
limitedActions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "limitedActions" a) =>
  Lens.Family2.LensLike' f s a
limitedActions = Data.ProtoLens.Field.field @"limitedActions"
maybe'action ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'action" a) =>
  Lens.Family2.LensLike' f s a
maybe'action = Data.ProtoLens.Field.field @"maybe'action"
maybe'actualTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'actualTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'actualTime = Data.ProtoLens.Field.field @"maybe'actualTime"
maybe'catchupWindow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'catchupWindow" a) =>
  Lens.Family2.LensLike' f s a
maybe'catchupWindow
  = Data.ProtoLens.Field.field @"maybe'catchupWindow"
maybe'createTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'createTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'createTime = Data.ProtoLens.Field.field @"maybe'createTime"
maybe'endTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'endTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'endTime = Data.ProtoLens.Field.field @"maybe'endTime"
maybe'info ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'info" a) =>
  Lens.Family2.LensLike' f s a
maybe'info = Data.ProtoLens.Field.field @"maybe'info"
maybe'interval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'interval" a) =>
  Lens.Family2.LensLike' f s a
maybe'interval = Data.ProtoLens.Field.field @"maybe'interval"
maybe'jitter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'jitter" a) =>
  Lens.Family2.LensLike' f s a
maybe'jitter = Data.ProtoLens.Field.field @"maybe'jitter"
maybe'memo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'memo" a) =>
  Lens.Family2.LensLike' f s a
maybe'memo = Data.ProtoLens.Field.field @"maybe'memo"
maybe'phase ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'phase" a) =>
  Lens.Family2.LensLike' f s a
maybe'phase = Data.ProtoLens.Field.field @"maybe'phase"
maybe'policies ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'policies" a) =>
  Lens.Family2.LensLike' f s a
maybe'policies = Data.ProtoLens.Field.field @"maybe'policies"
maybe'scheduleTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scheduleTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'scheduleTime
  = Data.ProtoLens.Field.field @"maybe'scheduleTime"
maybe'scheduledTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scheduledTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'scheduledTime
  = Data.ProtoLens.Field.field @"maybe'scheduledTime"
maybe'searchAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'searchAttributes" a) =>
  Lens.Family2.LensLike' f s a
maybe'searchAttributes
  = Data.ProtoLens.Field.field @"maybe'searchAttributes"
maybe'spec ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'spec" a) =>
  Lens.Family2.LensLike' f s a
maybe'spec = Data.ProtoLens.Field.field @"maybe'spec"
maybe'startTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'startTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'startTime = Data.ProtoLens.Field.field @"maybe'startTime"
maybe'startWorkflow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'startWorkflow" a) =>
  Lens.Family2.LensLike' f s a
maybe'startWorkflow
  = Data.ProtoLens.Field.field @"maybe'startWorkflow"
maybe'startWorkflowResult ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'startWorkflowResult" a) =>
  Lens.Family2.LensLike' f s a
maybe'startWorkflowResult
  = Data.ProtoLens.Field.field @"maybe'startWorkflowResult"
maybe'state ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'state" a) =>
  Lens.Family2.LensLike' f s a
maybe'state = Data.ProtoLens.Field.field @"maybe'state"
maybe'timeSkippingConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timeSkippingConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'timeSkippingConfig
  = Data.ProtoLens.Field.field @"maybe'timeSkippingConfig"
maybe'timeSkippingInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timeSkippingInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'timeSkippingInfo
  = Data.ProtoLens.Field.field @"maybe'timeSkippingInfo"
maybe'triggerImmediately ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'triggerImmediately" a) =>
  Lens.Family2.LensLike' f s a
maybe'triggerImmediately
  = Data.ProtoLens.Field.field @"maybe'triggerImmediately"
maybe'updateTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'updateTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'updateTime = Data.ProtoLens.Field.field @"maybe'updateTime"
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
minute ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "minute" a) =>
  Lens.Family2.LensLike' f s a
minute = Data.ProtoLens.Field.field @"minute"
missedCatchupWindow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "missedCatchupWindow" a) =>
  Lens.Family2.LensLike' f s a
missedCatchupWindow
  = Data.ProtoLens.Field.field @"missedCatchupWindow"
month ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "month" a) =>
  Lens.Family2.LensLike' f s a
month = Data.ProtoLens.Field.field @"month"
notes ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "notes" a) =>
  Lens.Family2.LensLike' f s a
notes = Data.ProtoLens.Field.field @"notes"
overlapPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "overlapPolicy" a) =>
  Lens.Family2.LensLike' f s a
overlapPolicy = Data.ProtoLens.Field.field @"overlapPolicy"
overlapSkipped ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "overlapSkipped" a) =>
  Lens.Family2.LensLike' f s a
overlapSkipped = Data.ProtoLens.Field.field @"overlapSkipped"
pause ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pause" a) =>
  Lens.Family2.LensLike' f s a
pause = Data.ProtoLens.Field.field @"pause"
pauseOnFailure ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pauseOnFailure" a) =>
  Lens.Family2.LensLike' f s a
pauseOnFailure = Data.ProtoLens.Field.field @"pauseOnFailure"
paused ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "paused" a) =>
  Lens.Family2.LensLike' f s a
paused = Data.ProtoLens.Field.field @"paused"
phase ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "phase" a) =>
  Lens.Family2.LensLike' f s a
phase = Data.ProtoLens.Field.field @"phase"
policies ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "policies" a) =>
  Lens.Family2.LensLike' f s a
policies = Data.ProtoLens.Field.field @"policies"
recentActions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "recentActions" a) =>
  Lens.Family2.LensLike' f s a
recentActions = Data.ProtoLens.Field.field @"recentActions"
remainingActions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "remainingActions" a) =>
  Lens.Family2.LensLike' f s a
remainingActions = Data.ProtoLens.Field.field @"remainingActions"
runningWorkflows ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "runningWorkflows" a) =>
  Lens.Family2.LensLike' f s a
runningWorkflows = Data.ProtoLens.Field.field @"runningWorkflows"
scheduleId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scheduleId" a) =>
  Lens.Family2.LensLike' f s a
scheduleId = Data.ProtoLens.Field.field @"scheduleId"
scheduleTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scheduleTime" a) =>
  Lens.Family2.LensLike' f s a
scheduleTime = Data.ProtoLens.Field.field @"scheduleTime"
scheduledTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scheduledTime" a) =>
  Lens.Family2.LensLike' f s a
scheduledTime = Data.ProtoLens.Field.field @"scheduledTime"
searchAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "searchAttributes" a) =>
  Lens.Family2.LensLike' f s a
searchAttributes = Data.ProtoLens.Field.field @"searchAttributes"
second ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "second" a) =>
  Lens.Family2.LensLike' f s a
second = Data.ProtoLens.Field.field @"second"
spec ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "spec" a) =>
  Lens.Family2.LensLike' f s a
spec = Data.ProtoLens.Field.field @"spec"
start ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "start" a) =>
  Lens.Family2.LensLike' f s a
start = Data.ProtoLens.Field.field @"start"
startTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startTime" a) =>
  Lens.Family2.LensLike' f s a
startTime = Data.ProtoLens.Field.field @"startTime"
startWorkflow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startWorkflow" a) =>
  Lens.Family2.LensLike' f s a
startWorkflow = Data.ProtoLens.Field.field @"startWorkflow"
startWorkflowResult ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startWorkflowResult" a) =>
  Lens.Family2.LensLike' f s a
startWorkflowResult
  = Data.ProtoLens.Field.field @"startWorkflowResult"
startWorkflowStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startWorkflowStatus" a) =>
  Lens.Family2.LensLike' f s a
startWorkflowStatus
  = Data.ProtoLens.Field.field @"startWorkflowStatus"
state ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "state" a) =>
  Lens.Family2.LensLike' f s a
state = Data.ProtoLens.Field.field @"state"
stateSizeBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stateSizeBytes" a) =>
  Lens.Family2.LensLike' f s a
stateSizeBytes = Data.ProtoLens.Field.field @"stateSizeBytes"
step ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "step" a) =>
  Lens.Family2.LensLike' f s a
step = Data.ProtoLens.Field.field @"step"
structuredCalendar ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "structuredCalendar" a) =>
  Lens.Family2.LensLike' f s a
structuredCalendar
  = Data.ProtoLens.Field.field @"structuredCalendar"
timeSkippingConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timeSkippingConfig" a) =>
  Lens.Family2.LensLike' f s a
timeSkippingConfig
  = Data.ProtoLens.Field.field @"timeSkippingConfig"
timeSkippingInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timeSkippingInfo" a) =>
  Lens.Family2.LensLike' f s a
timeSkippingInfo = Data.ProtoLens.Field.field @"timeSkippingInfo"
timezoneData ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timezoneData" a) =>
  Lens.Family2.LensLike' f s a
timezoneData = Data.ProtoLens.Field.field @"timezoneData"
timezoneName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timezoneName" a) =>
  Lens.Family2.LensLike' f s a
timezoneName = Data.ProtoLens.Field.field @"timezoneName"
triggerImmediately ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "triggerImmediately" a) =>
  Lens.Family2.LensLike' f s a
triggerImmediately
  = Data.ProtoLens.Field.field @"triggerImmediately"
unpause ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "unpause" a) =>
  Lens.Family2.LensLike' f s a
unpause = Data.ProtoLens.Field.field @"unpause"
updateTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "updateTime" a) =>
  Lens.Family2.LensLike' f s a
updateTime = Data.ProtoLens.Field.field @"updateTime"
vec'backfillRequest ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'backfillRequest" a) =>
  Lens.Family2.LensLike' f s a
vec'backfillRequest
  = Data.ProtoLens.Field.field @"vec'backfillRequest"
vec'calendar ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'calendar" a) =>
  Lens.Family2.LensLike' f s a
vec'calendar = Data.ProtoLens.Field.field @"vec'calendar"
vec'cronString ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'cronString" a) =>
  Lens.Family2.LensLike' f s a
vec'cronString = Data.ProtoLens.Field.field @"vec'cronString"
vec'dayOfMonth ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'dayOfMonth" a) =>
  Lens.Family2.LensLike' f s a
vec'dayOfMonth = Data.ProtoLens.Field.field @"vec'dayOfMonth"
vec'dayOfWeek ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'dayOfWeek" a) =>
  Lens.Family2.LensLike' f s a
vec'dayOfWeek = Data.ProtoLens.Field.field @"vec'dayOfWeek"
vec'excludeCalendar ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'excludeCalendar" a) =>
  Lens.Family2.LensLike' f s a
vec'excludeCalendar
  = Data.ProtoLens.Field.field @"vec'excludeCalendar"
vec'excludeStructuredCalendar ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'excludeStructuredCalendar" a) =>
  Lens.Family2.LensLike' f s a
vec'excludeStructuredCalendar
  = Data.ProtoLens.Field.field @"vec'excludeStructuredCalendar"
vec'futureActionTimes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'futureActionTimes" a) =>
  Lens.Family2.LensLike' f s a
vec'futureActionTimes
  = Data.ProtoLens.Field.field @"vec'futureActionTimes"
vec'hour ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'hour" a) =>
  Lens.Family2.LensLike' f s a
vec'hour = Data.ProtoLens.Field.field @"vec'hour"
vec'interval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'interval" a) =>
  Lens.Family2.LensLike' f s a
vec'interval = Data.ProtoLens.Field.field @"vec'interval"
vec'minute ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'minute" a) =>
  Lens.Family2.LensLike' f s a
vec'minute = Data.ProtoLens.Field.field @"vec'minute"
vec'month ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'month" a) =>
  Lens.Family2.LensLike' f s a
vec'month = Data.ProtoLens.Field.field @"vec'month"
vec'recentActions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'recentActions" a) =>
  Lens.Family2.LensLike' f s a
vec'recentActions = Data.ProtoLens.Field.field @"vec'recentActions"
vec'runningWorkflows ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'runningWorkflows" a) =>
  Lens.Family2.LensLike' f s a
vec'runningWorkflows
  = Data.ProtoLens.Field.field @"vec'runningWorkflows"
vec'second ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'second" a) =>
  Lens.Family2.LensLike' f s a
vec'second = Data.ProtoLens.Field.field @"vec'second"
vec'structuredCalendar ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'structuredCalendar" a) =>
  Lens.Family2.LensLike' f s a
vec'structuredCalendar
  = Data.ProtoLens.Field.field @"vec'structuredCalendar"
vec'year ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'year" a) =>
  Lens.Family2.LensLike' f s a
vec'year = Data.ProtoLens.Field.field @"vec'year"
workflowType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowType" a) =>
  Lens.Family2.LensLike' f s a
workflowType = Data.ProtoLens.Field.field @"workflowType"
year ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "year" a) =>
  Lens.Family2.LensLike' f s a
year = Data.ProtoLens.Field.field @"year"