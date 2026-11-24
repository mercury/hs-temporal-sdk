{- This file was auto-generated from temporal/api/enums/v1/workflow.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Enums.V1.Workflow (
        ContinueAsNewInitiator(..), ContinueAsNewInitiator(),
        ContinueAsNewInitiator'UnrecognizedValue,
        ContinueAsNewVersioningBehavior(..),
        ContinueAsNewVersioningBehavior(),
        ContinueAsNewVersioningBehavior'UnrecognizedValue,
        HistoryEventFilterType(..), HistoryEventFilterType(),
        HistoryEventFilterType'UnrecognizedValue, ParentClosePolicy(..),
        ParentClosePolicy(), ParentClosePolicy'UnrecognizedValue,
        PendingActivityState(..), PendingActivityState(),
        PendingActivityState'UnrecognizedValue,
        PendingWorkflowTaskState(..), PendingWorkflowTaskState(),
        PendingWorkflowTaskState'UnrecognizedValue, RetryState(..),
        RetryState(), RetryState'UnrecognizedValue,
        SuggestContinueAsNewReason(..), SuggestContinueAsNewReason(),
        SuggestContinueAsNewReason'UnrecognizedValue, TimeoutType(..),
        TimeoutType(), TimeoutType'UnrecognizedValue,
        VersioningBehavior(..), VersioningBehavior(),
        VersioningBehavior'UnrecognizedValue, WorkflowExecutionStatus(..),
        WorkflowExecutionStatus(),
        WorkflowExecutionStatus'UnrecognizedValue,
        WorkflowIdConflictPolicy(..), WorkflowIdConflictPolicy(),
        WorkflowIdConflictPolicy'UnrecognizedValue,
        WorkflowIdReusePolicy(..), WorkflowIdReusePolicy(),
        WorkflowIdReusePolicy'UnrecognizedValue
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
newtype ContinueAsNewInitiator'UnrecognizedValue
  = ContinueAsNewInitiator'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ContinueAsNewInitiator
  = CONTINUE_AS_NEW_INITIATOR_UNSPECIFIED |
    CONTINUE_AS_NEW_INITIATOR_WORKFLOW |
    CONTINUE_AS_NEW_INITIATOR_RETRY |
    CONTINUE_AS_NEW_INITIATOR_CRON_SCHEDULE |
    ContinueAsNewInitiator'Unrecognized !ContinueAsNewInitiator'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ContinueAsNewInitiator where
  maybeToEnum 0 = Prelude.Just CONTINUE_AS_NEW_INITIATOR_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just CONTINUE_AS_NEW_INITIATOR_WORKFLOW
  maybeToEnum 2 = Prelude.Just CONTINUE_AS_NEW_INITIATOR_RETRY
  maybeToEnum 3
    = Prelude.Just CONTINUE_AS_NEW_INITIATOR_CRON_SCHEDULE
  maybeToEnum k
    = Prelude.Just
        (ContinueAsNewInitiator'Unrecognized
           (ContinueAsNewInitiator'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum CONTINUE_AS_NEW_INITIATOR_UNSPECIFIED
    = "CONTINUE_AS_NEW_INITIATOR_UNSPECIFIED"
  showEnum CONTINUE_AS_NEW_INITIATOR_WORKFLOW
    = "CONTINUE_AS_NEW_INITIATOR_WORKFLOW"
  showEnum CONTINUE_AS_NEW_INITIATOR_RETRY
    = "CONTINUE_AS_NEW_INITIATOR_RETRY"
  showEnum CONTINUE_AS_NEW_INITIATOR_CRON_SCHEDULE
    = "CONTINUE_AS_NEW_INITIATOR_CRON_SCHEDULE"
  showEnum
    (ContinueAsNewInitiator'Unrecognized (ContinueAsNewInitiator'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "CONTINUE_AS_NEW_INITIATOR_UNSPECIFIED"
    = Prelude.Just CONTINUE_AS_NEW_INITIATOR_UNSPECIFIED
    | (Prelude.==) k "CONTINUE_AS_NEW_INITIATOR_WORKFLOW"
    = Prelude.Just CONTINUE_AS_NEW_INITIATOR_WORKFLOW
    | (Prelude.==) k "CONTINUE_AS_NEW_INITIATOR_RETRY"
    = Prelude.Just CONTINUE_AS_NEW_INITIATOR_RETRY
    | (Prelude.==) k "CONTINUE_AS_NEW_INITIATOR_CRON_SCHEDULE"
    = Prelude.Just CONTINUE_AS_NEW_INITIATOR_CRON_SCHEDULE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ContinueAsNewInitiator where
  minBound = CONTINUE_AS_NEW_INITIATOR_UNSPECIFIED
  maxBound = CONTINUE_AS_NEW_INITIATOR_CRON_SCHEDULE
instance Prelude.Enum ContinueAsNewInitiator where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ContinueAsNewInitiator: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum CONTINUE_AS_NEW_INITIATOR_UNSPECIFIED = 0
  fromEnum CONTINUE_AS_NEW_INITIATOR_WORKFLOW = 1
  fromEnum CONTINUE_AS_NEW_INITIATOR_RETRY = 2
  fromEnum CONTINUE_AS_NEW_INITIATOR_CRON_SCHEDULE = 3
  fromEnum
    (ContinueAsNewInitiator'Unrecognized (ContinueAsNewInitiator'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ CONTINUE_AS_NEW_INITIATOR_CRON_SCHEDULE
    = Prelude.error
        "ContinueAsNewInitiator.succ: bad argument CONTINUE_AS_NEW_INITIATOR_CRON_SCHEDULE. This value would be out of bounds."
  succ CONTINUE_AS_NEW_INITIATOR_UNSPECIFIED
    = CONTINUE_AS_NEW_INITIATOR_WORKFLOW
  succ CONTINUE_AS_NEW_INITIATOR_WORKFLOW
    = CONTINUE_AS_NEW_INITIATOR_RETRY
  succ CONTINUE_AS_NEW_INITIATOR_RETRY
    = CONTINUE_AS_NEW_INITIATOR_CRON_SCHEDULE
  succ (ContinueAsNewInitiator'Unrecognized _)
    = Prelude.error
        "ContinueAsNewInitiator.succ: bad argument: unrecognized value"
  pred CONTINUE_AS_NEW_INITIATOR_UNSPECIFIED
    = Prelude.error
        "ContinueAsNewInitiator.pred: bad argument CONTINUE_AS_NEW_INITIATOR_UNSPECIFIED. This value would be out of bounds."
  pred CONTINUE_AS_NEW_INITIATOR_WORKFLOW
    = CONTINUE_AS_NEW_INITIATOR_UNSPECIFIED
  pred CONTINUE_AS_NEW_INITIATOR_RETRY
    = CONTINUE_AS_NEW_INITIATOR_WORKFLOW
  pred CONTINUE_AS_NEW_INITIATOR_CRON_SCHEDULE
    = CONTINUE_AS_NEW_INITIATOR_RETRY
  pred (ContinueAsNewInitiator'Unrecognized _)
    = Prelude.error
        "ContinueAsNewInitiator.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ContinueAsNewInitiator where
  fieldDefault = CONTINUE_AS_NEW_INITIATOR_UNSPECIFIED
instance Control.DeepSeq.NFData ContinueAsNewInitiator where
  rnf x__ = Prelude.seq x__ ()
newtype ContinueAsNewVersioningBehavior'UnrecognizedValue
  = ContinueAsNewVersioningBehavior'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ContinueAsNewVersioningBehavior
  = CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_UNSPECIFIED |
    CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_AUTO_UPGRADE |
    CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_USE_RAMPING_VERSION |
    ContinueAsNewVersioningBehavior'Unrecognized !ContinueAsNewVersioningBehavior'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ContinueAsNewVersioningBehavior where
  maybeToEnum 0
    = Prelude.Just CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_AUTO_UPGRADE
  maybeToEnum 2
    = Prelude.Just
        CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_USE_RAMPING_VERSION
  maybeToEnum k
    = Prelude.Just
        (ContinueAsNewVersioningBehavior'Unrecognized
           (ContinueAsNewVersioningBehavior'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_UNSPECIFIED
    = "CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_UNSPECIFIED"
  showEnum CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_AUTO_UPGRADE
    = "CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_AUTO_UPGRADE"
  showEnum CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_USE_RAMPING_VERSION
    = "CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_USE_RAMPING_VERSION"
  showEnum
    (ContinueAsNewVersioningBehavior'Unrecognized (ContinueAsNewVersioningBehavior'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_UNSPECIFIED"
    = Prelude.Just CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_UNSPECIFIED
    | (Prelude.==) k "CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_AUTO_UPGRADE"
    = Prelude.Just CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_AUTO_UPGRADE
    | (Prelude.==)
        k "CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_USE_RAMPING_VERSION"
    = Prelude.Just
        CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_USE_RAMPING_VERSION
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ContinueAsNewVersioningBehavior where
  minBound = CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_UNSPECIFIED
  maxBound = CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_USE_RAMPING_VERSION
instance Prelude.Enum ContinueAsNewVersioningBehavior where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ContinueAsNewVersioningBehavior: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_UNSPECIFIED = 0
  fromEnum CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_AUTO_UPGRADE = 1
  fromEnum CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_USE_RAMPING_VERSION
    = 2
  fromEnum
    (ContinueAsNewVersioningBehavior'Unrecognized (ContinueAsNewVersioningBehavior'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_USE_RAMPING_VERSION
    = Prelude.error
        "ContinueAsNewVersioningBehavior.succ: bad argument CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_USE_RAMPING_VERSION. This value would be out of bounds."
  succ CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_UNSPECIFIED
    = CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_AUTO_UPGRADE
  succ CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_AUTO_UPGRADE
    = CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_USE_RAMPING_VERSION
  succ (ContinueAsNewVersioningBehavior'Unrecognized _)
    = Prelude.error
        "ContinueAsNewVersioningBehavior.succ: bad argument: unrecognized value"
  pred CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_UNSPECIFIED
    = Prelude.error
        "ContinueAsNewVersioningBehavior.pred: bad argument CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_UNSPECIFIED. This value would be out of bounds."
  pred CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_AUTO_UPGRADE
    = CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_UNSPECIFIED
  pred CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_USE_RAMPING_VERSION
    = CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_AUTO_UPGRADE
  pred (ContinueAsNewVersioningBehavior'Unrecognized _)
    = Prelude.error
        "ContinueAsNewVersioningBehavior.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ContinueAsNewVersioningBehavior where
  fieldDefault = CONTINUE_AS_NEW_VERSIONING_BEHAVIOR_UNSPECIFIED
instance Control.DeepSeq.NFData ContinueAsNewVersioningBehavior where
  rnf x__ = Prelude.seq x__ ()
newtype HistoryEventFilterType'UnrecognizedValue
  = HistoryEventFilterType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data HistoryEventFilterType
  = HISTORY_EVENT_FILTER_TYPE_UNSPECIFIED |
    HISTORY_EVENT_FILTER_TYPE_ALL_EVENT |
    HISTORY_EVENT_FILTER_TYPE_CLOSE_EVENT |
    HistoryEventFilterType'Unrecognized !HistoryEventFilterType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum HistoryEventFilterType where
  maybeToEnum 0 = Prelude.Just HISTORY_EVENT_FILTER_TYPE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just HISTORY_EVENT_FILTER_TYPE_ALL_EVENT
  maybeToEnum 2 = Prelude.Just HISTORY_EVENT_FILTER_TYPE_CLOSE_EVENT
  maybeToEnum k
    = Prelude.Just
        (HistoryEventFilterType'Unrecognized
           (HistoryEventFilterType'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum HISTORY_EVENT_FILTER_TYPE_UNSPECIFIED
    = "HISTORY_EVENT_FILTER_TYPE_UNSPECIFIED"
  showEnum HISTORY_EVENT_FILTER_TYPE_ALL_EVENT
    = "HISTORY_EVENT_FILTER_TYPE_ALL_EVENT"
  showEnum HISTORY_EVENT_FILTER_TYPE_CLOSE_EVENT
    = "HISTORY_EVENT_FILTER_TYPE_CLOSE_EVENT"
  showEnum
    (HistoryEventFilterType'Unrecognized (HistoryEventFilterType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "HISTORY_EVENT_FILTER_TYPE_UNSPECIFIED"
    = Prelude.Just HISTORY_EVENT_FILTER_TYPE_UNSPECIFIED
    | (Prelude.==) k "HISTORY_EVENT_FILTER_TYPE_ALL_EVENT"
    = Prelude.Just HISTORY_EVENT_FILTER_TYPE_ALL_EVENT
    | (Prelude.==) k "HISTORY_EVENT_FILTER_TYPE_CLOSE_EVENT"
    = Prelude.Just HISTORY_EVENT_FILTER_TYPE_CLOSE_EVENT
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded HistoryEventFilterType where
  minBound = HISTORY_EVENT_FILTER_TYPE_UNSPECIFIED
  maxBound = HISTORY_EVENT_FILTER_TYPE_CLOSE_EVENT
instance Prelude.Enum HistoryEventFilterType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum HistoryEventFilterType: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum HISTORY_EVENT_FILTER_TYPE_UNSPECIFIED = 0
  fromEnum HISTORY_EVENT_FILTER_TYPE_ALL_EVENT = 1
  fromEnum HISTORY_EVENT_FILTER_TYPE_CLOSE_EVENT = 2
  fromEnum
    (HistoryEventFilterType'Unrecognized (HistoryEventFilterType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ HISTORY_EVENT_FILTER_TYPE_CLOSE_EVENT
    = Prelude.error
        "HistoryEventFilterType.succ: bad argument HISTORY_EVENT_FILTER_TYPE_CLOSE_EVENT. This value would be out of bounds."
  succ HISTORY_EVENT_FILTER_TYPE_UNSPECIFIED
    = HISTORY_EVENT_FILTER_TYPE_ALL_EVENT
  succ HISTORY_EVENT_FILTER_TYPE_ALL_EVENT
    = HISTORY_EVENT_FILTER_TYPE_CLOSE_EVENT
  succ (HistoryEventFilterType'Unrecognized _)
    = Prelude.error
        "HistoryEventFilterType.succ: bad argument: unrecognized value"
  pred HISTORY_EVENT_FILTER_TYPE_UNSPECIFIED
    = Prelude.error
        "HistoryEventFilterType.pred: bad argument HISTORY_EVENT_FILTER_TYPE_UNSPECIFIED. This value would be out of bounds."
  pred HISTORY_EVENT_FILTER_TYPE_ALL_EVENT
    = HISTORY_EVENT_FILTER_TYPE_UNSPECIFIED
  pred HISTORY_EVENT_FILTER_TYPE_CLOSE_EVENT
    = HISTORY_EVENT_FILTER_TYPE_ALL_EVENT
  pred (HistoryEventFilterType'Unrecognized _)
    = Prelude.error
        "HistoryEventFilterType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault HistoryEventFilterType where
  fieldDefault = HISTORY_EVENT_FILTER_TYPE_UNSPECIFIED
instance Control.DeepSeq.NFData HistoryEventFilterType where
  rnf x__ = Prelude.seq x__ ()
newtype ParentClosePolicy'UnrecognizedValue
  = ParentClosePolicy'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ParentClosePolicy
  = PARENT_CLOSE_POLICY_UNSPECIFIED |
    PARENT_CLOSE_POLICY_TERMINATE |
    PARENT_CLOSE_POLICY_ABANDON |
    PARENT_CLOSE_POLICY_REQUEST_CANCEL |
    ParentClosePolicy'Unrecognized !ParentClosePolicy'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ParentClosePolicy where
  maybeToEnum 0 = Prelude.Just PARENT_CLOSE_POLICY_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just PARENT_CLOSE_POLICY_TERMINATE
  maybeToEnum 2 = Prelude.Just PARENT_CLOSE_POLICY_ABANDON
  maybeToEnum 3 = Prelude.Just PARENT_CLOSE_POLICY_REQUEST_CANCEL
  maybeToEnum k
    = Prelude.Just
        (ParentClosePolicy'Unrecognized
           (ParentClosePolicy'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum PARENT_CLOSE_POLICY_UNSPECIFIED
    = "PARENT_CLOSE_POLICY_UNSPECIFIED"
  showEnum PARENT_CLOSE_POLICY_TERMINATE
    = "PARENT_CLOSE_POLICY_TERMINATE"
  showEnum PARENT_CLOSE_POLICY_ABANDON
    = "PARENT_CLOSE_POLICY_ABANDON"
  showEnum PARENT_CLOSE_POLICY_REQUEST_CANCEL
    = "PARENT_CLOSE_POLICY_REQUEST_CANCEL"
  showEnum
    (ParentClosePolicy'Unrecognized (ParentClosePolicy'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "PARENT_CLOSE_POLICY_UNSPECIFIED"
    = Prelude.Just PARENT_CLOSE_POLICY_UNSPECIFIED
    | (Prelude.==) k "PARENT_CLOSE_POLICY_TERMINATE"
    = Prelude.Just PARENT_CLOSE_POLICY_TERMINATE
    | (Prelude.==) k "PARENT_CLOSE_POLICY_ABANDON"
    = Prelude.Just PARENT_CLOSE_POLICY_ABANDON
    | (Prelude.==) k "PARENT_CLOSE_POLICY_REQUEST_CANCEL"
    = Prelude.Just PARENT_CLOSE_POLICY_REQUEST_CANCEL
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ParentClosePolicy where
  minBound = PARENT_CLOSE_POLICY_UNSPECIFIED
  maxBound = PARENT_CLOSE_POLICY_REQUEST_CANCEL
instance Prelude.Enum ParentClosePolicy where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ParentClosePolicy: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum PARENT_CLOSE_POLICY_UNSPECIFIED = 0
  fromEnum PARENT_CLOSE_POLICY_TERMINATE = 1
  fromEnum PARENT_CLOSE_POLICY_ABANDON = 2
  fromEnum PARENT_CLOSE_POLICY_REQUEST_CANCEL = 3
  fromEnum
    (ParentClosePolicy'Unrecognized (ParentClosePolicy'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ PARENT_CLOSE_POLICY_REQUEST_CANCEL
    = Prelude.error
        "ParentClosePolicy.succ: bad argument PARENT_CLOSE_POLICY_REQUEST_CANCEL. This value would be out of bounds."
  succ PARENT_CLOSE_POLICY_UNSPECIFIED
    = PARENT_CLOSE_POLICY_TERMINATE
  succ PARENT_CLOSE_POLICY_TERMINATE = PARENT_CLOSE_POLICY_ABANDON
  succ PARENT_CLOSE_POLICY_ABANDON
    = PARENT_CLOSE_POLICY_REQUEST_CANCEL
  succ (ParentClosePolicy'Unrecognized _)
    = Prelude.error
        "ParentClosePolicy.succ: bad argument: unrecognized value"
  pred PARENT_CLOSE_POLICY_UNSPECIFIED
    = Prelude.error
        "ParentClosePolicy.pred: bad argument PARENT_CLOSE_POLICY_UNSPECIFIED. This value would be out of bounds."
  pred PARENT_CLOSE_POLICY_TERMINATE
    = PARENT_CLOSE_POLICY_UNSPECIFIED
  pred PARENT_CLOSE_POLICY_ABANDON = PARENT_CLOSE_POLICY_TERMINATE
  pred PARENT_CLOSE_POLICY_REQUEST_CANCEL
    = PARENT_CLOSE_POLICY_ABANDON
  pred (ParentClosePolicy'Unrecognized _)
    = Prelude.error
        "ParentClosePolicy.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ParentClosePolicy where
  fieldDefault = PARENT_CLOSE_POLICY_UNSPECIFIED
instance Control.DeepSeq.NFData ParentClosePolicy where
  rnf x__ = Prelude.seq x__ ()
newtype PendingActivityState'UnrecognizedValue
  = PendingActivityState'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data PendingActivityState
  = PENDING_ACTIVITY_STATE_UNSPECIFIED |
    PENDING_ACTIVITY_STATE_SCHEDULED |
    PENDING_ACTIVITY_STATE_STARTED |
    PENDING_ACTIVITY_STATE_CANCEL_REQUESTED |
    PENDING_ACTIVITY_STATE_PAUSED |
    PENDING_ACTIVITY_STATE_PAUSE_REQUESTED |
    PendingActivityState'Unrecognized !PendingActivityState'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum PendingActivityState where
  maybeToEnum 0 = Prelude.Just PENDING_ACTIVITY_STATE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just PENDING_ACTIVITY_STATE_SCHEDULED
  maybeToEnum 2 = Prelude.Just PENDING_ACTIVITY_STATE_STARTED
  maybeToEnum 3
    = Prelude.Just PENDING_ACTIVITY_STATE_CANCEL_REQUESTED
  maybeToEnum 4 = Prelude.Just PENDING_ACTIVITY_STATE_PAUSED
  maybeToEnum 5 = Prelude.Just PENDING_ACTIVITY_STATE_PAUSE_REQUESTED
  maybeToEnum k
    = Prelude.Just
        (PendingActivityState'Unrecognized
           (PendingActivityState'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum PENDING_ACTIVITY_STATE_UNSPECIFIED
    = "PENDING_ACTIVITY_STATE_UNSPECIFIED"
  showEnum PENDING_ACTIVITY_STATE_SCHEDULED
    = "PENDING_ACTIVITY_STATE_SCHEDULED"
  showEnum PENDING_ACTIVITY_STATE_STARTED
    = "PENDING_ACTIVITY_STATE_STARTED"
  showEnum PENDING_ACTIVITY_STATE_CANCEL_REQUESTED
    = "PENDING_ACTIVITY_STATE_CANCEL_REQUESTED"
  showEnum PENDING_ACTIVITY_STATE_PAUSED
    = "PENDING_ACTIVITY_STATE_PAUSED"
  showEnum PENDING_ACTIVITY_STATE_PAUSE_REQUESTED
    = "PENDING_ACTIVITY_STATE_PAUSE_REQUESTED"
  showEnum
    (PendingActivityState'Unrecognized (PendingActivityState'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "PENDING_ACTIVITY_STATE_UNSPECIFIED"
    = Prelude.Just PENDING_ACTIVITY_STATE_UNSPECIFIED
    | (Prelude.==) k "PENDING_ACTIVITY_STATE_SCHEDULED"
    = Prelude.Just PENDING_ACTIVITY_STATE_SCHEDULED
    | (Prelude.==) k "PENDING_ACTIVITY_STATE_STARTED"
    = Prelude.Just PENDING_ACTIVITY_STATE_STARTED
    | (Prelude.==) k "PENDING_ACTIVITY_STATE_CANCEL_REQUESTED"
    = Prelude.Just PENDING_ACTIVITY_STATE_CANCEL_REQUESTED
    | (Prelude.==) k "PENDING_ACTIVITY_STATE_PAUSED"
    = Prelude.Just PENDING_ACTIVITY_STATE_PAUSED
    | (Prelude.==) k "PENDING_ACTIVITY_STATE_PAUSE_REQUESTED"
    = Prelude.Just PENDING_ACTIVITY_STATE_PAUSE_REQUESTED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded PendingActivityState where
  minBound = PENDING_ACTIVITY_STATE_UNSPECIFIED
  maxBound = PENDING_ACTIVITY_STATE_PAUSE_REQUESTED
instance Prelude.Enum PendingActivityState where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum PendingActivityState: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum PENDING_ACTIVITY_STATE_UNSPECIFIED = 0
  fromEnum PENDING_ACTIVITY_STATE_SCHEDULED = 1
  fromEnum PENDING_ACTIVITY_STATE_STARTED = 2
  fromEnum PENDING_ACTIVITY_STATE_CANCEL_REQUESTED = 3
  fromEnum PENDING_ACTIVITY_STATE_PAUSED = 4
  fromEnum PENDING_ACTIVITY_STATE_PAUSE_REQUESTED = 5
  fromEnum
    (PendingActivityState'Unrecognized (PendingActivityState'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ PENDING_ACTIVITY_STATE_PAUSE_REQUESTED
    = Prelude.error
        "PendingActivityState.succ: bad argument PENDING_ACTIVITY_STATE_PAUSE_REQUESTED. This value would be out of bounds."
  succ PENDING_ACTIVITY_STATE_UNSPECIFIED
    = PENDING_ACTIVITY_STATE_SCHEDULED
  succ PENDING_ACTIVITY_STATE_SCHEDULED
    = PENDING_ACTIVITY_STATE_STARTED
  succ PENDING_ACTIVITY_STATE_STARTED
    = PENDING_ACTIVITY_STATE_CANCEL_REQUESTED
  succ PENDING_ACTIVITY_STATE_CANCEL_REQUESTED
    = PENDING_ACTIVITY_STATE_PAUSED
  succ PENDING_ACTIVITY_STATE_PAUSED
    = PENDING_ACTIVITY_STATE_PAUSE_REQUESTED
  succ (PendingActivityState'Unrecognized _)
    = Prelude.error
        "PendingActivityState.succ: bad argument: unrecognized value"
  pred PENDING_ACTIVITY_STATE_UNSPECIFIED
    = Prelude.error
        "PendingActivityState.pred: bad argument PENDING_ACTIVITY_STATE_UNSPECIFIED. This value would be out of bounds."
  pred PENDING_ACTIVITY_STATE_SCHEDULED
    = PENDING_ACTIVITY_STATE_UNSPECIFIED
  pred PENDING_ACTIVITY_STATE_STARTED
    = PENDING_ACTIVITY_STATE_SCHEDULED
  pred PENDING_ACTIVITY_STATE_CANCEL_REQUESTED
    = PENDING_ACTIVITY_STATE_STARTED
  pred PENDING_ACTIVITY_STATE_PAUSED
    = PENDING_ACTIVITY_STATE_CANCEL_REQUESTED
  pred PENDING_ACTIVITY_STATE_PAUSE_REQUESTED
    = PENDING_ACTIVITY_STATE_PAUSED
  pred (PendingActivityState'Unrecognized _)
    = Prelude.error
        "PendingActivityState.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault PendingActivityState where
  fieldDefault = PENDING_ACTIVITY_STATE_UNSPECIFIED
instance Control.DeepSeq.NFData PendingActivityState where
  rnf x__ = Prelude.seq x__ ()
newtype PendingWorkflowTaskState'UnrecognizedValue
  = PendingWorkflowTaskState'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data PendingWorkflowTaskState
  = PENDING_WORKFLOW_TASK_STATE_UNSPECIFIED |
    PENDING_WORKFLOW_TASK_STATE_SCHEDULED |
    PENDING_WORKFLOW_TASK_STATE_STARTED |
    PendingWorkflowTaskState'Unrecognized !PendingWorkflowTaskState'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum PendingWorkflowTaskState where
  maybeToEnum 0
    = Prelude.Just PENDING_WORKFLOW_TASK_STATE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just PENDING_WORKFLOW_TASK_STATE_SCHEDULED
  maybeToEnum 2 = Prelude.Just PENDING_WORKFLOW_TASK_STATE_STARTED
  maybeToEnum k
    = Prelude.Just
        (PendingWorkflowTaskState'Unrecognized
           (PendingWorkflowTaskState'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum PENDING_WORKFLOW_TASK_STATE_UNSPECIFIED
    = "PENDING_WORKFLOW_TASK_STATE_UNSPECIFIED"
  showEnum PENDING_WORKFLOW_TASK_STATE_SCHEDULED
    = "PENDING_WORKFLOW_TASK_STATE_SCHEDULED"
  showEnum PENDING_WORKFLOW_TASK_STATE_STARTED
    = "PENDING_WORKFLOW_TASK_STATE_STARTED"
  showEnum
    (PendingWorkflowTaskState'Unrecognized (PendingWorkflowTaskState'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "PENDING_WORKFLOW_TASK_STATE_UNSPECIFIED"
    = Prelude.Just PENDING_WORKFLOW_TASK_STATE_UNSPECIFIED
    | (Prelude.==) k "PENDING_WORKFLOW_TASK_STATE_SCHEDULED"
    = Prelude.Just PENDING_WORKFLOW_TASK_STATE_SCHEDULED
    | (Prelude.==) k "PENDING_WORKFLOW_TASK_STATE_STARTED"
    = Prelude.Just PENDING_WORKFLOW_TASK_STATE_STARTED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded PendingWorkflowTaskState where
  minBound = PENDING_WORKFLOW_TASK_STATE_UNSPECIFIED
  maxBound = PENDING_WORKFLOW_TASK_STATE_STARTED
instance Prelude.Enum PendingWorkflowTaskState where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum PendingWorkflowTaskState: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum PENDING_WORKFLOW_TASK_STATE_UNSPECIFIED = 0
  fromEnum PENDING_WORKFLOW_TASK_STATE_SCHEDULED = 1
  fromEnum PENDING_WORKFLOW_TASK_STATE_STARTED = 2
  fromEnum
    (PendingWorkflowTaskState'Unrecognized (PendingWorkflowTaskState'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ PENDING_WORKFLOW_TASK_STATE_STARTED
    = Prelude.error
        "PendingWorkflowTaskState.succ: bad argument PENDING_WORKFLOW_TASK_STATE_STARTED. This value would be out of bounds."
  succ PENDING_WORKFLOW_TASK_STATE_UNSPECIFIED
    = PENDING_WORKFLOW_TASK_STATE_SCHEDULED
  succ PENDING_WORKFLOW_TASK_STATE_SCHEDULED
    = PENDING_WORKFLOW_TASK_STATE_STARTED
  succ (PendingWorkflowTaskState'Unrecognized _)
    = Prelude.error
        "PendingWorkflowTaskState.succ: bad argument: unrecognized value"
  pred PENDING_WORKFLOW_TASK_STATE_UNSPECIFIED
    = Prelude.error
        "PendingWorkflowTaskState.pred: bad argument PENDING_WORKFLOW_TASK_STATE_UNSPECIFIED. This value would be out of bounds."
  pred PENDING_WORKFLOW_TASK_STATE_SCHEDULED
    = PENDING_WORKFLOW_TASK_STATE_UNSPECIFIED
  pred PENDING_WORKFLOW_TASK_STATE_STARTED
    = PENDING_WORKFLOW_TASK_STATE_SCHEDULED
  pred (PendingWorkflowTaskState'Unrecognized _)
    = Prelude.error
        "PendingWorkflowTaskState.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault PendingWorkflowTaskState where
  fieldDefault = PENDING_WORKFLOW_TASK_STATE_UNSPECIFIED
instance Control.DeepSeq.NFData PendingWorkflowTaskState where
  rnf x__ = Prelude.seq x__ ()
newtype RetryState'UnrecognizedValue
  = RetryState'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data RetryState
  = RETRY_STATE_UNSPECIFIED |
    RETRY_STATE_IN_PROGRESS |
    RETRY_STATE_NON_RETRYABLE_FAILURE |
    RETRY_STATE_TIMEOUT |
    RETRY_STATE_MAXIMUM_ATTEMPTS_REACHED |
    RETRY_STATE_RETRY_POLICY_NOT_SET |
    RETRY_STATE_INTERNAL_SERVER_ERROR |
    RETRY_STATE_CANCEL_REQUESTED |
    RetryState'Unrecognized !RetryState'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum RetryState where
  maybeToEnum 0 = Prelude.Just RETRY_STATE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just RETRY_STATE_IN_PROGRESS
  maybeToEnum 2 = Prelude.Just RETRY_STATE_NON_RETRYABLE_FAILURE
  maybeToEnum 3 = Prelude.Just RETRY_STATE_TIMEOUT
  maybeToEnum 4 = Prelude.Just RETRY_STATE_MAXIMUM_ATTEMPTS_REACHED
  maybeToEnum 5 = Prelude.Just RETRY_STATE_RETRY_POLICY_NOT_SET
  maybeToEnum 6 = Prelude.Just RETRY_STATE_INTERNAL_SERVER_ERROR
  maybeToEnum 7 = Prelude.Just RETRY_STATE_CANCEL_REQUESTED
  maybeToEnum k
    = Prelude.Just
        (RetryState'Unrecognized
           (RetryState'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum RETRY_STATE_UNSPECIFIED = "RETRY_STATE_UNSPECIFIED"
  showEnum RETRY_STATE_IN_PROGRESS = "RETRY_STATE_IN_PROGRESS"
  showEnum RETRY_STATE_NON_RETRYABLE_FAILURE
    = "RETRY_STATE_NON_RETRYABLE_FAILURE"
  showEnum RETRY_STATE_TIMEOUT = "RETRY_STATE_TIMEOUT"
  showEnum RETRY_STATE_MAXIMUM_ATTEMPTS_REACHED
    = "RETRY_STATE_MAXIMUM_ATTEMPTS_REACHED"
  showEnum RETRY_STATE_RETRY_POLICY_NOT_SET
    = "RETRY_STATE_RETRY_POLICY_NOT_SET"
  showEnum RETRY_STATE_INTERNAL_SERVER_ERROR
    = "RETRY_STATE_INTERNAL_SERVER_ERROR"
  showEnum RETRY_STATE_CANCEL_REQUESTED
    = "RETRY_STATE_CANCEL_REQUESTED"
  showEnum (RetryState'Unrecognized (RetryState'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "RETRY_STATE_UNSPECIFIED"
    = Prelude.Just RETRY_STATE_UNSPECIFIED
    | (Prelude.==) k "RETRY_STATE_IN_PROGRESS"
    = Prelude.Just RETRY_STATE_IN_PROGRESS
    | (Prelude.==) k "RETRY_STATE_NON_RETRYABLE_FAILURE"
    = Prelude.Just RETRY_STATE_NON_RETRYABLE_FAILURE
    | (Prelude.==) k "RETRY_STATE_TIMEOUT"
    = Prelude.Just RETRY_STATE_TIMEOUT
    | (Prelude.==) k "RETRY_STATE_MAXIMUM_ATTEMPTS_REACHED"
    = Prelude.Just RETRY_STATE_MAXIMUM_ATTEMPTS_REACHED
    | (Prelude.==) k "RETRY_STATE_RETRY_POLICY_NOT_SET"
    = Prelude.Just RETRY_STATE_RETRY_POLICY_NOT_SET
    | (Prelude.==) k "RETRY_STATE_INTERNAL_SERVER_ERROR"
    = Prelude.Just RETRY_STATE_INTERNAL_SERVER_ERROR
    | (Prelude.==) k "RETRY_STATE_CANCEL_REQUESTED"
    = Prelude.Just RETRY_STATE_CANCEL_REQUESTED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded RetryState where
  minBound = RETRY_STATE_UNSPECIFIED
  maxBound = RETRY_STATE_CANCEL_REQUESTED
instance Prelude.Enum RetryState where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum RetryState: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum RETRY_STATE_UNSPECIFIED = 0
  fromEnum RETRY_STATE_IN_PROGRESS = 1
  fromEnum RETRY_STATE_NON_RETRYABLE_FAILURE = 2
  fromEnum RETRY_STATE_TIMEOUT = 3
  fromEnum RETRY_STATE_MAXIMUM_ATTEMPTS_REACHED = 4
  fromEnum RETRY_STATE_RETRY_POLICY_NOT_SET = 5
  fromEnum RETRY_STATE_INTERNAL_SERVER_ERROR = 6
  fromEnum RETRY_STATE_CANCEL_REQUESTED = 7
  fromEnum (RetryState'Unrecognized (RetryState'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ RETRY_STATE_CANCEL_REQUESTED
    = Prelude.error
        "RetryState.succ: bad argument RETRY_STATE_CANCEL_REQUESTED. This value would be out of bounds."
  succ RETRY_STATE_UNSPECIFIED = RETRY_STATE_IN_PROGRESS
  succ RETRY_STATE_IN_PROGRESS = RETRY_STATE_NON_RETRYABLE_FAILURE
  succ RETRY_STATE_NON_RETRYABLE_FAILURE = RETRY_STATE_TIMEOUT
  succ RETRY_STATE_TIMEOUT = RETRY_STATE_MAXIMUM_ATTEMPTS_REACHED
  succ RETRY_STATE_MAXIMUM_ATTEMPTS_REACHED
    = RETRY_STATE_RETRY_POLICY_NOT_SET
  succ RETRY_STATE_RETRY_POLICY_NOT_SET
    = RETRY_STATE_INTERNAL_SERVER_ERROR
  succ RETRY_STATE_INTERNAL_SERVER_ERROR
    = RETRY_STATE_CANCEL_REQUESTED
  succ (RetryState'Unrecognized _)
    = Prelude.error "RetryState.succ: bad argument: unrecognized value"
  pred RETRY_STATE_UNSPECIFIED
    = Prelude.error
        "RetryState.pred: bad argument RETRY_STATE_UNSPECIFIED. This value would be out of bounds."
  pred RETRY_STATE_IN_PROGRESS = RETRY_STATE_UNSPECIFIED
  pred RETRY_STATE_NON_RETRYABLE_FAILURE = RETRY_STATE_IN_PROGRESS
  pred RETRY_STATE_TIMEOUT = RETRY_STATE_NON_RETRYABLE_FAILURE
  pred RETRY_STATE_MAXIMUM_ATTEMPTS_REACHED = RETRY_STATE_TIMEOUT
  pred RETRY_STATE_RETRY_POLICY_NOT_SET
    = RETRY_STATE_MAXIMUM_ATTEMPTS_REACHED
  pred RETRY_STATE_INTERNAL_SERVER_ERROR
    = RETRY_STATE_RETRY_POLICY_NOT_SET
  pred RETRY_STATE_CANCEL_REQUESTED
    = RETRY_STATE_INTERNAL_SERVER_ERROR
  pred (RetryState'Unrecognized _)
    = Prelude.error "RetryState.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault RetryState where
  fieldDefault = RETRY_STATE_UNSPECIFIED
instance Control.DeepSeq.NFData RetryState where
  rnf x__ = Prelude.seq x__ ()
newtype SuggestContinueAsNewReason'UnrecognizedValue
  = SuggestContinueAsNewReason'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data SuggestContinueAsNewReason
  = SUGGEST_CONTINUE_AS_NEW_REASON_UNSPECIFIED |
    SUGGEST_CONTINUE_AS_NEW_REASON_HISTORY_SIZE_TOO_LARGE |
    SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_HISTORY_EVENTS |
    SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_UPDATES |
    SuggestContinueAsNewReason'Unrecognized !SuggestContinueAsNewReason'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum SuggestContinueAsNewReason where
  maybeToEnum 0
    = Prelude.Just SUGGEST_CONTINUE_AS_NEW_REASON_UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just
        SUGGEST_CONTINUE_AS_NEW_REASON_HISTORY_SIZE_TOO_LARGE
  maybeToEnum 2
    = Prelude.Just
        SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_HISTORY_EVENTS
  maybeToEnum 3
    = Prelude.Just SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_UPDATES
  maybeToEnum k
    = Prelude.Just
        (SuggestContinueAsNewReason'Unrecognized
           (SuggestContinueAsNewReason'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum SUGGEST_CONTINUE_AS_NEW_REASON_UNSPECIFIED
    = "SUGGEST_CONTINUE_AS_NEW_REASON_UNSPECIFIED"
  showEnum SUGGEST_CONTINUE_AS_NEW_REASON_HISTORY_SIZE_TOO_LARGE
    = "SUGGEST_CONTINUE_AS_NEW_REASON_HISTORY_SIZE_TOO_LARGE"
  showEnum SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_HISTORY_EVENTS
    = "SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_HISTORY_EVENTS"
  showEnum SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_UPDATES
    = "SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_UPDATES"
  showEnum
    (SuggestContinueAsNewReason'Unrecognized (SuggestContinueAsNewReason'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "SUGGEST_CONTINUE_AS_NEW_REASON_UNSPECIFIED"
    = Prelude.Just SUGGEST_CONTINUE_AS_NEW_REASON_UNSPECIFIED
    | (Prelude.==)
        k "SUGGEST_CONTINUE_AS_NEW_REASON_HISTORY_SIZE_TOO_LARGE"
    = Prelude.Just
        SUGGEST_CONTINUE_AS_NEW_REASON_HISTORY_SIZE_TOO_LARGE
    | (Prelude.==)
        k "SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_HISTORY_EVENTS"
    = Prelude.Just
        SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_HISTORY_EVENTS
    | (Prelude.==) k "SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_UPDATES"
    = Prelude.Just SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_UPDATES
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded SuggestContinueAsNewReason where
  minBound = SUGGEST_CONTINUE_AS_NEW_REASON_UNSPECIFIED
  maxBound = SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_UPDATES
instance Prelude.Enum SuggestContinueAsNewReason where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum SuggestContinueAsNewReason: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum SUGGEST_CONTINUE_AS_NEW_REASON_UNSPECIFIED = 0
  fromEnum SUGGEST_CONTINUE_AS_NEW_REASON_HISTORY_SIZE_TOO_LARGE = 1
  fromEnum SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_HISTORY_EVENTS = 2
  fromEnum SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_UPDATES = 3
  fromEnum
    (SuggestContinueAsNewReason'Unrecognized (SuggestContinueAsNewReason'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_UPDATES
    = Prelude.error
        "SuggestContinueAsNewReason.succ: bad argument SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_UPDATES. This value would be out of bounds."
  succ SUGGEST_CONTINUE_AS_NEW_REASON_UNSPECIFIED
    = SUGGEST_CONTINUE_AS_NEW_REASON_HISTORY_SIZE_TOO_LARGE
  succ SUGGEST_CONTINUE_AS_NEW_REASON_HISTORY_SIZE_TOO_LARGE
    = SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_HISTORY_EVENTS
  succ SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_HISTORY_EVENTS
    = SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_UPDATES
  succ (SuggestContinueAsNewReason'Unrecognized _)
    = Prelude.error
        "SuggestContinueAsNewReason.succ: bad argument: unrecognized value"
  pred SUGGEST_CONTINUE_AS_NEW_REASON_UNSPECIFIED
    = Prelude.error
        "SuggestContinueAsNewReason.pred: bad argument SUGGEST_CONTINUE_AS_NEW_REASON_UNSPECIFIED. This value would be out of bounds."
  pred SUGGEST_CONTINUE_AS_NEW_REASON_HISTORY_SIZE_TOO_LARGE
    = SUGGEST_CONTINUE_AS_NEW_REASON_UNSPECIFIED
  pred SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_HISTORY_EVENTS
    = SUGGEST_CONTINUE_AS_NEW_REASON_HISTORY_SIZE_TOO_LARGE
  pred SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_UPDATES
    = SUGGEST_CONTINUE_AS_NEW_REASON_TOO_MANY_HISTORY_EVENTS
  pred (SuggestContinueAsNewReason'Unrecognized _)
    = Prelude.error
        "SuggestContinueAsNewReason.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault SuggestContinueAsNewReason where
  fieldDefault = SUGGEST_CONTINUE_AS_NEW_REASON_UNSPECIFIED
instance Control.DeepSeq.NFData SuggestContinueAsNewReason where
  rnf x__ = Prelude.seq x__ ()
newtype TimeoutType'UnrecognizedValue
  = TimeoutType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data TimeoutType
  = TIMEOUT_TYPE_UNSPECIFIED |
    TIMEOUT_TYPE_START_TO_CLOSE |
    TIMEOUT_TYPE_SCHEDULE_TO_START |
    TIMEOUT_TYPE_SCHEDULE_TO_CLOSE |
    TIMEOUT_TYPE_HEARTBEAT |
    TimeoutType'Unrecognized !TimeoutType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum TimeoutType where
  maybeToEnum 0 = Prelude.Just TIMEOUT_TYPE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just TIMEOUT_TYPE_START_TO_CLOSE
  maybeToEnum 2 = Prelude.Just TIMEOUT_TYPE_SCHEDULE_TO_START
  maybeToEnum 3 = Prelude.Just TIMEOUT_TYPE_SCHEDULE_TO_CLOSE
  maybeToEnum 4 = Prelude.Just TIMEOUT_TYPE_HEARTBEAT
  maybeToEnum k
    = Prelude.Just
        (TimeoutType'Unrecognized
           (TimeoutType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum TIMEOUT_TYPE_UNSPECIFIED = "TIMEOUT_TYPE_UNSPECIFIED"
  showEnum TIMEOUT_TYPE_START_TO_CLOSE
    = "TIMEOUT_TYPE_START_TO_CLOSE"
  showEnum TIMEOUT_TYPE_SCHEDULE_TO_START
    = "TIMEOUT_TYPE_SCHEDULE_TO_START"
  showEnum TIMEOUT_TYPE_SCHEDULE_TO_CLOSE
    = "TIMEOUT_TYPE_SCHEDULE_TO_CLOSE"
  showEnum TIMEOUT_TYPE_HEARTBEAT = "TIMEOUT_TYPE_HEARTBEAT"
  showEnum
    (TimeoutType'Unrecognized (TimeoutType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "TIMEOUT_TYPE_UNSPECIFIED"
    = Prelude.Just TIMEOUT_TYPE_UNSPECIFIED
    | (Prelude.==) k "TIMEOUT_TYPE_START_TO_CLOSE"
    = Prelude.Just TIMEOUT_TYPE_START_TO_CLOSE
    | (Prelude.==) k "TIMEOUT_TYPE_SCHEDULE_TO_START"
    = Prelude.Just TIMEOUT_TYPE_SCHEDULE_TO_START
    | (Prelude.==) k "TIMEOUT_TYPE_SCHEDULE_TO_CLOSE"
    = Prelude.Just TIMEOUT_TYPE_SCHEDULE_TO_CLOSE
    | (Prelude.==) k "TIMEOUT_TYPE_HEARTBEAT"
    = Prelude.Just TIMEOUT_TYPE_HEARTBEAT
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded TimeoutType where
  minBound = TIMEOUT_TYPE_UNSPECIFIED
  maxBound = TIMEOUT_TYPE_HEARTBEAT
instance Prelude.Enum TimeoutType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum TimeoutType: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum TIMEOUT_TYPE_UNSPECIFIED = 0
  fromEnum TIMEOUT_TYPE_START_TO_CLOSE = 1
  fromEnum TIMEOUT_TYPE_SCHEDULE_TO_START = 2
  fromEnum TIMEOUT_TYPE_SCHEDULE_TO_CLOSE = 3
  fromEnum TIMEOUT_TYPE_HEARTBEAT = 4
  fromEnum
    (TimeoutType'Unrecognized (TimeoutType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ TIMEOUT_TYPE_HEARTBEAT
    = Prelude.error
        "TimeoutType.succ: bad argument TIMEOUT_TYPE_HEARTBEAT. This value would be out of bounds."
  succ TIMEOUT_TYPE_UNSPECIFIED = TIMEOUT_TYPE_START_TO_CLOSE
  succ TIMEOUT_TYPE_START_TO_CLOSE = TIMEOUT_TYPE_SCHEDULE_TO_START
  succ TIMEOUT_TYPE_SCHEDULE_TO_START
    = TIMEOUT_TYPE_SCHEDULE_TO_CLOSE
  succ TIMEOUT_TYPE_SCHEDULE_TO_CLOSE = TIMEOUT_TYPE_HEARTBEAT
  succ (TimeoutType'Unrecognized _)
    = Prelude.error
        "TimeoutType.succ: bad argument: unrecognized value"
  pred TIMEOUT_TYPE_UNSPECIFIED
    = Prelude.error
        "TimeoutType.pred: bad argument TIMEOUT_TYPE_UNSPECIFIED. This value would be out of bounds."
  pred TIMEOUT_TYPE_START_TO_CLOSE = TIMEOUT_TYPE_UNSPECIFIED
  pred TIMEOUT_TYPE_SCHEDULE_TO_START = TIMEOUT_TYPE_START_TO_CLOSE
  pred TIMEOUT_TYPE_SCHEDULE_TO_CLOSE
    = TIMEOUT_TYPE_SCHEDULE_TO_START
  pred TIMEOUT_TYPE_HEARTBEAT = TIMEOUT_TYPE_SCHEDULE_TO_CLOSE
  pred (TimeoutType'Unrecognized _)
    = Prelude.error
        "TimeoutType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault TimeoutType where
  fieldDefault = TIMEOUT_TYPE_UNSPECIFIED
instance Control.DeepSeq.NFData TimeoutType where
  rnf x__ = Prelude.seq x__ ()
newtype VersioningBehavior'UnrecognizedValue
  = VersioningBehavior'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data VersioningBehavior
  = VERSIONING_BEHAVIOR_UNSPECIFIED |
    VERSIONING_BEHAVIOR_PINNED |
    VERSIONING_BEHAVIOR_AUTO_UPGRADE |
    VersioningBehavior'Unrecognized !VersioningBehavior'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum VersioningBehavior where
  maybeToEnum 0 = Prelude.Just VERSIONING_BEHAVIOR_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just VERSIONING_BEHAVIOR_PINNED
  maybeToEnum 2 = Prelude.Just VERSIONING_BEHAVIOR_AUTO_UPGRADE
  maybeToEnum k
    = Prelude.Just
        (VersioningBehavior'Unrecognized
           (VersioningBehavior'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum VERSIONING_BEHAVIOR_UNSPECIFIED
    = "VERSIONING_BEHAVIOR_UNSPECIFIED"
  showEnum VERSIONING_BEHAVIOR_PINNED = "VERSIONING_BEHAVIOR_PINNED"
  showEnum VERSIONING_BEHAVIOR_AUTO_UPGRADE
    = "VERSIONING_BEHAVIOR_AUTO_UPGRADE"
  showEnum
    (VersioningBehavior'Unrecognized (VersioningBehavior'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "VERSIONING_BEHAVIOR_UNSPECIFIED"
    = Prelude.Just VERSIONING_BEHAVIOR_UNSPECIFIED
    | (Prelude.==) k "VERSIONING_BEHAVIOR_PINNED"
    = Prelude.Just VERSIONING_BEHAVIOR_PINNED
    | (Prelude.==) k "VERSIONING_BEHAVIOR_AUTO_UPGRADE"
    = Prelude.Just VERSIONING_BEHAVIOR_AUTO_UPGRADE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded VersioningBehavior where
  minBound = VERSIONING_BEHAVIOR_UNSPECIFIED
  maxBound = VERSIONING_BEHAVIOR_AUTO_UPGRADE
instance Prelude.Enum VersioningBehavior where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum VersioningBehavior: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum VERSIONING_BEHAVIOR_UNSPECIFIED = 0
  fromEnum VERSIONING_BEHAVIOR_PINNED = 1
  fromEnum VERSIONING_BEHAVIOR_AUTO_UPGRADE = 2
  fromEnum
    (VersioningBehavior'Unrecognized (VersioningBehavior'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ VERSIONING_BEHAVIOR_AUTO_UPGRADE
    = Prelude.error
        "VersioningBehavior.succ: bad argument VERSIONING_BEHAVIOR_AUTO_UPGRADE. This value would be out of bounds."
  succ VERSIONING_BEHAVIOR_UNSPECIFIED = VERSIONING_BEHAVIOR_PINNED
  succ VERSIONING_BEHAVIOR_PINNED = VERSIONING_BEHAVIOR_AUTO_UPGRADE
  succ (VersioningBehavior'Unrecognized _)
    = Prelude.error
        "VersioningBehavior.succ: bad argument: unrecognized value"
  pred VERSIONING_BEHAVIOR_UNSPECIFIED
    = Prelude.error
        "VersioningBehavior.pred: bad argument VERSIONING_BEHAVIOR_UNSPECIFIED. This value would be out of bounds."
  pred VERSIONING_BEHAVIOR_PINNED = VERSIONING_BEHAVIOR_UNSPECIFIED
  pred VERSIONING_BEHAVIOR_AUTO_UPGRADE = VERSIONING_BEHAVIOR_PINNED
  pred (VersioningBehavior'Unrecognized _)
    = Prelude.error
        "VersioningBehavior.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault VersioningBehavior where
  fieldDefault = VERSIONING_BEHAVIOR_UNSPECIFIED
instance Control.DeepSeq.NFData VersioningBehavior where
  rnf x__ = Prelude.seq x__ ()
newtype WorkflowExecutionStatus'UnrecognizedValue
  = WorkflowExecutionStatus'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data WorkflowExecutionStatus
  = WORKFLOW_EXECUTION_STATUS_UNSPECIFIED |
    WORKFLOW_EXECUTION_STATUS_RUNNING |
    WORKFLOW_EXECUTION_STATUS_COMPLETED |
    WORKFLOW_EXECUTION_STATUS_FAILED |
    WORKFLOW_EXECUTION_STATUS_CANCELED |
    WORKFLOW_EXECUTION_STATUS_TERMINATED |
    WORKFLOW_EXECUTION_STATUS_CONTINUED_AS_NEW |
    WORKFLOW_EXECUTION_STATUS_TIMED_OUT |
    WORKFLOW_EXECUTION_STATUS_PAUSED |
    WorkflowExecutionStatus'Unrecognized !WorkflowExecutionStatus'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum WorkflowExecutionStatus where
  maybeToEnum 0 = Prelude.Just WORKFLOW_EXECUTION_STATUS_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just WORKFLOW_EXECUTION_STATUS_RUNNING
  maybeToEnum 2 = Prelude.Just WORKFLOW_EXECUTION_STATUS_COMPLETED
  maybeToEnum 3 = Prelude.Just WORKFLOW_EXECUTION_STATUS_FAILED
  maybeToEnum 4 = Prelude.Just WORKFLOW_EXECUTION_STATUS_CANCELED
  maybeToEnum 5 = Prelude.Just WORKFLOW_EXECUTION_STATUS_TERMINATED
  maybeToEnum 6
    = Prelude.Just WORKFLOW_EXECUTION_STATUS_CONTINUED_AS_NEW
  maybeToEnum 7 = Prelude.Just WORKFLOW_EXECUTION_STATUS_TIMED_OUT
  maybeToEnum 8 = Prelude.Just WORKFLOW_EXECUTION_STATUS_PAUSED
  maybeToEnum k
    = Prelude.Just
        (WorkflowExecutionStatus'Unrecognized
           (WorkflowExecutionStatus'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum WORKFLOW_EXECUTION_STATUS_UNSPECIFIED
    = "WORKFLOW_EXECUTION_STATUS_UNSPECIFIED"
  showEnum WORKFLOW_EXECUTION_STATUS_RUNNING
    = "WORKFLOW_EXECUTION_STATUS_RUNNING"
  showEnum WORKFLOW_EXECUTION_STATUS_COMPLETED
    = "WORKFLOW_EXECUTION_STATUS_COMPLETED"
  showEnum WORKFLOW_EXECUTION_STATUS_FAILED
    = "WORKFLOW_EXECUTION_STATUS_FAILED"
  showEnum WORKFLOW_EXECUTION_STATUS_CANCELED
    = "WORKFLOW_EXECUTION_STATUS_CANCELED"
  showEnum WORKFLOW_EXECUTION_STATUS_TERMINATED
    = "WORKFLOW_EXECUTION_STATUS_TERMINATED"
  showEnum WORKFLOW_EXECUTION_STATUS_CONTINUED_AS_NEW
    = "WORKFLOW_EXECUTION_STATUS_CONTINUED_AS_NEW"
  showEnum WORKFLOW_EXECUTION_STATUS_TIMED_OUT
    = "WORKFLOW_EXECUTION_STATUS_TIMED_OUT"
  showEnum WORKFLOW_EXECUTION_STATUS_PAUSED
    = "WORKFLOW_EXECUTION_STATUS_PAUSED"
  showEnum
    (WorkflowExecutionStatus'Unrecognized (WorkflowExecutionStatus'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "WORKFLOW_EXECUTION_STATUS_UNSPECIFIED"
    = Prelude.Just WORKFLOW_EXECUTION_STATUS_UNSPECIFIED
    | (Prelude.==) k "WORKFLOW_EXECUTION_STATUS_RUNNING"
    = Prelude.Just WORKFLOW_EXECUTION_STATUS_RUNNING
    | (Prelude.==) k "WORKFLOW_EXECUTION_STATUS_COMPLETED"
    = Prelude.Just WORKFLOW_EXECUTION_STATUS_COMPLETED
    | (Prelude.==) k "WORKFLOW_EXECUTION_STATUS_FAILED"
    = Prelude.Just WORKFLOW_EXECUTION_STATUS_FAILED
    | (Prelude.==) k "WORKFLOW_EXECUTION_STATUS_CANCELED"
    = Prelude.Just WORKFLOW_EXECUTION_STATUS_CANCELED
    | (Prelude.==) k "WORKFLOW_EXECUTION_STATUS_TERMINATED"
    = Prelude.Just WORKFLOW_EXECUTION_STATUS_TERMINATED
    | (Prelude.==) k "WORKFLOW_EXECUTION_STATUS_CONTINUED_AS_NEW"
    = Prelude.Just WORKFLOW_EXECUTION_STATUS_CONTINUED_AS_NEW
    | (Prelude.==) k "WORKFLOW_EXECUTION_STATUS_TIMED_OUT"
    = Prelude.Just WORKFLOW_EXECUTION_STATUS_TIMED_OUT
    | (Prelude.==) k "WORKFLOW_EXECUTION_STATUS_PAUSED"
    = Prelude.Just WORKFLOW_EXECUTION_STATUS_PAUSED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded WorkflowExecutionStatus where
  minBound = WORKFLOW_EXECUTION_STATUS_UNSPECIFIED
  maxBound = WORKFLOW_EXECUTION_STATUS_PAUSED
instance Prelude.Enum WorkflowExecutionStatus where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum WorkflowExecutionStatus: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum WORKFLOW_EXECUTION_STATUS_UNSPECIFIED = 0
  fromEnum WORKFLOW_EXECUTION_STATUS_RUNNING = 1
  fromEnum WORKFLOW_EXECUTION_STATUS_COMPLETED = 2
  fromEnum WORKFLOW_EXECUTION_STATUS_FAILED = 3
  fromEnum WORKFLOW_EXECUTION_STATUS_CANCELED = 4
  fromEnum WORKFLOW_EXECUTION_STATUS_TERMINATED = 5
  fromEnum WORKFLOW_EXECUTION_STATUS_CONTINUED_AS_NEW = 6
  fromEnum WORKFLOW_EXECUTION_STATUS_TIMED_OUT = 7
  fromEnum WORKFLOW_EXECUTION_STATUS_PAUSED = 8
  fromEnum
    (WorkflowExecutionStatus'Unrecognized (WorkflowExecutionStatus'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ WORKFLOW_EXECUTION_STATUS_PAUSED
    = Prelude.error
        "WorkflowExecutionStatus.succ: bad argument WORKFLOW_EXECUTION_STATUS_PAUSED. This value would be out of bounds."
  succ WORKFLOW_EXECUTION_STATUS_UNSPECIFIED
    = WORKFLOW_EXECUTION_STATUS_RUNNING
  succ WORKFLOW_EXECUTION_STATUS_RUNNING
    = WORKFLOW_EXECUTION_STATUS_COMPLETED
  succ WORKFLOW_EXECUTION_STATUS_COMPLETED
    = WORKFLOW_EXECUTION_STATUS_FAILED
  succ WORKFLOW_EXECUTION_STATUS_FAILED
    = WORKFLOW_EXECUTION_STATUS_CANCELED
  succ WORKFLOW_EXECUTION_STATUS_CANCELED
    = WORKFLOW_EXECUTION_STATUS_TERMINATED
  succ WORKFLOW_EXECUTION_STATUS_TERMINATED
    = WORKFLOW_EXECUTION_STATUS_CONTINUED_AS_NEW
  succ WORKFLOW_EXECUTION_STATUS_CONTINUED_AS_NEW
    = WORKFLOW_EXECUTION_STATUS_TIMED_OUT
  succ WORKFLOW_EXECUTION_STATUS_TIMED_OUT
    = WORKFLOW_EXECUTION_STATUS_PAUSED
  succ (WorkflowExecutionStatus'Unrecognized _)
    = Prelude.error
        "WorkflowExecutionStatus.succ: bad argument: unrecognized value"
  pred WORKFLOW_EXECUTION_STATUS_UNSPECIFIED
    = Prelude.error
        "WorkflowExecutionStatus.pred: bad argument WORKFLOW_EXECUTION_STATUS_UNSPECIFIED. This value would be out of bounds."
  pred WORKFLOW_EXECUTION_STATUS_RUNNING
    = WORKFLOW_EXECUTION_STATUS_UNSPECIFIED
  pred WORKFLOW_EXECUTION_STATUS_COMPLETED
    = WORKFLOW_EXECUTION_STATUS_RUNNING
  pred WORKFLOW_EXECUTION_STATUS_FAILED
    = WORKFLOW_EXECUTION_STATUS_COMPLETED
  pred WORKFLOW_EXECUTION_STATUS_CANCELED
    = WORKFLOW_EXECUTION_STATUS_FAILED
  pred WORKFLOW_EXECUTION_STATUS_TERMINATED
    = WORKFLOW_EXECUTION_STATUS_CANCELED
  pred WORKFLOW_EXECUTION_STATUS_CONTINUED_AS_NEW
    = WORKFLOW_EXECUTION_STATUS_TERMINATED
  pred WORKFLOW_EXECUTION_STATUS_TIMED_OUT
    = WORKFLOW_EXECUTION_STATUS_CONTINUED_AS_NEW
  pred WORKFLOW_EXECUTION_STATUS_PAUSED
    = WORKFLOW_EXECUTION_STATUS_TIMED_OUT
  pred (WorkflowExecutionStatus'Unrecognized _)
    = Prelude.error
        "WorkflowExecutionStatus.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault WorkflowExecutionStatus where
  fieldDefault = WORKFLOW_EXECUTION_STATUS_UNSPECIFIED
instance Control.DeepSeq.NFData WorkflowExecutionStatus where
  rnf x__ = Prelude.seq x__ ()
newtype WorkflowIdConflictPolicy'UnrecognizedValue
  = WorkflowIdConflictPolicy'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data WorkflowIdConflictPolicy
  = WORKFLOW_ID_CONFLICT_POLICY_UNSPECIFIED |
    WORKFLOW_ID_CONFLICT_POLICY_FAIL |
    WORKFLOW_ID_CONFLICT_POLICY_USE_EXISTING |
    WORKFLOW_ID_CONFLICT_POLICY_TERMINATE_EXISTING |
    WorkflowIdConflictPolicy'Unrecognized !WorkflowIdConflictPolicy'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum WorkflowIdConflictPolicy where
  maybeToEnum 0
    = Prelude.Just WORKFLOW_ID_CONFLICT_POLICY_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just WORKFLOW_ID_CONFLICT_POLICY_FAIL
  maybeToEnum 2
    = Prelude.Just WORKFLOW_ID_CONFLICT_POLICY_USE_EXISTING
  maybeToEnum 3
    = Prelude.Just WORKFLOW_ID_CONFLICT_POLICY_TERMINATE_EXISTING
  maybeToEnum k
    = Prelude.Just
        (WorkflowIdConflictPolicy'Unrecognized
           (WorkflowIdConflictPolicy'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum WORKFLOW_ID_CONFLICT_POLICY_UNSPECIFIED
    = "WORKFLOW_ID_CONFLICT_POLICY_UNSPECIFIED"
  showEnum WORKFLOW_ID_CONFLICT_POLICY_FAIL
    = "WORKFLOW_ID_CONFLICT_POLICY_FAIL"
  showEnum WORKFLOW_ID_CONFLICT_POLICY_USE_EXISTING
    = "WORKFLOW_ID_CONFLICT_POLICY_USE_EXISTING"
  showEnum WORKFLOW_ID_CONFLICT_POLICY_TERMINATE_EXISTING
    = "WORKFLOW_ID_CONFLICT_POLICY_TERMINATE_EXISTING"
  showEnum
    (WorkflowIdConflictPolicy'Unrecognized (WorkflowIdConflictPolicy'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "WORKFLOW_ID_CONFLICT_POLICY_UNSPECIFIED"
    = Prelude.Just WORKFLOW_ID_CONFLICT_POLICY_UNSPECIFIED
    | (Prelude.==) k "WORKFLOW_ID_CONFLICT_POLICY_FAIL"
    = Prelude.Just WORKFLOW_ID_CONFLICT_POLICY_FAIL
    | (Prelude.==) k "WORKFLOW_ID_CONFLICT_POLICY_USE_EXISTING"
    = Prelude.Just WORKFLOW_ID_CONFLICT_POLICY_USE_EXISTING
    | (Prelude.==) k "WORKFLOW_ID_CONFLICT_POLICY_TERMINATE_EXISTING"
    = Prelude.Just WORKFLOW_ID_CONFLICT_POLICY_TERMINATE_EXISTING
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded WorkflowIdConflictPolicy where
  minBound = WORKFLOW_ID_CONFLICT_POLICY_UNSPECIFIED
  maxBound = WORKFLOW_ID_CONFLICT_POLICY_TERMINATE_EXISTING
instance Prelude.Enum WorkflowIdConflictPolicy where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum WorkflowIdConflictPolicy: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum WORKFLOW_ID_CONFLICT_POLICY_UNSPECIFIED = 0
  fromEnum WORKFLOW_ID_CONFLICT_POLICY_FAIL = 1
  fromEnum WORKFLOW_ID_CONFLICT_POLICY_USE_EXISTING = 2
  fromEnum WORKFLOW_ID_CONFLICT_POLICY_TERMINATE_EXISTING = 3
  fromEnum
    (WorkflowIdConflictPolicy'Unrecognized (WorkflowIdConflictPolicy'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ WORKFLOW_ID_CONFLICT_POLICY_TERMINATE_EXISTING
    = Prelude.error
        "WorkflowIdConflictPolicy.succ: bad argument WORKFLOW_ID_CONFLICT_POLICY_TERMINATE_EXISTING. This value would be out of bounds."
  succ WORKFLOW_ID_CONFLICT_POLICY_UNSPECIFIED
    = WORKFLOW_ID_CONFLICT_POLICY_FAIL
  succ WORKFLOW_ID_CONFLICT_POLICY_FAIL
    = WORKFLOW_ID_CONFLICT_POLICY_USE_EXISTING
  succ WORKFLOW_ID_CONFLICT_POLICY_USE_EXISTING
    = WORKFLOW_ID_CONFLICT_POLICY_TERMINATE_EXISTING
  succ (WorkflowIdConflictPolicy'Unrecognized _)
    = Prelude.error
        "WorkflowIdConflictPolicy.succ: bad argument: unrecognized value"
  pred WORKFLOW_ID_CONFLICT_POLICY_UNSPECIFIED
    = Prelude.error
        "WorkflowIdConflictPolicy.pred: bad argument WORKFLOW_ID_CONFLICT_POLICY_UNSPECIFIED. This value would be out of bounds."
  pred WORKFLOW_ID_CONFLICT_POLICY_FAIL
    = WORKFLOW_ID_CONFLICT_POLICY_UNSPECIFIED
  pred WORKFLOW_ID_CONFLICT_POLICY_USE_EXISTING
    = WORKFLOW_ID_CONFLICT_POLICY_FAIL
  pred WORKFLOW_ID_CONFLICT_POLICY_TERMINATE_EXISTING
    = WORKFLOW_ID_CONFLICT_POLICY_USE_EXISTING
  pred (WorkflowIdConflictPolicy'Unrecognized _)
    = Prelude.error
        "WorkflowIdConflictPolicy.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault WorkflowIdConflictPolicy where
  fieldDefault = WORKFLOW_ID_CONFLICT_POLICY_UNSPECIFIED
instance Control.DeepSeq.NFData WorkflowIdConflictPolicy where
  rnf x__ = Prelude.seq x__ ()
newtype WorkflowIdReusePolicy'UnrecognizedValue
  = WorkflowIdReusePolicy'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data WorkflowIdReusePolicy
  = WORKFLOW_ID_REUSE_POLICY_UNSPECIFIED |
    WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE |
    WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY |
    WORKFLOW_ID_REUSE_POLICY_REJECT_DUPLICATE |
    WORKFLOW_ID_REUSE_POLICY_TERMINATE_IF_RUNNING |
    WorkflowIdReusePolicy'Unrecognized !WorkflowIdReusePolicy'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum WorkflowIdReusePolicy where
  maybeToEnum 0 = Prelude.Just WORKFLOW_ID_REUSE_POLICY_UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE
  maybeToEnum 2
    = Prelude.Just WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
  maybeToEnum 3
    = Prelude.Just WORKFLOW_ID_REUSE_POLICY_REJECT_DUPLICATE
  maybeToEnum 4
    = Prelude.Just WORKFLOW_ID_REUSE_POLICY_TERMINATE_IF_RUNNING
  maybeToEnum k
    = Prelude.Just
        (WorkflowIdReusePolicy'Unrecognized
           (WorkflowIdReusePolicy'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum WORKFLOW_ID_REUSE_POLICY_UNSPECIFIED
    = "WORKFLOW_ID_REUSE_POLICY_UNSPECIFIED"
  showEnum WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE
    = "WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE"
  showEnum WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
    = "WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY"
  showEnum WORKFLOW_ID_REUSE_POLICY_REJECT_DUPLICATE
    = "WORKFLOW_ID_REUSE_POLICY_REJECT_DUPLICATE"
  showEnum WORKFLOW_ID_REUSE_POLICY_TERMINATE_IF_RUNNING
    = "WORKFLOW_ID_REUSE_POLICY_TERMINATE_IF_RUNNING"
  showEnum
    (WorkflowIdReusePolicy'Unrecognized (WorkflowIdReusePolicy'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "WORKFLOW_ID_REUSE_POLICY_UNSPECIFIED"
    = Prelude.Just WORKFLOW_ID_REUSE_POLICY_UNSPECIFIED
    | (Prelude.==) k "WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE"
    = Prelude.Just WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE
    | (Prelude.==)
        k "WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY"
    = Prelude.Just WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
    | (Prelude.==) k "WORKFLOW_ID_REUSE_POLICY_REJECT_DUPLICATE"
    = Prelude.Just WORKFLOW_ID_REUSE_POLICY_REJECT_DUPLICATE
    | (Prelude.==) k "WORKFLOW_ID_REUSE_POLICY_TERMINATE_IF_RUNNING"
    = Prelude.Just WORKFLOW_ID_REUSE_POLICY_TERMINATE_IF_RUNNING
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded WorkflowIdReusePolicy where
  minBound = WORKFLOW_ID_REUSE_POLICY_UNSPECIFIED
  maxBound = WORKFLOW_ID_REUSE_POLICY_TERMINATE_IF_RUNNING
instance Prelude.Enum WorkflowIdReusePolicy where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum WorkflowIdReusePolicy: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum WORKFLOW_ID_REUSE_POLICY_UNSPECIFIED = 0
  fromEnum WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE = 1
  fromEnum WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY = 2
  fromEnum WORKFLOW_ID_REUSE_POLICY_REJECT_DUPLICATE = 3
  fromEnum WORKFLOW_ID_REUSE_POLICY_TERMINATE_IF_RUNNING = 4
  fromEnum
    (WorkflowIdReusePolicy'Unrecognized (WorkflowIdReusePolicy'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ WORKFLOW_ID_REUSE_POLICY_TERMINATE_IF_RUNNING
    = Prelude.error
        "WorkflowIdReusePolicy.succ: bad argument WORKFLOW_ID_REUSE_POLICY_TERMINATE_IF_RUNNING. This value would be out of bounds."
  succ WORKFLOW_ID_REUSE_POLICY_UNSPECIFIED
    = WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE
  succ WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE
    = WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
  succ WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
    = WORKFLOW_ID_REUSE_POLICY_REJECT_DUPLICATE
  succ WORKFLOW_ID_REUSE_POLICY_REJECT_DUPLICATE
    = WORKFLOW_ID_REUSE_POLICY_TERMINATE_IF_RUNNING
  succ (WorkflowIdReusePolicy'Unrecognized _)
    = Prelude.error
        "WorkflowIdReusePolicy.succ: bad argument: unrecognized value"
  pred WORKFLOW_ID_REUSE_POLICY_UNSPECIFIED
    = Prelude.error
        "WorkflowIdReusePolicy.pred: bad argument WORKFLOW_ID_REUSE_POLICY_UNSPECIFIED. This value would be out of bounds."
  pred WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE
    = WORKFLOW_ID_REUSE_POLICY_UNSPECIFIED
  pred WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
    = WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE
  pred WORKFLOW_ID_REUSE_POLICY_REJECT_DUPLICATE
    = WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY
  pred WORKFLOW_ID_REUSE_POLICY_TERMINATE_IF_RUNNING
    = WORKFLOW_ID_REUSE_POLICY_REJECT_DUPLICATE
  pred (WorkflowIdReusePolicy'Unrecognized _)
    = Prelude.error
        "WorkflowIdReusePolicy.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault WorkflowIdReusePolicy where
  fieldDefault = WORKFLOW_ID_REUSE_POLICY_UNSPECIFIED
instance Control.DeepSeq.NFData WorkflowIdReusePolicy where
  rnf x__ = Prelude.seq x__ ()