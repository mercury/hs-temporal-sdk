{- This file was auto-generated from temporal/api/taskqueue/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Taskqueue.V1.Message_Fields where
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
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Temporal.Api.Common.V1.Message
import qualified Proto.Temporal.Api.Deployment.V1.Message
import qualified Proto.Temporal.Api.Enums.V1.TaskQueue
ackLevel ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ackLevel" a) =>
  Lens.Family2.LensLike' f s a
ackLevel = Data.ProtoLens.Field.field @"ackLevel"
allActive ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allActive" a) =>
  Lens.Family2.LensLike' f s a
allActive = Data.ProtoLens.Field.field @"allActive"
approximateBacklogAge ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "approximateBacklogAge" a) =>
  Lens.Family2.LensLike' f s a
approximateBacklogAge
  = Data.ProtoLens.Field.field @"approximateBacklogAge"
approximateBacklogCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "approximateBacklogCount" a) =>
  Lens.Family2.LensLike' f s a
approximateBacklogCount
  = Data.ProtoLens.Field.field @"approximateBacklogCount"
backlogCountHint ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "backlogCountHint" a) =>
  Lens.Family2.LensLike' f s a
backlogCountHint = Data.ProtoLens.Field.field @"backlogCountHint"
buildId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "buildId" a) =>
  Lens.Family2.LensLike' f s a
buildId = Data.ProtoLens.Field.field @"buildId"
buildIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "buildIds" a) =>
  Lens.Family2.LensLike' f s a
buildIds = Data.ProtoLens.Field.field @"buildIds"
concurrencyLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "concurrencyLimit" a) =>
  Lens.Family2.LensLike' f s a
concurrencyLimit = Data.ProtoLens.Field.field @"concurrencyLimit"
concurrentTasks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "concurrentTasks" a) =>
  Lens.Family2.LensLike' f s a
concurrentTasks = Data.ProtoLens.Field.field @"concurrentTasks"
createTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "createTime" a) =>
  Lens.Family2.LensLike' f s a
createTime = Data.ProtoLens.Field.field @"createTime"
currentDeploymentVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "currentDeploymentVersion" a) =>
  Lens.Family2.LensLike' f s a
currentDeploymentVersion
  = Data.ProtoLens.Field.field @"currentDeploymentVersion"
currentVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "currentVersion" a) =>
  Lens.Family2.LensLike' f s a
currentVersion = Data.ProtoLens.Field.field @"currentVersion"
deploymentOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "deploymentOptions" a) =>
  Lens.Family2.LensLike' f s a
deploymentOptions = Data.ProtoLens.Field.field @"deploymentOptions"
endId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "endId" a) =>
  Lens.Family2.LensLike' f s a
endId = Data.ProtoLens.Field.field @"endId"
fairnessKeysRateLimitDefault ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fairnessKeysRateLimitDefault" a) =>
  Lens.Family2.LensLike' f s a
fairnessKeysRateLimitDefault
  = Data.ProtoLens.Field.field @"fairnessKeysRateLimitDefault"
fairnessWeightOverrides ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fairnessWeightOverrides" a) =>
  Lens.Family2.LensLike' f s a
fairnessWeightOverrides
  = Data.ProtoLens.Field.field @"fairnessWeightOverrides"
id ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "id" a) =>
  Lens.Family2.LensLike' f s a
id = Data.ProtoLens.Field.field @"id"
identity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "identity" a) =>
  Lens.Family2.LensLike' f s a
identity = Data.ProtoLens.Field.field @"identity"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
kind ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "kind" a) =>
  Lens.Family2.LensLike' f s a
kind = Data.ProtoLens.Field.field @"kind"
lastAccessTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastAccessTime" a) =>
  Lens.Family2.LensLike' f s a
lastAccessTime = Data.ProtoLens.Field.field @"lastAccessTime"
maxTasksPerSecond ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxTasksPerSecond" a) =>
  Lens.Family2.LensLike' f s a
