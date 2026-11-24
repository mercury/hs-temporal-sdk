{- This file was auto-generated from temporal/api/deployment/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Deployment.V1.Message_Fields where
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
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Temporal.Api.Common.V1.Message
import qualified Proto.Temporal.Api.Compute.V1.Config
import qualified Proto.Temporal.Api.Enums.V1.Deployment
import qualified Proto.Temporal.Api.Enums.V1.TaskQueue
import qualified Proto.Temporal.Api.Enums.V1.Workflow
buildId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "buildId" a) =>
  Lens.Family2.LensLike' f s a
buildId = Data.ProtoLens.Field.field @"buildId"
computeConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "computeConfig" a) =>
  Lens.Family2.LensLike' f s a
computeConfig = Data.ProtoLens.Field.field @"computeConfig"
computeStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "computeStatus" a) =>
  Lens.Family2.LensLike' f s a
computeStatus = Data.ProtoLens.Field.field @"computeStatus"
continueAsNewInitialVersioningBehavior ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "continueAsNewInitialVersioningBehavior" a) =>
  Lens.Family2.LensLike' f s a
continueAsNewInitialVersioningBehavior
  = Data.ProtoLens.Field.field
      @"continueAsNewInitialVersioningBehavior"
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
currentSinceTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "currentSinceTime" a) =>
  Lens.Family2.LensLike' f s a
currentSinceTime = Data.ProtoLens.Field.field @"currentSinceTime"
currentVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "currentVersion" a) =>
  Lens.Family2.LensLike' f s a
currentVersion = Data.ProtoLens.Field.field @"currentVersion"
currentVersionChangedTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "currentVersionChangedTime" a) =>
  Lens.Family2.LensLike' f s a
currentVersionChangedTime
  = Data.ProtoLens.Field.field @"currentVersionChangedTime"
deployment ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "deployment" a) =>
  Lens.Family2.LensLike' f s a
deployment = Data.ProtoLens.Field.field @"deployment"
deploymentName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "deploymentName" a) =>
  Lens.Family2.LensLike' f s a
deploymentName = Data.ProtoLens.Field.field @"deploymentName"
deploymentVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "deploymentVersion" a) =>
  Lens.Family2.LensLike' f s a
deploymentVersion = Data.ProtoLens.Field.field @"deploymentVersion"
drainageInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "drainageInfo" a) =>
  Lens.Family2.LensLike' f s a
drainageInfo = Data.ProtoLens.Field.field @"drainageInfo"
drainageStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "drainageStatus" a) =>
  Lens.Family2.LensLike' f s a
drainageStatus = Data.ProtoLens.Field.field @"drainageStatus"
entries ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "entries" a) =>
  Lens.Family2.LensLike' f s a
entries = Data.ProtoLens.Field.field @"entries"
errorMessage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "errorMessage" a) =>
  Lens.Family2.LensLike' f s a
errorMessage = Data.ProtoLens.Field.field @"errorMessage"
firstActivationTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "firstActivationTime" a) =>
  Lens.Family2.LensLike' f s a
firstActivationTime
  = Data.ProtoLens.Field.field @"firstActivationTime"
firstPollerTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "firstPollerTime" a) =>
  Lens.Family2.LensLike' f s a
firstPollerTime = Data.ProtoLens.Field.field @"firstPollerTime"
isCurrent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "isCurrent" a) =>
  Lens.Family2.LensLike' f s a
isCurrent = Data.ProtoLens.Field.field @"isCurrent"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
lastChangedTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastChangedTime" a) =>
  Lens.Family2.LensLike' f s a
lastChangedTime = Data.ProtoLens.Field.field @"lastChangedTime"
lastCheckTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastCheckTime" a) =>
  Lens.Family2.LensLike' f s a
lastCheckTime = Data.ProtoLens.Field.field @"lastCheckTime"
lastCheckedTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastCheckedTime" a) =>
  Lens.Family2.LensLike' f s a
lastCheckedTime = Data.ProtoLens.Field.field @"lastCheckedTime"
lastCurrentTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastCurrentTime" a) =>
  Lens.Family2.LensLike' f s a
lastCurrentTime = Data.ProtoLens.Field.field @"lastCurrentTime"
lastDeactivationTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastDeactivationTime" a) =>
  Lens.Family2.LensLike' f s a
lastDeactivationTime
  = Data.ProtoLens.Field.field @"lastDeactivationTime"
