{- This file was auto-generated from temporal/api/worker/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Worker.V1.Message_Fields where
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
import qualified Proto.Temporal.Api.Deployment.V1.Message
import qualified Proto.Temporal.Api.Enums.V1.Common
activityPollerInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activityPollerInfo" a) =>
  Lens.Family2.LensLike' f s a
activityPollerInfo
  = Data.ProtoLens.Field.field @"activityPollerInfo"
activityTaskSlotsInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activityTaskSlotsInfo" a) =>
  Lens.Family2.LensLike' f s a
activityTaskSlotsInfo
  = Data.ProtoLens.Field.field @"activityTaskSlotsInfo"
architecture ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "architecture" a) =>
  Lens.Family2.LensLike' f s a
architecture = Data.ProtoLens.Field.field @"architecture"
cancelActivity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cancelActivity" a) =>
  Lens.Family2.LensLike' f s a
cancelActivity = Data.ProtoLens.Field.field @"cancelActivity"
crt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "crt" a) =>
  Lens.Family2.LensLike' f s a
crt = Data.ProtoLens.Field.field @"crt"
currentAvailableSlots ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "currentAvailableSlots" a) =>
  Lens.Family2.LensLike' f s a
currentAvailableSlots
  = Data.ProtoLens.Field.field @"currentAvailableSlots"
currentHostCpuUsage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "currentHostCpuUsage" a) =>
  Lens.Family2.LensLike' f s a
currentHostCpuUsage
  = Data.ProtoLens.Field.field @"currentHostCpuUsage"
currentHostMemUsage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "currentHostMemUsage" a) =>
  Lens.Family2.LensLike' f s a
currentHostMemUsage
  = Data.ProtoLens.Field.field @"currentHostMemUsage"
currentPollers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "currentPollers" a) =>
  Lens.Family2.LensLike' f s a
currentPollers = Data.ProtoLens.Field.field @"currentPollers"
currentStickyCacheSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "currentStickyCacheSize" a) =>
  Lens.Family2.LensLike' f s a
currentStickyCacheSize
  = Data.ProtoLens.Field.field @"currentStickyCacheSize"
currentUsedSlots ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "currentUsedSlots" a) =>
  Lens.Family2.LensLike' f s a
currentUsedSlots = Data.ProtoLens.Field.field @"currentUsedSlots"
deploymentVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "deploymentVersion" a) =>
  Lens.Family2.LensLike' f s a
deploymentVersion = Data.ProtoLens.Field.field @"deploymentVersion"
drivers ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "drivers" a) =>
  Lens.Family2.LensLike' f s a
drivers = Data.ProtoLens.Field.field @"drivers"
elapsedSinceLastHeartbeat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "elapsedSinceLastHeartbeat" a) =>
  Lens.Family2.LensLike' f s a
elapsedSinceLastHeartbeat
  = Data.ProtoLens.Field.field @"elapsedSinceLastHeartbeat"
environment ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "environment" a) =>
  Lens.Family2.LensLike' f s a
environment = Data.ProtoLens.Field.field @"environment"
heartbeatTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "heartbeatTime" a) =>
  Lens.Family2.LensLike' f s a
heartbeatTime = Data.ProtoLens.Field.field @"heartbeatTime"
hostInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hostInfo" a) =>
  Lens.Family2.LensLike' f s a
hostInfo = Data.ProtoLens.Field.field @"hostInfo"
hostName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hostName" a) =>
  Lens.Family2.LensLike' f s a
hostName = Data.ProtoLens.Field.field @"hostName"
hostingEnvironments ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hostingEnvironments" a) =>
  Lens.Family2.LensLike' f s a
hostingEnvironments
  = Data.ProtoLens.Field.field @"hostingEnvironments"
isAutoscaling ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "isAutoscaling" a) =>
  Lens.Family2.LensLike' f s a
isAutoscaling = Data.ProtoLens.Field.field @"isAutoscaling"
lastIntervalFailureTasks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastIntervalFailureTasks" a) =>
  Lens.Family2.LensLike' f s a
lastIntervalFailureTasks
  = Data.ProtoLens.Field.field @"lastIntervalFailureTasks"
lastIntervalProcessedTasks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastIntervalProcessedTasks" a) =>
  Lens.Family2.LensLike' f s a
lastIntervalProcessedTasks
  = Data.ProtoLens.Field.field @"lastIntervalProcessedTasks"
lastSuccessfulPollTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastSuccessfulPollTime" a) =>
  Lens.Family2.LensLike' f s a
lastSuccessfulPollTime
  = Data.ProtoLens.Field.field @"lastSuccessfulPollTime"
libc ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "libc" a) =>
  Lens.Family2.LensLike' f s a
libc = Data.ProtoLens.Field.field @"libc"
linux ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "linux" a) =>
  Lens.Family2.LensLike' f s a
