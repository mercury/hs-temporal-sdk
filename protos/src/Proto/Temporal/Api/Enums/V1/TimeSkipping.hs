{- This file was auto-generated from temporal/api/enums/v1/time_skipping.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Enums.V1.TimeSkipping (
        FastForwardPollingResult(..), FastForwardPollingResult(),
        FastForwardPollingResult'UnrecognizedValue
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
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
newtype FastForwardPollingResult'UnrecognizedValue
  = FastForwardPollingResult'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data FastForwardPollingResult
  = FAST_FORWARD_POLLING_RESULT_UNSPECIFIED |
    FAST_FORWARD_POLLING_RESULT_POLL_TIMEOUT |
    FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_COMPLETED |
    FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_FAILED |
    FastForwardPollingResult'Unrecognized !FastForwardPollingResult'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum FastForwardPollingResult where
  maybeToEnum 0
    = Prelude.Just FAST_FORWARD_POLLING_RESULT_UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just FAST_FORWARD_POLLING_RESULT_POLL_TIMEOUT
  maybeToEnum 2
    = Prelude.Just FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_COMPLETED
  maybeToEnum 3
    = Prelude.Just FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_FAILED
  maybeToEnum k
    = Prelude.Just
        (FastForwardPollingResult'Unrecognized
           (FastForwardPollingResult'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum FAST_FORWARD_POLLING_RESULT_UNSPECIFIED
    = "FAST_FORWARD_POLLING_RESULT_UNSPECIFIED"
  showEnum FAST_FORWARD_POLLING_RESULT_POLL_TIMEOUT
    = "FAST_FORWARD_POLLING_RESULT_POLL_TIMEOUT"
  showEnum FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_COMPLETED
    = "FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_COMPLETED"
  showEnum FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_FAILED
    = "FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_FAILED"
  showEnum
    (FastForwardPollingResult'Unrecognized (FastForwardPollingResult'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "FAST_FORWARD_POLLING_RESULT_UNSPECIFIED"
    = Prelude.Just FAST_FORWARD_POLLING_RESULT_UNSPECIFIED
    | (Prelude.==) k "FAST_FORWARD_POLLING_RESULT_POLL_TIMEOUT"
    = Prelude.Just FAST_FORWARD_POLLING_RESULT_POLL_TIMEOUT
    | (Prelude.==)
        k "FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_COMPLETED"
    = Prelude.Just FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_COMPLETED
    | (Prelude.==) k "FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_FAILED"
    = Prelude.Just FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_FAILED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded FastForwardPollingResult where
  minBound = FAST_FORWARD_POLLING_RESULT_UNSPECIFIED
  maxBound = FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_FAILED
instance Prelude.Enum FastForwardPollingResult where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum FastForwardPollingResult: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum FAST_FORWARD_POLLING_RESULT_UNSPECIFIED = 0
  fromEnum FAST_FORWARD_POLLING_RESULT_POLL_TIMEOUT = 1
  fromEnum FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_COMPLETED = 2
  fromEnum FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_FAILED = 3
  fromEnum
    (FastForwardPollingResult'Unrecognized (FastForwardPollingResult'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_FAILED
    = Prelude.error
        "FastForwardPollingResult.succ: bad argument FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_FAILED. This value would be out of bounds."
  succ FAST_FORWARD_POLLING_RESULT_UNSPECIFIED
    = FAST_FORWARD_POLLING_RESULT_POLL_TIMEOUT
  succ FAST_FORWARD_POLLING_RESULT_POLL_TIMEOUT
    = FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_COMPLETED
  succ FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_COMPLETED
    = FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_FAILED
  succ (FastForwardPollingResult'Unrecognized _)
    = Prelude.error
        "FastForwardPollingResult.succ: bad argument: unrecognized value"
  pred FAST_FORWARD_POLLING_RESULT_UNSPECIFIED
    = Prelude.error
        "FastForwardPollingResult.pred: bad argument FAST_FORWARD_POLLING_RESULT_UNSPECIFIED. This value would be out of bounds."
  pred FAST_FORWARD_POLLING_RESULT_POLL_TIMEOUT
    = FAST_FORWARD_POLLING_RESULT_UNSPECIFIED
  pred FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_COMPLETED
    = FAST_FORWARD_POLLING_RESULT_POLL_TIMEOUT
  pred FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_FAILED
    = FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_COMPLETED
  pred (FastForwardPollingResult'Unrecognized _)
    = Prelude.error
        "FastForwardPollingResult.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault FastForwardPollingResult where
  fieldDefault = FAST_FORWARD_POLLING_RESULT_UNSPECIFIED
instance Control.DeepSeq.NFData FastForwardPollingResult where
  rnf x__ = Prelude.seq x__ ()