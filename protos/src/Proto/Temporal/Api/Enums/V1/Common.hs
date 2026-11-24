{- This file was auto-generated from temporal/api/enums/v1/common.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Enums.V1.Common (
        ApplicationErrorCategory(..), ApplicationErrorCategory(),
        ApplicationErrorCategory'UnrecognizedValue, CallbackState(..),
        CallbackState(), CallbackState'UnrecognizedValue, EncodingType(..),
        EncodingType(), EncodingType'UnrecognizedValue, ExecutionType(..),
        ExecutionType(), ExecutionType'UnrecognizedValue,
        IndexedValueType(..), IndexedValueType(),
        IndexedValueType'UnrecognizedValue,
        NexusOperationCancellationState(..),
        NexusOperationCancellationState(),
        NexusOperationCancellationState'UnrecognizedValue,
        PendingNexusOperationState(..), PendingNexusOperationState(),
        PendingNexusOperationState'UnrecognizedValue, Severity(..),
        Severity(), Severity'UnrecognizedValue, WorkerStatus(..),
        WorkerStatus(), WorkerStatus'UnrecognizedValue,
        WorkflowRuleActionScope(..), WorkflowRuleActionScope(),
        WorkflowRuleActionScope'UnrecognizedValue
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
newtype ApplicationErrorCategory'UnrecognizedValue
  = ApplicationErrorCategory'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ApplicationErrorCategory
  = APPLICATION_ERROR_CATEGORY_UNSPECIFIED |
    APPLICATION_ERROR_CATEGORY_BENIGN |
    ApplicationErrorCategory'Unrecognized !ApplicationErrorCategory'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ApplicationErrorCategory where
  maybeToEnum 0 = Prelude.Just APPLICATION_ERROR_CATEGORY_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just APPLICATION_ERROR_CATEGORY_BENIGN
  maybeToEnum k
    = Prelude.Just
        (ApplicationErrorCategory'Unrecognized
           (ApplicationErrorCategory'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum APPLICATION_ERROR_CATEGORY_UNSPECIFIED
    = "APPLICATION_ERROR_CATEGORY_UNSPECIFIED"
  showEnum APPLICATION_ERROR_CATEGORY_BENIGN
    = "APPLICATION_ERROR_CATEGORY_BENIGN"
  showEnum
    (ApplicationErrorCategory'Unrecognized (ApplicationErrorCategory'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "APPLICATION_ERROR_CATEGORY_UNSPECIFIED"
    = Prelude.Just APPLICATION_ERROR_CATEGORY_UNSPECIFIED
    | (Prelude.==) k "APPLICATION_ERROR_CATEGORY_BENIGN"
    = Prelude.Just APPLICATION_ERROR_CATEGORY_BENIGN
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ApplicationErrorCategory where
  minBound = APPLICATION_ERROR_CATEGORY_UNSPECIFIED
  maxBound = APPLICATION_ERROR_CATEGORY_BENIGN
instance Prelude.Enum ApplicationErrorCategory where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ApplicationErrorCategory: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum APPLICATION_ERROR_CATEGORY_UNSPECIFIED = 0
  fromEnum APPLICATION_ERROR_CATEGORY_BENIGN = 1
  fromEnum
    (ApplicationErrorCategory'Unrecognized (ApplicationErrorCategory'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ APPLICATION_ERROR_CATEGORY_BENIGN
    = Prelude.error
        "ApplicationErrorCategory.succ: bad argument APPLICATION_ERROR_CATEGORY_BENIGN. This value would be out of bounds."
  succ APPLICATION_ERROR_CATEGORY_UNSPECIFIED
    = APPLICATION_ERROR_CATEGORY_BENIGN
  succ (ApplicationErrorCategory'Unrecognized _)
    = Prelude.error
        "ApplicationErrorCategory.succ: bad argument: unrecognized value"
  pred APPLICATION_ERROR_CATEGORY_UNSPECIFIED
    = Prelude.error
        "ApplicationErrorCategory.pred: bad argument APPLICATION_ERROR_CATEGORY_UNSPECIFIED. This value would be out of bounds."
  pred APPLICATION_ERROR_CATEGORY_BENIGN
    = APPLICATION_ERROR_CATEGORY_UNSPECIFIED
  pred (ApplicationErrorCategory'Unrecognized _)
    = Prelude.error
        "ApplicationErrorCategory.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ApplicationErrorCategory where
  fieldDefault = APPLICATION_ERROR_CATEGORY_UNSPECIFIED
instance Control.DeepSeq.NFData ApplicationErrorCategory where
  rnf x__ = Prelude.seq x__ ()
newtype CallbackState'UnrecognizedValue
  = CallbackState'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data CallbackState
  = CALLBACK_STATE_UNSPECIFIED |
    CALLBACK_STATE_STANDBY |
    CALLBACK_STATE_SCHEDULED |
    CALLBACK_STATE_BACKING_OFF |
    CALLBACK_STATE_FAILED |
    CALLBACK_STATE_SUCCEEDED |
    CALLBACK_STATE_BLOCKED |
    CallbackState'Unrecognized !CallbackState'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum CallbackState where
  maybeToEnum 0 = Prelude.Just CALLBACK_STATE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just CALLBACK_STATE_STANDBY
  maybeToEnum 2 = Prelude.Just CALLBACK_STATE_SCHEDULED
  maybeToEnum 3 = Prelude.Just CALLBACK_STATE_BACKING_OFF
  maybeToEnum 4 = Prelude.Just CALLBACK_STATE_FAILED
  maybeToEnum 5 = Prelude.Just CALLBACK_STATE_SUCCEEDED
  maybeToEnum 6 = Prelude.Just CALLBACK_STATE_BLOCKED
  maybeToEnum k
    = Prelude.Just
        (CallbackState'Unrecognized
           (CallbackState'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum CALLBACK_STATE_UNSPECIFIED = "CALLBACK_STATE_UNSPECIFIED"
  showEnum CALLBACK_STATE_STANDBY = "CALLBACK_STATE_STANDBY"
  showEnum CALLBACK_STATE_SCHEDULED = "CALLBACK_STATE_SCHEDULED"
  showEnum CALLBACK_STATE_BACKING_OFF = "CALLBACK_STATE_BACKING_OFF"
  showEnum CALLBACK_STATE_FAILED = "CALLBACK_STATE_FAILED"
  showEnum CALLBACK_STATE_SUCCEEDED = "CALLBACK_STATE_SUCCEEDED"
  showEnum CALLBACK_STATE_BLOCKED = "CALLBACK_STATE_BLOCKED"
  showEnum
    (CallbackState'Unrecognized (CallbackState'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "CALLBACK_STATE_UNSPECIFIED"
    = Prelude.Just CALLBACK_STATE_UNSPECIFIED
    | (Prelude.==) k "CALLBACK_STATE_STANDBY"
    = Prelude.Just CALLBACK_STATE_STANDBY
    | (Prelude.==) k "CALLBACK_STATE_SCHEDULED"
    = Prelude.Just CALLBACK_STATE_SCHEDULED
    | (Prelude.==) k "CALLBACK_STATE_BACKING_OFF"
    = Prelude.Just CALLBACK_STATE_BACKING_OFF
    | (Prelude.==) k "CALLBACK_STATE_FAILED"
    = Prelude.Just CALLBACK_STATE_FAILED
    | (Prelude.==) k "CALLBACK_STATE_SUCCEEDED"
    = Prelude.Just CALLBACK_STATE_SUCCEEDED
    | (Prelude.==) k "CALLBACK_STATE_BLOCKED"
    = Prelude.Just CALLBACK_STATE_BLOCKED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded CallbackState where
  minBound = CALLBACK_STATE_UNSPECIFIED
  maxBound = CALLBACK_STATE_BLOCKED
instance Prelude.Enum CallbackState where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum CallbackState: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum CALLBACK_STATE_UNSPECIFIED = 0
  fromEnum CALLBACK_STATE_STANDBY = 1
  fromEnum CALLBACK_STATE_SCHEDULED = 2
  fromEnum CALLBACK_STATE_BACKING_OFF = 3
  fromEnum CALLBACK_STATE_FAILED = 4
  fromEnum CALLBACK_STATE_SUCCEEDED = 5
  fromEnum CALLBACK_STATE_BLOCKED = 6
  fromEnum
    (CallbackState'Unrecognized (CallbackState'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ CALLBACK_STATE_BLOCKED
    = Prelude.error
        "CallbackState.succ: bad argument CALLBACK_STATE_BLOCKED. This value would be out of bounds."
  succ CALLBACK_STATE_UNSPECIFIED = CALLBACK_STATE_STANDBY
  succ CALLBACK_STATE_STANDBY = CALLBACK_STATE_SCHEDULED
  succ CALLBACK_STATE_SCHEDULED = CALLBACK_STATE_BACKING_OFF
  succ CALLBACK_STATE_BACKING_OFF = CALLBACK_STATE_FAILED
  succ CALLBACK_STATE_FAILED = CALLBACK_STATE_SUCCEEDED
  succ CALLBACK_STATE_SUCCEEDED = CALLBACK_STATE_BLOCKED
  succ (CallbackState'Unrecognized _)
    = Prelude.error
        "CallbackState.succ: bad argument: unrecognized value"
  pred CALLBACK_STATE_UNSPECIFIED
    = Prelude.error
        "CallbackState.pred: bad argument CALLBACK_STATE_UNSPECIFIED. This value would be out of bounds."
  pred CALLBACK_STATE_STANDBY = CALLBACK_STATE_UNSPECIFIED
  pred CALLBACK_STATE_SCHEDULED = CALLBACK_STATE_STANDBY
  pred CALLBACK_STATE_BACKING_OFF = CALLBACK_STATE_SCHEDULED
  pred CALLBACK_STATE_FAILED = CALLBACK_STATE_BACKING_OFF
  pred CALLBACK_STATE_SUCCEEDED = CALLBACK_STATE_FAILED
  pred CALLBACK_STATE_BLOCKED = CALLBACK_STATE_SUCCEEDED
  pred (CallbackState'Unrecognized _)
    = Prelude.error
        "CallbackState.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault CallbackState where
  fieldDefault = CALLBACK_STATE_UNSPECIFIED
instance Control.DeepSeq.NFData CallbackState where
  rnf x__ = Prelude.seq x__ ()
newtype EncodingType'UnrecognizedValue
  = EncodingType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data EncodingType
  = ENCODING_TYPE_UNSPECIFIED |
    ENCODING_TYPE_PROTO3 |
    ENCODING_TYPE_JSON |
    EncodingType'Unrecognized !EncodingType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum EncodingType where
  maybeToEnum 0 = Prelude.Just ENCODING_TYPE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just ENCODING_TYPE_PROTO3
  maybeToEnum 2 = Prelude.Just ENCODING_TYPE_JSON
  maybeToEnum k
    = Prelude.Just
        (EncodingType'Unrecognized
           (EncodingType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum ENCODING_TYPE_UNSPECIFIED = "ENCODING_TYPE_UNSPECIFIED"
  showEnum ENCODING_TYPE_PROTO3 = "ENCODING_TYPE_PROTO3"
  showEnum ENCODING_TYPE_JSON = "ENCODING_TYPE_JSON"
  showEnum
    (EncodingType'Unrecognized (EncodingType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "ENCODING_TYPE_UNSPECIFIED"
    = Prelude.Just ENCODING_TYPE_UNSPECIFIED
    | (Prelude.==) k "ENCODING_TYPE_PROTO3"
    = Prelude.Just ENCODING_TYPE_PROTO3
    | (Prelude.==) k "ENCODING_TYPE_JSON"
    = Prelude.Just ENCODING_TYPE_JSON
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded EncodingType where
  minBound = ENCODING_TYPE_UNSPECIFIED
  maxBound = ENCODING_TYPE_JSON
instance Prelude.Enum EncodingType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum EncodingType: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum ENCODING_TYPE_UNSPECIFIED = 0
  fromEnum ENCODING_TYPE_PROTO3 = 1
  fromEnum ENCODING_TYPE_JSON = 2
  fromEnum
    (EncodingType'Unrecognized (EncodingType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ENCODING_TYPE_JSON
    = Prelude.error
        "EncodingType.succ: bad argument ENCODING_TYPE_JSON. This value would be out of bounds."
  succ ENCODING_TYPE_UNSPECIFIED = ENCODING_TYPE_PROTO3
  succ ENCODING_TYPE_PROTO3 = ENCODING_TYPE_JSON
  succ (EncodingType'Unrecognized _)
    = Prelude.error
        "EncodingType.succ: bad argument: unrecognized value"
  pred ENCODING_TYPE_UNSPECIFIED
    = Prelude.error
        "EncodingType.pred: bad argument ENCODING_TYPE_UNSPECIFIED. This value would be out of bounds."
  pred ENCODING_TYPE_PROTO3 = ENCODING_TYPE_UNSPECIFIED
  pred ENCODING_TYPE_JSON = ENCODING_TYPE_PROTO3
  pred (EncodingType'Unrecognized _)
    = Prelude.error
        "EncodingType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault EncodingType where
  fieldDefault = ENCODING_TYPE_UNSPECIFIED
instance Control.DeepSeq.NFData EncodingType where
  rnf x__ = Prelude.seq x__ ()
newtype ExecutionType'UnrecognizedValue
  = ExecutionType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ExecutionType
  = EXECUTION_TYPE_UNSPECIFIED |
    EXECUTION_TYPE_WORKFLOW |
    EXECUTION_TYPE_ACTIVITY |
    EXECUTION_TYPE_NEXUS_OPERATION |
    ExecutionType'Unrecognized !ExecutionType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ExecutionType where
  maybeToEnum 0 = Prelude.Just EXECUTION_TYPE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just EXECUTION_TYPE_WORKFLOW
  maybeToEnum 2 = Prelude.Just EXECUTION_TYPE_ACTIVITY
  maybeToEnum 3 = Prelude.Just EXECUTION_TYPE_NEXUS_OPERATION
  maybeToEnum k
    = Prelude.Just
        (ExecutionType'Unrecognized
           (ExecutionType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum EXECUTION_TYPE_UNSPECIFIED = "EXECUTION_TYPE_UNSPECIFIED"
  showEnum EXECUTION_TYPE_WORKFLOW = "EXECUTION_TYPE_WORKFLOW"
  showEnum EXECUTION_TYPE_ACTIVITY = "EXECUTION_TYPE_ACTIVITY"
  showEnum EXECUTION_TYPE_NEXUS_OPERATION
    = "EXECUTION_TYPE_NEXUS_OPERATION"
  showEnum
    (ExecutionType'Unrecognized (ExecutionType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "EXECUTION_TYPE_UNSPECIFIED"
    = Prelude.Just EXECUTION_TYPE_UNSPECIFIED
    | (Prelude.==) k "EXECUTION_TYPE_WORKFLOW"
    = Prelude.Just EXECUTION_TYPE_WORKFLOW
    | (Prelude.==) k "EXECUTION_TYPE_ACTIVITY"
    = Prelude.Just EXECUTION_TYPE_ACTIVITY
    | (Prelude.==) k "EXECUTION_TYPE_NEXUS_OPERATION"
    = Prelude.Just EXECUTION_TYPE_NEXUS_OPERATION
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ExecutionType where
  minBound = EXECUTION_TYPE_UNSPECIFIED
  maxBound = EXECUTION_TYPE_NEXUS_OPERATION
instance Prelude.Enum ExecutionType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ExecutionType: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum EXECUTION_TYPE_UNSPECIFIED = 0
  fromEnum EXECUTION_TYPE_WORKFLOW = 1
  fromEnum EXECUTION_TYPE_ACTIVITY = 2
  fromEnum EXECUTION_TYPE_NEXUS_OPERATION = 3
  fromEnum
    (ExecutionType'Unrecognized (ExecutionType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ EXECUTION_TYPE_NEXUS_OPERATION
    = Prelude.error
        "ExecutionType.succ: bad argument EXECUTION_TYPE_NEXUS_OPERATION. This value would be out of bounds."
  succ EXECUTION_TYPE_UNSPECIFIED = EXECUTION_TYPE_WORKFLOW
  succ EXECUTION_TYPE_WORKFLOW = EXECUTION_TYPE_ACTIVITY
  succ EXECUTION_TYPE_ACTIVITY = EXECUTION_TYPE_NEXUS_OPERATION
  succ (ExecutionType'Unrecognized _)
    = Prelude.error
        "ExecutionType.succ: bad argument: unrecognized value"
  pred EXECUTION_TYPE_UNSPECIFIED
    = Prelude.error
        "ExecutionType.pred: bad argument EXECUTION_TYPE_UNSPECIFIED. This value would be out of bounds."
  pred EXECUTION_TYPE_WORKFLOW = EXECUTION_TYPE_UNSPECIFIED
  pred EXECUTION_TYPE_ACTIVITY = EXECUTION_TYPE_WORKFLOW
  pred EXECUTION_TYPE_NEXUS_OPERATION = EXECUTION_TYPE_ACTIVITY
  pred (ExecutionType'Unrecognized _)
    = Prelude.error
        "ExecutionType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ExecutionType where
  fieldDefault = EXECUTION_TYPE_UNSPECIFIED
instance Control.DeepSeq.NFData ExecutionType where
  rnf x__ = Prelude.seq x__ ()
newtype IndexedValueType'UnrecognizedValue
  = IndexedValueType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data IndexedValueType
  = INDEXED_VALUE_TYPE_UNSPECIFIED |
    INDEXED_VALUE_TYPE_TEXT |
    INDEXED_VALUE_TYPE_KEYWORD |
    INDEXED_VALUE_TYPE_INT |
    INDEXED_VALUE_TYPE_DOUBLE |
    INDEXED_VALUE_TYPE_BOOL |
    INDEXED_VALUE_TYPE_DATETIME |
    INDEXED_VALUE_TYPE_KEYWORD_LIST |
    IndexedValueType'Unrecognized !IndexedValueType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum IndexedValueType where
  maybeToEnum 0 = Prelude.Just INDEXED_VALUE_TYPE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just INDEXED_VALUE_TYPE_TEXT
  maybeToEnum 2 = Prelude.Just INDEXED_VALUE_TYPE_KEYWORD
  maybeToEnum 3 = Prelude.Just INDEXED_VALUE_TYPE_INT
  maybeToEnum 4 = Prelude.Just INDEXED_VALUE_TYPE_DOUBLE
  maybeToEnum 5 = Prelude.Just INDEXED_VALUE_TYPE_BOOL
  maybeToEnum 6 = Prelude.Just INDEXED_VALUE_TYPE_DATETIME
  maybeToEnum 7 = Prelude.Just INDEXED_VALUE_TYPE_KEYWORD_LIST
  maybeToEnum k
    = Prelude.Just
        (IndexedValueType'Unrecognized
           (IndexedValueType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum INDEXED_VALUE_TYPE_UNSPECIFIED
    = "INDEXED_VALUE_TYPE_UNSPECIFIED"
  showEnum INDEXED_VALUE_TYPE_TEXT = "INDEXED_VALUE_TYPE_TEXT"
  showEnum INDEXED_VALUE_TYPE_KEYWORD = "INDEXED_VALUE_TYPE_KEYWORD"
  showEnum INDEXED_VALUE_TYPE_INT = "INDEXED_VALUE_TYPE_INT"
  showEnum INDEXED_VALUE_TYPE_DOUBLE = "INDEXED_VALUE_TYPE_DOUBLE"
  showEnum INDEXED_VALUE_TYPE_BOOL = "INDEXED_VALUE_TYPE_BOOL"
  showEnum INDEXED_VALUE_TYPE_DATETIME
    = "INDEXED_VALUE_TYPE_DATETIME"
  showEnum INDEXED_VALUE_TYPE_KEYWORD_LIST
    = "INDEXED_VALUE_TYPE_KEYWORD_LIST"
  showEnum
    (IndexedValueType'Unrecognized (IndexedValueType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "INDEXED_VALUE_TYPE_UNSPECIFIED"
    = Prelude.Just INDEXED_VALUE_TYPE_UNSPECIFIED
    | (Prelude.==) k "INDEXED_VALUE_TYPE_TEXT"
    = Prelude.Just INDEXED_VALUE_TYPE_TEXT
    | (Prelude.==) k "INDEXED_VALUE_TYPE_KEYWORD"
    = Prelude.Just INDEXED_VALUE_TYPE_KEYWORD
    | (Prelude.==) k "INDEXED_VALUE_TYPE_INT"
    = Prelude.Just INDEXED_VALUE_TYPE_INT
    | (Prelude.==) k "INDEXED_VALUE_TYPE_DOUBLE"
    = Prelude.Just INDEXED_VALUE_TYPE_DOUBLE
    | (Prelude.==) k "INDEXED_VALUE_TYPE_BOOL"
    = Prelude.Just INDEXED_VALUE_TYPE_BOOL
    | (Prelude.==) k "INDEXED_VALUE_TYPE_DATETIME"
    = Prelude.Just INDEXED_VALUE_TYPE_DATETIME
    | (Prelude.==) k "INDEXED_VALUE_TYPE_KEYWORD_LIST"
    = Prelude.Just INDEXED_VALUE_TYPE_KEYWORD_LIST
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded IndexedValueType where
  minBound = INDEXED_VALUE_TYPE_UNSPECIFIED
  maxBound = INDEXED_VALUE_TYPE_KEYWORD_LIST
instance Prelude.Enum IndexedValueType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum IndexedValueType: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum INDEXED_VALUE_TYPE_UNSPECIFIED = 0
  fromEnum INDEXED_VALUE_TYPE_TEXT = 1
  fromEnum INDEXED_VALUE_TYPE_KEYWORD = 2
  fromEnum INDEXED_VALUE_TYPE_INT = 3
  fromEnum INDEXED_VALUE_TYPE_DOUBLE = 4
  fromEnum INDEXED_VALUE_TYPE_BOOL = 5
  fromEnum INDEXED_VALUE_TYPE_DATETIME = 6
  fromEnum INDEXED_VALUE_TYPE_KEYWORD_LIST = 7
  fromEnum
    (IndexedValueType'Unrecognized (IndexedValueType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ INDEXED_VALUE_TYPE_KEYWORD_LIST
    = Prelude.error
        "IndexedValueType.succ: bad argument INDEXED_VALUE_TYPE_KEYWORD_LIST. This value would be out of bounds."
  succ INDEXED_VALUE_TYPE_UNSPECIFIED = INDEXED_VALUE_TYPE_TEXT
  succ INDEXED_VALUE_TYPE_TEXT = INDEXED_VALUE_TYPE_KEYWORD
  succ INDEXED_VALUE_TYPE_KEYWORD = INDEXED_VALUE_TYPE_INT
  succ INDEXED_VALUE_TYPE_INT = INDEXED_VALUE_TYPE_DOUBLE
  succ INDEXED_VALUE_TYPE_DOUBLE = INDEXED_VALUE_TYPE_BOOL
  succ INDEXED_VALUE_TYPE_BOOL = INDEXED_VALUE_TYPE_DATETIME
  succ INDEXED_VALUE_TYPE_DATETIME = INDEXED_VALUE_TYPE_KEYWORD_LIST
  succ (IndexedValueType'Unrecognized _)
    = Prelude.error
        "IndexedValueType.succ: bad argument: unrecognized value"
  pred INDEXED_VALUE_TYPE_UNSPECIFIED
    = Prelude.error
        "IndexedValueType.pred: bad argument INDEXED_VALUE_TYPE_UNSPECIFIED. This value would be out of bounds."
  pred INDEXED_VALUE_TYPE_TEXT = INDEXED_VALUE_TYPE_UNSPECIFIED
  pred INDEXED_VALUE_TYPE_KEYWORD = INDEXED_VALUE_TYPE_TEXT
  pred INDEXED_VALUE_TYPE_INT = INDEXED_VALUE_TYPE_KEYWORD
  pred INDEXED_VALUE_TYPE_DOUBLE = INDEXED_VALUE_TYPE_INT
  pred INDEXED_VALUE_TYPE_BOOL = INDEXED_VALUE_TYPE_DOUBLE
  pred INDEXED_VALUE_TYPE_DATETIME = INDEXED_VALUE_TYPE_BOOL
  pred INDEXED_VALUE_TYPE_KEYWORD_LIST = INDEXED_VALUE_TYPE_DATETIME
  pred (IndexedValueType'Unrecognized _)
    = Prelude.error
        "IndexedValueType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault IndexedValueType where
  fieldDefault = INDEXED_VALUE_TYPE_UNSPECIFIED
instance Control.DeepSeq.NFData IndexedValueType where
  rnf x__ = Prelude.seq x__ ()
newtype NexusOperationCancellationState'UnrecognizedValue
  = NexusOperationCancellationState'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data NexusOperationCancellationState
  = NEXUS_OPERATION_CANCELLATION_STATE_UNSPECIFIED |
    NEXUS_OPERATION_CANCELLATION_STATE_SCHEDULED |
    NEXUS_OPERATION_CANCELLATION_STATE_BACKING_OFF |
    NEXUS_OPERATION_CANCELLATION_STATE_SUCCEEDED |
    NEXUS_OPERATION_CANCELLATION_STATE_FAILED |
    NEXUS_OPERATION_CANCELLATION_STATE_TIMED_OUT |
    NEXUS_OPERATION_CANCELLATION_STATE_BLOCKED |
    NexusOperationCancellationState'Unrecognized !NexusOperationCancellationState'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum NexusOperationCancellationState where
  maybeToEnum 0
    = Prelude.Just NEXUS_OPERATION_CANCELLATION_STATE_UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just NEXUS_OPERATION_CANCELLATION_STATE_SCHEDULED
  maybeToEnum 2
    = Prelude.Just NEXUS_OPERATION_CANCELLATION_STATE_BACKING_OFF
  maybeToEnum 3
    = Prelude.Just NEXUS_OPERATION_CANCELLATION_STATE_SUCCEEDED
  maybeToEnum 4
    = Prelude.Just NEXUS_OPERATION_CANCELLATION_STATE_FAILED
  maybeToEnum 5
    = Prelude.Just NEXUS_OPERATION_CANCELLATION_STATE_TIMED_OUT
  maybeToEnum 6
    = Prelude.Just NEXUS_OPERATION_CANCELLATION_STATE_BLOCKED
  maybeToEnum k
    = Prelude.Just
        (NexusOperationCancellationState'Unrecognized
           (NexusOperationCancellationState'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum NEXUS_OPERATION_CANCELLATION_STATE_UNSPECIFIED
    = "NEXUS_OPERATION_CANCELLATION_STATE_UNSPECIFIED"
  showEnum NEXUS_OPERATION_CANCELLATION_STATE_SCHEDULED
    = "NEXUS_OPERATION_CANCELLATION_STATE_SCHEDULED"
  showEnum NEXUS_OPERATION_CANCELLATION_STATE_BACKING_OFF
    = "NEXUS_OPERATION_CANCELLATION_STATE_BACKING_OFF"
  showEnum NEXUS_OPERATION_CANCELLATION_STATE_SUCCEEDED
    = "NEXUS_OPERATION_CANCELLATION_STATE_SUCCEEDED"
  showEnum NEXUS_OPERATION_CANCELLATION_STATE_FAILED
    = "NEXUS_OPERATION_CANCELLATION_STATE_FAILED"
  showEnum NEXUS_OPERATION_CANCELLATION_STATE_TIMED_OUT
    = "NEXUS_OPERATION_CANCELLATION_STATE_TIMED_OUT"
  showEnum NEXUS_OPERATION_CANCELLATION_STATE_BLOCKED
    = "NEXUS_OPERATION_CANCELLATION_STATE_BLOCKED"
  showEnum
    (NexusOperationCancellationState'Unrecognized (NexusOperationCancellationState'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "NEXUS_OPERATION_CANCELLATION_STATE_UNSPECIFIED"
    = Prelude.Just NEXUS_OPERATION_CANCELLATION_STATE_UNSPECIFIED
    | (Prelude.==) k "NEXUS_OPERATION_CANCELLATION_STATE_SCHEDULED"
    = Prelude.Just NEXUS_OPERATION_CANCELLATION_STATE_SCHEDULED
    | (Prelude.==) k "NEXUS_OPERATION_CANCELLATION_STATE_BACKING_OFF"
    = Prelude.Just NEXUS_OPERATION_CANCELLATION_STATE_BACKING_OFF
    | (Prelude.==) k "NEXUS_OPERATION_CANCELLATION_STATE_SUCCEEDED"
    = Prelude.Just NEXUS_OPERATION_CANCELLATION_STATE_SUCCEEDED
    | (Prelude.==) k "NEXUS_OPERATION_CANCELLATION_STATE_FAILED"
    = Prelude.Just NEXUS_OPERATION_CANCELLATION_STATE_FAILED
    | (Prelude.==) k "NEXUS_OPERATION_CANCELLATION_STATE_TIMED_OUT"
    = Prelude.Just NEXUS_OPERATION_CANCELLATION_STATE_TIMED_OUT
    | (Prelude.==) k "NEXUS_OPERATION_CANCELLATION_STATE_BLOCKED"
    = Prelude.Just NEXUS_OPERATION_CANCELLATION_STATE_BLOCKED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded NexusOperationCancellationState where
  minBound = NEXUS_OPERATION_CANCELLATION_STATE_UNSPECIFIED
  maxBound = NEXUS_OPERATION_CANCELLATION_STATE_BLOCKED
instance Prelude.Enum NexusOperationCancellationState where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum NexusOperationCancellationState: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum NEXUS_OPERATION_CANCELLATION_STATE_UNSPECIFIED = 0
  fromEnum NEXUS_OPERATION_CANCELLATION_STATE_SCHEDULED = 1
  fromEnum NEXUS_OPERATION_CANCELLATION_STATE_BACKING_OFF = 2
  fromEnum NEXUS_OPERATION_CANCELLATION_STATE_SUCCEEDED = 3
  fromEnum NEXUS_OPERATION_CANCELLATION_STATE_FAILED = 4
  fromEnum NEXUS_OPERATION_CANCELLATION_STATE_TIMED_OUT = 5
  fromEnum NEXUS_OPERATION_CANCELLATION_STATE_BLOCKED = 6
  fromEnum
    (NexusOperationCancellationState'Unrecognized (NexusOperationCancellationState'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ NEXUS_OPERATION_CANCELLATION_STATE_BLOCKED
    = Prelude.error
        "NexusOperationCancellationState.succ: bad argument NEXUS_OPERATION_CANCELLATION_STATE_BLOCKED. This value would be out of bounds."
  succ NEXUS_OPERATION_CANCELLATION_STATE_UNSPECIFIED
    = NEXUS_OPERATION_CANCELLATION_STATE_SCHEDULED
  succ NEXUS_OPERATION_CANCELLATION_STATE_SCHEDULED
    = NEXUS_OPERATION_CANCELLATION_STATE_BACKING_OFF
  succ NEXUS_OPERATION_CANCELLATION_STATE_BACKING_OFF
    = NEXUS_OPERATION_CANCELLATION_STATE_SUCCEEDED
  succ NEXUS_OPERATION_CANCELLATION_STATE_SUCCEEDED
    = NEXUS_OPERATION_CANCELLATION_STATE_FAILED
  succ NEXUS_OPERATION_CANCELLATION_STATE_FAILED
    = NEXUS_OPERATION_CANCELLATION_STATE_TIMED_OUT
  succ NEXUS_OPERATION_CANCELLATION_STATE_TIMED_OUT
    = NEXUS_OPERATION_CANCELLATION_STATE_BLOCKED
  succ (NexusOperationCancellationState'Unrecognized _)
    = Prelude.error
        "NexusOperationCancellationState.succ: bad argument: unrecognized value"
  pred NEXUS_OPERATION_CANCELLATION_STATE_UNSPECIFIED
    = Prelude.error
        "NexusOperationCancellationState.pred: bad argument NEXUS_OPERATION_CANCELLATION_STATE_UNSPECIFIED. This value would be out of bounds."
  pred NEXUS_OPERATION_CANCELLATION_STATE_SCHEDULED
    = NEXUS_OPERATION_CANCELLATION_STATE_UNSPECIFIED
  pred NEXUS_OPERATION_CANCELLATION_STATE_BACKING_OFF
    = NEXUS_OPERATION_CANCELLATION_STATE_SCHEDULED
  pred NEXUS_OPERATION_CANCELLATION_STATE_SUCCEEDED
    = NEXUS_OPERATION_CANCELLATION_STATE_BACKING_OFF
  pred NEXUS_OPERATION_CANCELLATION_STATE_FAILED
    = NEXUS_OPERATION_CANCELLATION_STATE_SUCCEEDED
  pred NEXUS_OPERATION_CANCELLATION_STATE_TIMED_OUT
    = NEXUS_OPERATION_CANCELLATION_STATE_FAILED
  pred NEXUS_OPERATION_CANCELLATION_STATE_BLOCKED
    = NEXUS_OPERATION_CANCELLATION_STATE_TIMED_OUT
  pred (NexusOperationCancellationState'Unrecognized _)
    = Prelude.error
        "NexusOperationCancellationState.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault NexusOperationCancellationState where
  fieldDefault = NEXUS_OPERATION_CANCELLATION_STATE_UNSPECIFIED
instance Control.DeepSeq.NFData NexusOperationCancellationState where
  rnf x__ = Prelude.seq x__ ()
newtype PendingNexusOperationState'UnrecognizedValue
  = PendingNexusOperationState'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data PendingNexusOperationState
  = PENDING_NEXUS_OPERATION_STATE_UNSPECIFIED |
    PENDING_NEXUS_OPERATION_STATE_SCHEDULED |
    PENDING_NEXUS_OPERATION_STATE_BACKING_OFF |
    PENDING_NEXUS_OPERATION_STATE_STARTED |
    PENDING_NEXUS_OPERATION_STATE_BLOCKED |
    PendingNexusOperationState'Unrecognized !PendingNexusOperationState'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum PendingNexusOperationState where
  maybeToEnum 0
    = Prelude.Just PENDING_NEXUS_OPERATION_STATE_UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just PENDING_NEXUS_OPERATION_STATE_SCHEDULED
  maybeToEnum 2
    = Prelude.Just PENDING_NEXUS_OPERATION_STATE_BACKING_OFF
  maybeToEnum 3 = Prelude.Just PENDING_NEXUS_OPERATION_STATE_STARTED
  maybeToEnum 4 = Prelude.Just PENDING_NEXUS_OPERATION_STATE_BLOCKED
  maybeToEnum k
    = Prelude.Just
        (PendingNexusOperationState'Unrecognized
           (PendingNexusOperationState'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum PENDING_NEXUS_OPERATION_STATE_UNSPECIFIED
    = "PENDING_NEXUS_OPERATION_STATE_UNSPECIFIED"
  showEnum PENDING_NEXUS_OPERATION_STATE_SCHEDULED
    = "PENDING_NEXUS_OPERATION_STATE_SCHEDULED"
  showEnum PENDING_NEXUS_OPERATION_STATE_BACKING_OFF
    = "PENDING_NEXUS_OPERATION_STATE_BACKING_OFF"
  showEnum PENDING_NEXUS_OPERATION_STATE_STARTED
    = "PENDING_NEXUS_OPERATION_STATE_STARTED"
  showEnum PENDING_NEXUS_OPERATION_STATE_BLOCKED
    = "PENDING_NEXUS_OPERATION_STATE_BLOCKED"
  showEnum
    (PendingNexusOperationState'Unrecognized (PendingNexusOperationState'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "PENDING_NEXUS_OPERATION_STATE_UNSPECIFIED"
    = Prelude.Just PENDING_NEXUS_OPERATION_STATE_UNSPECIFIED
    | (Prelude.==) k "PENDING_NEXUS_OPERATION_STATE_SCHEDULED"
    = Prelude.Just PENDING_NEXUS_OPERATION_STATE_SCHEDULED
    | (Prelude.==) k "PENDING_NEXUS_OPERATION_STATE_BACKING_OFF"
    = Prelude.Just PENDING_NEXUS_OPERATION_STATE_BACKING_OFF
    | (Prelude.==) k "PENDING_NEXUS_OPERATION_STATE_STARTED"
    = Prelude.Just PENDING_NEXUS_OPERATION_STATE_STARTED
    | (Prelude.==) k "PENDING_NEXUS_OPERATION_STATE_BLOCKED"
    = Prelude.Just PENDING_NEXUS_OPERATION_STATE_BLOCKED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded PendingNexusOperationState where
  minBound = PENDING_NEXUS_OPERATION_STATE_UNSPECIFIED
  maxBound = PENDING_NEXUS_OPERATION_STATE_BLOCKED
instance Prelude.Enum PendingNexusOperationState where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum PendingNexusOperationState: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum PENDING_NEXUS_OPERATION_STATE_UNSPECIFIED = 0
  fromEnum PENDING_NEXUS_OPERATION_STATE_SCHEDULED = 1
  fromEnum PENDING_NEXUS_OPERATION_STATE_BACKING_OFF = 2
  fromEnum PENDING_NEXUS_OPERATION_STATE_STARTED = 3
  fromEnum PENDING_NEXUS_OPERATION_STATE_BLOCKED = 4
  fromEnum
    (PendingNexusOperationState'Unrecognized (PendingNexusOperationState'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ PENDING_NEXUS_OPERATION_STATE_BLOCKED
    = Prelude.error
        "PendingNexusOperationState.succ: bad argument PENDING_NEXUS_OPERATION_STATE_BLOCKED. This value would be out of bounds."
  succ PENDING_NEXUS_OPERATION_STATE_UNSPECIFIED
    = PENDING_NEXUS_OPERATION_STATE_SCHEDULED
  succ PENDING_NEXUS_OPERATION_STATE_SCHEDULED
    = PENDING_NEXUS_OPERATION_STATE_BACKING_OFF
  succ PENDING_NEXUS_OPERATION_STATE_BACKING_OFF
    = PENDING_NEXUS_OPERATION_STATE_STARTED
  succ PENDING_NEXUS_OPERATION_STATE_STARTED
    = PENDING_NEXUS_OPERATION_STATE_BLOCKED
  succ (PendingNexusOperationState'Unrecognized _)
    = Prelude.error
        "PendingNexusOperationState.succ: bad argument: unrecognized value"
  pred PENDING_NEXUS_OPERATION_STATE_UNSPECIFIED
    = Prelude.error
        "PendingNexusOperationState.pred: bad argument PENDING_NEXUS_OPERATION_STATE_UNSPECIFIED. This value would be out of bounds."
  pred PENDING_NEXUS_OPERATION_STATE_SCHEDULED
    = PENDING_NEXUS_OPERATION_STATE_UNSPECIFIED
  pred PENDING_NEXUS_OPERATION_STATE_BACKING_OFF
    = PENDING_NEXUS_OPERATION_STATE_SCHEDULED
  pred PENDING_NEXUS_OPERATION_STATE_STARTED
    = PENDING_NEXUS_OPERATION_STATE_BACKING_OFF
  pred PENDING_NEXUS_OPERATION_STATE_BLOCKED
    = PENDING_NEXUS_OPERATION_STATE_STARTED
  pred (PendingNexusOperationState'Unrecognized _)
    = Prelude.error
        "PendingNexusOperationState.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault PendingNexusOperationState where
  fieldDefault = PENDING_NEXUS_OPERATION_STATE_UNSPECIFIED
instance Control.DeepSeq.NFData PendingNexusOperationState where
  rnf x__ = Prelude.seq x__ ()
newtype Severity'UnrecognizedValue
  = Severity'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Severity
  = SEVERITY_UNSPECIFIED |
    SEVERITY_HIGH |
    SEVERITY_MEDIUM |
    SEVERITY_LOW |
    Severity'Unrecognized !Severity'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Severity where
  maybeToEnum 0 = Prelude.Just SEVERITY_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just SEVERITY_HIGH
  maybeToEnum 2 = Prelude.Just SEVERITY_MEDIUM
  maybeToEnum 3 = Prelude.Just SEVERITY_LOW
  maybeToEnum k
    = Prelude.Just
        (Severity'Unrecognized
           (Severity'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum SEVERITY_UNSPECIFIED = "SEVERITY_UNSPECIFIED"
  showEnum SEVERITY_HIGH = "SEVERITY_HIGH"
  showEnum SEVERITY_MEDIUM = "SEVERITY_MEDIUM"
  showEnum SEVERITY_LOW = "SEVERITY_LOW"
  showEnum (Severity'Unrecognized (Severity'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "SEVERITY_UNSPECIFIED"
    = Prelude.Just SEVERITY_UNSPECIFIED
    | (Prelude.==) k "SEVERITY_HIGH" = Prelude.Just SEVERITY_HIGH
    | (Prelude.==) k "SEVERITY_MEDIUM" = Prelude.Just SEVERITY_MEDIUM
    | (Prelude.==) k "SEVERITY_LOW" = Prelude.Just SEVERITY_LOW
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Severity where
  minBound = SEVERITY_UNSPECIFIED
  maxBound = SEVERITY_LOW
instance Prelude.Enum Severity where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Severity: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum SEVERITY_UNSPECIFIED = 0
  fromEnum SEVERITY_HIGH = 1
  fromEnum SEVERITY_MEDIUM = 2
  fromEnum SEVERITY_LOW = 3
  fromEnum (Severity'Unrecognized (Severity'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ SEVERITY_LOW
    = Prelude.error
        "Severity.succ: bad argument SEVERITY_LOW. This value would be out of bounds."
  succ SEVERITY_UNSPECIFIED = SEVERITY_HIGH
  succ SEVERITY_HIGH = SEVERITY_MEDIUM
  succ SEVERITY_MEDIUM = SEVERITY_LOW
  succ (Severity'Unrecognized _)
    = Prelude.error "Severity.succ: bad argument: unrecognized value"
  pred SEVERITY_UNSPECIFIED
    = Prelude.error
        "Severity.pred: bad argument SEVERITY_UNSPECIFIED. This value would be out of bounds."
  pred SEVERITY_HIGH = SEVERITY_UNSPECIFIED
  pred SEVERITY_MEDIUM = SEVERITY_HIGH
  pred SEVERITY_LOW = SEVERITY_MEDIUM
  pred (Severity'Unrecognized _)
    = Prelude.error "Severity.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Severity where
  fieldDefault = SEVERITY_UNSPECIFIED
instance Control.DeepSeq.NFData Severity where
  rnf x__ = Prelude.seq x__ ()
newtype WorkerStatus'UnrecognizedValue
  = WorkerStatus'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data WorkerStatus
  = WORKER_STATUS_UNSPECIFIED |
    WORKER_STATUS_RUNNING |
    WORKER_STATUS_SHUTTING_DOWN |
    WORKER_STATUS_SHUTDOWN |
    WorkerStatus'Unrecognized !WorkerStatus'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum WorkerStatus where
  maybeToEnum 0 = Prelude.Just WORKER_STATUS_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just WORKER_STATUS_RUNNING
  maybeToEnum 2 = Prelude.Just WORKER_STATUS_SHUTTING_DOWN
  maybeToEnum 3 = Prelude.Just WORKER_STATUS_SHUTDOWN
  maybeToEnum k
    = Prelude.Just
        (WorkerStatus'Unrecognized
           (WorkerStatus'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum WORKER_STATUS_UNSPECIFIED = "WORKER_STATUS_UNSPECIFIED"
  showEnum WORKER_STATUS_RUNNING = "WORKER_STATUS_RUNNING"
  showEnum WORKER_STATUS_SHUTTING_DOWN
    = "WORKER_STATUS_SHUTTING_DOWN"
  showEnum WORKER_STATUS_SHUTDOWN = "WORKER_STATUS_SHUTDOWN"
  showEnum
    (WorkerStatus'Unrecognized (WorkerStatus'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "WORKER_STATUS_UNSPECIFIED"
    = Prelude.Just WORKER_STATUS_UNSPECIFIED
    | (Prelude.==) k "WORKER_STATUS_RUNNING"
    = Prelude.Just WORKER_STATUS_RUNNING
    | (Prelude.==) k "WORKER_STATUS_SHUTTING_DOWN"
    = Prelude.Just WORKER_STATUS_SHUTTING_DOWN
    | (Prelude.==) k "WORKER_STATUS_SHUTDOWN"
    = Prelude.Just WORKER_STATUS_SHUTDOWN
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded WorkerStatus where
  minBound = WORKER_STATUS_UNSPECIFIED
  maxBound = WORKER_STATUS_SHUTDOWN
instance Prelude.Enum WorkerStatus where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum WorkerStatus: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum WORKER_STATUS_UNSPECIFIED = 0
  fromEnum WORKER_STATUS_RUNNING = 1
  fromEnum WORKER_STATUS_SHUTTING_DOWN = 2
  fromEnum WORKER_STATUS_SHUTDOWN = 3
  fromEnum
    (WorkerStatus'Unrecognized (WorkerStatus'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ WORKER_STATUS_SHUTDOWN
    = Prelude.error
        "WorkerStatus.succ: bad argument WORKER_STATUS_SHUTDOWN. This value would be out of bounds."
  succ WORKER_STATUS_UNSPECIFIED = WORKER_STATUS_RUNNING
  succ WORKER_STATUS_RUNNING = WORKER_STATUS_SHUTTING_DOWN
  succ WORKER_STATUS_SHUTTING_DOWN = WORKER_STATUS_SHUTDOWN
  succ (WorkerStatus'Unrecognized _)
    = Prelude.error
        "WorkerStatus.succ: bad argument: unrecognized value"
  pred WORKER_STATUS_UNSPECIFIED
    = Prelude.error
        "WorkerStatus.pred: bad argument WORKER_STATUS_UNSPECIFIED. This value would be out of bounds."
  pred WORKER_STATUS_RUNNING = WORKER_STATUS_UNSPECIFIED
  pred WORKER_STATUS_SHUTTING_DOWN = WORKER_STATUS_RUNNING
  pred WORKER_STATUS_SHUTDOWN = WORKER_STATUS_SHUTTING_DOWN
  pred (WorkerStatus'Unrecognized _)
    = Prelude.error
        "WorkerStatus.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault WorkerStatus where
  fieldDefault = WORKER_STATUS_UNSPECIFIED
instance Control.DeepSeq.NFData WorkerStatus where
  rnf x__ = Prelude.seq x__ ()
newtype WorkflowRuleActionScope'UnrecognizedValue
  = WorkflowRuleActionScope'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data WorkflowRuleActionScope
  = WORKFLOW_RULE_ACTION_SCOPE_UNSPECIFIED |
    WORKFLOW_RULE_ACTION_SCOPE_WORKFLOW |
    WORKFLOW_RULE_ACTION_SCOPE_ACTIVITY |
    WorkflowRuleActionScope'Unrecognized !WorkflowRuleActionScope'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum WorkflowRuleActionScope where
  maybeToEnum 0 = Prelude.Just WORKFLOW_RULE_ACTION_SCOPE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just WORKFLOW_RULE_ACTION_SCOPE_WORKFLOW
  maybeToEnum 2 = Prelude.Just WORKFLOW_RULE_ACTION_SCOPE_ACTIVITY
  maybeToEnum k
    = Prelude.Just
        (WorkflowRuleActionScope'Unrecognized
           (WorkflowRuleActionScope'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum WORKFLOW_RULE_ACTION_SCOPE_UNSPECIFIED
    = "WORKFLOW_RULE_ACTION_SCOPE_UNSPECIFIED"
  showEnum WORKFLOW_RULE_ACTION_SCOPE_WORKFLOW
    = "WORKFLOW_RULE_ACTION_SCOPE_WORKFLOW"
  showEnum WORKFLOW_RULE_ACTION_SCOPE_ACTIVITY
    = "WORKFLOW_RULE_ACTION_SCOPE_ACTIVITY"
  showEnum
    (WorkflowRuleActionScope'Unrecognized (WorkflowRuleActionScope'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "WORKFLOW_RULE_ACTION_SCOPE_UNSPECIFIED"
    = Prelude.Just WORKFLOW_RULE_ACTION_SCOPE_UNSPECIFIED
    | (Prelude.==) k "WORKFLOW_RULE_ACTION_SCOPE_WORKFLOW"
    = Prelude.Just WORKFLOW_RULE_ACTION_SCOPE_WORKFLOW
    | (Prelude.==) k "WORKFLOW_RULE_ACTION_SCOPE_ACTIVITY"
    = Prelude.Just WORKFLOW_RULE_ACTION_SCOPE_ACTIVITY
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded WorkflowRuleActionScope where
  minBound = WORKFLOW_RULE_ACTION_SCOPE_UNSPECIFIED
  maxBound = WORKFLOW_RULE_ACTION_SCOPE_ACTIVITY
instance Prelude.Enum WorkflowRuleActionScope where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum WorkflowRuleActionScope: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum WORKFLOW_RULE_ACTION_SCOPE_UNSPECIFIED = 0
  fromEnum WORKFLOW_RULE_ACTION_SCOPE_WORKFLOW = 1
  fromEnum WORKFLOW_RULE_ACTION_SCOPE_ACTIVITY = 2
  fromEnum
    (WorkflowRuleActionScope'Unrecognized (WorkflowRuleActionScope'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ WORKFLOW_RULE_ACTION_SCOPE_ACTIVITY
    = Prelude.error
        "WorkflowRuleActionScope.succ: bad argument WORKFLOW_RULE_ACTION_SCOPE_ACTIVITY. This value would be out of bounds."
  succ WORKFLOW_RULE_ACTION_SCOPE_UNSPECIFIED
    = WORKFLOW_RULE_ACTION_SCOPE_WORKFLOW
  succ WORKFLOW_RULE_ACTION_SCOPE_WORKFLOW
    = WORKFLOW_RULE_ACTION_SCOPE_ACTIVITY
  succ (WorkflowRuleActionScope'Unrecognized _)
    = Prelude.error
        "WorkflowRuleActionScope.succ: bad argument: unrecognized value"
  pred WORKFLOW_RULE_ACTION_SCOPE_UNSPECIFIED
    = Prelude.error
        "WorkflowRuleActionScope.pred: bad argument WORKFLOW_RULE_ACTION_SCOPE_UNSPECIFIED. This value would be out of bounds."
  pred WORKFLOW_RULE_ACTION_SCOPE_WORKFLOW
    = WORKFLOW_RULE_ACTION_SCOPE_UNSPECIFIED
  pred WORKFLOW_RULE_ACTION_SCOPE_ACTIVITY
    = WORKFLOW_RULE_ACTION_SCOPE_WORKFLOW
  pred (WorkflowRuleActionScope'Unrecognized _)
    = Prelude.error
        "WorkflowRuleActionScope.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault WorkflowRuleActionScope where
  fieldDefault = WORKFLOW_RULE_ACTION_SCOPE_UNSPECIFIED
instance Control.DeepSeq.NFData WorkflowRuleActionScope where
  rnf x__ = Prelude.seq x__ ()