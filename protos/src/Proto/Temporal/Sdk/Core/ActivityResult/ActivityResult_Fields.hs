{- This file was auto-generated from temporal/sdk/core/activity_result/activity_result.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields where
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
import qualified Proto.Temporal.Api.Enums.V1.FailedCause
import qualified Proto.Temporal.Api.Failure.V1.Message
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
backoffDuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "backoffDuration" a) =>
  Lens.Family2.LensLike' f s a
backoffDuration = Data.ProtoLens.Field.field @"backoffDuration"
cancelled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cancelled" a) =>
  Lens.Family2.LensLike' f s a
cancelled = Data.ProtoLens.Field.field @"cancelled"
cause ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cause" a) =>
  Lens.Family2.LensLike' f s a
cause = Data.ProtoLens.Field.field @"cause"
completed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "completed" a) =>
  Lens.Family2.LensLike' f s a
completed = Data.ProtoLens.Field.field @"completed"
failed ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "failed" a) =>
  Lens.Family2.LensLike' f s a
failed = Data.ProtoLens.Field.field @"failed"
failure ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "failure" a) =>
  Lens.Family2.LensLike' f s a
failure = Data.ProtoLens.Field.field @"failure"
maybe'backoff ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'backoff" a) =>
  Lens.Family2.LensLike' f s a
maybe'backoff = Data.ProtoLens.Field.field @"maybe'backoff"
maybe'backoffDuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'backoffDuration" a) =>
  Lens.Family2.LensLike' f s a
maybe'backoffDuration
  = Data.ProtoLens.Field.field @"maybe'backoffDuration"
maybe'cancelled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cancelled" a) =>
  Lens.Family2.LensLike' f s a
maybe'cancelled = Data.ProtoLens.Field.field @"maybe'cancelled"
maybe'completed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'completed" a) =>
  Lens.Family2.LensLike' f s a
maybe'completed = Data.ProtoLens.Field.field @"maybe'completed"
maybe'failed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'failed" a) =>
  Lens.Family2.LensLike' f s a
maybe'failed = Data.ProtoLens.Field.field @"maybe'failed"
maybe'failure ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'failure" a) =>
  Lens.Family2.LensLike' f s a
maybe'failure = Data.ProtoLens.Field.field @"maybe'failure"
maybe'originalScheduleTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'originalScheduleTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'originalScheduleTime
  = Data.ProtoLens.Field.field @"maybe'originalScheduleTime"
maybe'result ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'result" a) =>
  Lens.Family2.LensLike' f s a
maybe'result = Data.ProtoLens.Field.field @"maybe'result"
maybe'status ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'status" a) =>
  Lens.Family2.LensLike' f s a
maybe'status = Data.ProtoLens.Field.field @"maybe'status"
maybe'willCompleteAsync ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'willCompleteAsync" a) =>
  Lens.Family2.LensLike' f s a
maybe'willCompleteAsync
  = Data.ProtoLens.Field.field @"maybe'willCompleteAsync"
originalScheduleTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "originalScheduleTime" a) =>
  Lens.Family2.LensLike' f s a
originalScheduleTime
  = Data.ProtoLens.Field.field @"originalScheduleTime"
result ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "result" a) =>
  Lens.Family2.LensLike' f s a
result = Data.ProtoLens.Field.field @"result"
willCompleteAsync ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "willCompleteAsync" a) =>
  Lens.Family2.LensLike' f s a
willCompleteAsync = Data.ProtoLens.Field.field @"willCompleteAsync"