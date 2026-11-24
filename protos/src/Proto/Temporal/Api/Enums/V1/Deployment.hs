{- This file was auto-generated from temporal/api/enums/v1/deployment.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Enums.V1.Deployment (
        DeploymentReachability(..), DeploymentReachability(),
        DeploymentReachability'UnrecognizedValue,
        VersionDrainageStatus(..), VersionDrainageStatus(),
        VersionDrainageStatus'UnrecognizedValue,
        WorkerDeploymentVersionStatus(..), WorkerDeploymentVersionStatus(),
        WorkerDeploymentVersionStatus'UnrecognizedValue,
        WorkerVersioningMode(..), WorkerVersioningMode(),
        WorkerVersioningMode'UnrecognizedValue
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
newtype DeploymentReachability'UnrecognizedValue
  = DeploymentReachability'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data DeploymentReachability
  = DEPLOYMENT_REACHABILITY_UNSPECIFIED |
    DEPLOYMENT_REACHABILITY_REACHABLE |
    DEPLOYMENT_REACHABILITY_CLOSED_WORKFLOWS_ONLY |
    DEPLOYMENT_REACHABILITY_UNREACHABLE |
    DeploymentReachability'Unrecognized !DeploymentReachability'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum DeploymentReachability where
  maybeToEnum 0 = Prelude.Just DEPLOYMENT_REACHABILITY_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just DEPLOYMENT_REACHABILITY_REACHABLE
  maybeToEnum 2
    = Prelude.Just DEPLOYMENT_REACHABILITY_CLOSED_WORKFLOWS_ONLY
  maybeToEnum 3 = Prelude.Just DEPLOYMENT_REACHABILITY_UNREACHABLE
  maybeToEnum k
    = Prelude.Just
        (DeploymentReachability'Unrecognized
           (DeploymentReachability'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum DEPLOYMENT_REACHABILITY_UNSPECIFIED
    = "DEPLOYMENT_REACHABILITY_UNSPECIFIED"
  showEnum DEPLOYMENT_REACHABILITY_REACHABLE
    = "DEPLOYMENT_REACHABILITY_REACHABLE"
  showEnum DEPLOYMENT_REACHABILITY_CLOSED_WORKFLOWS_ONLY
    = "DEPLOYMENT_REACHABILITY_CLOSED_WORKFLOWS_ONLY"
  showEnum DEPLOYMENT_REACHABILITY_UNREACHABLE
    = "DEPLOYMENT_REACHABILITY_UNREACHABLE"
  showEnum
    (DeploymentReachability'Unrecognized (DeploymentReachability'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "DEPLOYMENT_REACHABILITY_UNSPECIFIED"
    = Prelude.Just DEPLOYMENT_REACHABILITY_UNSPECIFIED
    | (Prelude.==) k "DEPLOYMENT_REACHABILITY_REACHABLE"
    = Prelude.Just DEPLOYMENT_REACHABILITY_REACHABLE
    | (Prelude.==) k "DEPLOYMENT_REACHABILITY_CLOSED_WORKFLOWS_ONLY"
    = Prelude.Just DEPLOYMENT_REACHABILITY_CLOSED_WORKFLOWS_ONLY
    | (Prelude.==) k "DEPLOYMENT_REACHABILITY_UNREACHABLE"
    = Prelude.Just DEPLOYMENT_REACHABILITY_UNREACHABLE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded DeploymentReachability where
  minBound = DEPLOYMENT_REACHABILITY_UNSPECIFIED
  maxBound = DEPLOYMENT_REACHABILITY_UNREACHABLE
instance Prelude.Enum DeploymentReachability where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum DeploymentReachability: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum DEPLOYMENT_REACHABILITY_UNSPECIFIED = 0
  fromEnum DEPLOYMENT_REACHABILITY_REACHABLE = 1
  fromEnum DEPLOYMENT_REACHABILITY_CLOSED_WORKFLOWS_ONLY = 2
  fromEnum DEPLOYMENT_REACHABILITY_UNREACHABLE = 3
  fromEnum
    (DeploymentReachability'Unrecognized (DeploymentReachability'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ DEPLOYMENT_REACHABILITY_UNREACHABLE
    = Prelude.error
        "DeploymentReachability.succ: bad argument DEPLOYMENT_REACHABILITY_UNREACHABLE. This value would be out of bounds."
  succ DEPLOYMENT_REACHABILITY_UNSPECIFIED
    = DEPLOYMENT_REACHABILITY_REACHABLE
  succ DEPLOYMENT_REACHABILITY_REACHABLE
    = DEPLOYMENT_REACHABILITY_CLOSED_WORKFLOWS_ONLY
  succ DEPLOYMENT_REACHABILITY_CLOSED_WORKFLOWS_ONLY
    = DEPLOYMENT_REACHABILITY_UNREACHABLE
  succ (DeploymentReachability'Unrecognized _)
    = Prelude.error
        "DeploymentReachability.succ: bad argument: unrecognized value"
  pred DEPLOYMENT_REACHABILITY_UNSPECIFIED
    = Prelude.error
        "DeploymentReachability.pred: bad argument DEPLOYMENT_REACHABILITY_UNSPECIFIED. This value would be out of bounds."
  pred DEPLOYMENT_REACHABILITY_REACHABLE
    = DEPLOYMENT_REACHABILITY_UNSPECIFIED
  pred DEPLOYMENT_REACHABILITY_CLOSED_WORKFLOWS_ONLY
    = DEPLOYMENT_REACHABILITY_REACHABLE
  pred DEPLOYMENT_REACHABILITY_UNREACHABLE
    = DEPLOYMENT_REACHABILITY_CLOSED_WORKFLOWS_ONLY
  pred (DeploymentReachability'Unrecognized _)
    = Prelude.error
        "DeploymentReachability.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault DeploymentReachability where
  fieldDefault = DEPLOYMENT_REACHABILITY_UNSPECIFIED
instance Control.DeepSeq.NFData DeploymentReachability where
  rnf x__ = Prelude.seq x__ ()
newtype VersionDrainageStatus'UnrecognizedValue
  = VersionDrainageStatus'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data VersionDrainageStatus
  = VERSION_DRAINAGE_STATUS_UNSPECIFIED |
    VERSION_DRAINAGE_STATUS_DRAINING |
    VERSION_DRAINAGE_STATUS_DRAINED |
    VersionDrainageStatus'Unrecognized !VersionDrainageStatus'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum VersionDrainageStatus where
  maybeToEnum 0 = Prelude.Just VERSION_DRAINAGE_STATUS_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just VERSION_DRAINAGE_STATUS_DRAINING
  maybeToEnum 2 = Prelude.Just VERSION_DRAINAGE_STATUS_DRAINED
  maybeToEnum k
    = Prelude.Just
        (VersionDrainageStatus'Unrecognized
           (VersionDrainageStatus'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum VERSION_DRAINAGE_STATUS_UNSPECIFIED
    = "VERSION_DRAINAGE_STATUS_UNSPECIFIED"
  showEnum VERSION_DRAINAGE_STATUS_DRAINING
    = "VERSION_DRAINAGE_STATUS_DRAINING"
  showEnum VERSION_DRAINAGE_STATUS_DRAINED
    = "VERSION_DRAINAGE_STATUS_DRAINED"
  showEnum
    (VersionDrainageStatus'Unrecognized (VersionDrainageStatus'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "VERSION_DRAINAGE_STATUS_UNSPECIFIED"
    = Prelude.Just VERSION_DRAINAGE_STATUS_UNSPECIFIED
    | (Prelude.==) k "VERSION_DRAINAGE_STATUS_DRAINING"
    = Prelude.Just VERSION_DRAINAGE_STATUS_DRAINING
    | (Prelude.==) k "VERSION_DRAINAGE_STATUS_DRAINED"
    = Prelude.Just VERSION_DRAINAGE_STATUS_DRAINED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded VersionDrainageStatus where
  minBound = VERSION_DRAINAGE_STATUS_UNSPECIFIED
  maxBound = VERSION_DRAINAGE_STATUS_DRAINED
instance Prelude.Enum VersionDrainageStatus where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum VersionDrainageStatus: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum VERSION_DRAINAGE_STATUS_UNSPECIFIED = 0
  fromEnum VERSION_DRAINAGE_STATUS_DRAINING = 1
  fromEnum VERSION_DRAINAGE_STATUS_DRAINED = 2
  fromEnum
    (VersionDrainageStatus'Unrecognized (VersionDrainageStatus'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ VERSION_DRAINAGE_STATUS_DRAINED
    = Prelude.error
        "VersionDrainageStatus.succ: bad argument VERSION_DRAINAGE_STATUS_DRAINED. This value would be out of bounds."
  succ VERSION_DRAINAGE_STATUS_UNSPECIFIED
    = VERSION_DRAINAGE_STATUS_DRAINING
  succ VERSION_DRAINAGE_STATUS_DRAINING
    = VERSION_DRAINAGE_STATUS_DRAINED
  succ (VersionDrainageStatus'Unrecognized _)
    = Prelude.error
        "VersionDrainageStatus.succ: bad argument: unrecognized value"
  pred VERSION_DRAINAGE_STATUS_UNSPECIFIED
    = Prelude.error
        "VersionDrainageStatus.pred: bad argument VERSION_DRAINAGE_STATUS_UNSPECIFIED. This value would be out of bounds."
  pred VERSION_DRAINAGE_STATUS_DRAINING
    = VERSION_DRAINAGE_STATUS_UNSPECIFIED
  pred VERSION_DRAINAGE_STATUS_DRAINED
    = VERSION_DRAINAGE_STATUS_DRAINING
  pred (VersionDrainageStatus'Unrecognized _)
    = Prelude.error
        "VersionDrainageStatus.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault VersionDrainageStatus where
  fieldDefault = VERSION_DRAINAGE_STATUS_UNSPECIFIED
instance Control.DeepSeq.NFData VersionDrainageStatus where
  rnf x__ = Prelude.seq x__ ()
newtype WorkerDeploymentVersionStatus'UnrecognizedValue
  = WorkerDeploymentVersionStatus'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data WorkerDeploymentVersionStatus
  = WORKER_DEPLOYMENT_VERSION_STATUS_UNSPECIFIED |
    WORKER_DEPLOYMENT_VERSION_STATUS_INACTIVE |
    WORKER_DEPLOYMENT_VERSION_STATUS_CURRENT |
    WORKER_DEPLOYMENT_VERSION_STATUS_RAMPING |
    WORKER_DEPLOYMENT_VERSION_STATUS_DRAINING |
    WORKER_DEPLOYMENT_VERSION_STATUS_DRAINED |
    WORKER_DEPLOYMENT_VERSION_STATUS_CREATED |
    WorkerDeploymentVersionStatus'Unrecognized !WorkerDeploymentVersionStatus'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum WorkerDeploymentVersionStatus where
  maybeToEnum 0
    = Prelude.Just WORKER_DEPLOYMENT_VERSION_STATUS_UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just WORKER_DEPLOYMENT_VERSION_STATUS_INACTIVE
  maybeToEnum 2
    = Prelude.Just WORKER_DEPLOYMENT_VERSION_STATUS_CURRENT
  maybeToEnum 3
    = Prelude.Just WORKER_DEPLOYMENT_VERSION_STATUS_RAMPING
  maybeToEnum 4
    = Prelude.Just WORKER_DEPLOYMENT_VERSION_STATUS_DRAINING
  maybeToEnum 5
    = Prelude.Just WORKER_DEPLOYMENT_VERSION_STATUS_DRAINED
  maybeToEnum 6
    = Prelude.Just WORKER_DEPLOYMENT_VERSION_STATUS_CREATED
  maybeToEnum k
    = Prelude.Just
        (WorkerDeploymentVersionStatus'Unrecognized
           (WorkerDeploymentVersionStatus'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum WORKER_DEPLOYMENT_VERSION_STATUS_UNSPECIFIED
    = "WORKER_DEPLOYMENT_VERSION_STATUS_UNSPECIFIED"
  showEnum WORKER_DEPLOYMENT_VERSION_STATUS_INACTIVE
    = "WORKER_DEPLOYMENT_VERSION_STATUS_INACTIVE"
  showEnum WORKER_DEPLOYMENT_VERSION_STATUS_CURRENT
    = "WORKER_DEPLOYMENT_VERSION_STATUS_CURRENT"
  showEnum WORKER_DEPLOYMENT_VERSION_STATUS_RAMPING
    = "WORKER_DEPLOYMENT_VERSION_STATUS_RAMPING"
  showEnum WORKER_DEPLOYMENT_VERSION_STATUS_DRAINING
    = "WORKER_DEPLOYMENT_VERSION_STATUS_DRAINING"
  showEnum WORKER_DEPLOYMENT_VERSION_STATUS_DRAINED
    = "WORKER_DEPLOYMENT_VERSION_STATUS_DRAINED"
  showEnum WORKER_DEPLOYMENT_VERSION_STATUS_CREATED
    = "WORKER_DEPLOYMENT_VERSION_STATUS_CREATED"
  showEnum
    (WorkerDeploymentVersionStatus'Unrecognized (WorkerDeploymentVersionStatus'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "WORKER_DEPLOYMENT_VERSION_STATUS_UNSPECIFIED"
    = Prelude.Just WORKER_DEPLOYMENT_VERSION_STATUS_UNSPECIFIED
    | (Prelude.==) k "WORKER_DEPLOYMENT_VERSION_STATUS_INACTIVE"
    = Prelude.Just WORKER_DEPLOYMENT_VERSION_STATUS_INACTIVE
    | (Prelude.==) k "WORKER_DEPLOYMENT_VERSION_STATUS_CURRENT"
    = Prelude.Just WORKER_DEPLOYMENT_VERSION_STATUS_CURRENT
    | (Prelude.==) k "WORKER_DEPLOYMENT_VERSION_STATUS_RAMPING"
    = Prelude.Just WORKER_DEPLOYMENT_VERSION_STATUS_RAMPING
    | (Prelude.==) k "WORKER_DEPLOYMENT_VERSION_STATUS_DRAINING"
    = Prelude.Just WORKER_DEPLOYMENT_VERSION_STATUS_DRAINING
    | (Prelude.==) k "WORKER_DEPLOYMENT_VERSION_STATUS_DRAINED"
    = Prelude.Just WORKER_DEPLOYMENT_VERSION_STATUS_DRAINED
    | (Prelude.==) k "WORKER_DEPLOYMENT_VERSION_STATUS_CREATED"
    = Prelude.Just WORKER_DEPLOYMENT_VERSION_STATUS_CREATED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded WorkerDeploymentVersionStatus where
  minBound = WORKER_DEPLOYMENT_VERSION_STATUS_UNSPECIFIED
  maxBound = WORKER_DEPLOYMENT_VERSION_STATUS_CREATED
instance Prelude.Enum WorkerDeploymentVersionStatus where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum WorkerDeploymentVersionStatus: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum WORKER_DEPLOYMENT_VERSION_STATUS_UNSPECIFIED = 0
  fromEnum WORKER_DEPLOYMENT_VERSION_STATUS_INACTIVE = 1
  fromEnum WORKER_DEPLOYMENT_VERSION_STATUS_CURRENT = 2
  fromEnum WORKER_DEPLOYMENT_VERSION_STATUS_RAMPING = 3
  fromEnum WORKER_DEPLOYMENT_VERSION_STATUS_DRAINING = 4
  fromEnum WORKER_DEPLOYMENT_VERSION_STATUS_DRAINED = 5
  fromEnum WORKER_DEPLOYMENT_VERSION_STATUS_CREATED = 6
  fromEnum
    (WorkerDeploymentVersionStatus'Unrecognized (WorkerDeploymentVersionStatus'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ WORKER_DEPLOYMENT_VERSION_STATUS_CREATED
    = Prelude.error
        "WorkerDeploymentVersionStatus.succ: bad argument WORKER_DEPLOYMENT_VERSION_STATUS_CREATED. This value would be out of bounds."
  succ WORKER_DEPLOYMENT_VERSION_STATUS_UNSPECIFIED
    = WORKER_DEPLOYMENT_VERSION_STATUS_INACTIVE
  succ WORKER_DEPLOYMENT_VERSION_STATUS_INACTIVE
    = WORKER_DEPLOYMENT_VERSION_STATUS_CURRENT
  succ WORKER_DEPLOYMENT_VERSION_STATUS_CURRENT
    = WORKER_DEPLOYMENT_VERSION_STATUS_RAMPING
  succ WORKER_DEPLOYMENT_VERSION_STATUS_RAMPING
    = WORKER_DEPLOYMENT_VERSION_STATUS_DRAINING
  succ WORKER_DEPLOYMENT_VERSION_STATUS_DRAINING
    = WORKER_DEPLOYMENT_VERSION_STATUS_DRAINED
  succ WORKER_DEPLOYMENT_VERSION_STATUS_DRAINED
    = WORKER_DEPLOYMENT_VERSION_STATUS_CREATED
  succ (WorkerDeploymentVersionStatus'Unrecognized _)
    = Prelude.error
        "WorkerDeploymentVersionStatus.succ: bad argument: unrecognized value"
  pred WORKER_DEPLOYMENT_VERSION_STATUS_UNSPECIFIED
    = Prelude.error
        "WorkerDeploymentVersionStatus.pred: bad argument WORKER_DEPLOYMENT_VERSION_STATUS_UNSPECIFIED. This value would be out of bounds."
  pred WORKER_DEPLOYMENT_VERSION_STATUS_INACTIVE
    = WORKER_DEPLOYMENT_VERSION_STATUS_UNSPECIFIED
  pred WORKER_DEPLOYMENT_VERSION_STATUS_CURRENT
    = WORKER_DEPLOYMENT_VERSION_STATUS_INACTIVE
  pred WORKER_DEPLOYMENT_VERSION_STATUS_RAMPING
    = WORKER_DEPLOYMENT_VERSION_STATUS_CURRENT
  pred WORKER_DEPLOYMENT_VERSION_STATUS_DRAINING
    = WORKER_DEPLOYMENT_VERSION_STATUS_RAMPING
  pred WORKER_DEPLOYMENT_VERSION_STATUS_DRAINED
    = WORKER_DEPLOYMENT_VERSION_STATUS_DRAINING
  pred WORKER_DEPLOYMENT_VERSION_STATUS_CREATED
    = WORKER_DEPLOYMENT_VERSION_STATUS_DRAINED
  pred (WorkerDeploymentVersionStatus'Unrecognized _)
    = Prelude.error
        "WorkerDeploymentVersionStatus.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault WorkerDeploymentVersionStatus where
  fieldDefault = WORKER_DEPLOYMENT_VERSION_STATUS_UNSPECIFIED
instance Control.DeepSeq.NFData WorkerDeploymentVersionStatus where
  rnf x__ = Prelude.seq x__ ()
newtype WorkerVersioningMode'UnrecognizedValue
  = WorkerVersioningMode'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data WorkerVersioningMode
  = WORKER_VERSIONING_MODE_UNSPECIFIED |
    WORKER_VERSIONING_MODE_UNVERSIONED |
    WORKER_VERSIONING_MODE_VERSIONED |
    WorkerVersioningMode'Unrecognized !WorkerVersioningMode'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum WorkerVersioningMode where
  maybeToEnum 0 = Prelude.Just WORKER_VERSIONING_MODE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just WORKER_VERSIONING_MODE_UNVERSIONED
  maybeToEnum 2 = Prelude.Just WORKER_VERSIONING_MODE_VERSIONED
  maybeToEnum k
    = Prelude.Just
        (WorkerVersioningMode'Unrecognized
           (WorkerVersioningMode'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum WORKER_VERSIONING_MODE_UNSPECIFIED
    = "WORKER_VERSIONING_MODE_UNSPECIFIED"
  showEnum WORKER_VERSIONING_MODE_UNVERSIONED
    = "WORKER_VERSIONING_MODE_UNVERSIONED"
  showEnum WORKER_VERSIONING_MODE_VERSIONED
    = "WORKER_VERSIONING_MODE_VERSIONED"
  showEnum
    (WorkerVersioningMode'Unrecognized (WorkerVersioningMode'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "WORKER_VERSIONING_MODE_UNSPECIFIED"
    = Prelude.Just WORKER_VERSIONING_MODE_UNSPECIFIED
    | (Prelude.==) k "WORKER_VERSIONING_MODE_UNVERSIONED"
    = Prelude.Just WORKER_VERSIONING_MODE_UNVERSIONED
    | (Prelude.==) k "WORKER_VERSIONING_MODE_VERSIONED"
    = Prelude.Just WORKER_VERSIONING_MODE_VERSIONED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded WorkerVersioningMode where
  minBound = WORKER_VERSIONING_MODE_UNSPECIFIED
  maxBound = WORKER_VERSIONING_MODE_VERSIONED
instance Prelude.Enum WorkerVersioningMode where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum WorkerVersioningMode: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum WORKER_VERSIONING_MODE_UNSPECIFIED = 0
  fromEnum WORKER_VERSIONING_MODE_UNVERSIONED = 1
  fromEnum WORKER_VERSIONING_MODE_VERSIONED = 2
  fromEnum
    (WorkerVersioningMode'Unrecognized (WorkerVersioningMode'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ WORKER_VERSIONING_MODE_VERSIONED
    = Prelude.error
        "WorkerVersioningMode.succ: bad argument WORKER_VERSIONING_MODE_VERSIONED. This value would be out of bounds."
  succ WORKER_VERSIONING_MODE_UNSPECIFIED
    = WORKER_VERSIONING_MODE_UNVERSIONED
  succ WORKER_VERSIONING_MODE_UNVERSIONED
    = WORKER_VERSIONING_MODE_VERSIONED
  succ (WorkerVersioningMode'Unrecognized _)
    = Prelude.error
        "WorkerVersioningMode.succ: bad argument: unrecognized value"
  pred WORKER_VERSIONING_MODE_UNSPECIFIED
    = Prelude.error
        "WorkerVersioningMode.pred: bad argument WORKER_VERSIONING_MODE_UNSPECIFIED. This value would be out of bounds."
  pred WORKER_VERSIONING_MODE_UNVERSIONED
    = WORKER_VERSIONING_MODE_UNSPECIFIED
  pred WORKER_VERSIONING_MODE_VERSIONED
    = WORKER_VERSIONING_MODE_UNVERSIONED
  pred (WorkerVersioningMode'Unrecognized _)
    = Prelude.error
        "WorkerVersioningMode.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault WorkerVersioningMode where
  fieldDefault = WORKER_VERSIONING_MODE_UNSPECIFIED
instance Control.DeepSeq.NFData WorkerVersioningMode where
  rnf x__ = Prelude.seq x__ ()