lastModifierIdentity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastModifierIdentity" a) =>
  Lens.Family2.LensLike' f s a
lastModifierIdentity
  = Data.ProtoLens.Field.field @"lastModifierIdentity"
managerIdentity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "managerIdentity" a) =>
  Lens.Family2.LensLike' f s a
managerIdentity = Data.ProtoLens.Field.field @"managerIdentity"
maybe'computeConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'computeConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'computeConfig
  = Data.ProtoLens.Field.field @"maybe'computeConfig"
maybe'computeStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'computeStatus" a) =>
  Lens.Family2.LensLike' f s a
maybe'computeStatus
  = Data.ProtoLens.Field.field @"maybe'computeStatus"
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
maybe'currentSinceTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'currentSinceTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'currentSinceTime
  = Data.ProtoLens.Field.field @"maybe'currentSinceTime"
maybe'currentVersionChangedTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'currentVersionChangedTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'currentVersionChangedTime
  = Data.ProtoLens.Field.field @"maybe'currentVersionChangedTime"
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
maybe'drainageInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'drainageInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'drainageInfo
  = Data.ProtoLens.Field.field @"maybe'drainageInfo"
maybe'firstActivationTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'firstActivationTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'firstActivationTime
  = Data.ProtoLens.Field.field @"maybe'firstActivationTime"
maybe'firstPollerTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'firstPollerTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'firstPollerTime
  = Data.ProtoLens.Field.field @"maybe'firstPollerTime"
maybe'lastChangedTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lastChangedTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'lastChangedTime
  = Data.ProtoLens.Field.field @"maybe'lastChangedTime"
maybe'lastCheckTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lastCheckTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'lastCheckTime
  = Data.ProtoLens.Field.field @"maybe'lastCheckTime"
maybe'lastCheckedTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lastCheckedTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'lastCheckedTime
  = Data.ProtoLens.Field.field @"maybe'lastCheckedTime"
maybe'lastCurrentTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lastCurrentTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'lastCurrentTime
  = Data.ProtoLens.Field.field @"maybe'lastCurrentTime"
maybe'lastDeactivationTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lastDeactivationTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'lastDeactivationTime
  = Data.ProtoLens.Field.field @"maybe'lastDeactivationTime"
maybe'metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'metadata" a) =>
  Lens.Family2.LensLike' f s a
maybe'metadata = Data.ProtoLens.Field.field @"maybe'metadata"
maybe'providerValidation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'providerValidation" a) =>
  Lens.Family2.LensLike' f s a
maybe'providerValidation
  = Data.ProtoLens.Field.field @"maybe'providerValidation"
maybe'rampingDeploymentVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rampingDeploymentVersion" a) =>
  Lens.Family2.LensLike' f s a
maybe'rampingDeploymentVersion
  = Data.ProtoLens.Field.field @"maybe'rampingDeploymentVersion"
maybe'rampingSinceTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rampingSinceTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'rampingSinceTime
  = Data.ProtoLens.Field.field @"maybe'rampingSinceTime"
maybe'rampingVersionChangedTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rampingVersionChangedTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'rampingVersionChangedTime
  = Data.ProtoLens.Field.field @"maybe'rampingVersionChangedTime"
maybe'rampingVersionPercentageChangedTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rampingVersionPercentageChangedTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'rampingVersionPercentageChangedTime
  = Data.ProtoLens.Field.field
      @"maybe'rampingVersionPercentageChangedTime"
maybe'routingChangedTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'routingChangedTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'routingChangedTime
  = Data.ProtoLens.Field.field @"maybe'routingChangedTime"
maybe'routingConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'routingConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'routingConfig
  = Data.ProtoLens.Field.field @"maybe'routingConfig"
maybe'routingUpdateTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'routingUpdateTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'routingUpdateTime
  = Data.ProtoLens.Field.field @"maybe'routingUpdateTime"
maybe'sourceDeploymentVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sourceDeploymentVersion" a) =>
  Lens.Family2.LensLike' f s a
maybe'sourceDeploymentVersion
  = Data.ProtoLens.Field.field @"maybe'sourceDeploymentVersion"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
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
providerValidation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "providerValidation" a) =>
  Lens.Family2.LensLike' f s a
providerValidation
  = Data.ProtoLens.Field.field @"providerValidation"
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
rampingSinceTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rampingSinceTime" a) =>
  Lens.Family2.LensLike' f s a