maxTasksPerSecond = Data.ProtoLens.Field.field @"maxTasksPerSecond"
maybe'approximateBacklogAge ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'approximateBacklogAge" a) =>
  Lens.Family2.LensLike' f s a
maybe'approximateBacklogAge
  = Data.ProtoLens.Field.field @"maybe'approximateBacklogAge"
maybe'concurrencyLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'concurrencyLimit" a) =>
  Lens.Family2.LensLike' f s a
maybe'concurrencyLimit
  = Data.ProtoLens.Field.field @"maybe'concurrencyLimit"
maybe'createTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'createTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'createTime = Data.ProtoLens.Field.field @"maybe'createTime"
maybe'currentDeploymentVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'currentDeploymentVersion" a) =>
  Lens.Family2.LensLike' f s a
maybe'currentDeploymentVersion
  = Data.ProtoLens.Field.field @"maybe'currentDeploymentVersion"
maybe'deploymentOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'deploymentOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'deploymentOptions
  = Data.ProtoLens.Field.field @"maybe'deploymentOptions"
maybe'fairnessKeysRateLimitDefault ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fairnessKeysRateLimitDefault" a) =>
  Lens.Family2.LensLike' f s a
maybe'fairnessKeysRateLimitDefault
  = Data.ProtoLens.Field.field @"maybe'fairnessKeysRateLimitDefault"
maybe'lastAccessTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lastAccessTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'lastAccessTime
  = Data.ProtoLens.Field.field @"maybe'lastAccessTime"
maybe'maxTasksPerSecond ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxTasksPerSecond" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxTasksPerSecond
  = Data.ProtoLens.Field.field @"maybe'maxTasksPerSecond"
maybe'metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'metadata" a) =>
  Lens.Family2.LensLike' f s a
maybe'metadata = Data.ProtoLens.Field.field @"maybe'metadata"
maybe'percentageRamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'percentageRamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'percentageRamp
  = Data.ProtoLens.Field.field @"maybe'percentageRamp"
maybe'queueConcurrencyLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'queueConcurrencyLimit" a) =>
  Lens.Family2.LensLike' f s a
maybe'queueConcurrencyLimit
  = Data.ProtoLens.Field.field @"maybe'queueConcurrencyLimit"
maybe'queueRateLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'queueRateLimit" a) =>
  Lens.Family2.LensLike' f s a
maybe'queueRateLimit
  = Data.ProtoLens.Field.field @"maybe'queueRateLimit"
maybe'ramp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ramp" a) =>
  Lens.Family2.LensLike' f s a
maybe'ramp = Data.ProtoLens.Field.field @"maybe'ramp"
maybe'rampingDeploymentVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rampingDeploymentVersion" a) =>
  Lens.Family2.LensLike' f s a
maybe'rampingDeploymentVersion
  = Data.ProtoLens.Field.field @"maybe'rampingDeploymentVersion"
maybe'rateLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rateLimit" a) =>
  Lens.Family2.LensLike' f s a
maybe'rateLimit = Data.ProtoLens.Field.field @"maybe'rateLimit"
maybe'rule ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rule" a) =>
  Lens.Family2.LensLike' f s a
maybe'rule = Data.ProtoLens.Field.field @"maybe'rule"
maybe'scheduleToStartTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scheduleToStartTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'scheduleToStartTimeout
  = Data.ProtoLens.Field.field @"maybe'scheduleToStartTimeout"
maybe'stats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stats" a) =>
  Lens.Family2.LensLike' f s a
maybe'stats = Data.ProtoLens.Field.field @"maybe'stats"
maybe'taskIdBlock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'taskIdBlock" a) =>
  Lens.Family2.LensLike' f s a
maybe'taskIdBlock = Data.ProtoLens.Field.field @"maybe'taskIdBlock"
maybe'updateTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'updateTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'updateTime = Data.ProtoLens.Field.field @"maybe'updateTime"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
maybe'workerTaskQueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workerTaskQueue" a) =>
  Lens.Family2.LensLike' f s a
maybe'workerTaskQueue
  = Data.ProtoLens.Field.field @"maybe'workerTaskQueue"
