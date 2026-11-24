{- This file was auto-generated from temporal/sdk/core/workflow_completion/workflow_completion.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields where
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
import qualified Proto.Temporal.Api.Enums.V1.FailedCause
import qualified Proto.Temporal.Api.Enums.V1.Workflow
import qualified Proto.Temporal.Api.Failure.V1.Message
import qualified Proto.Temporal.Sdk.Core.Common.Common
import qualified Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands
commands ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commands" a) =>
  Lens.Family2.LensLike' f s a
commands = Data.ProtoLens.Field.field @"commands"
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
forceCause ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "forceCause" a) =>
  Lens.Family2.LensLike' f s a
forceCause = Data.ProtoLens.Field.field @"forceCause"
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
maybe'payloadDownloadMetrics ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'payloadDownloadMetrics" a) =>
  Lens.Family2.LensLike' f s a
maybe'payloadDownloadMetrics
  = Data.ProtoLens.Field.field @"maybe'payloadDownloadMetrics"
maybe'payloadUploadMetrics ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'payloadUploadMetrics" a) =>
  Lens.Family2.LensLike' f s a
maybe'payloadUploadMetrics
  = Data.ProtoLens.Field.field @"maybe'payloadUploadMetrics"
maybe'status ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'status" a) =>
  Lens.Family2.LensLike' f s a
maybe'status = Data.ProtoLens.Field.field @"maybe'status"
maybe'successful ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'successful" a) =>
  Lens.Family2.LensLike' f s a
maybe'successful = Data.ProtoLens.Field.field @"maybe'successful"
payloadDownloadMetrics ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "payloadDownloadMetrics" a) =>
  Lens.Family2.LensLike' f s a
payloadDownloadMetrics
  = Data.ProtoLens.Field.field @"payloadDownloadMetrics"
payloadUploadMetrics ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "payloadUploadMetrics" a) =>
  Lens.Family2.LensLike' f s a
payloadUploadMetrics
  = Data.ProtoLens.Field.field @"payloadUploadMetrics"
runId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "runId" a) =>
  Lens.Family2.LensLike' f s a
runId = Data.ProtoLens.Field.field @"runId"
successful ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "successful" a) =>
  Lens.Family2.LensLike' f s a
successful = Data.ProtoLens.Field.field @"successful"
usedInternalFlags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "usedInternalFlags" a) =>
  Lens.Family2.LensLike' f s a
usedInternalFlags = Data.ProtoLens.Field.field @"usedInternalFlags"
vec'commands ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'commands" a) =>
  Lens.Family2.LensLike' f s a
vec'commands = Data.ProtoLens.Field.field @"vec'commands"
vec'usedInternalFlags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'usedInternalFlags" a) =>
  Lens.Family2.LensLike' f s a
vec'usedInternalFlags
  = Data.ProtoLens.Field.field @"vec'usedInternalFlags"
versioningBehavior ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "versioningBehavior" a) =>
  Lens.Family2.LensLike' f s a
versioningBehavior
  = Data.ProtoLens.Field.field @"versioningBehavior"