rampingSinceTime = Data.ProtoLens.Field.field @"rampingSinceTime"
rampingVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rampingVersion" a) =>
  Lens.Family2.LensLike' f s a
rampingVersion = Data.ProtoLens.Field.field @"rampingVersion"
rampingVersionChangedTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rampingVersionChangedTime" a) =>
  Lens.Family2.LensLike' f s a
rampingVersionChangedTime
  = Data.ProtoLens.Field.field @"rampingVersionChangedTime"
rampingVersionPercentage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rampingVersionPercentage" a) =>
  Lens.Family2.LensLike' f s a
rampingVersionPercentage
  = Data.ProtoLens.Field.field @"rampingVersionPercentage"
rampingVersionPercentageChangedTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rampingVersionPercentageChangedTime" a) =>
  Lens.Family2.LensLike' f s a
rampingVersionPercentageChangedTime
  = Data.ProtoLens.Field.field @"rampingVersionPercentageChangedTime"
removeEntries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "removeEntries" a) =>
  Lens.Family2.LensLike' f s a
removeEntries = Data.ProtoLens.Field.field @"removeEntries"
revisionNumber ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "revisionNumber" a) =>
  Lens.Family2.LensLike' f s a
revisionNumber = Data.ProtoLens.Field.field @"revisionNumber"
routingChangedTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "routingChangedTime" a) =>
  Lens.Family2.LensLike' f s a
routingChangedTime
  = Data.ProtoLens.Field.field @"routingChangedTime"
routingConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "routingConfig" a) =>
  Lens.Family2.LensLike' f s a
routingConfig = Data.ProtoLens.Field.field @"routingConfig"
routingConfigUpdateState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "routingConfigUpdateState" a) =>
  Lens.Family2.LensLike' f s a
routingConfigUpdateState
  = Data.ProtoLens.Field.field @"routingConfigUpdateState"
routingUpdateTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "routingUpdateTime" a) =>
  Lens.Family2.LensLike' f s a
routingUpdateTime = Data.ProtoLens.Field.field @"routingUpdateTime"
seriesName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "seriesName" a) =>
  Lens.Family2.LensLike' f s a
seriesName = Data.ProtoLens.Field.field @"seriesName"
sourceDeploymentRevisionNumber ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourceDeploymentRevisionNumber" a) =>
  Lens.Family2.LensLike' f s a
sourceDeploymentRevisionNumber
  = Data.ProtoLens.Field.field @"sourceDeploymentRevisionNumber"
sourceDeploymentVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourceDeploymentVersion" a) =>
  Lens.Family2.LensLike' f s a
sourceDeploymentVersion
  = Data.ProtoLens.Field.field @"sourceDeploymentVersion"
status ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "status" a) =>
  Lens.Family2.LensLike' f s a
status = Data.ProtoLens.Field.field @"status"
taskQueueInfos ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "taskQueueInfos" a) =>
  Lens.Family2.LensLike' f s a
taskQueueInfos = Data.ProtoLens.Field.field @"taskQueueInfos"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
upsertEntries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upsertEntries" a) =>
  Lens.Family2.LensLike' f s a
upsertEntries = Data.ProtoLens.Field.field @"upsertEntries"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'removeEntries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'removeEntries" a) =>
  Lens.Family2.LensLike' f s a
vec'removeEntries = Data.ProtoLens.Field.field @"vec'removeEntries"
vec'taskQueueInfos ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'taskQueueInfos" a) =>
  Lens.Family2.LensLike' f s a
vec'taskQueueInfos
  = Data.ProtoLens.Field.field @"vec'taskQueueInfos"
vec'versionSummaries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'versionSummaries" a) =>
  Lens.Family2.LensLike' f s a
vec'versionSummaries
  = Data.ProtoLens.Field.field @"vec'versionSummaries"
version ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "version" a) =>
  Lens.Family2.LensLike' f s a
version = Data.ProtoLens.Field.field @"version"
versionSummaries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "versionSummaries" a) =>
  Lens.Family2.LensLike' f s a
versionSummaries = Data.ProtoLens.Field.field @"versionSummaries"
workerVersioningMode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workerVersioningMode" a) =>
  Lens.Family2.LensLike' f s a
workerVersioningMode
  = Data.ProtoLens.Field.field @"workerVersioningMode"