{- This file was auto-generated from temporal/api/operatorservice/v1/request_response.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Operatorservice.V1.RequestResponse_Fields where
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
import qualified Proto.Temporal.Api.Enums.V1.Common
import qualified Proto.Temporal.Api.Enums.V1.Namespace
import qualified Proto.Temporal.Api.Nexus.V1.Message
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
closeTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "closeTime" a) =>
  Lens.Family2.LensLike' f s a
closeTime = Data.ProtoLens.Field.field @"closeTime"
clusterId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusterId" a) =>
  Lens.Family2.LensLike' f s a
clusterId = Data.ProtoLens.Field.field @"clusterId"
clusterName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusterName" a) =>
  Lens.Family2.LensLike' f s a
clusterName = Data.ProtoLens.Field.field @"clusterName"
clusters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusters" a) =>
  Lens.Family2.LensLike' f s a
clusters = Data.ProtoLens.Field.field @"clusters"
customAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "customAttributes" a) =>
  Lens.Family2.LensLike' f s a
customAttributes = Data.ProtoLens.Field.field @"customAttributes"
deletedNamespace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "deletedNamespace" a) =>
  Lens.Family2.LensLike' f s a
deletedNamespace = Data.ProtoLens.Field.field @"deletedNamespace"
enableRemoteClusterConnection ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "enableRemoteClusterConnection" a) =>
  Lens.Family2.LensLike' f s a
enableRemoteClusterConnection
  = Data.ProtoLens.Field.field @"enableRemoteClusterConnection"
enableReplication ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "enableReplication" a) =>
  Lens.Family2.LensLike' f s a
enableReplication = Data.ProtoLens.Field.field @"enableReplication"
endpoint ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "endpoint" a) =>
  Lens.Family2.LensLike' f s a
endpoint = Data.ProtoLens.Field.field @"endpoint"
endpoints ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "endpoints" a) =>
  Lens.Family2.LensLike' f s a
endpoints = Data.ProtoLens.Field.field @"endpoints"
estimatedCompletionTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "estimatedCompletionTime" a) =>
  Lens.Family2.LensLike' f s a
estimatedCompletionTime
  = Data.ProtoLens.Field.field @"estimatedCompletionTime"
frontendAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "frontendAddress" a) =>
  Lens.Family2.LensLike' f s a
frontendAddress = Data.ProtoLens.Field.field @"frontendAddress"
frontendHttpAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "frontendHttpAddress" a) =>
  Lens.Family2.LensLike' f s a
frontendHttpAddress
  = Data.ProtoLens.Field.field @"frontendHttpAddress"
historyShardCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "historyShardCount" a) =>
  Lens.Family2.LensLike' f s a
historyShardCount = Data.ProtoLens.Field.field @"historyShardCount"
hostCluster ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hostCluster" a) =>
  Lens.Family2.LensLike' f s a
hostCluster = Data.ProtoLens.Field.field @"hostCluster"
httpAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "httpAddress" a) =>
  Lens.Family2.LensLike' f s a
httpAddress = Data.ProtoLens.Field.field @"httpAddress"
id ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "id" a) =>
  Lens.Family2.LensLike' f s a
id = Data.ProtoLens.Field.field @"id"
initialFailoverVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "initialFailoverVersion" a) =>
  Lens.Family2.LensLike' f s a
initialFailoverVersion
  = Data.ProtoLens.Field.field @"initialFailoverVersion"
isConnectionEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "isConnectionEnabled" a) =>
  Lens.Family2.LensLike' f s a
isConnectionEnabled
  = Data.ProtoLens.Field.field @"isConnectionEnabled"
isReplicationEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "isReplicationEnabled" a) =>
  Lens.Family2.LensLike' f s a
isReplicationEnabled
  = Data.ProtoLens.Field.field @"isReplicationEnabled"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
maybe'closeTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'closeTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'closeTime = Data.ProtoLens.Field.field @"maybe'closeTime"
maybe'endpoint ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'endpoint" a) =>
  Lens.Family2.LensLike' f s a
maybe'endpoint = Data.ProtoLens.Field.field @"maybe'endpoint"
maybe'estimatedCompletionTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'estimatedCompletionTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'estimatedCompletionTime
  = Data.ProtoLens.Field.field @"maybe'estimatedCompletionTime"
maybe'namespaceDeleteDelay ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'namespaceDeleteDelay" a) =>
  Lens.Family2.LensLike' f s a
maybe'namespaceDeleteDelay
  = Data.ProtoLens.Field.field @"maybe'namespaceDeleteDelay"
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
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
namespace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "namespace" a) =>
  Lens.Family2.LensLike' f s a
namespace = Data.ProtoLens.Field.field @"namespace"
namespaceDeleteDelay ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "namespaceDeleteDelay" a) =>
  Lens.Family2.LensLike' f s a
namespaceDeleteDelay
  = Data.ProtoLens.Field.field @"namespaceDeleteDelay"
namespaceId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "namespaceId" a) =>
  Lens.Family2.LensLike' f s a
namespaceId = Data.ProtoLens.Field.field @"namespaceId"
nextPageToken ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nextPageToken" a) =>
  Lens.Family2.LensLike' f s a
nextPageToken = Data.ProtoLens.Field.field @"nextPageToken"
pageSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pageSize" a) =>
  Lens.Family2.LensLike' f s a
pageSize = Data.ProtoLens.Field.field @"pageSize"
processedExecutionCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "processedExecutionCount" a) =>
  Lens.Family2.LensLike' f s a
processedExecutionCount
  = Data.ProtoLens.Field.field @"processedExecutionCount"
runId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "runId" a) =>
  Lens.Family2.LensLike' f s a
runId = Data.ProtoLens.Field.field @"runId"
searchAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "searchAttributes" a) =>
  Lens.Family2.LensLike' f s a
searchAttributes = Data.ProtoLens.Field.field @"searchAttributes"
spec ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "spec" a) =>
  Lens.Family2.LensLike' f s a
spec = Data.ProtoLens.Field.field @"spec"
startTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startTime" a) =>
  Lens.Family2.LensLike' f s a
startTime = Data.ProtoLens.Field.field @"startTime"
state ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "state" a) =>
  Lens.Family2.LensLike' f s a
state = Data.ProtoLens.Field.field @"state"
storageSchema ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "storageSchema" a) =>
  Lens.Family2.LensLike' f s a
storageSchema = Data.ProtoLens.Field.field @"storageSchema"
systemAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "systemAttributes" a) =>
  Lens.Family2.LensLike' f s a
systemAttributes = Data.ProtoLens.Field.field @"systemAttributes"
totalExecutionCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalExecutionCount" a) =>
  Lens.Family2.LensLike' f s a
totalExecutionCount
  = Data.ProtoLens.Field.field @"totalExecutionCount"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'clusters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'clusters" a) =>
  Lens.Family2.LensLike' f s a
vec'clusters = Data.ProtoLens.Field.field @"vec'clusters"
vec'endpoints ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'endpoints" a) =>
  Lens.Family2.LensLike' f s a
vec'endpoints = Data.ProtoLens.Field.field @"vec'endpoints"
vec'searchAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'searchAttributes" a) =>
  Lens.Family2.LensLike' f s a
vec'searchAttributes
  = Data.ProtoLens.Field.field @"vec'searchAttributes"
version ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "version" a) =>
  Lens.Family2.LensLike' f s a
version = Data.ProtoLens.Field.field @"version"