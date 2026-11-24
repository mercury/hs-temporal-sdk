{- This file was auto-generated from temporal/api/enums/v1/task_queue.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Enums.V1.TaskQueue (
        BuildIdTaskReachability(..), BuildIdTaskReachability(),
        BuildIdTaskReachability'UnrecognizedValue,
        DescribeTaskQueueMode(..), DescribeTaskQueueMode(),
        DescribeTaskQueueMode'UnrecognizedValue, RateLimitSource(..),
        RateLimitSource(), RateLimitSource'UnrecognizedValue,
        RoutingConfigUpdateState(..), RoutingConfigUpdateState(),
        RoutingConfigUpdateState'UnrecognizedValue, TaskQueueKind(..),
        TaskQueueKind(), TaskQueueKind'UnrecognizedValue,
        TaskQueueType(..), TaskQueueType(),
        TaskQueueType'UnrecognizedValue, TaskReachability(..),
        TaskReachability(), TaskReachability'UnrecognizedValue
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
newtype BuildIdTaskReachability'UnrecognizedValue
  = BuildIdTaskReachability'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data BuildIdTaskReachability
  = BUILD_ID_TASK_REACHABILITY_UNSPECIFIED |
    BUILD_ID_TASK_REACHABILITY_REACHABLE |
    BUILD_ID_TASK_REACHABILITY_CLOSED_WORKFLOWS_ONLY |
    BUILD_ID_TASK_REACHABILITY_UNREACHABLE |
    BuildIdTaskReachability'Unrecognized !BuildIdTaskReachability'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum BuildIdTaskReachability where
  maybeToEnum 0 = Prelude.Just BUILD_ID_TASK_REACHABILITY_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just BUILD_ID_TASK_REACHABILITY_REACHABLE
  maybeToEnum 2
    = Prelude.Just BUILD_ID_TASK_REACHABILITY_CLOSED_WORKFLOWS_ONLY
  maybeToEnum 3 = Prelude.Just BUILD_ID_TASK_REACHABILITY_UNREACHABLE
  maybeToEnum k
    = Prelude.Just
        (BuildIdTaskReachability'Unrecognized
           (BuildIdTaskReachability'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum BUILD_ID_TASK_REACHABILITY_UNSPECIFIED
    = "BUILD_ID_TASK_REACHABILITY_UNSPECIFIED"
  showEnum BUILD_ID_TASK_REACHABILITY_REACHABLE
    = "BUILD_ID_TASK_REACHABILITY_REACHABLE"
  showEnum BUILD_ID_TASK_REACHABILITY_CLOSED_WORKFLOWS_ONLY
    = "BUILD_ID_TASK_REACHABILITY_CLOSED_WORKFLOWS_ONLY"
  showEnum BUILD_ID_TASK_REACHABILITY_UNREACHABLE
    = "BUILD_ID_TASK_REACHABILITY_UNREACHABLE"
  showEnum
    (BuildIdTaskReachability'Unrecognized (BuildIdTaskReachability'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "BUILD_ID_TASK_REACHABILITY_UNSPECIFIED"
    = Prelude.Just BUILD_ID_TASK_REACHABILITY_UNSPECIFIED
    | (Prelude.==) k "BUILD_ID_TASK_REACHABILITY_REACHABLE"
    = Prelude.Just BUILD_ID_TASK_REACHABILITY_REACHABLE
    | (Prelude.==) k "BUILD_ID_TASK_REACHABILITY_CLOSED_WORKFLOWS_ONLY"
    = Prelude.Just BUILD_ID_TASK_REACHABILITY_CLOSED_WORKFLOWS_ONLY
    | (Prelude.==) k "BUILD_ID_TASK_REACHABILITY_UNREACHABLE"
    = Prelude.Just BUILD_ID_TASK_REACHABILITY_UNREACHABLE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded BuildIdTaskReachability where
  minBound = BUILD_ID_TASK_REACHABILITY_UNSPECIFIED
  maxBound = BUILD_ID_TASK_REACHABILITY_UNREACHABLE
instance Prelude.Enum BuildIdTaskReachability where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum BuildIdTaskReachability: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum BUILD_ID_TASK_REACHABILITY_UNSPECIFIED = 0
  fromEnum BUILD_ID_TASK_REACHABILITY_REACHABLE = 1
  fromEnum BUILD_ID_TASK_REACHABILITY_CLOSED_WORKFLOWS_ONLY = 2
  fromEnum BUILD_ID_TASK_REACHABILITY_UNREACHABLE = 3
  fromEnum
    (BuildIdTaskReachability'Unrecognized (BuildIdTaskReachability'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ BUILD_ID_TASK_REACHABILITY_UNREACHABLE
    = Prelude.error
        "BuildIdTaskReachability.succ: bad argument BUILD_ID_TASK_REACHABILITY_UNREACHABLE. This value would be out of bounds."
  succ BUILD_ID_TASK_REACHABILITY_UNSPECIFIED
    = BUILD_ID_TASK_REACHABILITY_REACHABLE
  succ BUILD_ID_TASK_REACHABILITY_REACHABLE
    = BUILD_ID_TASK_REACHABILITY_CLOSED_WORKFLOWS_ONLY
  succ BUILD_ID_TASK_REACHABILITY_CLOSED_WORKFLOWS_ONLY
    = BUILD_ID_TASK_REACHABILITY_UNREACHABLE
  succ (BuildIdTaskReachability'Unrecognized _)
    = Prelude.error
        "BuildIdTaskReachability.succ: bad argument: unrecognized value"
  pred BUILD_ID_TASK_REACHABILITY_UNSPECIFIED
    = Prelude.error
        "BuildIdTaskReachability.pred: bad argument BUILD_ID_TASK_REACHABILITY_UNSPECIFIED. This value would be out of bounds."
  pred BUILD_ID_TASK_REACHABILITY_REACHABLE
    = BUILD_ID_TASK_REACHABILITY_UNSPECIFIED
  pred BUILD_ID_TASK_REACHABILITY_CLOSED_WORKFLOWS_ONLY
    = BUILD_ID_TASK_REACHABILITY_REACHABLE
  pred BUILD_ID_TASK_REACHABILITY_UNREACHABLE
    = BUILD_ID_TASK_REACHABILITY_CLOSED_WORKFLOWS_ONLY
  pred (BuildIdTaskReachability'Unrecognized _)
    = Prelude.error
        "BuildIdTaskReachability.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault BuildIdTaskReachability where
  fieldDefault = BUILD_ID_TASK_REACHABILITY_UNSPECIFIED
instance Control.DeepSeq.NFData BuildIdTaskReachability where
  rnf x__ = Prelude.seq x__ ()
newtype DescribeTaskQueueMode'UnrecognizedValue
  = DescribeTaskQueueMode'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data DescribeTaskQueueMode
  = DESCRIBE_TASK_QUEUE_MODE_UNSPECIFIED |
    DESCRIBE_TASK_QUEUE_MODE_ENHANCED |
    DescribeTaskQueueMode'Unrecognized !DescribeTaskQueueMode'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum DescribeTaskQueueMode where
  maybeToEnum 0 = Prelude.Just DESCRIBE_TASK_QUEUE_MODE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just DESCRIBE_TASK_QUEUE_MODE_ENHANCED
  maybeToEnum k
    = Prelude.Just
        (DescribeTaskQueueMode'Unrecognized
           (DescribeTaskQueueMode'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum DESCRIBE_TASK_QUEUE_MODE_UNSPECIFIED
    = "DESCRIBE_TASK_QUEUE_MODE_UNSPECIFIED"
  showEnum DESCRIBE_TASK_QUEUE_MODE_ENHANCED
    = "DESCRIBE_TASK_QUEUE_MODE_ENHANCED"
  showEnum
    (DescribeTaskQueueMode'Unrecognized (DescribeTaskQueueMode'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "DESCRIBE_TASK_QUEUE_MODE_UNSPECIFIED"
    = Prelude.Just DESCRIBE_TASK_QUEUE_MODE_UNSPECIFIED
    | (Prelude.==) k "DESCRIBE_TASK_QUEUE_MODE_ENHANCED"
    = Prelude.Just DESCRIBE_TASK_QUEUE_MODE_ENHANCED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded DescribeTaskQueueMode where
  minBound = DESCRIBE_TASK_QUEUE_MODE_UNSPECIFIED
  maxBound = DESCRIBE_TASK_QUEUE_MODE_ENHANCED
instance Prelude.Enum DescribeTaskQueueMode where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum DescribeTaskQueueMode: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum DESCRIBE_TASK_QUEUE_MODE_UNSPECIFIED = 0
  fromEnum DESCRIBE_TASK_QUEUE_MODE_ENHANCED = 1
  fromEnum
    (DescribeTaskQueueMode'Unrecognized (DescribeTaskQueueMode'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ DESCRIBE_TASK_QUEUE_MODE_ENHANCED
    = Prelude.error
        "DescribeTaskQueueMode.succ: bad argument DESCRIBE_TASK_QUEUE_MODE_ENHANCED. This value would be out of bounds."
  succ DESCRIBE_TASK_QUEUE_MODE_UNSPECIFIED
    = DESCRIBE_TASK_QUEUE_MODE_ENHANCED
  succ (DescribeTaskQueueMode'Unrecognized _)
    = Prelude.error
        "DescribeTaskQueueMode.succ: bad argument: unrecognized value"
  pred DESCRIBE_TASK_QUEUE_MODE_UNSPECIFIED
    = Prelude.error
        "DescribeTaskQueueMode.pred: bad argument DESCRIBE_TASK_QUEUE_MODE_UNSPECIFIED. This value would be out of bounds."
  pred DESCRIBE_TASK_QUEUE_MODE_ENHANCED
    = DESCRIBE_TASK_QUEUE_MODE_UNSPECIFIED
  pred (DescribeTaskQueueMode'Unrecognized _)
    = Prelude.error
        "DescribeTaskQueueMode.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault DescribeTaskQueueMode where
  fieldDefault = DESCRIBE_TASK_QUEUE_MODE_UNSPECIFIED
instance Control.DeepSeq.NFData DescribeTaskQueueMode where
  rnf x__ = Prelude.seq x__ ()
newtype RateLimitSource'UnrecognizedValue
  = RateLimitSource'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data RateLimitSource
  = RATE_LIMIT_SOURCE_UNSPECIFIED |
    RATE_LIMIT_SOURCE_API |
    RATE_LIMIT_SOURCE_WORKER |
    RATE_LIMIT_SOURCE_SYSTEM |
    RateLimitSource'Unrecognized !RateLimitSource'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum RateLimitSource where
  maybeToEnum 0 = Prelude.Just RATE_LIMIT_SOURCE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just RATE_LIMIT_SOURCE_API
  maybeToEnum 2 = Prelude.Just RATE_LIMIT_SOURCE_WORKER
  maybeToEnum 3 = Prelude.Just RATE_LIMIT_SOURCE_SYSTEM
  maybeToEnum k
    = Prelude.Just
        (RateLimitSource'Unrecognized
           (RateLimitSource'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum RATE_LIMIT_SOURCE_UNSPECIFIED
    = "RATE_LIMIT_SOURCE_UNSPECIFIED"
  showEnum RATE_LIMIT_SOURCE_API = "RATE_LIMIT_SOURCE_API"
  showEnum RATE_LIMIT_SOURCE_WORKER = "RATE_LIMIT_SOURCE_WORKER"
  showEnum RATE_LIMIT_SOURCE_SYSTEM = "RATE_LIMIT_SOURCE_SYSTEM"
  showEnum
    (RateLimitSource'Unrecognized (RateLimitSource'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "RATE_LIMIT_SOURCE_UNSPECIFIED"
    = Prelude.Just RATE_LIMIT_SOURCE_UNSPECIFIED
    | (Prelude.==) k "RATE_LIMIT_SOURCE_API"
    = Prelude.Just RATE_LIMIT_SOURCE_API
    | (Prelude.==) k "RATE_LIMIT_SOURCE_WORKER"
    = Prelude.Just RATE_LIMIT_SOURCE_WORKER
    | (Prelude.==) k "RATE_LIMIT_SOURCE_SYSTEM"
    = Prelude.Just RATE_LIMIT_SOURCE_SYSTEM
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded RateLimitSource where
  minBound = RATE_LIMIT_SOURCE_UNSPECIFIED
  maxBound = RATE_LIMIT_SOURCE_SYSTEM
instance Prelude.Enum RateLimitSource where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum RateLimitSource: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum RATE_LIMIT_SOURCE_UNSPECIFIED = 0
  fromEnum RATE_LIMIT_SOURCE_API = 1
  fromEnum RATE_LIMIT_SOURCE_WORKER = 2
  fromEnum RATE_LIMIT_SOURCE_SYSTEM = 3
  fromEnum
    (RateLimitSource'Unrecognized (RateLimitSource'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ RATE_LIMIT_SOURCE_SYSTEM
    = Prelude.error
        "RateLimitSource.succ: bad argument RATE_LIMIT_SOURCE_SYSTEM. This value would be out of bounds."
  succ RATE_LIMIT_SOURCE_UNSPECIFIED = RATE_LIMIT_SOURCE_API
  succ RATE_LIMIT_SOURCE_API = RATE_LIMIT_SOURCE_WORKER
  succ RATE_LIMIT_SOURCE_WORKER = RATE_LIMIT_SOURCE_SYSTEM
  succ (RateLimitSource'Unrecognized _)
    = Prelude.error
        "RateLimitSource.succ: bad argument: unrecognized value"
  pred RATE_LIMIT_SOURCE_UNSPECIFIED
    = Prelude.error
        "RateLimitSource.pred: bad argument RATE_LIMIT_SOURCE_UNSPECIFIED. This value would be out of bounds."
  pred RATE_LIMIT_SOURCE_API = RATE_LIMIT_SOURCE_UNSPECIFIED
  pred RATE_LIMIT_SOURCE_WORKER = RATE_LIMIT_SOURCE_API
  pred RATE_LIMIT_SOURCE_SYSTEM = RATE_LIMIT_SOURCE_WORKER
  pred (RateLimitSource'Unrecognized _)
    = Prelude.error
        "RateLimitSource.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault RateLimitSource where
  fieldDefault = RATE_LIMIT_SOURCE_UNSPECIFIED
instance Control.DeepSeq.NFData RateLimitSource where
  rnf x__ = Prelude.seq x__ ()
newtype RoutingConfigUpdateState'UnrecognizedValue
  = RoutingConfigUpdateState'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data RoutingConfigUpdateState
  = ROUTING_CONFIG_UPDATE_STATE_UNSPECIFIED |
    ROUTING_CONFIG_UPDATE_STATE_IN_PROGRESS |
    ROUTING_CONFIG_UPDATE_STATE_COMPLETED |
    RoutingConfigUpdateState'Unrecognized !RoutingConfigUpdateState'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum RoutingConfigUpdateState where
  maybeToEnum 0
    = Prelude.Just ROUTING_CONFIG_UPDATE_STATE_UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just ROUTING_CONFIG_UPDATE_STATE_IN_PROGRESS
  maybeToEnum 2 = Prelude.Just ROUTING_CONFIG_UPDATE_STATE_COMPLETED
  maybeToEnum k
    = Prelude.Just
        (RoutingConfigUpdateState'Unrecognized
           (RoutingConfigUpdateState'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum ROUTING_CONFIG_UPDATE_STATE_UNSPECIFIED
    = "ROUTING_CONFIG_UPDATE_STATE_UNSPECIFIED"
  showEnum ROUTING_CONFIG_UPDATE_STATE_IN_PROGRESS
    = "ROUTING_CONFIG_UPDATE_STATE_IN_PROGRESS"
  showEnum ROUTING_CONFIG_UPDATE_STATE_COMPLETED
    = "ROUTING_CONFIG_UPDATE_STATE_COMPLETED"
  showEnum
    (RoutingConfigUpdateState'Unrecognized (RoutingConfigUpdateState'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "ROUTING_CONFIG_UPDATE_STATE_UNSPECIFIED"
    = Prelude.Just ROUTING_CONFIG_UPDATE_STATE_UNSPECIFIED
    | (Prelude.==) k "ROUTING_CONFIG_UPDATE_STATE_IN_PROGRESS"
    = Prelude.Just ROUTING_CONFIG_UPDATE_STATE_IN_PROGRESS
    | (Prelude.==) k "ROUTING_CONFIG_UPDATE_STATE_COMPLETED"
    = Prelude.Just ROUTING_CONFIG_UPDATE_STATE_COMPLETED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded RoutingConfigUpdateState where
  minBound = ROUTING_CONFIG_UPDATE_STATE_UNSPECIFIED
  maxBound = ROUTING_CONFIG_UPDATE_STATE_COMPLETED
instance Prelude.Enum RoutingConfigUpdateState where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum RoutingConfigUpdateState: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum ROUTING_CONFIG_UPDATE_STATE_UNSPECIFIED = 0
  fromEnum ROUTING_CONFIG_UPDATE_STATE_IN_PROGRESS = 1
  fromEnum ROUTING_CONFIG_UPDATE_STATE_COMPLETED = 2
  fromEnum
    (RoutingConfigUpdateState'Unrecognized (RoutingConfigUpdateState'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ROUTING_CONFIG_UPDATE_STATE_COMPLETED
    = Prelude.error
        "RoutingConfigUpdateState.succ: bad argument ROUTING_CONFIG_UPDATE_STATE_COMPLETED. This value would be out of bounds."
  succ ROUTING_CONFIG_UPDATE_STATE_UNSPECIFIED
    = ROUTING_CONFIG_UPDATE_STATE_IN_PROGRESS
  succ ROUTING_CONFIG_UPDATE_STATE_IN_PROGRESS
    = ROUTING_CONFIG_UPDATE_STATE_COMPLETED
  succ (RoutingConfigUpdateState'Unrecognized _)
    = Prelude.error
        "RoutingConfigUpdateState.succ: bad argument: unrecognized value"
  pred ROUTING_CONFIG_UPDATE_STATE_UNSPECIFIED
    = Prelude.error
        "RoutingConfigUpdateState.pred: bad argument ROUTING_CONFIG_UPDATE_STATE_UNSPECIFIED. This value would be out of bounds."
  pred ROUTING_CONFIG_UPDATE_STATE_IN_PROGRESS
    = ROUTING_CONFIG_UPDATE_STATE_UNSPECIFIED
  pred ROUTING_CONFIG_UPDATE_STATE_COMPLETED
    = ROUTING_CONFIG_UPDATE_STATE_IN_PROGRESS
  pred (RoutingConfigUpdateState'Unrecognized _)
    = Prelude.error
        "RoutingConfigUpdateState.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault RoutingConfigUpdateState where
  fieldDefault = ROUTING_CONFIG_UPDATE_STATE_UNSPECIFIED
instance Control.DeepSeq.NFData RoutingConfigUpdateState where
  rnf x__ = Prelude.seq x__ ()
newtype TaskQueueKind'UnrecognizedValue
  = TaskQueueKind'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data TaskQueueKind
  = TASK_QUEUE_KIND_UNSPECIFIED |
    TASK_QUEUE_KIND_NORMAL |
    TASK_QUEUE_KIND_STICKY |
    TASK_QUEUE_KIND_WORKER_COMMANDS |
    TaskQueueKind'Unrecognized !TaskQueueKind'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum TaskQueueKind where
  maybeToEnum 0 = Prelude.Just TASK_QUEUE_KIND_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just TASK_QUEUE_KIND_NORMAL
  maybeToEnum 2 = Prelude.Just TASK_QUEUE_KIND_STICKY
  maybeToEnum 3 = Prelude.Just TASK_QUEUE_KIND_WORKER_COMMANDS
  maybeToEnum k
    = Prelude.Just
        (TaskQueueKind'Unrecognized
           (TaskQueueKind'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum TASK_QUEUE_KIND_UNSPECIFIED
    = "TASK_QUEUE_KIND_UNSPECIFIED"
  showEnum TASK_QUEUE_KIND_NORMAL = "TASK_QUEUE_KIND_NORMAL"
  showEnum TASK_QUEUE_KIND_STICKY = "TASK_QUEUE_KIND_STICKY"
  showEnum TASK_QUEUE_KIND_WORKER_COMMANDS
    = "TASK_QUEUE_KIND_WORKER_COMMANDS"
  showEnum
    (TaskQueueKind'Unrecognized (TaskQueueKind'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "TASK_QUEUE_KIND_UNSPECIFIED"
    = Prelude.Just TASK_QUEUE_KIND_UNSPECIFIED
    | (Prelude.==) k "TASK_QUEUE_KIND_NORMAL"
    = Prelude.Just TASK_QUEUE_KIND_NORMAL
    | (Prelude.==) k "TASK_QUEUE_KIND_STICKY"
    = Prelude.Just TASK_QUEUE_KIND_STICKY
    | (Prelude.==) k "TASK_QUEUE_KIND_WORKER_COMMANDS"
    = Prelude.Just TASK_QUEUE_KIND_WORKER_COMMANDS
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded TaskQueueKind where
  minBound = TASK_QUEUE_KIND_UNSPECIFIED
  maxBound = TASK_QUEUE_KIND_WORKER_COMMANDS
instance Prelude.Enum TaskQueueKind where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum TaskQueueKind: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum TASK_QUEUE_KIND_UNSPECIFIED = 0
  fromEnum TASK_QUEUE_KIND_NORMAL = 1
  fromEnum TASK_QUEUE_KIND_STICKY = 2
  fromEnum TASK_QUEUE_KIND_WORKER_COMMANDS = 3
  fromEnum
    (TaskQueueKind'Unrecognized (TaskQueueKind'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ TASK_QUEUE_KIND_WORKER_COMMANDS
    = Prelude.error
        "TaskQueueKind.succ: bad argument TASK_QUEUE_KIND_WORKER_COMMANDS. This value would be out of bounds."
  succ TASK_QUEUE_KIND_UNSPECIFIED = TASK_QUEUE_KIND_NORMAL
  succ TASK_QUEUE_KIND_NORMAL = TASK_QUEUE_KIND_STICKY
  succ TASK_QUEUE_KIND_STICKY = TASK_QUEUE_KIND_WORKER_COMMANDS
  succ (TaskQueueKind'Unrecognized _)
    = Prelude.error
        "TaskQueueKind.succ: bad argument: unrecognized value"
  pred TASK_QUEUE_KIND_UNSPECIFIED
    = Prelude.error
        "TaskQueueKind.pred: bad argument TASK_QUEUE_KIND_UNSPECIFIED. This value would be out of bounds."
  pred TASK_QUEUE_KIND_NORMAL = TASK_QUEUE_KIND_UNSPECIFIED
  pred TASK_QUEUE_KIND_STICKY = TASK_QUEUE_KIND_NORMAL
  pred TASK_QUEUE_KIND_WORKER_COMMANDS = TASK_QUEUE_KIND_STICKY
  pred (TaskQueueKind'Unrecognized _)
    = Prelude.error
        "TaskQueueKind.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault TaskQueueKind where
  fieldDefault = TASK_QUEUE_KIND_UNSPECIFIED
instance Control.DeepSeq.NFData TaskQueueKind where
  rnf x__ = Prelude.seq x__ ()
newtype TaskQueueType'UnrecognizedValue
  = TaskQueueType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data TaskQueueType
  = TASK_QUEUE_TYPE_UNSPECIFIED |
    TASK_QUEUE_TYPE_WORKFLOW |
    TASK_QUEUE_TYPE_ACTIVITY |
    TASK_QUEUE_TYPE_NEXUS |
    TaskQueueType'Unrecognized !TaskQueueType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum TaskQueueType where
  maybeToEnum 0 = Prelude.Just TASK_QUEUE_TYPE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just TASK_QUEUE_TYPE_WORKFLOW
  maybeToEnum 2 = Prelude.Just TASK_QUEUE_TYPE_ACTIVITY
  maybeToEnum 3 = Prelude.Just TASK_QUEUE_TYPE_NEXUS
  maybeToEnum k
    = Prelude.Just
        (TaskQueueType'Unrecognized
           (TaskQueueType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum TASK_QUEUE_TYPE_UNSPECIFIED
    = "TASK_QUEUE_TYPE_UNSPECIFIED"
  showEnum TASK_QUEUE_TYPE_WORKFLOW = "TASK_QUEUE_TYPE_WORKFLOW"
  showEnum TASK_QUEUE_TYPE_ACTIVITY = "TASK_QUEUE_TYPE_ACTIVITY"
  showEnum TASK_QUEUE_TYPE_NEXUS = "TASK_QUEUE_TYPE_NEXUS"
  showEnum
    (TaskQueueType'Unrecognized (TaskQueueType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "TASK_QUEUE_TYPE_UNSPECIFIED"
    = Prelude.Just TASK_QUEUE_TYPE_UNSPECIFIED
    | (Prelude.==) k "TASK_QUEUE_TYPE_WORKFLOW"
    = Prelude.Just TASK_QUEUE_TYPE_WORKFLOW
    | (Prelude.==) k "TASK_QUEUE_TYPE_ACTIVITY"
    = Prelude.Just TASK_QUEUE_TYPE_ACTIVITY
    | (Prelude.==) k "TASK_QUEUE_TYPE_NEXUS"
    = Prelude.Just TASK_QUEUE_TYPE_NEXUS
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded TaskQueueType where
  minBound = TASK_QUEUE_TYPE_UNSPECIFIED
  maxBound = TASK_QUEUE_TYPE_NEXUS
instance Prelude.Enum TaskQueueType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum TaskQueueType: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum TASK_QUEUE_TYPE_UNSPECIFIED = 0
  fromEnum TASK_QUEUE_TYPE_WORKFLOW = 1
  fromEnum TASK_QUEUE_TYPE_ACTIVITY = 2
  fromEnum TASK_QUEUE_TYPE_NEXUS = 3
  fromEnum
    (TaskQueueType'Unrecognized (TaskQueueType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ TASK_QUEUE_TYPE_NEXUS
    = Prelude.error
        "TaskQueueType.succ: bad argument TASK_QUEUE_TYPE_NEXUS. This value would be out of bounds."
  succ TASK_QUEUE_TYPE_UNSPECIFIED = TASK_QUEUE_TYPE_WORKFLOW
  succ TASK_QUEUE_TYPE_WORKFLOW = TASK_QUEUE_TYPE_ACTIVITY
  succ TASK_QUEUE_TYPE_ACTIVITY = TASK_QUEUE_TYPE_NEXUS
  succ (TaskQueueType'Unrecognized _)
    = Prelude.error
        "TaskQueueType.succ: bad argument: unrecognized value"
  pred TASK_QUEUE_TYPE_UNSPECIFIED
    = Prelude.error
        "TaskQueueType.pred: bad argument TASK_QUEUE_TYPE_UNSPECIFIED. This value would be out of bounds."
  pred TASK_QUEUE_TYPE_WORKFLOW = TASK_QUEUE_TYPE_UNSPECIFIED
  pred TASK_QUEUE_TYPE_ACTIVITY = TASK_QUEUE_TYPE_WORKFLOW
  pred TASK_QUEUE_TYPE_NEXUS = TASK_QUEUE_TYPE_ACTIVITY
  pred (TaskQueueType'Unrecognized _)
    = Prelude.error
        "TaskQueueType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault TaskQueueType where
  fieldDefault = TASK_QUEUE_TYPE_UNSPECIFIED
instance Control.DeepSeq.NFData TaskQueueType where
  rnf x__ = Prelude.seq x__ ()
newtype TaskReachability'UnrecognizedValue
  = TaskReachability'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data TaskReachability
  = TASK_REACHABILITY_UNSPECIFIED |
    TASK_REACHABILITY_NEW_WORKFLOWS |
    TASK_REACHABILITY_EXISTING_WORKFLOWS |
    TASK_REACHABILITY_OPEN_WORKFLOWS |
    TASK_REACHABILITY_CLOSED_WORKFLOWS |
    TaskReachability'Unrecognized !TaskReachability'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum TaskReachability where
  maybeToEnum 0 = Prelude.Just TASK_REACHABILITY_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just TASK_REACHABILITY_NEW_WORKFLOWS
  maybeToEnum 2 = Prelude.Just TASK_REACHABILITY_EXISTING_WORKFLOWS
  maybeToEnum 3 = Prelude.Just TASK_REACHABILITY_OPEN_WORKFLOWS
  maybeToEnum 4 = Prelude.Just TASK_REACHABILITY_CLOSED_WORKFLOWS
  maybeToEnum k
    = Prelude.Just
        (TaskReachability'Unrecognized
           (TaskReachability'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum TASK_REACHABILITY_UNSPECIFIED
    = "TASK_REACHABILITY_UNSPECIFIED"
  showEnum TASK_REACHABILITY_NEW_WORKFLOWS
    = "TASK_REACHABILITY_NEW_WORKFLOWS"
  showEnum TASK_REACHABILITY_EXISTING_WORKFLOWS
    = "TASK_REACHABILITY_EXISTING_WORKFLOWS"
  showEnum TASK_REACHABILITY_OPEN_WORKFLOWS
    = "TASK_REACHABILITY_OPEN_WORKFLOWS"
  showEnum TASK_REACHABILITY_CLOSED_WORKFLOWS
    = "TASK_REACHABILITY_CLOSED_WORKFLOWS"
  showEnum
    (TaskReachability'Unrecognized (TaskReachability'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "TASK_REACHABILITY_UNSPECIFIED"
    = Prelude.Just TASK_REACHABILITY_UNSPECIFIED
    | (Prelude.==) k "TASK_REACHABILITY_NEW_WORKFLOWS"
    = Prelude.Just TASK_REACHABILITY_NEW_WORKFLOWS
    | (Prelude.==) k "TASK_REACHABILITY_EXISTING_WORKFLOWS"
    = Prelude.Just TASK_REACHABILITY_EXISTING_WORKFLOWS
    | (Prelude.==) k "TASK_REACHABILITY_OPEN_WORKFLOWS"
    = Prelude.Just TASK_REACHABILITY_OPEN_WORKFLOWS
    | (Prelude.==) k "TASK_REACHABILITY_CLOSED_WORKFLOWS"
    = Prelude.Just TASK_REACHABILITY_CLOSED_WORKFLOWS
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded TaskReachability where
  minBound = TASK_REACHABILITY_UNSPECIFIED
  maxBound = TASK_REACHABILITY_CLOSED_WORKFLOWS
instance Prelude.Enum TaskReachability where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum TaskReachability: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum TASK_REACHABILITY_UNSPECIFIED = 0
  fromEnum TASK_REACHABILITY_NEW_WORKFLOWS = 1
  fromEnum TASK_REACHABILITY_EXISTING_WORKFLOWS = 2
  fromEnum TASK_REACHABILITY_OPEN_WORKFLOWS = 3
  fromEnum TASK_REACHABILITY_CLOSED_WORKFLOWS = 4
  fromEnum
    (TaskReachability'Unrecognized (TaskReachability'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ TASK_REACHABILITY_CLOSED_WORKFLOWS
    = Prelude.error
        "TaskReachability.succ: bad argument TASK_REACHABILITY_CLOSED_WORKFLOWS. This value would be out of bounds."
  succ TASK_REACHABILITY_UNSPECIFIED
    = TASK_REACHABILITY_NEW_WORKFLOWS
  succ TASK_REACHABILITY_NEW_WORKFLOWS
    = TASK_REACHABILITY_EXISTING_WORKFLOWS
  succ TASK_REACHABILITY_EXISTING_WORKFLOWS
    = TASK_REACHABILITY_OPEN_WORKFLOWS
  succ TASK_REACHABILITY_OPEN_WORKFLOWS
    = TASK_REACHABILITY_CLOSED_WORKFLOWS
  succ (TaskReachability'Unrecognized _)
    = Prelude.error
        "TaskReachability.succ: bad argument: unrecognized value"
  pred TASK_REACHABILITY_UNSPECIFIED
    = Prelude.error
        "TaskReachability.pred: bad argument TASK_REACHABILITY_UNSPECIFIED. This value would be out of bounds."
  pred TASK_REACHABILITY_NEW_WORKFLOWS
    = TASK_REACHABILITY_UNSPECIFIED
  pred TASK_REACHABILITY_EXISTING_WORKFLOWS
    = TASK_REACHABILITY_NEW_WORKFLOWS
  pred TASK_REACHABILITY_OPEN_WORKFLOWS
    = TASK_REACHABILITY_EXISTING_WORKFLOWS
  pred TASK_REACHABILITY_CLOSED_WORKFLOWS
    = TASK_REACHABILITY_OPEN_WORKFLOWS
  pred (TaskReachability'Unrecognized _)
    = Prelude.error
        "TaskReachability.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault TaskReachability where
  fieldDefault = TASK_REACHABILITY_UNSPECIFIED
instance Control.DeepSeq.NFData TaskReachability where
  rnf x__ = Prelude.seq x__ ()