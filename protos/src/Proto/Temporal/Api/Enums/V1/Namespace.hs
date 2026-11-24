{- This file was auto-generated from temporal/api/enums/v1/namespace.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Enums.V1.Namespace (
        ArchivalState(..), ArchivalState(),
        ArchivalState'UnrecognizedValue, NamespaceRestoreState(..),
        NamespaceRestoreState(), NamespaceRestoreState'UnrecognizedValue,
        NamespaceState(..), NamespaceState(),
        NamespaceState'UnrecognizedValue, ReplicationState(..),
        ReplicationState(), ReplicationState'UnrecognizedValue
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
newtype ArchivalState'UnrecognizedValue
  = ArchivalState'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ArchivalState
  = ARCHIVAL_STATE_UNSPECIFIED |
    ARCHIVAL_STATE_DISABLED |
    ARCHIVAL_STATE_ENABLED |
    ArchivalState'Unrecognized !ArchivalState'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ArchivalState where
  maybeToEnum 0 = Prelude.Just ARCHIVAL_STATE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just ARCHIVAL_STATE_DISABLED
  maybeToEnum 2 = Prelude.Just ARCHIVAL_STATE_ENABLED
  maybeToEnum k
    = Prelude.Just
        (ArchivalState'Unrecognized
           (ArchivalState'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum ARCHIVAL_STATE_UNSPECIFIED = "ARCHIVAL_STATE_UNSPECIFIED"
  showEnum ARCHIVAL_STATE_DISABLED = "ARCHIVAL_STATE_DISABLED"
  showEnum ARCHIVAL_STATE_ENABLED = "ARCHIVAL_STATE_ENABLED"
  showEnum
    (ArchivalState'Unrecognized (ArchivalState'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "ARCHIVAL_STATE_UNSPECIFIED"
    = Prelude.Just ARCHIVAL_STATE_UNSPECIFIED
    | (Prelude.==) k "ARCHIVAL_STATE_DISABLED"
    = Prelude.Just ARCHIVAL_STATE_DISABLED
    | (Prelude.==) k "ARCHIVAL_STATE_ENABLED"
    = Prelude.Just ARCHIVAL_STATE_ENABLED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ArchivalState where
  minBound = ARCHIVAL_STATE_UNSPECIFIED
  maxBound = ARCHIVAL_STATE_ENABLED
instance Prelude.Enum ArchivalState where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ArchivalState: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum ARCHIVAL_STATE_UNSPECIFIED = 0
  fromEnum ARCHIVAL_STATE_DISABLED = 1
  fromEnum ARCHIVAL_STATE_ENABLED = 2
  fromEnum
    (ArchivalState'Unrecognized (ArchivalState'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ARCHIVAL_STATE_ENABLED
    = Prelude.error
        "ArchivalState.succ: bad argument ARCHIVAL_STATE_ENABLED. This value would be out of bounds."
  succ ARCHIVAL_STATE_UNSPECIFIED = ARCHIVAL_STATE_DISABLED
  succ ARCHIVAL_STATE_DISABLED = ARCHIVAL_STATE_ENABLED
  succ (ArchivalState'Unrecognized _)
    = Prelude.error
        "ArchivalState.succ: bad argument: unrecognized value"
  pred ARCHIVAL_STATE_UNSPECIFIED
    = Prelude.error
        "ArchivalState.pred: bad argument ARCHIVAL_STATE_UNSPECIFIED. This value would be out of bounds."
  pred ARCHIVAL_STATE_DISABLED = ARCHIVAL_STATE_UNSPECIFIED
  pred ARCHIVAL_STATE_ENABLED = ARCHIVAL_STATE_DISABLED
  pred (ArchivalState'Unrecognized _)
    = Prelude.error
        "ArchivalState.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ArchivalState where
  fieldDefault = ARCHIVAL_STATE_UNSPECIFIED
instance Control.DeepSeq.NFData ArchivalState where
  rnf x__ = Prelude.seq x__ ()
newtype NamespaceRestoreState'UnrecognizedValue
  = NamespaceRestoreState'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data NamespaceRestoreState
  = NAMESPACE_RESTORE_STATE_UNSPECIFIED |
    NAMESPACE_RESTORE_STATE_RUNNING |
    NAMESPACE_RESTORE_STATE_COMPLETED |
    NAMESPACE_RESTORE_STATE_FAILED |
    NamespaceRestoreState'Unrecognized !NamespaceRestoreState'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum NamespaceRestoreState where
  maybeToEnum 0 = Prelude.Just NAMESPACE_RESTORE_STATE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just NAMESPACE_RESTORE_STATE_RUNNING
  maybeToEnum 2 = Prelude.Just NAMESPACE_RESTORE_STATE_COMPLETED
  maybeToEnum 3 = Prelude.Just NAMESPACE_RESTORE_STATE_FAILED
  maybeToEnum k
    = Prelude.Just
        (NamespaceRestoreState'Unrecognized
           (NamespaceRestoreState'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum NAMESPACE_RESTORE_STATE_UNSPECIFIED
    = "NAMESPACE_RESTORE_STATE_UNSPECIFIED"
  showEnum NAMESPACE_RESTORE_STATE_RUNNING
    = "NAMESPACE_RESTORE_STATE_RUNNING"
  showEnum NAMESPACE_RESTORE_STATE_COMPLETED
    = "NAMESPACE_RESTORE_STATE_COMPLETED"
  showEnum NAMESPACE_RESTORE_STATE_FAILED
    = "NAMESPACE_RESTORE_STATE_FAILED"
  showEnum
    (NamespaceRestoreState'Unrecognized (NamespaceRestoreState'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "NAMESPACE_RESTORE_STATE_UNSPECIFIED"
    = Prelude.Just NAMESPACE_RESTORE_STATE_UNSPECIFIED
    | (Prelude.==) k "NAMESPACE_RESTORE_STATE_RUNNING"
    = Prelude.Just NAMESPACE_RESTORE_STATE_RUNNING
    | (Prelude.==) k "NAMESPACE_RESTORE_STATE_COMPLETED"
    = Prelude.Just NAMESPACE_RESTORE_STATE_COMPLETED
    | (Prelude.==) k "NAMESPACE_RESTORE_STATE_FAILED"
    = Prelude.Just NAMESPACE_RESTORE_STATE_FAILED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded NamespaceRestoreState where
  minBound = NAMESPACE_RESTORE_STATE_UNSPECIFIED
  maxBound = NAMESPACE_RESTORE_STATE_FAILED
instance Prelude.Enum NamespaceRestoreState where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum NamespaceRestoreState: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum NAMESPACE_RESTORE_STATE_UNSPECIFIED = 0
  fromEnum NAMESPACE_RESTORE_STATE_RUNNING = 1
  fromEnum NAMESPACE_RESTORE_STATE_COMPLETED = 2
  fromEnum NAMESPACE_RESTORE_STATE_FAILED = 3
  fromEnum
    (NamespaceRestoreState'Unrecognized (NamespaceRestoreState'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ NAMESPACE_RESTORE_STATE_FAILED
    = Prelude.error
        "NamespaceRestoreState.succ: bad argument NAMESPACE_RESTORE_STATE_FAILED. This value would be out of bounds."
  succ NAMESPACE_RESTORE_STATE_UNSPECIFIED
    = NAMESPACE_RESTORE_STATE_RUNNING
  succ NAMESPACE_RESTORE_STATE_RUNNING
    = NAMESPACE_RESTORE_STATE_COMPLETED
  succ NAMESPACE_RESTORE_STATE_COMPLETED
    = NAMESPACE_RESTORE_STATE_FAILED
  succ (NamespaceRestoreState'Unrecognized _)
    = Prelude.error
        "NamespaceRestoreState.succ: bad argument: unrecognized value"
  pred NAMESPACE_RESTORE_STATE_UNSPECIFIED
    = Prelude.error
        "NamespaceRestoreState.pred: bad argument NAMESPACE_RESTORE_STATE_UNSPECIFIED. This value would be out of bounds."
  pred NAMESPACE_RESTORE_STATE_RUNNING
    = NAMESPACE_RESTORE_STATE_UNSPECIFIED
  pred NAMESPACE_RESTORE_STATE_COMPLETED
    = NAMESPACE_RESTORE_STATE_RUNNING
  pred NAMESPACE_RESTORE_STATE_FAILED
    = NAMESPACE_RESTORE_STATE_COMPLETED
  pred (NamespaceRestoreState'Unrecognized _)
    = Prelude.error
        "NamespaceRestoreState.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault NamespaceRestoreState where
  fieldDefault = NAMESPACE_RESTORE_STATE_UNSPECIFIED
instance Control.DeepSeq.NFData NamespaceRestoreState where
  rnf x__ = Prelude.seq x__ ()
newtype NamespaceState'UnrecognizedValue
  = NamespaceState'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data NamespaceState
  = NAMESPACE_STATE_UNSPECIFIED |
    NAMESPACE_STATE_REGISTERED |
    NAMESPACE_STATE_DEPRECATED |
    NAMESPACE_STATE_DELETED |
    NAMESPACE_STATE_SOFT_DELETED |
    NamespaceState'Unrecognized !NamespaceState'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum NamespaceState where
  maybeToEnum 0 = Prelude.Just NAMESPACE_STATE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just NAMESPACE_STATE_REGISTERED
  maybeToEnum 2 = Prelude.Just NAMESPACE_STATE_DEPRECATED
  maybeToEnum 3 = Prelude.Just NAMESPACE_STATE_DELETED
  maybeToEnum 4 = Prelude.Just NAMESPACE_STATE_SOFT_DELETED
  maybeToEnum k
    = Prelude.Just
        (NamespaceState'Unrecognized
           (NamespaceState'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum NAMESPACE_STATE_UNSPECIFIED
    = "NAMESPACE_STATE_UNSPECIFIED"
  showEnum NAMESPACE_STATE_REGISTERED = "NAMESPACE_STATE_REGISTERED"
  showEnum NAMESPACE_STATE_DEPRECATED = "NAMESPACE_STATE_DEPRECATED"
  showEnum NAMESPACE_STATE_DELETED = "NAMESPACE_STATE_DELETED"
  showEnum NAMESPACE_STATE_SOFT_DELETED
    = "NAMESPACE_STATE_SOFT_DELETED"
  showEnum
    (NamespaceState'Unrecognized (NamespaceState'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "NAMESPACE_STATE_UNSPECIFIED"
    = Prelude.Just NAMESPACE_STATE_UNSPECIFIED
    | (Prelude.==) k "NAMESPACE_STATE_REGISTERED"
    = Prelude.Just NAMESPACE_STATE_REGISTERED
    | (Prelude.==) k "NAMESPACE_STATE_DEPRECATED"
    = Prelude.Just NAMESPACE_STATE_DEPRECATED
    | (Prelude.==) k "NAMESPACE_STATE_DELETED"
    = Prelude.Just NAMESPACE_STATE_DELETED
    | (Prelude.==) k "NAMESPACE_STATE_SOFT_DELETED"
    = Prelude.Just NAMESPACE_STATE_SOFT_DELETED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded NamespaceState where
  minBound = NAMESPACE_STATE_UNSPECIFIED
  maxBound = NAMESPACE_STATE_SOFT_DELETED
instance Prelude.Enum NamespaceState where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum NamespaceState: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum NAMESPACE_STATE_UNSPECIFIED = 0
  fromEnum NAMESPACE_STATE_REGISTERED = 1
  fromEnum NAMESPACE_STATE_DEPRECATED = 2
  fromEnum NAMESPACE_STATE_DELETED = 3
  fromEnum NAMESPACE_STATE_SOFT_DELETED = 4
  fromEnum
    (NamespaceState'Unrecognized (NamespaceState'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ NAMESPACE_STATE_SOFT_DELETED
    = Prelude.error
        "NamespaceState.succ: bad argument NAMESPACE_STATE_SOFT_DELETED. This value would be out of bounds."
  succ NAMESPACE_STATE_UNSPECIFIED = NAMESPACE_STATE_REGISTERED
  succ NAMESPACE_STATE_REGISTERED = NAMESPACE_STATE_DEPRECATED
  succ NAMESPACE_STATE_DEPRECATED = NAMESPACE_STATE_DELETED
  succ NAMESPACE_STATE_DELETED = NAMESPACE_STATE_SOFT_DELETED
  succ (NamespaceState'Unrecognized _)
    = Prelude.error
        "NamespaceState.succ: bad argument: unrecognized value"
  pred NAMESPACE_STATE_UNSPECIFIED
    = Prelude.error
        "NamespaceState.pred: bad argument NAMESPACE_STATE_UNSPECIFIED. This value would be out of bounds."
  pred NAMESPACE_STATE_REGISTERED = NAMESPACE_STATE_UNSPECIFIED
  pred NAMESPACE_STATE_DEPRECATED = NAMESPACE_STATE_REGISTERED
  pred NAMESPACE_STATE_DELETED = NAMESPACE_STATE_DEPRECATED
  pred NAMESPACE_STATE_SOFT_DELETED = NAMESPACE_STATE_DELETED
  pred (NamespaceState'Unrecognized _)
    = Prelude.error
        "NamespaceState.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault NamespaceState where
  fieldDefault = NAMESPACE_STATE_UNSPECIFIED
instance Control.DeepSeq.NFData NamespaceState where
  rnf x__ = Prelude.seq x__ ()
newtype ReplicationState'UnrecognizedValue
  = ReplicationState'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ReplicationState
  = REPLICATION_STATE_UNSPECIFIED |
    REPLICATION_STATE_NORMAL |
    REPLICATION_STATE_HANDOVER |
    ReplicationState'Unrecognized !ReplicationState'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ReplicationState where
  maybeToEnum 0 = Prelude.Just REPLICATION_STATE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just REPLICATION_STATE_NORMAL
  maybeToEnum 2 = Prelude.Just REPLICATION_STATE_HANDOVER
  maybeToEnum k
    = Prelude.Just
        (ReplicationState'Unrecognized
           (ReplicationState'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum REPLICATION_STATE_UNSPECIFIED
    = "REPLICATION_STATE_UNSPECIFIED"
  showEnum REPLICATION_STATE_NORMAL = "REPLICATION_STATE_NORMAL"
  showEnum REPLICATION_STATE_HANDOVER = "REPLICATION_STATE_HANDOVER"
  showEnum
    (ReplicationState'Unrecognized (ReplicationState'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "REPLICATION_STATE_UNSPECIFIED"
    = Prelude.Just REPLICATION_STATE_UNSPECIFIED
    | (Prelude.==) k "REPLICATION_STATE_NORMAL"
    = Prelude.Just REPLICATION_STATE_NORMAL
    | (Prelude.==) k "REPLICATION_STATE_HANDOVER"
    = Prelude.Just REPLICATION_STATE_HANDOVER
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ReplicationState where
  minBound = REPLICATION_STATE_UNSPECIFIED
  maxBound = REPLICATION_STATE_HANDOVER
instance Prelude.Enum ReplicationState where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ReplicationState: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum REPLICATION_STATE_UNSPECIFIED = 0
  fromEnum REPLICATION_STATE_NORMAL = 1
  fromEnum REPLICATION_STATE_HANDOVER = 2
  fromEnum
    (ReplicationState'Unrecognized (ReplicationState'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ REPLICATION_STATE_HANDOVER
    = Prelude.error
        "ReplicationState.succ: bad argument REPLICATION_STATE_HANDOVER. This value would be out of bounds."
  succ REPLICATION_STATE_UNSPECIFIED = REPLICATION_STATE_NORMAL
  succ REPLICATION_STATE_NORMAL = REPLICATION_STATE_HANDOVER
  succ (ReplicationState'Unrecognized _)
    = Prelude.error
        "ReplicationState.succ: bad argument: unrecognized value"
  pred REPLICATION_STATE_UNSPECIFIED
    = Prelude.error
        "ReplicationState.pred: bad argument REPLICATION_STATE_UNSPECIFIED. This value would be out of bounds."
  pred REPLICATION_STATE_NORMAL = REPLICATION_STATE_UNSPECIFIED
  pred REPLICATION_STATE_HANDOVER = REPLICATION_STATE_NORMAL
  pred (ReplicationState'Unrecognized _)
    = Prelude.error
        "ReplicationState.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ReplicationState where
  fieldDefault = REPLICATION_STATE_UNSPECIFIED
instance Control.DeepSeq.NFData ReplicationState where
  rnf x__ = Prelude.seq x__ ()