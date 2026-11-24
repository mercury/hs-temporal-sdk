{- This file was auto-generated from temporal/api/enums/v1/batch_operation.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Enums.V1.BatchOperation (
        BatchOperationState(..), BatchOperationState(),
        BatchOperationState'UnrecognizedValue, BatchOperationType(..),
        BatchOperationType(), BatchOperationType'UnrecognizedValue
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
newtype BatchOperationState'UnrecognizedValue
  = BatchOperationState'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data BatchOperationState
  = BATCH_OPERATION_STATE_UNSPECIFIED |
    BATCH_OPERATION_STATE_RUNNING |
    BATCH_OPERATION_STATE_COMPLETED |
    BATCH_OPERATION_STATE_FAILED |
    BatchOperationState'Unrecognized !BatchOperationState'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum BatchOperationState where
  maybeToEnum 0 = Prelude.Just BATCH_OPERATION_STATE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just BATCH_OPERATION_STATE_RUNNING
  maybeToEnum 2 = Prelude.Just BATCH_OPERATION_STATE_COMPLETED
  maybeToEnum 3 = Prelude.Just BATCH_OPERATION_STATE_FAILED
  maybeToEnum k
    = Prelude.Just
        (BatchOperationState'Unrecognized
           (BatchOperationState'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum BATCH_OPERATION_STATE_UNSPECIFIED
    = "BATCH_OPERATION_STATE_UNSPECIFIED"
  showEnum BATCH_OPERATION_STATE_RUNNING
    = "BATCH_OPERATION_STATE_RUNNING"
  showEnum BATCH_OPERATION_STATE_COMPLETED
    = "BATCH_OPERATION_STATE_COMPLETED"
  showEnum BATCH_OPERATION_STATE_FAILED
    = "BATCH_OPERATION_STATE_FAILED"
  showEnum
    (BatchOperationState'Unrecognized (BatchOperationState'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "BATCH_OPERATION_STATE_UNSPECIFIED"
    = Prelude.Just BATCH_OPERATION_STATE_UNSPECIFIED
    | (Prelude.==) k "BATCH_OPERATION_STATE_RUNNING"
    = Prelude.Just BATCH_OPERATION_STATE_RUNNING
    | (Prelude.==) k "BATCH_OPERATION_STATE_COMPLETED"
    = Prelude.Just BATCH_OPERATION_STATE_COMPLETED
    | (Prelude.==) k "BATCH_OPERATION_STATE_FAILED"
    = Prelude.Just BATCH_OPERATION_STATE_FAILED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded BatchOperationState where
  minBound = BATCH_OPERATION_STATE_UNSPECIFIED
  maxBound = BATCH_OPERATION_STATE_FAILED
instance Prelude.Enum BatchOperationState where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum BatchOperationState: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum BATCH_OPERATION_STATE_UNSPECIFIED = 0
  fromEnum BATCH_OPERATION_STATE_RUNNING = 1
  fromEnum BATCH_OPERATION_STATE_COMPLETED = 2
  fromEnum BATCH_OPERATION_STATE_FAILED = 3
  fromEnum
    (BatchOperationState'Unrecognized (BatchOperationState'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ BATCH_OPERATION_STATE_FAILED
    = Prelude.error
        "BatchOperationState.succ: bad argument BATCH_OPERATION_STATE_FAILED. This value would be out of bounds."
  succ BATCH_OPERATION_STATE_UNSPECIFIED
    = BATCH_OPERATION_STATE_RUNNING
  succ BATCH_OPERATION_STATE_RUNNING
    = BATCH_OPERATION_STATE_COMPLETED
  succ BATCH_OPERATION_STATE_COMPLETED = BATCH_OPERATION_STATE_FAILED
  succ (BatchOperationState'Unrecognized _)
    = Prelude.error
        "BatchOperationState.succ: bad argument: unrecognized value"
  pred BATCH_OPERATION_STATE_UNSPECIFIED
    = Prelude.error
        "BatchOperationState.pred: bad argument BATCH_OPERATION_STATE_UNSPECIFIED. This value would be out of bounds."
  pred BATCH_OPERATION_STATE_RUNNING
    = BATCH_OPERATION_STATE_UNSPECIFIED
  pred BATCH_OPERATION_STATE_COMPLETED
    = BATCH_OPERATION_STATE_RUNNING
  pred BATCH_OPERATION_STATE_FAILED = BATCH_OPERATION_STATE_COMPLETED
  pred (BatchOperationState'Unrecognized _)
    = Prelude.error
        "BatchOperationState.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault BatchOperationState where
  fieldDefault = BATCH_OPERATION_STATE_UNSPECIFIED
instance Control.DeepSeq.NFData BatchOperationState where
  rnf x__ = Prelude.seq x__ ()
newtype BatchOperationType'UnrecognizedValue
  = BatchOperationType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data BatchOperationType
  = BATCH_OPERATION_TYPE_UNSPECIFIED |
    BATCH_OPERATION_TYPE_TERMINATE |
    BATCH_OPERATION_TYPE_CANCEL |
    BATCH_OPERATION_TYPE_SIGNAL |
    BATCH_OPERATION_TYPE_DELETE |
    BATCH_OPERATION_TYPE_RESET |
    BATCH_OPERATION_TYPE_UPDATE_EXECUTION_OPTIONS |
    BATCH_OPERATION_TYPE_UNPAUSE_ACTIVITY |
    BATCH_OPERATION_TYPE_UPDATE_ACTIVITY_OPTIONS |
    BATCH_OPERATION_TYPE_RESET_ACTIVITY |
    BATCH_OPERATION_TYPE_TERMINATE_ACTIVITY |
    BATCH_OPERATION_TYPE_CANCEL_ACTIVITY |
    BATCH_OPERATION_TYPE_DELETE_ACTIVITY |
    BATCH_OPERATION_TYPE_TERMINATE_WORKFLOW |
    BATCH_OPERATION_TYPE_CANCEL_WORKFLOW |
    BATCH_OPERATION_TYPE_SIGNAL_WORKFLOW |
    BATCH_OPERATION_TYPE_DELETE_WORKFLOW |
    BATCH_OPERATION_TYPE_RESET_WORKFLOW |
    BATCH_OPERATION_TYPE_UPDATE_WORKFLOW_EXECUTION_OPTIONS |
    BatchOperationType'Unrecognized !BatchOperationType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum BatchOperationType where
  maybeToEnum 0 = Prelude.Just BATCH_OPERATION_TYPE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just BATCH_OPERATION_TYPE_TERMINATE
  maybeToEnum 2 = Prelude.Just BATCH_OPERATION_TYPE_CANCEL
  maybeToEnum 3 = Prelude.Just BATCH_OPERATION_TYPE_SIGNAL
  maybeToEnum 4 = Prelude.Just BATCH_OPERATION_TYPE_DELETE
  maybeToEnum 5 = Prelude.Just BATCH_OPERATION_TYPE_RESET
  maybeToEnum 6
    = Prelude.Just BATCH_OPERATION_TYPE_UPDATE_EXECUTION_OPTIONS
  maybeToEnum 7 = Prelude.Just BATCH_OPERATION_TYPE_UNPAUSE_ACTIVITY
  maybeToEnum 8
    = Prelude.Just BATCH_OPERATION_TYPE_UPDATE_ACTIVITY_OPTIONS
  maybeToEnum 9 = Prelude.Just BATCH_OPERATION_TYPE_RESET_ACTIVITY
  maybeToEnum 10
    = Prelude.Just BATCH_OPERATION_TYPE_TERMINATE_ACTIVITY
  maybeToEnum 11 = Prelude.Just BATCH_OPERATION_TYPE_CANCEL_ACTIVITY
  maybeToEnum 12 = Prelude.Just BATCH_OPERATION_TYPE_DELETE_ACTIVITY
  maybeToEnum 13
    = Prelude.Just BATCH_OPERATION_TYPE_TERMINATE_WORKFLOW
  maybeToEnum 14 = Prelude.Just BATCH_OPERATION_TYPE_CANCEL_WORKFLOW
  maybeToEnum 15 = Prelude.Just BATCH_OPERATION_TYPE_SIGNAL_WORKFLOW
  maybeToEnum 16 = Prelude.Just BATCH_OPERATION_TYPE_DELETE_WORKFLOW
  maybeToEnum 17 = Prelude.Just BATCH_OPERATION_TYPE_RESET_WORKFLOW
  maybeToEnum 18
    = Prelude.Just
        BATCH_OPERATION_TYPE_UPDATE_WORKFLOW_EXECUTION_OPTIONS
  maybeToEnum k
    = Prelude.Just
        (BatchOperationType'Unrecognized
           (BatchOperationType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum BATCH_OPERATION_TYPE_UNSPECIFIED
    = "BATCH_OPERATION_TYPE_UNSPECIFIED"
  showEnum BATCH_OPERATION_TYPE_TERMINATE
    = "BATCH_OPERATION_TYPE_TERMINATE"
  showEnum BATCH_OPERATION_TYPE_TERMINATE_WORKFLOW
    = "BATCH_OPERATION_TYPE_TERMINATE_WORKFLOW"
  showEnum BATCH_OPERATION_TYPE_CANCEL
    = "BATCH_OPERATION_TYPE_CANCEL"
  showEnum BATCH_OPERATION_TYPE_CANCEL_WORKFLOW
    = "BATCH_OPERATION_TYPE_CANCEL_WORKFLOW"
  showEnum BATCH_OPERATION_TYPE_SIGNAL
    = "BATCH_OPERATION_TYPE_SIGNAL"
  showEnum BATCH_OPERATION_TYPE_SIGNAL_WORKFLOW
    = "BATCH_OPERATION_TYPE_SIGNAL_WORKFLOW"
  showEnum BATCH_OPERATION_TYPE_DELETE
    = "BATCH_OPERATION_TYPE_DELETE"
  showEnum BATCH_OPERATION_TYPE_DELETE_WORKFLOW
    = "BATCH_OPERATION_TYPE_DELETE_WORKFLOW"
  showEnum BATCH_OPERATION_TYPE_RESET = "BATCH_OPERATION_TYPE_RESET"
  showEnum BATCH_OPERATION_TYPE_RESET_WORKFLOW
    = "BATCH_OPERATION_TYPE_RESET_WORKFLOW"
  showEnum BATCH_OPERATION_TYPE_UPDATE_EXECUTION_OPTIONS
    = "BATCH_OPERATION_TYPE_UPDATE_EXECUTION_OPTIONS"
  showEnum BATCH_OPERATION_TYPE_UPDATE_WORKFLOW_EXECUTION_OPTIONS
    = "BATCH_OPERATION_TYPE_UPDATE_WORKFLOW_EXECUTION_OPTIONS"
  showEnum BATCH_OPERATION_TYPE_UNPAUSE_ACTIVITY
    = "BATCH_OPERATION_TYPE_UNPAUSE_ACTIVITY"
  showEnum BATCH_OPERATION_TYPE_UPDATE_ACTIVITY_OPTIONS
    = "BATCH_OPERATION_TYPE_UPDATE_ACTIVITY_OPTIONS"
  showEnum BATCH_OPERATION_TYPE_RESET_ACTIVITY
    = "BATCH_OPERATION_TYPE_RESET_ACTIVITY"
  showEnum BATCH_OPERATION_TYPE_TERMINATE_ACTIVITY
    = "BATCH_OPERATION_TYPE_TERMINATE_ACTIVITY"
  showEnum BATCH_OPERATION_TYPE_CANCEL_ACTIVITY
    = "BATCH_OPERATION_TYPE_CANCEL_ACTIVITY"
  showEnum BATCH_OPERATION_TYPE_DELETE_ACTIVITY
    = "BATCH_OPERATION_TYPE_DELETE_ACTIVITY"
  showEnum
    (BatchOperationType'Unrecognized (BatchOperationType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "BATCH_OPERATION_TYPE_UNSPECIFIED"
    = Prelude.Just BATCH_OPERATION_TYPE_UNSPECIFIED
    | (Prelude.==) k "BATCH_OPERATION_TYPE_TERMINATE"
    = Prelude.Just BATCH_OPERATION_TYPE_TERMINATE
    | (Prelude.==) k "BATCH_OPERATION_TYPE_TERMINATE_WORKFLOW"
    = Prelude.Just BATCH_OPERATION_TYPE_TERMINATE_WORKFLOW
    | (Prelude.==) k "BATCH_OPERATION_TYPE_CANCEL"
    = Prelude.Just BATCH_OPERATION_TYPE_CANCEL
    | (Prelude.==) k "BATCH_OPERATION_TYPE_CANCEL_WORKFLOW"
    = Prelude.Just BATCH_OPERATION_TYPE_CANCEL_WORKFLOW
    | (Prelude.==) k "BATCH_OPERATION_TYPE_SIGNAL"
    = Prelude.Just BATCH_OPERATION_TYPE_SIGNAL
    | (Prelude.==) k "BATCH_OPERATION_TYPE_SIGNAL_WORKFLOW"
    = Prelude.Just BATCH_OPERATION_TYPE_SIGNAL_WORKFLOW
    | (Prelude.==) k "BATCH_OPERATION_TYPE_DELETE"
    = Prelude.Just BATCH_OPERATION_TYPE_DELETE
    | (Prelude.==) k "BATCH_OPERATION_TYPE_DELETE_WORKFLOW"
    = Prelude.Just BATCH_OPERATION_TYPE_DELETE_WORKFLOW
    | (Prelude.==) k "BATCH_OPERATION_TYPE_RESET"
    = Prelude.Just BATCH_OPERATION_TYPE_RESET
    | (Prelude.==) k "BATCH_OPERATION_TYPE_RESET_WORKFLOW"
    = Prelude.Just BATCH_OPERATION_TYPE_RESET_WORKFLOW
    | (Prelude.==) k "BATCH_OPERATION_TYPE_UPDATE_EXECUTION_OPTIONS"
    = Prelude.Just BATCH_OPERATION_TYPE_UPDATE_EXECUTION_OPTIONS
    | (Prelude.==)
        k "BATCH_OPERATION_TYPE_UPDATE_WORKFLOW_EXECUTION_OPTIONS"
    = Prelude.Just
        BATCH_OPERATION_TYPE_UPDATE_WORKFLOW_EXECUTION_OPTIONS
    | (Prelude.==) k "BATCH_OPERATION_TYPE_UNPAUSE_ACTIVITY"
    = Prelude.Just BATCH_OPERATION_TYPE_UNPAUSE_ACTIVITY
    | (Prelude.==) k "BATCH_OPERATION_TYPE_UPDATE_ACTIVITY_OPTIONS"
    = Prelude.Just BATCH_OPERATION_TYPE_UPDATE_ACTIVITY_OPTIONS
    | (Prelude.==) k "BATCH_OPERATION_TYPE_RESET_ACTIVITY"
    = Prelude.Just BATCH_OPERATION_TYPE_RESET_ACTIVITY
    | (Prelude.==) k "BATCH_OPERATION_TYPE_TERMINATE_ACTIVITY"
    = Prelude.Just BATCH_OPERATION_TYPE_TERMINATE_ACTIVITY
    | (Prelude.==) k "BATCH_OPERATION_TYPE_CANCEL_ACTIVITY"
    = Prelude.Just BATCH_OPERATION_TYPE_CANCEL_ACTIVITY
    | (Prelude.==) k "BATCH_OPERATION_TYPE_DELETE_ACTIVITY"
    = Prelude.Just BATCH_OPERATION_TYPE_DELETE_ACTIVITY
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded BatchOperationType where
  minBound = BATCH_OPERATION_TYPE_UNSPECIFIED
  maxBound = BATCH_OPERATION_TYPE_UPDATE_WORKFLOW_EXECUTION_OPTIONS
instance Prelude.Enum BatchOperationType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum BatchOperationType: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum BATCH_OPERATION_TYPE_UNSPECIFIED = 0
  fromEnum BATCH_OPERATION_TYPE_TERMINATE = 1
  fromEnum BATCH_OPERATION_TYPE_CANCEL = 2
  fromEnum BATCH_OPERATION_TYPE_SIGNAL = 3
  fromEnum BATCH_OPERATION_TYPE_DELETE = 4
  fromEnum BATCH_OPERATION_TYPE_RESET = 5
  fromEnum BATCH_OPERATION_TYPE_UPDATE_EXECUTION_OPTIONS = 6
  fromEnum BATCH_OPERATION_TYPE_UNPAUSE_ACTIVITY = 7
  fromEnum BATCH_OPERATION_TYPE_UPDATE_ACTIVITY_OPTIONS = 8
  fromEnum BATCH_OPERATION_TYPE_RESET_ACTIVITY = 9
  fromEnum BATCH_OPERATION_TYPE_TERMINATE_ACTIVITY = 10
  fromEnum BATCH_OPERATION_TYPE_CANCEL_ACTIVITY = 11
  fromEnum BATCH_OPERATION_TYPE_DELETE_ACTIVITY = 12
  fromEnum BATCH_OPERATION_TYPE_TERMINATE_WORKFLOW = 13
  fromEnum BATCH_OPERATION_TYPE_CANCEL_WORKFLOW = 14
  fromEnum BATCH_OPERATION_TYPE_SIGNAL_WORKFLOW = 15
  fromEnum BATCH_OPERATION_TYPE_DELETE_WORKFLOW = 16
  fromEnum BATCH_OPERATION_TYPE_RESET_WORKFLOW = 17
  fromEnum BATCH_OPERATION_TYPE_UPDATE_WORKFLOW_EXECUTION_OPTIONS
    = 18
  fromEnum
    (BatchOperationType'Unrecognized (BatchOperationType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ BATCH_OPERATION_TYPE_UPDATE_WORKFLOW_EXECUTION_OPTIONS
    = Prelude.error
        "BatchOperationType.succ: bad argument BATCH_OPERATION_TYPE_UPDATE_WORKFLOW_EXECUTION_OPTIONS. This value would be out of bounds."
  succ BATCH_OPERATION_TYPE_UNSPECIFIED
    = BATCH_OPERATION_TYPE_TERMINATE
  succ BATCH_OPERATION_TYPE_TERMINATE = BATCH_OPERATION_TYPE_CANCEL
  succ BATCH_OPERATION_TYPE_CANCEL = BATCH_OPERATION_TYPE_SIGNAL
  succ BATCH_OPERATION_TYPE_SIGNAL = BATCH_OPERATION_TYPE_DELETE
  succ BATCH_OPERATION_TYPE_DELETE = BATCH_OPERATION_TYPE_RESET
  succ BATCH_OPERATION_TYPE_RESET
    = BATCH_OPERATION_TYPE_UPDATE_EXECUTION_OPTIONS
  succ BATCH_OPERATION_TYPE_UPDATE_EXECUTION_OPTIONS
    = BATCH_OPERATION_TYPE_UNPAUSE_ACTIVITY
  succ BATCH_OPERATION_TYPE_UNPAUSE_ACTIVITY
    = BATCH_OPERATION_TYPE_UPDATE_ACTIVITY_OPTIONS
  succ BATCH_OPERATION_TYPE_UPDATE_ACTIVITY_OPTIONS
    = BATCH_OPERATION_TYPE_RESET_ACTIVITY
  succ BATCH_OPERATION_TYPE_RESET_ACTIVITY
    = BATCH_OPERATION_TYPE_TERMINATE_ACTIVITY
  succ BATCH_OPERATION_TYPE_TERMINATE_ACTIVITY
    = BATCH_OPERATION_TYPE_CANCEL_ACTIVITY
  succ BATCH_OPERATION_TYPE_CANCEL_ACTIVITY
    = BATCH_OPERATION_TYPE_DELETE_ACTIVITY
  succ BATCH_OPERATION_TYPE_DELETE_ACTIVITY
    = BATCH_OPERATION_TYPE_TERMINATE_WORKFLOW
  succ BATCH_OPERATION_TYPE_TERMINATE_WORKFLOW
    = BATCH_OPERATION_TYPE_CANCEL_WORKFLOW
  succ BATCH_OPERATION_TYPE_CANCEL_WORKFLOW
    = BATCH_OPERATION_TYPE_SIGNAL_WORKFLOW
  succ BATCH_OPERATION_TYPE_SIGNAL_WORKFLOW
    = BATCH_OPERATION_TYPE_DELETE_WORKFLOW
  succ BATCH_OPERATION_TYPE_DELETE_WORKFLOW
    = BATCH_OPERATION_TYPE_RESET_WORKFLOW
  succ BATCH_OPERATION_TYPE_RESET_WORKFLOW
    = BATCH_OPERATION_TYPE_UPDATE_WORKFLOW_EXECUTION_OPTIONS
  succ (BatchOperationType'Unrecognized _)
    = Prelude.error
        "BatchOperationType.succ: bad argument: unrecognized value"
  pred BATCH_OPERATION_TYPE_UNSPECIFIED
    = Prelude.error
        "BatchOperationType.pred: bad argument BATCH_OPERATION_TYPE_UNSPECIFIED. This value would be out of bounds."
  pred BATCH_OPERATION_TYPE_TERMINATE
    = BATCH_OPERATION_TYPE_UNSPECIFIED
  pred BATCH_OPERATION_TYPE_CANCEL = BATCH_OPERATION_TYPE_TERMINATE
  pred BATCH_OPERATION_TYPE_SIGNAL = BATCH_OPERATION_TYPE_CANCEL
  pred BATCH_OPERATION_TYPE_DELETE = BATCH_OPERATION_TYPE_SIGNAL
  pred BATCH_OPERATION_TYPE_RESET = BATCH_OPERATION_TYPE_DELETE
  pred BATCH_OPERATION_TYPE_UPDATE_EXECUTION_OPTIONS
    = BATCH_OPERATION_TYPE_RESET
  pred BATCH_OPERATION_TYPE_UNPAUSE_ACTIVITY
    = BATCH_OPERATION_TYPE_UPDATE_EXECUTION_OPTIONS
  pred BATCH_OPERATION_TYPE_UPDATE_ACTIVITY_OPTIONS
    = BATCH_OPERATION_TYPE_UNPAUSE_ACTIVITY
  pred BATCH_OPERATION_TYPE_RESET_ACTIVITY
    = BATCH_OPERATION_TYPE_UPDATE_ACTIVITY_OPTIONS
  pred BATCH_OPERATION_TYPE_TERMINATE_ACTIVITY
    = BATCH_OPERATION_TYPE_RESET_ACTIVITY
  pred BATCH_OPERATION_TYPE_CANCEL_ACTIVITY
    = BATCH_OPERATION_TYPE_TERMINATE_ACTIVITY
  pred BATCH_OPERATION_TYPE_DELETE_ACTIVITY
    = BATCH_OPERATION_TYPE_CANCEL_ACTIVITY
  pred BATCH_OPERATION_TYPE_TERMINATE_WORKFLOW
    = BATCH_OPERATION_TYPE_DELETE_ACTIVITY
  pred BATCH_OPERATION_TYPE_CANCEL_WORKFLOW
    = BATCH_OPERATION_TYPE_TERMINATE_WORKFLOW
  pred BATCH_OPERATION_TYPE_SIGNAL_WORKFLOW
    = BATCH_OPERATION_TYPE_CANCEL_WORKFLOW
  pred BATCH_OPERATION_TYPE_DELETE_WORKFLOW
    = BATCH_OPERATION_TYPE_SIGNAL_WORKFLOW
  pred BATCH_OPERATION_TYPE_RESET_WORKFLOW
    = BATCH_OPERATION_TYPE_DELETE_WORKFLOW
  pred BATCH_OPERATION_TYPE_UPDATE_WORKFLOW_EXECUTION_OPTIONS
    = BATCH_OPERATION_TYPE_RESET_WORKFLOW
  pred (BatchOperationType'Unrecognized _)
    = Prelude.error
        "BatchOperationType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault BatchOperationType where
  fieldDefault = BATCH_OPERATION_TYPE_UNSPECIFIED
instance Control.DeepSeq.NFData BatchOperationType where
  rnf x__ = Prelude.seq x__ ()