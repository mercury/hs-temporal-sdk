{- This file was auto-generated from temporal/api/enums/v1/activity.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Enums.V1.Activity (
        ActivityExecutionStatus(..), ActivityExecutionStatus(),
        ActivityExecutionStatus'UnrecognizedValue,
        ActivityIdConflictPolicy(..), ActivityIdConflictPolicy(),
        ActivityIdConflictPolicy'UnrecognizedValue,
        ActivityIdReusePolicy(..), ActivityIdReusePolicy(),
        ActivityIdReusePolicy'UnrecognizedValue
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
newtype ActivityExecutionStatus'UnrecognizedValue
  = ActivityExecutionStatus'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ActivityExecutionStatus
  = ACTIVITY_EXECUTION_STATUS_UNSPECIFIED |
    ACTIVITY_EXECUTION_STATUS_RUNNING |
    ACTIVITY_EXECUTION_STATUS_COMPLETED |
    ACTIVITY_EXECUTION_STATUS_FAILED |
    ACTIVITY_EXECUTION_STATUS_CANCELED |
    ACTIVITY_EXECUTION_STATUS_TERMINATED |
    ACTIVITY_EXECUTION_STATUS_TIMED_OUT |
    ACTIVITY_EXECUTION_STATUS_PAUSED |
    ActivityExecutionStatus'Unrecognized !ActivityExecutionStatus'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ActivityExecutionStatus where
  maybeToEnum 0 = Prelude.Just ACTIVITY_EXECUTION_STATUS_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just ACTIVITY_EXECUTION_STATUS_RUNNING
  maybeToEnum 2 = Prelude.Just ACTIVITY_EXECUTION_STATUS_COMPLETED
  maybeToEnum 3 = Prelude.Just ACTIVITY_EXECUTION_STATUS_FAILED
  maybeToEnum 4 = Prelude.Just ACTIVITY_EXECUTION_STATUS_CANCELED
  maybeToEnum 5 = Prelude.Just ACTIVITY_EXECUTION_STATUS_TERMINATED
  maybeToEnum 6 = Prelude.Just ACTIVITY_EXECUTION_STATUS_TIMED_OUT
  maybeToEnum 7 = Prelude.Just ACTIVITY_EXECUTION_STATUS_PAUSED
  maybeToEnum k
    = Prelude.Just
        (ActivityExecutionStatus'Unrecognized
           (ActivityExecutionStatus'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum ACTIVITY_EXECUTION_STATUS_UNSPECIFIED
    = "ACTIVITY_EXECUTION_STATUS_UNSPECIFIED"
  showEnum ACTIVITY_EXECUTION_STATUS_RUNNING
    = "ACTIVITY_EXECUTION_STATUS_RUNNING"
  showEnum ACTIVITY_EXECUTION_STATUS_COMPLETED
    = "ACTIVITY_EXECUTION_STATUS_COMPLETED"
  showEnum ACTIVITY_EXECUTION_STATUS_FAILED
    = "ACTIVITY_EXECUTION_STATUS_FAILED"
  showEnum ACTIVITY_EXECUTION_STATUS_CANCELED
    = "ACTIVITY_EXECUTION_STATUS_CANCELED"
  showEnum ACTIVITY_EXECUTION_STATUS_TERMINATED
    = "ACTIVITY_EXECUTION_STATUS_TERMINATED"
  showEnum ACTIVITY_EXECUTION_STATUS_TIMED_OUT
    = "ACTIVITY_EXECUTION_STATUS_TIMED_OUT"
  showEnum ACTIVITY_EXECUTION_STATUS_PAUSED
    = "ACTIVITY_EXECUTION_STATUS_PAUSED"
  showEnum
    (ActivityExecutionStatus'Unrecognized (ActivityExecutionStatus'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "ACTIVITY_EXECUTION_STATUS_UNSPECIFIED"
    = Prelude.Just ACTIVITY_EXECUTION_STATUS_UNSPECIFIED
    | (Prelude.==) k "ACTIVITY_EXECUTION_STATUS_RUNNING"
    = Prelude.Just ACTIVITY_EXECUTION_STATUS_RUNNING
    | (Prelude.==) k "ACTIVITY_EXECUTION_STATUS_COMPLETED"
    = Prelude.Just ACTIVITY_EXECUTION_STATUS_COMPLETED
    | (Prelude.==) k "ACTIVITY_EXECUTION_STATUS_FAILED"
    = Prelude.Just ACTIVITY_EXECUTION_STATUS_FAILED
    | (Prelude.==) k "ACTIVITY_EXECUTION_STATUS_CANCELED"
    = Prelude.Just ACTIVITY_EXECUTION_STATUS_CANCELED
    | (Prelude.==) k "ACTIVITY_EXECUTION_STATUS_TERMINATED"
    = Prelude.Just ACTIVITY_EXECUTION_STATUS_TERMINATED
    | (Prelude.==) k "ACTIVITY_EXECUTION_STATUS_TIMED_OUT"
    = Prelude.Just ACTIVITY_EXECUTION_STATUS_TIMED_OUT
    | (Prelude.==) k "ACTIVITY_EXECUTION_STATUS_PAUSED"
    = Prelude.Just ACTIVITY_EXECUTION_STATUS_PAUSED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ActivityExecutionStatus where
  minBound = ACTIVITY_EXECUTION_STATUS_UNSPECIFIED
  maxBound = ACTIVITY_EXECUTION_STATUS_PAUSED
instance Prelude.Enum ActivityExecutionStatus where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ActivityExecutionStatus: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum ACTIVITY_EXECUTION_STATUS_UNSPECIFIED = 0
  fromEnum ACTIVITY_EXECUTION_STATUS_RUNNING = 1
  fromEnum ACTIVITY_EXECUTION_STATUS_COMPLETED = 2
  fromEnum ACTIVITY_EXECUTION_STATUS_FAILED = 3
  fromEnum ACTIVITY_EXECUTION_STATUS_CANCELED = 4
  fromEnum ACTIVITY_EXECUTION_STATUS_TERMINATED = 5
  fromEnum ACTIVITY_EXECUTION_STATUS_TIMED_OUT = 6
  fromEnum ACTIVITY_EXECUTION_STATUS_PAUSED = 7
  fromEnum
    (ActivityExecutionStatus'Unrecognized (ActivityExecutionStatus'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ACTIVITY_EXECUTION_STATUS_PAUSED
    = Prelude.error
        "ActivityExecutionStatus.succ: bad argument ACTIVITY_EXECUTION_STATUS_PAUSED. This value would be out of bounds."
  succ ACTIVITY_EXECUTION_STATUS_UNSPECIFIED
    = ACTIVITY_EXECUTION_STATUS_RUNNING
  succ ACTIVITY_EXECUTION_STATUS_RUNNING
    = ACTIVITY_EXECUTION_STATUS_COMPLETED
  succ ACTIVITY_EXECUTION_STATUS_COMPLETED
    = ACTIVITY_EXECUTION_STATUS_FAILED
  succ ACTIVITY_EXECUTION_STATUS_FAILED
    = ACTIVITY_EXECUTION_STATUS_CANCELED
  succ ACTIVITY_EXECUTION_STATUS_CANCELED
    = ACTIVITY_EXECUTION_STATUS_TERMINATED
  succ ACTIVITY_EXECUTION_STATUS_TERMINATED
    = ACTIVITY_EXECUTION_STATUS_TIMED_OUT
  succ ACTIVITY_EXECUTION_STATUS_TIMED_OUT
    = ACTIVITY_EXECUTION_STATUS_PAUSED
  succ (ActivityExecutionStatus'Unrecognized _)
    = Prelude.error
        "ActivityExecutionStatus.succ: bad argument: unrecognized value"
  pred ACTIVITY_EXECUTION_STATUS_UNSPECIFIED
    = Prelude.error
        "ActivityExecutionStatus.pred: bad argument ACTIVITY_EXECUTION_STATUS_UNSPECIFIED. This value would be out of bounds."
  pred ACTIVITY_EXECUTION_STATUS_RUNNING
    = ACTIVITY_EXECUTION_STATUS_UNSPECIFIED
  pred ACTIVITY_EXECUTION_STATUS_COMPLETED
    = ACTIVITY_EXECUTION_STATUS_RUNNING
  pred ACTIVITY_EXECUTION_STATUS_FAILED
    = ACTIVITY_EXECUTION_STATUS_COMPLETED
  pred ACTIVITY_EXECUTION_STATUS_CANCELED
    = ACTIVITY_EXECUTION_STATUS_FAILED
  pred ACTIVITY_EXECUTION_STATUS_TERMINATED
    = ACTIVITY_EXECUTION_STATUS_CANCELED
  pred ACTIVITY_EXECUTION_STATUS_TIMED_OUT
    = ACTIVITY_EXECUTION_STATUS_TERMINATED
  pred ACTIVITY_EXECUTION_STATUS_PAUSED
    = ACTIVITY_EXECUTION_STATUS_TIMED_OUT
  pred (ActivityExecutionStatus'Unrecognized _)
    = Prelude.error
        "ActivityExecutionStatus.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ActivityExecutionStatus where
  fieldDefault = ACTIVITY_EXECUTION_STATUS_UNSPECIFIED
instance Control.DeepSeq.NFData ActivityExecutionStatus where
  rnf x__ = Prelude.seq x__ ()
newtype ActivityIdConflictPolicy'UnrecognizedValue
  = ActivityIdConflictPolicy'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ActivityIdConflictPolicy
  = ACTIVITY_ID_CONFLICT_POLICY_UNSPECIFIED |
    ACTIVITY_ID_CONFLICT_POLICY_FAIL |
    ACTIVITY_ID_CONFLICT_POLICY_USE_EXISTING |
    ActivityIdConflictPolicy'Unrecognized !ActivityIdConflictPolicy'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ActivityIdConflictPolicy where
  maybeToEnum 0
    = Prelude.Just ACTIVITY_ID_CONFLICT_POLICY_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just ACTIVITY_ID_CONFLICT_POLICY_FAIL
  maybeToEnum 2
    = Prelude.Just ACTIVITY_ID_CONFLICT_POLICY_USE_EXISTING
  maybeToEnum k
    = Prelude.Just
        (ActivityIdConflictPolicy'Unrecognized
           (ActivityIdConflictPolicy'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum ACTIVITY_ID_CONFLICT_POLICY_UNSPECIFIED
    = "ACTIVITY_ID_CONFLICT_POLICY_UNSPECIFIED"
  showEnum ACTIVITY_ID_CONFLICT_POLICY_FAIL
    = "ACTIVITY_ID_CONFLICT_POLICY_FAIL"
  showEnum ACTIVITY_ID_CONFLICT_POLICY_USE_EXISTING
    = "ACTIVITY_ID_CONFLICT_POLICY_USE_EXISTING"
  showEnum
    (ActivityIdConflictPolicy'Unrecognized (ActivityIdConflictPolicy'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "ACTIVITY_ID_CONFLICT_POLICY_UNSPECIFIED"
    = Prelude.Just ACTIVITY_ID_CONFLICT_POLICY_UNSPECIFIED
    | (Prelude.==) k "ACTIVITY_ID_CONFLICT_POLICY_FAIL"
    = Prelude.Just ACTIVITY_ID_CONFLICT_POLICY_FAIL
    | (Prelude.==) k "ACTIVITY_ID_CONFLICT_POLICY_USE_EXISTING"
    = Prelude.Just ACTIVITY_ID_CONFLICT_POLICY_USE_EXISTING
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ActivityIdConflictPolicy where
  minBound = ACTIVITY_ID_CONFLICT_POLICY_UNSPECIFIED
  maxBound = ACTIVITY_ID_CONFLICT_POLICY_USE_EXISTING
instance Prelude.Enum ActivityIdConflictPolicy where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ActivityIdConflictPolicy: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum ACTIVITY_ID_CONFLICT_POLICY_UNSPECIFIED = 0
  fromEnum ACTIVITY_ID_CONFLICT_POLICY_FAIL = 1
  fromEnum ACTIVITY_ID_CONFLICT_POLICY_USE_EXISTING = 2
  fromEnum
    (ActivityIdConflictPolicy'Unrecognized (ActivityIdConflictPolicy'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ACTIVITY_ID_CONFLICT_POLICY_USE_EXISTING
    = Prelude.error
        "ActivityIdConflictPolicy.succ: bad argument ACTIVITY_ID_CONFLICT_POLICY_USE_EXISTING. This value would be out of bounds."
  succ ACTIVITY_ID_CONFLICT_POLICY_UNSPECIFIED
    = ACTIVITY_ID_CONFLICT_POLICY_FAIL
  succ ACTIVITY_ID_CONFLICT_POLICY_FAIL
    = ACTIVITY_ID_CONFLICT_POLICY_USE_EXISTING
  succ (ActivityIdConflictPolicy'Unrecognized _)
    = Prelude.error
        "ActivityIdConflictPolicy.succ: bad argument: unrecognized value"
  pred ACTIVITY_ID_CONFLICT_POLICY_UNSPECIFIED
    = Prelude.error
        "ActivityIdConflictPolicy.pred: bad argument ACTIVITY_ID_CONFLICT_POLICY_UNSPECIFIED. This value would be out of bounds."
  pred ACTIVITY_ID_CONFLICT_POLICY_FAIL
    = ACTIVITY_ID_CONFLICT_POLICY_UNSPECIFIED
  pred ACTIVITY_ID_CONFLICT_POLICY_USE_EXISTING
    = ACTIVITY_ID_CONFLICT_POLICY_FAIL
  pred (ActivityIdConflictPolicy'Unrecognized _)
    = Prelude.error
        "ActivityIdConflictPolicy.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ActivityIdConflictPolicy where
  fieldDefault = ACTIVITY_ID_CONFLICT_POLICY_UNSPECIFIED
instance Control.DeepSeq.NFData ActivityIdConflictPolicy where
  rnf x__ = Prelude.seq x__ ()
newtype ActivityIdReusePolicy'UnrecognizedValue
  = ActivityIdReusePolicy'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ActivityIdReusePolicy
  = ACTIVITY_ID_REUSE_POLICY_UNSPECIFIED |
    ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE |
    ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY |
    ACTIVITY_ID_REUSE_POLICY_REJECT_DUPLICATE |
    ActivityIdReusePolicy'Unrecognized !ActivityIdReusePolicy'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ActivityIdReusePolicy where
  maybeToEnum 0 = Prelude.Just ACTIVITY_ID_REUSE_POLICY_UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE
  maybeToEnum 2
    = Prelude.Just ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
  maybeToEnum 3
    = Prelude.Just ACTIVITY_ID_REUSE_POLICY_REJECT_DUPLICATE
  maybeToEnum k
    = Prelude.Just
        (ActivityIdReusePolicy'Unrecognized
           (ActivityIdReusePolicy'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum ACTIVITY_ID_REUSE_POLICY_UNSPECIFIED
    = "ACTIVITY_ID_REUSE_POLICY_UNSPECIFIED"
  showEnum ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE
    = "ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE"
  showEnum ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
    = "ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY"
  showEnum ACTIVITY_ID_REUSE_POLICY_REJECT_DUPLICATE
    = "ACTIVITY_ID_REUSE_POLICY_REJECT_DUPLICATE"
  showEnum
    (ActivityIdReusePolicy'Unrecognized (ActivityIdReusePolicy'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "ACTIVITY_ID_REUSE_POLICY_UNSPECIFIED"
    = Prelude.Just ACTIVITY_ID_REUSE_POLICY_UNSPECIFIED
    | (Prelude.==) k "ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE"
    = Prelude.Just ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE
    | (Prelude.==)
        k "ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY"
    = Prelude.Just ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
    | (Prelude.==) k "ACTIVITY_ID_REUSE_POLICY_REJECT_DUPLICATE"
    = Prelude.Just ACTIVITY_ID_REUSE_POLICY_REJECT_DUPLICATE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ActivityIdReusePolicy where
  minBound = ACTIVITY_ID_REUSE_POLICY_UNSPECIFIED
  maxBound = ACTIVITY_ID_REUSE_POLICY_REJECT_DUPLICATE
instance Prelude.Enum ActivityIdReusePolicy where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ActivityIdReusePolicy: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum ACTIVITY_ID_REUSE_POLICY_UNSPECIFIED = 0
  fromEnum ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE = 1
  fromEnum ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY = 2
  fromEnum ACTIVITY_ID_REUSE_POLICY_REJECT_DUPLICATE = 3
  fromEnum
    (ActivityIdReusePolicy'Unrecognized (ActivityIdReusePolicy'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ACTIVITY_ID_REUSE_POLICY_REJECT_DUPLICATE
    = Prelude.error
        "ActivityIdReusePolicy.succ: bad argument ACTIVITY_ID_REUSE_POLICY_REJECT_DUPLICATE. This value would be out of bounds."
  succ ACTIVITY_ID_REUSE_POLICY_UNSPECIFIED
    = ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE
  succ ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE
    = ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
  succ ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
    = ACTIVITY_ID_REUSE_POLICY_REJECT_DUPLICATE
  succ (ActivityIdReusePolicy'Unrecognized _)
    = Prelude.error
        "ActivityIdReusePolicy.succ: bad argument: unrecognized value"
  pred ACTIVITY_ID_REUSE_POLICY_UNSPECIFIED
    = Prelude.error
        "ActivityIdReusePolicy.pred: bad argument ACTIVITY_ID_REUSE_POLICY_UNSPECIFIED. This value would be out of bounds."
  pred ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE
    = ACTIVITY_ID_REUSE_POLICY_UNSPECIFIED
  pred ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
    = ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE
  pred ACTIVITY_ID_REUSE_POLICY_REJECT_DUPLICATE
    = ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
  pred (ActivityIdReusePolicy'Unrecognized _)
    = Prelude.error
        "ActivityIdReusePolicy.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ActivityIdReusePolicy where
  fieldDefault = ACTIVITY_ID_REUSE_POLICY_UNSPECIFIED
instance Control.DeepSeq.NFData ActivityIdReusePolicy where
  rnf x__ = Prelude.seq x__ ()