maybe'workerVersionCapabilities ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workerVersionCapabilities" a) =>
  Lens.Family2.LensLike' f s a
maybe'workerVersionCapabilities
  = Data.ProtoLens.Field.field @"maybe'workerVersionCapabilities"
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
normalName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "normalName" a) =>
  Lens.Family2.LensLike' f s a
normalName = Data.ProtoLens.Field.field @"normalName"
ownerHostName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ownerHostName" a) =>
  Lens.Family2.LensLike' f s a
ownerHostName = Data.ProtoLens.Field.field @"ownerHostName"
percentageRamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "percentageRamp" a) =>
  Lens.Family2.LensLike' f s a
percentageRamp = Data.ProtoLens.Field.field @"percentageRamp"
pollRequestDeltaSuggestion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pollRequestDeltaSuggestion" a) =>
  Lens.Family2.LensLike' f s a
pollRequestDeltaSuggestion
  = Data.ProtoLens.Field.field @"pollRequestDeltaSuggestion"
pollerGroups ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pollerGroups" a) =>
  Lens.Family2.LensLike' f s a
pollerGroups = Data.ProtoLens.Field.field @"pollerGroups"
pollers ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pollers" a) =>
  Lens.Family2.LensLike' f s a
pollers = Data.ProtoLens.Field.field @"pollers"
queueConcurrencyLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "queueConcurrencyLimit" a) =>
  Lens.Family2.LensLike' f s a
queueConcurrencyLimit
  = Data.ProtoLens.Field.field @"queueConcurrencyLimit"
queueRateLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "queueRateLimit" a) =>
  Lens.Family2.LensLike' f s a
queueRateLimit = Data.ProtoLens.Field.field @"queueRateLimit"
rampPercentage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rampPercentage" a) =>
  Lens.Family2.LensLike' f s a
rampPercentage = Data.ProtoLens.Field.field @"rampPercentage"
rampingDeploymentVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rampingDeploymentVersion" a) =>
  Lens.Family2.LensLike' f s a
rampingDeploymentVersion
  = Data.ProtoLens.Field.field @"rampingDeploymentVersion"
rampingVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rampingVersion" a) =>
  Lens.Family2.LensLike' f s a
rampingVersion = Data.ProtoLens.Field.field @"rampingVersion"
rampingVersionPercentage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rampingVersionPercentage" a) =>
  Lens.Family2.LensLike' f s a
rampingVersionPercentage
  = Data.ProtoLens.Field.field @"rampingVersionPercentage"
rateLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rateLimit" a) =>
  Lens.Family2.LensLike' f s a
rateLimit = Data.ProtoLens.Field.field @"rateLimit"
rateLimitingActive ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rateLimitingActive" a) =>
  Lens.Family2.LensLike' f s a
rateLimitingActive
  = Data.ProtoLens.Field.field @"rateLimitingActive"
ratePerSecond ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ratePerSecond" a) =>
  Lens.Family2.LensLike' f s a
ratePerSecond = Data.ProtoLens.Field.field @"ratePerSecond"
reachability ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "reachability" a) =>
  Lens.Family2.LensLike' f s a
reachability = Data.ProtoLens.Field.field @"reachability"
readLevel ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "readLevel" a) =>
  Lens.Family2.LensLike' f s a
readLevel = Data.ProtoLens.Field.field @"readLevel"
reason ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "reason" a) =>
  Lens.Family2.LensLike' f s a
reason = Data.ProtoLens.Field.field @"reason"
requestsPerSecond ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestsPerSecond" a) =>
  Lens.Family2.LensLike' f s a
requestsPerSecond = Data.ProtoLens.Field.field @"requestsPerSecond"
rule ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rule" a) =>
  Lens.Family2.LensLike' f s a
rule = Data.ProtoLens.Field.field @"rule"
scheduleToStartTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scheduleToStartTimeout" a) =>
  Lens.Family2.LensLike' f s a
scheduleToStartTimeout
  = Data.ProtoLens.Field.field @"scheduleToStartTimeout"
sourceBuildId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourceBuildId" a) =>
  Lens.Family2.LensLike' f s a
