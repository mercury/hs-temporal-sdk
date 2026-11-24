{- This file was auto-generated from temporal/api/enums/v1/nexus.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Enums.V1.Nexus (
        NexusHandlerErrorRetryBehavior(..),
        NexusHandlerErrorRetryBehavior(),
        NexusHandlerErrorRetryBehavior'UnrecognizedValue,
        NexusOperationExecutionStatus(..), NexusOperationExecutionStatus(),
        NexusOperationExecutionStatus'UnrecognizedValue,
        NexusOperationIdConflictPolicy(..),
        NexusOperationIdConflictPolicy(),
        NexusOperationIdConflictPolicy'UnrecognizedValue,
        NexusOperationIdReusePolicy(..), NexusOperationIdReusePolicy(),
        NexusOperationIdReusePolicy'UnrecognizedValue,
        NexusOperationWaitStage(..), NexusOperationWaitStage(),
        NexusOperationWaitStage'UnrecognizedValue
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
newtype NexusHandlerErrorRetryBehavior'UnrecognizedValue
  = NexusHandlerErrorRetryBehavior'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data NexusHandlerErrorRetryBehavior
  = NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_UNSPECIFIED |
    NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_RETRYABLE |
    NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_NON_RETRYABLE |
    NexusHandlerErrorRetryBehavior'Unrecognized !NexusHandlerErrorRetryBehavior'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum NexusHandlerErrorRetryBehavior where
  maybeToEnum 0
    = Prelude.Just NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_RETRYABLE
  maybeToEnum 2
    = Prelude.Just NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_NON_RETRYABLE
  maybeToEnum k
    = Prelude.Just
        (NexusHandlerErrorRetryBehavior'Unrecognized
           (NexusHandlerErrorRetryBehavior'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_UNSPECIFIED
    = "NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_UNSPECIFIED"
  showEnum NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_RETRYABLE
    = "NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_RETRYABLE"
  showEnum NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_NON_RETRYABLE
    = "NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_NON_RETRYABLE"
  showEnum
    (NexusHandlerErrorRetryBehavior'Unrecognized (NexusHandlerErrorRetryBehavior'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_UNSPECIFIED"
    = Prelude.Just NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_UNSPECIFIED
    | (Prelude.==) k "NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_RETRYABLE"
    = Prelude.Just NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_RETRYABLE
    | (Prelude.==) k "NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_NON_RETRYABLE"
    = Prelude.Just NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_NON_RETRYABLE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded NexusHandlerErrorRetryBehavior where
  minBound = NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_UNSPECIFIED
  maxBound = NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_NON_RETRYABLE
instance Prelude.Enum NexusHandlerErrorRetryBehavior where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum NexusHandlerErrorRetryBehavior: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_UNSPECIFIED = 0
  fromEnum NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_RETRYABLE = 1
  fromEnum NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_NON_RETRYABLE = 2
  fromEnum
    (NexusHandlerErrorRetryBehavior'Unrecognized (NexusHandlerErrorRetryBehavior'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_NON_RETRYABLE
    = Prelude.error
        "NexusHandlerErrorRetryBehavior.succ: bad argument NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_NON_RETRYABLE. This value would be out of bounds."
  succ NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_UNSPECIFIED
    = NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_RETRYABLE
  succ NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_RETRYABLE
    = NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_NON_RETRYABLE
  succ (NexusHandlerErrorRetryBehavior'Unrecognized _)
    = Prelude.error
        "NexusHandlerErrorRetryBehavior.succ: bad argument: unrecognized value"
  pred NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_UNSPECIFIED
    = Prelude.error
        "NexusHandlerErrorRetryBehavior.pred: bad argument NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_UNSPECIFIED. This value would be out of bounds."
  pred NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_RETRYABLE
    = NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_UNSPECIFIED
  pred NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_NON_RETRYABLE
    = NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_RETRYABLE
  pred (NexusHandlerErrorRetryBehavior'Unrecognized _)
    = Prelude.error
        "NexusHandlerErrorRetryBehavior.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault NexusHandlerErrorRetryBehavior where
  fieldDefault = NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_UNSPECIFIED
instance Control.DeepSeq.NFData NexusHandlerErrorRetryBehavior where
  rnf x__ = Prelude.seq x__ ()
newtype NexusOperationExecutionStatus'UnrecognizedValue
  = NexusOperationExecutionStatus'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data NexusOperationExecutionStatus
  = NEXUS_OPERATION_EXECUTION_STATUS_UNSPECIFIED |
    NEXUS_OPERATION_EXECUTION_STATUS_RUNNING |
    NEXUS_OPERATION_EXECUTION_STATUS_COMPLETED |
    NEXUS_OPERATION_EXECUTION_STATUS_FAILED |
    NEXUS_OPERATION_EXECUTION_STATUS_CANCELED |
    NEXUS_OPERATION_EXECUTION_STATUS_TERMINATED |
    NEXUS_OPERATION_EXECUTION_STATUS_TIMED_OUT |
    NexusOperationExecutionStatus'Unrecognized !NexusOperationExecutionStatus'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum NexusOperationExecutionStatus where
  maybeToEnum 0
    = Prelude.Just NEXUS_OPERATION_EXECUTION_STATUS_UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just NEXUS_OPERATION_EXECUTION_STATUS_RUNNING
  maybeToEnum 2
    = Prelude.Just NEXUS_OPERATION_EXECUTION_STATUS_COMPLETED
  maybeToEnum 3
    = Prelude.Just NEXUS_OPERATION_EXECUTION_STATUS_FAILED
  maybeToEnum 4
    = Prelude.Just NEXUS_OPERATION_EXECUTION_STATUS_CANCELED
  maybeToEnum 5
    = Prelude.Just NEXUS_OPERATION_EXECUTION_STATUS_TERMINATED
  maybeToEnum 6
    = Prelude.Just NEXUS_OPERATION_EXECUTION_STATUS_TIMED_OUT
  maybeToEnum k
    = Prelude.Just
        (NexusOperationExecutionStatus'Unrecognized
           (NexusOperationExecutionStatus'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum NEXUS_OPERATION_EXECUTION_STATUS_UNSPECIFIED
    = "NEXUS_OPERATION_EXECUTION_STATUS_UNSPECIFIED"
  showEnum NEXUS_OPERATION_EXECUTION_STATUS_RUNNING
    = "NEXUS_OPERATION_EXECUTION_STATUS_RUNNING"
  showEnum NEXUS_OPERATION_EXECUTION_STATUS_COMPLETED
    = "NEXUS_OPERATION_EXECUTION_STATUS_COMPLETED"
  showEnum NEXUS_OPERATION_EXECUTION_STATUS_FAILED
    = "NEXUS_OPERATION_EXECUTION_STATUS_FAILED"
  showEnum NEXUS_OPERATION_EXECUTION_STATUS_CANCELED
    = "NEXUS_OPERATION_EXECUTION_STATUS_CANCELED"
  showEnum NEXUS_OPERATION_EXECUTION_STATUS_TERMINATED
    = "NEXUS_OPERATION_EXECUTION_STATUS_TERMINATED"
  showEnum NEXUS_OPERATION_EXECUTION_STATUS_TIMED_OUT
    = "NEXUS_OPERATION_EXECUTION_STATUS_TIMED_OUT"
  showEnum
    (NexusOperationExecutionStatus'Unrecognized (NexusOperationExecutionStatus'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "NEXUS_OPERATION_EXECUTION_STATUS_UNSPECIFIED"
    = Prelude.Just NEXUS_OPERATION_EXECUTION_STATUS_UNSPECIFIED
    | (Prelude.==) k "NEXUS_OPERATION_EXECUTION_STATUS_RUNNING"
    = Prelude.Just NEXUS_OPERATION_EXECUTION_STATUS_RUNNING
    | (Prelude.==) k "NEXUS_OPERATION_EXECUTION_STATUS_COMPLETED"
    = Prelude.Just NEXUS_OPERATION_EXECUTION_STATUS_COMPLETED
    | (Prelude.==) k "NEXUS_OPERATION_EXECUTION_STATUS_FAILED"
    = Prelude.Just NEXUS_OPERATION_EXECUTION_STATUS_FAILED
    | (Prelude.==) k "NEXUS_OPERATION_EXECUTION_STATUS_CANCELED"
    = Prelude.Just NEXUS_OPERATION_EXECUTION_STATUS_CANCELED
    | (Prelude.==) k "NEXUS_OPERATION_EXECUTION_STATUS_TERMINATED"
    = Prelude.Just NEXUS_OPERATION_EXECUTION_STATUS_TERMINATED
    | (Prelude.==) k "NEXUS_OPERATION_EXECUTION_STATUS_TIMED_OUT"
    = Prelude.Just NEXUS_OPERATION_EXECUTION_STATUS_TIMED_OUT
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded NexusOperationExecutionStatus where
  minBound = NEXUS_OPERATION_EXECUTION_STATUS_UNSPECIFIED
  maxBound = NEXUS_OPERATION_EXECUTION_STATUS_TIMED_OUT
instance Prelude.Enum NexusOperationExecutionStatus where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum NexusOperationExecutionStatus: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum NEXUS_OPERATION_EXECUTION_STATUS_UNSPECIFIED = 0
  fromEnum NEXUS_OPERATION_EXECUTION_STATUS_RUNNING = 1
  fromEnum NEXUS_OPERATION_EXECUTION_STATUS_COMPLETED = 2
  fromEnum NEXUS_OPERATION_EXECUTION_STATUS_FAILED = 3
  fromEnum NEXUS_OPERATION_EXECUTION_STATUS_CANCELED = 4
  fromEnum NEXUS_OPERATION_EXECUTION_STATUS_TERMINATED = 5
  fromEnum NEXUS_OPERATION_EXECUTION_STATUS_TIMED_OUT = 6
  fromEnum
    (NexusOperationExecutionStatus'Unrecognized (NexusOperationExecutionStatus'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ NEXUS_OPERATION_EXECUTION_STATUS_TIMED_OUT
    = Prelude.error
        "NexusOperationExecutionStatus.succ: bad argument NEXUS_OPERATION_EXECUTION_STATUS_TIMED_OUT. This value would be out of bounds."
  succ NEXUS_OPERATION_EXECUTION_STATUS_UNSPECIFIED
    = NEXUS_OPERATION_EXECUTION_STATUS_RUNNING
  succ NEXUS_OPERATION_EXECUTION_STATUS_RUNNING
    = NEXUS_OPERATION_EXECUTION_STATUS_COMPLETED
  succ NEXUS_OPERATION_EXECUTION_STATUS_COMPLETED
    = NEXUS_OPERATION_EXECUTION_STATUS_FAILED
  succ NEXUS_OPERATION_EXECUTION_STATUS_FAILED
    = NEXUS_OPERATION_EXECUTION_STATUS_CANCELED
  succ NEXUS_OPERATION_EXECUTION_STATUS_CANCELED
    = NEXUS_OPERATION_EXECUTION_STATUS_TERMINATED
  succ NEXUS_OPERATION_EXECUTION_STATUS_TERMINATED
    = NEXUS_OPERATION_EXECUTION_STATUS_TIMED_OUT
  succ (NexusOperationExecutionStatus'Unrecognized _)
    = Prelude.error
        "NexusOperationExecutionStatus.succ: bad argument: unrecognized value"
  pred NEXUS_OPERATION_EXECUTION_STATUS_UNSPECIFIED
    = Prelude.error
        "NexusOperationExecutionStatus.pred: bad argument NEXUS_OPERATION_EXECUTION_STATUS_UNSPECIFIED. This value would be out of bounds."
  pred NEXUS_OPERATION_EXECUTION_STATUS_RUNNING
    = NEXUS_OPERATION_EXECUTION_STATUS_UNSPECIFIED
  pred NEXUS_OPERATION_EXECUTION_STATUS_COMPLETED
    = NEXUS_OPERATION_EXECUTION_STATUS_RUNNING
  pred NEXUS_OPERATION_EXECUTION_STATUS_FAILED
    = NEXUS_OPERATION_EXECUTION_STATUS_COMPLETED
  pred NEXUS_OPERATION_EXECUTION_STATUS_CANCELED
    = NEXUS_OPERATION_EXECUTION_STATUS_FAILED
  pred NEXUS_OPERATION_EXECUTION_STATUS_TERMINATED
    = NEXUS_OPERATION_EXECUTION_STATUS_CANCELED
  pred NEXUS_OPERATION_EXECUTION_STATUS_TIMED_OUT
    = NEXUS_OPERATION_EXECUTION_STATUS_TERMINATED
  pred (NexusOperationExecutionStatus'Unrecognized _)
    = Prelude.error
        "NexusOperationExecutionStatus.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault NexusOperationExecutionStatus where
  fieldDefault = NEXUS_OPERATION_EXECUTION_STATUS_UNSPECIFIED
instance Control.DeepSeq.NFData NexusOperationExecutionStatus where
  rnf x__ = Prelude.seq x__ ()
newtype NexusOperationIdConflictPolicy'UnrecognizedValue
  = NexusOperationIdConflictPolicy'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data NexusOperationIdConflictPolicy
  = NEXUS_OPERATION_ID_CONFLICT_POLICY_UNSPECIFIED |
    NEXUS_OPERATION_ID_CONFLICT_POLICY_FAIL |
    NEXUS_OPERATION_ID_CONFLICT_POLICY_USE_EXISTING |
    NexusOperationIdConflictPolicy'Unrecognized !NexusOperationIdConflictPolicy'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum NexusOperationIdConflictPolicy where
  maybeToEnum 0
    = Prelude.Just NEXUS_OPERATION_ID_CONFLICT_POLICY_UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just NEXUS_OPERATION_ID_CONFLICT_POLICY_FAIL
  maybeToEnum 2
    = Prelude.Just NEXUS_OPERATION_ID_CONFLICT_POLICY_USE_EXISTING
  maybeToEnum k
    = Prelude.Just
        (NexusOperationIdConflictPolicy'Unrecognized
           (NexusOperationIdConflictPolicy'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum NEXUS_OPERATION_ID_CONFLICT_POLICY_UNSPECIFIED
    = "NEXUS_OPERATION_ID_CONFLICT_POLICY_UNSPECIFIED"
  showEnum NEXUS_OPERATION_ID_CONFLICT_POLICY_FAIL
    = "NEXUS_OPERATION_ID_CONFLICT_POLICY_FAIL"
  showEnum NEXUS_OPERATION_ID_CONFLICT_POLICY_USE_EXISTING
    = "NEXUS_OPERATION_ID_CONFLICT_POLICY_USE_EXISTING"
  showEnum
    (NexusOperationIdConflictPolicy'Unrecognized (NexusOperationIdConflictPolicy'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "NEXUS_OPERATION_ID_CONFLICT_POLICY_UNSPECIFIED"
    = Prelude.Just NEXUS_OPERATION_ID_CONFLICT_POLICY_UNSPECIFIED
    | (Prelude.==) k "NEXUS_OPERATION_ID_CONFLICT_POLICY_FAIL"
    = Prelude.Just NEXUS_OPERATION_ID_CONFLICT_POLICY_FAIL
    | (Prelude.==) k "NEXUS_OPERATION_ID_CONFLICT_POLICY_USE_EXISTING"
    = Prelude.Just NEXUS_OPERATION_ID_CONFLICT_POLICY_USE_EXISTING
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded NexusOperationIdConflictPolicy where
  minBound = NEXUS_OPERATION_ID_CONFLICT_POLICY_UNSPECIFIED
  maxBound = NEXUS_OPERATION_ID_CONFLICT_POLICY_USE_EXISTING
instance Prelude.Enum NexusOperationIdConflictPolicy where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum NexusOperationIdConflictPolicy: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum NEXUS_OPERATION_ID_CONFLICT_POLICY_UNSPECIFIED = 0
  fromEnum NEXUS_OPERATION_ID_CONFLICT_POLICY_FAIL = 1
  fromEnum NEXUS_OPERATION_ID_CONFLICT_POLICY_USE_EXISTING = 2
  fromEnum
    (NexusOperationIdConflictPolicy'Unrecognized (NexusOperationIdConflictPolicy'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ NEXUS_OPERATION_ID_CONFLICT_POLICY_USE_EXISTING
    = Prelude.error
        "NexusOperationIdConflictPolicy.succ: bad argument NEXUS_OPERATION_ID_CONFLICT_POLICY_USE_EXISTING. This value would be out of bounds."
  succ NEXUS_OPERATION_ID_CONFLICT_POLICY_UNSPECIFIED
    = NEXUS_OPERATION_ID_CONFLICT_POLICY_FAIL
  succ NEXUS_OPERATION_ID_CONFLICT_POLICY_FAIL
    = NEXUS_OPERATION_ID_CONFLICT_POLICY_USE_EXISTING
  succ (NexusOperationIdConflictPolicy'Unrecognized _)
    = Prelude.error
        "NexusOperationIdConflictPolicy.succ: bad argument: unrecognized value"
  pred NEXUS_OPERATION_ID_CONFLICT_POLICY_UNSPECIFIED
    = Prelude.error
        "NexusOperationIdConflictPolicy.pred: bad argument NEXUS_OPERATION_ID_CONFLICT_POLICY_UNSPECIFIED. This value would be out of bounds."
  pred NEXUS_OPERATION_ID_CONFLICT_POLICY_FAIL
    = NEXUS_OPERATION_ID_CONFLICT_POLICY_UNSPECIFIED
  pred NEXUS_OPERATION_ID_CONFLICT_POLICY_USE_EXISTING
    = NEXUS_OPERATION_ID_CONFLICT_POLICY_FAIL
  pred (NexusOperationIdConflictPolicy'Unrecognized _)
    = Prelude.error
        "NexusOperationIdConflictPolicy.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault NexusOperationIdConflictPolicy where
  fieldDefault = NEXUS_OPERATION_ID_CONFLICT_POLICY_UNSPECIFIED
instance Control.DeepSeq.NFData NexusOperationIdConflictPolicy where
  rnf x__ = Prelude.seq x__ ()
newtype NexusOperationIdReusePolicy'UnrecognizedValue
  = NexusOperationIdReusePolicy'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data NexusOperationIdReusePolicy
  = NEXUS_OPERATION_ID_REUSE_POLICY_UNSPECIFIED |
    NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE |
    NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY |
    NEXUS_OPERATION_ID_REUSE_POLICY_REJECT_DUPLICATE |
    NexusOperationIdReusePolicy'Unrecognized !NexusOperationIdReusePolicy'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum NexusOperationIdReusePolicy where
  maybeToEnum 0
    = Prelude.Just NEXUS_OPERATION_ID_REUSE_POLICY_UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE
  maybeToEnum 2
    = Prelude.Just
        NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
  maybeToEnum 3
    = Prelude.Just NEXUS_OPERATION_ID_REUSE_POLICY_REJECT_DUPLICATE
  maybeToEnum k
    = Prelude.Just
        (NexusOperationIdReusePolicy'Unrecognized
           (NexusOperationIdReusePolicy'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum NEXUS_OPERATION_ID_REUSE_POLICY_UNSPECIFIED
    = "NEXUS_OPERATION_ID_REUSE_POLICY_UNSPECIFIED"
  showEnum NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE
    = "NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE"
  showEnum
    NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
    = "NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY"
  showEnum NEXUS_OPERATION_ID_REUSE_POLICY_REJECT_DUPLICATE
    = "NEXUS_OPERATION_ID_REUSE_POLICY_REJECT_DUPLICATE"
  showEnum
    (NexusOperationIdReusePolicy'Unrecognized (NexusOperationIdReusePolicy'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "NEXUS_OPERATION_ID_REUSE_POLICY_UNSPECIFIED"
    = Prelude.Just NEXUS_OPERATION_ID_REUSE_POLICY_UNSPECIFIED
    | (Prelude.==) k "NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE"
    = Prelude.Just NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE
    | (Prelude.==)
        k "NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY"
    = Prelude.Just
        NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
    | (Prelude.==) k "NEXUS_OPERATION_ID_REUSE_POLICY_REJECT_DUPLICATE"
    = Prelude.Just NEXUS_OPERATION_ID_REUSE_POLICY_REJECT_DUPLICATE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded NexusOperationIdReusePolicy where
  minBound = NEXUS_OPERATION_ID_REUSE_POLICY_UNSPECIFIED
  maxBound = NEXUS_OPERATION_ID_REUSE_POLICY_REJECT_DUPLICATE
instance Prelude.Enum NexusOperationIdReusePolicy where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum NexusOperationIdReusePolicy: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum NEXUS_OPERATION_ID_REUSE_POLICY_UNSPECIFIED = 0
  fromEnum NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE = 1
  fromEnum
    NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
    = 2
  fromEnum NEXUS_OPERATION_ID_REUSE_POLICY_REJECT_DUPLICATE = 3
  fromEnum
    (NexusOperationIdReusePolicy'Unrecognized (NexusOperationIdReusePolicy'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ NEXUS_OPERATION_ID_REUSE_POLICY_REJECT_DUPLICATE
    = Prelude.error
        "NexusOperationIdReusePolicy.succ: bad argument NEXUS_OPERATION_ID_REUSE_POLICY_REJECT_DUPLICATE. This value would be out of bounds."
  succ NEXUS_OPERATION_ID_REUSE_POLICY_UNSPECIFIED
    = NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE
  succ NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE
    = NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
  succ NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
    = NEXUS_OPERATION_ID_REUSE_POLICY_REJECT_DUPLICATE
  succ (NexusOperationIdReusePolicy'Unrecognized _)
    = Prelude.error
        "NexusOperationIdReusePolicy.succ: bad argument: unrecognized value"
  pred NEXUS_OPERATION_ID_REUSE_POLICY_UNSPECIFIED
    = Prelude.error
        "NexusOperationIdReusePolicy.pred: bad argument NEXUS_OPERATION_ID_REUSE_POLICY_UNSPECIFIED. This value would be out of bounds."
  pred NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE
    = NEXUS_OPERATION_ID_REUSE_POLICY_UNSPECIFIED
  pred NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
    = NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE
  pred NEXUS_OPERATION_ID_REUSE_POLICY_REJECT_DUPLICATE
    = NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
  pred (NexusOperationIdReusePolicy'Unrecognized _)
    = Prelude.error
        "NexusOperationIdReusePolicy.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault NexusOperationIdReusePolicy where
  fieldDefault = NEXUS_OPERATION_ID_REUSE_POLICY_UNSPECIFIED
instance Control.DeepSeq.NFData NexusOperationIdReusePolicy where
  rnf x__ = Prelude.seq x__ ()
newtype NexusOperationWaitStage'UnrecognizedValue
  = NexusOperationWaitStage'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data NexusOperationWaitStage
  = NEXUS_OPERATION_WAIT_STAGE_UNSPECIFIED |
    NEXUS_OPERATION_WAIT_STAGE_STARTED |
    NEXUS_OPERATION_WAIT_STAGE_CLOSED |
    NexusOperationWaitStage'Unrecognized !NexusOperationWaitStage'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum NexusOperationWaitStage where
  maybeToEnum 0 = Prelude.Just NEXUS_OPERATION_WAIT_STAGE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just NEXUS_OPERATION_WAIT_STAGE_STARTED
  maybeToEnum 2 = Prelude.Just NEXUS_OPERATION_WAIT_STAGE_CLOSED
  maybeToEnum k
    = Prelude.Just
        (NexusOperationWaitStage'Unrecognized
           (NexusOperationWaitStage'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum NEXUS_OPERATION_WAIT_STAGE_UNSPECIFIED
    = "NEXUS_OPERATION_WAIT_STAGE_UNSPECIFIED"
  showEnum NEXUS_OPERATION_WAIT_STAGE_STARTED
    = "NEXUS_OPERATION_WAIT_STAGE_STARTED"
  showEnum NEXUS_OPERATION_WAIT_STAGE_CLOSED
    = "NEXUS_OPERATION_WAIT_STAGE_CLOSED"
  showEnum
    (NexusOperationWaitStage'Unrecognized (NexusOperationWaitStage'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "NEXUS_OPERATION_WAIT_STAGE_UNSPECIFIED"
    = Prelude.Just NEXUS_OPERATION_WAIT_STAGE_UNSPECIFIED
    | (Prelude.==) k "NEXUS_OPERATION_WAIT_STAGE_STARTED"
    = Prelude.Just NEXUS_OPERATION_WAIT_STAGE_STARTED
    | (Prelude.==) k "NEXUS_OPERATION_WAIT_STAGE_CLOSED"
    = Prelude.Just NEXUS_OPERATION_WAIT_STAGE_CLOSED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded NexusOperationWaitStage where
  minBound = NEXUS_OPERATION_WAIT_STAGE_UNSPECIFIED
  maxBound = NEXUS_OPERATION_WAIT_STAGE_CLOSED
instance Prelude.Enum NexusOperationWaitStage where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum NexusOperationWaitStage: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum NEXUS_OPERATION_WAIT_STAGE_UNSPECIFIED = 0
  fromEnum NEXUS_OPERATION_WAIT_STAGE_STARTED = 1
  fromEnum NEXUS_OPERATION_WAIT_STAGE_CLOSED = 2
  fromEnum
    (NexusOperationWaitStage'Unrecognized (NexusOperationWaitStage'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ NEXUS_OPERATION_WAIT_STAGE_CLOSED
    = Prelude.error
        "NexusOperationWaitStage.succ: bad argument NEXUS_OPERATION_WAIT_STAGE_CLOSED. This value would be out of bounds."
  succ NEXUS_OPERATION_WAIT_STAGE_UNSPECIFIED
    = NEXUS_OPERATION_WAIT_STAGE_STARTED
  succ NEXUS_OPERATION_WAIT_STAGE_STARTED
    = NEXUS_OPERATION_WAIT_STAGE_CLOSED
  succ (NexusOperationWaitStage'Unrecognized _)
    = Prelude.error
        "NexusOperationWaitStage.succ: bad argument: unrecognized value"
  pred NEXUS_OPERATION_WAIT_STAGE_UNSPECIFIED
    = Prelude.error
        "NexusOperationWaitStage.pred: bad argument NEXUS_OPERATION_WAIT_STAGE_UNSPECIFIED. This value would be out of bounds."
  pred NEXUS_OPERATION_WAIT_STAGE_STARTED
    = NEXUS_OPERATION_WAIT_STAGE_UNSPECIFIED
  pred NEXUS_OPERATION_WAIT_STAGE_CLOSED
    = NEXUS_OPERATION_WAIT_STAGE_STARTED
  pred (NexusOperationWaitStage'Unrecognized _)
    = Prelude.error
        "NexusOperationWaitStage.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault NexusOperationWaitStage where
  fieldDefault = NEXUS_OPERATION_WAIT_STAGE_UNSPECIFIED
instance Control.DeepSeq.NFData NexusOperationWaitStage where
  rnf x__ = Prelude.seq x__ ()