linux = Data.ProtoLens.Field.field @"linux"
localActivitySlotsInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "localActivitySlotsInfo" a) =>
  Lens.Family2.LensLike' f s a
localActivitySlotsInfo
  = Data.ProtoLens.Field.field @"localActivitySlotsInfo"
macos ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "macos" a) =>
  Lens.Family2.LensLike' f s a
macos = Data.ProtoLens.Field.field @"macos"
maybe'activityPollerInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'activityPollerInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'activityPollerInfo
  = Data.ProtoLens.Field.field @"maybe'activityPollerInfo"
maybe'activityTaskSlotsInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'activityTaskSlotsInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'activityTaskSlotsInfo
  = Data.ProtoLens.Field.field @"maybe'activityTaskSlotsInfo"
maybe'cancelActivity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cancelActivity" a) =>
  Lens.Family2.LensLike' f s a
maybe'cancelActivity
  = Data.ProtoLens.Field.field @"maybe'cancelActivity"
maybe'deploymentVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'deploymentVersion" a) =>
  Lens.Family2.LensLike' f s a
maybe'deploymentVersion
  = Data.ProtoLens.Field.field @"maybe'deploymentVersion"
maybe'elapsedSinceLastHeartbeat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'elapsedSinceLastHeartbeat" a) =>
  Lens.Family2.LensLike' f s a
maybe'elapsedSinceLastHeartbeat
  = Data.ProtoLens.Field.field @"maybe'elapsedSinceLastHeartbeat"
maybe'environment ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'environment" a) =>
  Lens.Family2.LensLike' f s a
maybe'environment = Data.ProtoLens.Field.field @"maybe'environment"
maybe'heartbeatTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'heartbeatTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'heartbeatTime
  = Data.ProtoLens.Field.field @"maybe'heartbeatTime"
maybe'hostInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hostInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'hostInfo = Data.ProtoLens.Field.field @"maybe'hostInfo"
maybe'lastSuccessfulPollTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lastSuccessfulPollTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'lastSuccessfulPollTime
  = Data.ProtoLens.Field.field @"maybe'lastSuccessfulPollTime"
maybe'linux ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'linux" a) =>
  Lens.Family2.LensLike' f s a
maybe'linux = Data.ProtoLens.Field.field @"maybe'linux"
maybe'localActivitySlotsInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'localActivitySlotsInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'localActivitySlotsInfo
  = Data.ProtoLens.Field.field @"maybe'localActivitySlotsInfo"
maybe'macos ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'macos" a) =>
  Lens.Family2.LensLike' f s a
maybe'macos = Data.ProtoLens.Field.field @"maybe'macos"
maybe'nexusPollerInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nexusPollerInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'nexusPollerInfo
  = Data.ProtoLens.Field.field @"maybe'nexusPollerInfo"
maybe'nexusTaskSlotsInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nexusTaskSlotsInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'nexusTaskSlotsInfo
  = Data.ProtoLens.Field.field @"maybe'nexusTaskSlotsInfo"
maybe'platform ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'platform" a) =>
  Lens.Family2.LensLike' f s a
maybe'platform = Data.ProtoLens.Field.field @"maybe'platform"
maybe'startTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'startTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'startTime = Data.ProtoLens.Field.field @"maybe'startTime"
maybe'type' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'type'" a) =>
  Lens.Family2.LensLike' f s a
maybe'type' = Data.ProtoLens.Field.field @"maybe'type'"
maybe'variant ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'variant" a) =>
  Lens.Family2.LensLike' f s a
maybe'variant = Data.ProtoLens.Field.field @"maybe'variant"
maybe'windows ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'windows" a) =>
  Lens.Family2.LensLike' f s a
maybe'windows = Data.ProtoLens.Field.field @"maybe'windows"
maybe'workerHeartbeat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workerHeartbeat" a) =>
  Lens.Family2.LensLike' f s a
maybe'workerHeartbeat
  = Data.ProtoLens.Field.field @"maybe'workerHeartbeat"
maybe'workflowPollerInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowPollerInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowPollerInfo
  = Data.ProtoLens.Field.field @"maybe'workflowPollerInfo"
maybe'workflowStickyPollerInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowStickyPollerInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowStickyPollerInfo
  = Data.ProtoLens.Field.field @"maybe'workflowStickyPollerInfo"
maybe'workflowTaskSlotsInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workflowTaskSlotsInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'workflowTaskSlotsInfo
  = Data.ProtoLens.Field.field @"maybe'workflowTaskSlotsInfo"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
nexusPollerInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nexusPollerInfo" a) =>
  Lens.Family2.LensLike' f s a
nexusPollerInfo = Data.ProtoLens.Field.field @"nexusPollerInfo"
nexusTaskSlotsInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nexusTaskSlotsInfo" a) =>
  Lens.Family2.LensLike' f s a