sourceBuildId = Data.ProtoLens.Field.field @"sourceBuildId"
startId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "startId" a) =>
  Lens.Family2.LensLike' f s a
startId = Data.ProtoLens.Field.field @"startId"
stats ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "stats" a) =>
  Lens.Family2.LensLike' f s a
stats = Data.ProtoLens.Field.field @"stats"
targetBuildId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "targetBuildId" a) =>
  Lens.Family2.LensLike' f s a
targetBuildId = Data.ProtoLens.Field.field @"targetBuildId"
targetPollers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "targetPollers" a) =>
  Lens.Family2.LensLike' f s a
targetPollers = Data.ProtoLens.Field.field @"targetPollers"
taskIdBlock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "taskIdBlock" a) =>
  Lens.Family2.LensLike' f s a
taskIdBlock = Data.ProtoLens.Field.field @"taskIdBlock"
taskQueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "taskQueue" a) =>
  Lens.Family2.LensLike' f s a
taskQueue = Data.ProtoLens.Field.field @"taskQueue"
taskQueueReachability ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "taskQueueReachability" a) =>
  Lens.Family2.LensLike' f s a
taskQueueReachability
  = Data.ProtoLens.Field.field @"taskQueueReachability"
taskReachability ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "taskReachability" a) =>
  Lens.Family2.LensLike' f s a
taskReachability = Data.ProtoLens.Field.field @"taskReachability"
tasksAddRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tasksAddRate" a) =>
  Lens.Family2.LensLike' f s a
tasksAddRate = Data.ProtoLens.Field.field @"tasksAddRate"
tasksDispatchRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tasksDispatchRate" a) =>
  Lens.Family2.LensLike' f s a
tasksDispatchRate = Data.ProtoLens.Field.field @"tasksDispatchRate"
typesInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "typesInfo" a) =>
  Lens.Family2.LensLike' f s a
typesInfo = Data.ProtoLens.Field.field @"typesInfo"
unversioned ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unversioned" a) =>
  Lens.Family2.LensLike' f s a
unversioned = Data.ProtoLens.Field.field @"unversioned"
updateIdentity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "updateIdentity" a) =>
  Lens.Family2.LensLike' f s a
updateIdentity = Data.ProtoLens.Field.field @"updateIdentity"
updateTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "updateTime" a) =>
  Lens.Family2.LensLike' f s a
updateTime = Data.ProtoLens.Field.field @"updateTime"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'buildIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'buildIds" a) =>
  Lens.Family2.LensLike' f s a
vec'buildIds = Data.ProtoLens.Field.field @"vec'buildIds"
vec'pollerGroups ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'pollerGroups" a) =>
  Lens.Family2.LensLike' f s a
vec'pollerGroups = Data.ProtoLens.Field.field @"vec'pollerGroups"
vec'pollers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'pollers" a) =>
  Lens.Family2.LensLike' f s a
vec'pollers = Data.ProtoLens.Field.field @"vec'pollers"
vec'reachability ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'reachability" a) =>
  Lens.Family2.LensLike' f s a
vec'reachability = Data.ProtoLens.Field.field @"vec'reachability"
vec'taskQueueReachability ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'taskQueueReachability" a) =>
  Lens.Family2.LensLike' f s a
vec'taskQueueReachability
  = Data.ProtoLens.Field.field @"vec'taskQueueReachability"
version ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "version" a) =>
  Lens.Family2.LensLike' f s a
version = Data.ProtoLens.Field.field @"version"
weight ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "weight" a) =>
  Lens.Family2.LensLike' f s a
weight = Data.ProtoLens.Field.field @"weight"
workerTaskQueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workerTaskQueue" a) =>
  Lens.Family2.LensLike' f s a
workerTaskQueue = Data.ProtoLens.Field.field @"workerTaskQueue"
workerVersionCapabilities ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workerVersionCapabilities" a) =>
  Lens.Family2.LensLike' f s a
workerVersionCapabilities
  = Data.ProtoLens.Field.field @"workerVersionCapabilities"