{- This file was auto-generated from temporal/api/compute/v1/config.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Compute.V1.Config_Fields where
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
import qualified Proto.Google.Protobuf.FieldMask
import qualified Proto.Temporal.Api.Compute.V1.Provider
import qualified Proto.Temporal.Api.Compute.V1.Scaler
import qualified Proto.Temporal.Api.Enums.V1.TaskQueue
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
maybe'provider ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'provider" a) =>
  Lens.Family2.LensLike' f s a
maybe'provider = Data.ProtoLens.Field.field @"maybe'provider"
maybe'scaler ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scaler" a) =>
  Lens.Family2.LensLike' f s a
maybe'scaler = Data.ProtoLens.Field.field @"maybe'scaler"
maybe'scalingGroup ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scalingGroup" a) =>
  Lens.Family2.LensLike' f s a
maybe'scalingGroup
  = Data.ProtoLens.Field.field @"maybe'scalingGroup"
maybe'updateMask ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'updateMask" a) =>
  Lens.Family2.LensLike' f s a
maybe'updateMask = Data.ProtoLens.Field.field @"maybe'updateMask"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
provider ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "provider" a) =>
  Lens.Family2.LensLike' f s a
provider = Data.ProtoLens.Field.field @"provider"
providerType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "providerType" a) =>
  Lens.Family2.LensLike' f s a
providerType = Data.ProtoLens.Field.field @"providerType"
regionIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "regionIds" a) =>
  Lens.Family2.LensLike' f s a
regionIds = Data.ProtoLens.Field.field @"regionIds"
scaler ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "scaler" a) =>
  Lens.Family2.LensLike' f s a
scaler = Data.ProtoLens.Field.field @"scaler"
scalingGroup ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scalingGroup" a) =>
  Lens.Family2.LensLike' f s a
scalingGroup = Data.ProtoLens.Field.field @"scalingGroup"
scalingGroups ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scalingGroups" a) =>
  Lens.Family2.LensLike' f s a
scalingGroups = Data.ProtoLens.Field.field @"scalingGroups"
taskQueueTypes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "taskQueueTypes" a) =>
  Lens.Family2.LensLike' f s a
taskQueueTypes = Data.ProtoLens.Field.field @"taskQueueTypes"
updateMask ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "updateMask" a) =>
  Lens.Family2.LensLike' f s a
updateMask = Data.ProtoLens.Field.field @"updateMask"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'regionIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'regionIds" a) =>
  Lens.Family2.LensLike' f s a
vec'regionIds = Data.ProtoLens.Field.field @"vec'regionIds"
vec'taskQueueTypes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'taskQueueTypes" a) =>
  Lens.Family2.LensLike' f s a
vec'taskQueueTypes
  = Data.ProtoLens.Field.field @"vec'taskQueueTypes"