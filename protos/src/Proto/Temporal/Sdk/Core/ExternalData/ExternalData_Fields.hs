{- This file was auto-generated from temporal/sdk/core/external_data/external_data.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Sdk.Core.ExternalData.ExternalData_Fields where
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
activationIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activationIndex" a) =>
  Lens.Family2.LensLike' f s a
activationIndex = Data.ProtoLens.Field.field @"activationIndex"
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
backoff ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "backoff" a) =>
  Lens.Family2.LensLike' f s a
backoff = Data.ProtoLens.Field.field @"backoff"
completeTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "completeTime" a) =>
  Lens.Family2.LensLike' f s a
completeTime = Data.ProtoLens.Field.field @"completeTime"
deprecated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "deprecated" a) =>
  Lens.Family2.LensLike' f s a
deprecated = Data.ProtoLens.Field.field @"deprecated"
id ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "id" a) =>
  Lens.Family2.LensLike' f s a
id = Data.ProtoLens.Field.field @"id"
maybe'activationIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'activationIndex" a) =>
  Lens.Family2.LensLike' f s a
maybe'activationIndex
  = Data.ProtoLens.Field.field @"maybe'activationIndex"
maybe'backoff ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'backoff" a) =>
  Lens.Family2.LensLike' f s a
maybe'backoff = Data.ProtoLens.Field.field @"maybe'backoff"
maybe'completeTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'completeTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'completeTime
  = Data.ProtoLens.Field.field @"maybe'completeTime"
maybe'originalScheduleTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'originalScheduleTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'originalScheduleTime
  = Data.ProtoLens.Field.field @"maybe'originalScheduleTime"
originalScheduleTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "originalScheduleTime" a) =>
  Lens.Family2.LensLike' f s a
originalScheduleTime
  = Data.ProtoLens.Field.field @"originalScheduleTime"
seq ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "seq" a) =>
  Lens.Family2.LensLike' f s a
seq = Data.ProtoLens.Field.field @"seq"