nexusTaskSlotsInfo
  = Data.ProtoLens.Field.field @"nexusTaskSlotsInfo"
platform ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "platform" a) =>
  Lens.Family2.LensLike' f s a
platform = Data.ProtoLens.Field.field @"platform"
plugins ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "plugins" a) =>
  Lens.Family2.LensLike' f s a
plugins = Data.ProtoLens.Field.field @"plugins"
processId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "processId" a) =>
  Lens.Family2.LensLike' f s a
processId = Data.ProtoLens.Field.field @"processId"
runtimes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "runtimes" a) =>
  Lens.Family2.LensLike' f s a
runtimes = Data.ProtoLens.Field.field @"runtimes"
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
slotSupplierKind ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "slotSupplierKind" a) =>
  Lens.Family2.LensLike' f s a
slotSupplierKind = Data.ProtoLens.Field.field @"slotSupplierKind"
startTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startTime" a) =>
  Lens.Family2.LensLike' f s a
startTime = Data.ProtoLens.Field.field @"startTime"
status ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "status" a) =>
  Lens.Family2.LensLike' f s a
status = Data.ProtoLens.Field.field @"status"
targetPollers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "targetPollers" a) =>
  Lens.Family2.LensLike' f s a
targetPollers = Data.ProtoLens.Field.field @"targetPollers"
taskQueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "taskQueue" a) =>
  Lens.Family2.LensLike' f s a
taskQueue = Data.ProtoLens.Field.field @"taskQueue"
taskToken ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "taskToken" a) =>
  Lens.Family2.LensLike' f s a
taskToken = Data.ProtoLens.Field.field @"taskToken"
totalFailedTasks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalFailedTasks" a) =>
  Lens.Family2.LensLike' f s a
totalFailedTasks = Data.ProtoLens.Field.field @"totalFailedTasks"
totalProcessedTasks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalProcessedTasks" a) =>
  Lens.Family2.LensLike' f s a
totalProcessedTasks
  = Data.ProtoLens.Field.field @"totalProcessedTasks"
totalStickyCacheHit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalStickyCacheHit" a) =>
  Lens.Family2.LensLike' f s a
totalStickyCacheHit
  = Data.ProtoLens.Field.field @"totalStickyCacheHit"
totalStickyCacheMiss ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalStickyCacheMiss" a) =>
  Lens.Family2.LensLike' f s a
totalStickyCacheMiss
  = Data.ProtoLens.Field.field @"totalStickyCacheMiss"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
vec'drivers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'drivers" a) =>
  Lens.Family2.LensLike' f s a
vec'drivers = Data.ProtoLens.Field.field @"vec'drivers"
vec'hostingEnvironments ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'hostingEnvironments" a) =>
  Lens.Family2.LensLike' f s a
vec'hostingEnvironments
  = Data.ProtoLens.Field.field @"vec'hostingEnvironments"
vec'plugins ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'plugins" a) =>
  Lens.Family2.LensLike' f s a
vec'plugins = Data.ProtoLens.Field.field @"vec'plugins"
vec'runtimes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'runtimes" a) =>
  Lens.Family2.LensLike' f s a
vec'runtimes = Data.ProtoLens.Field.field @"vec'runtimes"
version ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "version" a) =>
  Lens.Family2.LensLike' f s a
version = Data.ProtoLens.Field.field @"version"
windows ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "windows" a) =>
  Lens.Family2.LensLike' f s a
windows = Data.ProtoLens.Field.field @"windows"
workerGroupingKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workerGroupingKey" a) =>
  Lens.Family2.LensLike' f s a
workerGroupingKey = Data.ProtoLens.Field.field @"workerGroupingKey"
workerHeartbeat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workerHeartbeat" a) =>
  Lens.Family2.LensLike' f s a
workerHeartbeat = Data.ProtoLens.Field.field @"workerHeartbeat"
workerIdentity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workerIdentity" a) =>
  Lens.Family2.LensLike' f s a
workerIdentity = Data.ProtoLens.Field.field @"workerIdentity"
workerInstanceKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workerInstanceKey" a) =>
  Lens.Family2.LensLike' f s a
workerInstanceKey = Data.ProtoLens.Field.field @"workerInstanceKey"
workflowPollerInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowPollerInfo" a) =>
  Lens.Family2.LensLike' f s a
workflowPollerInfo
  = Data.ProtoLens.Field.field @"workflowPollerInfo"
workflowStickyPollerInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowStickyPollerInfo" a) =>
  Lens.Family2.LensLike' f s a
workflowStickyPollerInfo
  = Data.ProtoLens.Field.field @"workflowStickyPollerInfo"
workflowTaskSlotsInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workflowTaskSlotsInfo" a) =>
  Lens.Family2.LensLike' f s a
workflowTaskSlotsInfo
  = Data.ProtoLens.Field.field @"workflowTaskSlotsInfo"