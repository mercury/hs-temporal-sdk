{- This file was auto-generated from temporal/sdk/core/workflow_commands/workflow_commands.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands (
        ActivityCancellationType(..), ActivityCancellationType(),
        ActivityCancellationType'UnrecognizedValue,
        CancelChildWorkflowExecution(), CancelSignalWorkflow(),
        CancelTimer(), CancelWorkflowExecution(),
        CompleteWorkflowExecution(), ContinueAsNewWorkflowExecution(),
        ContinueAsNewWorkflowExecution'HeadersEntry(),
        ContinueAsNewWorkflowExecution'MemoEntry(),
        FailWorkflowExecution(), ModifyWorkflowProperties(), QueryResult(),
        QueryResult'Variant(..), _QueryResult'Succeeded,
        _QueryResult'Failed, QuerySuccess(), RequestCancelActivity(),
        RequestCancelExternalWorkflowExecution(),
        RequestCancelLocalActivity(), RequestCancelNexusOperation(),
        ScheduleActivity(), ScheduleActivity'HeadersEntry(),
        ScheduleLocalActivity(), ScheduleLocalActivity'HeadersEntry(),
        ScheduleNexusOperation(),
        ScheduleNexusOperation'NexusHeaderEntry(), SetPatchMarker(),
        SignalExternalWorkflowExecution(),
        SignalExternalWorkflowExecution'Target(..),
        _SignalExternalWorkflowExecution'WorkflowExecution,
        _SignalExternalWorkflowExecution'ChildWorkflowId,
        SignalExternalWorkflowExecution'HeadersEntry(),
        StartChildWorkflowExecution(),
        StartChildWorkflowExecution'HeadersEntry(),
        StartChildWorkflowExecution'MemoEntry(), StartTimer(),
        UpdateResponse(), UpdateResponse'Response(..),
        _UpdateResponse'Accepted, _UpdateResponse'Rejected,
        _UpdateResponse'Completed, UpsertWorkflowSearchAttributes(),
        WorkflowCommand(), WorkflowCommand'Variant(..),
        _WorkflowCommand'StartTimer, _WorkflowCommand'ScheduleActivity,
        _WorkflowCommand'RespondToQuery,
        _WorkflowCommand'RequestCancelActivity,
        _WorkflowCommand'CancelTimer,
        _WorkflowCommand'CompleteWorkflowExecution,
        _WorkflowCommand'FailWorkflowExecution,
        _WorkflowCommand'ContinueAsNewWorkflowExecution,
        _WorkflowCommand'CancelWorkflowExecution,
        _WorkflowCommand'SetPatchMarker,
        _WorkflowCommand'StartChildWorkflowExecution,
        _WorkflowCommand'CancelChildWorkflowExecution,
        _WorkflowCommand'RequestCancelExternalWorkflowExecution,
        _WorkflowCommand'SignalExternalWorkflowExecution,
        _WorkflowCommand'CancelSignalWorkflow,
        _WorkflowCommand'ScheduleLocalActivity,
        _WorkflowCommand'RequestCancelLocalActivity,
        _WorkflowCommand'UpsertWorkflowSearchAttributes,
        _WorkflowCommand'ModifyWorkflowProperties,
        _WorkflowCommand'UpdateResponse,
        _WorkflowCommand'ScheduleNexusOperation,
        _WorkflowCommand'RequestCancelNexusOperation
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
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Empty
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Temporal.Api.Common.V1.Message
import qualified Proto.Temporal.Api.Enums.V1.Workflow
import qualified Proto.Temporal.Api.Failure.V1.Message
import qualified Proto.Temporal.Api.Sdk.V1.EventGroupMarker
import qualified Proto.Temporal.Api.Sdk.V1.UserMetadata
import qualified Proto.Temporal.Api.Workflow.V1.Message
import qualified Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow
import qualified Proto.Temporal.Sdk.Core.Common.Common
import qualified Proto.Temporal.Sdk.Core.Nexus.Nexus
newtype ActivityCancellationType'UnrecognizedValue
  = ActivityCancellationType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ActivityCancellationType
  = TRY_CANCEL |
    WAIT_CANCELLATION_COMPLETED |
    ABANDON |
    ActivityCancellationType'Unrecognized !ActivityCancellationType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ActivityCancellationType where
  maybeToEnum 0 = Prelude.Just TRY_CANCEL
  maybeToEnum 1 = Prelude.Just WAIT_CANCELLATION_COMPLETED
  maybeToEnum 2 = Prelude.Just ABANDON
  maybeToEnum k
    = Prelude.Just
        (ActivityCancellationType'Unrecognized
           (ActivityCancellationType'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum TRY_CANCEL = "TRY_CANCEL"
  showEnum WAIT_CANCELLATION_COMPLETED
    = "WAIT_CANCELLATION_COMPLETED"
  showEnum ABANDON = "ABANDON"
  showEnum
    (ActivityCancellationType'Unrecognized (ActivityCancellationType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "TRY_CANCEL" = Prelude.Just TRY_CANCEL
    | (Prelude.==) k "WAIT_CANCELLATION_COMPLETED"
    = Prelude.Just WAIT_CANCELLATION_COMPLETED
    | (Prelude.==) k "ABANDON" = Prelude.Just ABANDON
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ActivityCancellationType where
  minBound = TRY_CANCEL
  maxBound = ABANDON
instance Prelude.Enum ActivityCancellationType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ActivityCancellationType: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum TRY_CANCEL = 0
  fromEnum WAIT_CANCELLATION_COMPLETED = 1
  fromEnum ABANDON = 2
  fromEnum
    (ActivityCancellationType'Unrecognized (ActivityCancellationType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ABANDON
    = Prelude.error
        "ActivityCancellationType.succ: bad argument ABANDON. This value would be out of bounds."
  succ TRY_CANCEL = WAIT_CANCELLATION_COMPLETED
  succ WAIT_CANCELLATION_COMPLETED = ABANDON
  succ (ActivityCancellationType'Unrecognized _)
    = Prelude.error
        "ActivityCancellationType.succ: bad argument: unrecognized value"
  pred TRY_CANCEL
    = Prelude.error
        "ActivityCancellationType.pred: bad argument TRY_CANCEL. This value would be out of bounds."
  pred WAIT_CANCELLATION_COMPLETED = TRY_CANCEL
  pred ABANDON = WAIT_CANCELLATION_COMPLETED
  pred (ActivityCancellationType'Unrecognized _)
    = Prelude.error
        "ActivityCancellationType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ActivityCancellationType where
  fieldDefault = TRY_CANCEL
instance Control.DeepSeq.NFData ActivityCancellationType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.childWorkflowSeq' @:: Lens' CancelChildWorkflowExecution Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.reason' @:: Lens' CancelChildWorkflowExecution Data.Text.Text@ -}
data CancelChildWorkflowExecution
  = CancelChildWorkflowExecution'_constructor {_CancelChildWorkflowExecution'childWorkflowSeq :: !Data.Word.Word32,
                                               _CancelChildWorkflowExecution'reason :: !Data.Text.Text,
                                               _CancelChildWorkflowExecution'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CancelChildWorkflowExecution where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CancelChildWorkflowExecution "childWorkflowSeq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelChildWorkflowExecution'childWorkflowSeq
           (\ x__ y__
              -> x__ {_CancelChildWorkflowExecution'childWorkflowSeq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CancelChildWorkflowExecution "reason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelChildWorkflowExecution'reason
           (\ x__ y__ -> x__ {_CancelChildWorkflowExecution'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Message CancelChildWorkflowExecution where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_commands.CancelChildWorkflowExecution"
  packedMessageDescriptor _
    = "\n\
      \\FSCancelChildWorkflowExecution\DC2,\n\
      \\DC2child_workflow_seq\CAN\SOH \SOH(\rR\DLEchildWorkflowSeq\DC2\SYN\n\
      \\ACKreason\CAN\STX \SOH(\tR\ACKreason"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        childWorkflowSeq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "child_workflow_seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"childWorkflowSeq")) ::
              Data.ProtoLens.FieldDescriptor CancelChildWorkflowExecution
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"reason")) ::
              Data.ProtoLens.FieldDescriptor CancelChildWorkflowExecution
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, childWorkflowSeq__field_descriptor),
           (Data.ProtoLens.Tag 2, reason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CancelChildWorkflowExecution'_unknownFields
        (\ x__ y__
           -> x__ {_CancelChildWorkflowExecution'_unknownFields = y__})
  defMessage
    = CancelChildWorkflowExecution'_constructor
        {_CancelChildWorkflowExecution'childWorkflowSeq = Data.ProtoLens.fieldDefault,
         _CancelChildWorkflowExecution'reason = Data.ProtoLens.fieldDefault,
         _CancelChildWorkflowExecution'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CancelChildWorkflowExecution
          -> Data.ProtoLens.Encoding.Bytes.Parser CancelChildWorkflowExecution
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "child_workflow_seq"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"childWorkflowSeq") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "reason"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reason") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CancelChildWorkflowExecution"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"childWorkflowSeq") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"reason") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData CancelChildWorkflowExecution where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CancelChildWorkflowExecution'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CancelChildWorkflowExecution'childWorkflowSeq x__)
                (Control.DeepSeq.deepseq
                   (_CancelChildWorkflowExecution'reason x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.seq' @:: Lens' CancelSignalWorkflow Data.Word.Word32@ -}
data CancelSignalWorkflow
  = CancelSignalWorkflow'_constructor {_CancelSignalWorkflow'seq :: !Data.Word.Word32,
                                       _CancelSignalWorkflow'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CancelSignalWorkflow where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CancelSignalWorkflow "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelSignalWorkflow'seq
           (\ x__ y__ -> x__ {_CancelSignalWorkflow'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Message CancelSignalWorkflow where
  messageName _
    = Data.Text.pack "coresdk.workflow_commands.CancelSignalWorkflow"
  packedMessageDescriptor _
    = "\n\
      \\DC4CancelSignalWorkflow\DC2\DLE\n\
      \\ETXseq\CAN\SOH \SOH(\rR\ETXseq"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"seq")) ::
              Data.ProtoLens.FieldDescriptor CancelSignalWorkflow
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, seq__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CancelSignalWorkflow'_unknownFields
        (\ x__ y__ -> x__ {_CancelSignalWorkflow'_unknownFields = y__})
  defMessage
    = CancelSignalWorkflow'_constructor
        {_CancelSignalWorkflow'seq = Data.ProtoLens.fieldDefault,
         _CancelSignalWorkflow'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CancelSignalWorkflow
          -> Data.ProtoLens.Encoding.Bytes.Parser CancelSignalWorkflow
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CancelSignalWorkflow"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"seq") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CancelSignalWorkflow where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CancelSignalWorkflow'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CancelSignalWorkflow'seq x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.seq' @:: Lens' CancelTimer Data.Word.Word32@ -}
data CancelTimer
  = CancelTimer'_constructor {_CancelTimer'seq :: !Data.Word.Word32,
                              _CancelTimer'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CancelTimer where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CancelTimer "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelTimer'seq (\ x__ y__ -> x__ {_CancelTimer'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Message CancelTimer where
  messageName _
    = Data.Text.pack "coresdk.workflow_commands.CancelTimer"
  packedMessageDescriptor _
    = "\n\
      \\vCancelTimer\DC2\DLE\n\
      \\ETXseq\CAN\SOH \SOH(\rR\ETXseq"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"seq")) ::
              Data.ProtoLens.FieldDescriptor CancelTimer
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, seq__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CancelTimer'_unknownFields
        (\ x__ y__ -> x__ {_CancelTimer'_unknownFields = y__})
  defMessage
    = CancelTimer'_constructor
        {_CancelTimer'seq = Data.ProtoLens.fieldDefault,
         _CancelTimer'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CancelTimer -> Data.ProtoLens.Encoding.Bytes.Parser CancelTimer
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CancelTimer"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"seq") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CancelTimer where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CancelTimer'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CancelTimer'seq x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.details' @:: Lens' CancelWorkflowExecution Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'details' @:: Lens' CancelWorkflowExecution (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@ -}
data CancelWorkflowExecution
  = CancelWorkflowExecution'_constructor {_CancelWorkflowExecution'details :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads),
                                          _CancelWorkflowExecution'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CancelWorkflowExecution where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CancelWorkflowExecution "details" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelWorkflowExecution'details
           (\ x__ y__ -> x__ {_CancelWorkflowExecution'details = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CancelWorkflowExecution "maybe'details" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelWorkflowExecution'details
           (\ x__ y__ -> x__ {_CancelWorkflowExecution'details = y__}))
        Prelude.id
instance Data.ProtoLens.Message CancelWorkflowExecution where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_commands.CancelWorkflowExecution"
  packedMessageDescriptor _
    = "\n\
      \\ETBCancelWorkflowExecution\DC2:\n\
      \\adetails\CAN\SOH \SOH(\v2 .temporal.api.common.v1.PayloadsR\adetails"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        details__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "details"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payloads)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'details")) ::
              Data.ProtoLens.FieldDescriptor CancelWorkflowExecution
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, details__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CancelWorkflowExecution'_unknownFields
        (\ x__ y__ -> x__ {_CancelWorkflowExecution'_unknownFields = y__})
  defMessage
    = CancelWorkflowExecution'_constructor
        {_CancelWorkflowExecution'details = Prelude.Nothing,
         _CancelWorkflowExecution'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CancelWorkflowExecution
          -> Data.ProtoLens.Encoding.Bytes.Parser CancelWorkflowExecution
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "details"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"details") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CancelWorkflowExecution"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'details") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CancelWorkflowExecution where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CancelWorkflowExecution'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CancelWorkflowExecution'details x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.result' @:: Lens' CompleteWorkflowExecution Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'result' @:: Lens' CompleteWorkflowExecution (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data CompleteWorkflowExecution
  = CompleteWorkflowExecution'_constructor {_CompleteWorkflowExecution'result :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                            _CompleteWorkflowExecution'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CompleteWorkflowExecution where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CompleteWorkflowExecution "result" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CompleteWorkflowExecution'result
           (\ x__ y__ -> x__ {_CompleteWorkflowExecution'result = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CompleteWorkflowExecution "maybe'result" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CompleteWorkflowExecution'result
           (\ x__ y__ -> x__ {_CompleteWorkflowExecution'result = y__}))
        Prelude.id
instance Data.ProtoLens.Message CompleteWorkflowExecution where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_commands.CompleteWorkflowExecution"
  packedMessageDescriptor _
    = "\n\
      \\EMCompleteWorkflowExecution\DC27\n\
      \\ACKresult\CAN\SOH \SOH(\v2\US.temporal.api.common.v1.PayloadR\ACKresult"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        result__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'result")) ::
              Data.ProtoLens.FieldDescriptor CompleteWorkflowExecution
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, result__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CompleteWorkflowExecution'_unknownFields
        (\ x__ y__
           -> x__ {_CompleteWorkflowExecution'_unknownFields = y__})
  defMessage
    = CompleteWorkflowExecution'_constructor
        {_CompleteWorkflowExecution'result = Prelude.Nothing,
         _CompleteWorkflowExecution'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CompleteWorkflowExecution
          -> Data.ProtoLens.Encoding.Bytes.Parser CompleteWorkflowExecution
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "result"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"result") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CompleteWorkflowExecution"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'result") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CompleteWorkflowExecution where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CompleteWorkflowExecution'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CompleteWorkflowExecution'result x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.workflowType' @:: Lens' ContinueAsNewWorkflowExecution Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.taskQueue' @:: Lens' ContinueAsNewWorkflowExecution Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.arguments' @:: Lens' ContinueAsNewWorkflowExecution [Proto.Temporal.Api.Common.V1.Message.Payload]@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.vec'arguments' @:: Lens' ContinueAsNewWorkflowExecution (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.workflowRunTimeout' @:: Lens' ContinueAsNewWorkflowExecution Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'workflowRunTimeout' @:: Lens' ContinueAsNewWorkflowExecution (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.workflowTaskTimeout' @:: Lens' ContinueAsNewWorkflowExecution Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'workflowTaskTimeout' @:: Lens' ContinueAsNewWorkflowExecution (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.memo' @:: Lens' ContinueAsNewWorkflowExecution (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.headers' @:: Lens' ContinueAsNewWorkflowExecution (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.searchAttributes' @:: Lens' ContinueAsNewWorkflowExecution Proto.Temporal.Api.Common.V1.Message.SearchAttributes@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'searchAttributes' @:: Lens' ContinueAsNewWorkflowExecution (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.retryPolicy' @:: Lens' ContinueAsNewWorkflowExecution Proto.Temporal.Api.Common.V1.Message.RetryPolicy@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'retryPolicy' @:: Lens' ContinueAsNewWorkflowExecution (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.versioningIntent' @:: Lens' ContinueAsNewWorkflowExecution Proto.Temporal.Sdk.Core.Common.Common.VersioningIntent@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.initialVersioningBehavior' @:: Lens' ContinueAsNewWorkflowExecution Proto.Temporal.Api.Enums.V1.Workflow.ContinueAsNewVersioningBehavior@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.backoffStartInterval' @:: Lens' ContinueAsNewWorkflowExecution Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'backoffStartInterval' @:: Lens' ContinueAsNewWorkflowExecution (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data ContinueAsNewWorkflowExecution
  = ContinueAsNewWorkflowExecution'_constructor {_ContinueAsNewWorkflowExecution'workflowType :: !Data.Text.Text,
                                                 _ContinueAsNewWorkflowExecution'taskQueue :: !Data.Text.Text,
                                                 _ContinueAsNewWorkflowExecution'arguments :: !(Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload),
                                                 _ContinueAsNewWorkflowExecution'workflowRunTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                 _ContinueAsNewWorkflowExecution'workflowTaskTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                 _ContinueAsNewWorkflowExecution'memo :: !(Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload),
                                                 _ContinueAsNewWorkflowExecution'headers :: !(Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload),
                                                 _ContinueAsNewWorkflowExecution'searchAttributes :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes),
                                                 _ContinueAsNewWorkflowExecution'retryPolicy :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy),
                                                 _ContinueAsNewWorkflowExecution'versioningIntent :: !Proto.Temporal.Sdk.Core.Common.Common.VersioningIntent,
                                                 _ContinueAsNewWorkflowExecution'initialVersioningBehavior :: !Proto.Temporal.Api.Enums.V1.Workflow.ContinueAsNewVersioningBehavior,
                                                 _ContinueAsNewWorkflowExecution'backoffStartInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                 _ContinueAsNewWorkflowExecution'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ContinueAsNewWorkflowExecution where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution "workflowType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'workflowType
           (\ x__ y__
              -> x__ {_ContinueAsNewWorkflowExecution'workflowType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution "taskQueue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'taskQueue
           (\ x__ y__
              -> x__ {_ContinueAsNewWorkflowExecution'taskQueue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution "arguments" [Proto.Temporal.Api.Common.V1.Message.Payload] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'arguments
           (\ x__ y__
              -> x__ {_ContinueAsNewWorkflowExecution'arguments = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution "vec'arguments" (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'arguments
           (\ x__ y__
              -> x__ {_ContinueAsNewWorkflowExecution'arguments = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution "workflowRunTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'workflowRunTimeout
           (\ x__ y__
              -> x__ {_ContinueAsNewWorkflowExecution'workflowRunTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution "maybe'workflowRunTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'workflowRunTimeout
           (\ x__ y__
              -> x__ {_ContinueAsNewWorkflowExecution'workflowRunTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution "workflowTaskTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'workflowTaskTimeout
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecution'workflowTaskTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution "maybe'workflowTaskTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'workflowTaskTimeout
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecution'workflowTaskTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution "memo" (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'memo
           (\ x__ y__ -> x__ {_ContinueAsNewWorkflowExecution'memo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution "headers" (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'headers
           (\ x__ y__ -> x__ {_ContinueAsNewWorkflowExecution'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution "searchAttributes" Proto.Temporal.Api.Common.V1.Message.SearchAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'searchAttributes
           (\ x__ y__
              -> x__ {_ContinueAsNewWorkflowExecution'searchAttributes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution "maybe'searchAttributes" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'searchAttributes
           (\ x__ y__
              -> x__ {_ContinueAsNewWorkflowExecution'searchAttributes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution "retryPolicy" Proto.Temporal.Api.Common.V1.Message.RetryPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'retryPolicy
           (\ x__ y__
              -> x__ {_ContinueAsNewWorkflowExecution'retryPolicy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution "maybe'retryPolicy" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'retryPolicy
           (\ x__ y__
              -> x__ {_ContinueAsNewWorkflowExecution'retryPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution "versioningIntent" Proto.Temporal.Sdk.Core.Common.Common.VersioningIntent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'versioningIntent
           (\ x__ y__
              -> x__ {_ContinueAsNewWorkflowExecution'versioningIntent = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution "initialVersioningBehavior" Proto.Temporal.Api.Enums.V1.Workflow.ContinueAsNewVersioningBehavior where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'initialVersioningBehavior
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecution'initialVersioningBehavior = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution "backoffStartInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'backoffStartInterval
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecution'backoffStartInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution "maybe'backoffStartInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'backoffStartInterval
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecution'backoffStartInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Message ContinueAsNewWorkflowExecution where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_commands.ContinueAsNewWorkflowExecution"
  packedMessageDescriptor _
    = "\n\
      \\RSContinueAsNewWorkflowExecution\DC2#\n\
      \\rworkflow_type\CAN\SOH \SOH(\tR\fworkflowType\DC2\GS\n\
      \\n\
      \task_queue\CAN\STX \SOH(\tR\ttaskQueue\DC2=\n\
      \\targuments\CAN\ETX \ETX(\v2\US.temporal.api.common.v1.PayloadR\targuments\DC2K\n\
      \\DC4workflow_run_timeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC2workflowRunTimeout\DC2M\n\
      \\NAKworkflow_task_timeout\CAN\ENQ \SOH(\v2\EM.google.protobuf.DurationR\DC3workflowTaskTimeout\DC2W\n\
      \\EOTmemo\CAN\ACK \ETX(\v2C.coresdk.workflow_commands.ContinueAsNewWorkflowExecution.MemoEntryR\EOTmemo\DC2`\n\
      \\aheaders\CAN\a \ETX(\v2F.coresdk.workflow_commands.ContinueAsNewWorkflowExecution.HeadersEntryR\aheaders\DC2U\n\
      \\DC1search_attributes\CAN\b \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC2F\n\
      \\fretry_policy\CAN\t \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2M\n\
      \\DC1versioning_intent\CAN\n\
      \ \SOH(\SO2 .coresdk.common.VersioningIntentR\DLEversioningIntent\DC2v\n\
      \\ESCinitial_versioning_behavior\CAN\v \SOH(\SO26.temporal.api.enums.v1.ContinueAsNewVersioningBehaviorR\EMinitialVersioningBehavior\DC2O\n\
      \\SYNbackoff_start_interval\CAN\f \SOH(\v2\EM.google.protobuf.DurationR\DC4backoffStartInterval\SUBX\n\
      \\tMemoEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH\SUB[\n\
      \\fHeadersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        workflowType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workflowType")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecution
        taskQueue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"taskQueue")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecution
        arguments__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "arguments"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"arguments")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecution
        workflowRunTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_run_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowRunTimeout")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecution
        workflowTaskTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_task_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowTaskTimeout")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecution
        memo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "memo"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ContinueAsNewWorkflowExecution'MemoEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"memo")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecution
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ContinueAsNewWorkflowExecution'HeadersEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"headers")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecution
        searchAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "search_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.SearchAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'searchAttributes")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecution
        retryPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.RetryPolicy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'retryPolicy")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecution
        versioningIntent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "versioning_intent"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Sdk.Core.Common.Common.VersioningIntent)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"versioningIntent")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecution
        initialVersioningBehavior__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "initial_versioning_behavior"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Workflow.ContinueAsNewVersioningBehavior)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"initialVersioningBehavior")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecution
        backoffStartInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "backoff_start_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'backoffStartInterval")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecution
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, workflowType__field_descriptor),
           (Data.ProtoLens.Tag 2, taskQueue__field_descriptor),
           (Data.ProtoLens.Tag 3, arguments__field_descriptor),
           (Data.ProtoLens.Tag 4, workflowRunTimeout__field_descriptor),
           (Data.ProtoLens.Tag 5, workflowTaskTimeout__field_descriptor),
           (Data.ProtoLens.Tag 6, memo__field_descriptor),
           (Data.ProtoLens.Tag 7, headers__field_descriptor),
           (Data.ProtoLens.Tag 8, searchAttributes__field_descriptor),
           (Data.ProtoLens.Tag 9, retryPolicy__field_descriptor),
           (Data.ProtoLens.Tag 10, versioningIntent__field_descriptor),
           (Data.ProtoLens.Tag 11, 
            initialVersioningBehavior__field_descriptor),
           (Data.ProtoLens.Tag 12, backoffStartInterval__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ContinueAsNewWorkflowExecution'_unknownFields
        (\ x__ y__
           -> x__ {_ContinueAsNewWorkflowExecution'_unknownFields = y__})
  defMessage
    = ContinueAsNewWorkflowExecution'_constructor
        {_ContinueAsNewWorkflowExecution'workflowType = Data.ProtoLens.fieldDefault,
         _ContinueAsNewWorkflowExecution'taskQueue = Data.ProtoLens.fieldDefault,
         _ContinueAsNewWorkflowExecution'arguments = Data.Vector.Generic.empty,
         _ContinueAsNewWorkflowExecution'workflowRunTimeout = Prelude.Nothing,
         _ContinueAsNewWorkflowExecution'workflowTaskTimeout = Prelude.Nothing,
         _ContinueAsNewWorkflowExecution'memo = Data.Map.empty,
         _ContinueAsNewWorkflowExecution'headers = Data.Map.empty,
         _ContinueAsNewWorkflowExecution'searchAttributes = Prelude.Nothing,
         _ContinueAsNewWorkflowExecution'retryPolicy = Prelude.Nothing,
         _ContinueAsNewWorkflowExecution'versioningIntent = Data.ProtoLens.fieldDefault,
         _ContinueAsNewWorkflowExecution'initialVersioningBehavior = Data.ProtoLens.fieldDefault,
         _ContinueAsNewWorkflowExecution'backoffStartInterval = Prelude.Nothing,
         _ContinueAsNewWorkflowExecution'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ContinueAsNewWorkflowExecution
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Common.V1.Message.Payload
             -> Data.ProtoLens.Encoding.Bytes.Parser ContinueAsNewWorkflowExecution
        loop x mutable'arguments
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'arguments <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'arguments)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'arguments") frozen'arguments x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "workflow_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowType") y x)
                                  mutable'arguments
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "task_queue"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskQueue") y x)
                                  mutable'arguments
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "arguments"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'arguments y)
                                loop x v
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_run_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowRunTimeout") y x)
                                  mutable'arguments
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_task_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowTaskTimeout") y x)
                                  mutable'arguments
                        50
                          -> do !(entry :: ContinueAsNewWorkflowExecution'MemoEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                          (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                              Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                (Prelude.fromIntegral
                                                                                                   len)
                                                                                                Data.ProtoLens.parseMessage)
                                                                                          "memo"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"memo")
                                        (\ !t -> Data.Map.insert key value t) x)
                                     mutable'arguments)
                        58
                          -> do !(entry :: ContinueAsNewWorkflowExecution'HeadersEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                             (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                                 Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                   (Prelude.fromIntegral
                                                                                                      len)
                                                                                                   Data.ProtoLens.parseMessage)
                                                                                             "headers"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"headers")
                                        (\ !t -> Data.Map.insert key value t) x)
                                     mutable'arguments)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "search_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"searchAttributes") y x)
                                  mutable'arguments
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "retry_policy"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"retryPolicy") y x)
                                  mutable'arguments
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "versioning_intent"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"versioningIntent") y x)
                                  mutable'arguments
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "initial_versioning_behavior"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"initialVersioningBehavior") y x)
                                  mutable'arguments
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "backoff_start_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"backoffStartInterval") y x)
                                  mutable'arguments
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'arguments
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'arguments <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'arguments)
          "ContinueAsNewWorkflowExecution"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"workflowType") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"taskQueue") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'arguments") _x))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'workflowRunTimeout") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'workflowTaskTimeout") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         ((Data.Monoid.<>)
                            (Data.Monoid.mconcat
                               (Prelude.map
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                                (Lens.Family2.set
                                                   (Data.ProtoLens.Field.field @"value")
                                                   (Prelude.snd _v)
                                                   (Data.ProtoLens.defMessage ::
                                                      ContinueAsNewWorkflowExecution'MemoEntry)))))
                                  (Data.Map.toList
                                     (Lens.Family2.view (Data.ProtoLens.Field.field @"memo") _x))))
                            ((Data.Monoid.<>)
                               (Data.Monoid.mconcat
                                  (Prelude.map
                                     (\ _v
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                             ((Prelude..)
                                                (\ bs
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           (Prelude.fromIntegral
                                                              (Data.ByteString.length bs)))
                                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Data.ProtoLens.encodeMessage
                                                (Lens.Family2.set
                                                   (Data.ProtoLens.Field.field @"key")
                                                   (Prelude.fst _v)
                                                   (Lens.Family2.set
                                                      (Data.ProtoLens.Field.field @"value")
                                                      (Prelude.snd _v)
                                                      (Data.ProtoLens.defMessage ::
                                                         ContinueAsNewWorkflowExecution'HeadersEntry)))))
                                     (Data.Map.toList
                                        (Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"headers") _x))))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'searchAttributes") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'retryPolicy") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"versioningIntent") _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                 ((Prelude..)
                                                    ((Prelude..)
                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       Prelude.fromIntegral)
                                                    Prelude.fromEnum _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field
                                                       @"initialVersioningBehavior")
                                                    _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                    ((Prelude..)
                                                       ((Prelude..)
                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          Prelude.fromIntegral)
                                                       Prelude.fromEnum _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'backoffStartInterval")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                                        ((Prelude..)
                                                           (\ bs
                                                              -> (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      (Prelude.fromIntegral
                                                                         (Data.ByteString.length
                                                                            bs)))
                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                      bs))
                                                           Data.ProtoLens.encodeMessage _v))
                                              (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                 (Lens.Family2.view
                                                    Data.ProtoLens.unknownFields _x)))))))))))))
instance Control.DeepSeq.NFData ContinueAsNewWorkflowExecution where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ContinueAsNewWorkflowExecution'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ContinueAsNewWorkflowExecution'workflowType x__)
                (Control.DeepSeq.deepseq
                   (_ContinueAsNewWorkflowExecution'taskQueue x__)
                   (Control.DeepSeq.deepseq
                      (_ContinueAsNewWorkflowExecution'arguments x__)
                      (Control.DeepSeq.deepseq
                         (_ContinueAsNewWorkflowExecution'workflowRunTimeout x__)
                         (Control.DeepSeq.deepseq
                            (_ContinueAsNewWorkflowExecution'workflowTaskTimeout x__)
                            (Control.DeepSeq.deepseq
                               (_ContinueAsNewWorkflowExecution'memo x__)
                               (Control.DeepSeq.deepseq
                                  (_ContinueAsNewWorkflowExecution'headers x__)
                                  (Control.DeepSeq.deepseq
                                     (_ContinueAsNewWorkflowExecution'searchAttributes x__)
                                     (Control.DeepSeq.deepseq
                                        (_ContinueAsNewWorkflowExecution'retryPolicy x__)
                                        (Control.DeepSeq.deepseq
                                           (_ContinueAsNewWorkflowExecution'versioningIntent x__)
                                           (Control.DeepSeq.deepseq
                                              (_ContinueAsNewWorkflowExecution'initialVersioningBehavior
                                                 x__)
                                              (Control.DeepSeq.deepseq
                                                 (_ContinueAsNewWorkflowExecution'backoffStartInterval
                                                    x__)
                                                 ()))))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.key' @:: Lens' ContinueAsNewWorkflowExecution'HeadersEntry Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.value' @:: Lens' ContinueAsNewWorkflowExecution'HeadersEntry Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'value' @:: Lens' ContinueAsNewWorkflowExecution'HeadersEntry (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data ContinueAsNewWorkflowExecution'HeadersEntry
  = ContinueAsNewWorkflowExecution'HeadersEntry'_constructor {_ContinueAsNewWorkflowExecution'HeadersEntry'key :: !Data.Text.Text,
                                                              _ContinueAsNewWorkflowExecution'HeadersEntry'value :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                                              _ContinueAsNewWorkflowExecution'HeadersEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ContinueAsNewWorkflowExecution'HeadersEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution'HeadersEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'HeadersEntry'key
           (\ x__ y__
              -> x__ {_ContinueAsNewWorkflowExecution'HeadersEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution'HeadersEntry "value" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'HeadersEntry'value
           (\ x__ y__
              -> x__ {_ContinueAsNewWorkflowExecution'HeadersEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution'HeadersEntry "maybe'value" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'HeadersEntry'value
           (\ x__ y__
              -> x__ {_ContinueAsNewWorkflowExecution'HeadersEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message ContinueAsNewWorkflowExecution'HeadersEntry where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_commands.ContinueAsNewWorkflowExecution.HeadersEntry"
  packedMessageDescriptor _
    = "\n\
      \\fHeadersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecution'HeadersEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecution'HeadersEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ContinueAsNewWorkflowExecution'HeadersEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_ContinueAsNewWorkflowExecution'HeadersEntry'_unknownFields = y__})
  defMessage
    = ContinueAsNewWorkflowExecution'HeadersEntry'_constructor
        {_ContinueAsNewWorkflowExecution'HeadersEntry'key = Data.ProtoLens.fieldDefault,
         _ContinueAsNewWorkflowExecution'HeadersEntry'value = Prelude.Nothing,
         _ContinueAsNewWorkflowExecution'HeadersEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ContinueAsNewWorkflowExecution'HeadersEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser ContinueAsNewWorkflowExecution'HeadersEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HeadersEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ContinueAsNewWorkflowExecution'HeadersEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ContinueAsNewWorkflowExecution'HeadersEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ContinueAsNewWorkflowExecution'HeadersEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_ContinueAsNewWorkflowExecution'HeadersEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.key' @:: Lens' ContinueAsNewWorkflowExecution'MemoEntry Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.value' @:: Lens' ContinueAsNewWorkflowExecution'MemoEntry Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'value' @:: Lens' ContinueAsNewWorkflowExecution'MemoEntry (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data ContinueAsNewWorkflowExecution'MemoEntry
  = ContinueAsNewWorkflowExecution'MemoEntry'_constructor {_ContinueAsNewWorkflowExecution'MemoEntry'key :: !Data.Text.Text,
                                                           _ContinueAsNewWorkflowExecution'MemoEntry'value :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                                           _ContinueAsNewWorkflowExecution'MemoEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ContinueAsNewWorkflowExecution'MemoEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution'MemoEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'MemoEntry'key
           (\ x__ y__
              -> x__ {_ContinueAsNewWorkflowExecution'MemoEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution'MemoEntry "value" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'MemoEntry'value
           (\ x__ y__
              -> x__ {_ContinueAsNewWorkflowExecution'MemoEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecution'MemoEntry "maybe'value" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecution'MemoEntry'value
           (\ x__ y__
              -> x__ {_ContinueAsNewWorkflowExecution'MemoEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message ContinueAsNewWorkflowExecution'MemoEntry where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_commands.ContinueAsNewWorkflowExecution.MemoEntry"
  packedMessageDescriptor _
    = "\n\
      \\tMemoEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecution'MemoEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecution'MemoEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ContinueAsNewWorkflowExecution'MemoEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_ContinueAsNewWorkflowExecution'MemoEntry'_unknownFields = y__})
  defMessage
    = ContinueAsNewWorkflowExecution'MemoEntry'_constructor
        {_ContinueAsNewWorkflowExecution'MemoEntry'key = Data.ProtoLens.fieldDefault,
         _ContinueAsNewWorkflowExecution'MemoEntry'value = Prelude.Nothing,
         _ContinueAsNewWorkflowExecution'MemoEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ContinueAsNewWorkflowExecution'MemoEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser ContinueAsNewWorkflowExecution'MemoEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MemoEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ContinueAsNewWorkflowExecution'MemoEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ContinueAsNewWorkflowExecution'MemoEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ContinueAsNewWorkflowExecution'MemoEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_ContinueAsNewWorkflowExecution'MemoEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.failure' @:: Lens' FailWorkflowExecution Proto.Temporal.Api.Failure.V1.Message.Failure@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'failure' @:: Lens' FailWorkflowExecution (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@ -}
data FailWorkflowExecution
  = FailWorkflowExecution'_constructor {_FailWorkflowExecution'failure :: !(Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure),
                                        _FailWorkflowExecution'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FailWorkflowExecution where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FailWorkflowExecution "failure" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FailWorkflowExecution'failure
           (\ x__ y__ -> x__ {_FailWorkflowExecution'failure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FailWorkflowExecution "maybe'failure" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FailWorkflowExecution'failure
           (\ x__ y__ -> x__ {_FailWorkflowExecution'failure = y__}))
        Prelude.id
instance Data.ProtoLens.Message FailWorkflowExecution where
  messageName _
    = Data.Text.pack "coresdk.workflow_commands.FailWorkflowExecution"
  packedMessageDescriptor _
    = "\n\
      \\NAKFailWorkflowExecution\DC2:\n\
      \\afailure\CAN\SOH \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        failure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failure")) ::
              Data.ProtoLens.FieldDescriptor FailWorkflowExecution
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, failure__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FailWorkflowExecution'_unknownFields
        (\ x__ y__ -> x__ {_FailWorkflowExecution'_unknownFields = y__})
  defMessage
    = FailWorkflowExecution'_constructor
        {_FailWorkflowExecution'failure = Prelude.Nothing,
         _FailWorkflowExecution'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FailWorkflowExecution
          -> Data.ProtoLens.Encoding.Bytes.Parser FailWorkflowExecution
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "failure"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"failure") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FailWorkflowExecution"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'failure") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData FailWorkflowExecution where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FailWorkflowExecution'_unknownFields x__)
             (Control.DeepSeq.deepseq (_FailWorkflowExecution'failure x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.upsertedMemo' @:: Lens' ModifyWorkflowProperties Proto.Temporal.Api.Common.V1.Message.Memo@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'upsertedMemo' @:: Lens' ModifyWorkflowProperties (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Memo)@ -}
data ModifyWorkflowProperties
  = ModifyWorkflowProperties'_constructor {_ModifyWorkflowProperties'upsertedMemo :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Memo),
                                           _ModifyWorkflowProperties'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ModifyWorkflowProperties where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ModifyWorkflowProperties "upsertedMemo" Proto.Temporal.Api.Common.V1.Message.Memo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModifyWorkflowProperties'upsertedMemo
           (\ x__ y__ -> x__ {_ModifyWorkflowProperties'upsertedMemo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ModifyWorkflowProperties "maybe'upsertedMemo" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Memo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModifyWorkflowProperties'upsertedMemo
           (\ x__ y__ -> x__ {_ModifyWorkflowProperties'upsertedMemo = y__}))
        Prelude.id
instance Data.ProtoLens.Message ModifyWorkflowProperties where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_commands.ModifyWorkflowProperties"
  packedMessageDescriptor _
    = "\n\
      \\CANModifyWorkflowProperties\DC2A\n\
      \\rupserted_memo\CAN\SOH \SOH(\v2\FS.temporal.api.common.v1.MemoR\fupsertedMemo"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        upsertedMemo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upserted_memo"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Memo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'upsertedMemo")) ::
              Data.ProtoLens.FieldDescriptor ModifyWorkflowProperties
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, upsertedMemo__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ModifyWorkflowProperties'_unknownFields
        (\ x__ y__ -> x__ {_ModifyWorkflowProperties'_unknownFields = y__})
  defMessage
    = ModifyWorkflowProperties'_constructor
        {_ModifyWorkflowProperties'upsertedMemo = Prelude.Nothing,
         _ModifyWorkflowProperties'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ModifyWorkflowProperties
          -> Data.ProtoLens.Encoding.Bytes.Parser ModifyWorkflowProperties
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "upserted_memo"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upsertedMemo") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ModifyWorkflowProperties"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'upsertedMemo") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ModifyWorkflowProperties where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ModifyWorkflowProperties'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ModifyWorkflowProperties'upsertedMemo x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.queryId' @:: Lens' QueryResult Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'variant' @:: Lens' QueryResult (Prelude.Maybe QueryResult'Variant)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'succeeded' @:: Lens' QueryResult (Prelude.Maybe QuerySuccess)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.succeeded' @:: Lens' QueryResult QuerySuccess@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'failed' @:: Lens' QueryResult (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.failed' @:: Lens' QueryResult Proto.Temporal.Api.Failure.V1.Message.Failure@ -}
data QueryResult
  = QueryResult'_constructor {_QueryResult'queryId :: !Data.Text.Text,
                              _QueryResult'variant :: !(Prelude.Maybe QueryResult'Variant),
                              _QueryResult'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryResult where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data QueryResult'Variant
  = QueryResult'Succeeded !QuerySuccess |
    QueryResult'Failed !Proto.Temporal.Api.Failure.V1.Message.Failure
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField QueryResult "queryId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryResult'queryId
           (\ x__ y__ -> x__ {_QueryResult'queryId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryResult "maybe'variant" (Prelude.Maybe QueryResult'Variant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryResult'variant
           (\ x__ y__ -> x__ {_QueryResult'variant = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryResult "maybe'succeeded" (Prelude.Maybe QuerySuccess) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryResult'variant
           (\ x__ y__ -> x__ {_QueryResult'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (QueryResult'Succeeded x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap QueryResult'Succeeded y__))
instance Data.ProtoLens.Field.HasField QueryResult "succeeded" QuerySuccess where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryResult'variant
           (\ x__ y__ -> x__ {_QueryResult'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (QueryResult'Succeeded x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap QueryResult'Succeeded y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField QueryResult "maybe'failed" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryResult'variant
           (\ x__ y__ -> x__ {_QueryResult'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (QueryResult'Failed x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap QueryResult'Failed y__))
instance Data.ProtoLens.Field.HasField QueryResult "failed" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryResult'variant
           (\ x__ y__ -> x__ {_QueryResult'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (QueryResult'Failed x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap QueryResult'Failed y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message QueryResult where
  messageName _
    = Data.Text.pack "coresdk.workflow_commands.QueryResult"
  packedMessageDescriptor _
    = "\n\
      \\vQueryResult\DC2\EM\n\
      \\bquery_id\CAN\SOH \SOH(\tR\aqueryId\DC2G\n\
      \\tsucceeded\CAN\STX \SOH(\v2'.coresdk.workflow_commands.QuerySuccessH\NULR\tsucceeded\DC2:\n\
      \\ACKfailed\CAN\ETX \SOH(\v2 .temporal.api.failure.v1.FailureH\NULR\ACKfailedB\t\n\
      \\avariant"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        queryId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "query_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"queryId")) ::
              Data.ProtoLens.FieldDescriptor QueryResult
        succeeded__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "succeeded"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor QuerySuccess)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'succeeded")) ::
              Data.ProtoLens.FieldDescriptor QueryResult
        failed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failed"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failed")) ::
              Data.ProtoLens.FieldDescriptor QueryResult
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, queryId__field_descriptor),
           (Data.ProtoLens.Tag 2, succeeded__field_descriptor),
           (Data.ProtoLens.Tag 3, failed__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryResult'_unknownFields
        (\ x__ y__ -> x__ {_QueryResult'_unknownFields = y__})
  defMessage
    = QueryResult'_constructor
        {_QueryResult'queryId = Data.ProtoLens.fieldDefault,
         _QueryResult'variant = Prelude.Nothing,
         _QueryResult'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryResult -> Data.ProtoLens.Encoding.Bytes.Parser QueryResult
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "query_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"queryId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "succeeded"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"succeeded") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "failed"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"failed") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryResult"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"queryId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'variant") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (QueryResult'Succeeded v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage v)
                   (Prelude.Just (QueryResult'Failed v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData QueryResult where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryResult'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryResult'queryId x__)
                (Control.DeepSeq.deepseq (_QueryResult'variant x__) ()))
instance Control.DeepSeq.NFData QueryResult'Variant where
  rnf (QueryResult'Succeeded x__) = Control.DeepSeq.rnf x__
  rnf (QueryResult'Failed x__) = Control.DeepSeq.rnf x__
_QueryResult'Succeeded ::
  Data.ProtoLens.Prism.Prism' QueryResult'Variant QuerySuccess
_QueryResult'Succeeded
  = Data.ProtoLens.Prism.prism'
      QueryResult'Succeeded
      (\ p__
         -> case p__ of
              (QueryResult'Succeeded p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_QueryResult'Failed ::
  Data.ProtoLens.Prism.Prism' QueryResult'Variant Proto.Temporal.Api.Failure.V1.Message.Failure
_QueryResult'Failed
  = Data.ProtoLens.Prism.prism'
      QueryResult'Failed
      (\ p__
         -> case p__ of
              (QueryResult'Failed p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.response' @:: Lens' QuerySuccess Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'response' @:: Lens' QuerySuccess (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data QuerySuccess
  = QuerySuccess'_constructor {_QuerySuccess'response :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                               _QuerySuccess'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QuerySuccess where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QuerySuccess "response" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySuccess'response
           (\ x__ y__ -> x__ {_QuerySuccess'response = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuerySuccess "maybe'response" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySuccess'response
           (\ x__ y__ -> x__ {_QuerySuccess'response = y__}))
        Prelude.id
instance Data.ProtoLens.Message QuerySuccess where
  messageName _
    = Data.Text.pack "coresdk.workflow_commands.QuerySuccess"
  packedMessageDescriptor _
    = "\n\
      \\fQuerySuccess\DC2;\n\
      \\bresponse\CAN\SOH \SOH(\v2\US.temporal.api.common.v1.PayloadR\bresponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        response__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'response")) ::
              Data.ProtoLens.FieldDescriptor QuerySuccess
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, response__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QuerySuccess'_unknownFields
        (\ x__ y__ -> x__ {_QuerySuccess'_unknownFields = y__})
  defMessage
    = QuerySuccess'_constructor
        {_QuerySuccess'response = Prelude.Nothing,
         _QuerySuccess'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QuerySuccess -> Data.ProtoLens.Encoding.Bytes.Parser QuerySuccess
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "response"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"response") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QuerySuccess"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'response") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QuerySuccess where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QuerySuccess'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QuerySuccess'response x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.seq' @:: Lens' RequestCancelActivity Data.Word.Word32@ -}
data RequestCancelActivity
  = RequestCancelActivity'_constructor {_RequestCancelActivity'seq :: !Data.Word.Word32,
                                        _RequestCancelActivity'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestCancelActivity where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestCancelActivity "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestCancelActivity'seq
           (\ x__ y__ -> x__ {_RequestCancelActivity'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestCancelActivity where
  messageName _
    = Data.Text.pack "coresdk.workflow_commands.RequestCancelActivity"
  packedMessageDescriptor _
    = "\n\
      \\NAKRequestCancelActivity\DC2\DLE\n\
      \\ETXseq\CAN\SOH \SOH(\rR\ETXseq"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"seq")) ::
              Data.ProtoLens.FieldDescriptor RequestCancelActivity
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, seq__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestCancelActivity'_unknownFields
        (\ x__ y__ -> x__ {_RequestCancelActivity'_unknownFields = y__})
  defMessage
    = RequestCancelActivity'_constructor
        {_RequestCancelActivity'seq = Data.ProtoLens.fieldDefault,
         _RequestCancelActivity'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestCancelActivity
          -> Data.ProtoLens.Encoding.Bytes.Parser RequestCancelActivity
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RequestCancelActivity"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"seq") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RequestCancelActivity where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestCancelActivity'_unknownFields x__)
             (Control.DeepSeq.deepseq (_RequestCancelActivity'seq x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.seq' @:: Lens' RequestCancelExternalWorkflowExecution Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.workflowExecution' @:: Lens' RequestCancelExternalWorkflowExecution Proto.Temporal.Sdk.Core.Common.Common.NamespacedWorkflowExecution@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'workflowExecution' @:: Lens' RequestCancelExternalWorkflowExecution (Prelude.Maybe Proto.Temporal.Sdk.Core.Common.Common.NamespacedWorkflowExecution)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.reason' @:: Lens' RequestCancelExternalWorkflowExecution Data.Text.Text@ -}
data RequestCancelExternalWorkflowExecution
  = RequestCancelExternalWorkflowExecution'_constructor {_RequestCancelExternalWorkflowExecution'seq :: !Data.Word.Word32,
                                                         _RequestCancelExternalWorkflowExecution'workflowExecution :: !(Prelude.Maybe Proto.Temporal.Sdk.Core.Common.Common.NamespacedWorkflowExecution),
                                                         _RequestCancelExternalWorkflowExecution'reason :: !Data.Text.Text,
                                                         _RequestCancelExternalWorkflowExecution'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestCancelExternalWorkflowExecution where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestCancelExternalWorkflowExecution "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestCancelExternalWorkflowExecution'seq
           (\ x__ y__
              -> x__ {_RequestCancelExternalWorkflowExecution'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestCancelExternalWorkflowExecution "workflowExecution" Proto.Temporal.Sdk.Core.Common.Common.NamespacedWorkflowExecution where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestCancelExternalWorkflowExecution'workflowExecution
           (\ x__ y__
              -> x__
                   {_RequestCancelExternalWorkflowExecution'workflowExecution = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RequestCancelExternalWorkflowExecution "maybe'workflowExecution" (Prelude.Maybe Proto.Temporal.Sdk.Core.Common.Common.NamespacedWorkflowExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestCancelExternalWorkflowExecution'workflowExecution
           (\ x__ y__
              -> x__
                   {_RequestCancelExternalWorkflowExecution'workflowExecution = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestCancelExternalWorkflowExecution "reason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestCancelExternalWorkflowExecution'reason
           (\ x__ y__
              -> x__ {_RequestCancelExternalWorkflowExecution'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestCancelExternalWorkflowExecution where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_commands.RequestCancelExternalWorkflowExecution"
  packedMessageDescriptor _
    = "\n\
      \&RequestCancelExternalWorkflowExecution\DC2\DLE\n\
      \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2Z\n\
      \\DC2workflow_execution\CAN\STX \SOH(\v2+.coresdk.common.NamespacedWorkflowExecutionR\DC1workflowExecution\DC2\SYN\n\
      \\ACKreason\CAN\ETX \SOH(\tR\ACKreason"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"seq")) ::
              Data.ProtoLens.FieldDescriptor RequestCancelExternalWorkflowExecution
        workflowExecution__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_execution"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Sdk.Core.Common.Common.NamespacedWorkflowExecution)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowExecution")) ::
              Data.ProtoLens.FieldDescriptor RequestCancelExternalWorkflowExecution
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"reason")) ::
              Data.ProtoLens.FieldDescriptor RequestCancelExternalWorkflowExecution
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, seq__field_descriptor),
           (Data.ProtoLens.Tag 2, workflowExecution__field_descriptor),
           (Data.ProtoLens.Tag 3, reason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestCancelExternalWorkflowExecution'_unknownFields
        (\ x__ y__
           -> x__
                {_RequestCancelExternalWorkflowExecution'_unknownFields = y__})
  defMessage
    = RequestCancelExternalWorkflowExecution'_constructor
        {_RequestCancelExternalWorkflowExecution'seq = Data.ProtoLens.fieldDefault,
         _RequestCancelExternalWorkflowExecution'workflowExecution = Prelude.Nothing,
         _RequestCancelExternalWorkflowExecution'reason = Data.ProtoLens.fieldDefault,
         _RequestCancelExternalWorkflowExecution'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestCancelExternalWorkflowExecution
          -> Data.ProtoLens.Encoding.Bytes.Parser RequestCancelExternalWorkflowExecution
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_execution"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowExecution") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "reason"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reason") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "RequestCancelExternalWorkflowExecution"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"seq") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'workflowExecution") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"reason") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData RequestCancelExternalWorkflowExecution where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestCancelExternalWorkflowExecution'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RequestCancelExternalWorkflowExecution'seq x__)
                (Control.DeepSeq.deepseq
                   (_RequestCancelExternalWorkflowExecution'workflowExecution x__)
                   (Control.DeepSeq.deepseq
                      (_RequestCancelExternalWorkflowExecution'reason x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.seq' @:: Lens' RequestCancelLocalActivity Data.Word.Word32@ -}
data RequestCancelLocalActivity
  = RequestCancelLocalActivity'_constructor {_RequestCancelLocalActivity'seq :: !Data.Word.Word32,
                                             _RequestCancelLocalActivity'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestCancelLocalActivity where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestCancelLocalActivity "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestCancelLocalActivity'seq
           (\ x__ y__ -> x__ {_RequestCancelLocalActivity'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestCancelLocalActivity where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_commands.RequestCancelLocalActivity"
  packedMessageDescriptor _
    = "\n\
      \\SUBRequestCancelLocalActivity\DC2\DLE\n\
      \\ETXseq\CAN\SOH \SOH(\rR\ETXseq"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"seq")) ::
              Data.ProtoLens.FieldDescriptor RequestCancelLocalActivity
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, seq__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestCancelLocalActivity'_unknownFields
        (\ x__ y__
           -> x__ {_RequestCancelLocalActivity'_unknownFields = y__})
  defMessage
    = RequestCancelLocalActivity'_constructor
        {_RequestCancelLocalActivity'seq = Data.ProtoLens.fieldDefault,
         _RequestCancelLocalActivity'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestCancelLocalActivity
          -> Data.ProtoLens.Encoding.Bytes.Parser RequestCancelLocalActivity
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RequestCancelLocalActivity"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"seq") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RequestCancelLocalActivity where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestCancelLocalActivity'_unknownFields x__)
             (Control.DeepSeq.deepseq (_RequestCancelLocalActivity'seq x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.seq' @:: Lens' RequestCancelNexusOperation Data.Word.Word32@ -}
data RequestCancelNexusOperation
  = RequestCancelNexusOperation'_constructor {_RequestCancelNexusOperation'seq :: !Data.Word.Word32,
                                              _RequestCancelNexusOperation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestCancelNexusOperation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestCancelNexusOperation "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestCancelNexusOperation'seq
           (\ x__ y__ -> x__ {_RequestCancelNexusOperation'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestCancelNexusOperation where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_commands.RequestCancelNexusOperation"
  packedMessageDescriptor _
    = "\n\
      \\ESCRequestCancelNexusOperation\DC2\DLE\n\
      \\ETXseq\CAN\SOH \SOH(\rR\ETXseq"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"seq")) ::
              Data.ProtoLens.FieldDescriptor RequestCancelNexusOperation
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, seq__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestCancelNexusOperation'_unknownFields
        (\ x__ y__
           -> x__ {_RequestCancelNexusOperation'_unknownFields = y__})
  defMessage
    = RequestCancelNexusOperation'_constructor
        {_RequestCancelNexusOperation'seq = Data.ProtoLens.fieldDefault,
         _RequestCancelNexusOperation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestCancelNexusOperation
          -> Data.ProtoLens.Encoding.Bytes.Parser RequestCancelNexusOperation
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RequestCancelNexusOperation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"seq") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RequestCancelNexusOperation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestCancelNexusOperation'_unknownFields x__)
             (Control.DeepSeq.deepseq (_RequestCancelNexusOperation'seq x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.seq' @:: Lens' ScheduleActivity Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.activityId' @:: Lens' ScheduleActivity Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.activityType' @:: Lens' ScheduleActivity Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.taskQueue' @:: Lens' ScheduleActivity Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.headers' @:: Lens' ScheduleActivity (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.arguments' @:: Lens' ScheduleActivity [Proto.Temporal.Api.Common.V1.Message.Payload]@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.vec'arguments' @:: Lens' ScheduleActivity (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.scheduleToCloseTimeout' @:: Lens' ScheduleActivity Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'scheduleToCloseTimeout' @:: Lens' ScheduleActivity (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.scheduleToStartTimeout' @:: Lens' ScheduleActivity Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'scheduleToStartTimeout' @:: Lens' ScheduleActivity (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.startToCloseTimeout' @:: Lens' ScheduleActivity Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'startToCloseTimeout' @:: Lens' ScheduleActivity (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.heartbeatTimeout' @:: Lens' ScheduleActivity Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'heartbeatTimeout' @:: Lens' ScheduleActivity (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.retryPolicy' @:: Lens' ScheduleActivity Proto.Temporal.Api.Common.V1.Message.RetryPolicy@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'retryPolicy' @:: Lens' ScheduleActivity (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.cancellationType' @:: Lens' ScheduleActivity ActivityCancellationType@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.doNotEagerlyExecute' @:: Lens' ScheduleActivity Prelude.Bool@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.versioningIntent' @:: Lens' ScheduleActivity Proto.Temporal.Sdk.Core.Common.Common.VersioningIntent@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.priority' @:: Lens' ScheduleActivity Proto.Temporal.Api.Common.V1.Message.Priority@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'priority' @:: Lens' ScheduleActivity (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority)@ -}
data ScheduleActivity
  = ScheduleActivity'_constructor {_ScheduleActivity'seq :: !Data.Word.Word32,
                                   _ScheduleActivity'activityId :: !Data.Text.Text,
                                   _ScheduleActivity'activityType :: !Data.Text.Text,
                                   _ScheduleActivity'taskQueue :: !Data.Text.Text,
                                   _ScheduleActivity'headers :: !(Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload),
                                   _ScheduleActivity'arguments :: !(Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload),
                                   _ScheduleActivity'scheduleToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                   _ScheduleActivity'scheduleToStartTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                   _ScheduleActivity'startToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                   _ScheduleActivity'heartbeatTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                   _ScheduleActivity'retryPolicy :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy),
                                   _ScheduleActivity'cancellationType :: !ActivityCancellationType,
                                   _ScheduleActivity'doNotEagerlyExecute :: !Prelude.Bool,
                                   _ScheduleActivity'versioningIntent :: !Proto.Temporal.Sdk.Core.Common.Common.VersioningIntent,
                                   _ScheduleActivity'priority :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority),
                                   _ScheduleActivity'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScheduleActivity where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScheduleActivity "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'seq
           (\ x__ y__ -> x__ {_ScheduleActivity'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivity "activityId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'activityId
           (\ x__ y__ -> x__ {_ScheduleActivity'activityId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivity "activityType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'activityType
           (\ x__ y__ -> x__ {_ScheduleActivity'activityType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivity "taskQueue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'taskQueue
           (\ x__ y__ -> x__ {_ScheduleActivity'taskQueue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivity "headers" (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'headers
           (\ x__ y__ -> x__ {_ScheduleActivity'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivity "arguments" [Proto.Temporal.Api.Common.V1.Message.Payload] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'arguments
           (\ x__ y__ -> x__ {_ScheduleActivity'arguments = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScheduleActivity "vec'arguments" (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'arguments
           (\ x__ y__ -> x__ {_ScheduleActivity'arguments = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivity "scheduleToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'scheduleToCloseTimeout
           (\ x__ y__
              -> x__ {_ScheduleActivity'scheduleToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleActivity "maybe'scheduleToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'scheduleToCloseTimeout
           (\ x__ y__
              -> x__ {_ScheduleActivity'scheduleToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivity "scheduleToStartTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'scheduleToStartTimeout
           (\ x__ y__
              -> x__ {_ScheduleActivity'scheduleToStartTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleActivity "maybe'scheduleToStartTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'scheduleToStartTimeout
           (\ x__ y__
              -> x__ {_ScheduleActivity'scheduleToStartTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivity "startToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'startToCloseTimeout
           (\ x__ y__ -> x__ {_ScheduleActivity'startToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleActivity "maybe'startToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'startToCloseTimeout
           (\ x__ y__ -> x__ {_ScheduleActivity'startToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivity "heartbeatTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'heartbeatTimeout
           (\ x__ y__ -> x__ {_ScheduleActivity'heartbeatTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleActivity "maybe'heartbeatTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'heartbeatTimeout
           (\ x__ y__ -> x__ {_ScheduleActivity'heartbeatTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivity "retryPolicy" Proto.Temporal.Api.Common.V1.Message.RetryPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'retryPolicy
           (\ x__ y__ -> x__ {_ScheduleActivity'retryPolicy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleActivity "maybe'retryPolicy" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'retryPolicy
           (\ x__ y__ -> x__ {_ScheduleActivity'retryPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivity "cancellationType" ActivityCancellationType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'cancellationType
           (\ x__ y__ -> x__ {_ScheduleActivity'cancellationType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivity "doNotEagerlyExecute" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'doNotEagerlyExecute
           (\ x__ y__ -> x__ {_ScheduleActivity'doNotEagerlyExecute = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivity "versioningIntent" Proto.Temporal.Sdk.Core.Common.Common.VersioningIntent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'versioningIntent
           (\ x__ y__ -> x__ {_ScheduleActivity'versioningIntent = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivity "priority" Proto.Temporal.Api.Common.V1.Message.Priority where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'priority
           (\ x__ y__ -> x__ {_ScheduleActivity'priority = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleActivity "maybe'priority" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'priority
           (\ x__ y__ -> x__ {_ScheduleActivity'priority = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScheduleActivity where
  messageName _
    = Data.Text.pack "coresdk.workflow_commands.ScheduleActivity"
  packedMessageDescriptor _
    = "\n\
      \\DLEScheduleActivity\DC2\DLE\n\
      \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2\US\n\
      \\vactivity_id\CAN\STX \SOH(\tR\n\
      \activityId\DC2#\n\
      \\ractivity_type\CAN\ETX \SOH(\tR\factivityType\DC2\GS\n\
      \\n\
      \task_queue\CAN\ENQ \SOH(\tR\ttaskQueue\DC2R\n\
      \\aheaders\CAN\ACK \ETX(\v28.coresdk.workflow_commands.ScheduleActivity.HeadersEntryR\aheaders\DC2=\n\
      \\targuments\CAN\a \ETX(\v2\US.temporal.api.common.v1.PayloadR\targuments\DC2T\n\
      \\EMschedule_to_close_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2T\n\
      \\EMschedule_to_start_timeout\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout\DC2N\n\
      \\SYNstart_to_close_timeout\CAN\n\
      \ \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\DC2F\n\
      \\DC1heartbeat_timeout\CAN\v \SOH(\v2\EM.google.protobuf.DurationR\DLEheartbeatTimeout\DC2F\n\
      \\fretry_policy\CAN\f \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2`\n\
      \\DC1cancellation_type\CAN\r \SOH(\SO23.coresdk.workflow_commands.ActivityCancellationTypeR\DLEcancellationType\DC23\n\
      \\SYNdo_not_eagerly_execute\CAN\SO \SOH(\bR\DC3doNotEagerlyExecute\DC2M\n\
      \\DC1versioning_intent\CAN\SI \SOH(\SO2 .coresdk.common.VersioningIntentR\DLEversioningIntent\DC2<\n\
      \\bpriority\CAN\DLE \SOH(\v2 .temporal.api.common.v1.PriorityR\bpriority\SUB[\n\
      \\fHeadersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"seq")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivity
        activityId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"activityId")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivity
        activityType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"activityType")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivity
        taskQueue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"taskQueue")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivity
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScheduleActivity'HeadersEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"headers")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivity
        arguments__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "arguments"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"arguments")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivity
        scheduleToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivity
        scheduleToStartTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_start_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToStartTimeout")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivity
        startToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivity
        heartbeatTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heartbeat_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heartbeatTimeout")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivity
        retryPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.RetryPolicy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'retryPolicy")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivity
        cancellationType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancellation_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ActivityCancellationType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"cancellationType")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivity
        doNotEagerlyExecute__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "do_not_eagerly_execute"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"doNotEagerlyExecute")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivity
        versioningIntent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "versioning_intent"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Sdk.Core.Common.Common.VersioningIntent)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"versioningIntent")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivity
        priority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "priority"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Priority)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'priority")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivity
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, seq__field_descriptor),
           (Data.ProtoLens.Tag 2, activityId__field_descriptor),
           (Data.ProtoLens.Tag 3, activityType__field_descriptor),
           (Data.ProtoLens.Tag 5, taskQueue__field_descriptor),
           (Data.ProtoLens.Tag 6, headers__field_descriptor),
           (Data.ProtoLens.Tag 7, arguments__field_descriptor),
           (Data.ProtoLens.Tag 8, scheduleToCloseTimeout__field_descriptor),
           (Data.ProtoLens.Tag 9, scheduleToStartTimeout__field_descriptor),
           (Data.ProtoLens.Tag 10, startToCloseTimeout__field_descriptor),
           (Data.ProtoLens.Tag 11, heartbeatTimeout__field_descriptor),
           (Data.ProtoLens.Tag 12, retryPolicy__field_descriptor),
           (Data.ProtoLens.Tag 13, cancellationType__field_descriptor),
           (Data.ProtoLens.Tag 14, doNotEagerlyExecute__field_descriptor),
           (Data.ProtoLens.Tag 15, versioningIntent__field_descriptor),
           (Data.ProtoLens.Tag 16, priority__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScheduleActivity'_unknownFields
        (\ x__ y__ -> x__ {_ScheduleActivity'_unknownFields = y__})
  defMessage
    = ScheduleActivity'_constructor
        {_ScheduleActivity'seq = Data.ProtoLens.fieldDefault,
         _ScheduleActivity'activityId = Data.ProtoLens.fieldDefault,
         _ScheduleActivity'activityType = Data.ProtoLens.fieldDefault,
         _ScheduleActivity'taskQueue = Data.ProtoLens.fieldDefault,
         _ScheduleActivity'headers = Data.Map.empty,
         _ScheduleActivity'arguments = Data.Vector.Generic.empty,
         _ScheduleActivity'scheduleToCloseTimeout = Prelude.Nothing,
         _ScheduleActivity'scheduleToStartTimeout = Prelude.Nothing,
         _ScheduleActivity'startToCloseTimeout = Prelude.Nothing,
         _ScheduleActivity'heartbeatTimeout = Prelude.Nothing,
         _ScheduleActivity'retryPolicy = Prelude.Nothing,
         _ScheduleActivity'cancellationType = Data.ProtoLens.fieldDefault,
         _ScheduleActivity'doNotEagerlyExecute = Data.ProtoLens.fieldDefault,
         _ScheduleActivity'versioningIntent = Data.ProtoLens.fieldDefault,
         _ScheduleActivity'priority = Prelude.Nothing,
         _ScheduleActivity'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScheduleActivity
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Common.V1.Message.Payload
             -> Data.ProtoLens.Encoding.Bytes.Parser ScheduleActivity
        loop x mutable'arguments
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'arguments <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'arguments)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'arguments") frozen'arguments x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seq"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
                                  mutable'arguments
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "activity_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"activityId") y x)
                                  mutable'arguments
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "activity_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"activityType") y x)
                                  mutable'arguments
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "task_queue"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskQueue") y x)
                                  mutable'arguments
                        50
                          -> do !(entry :: ScheduleActivity'HeadersEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                               (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                                                     (Prelude.fromIntegral
                                                                                        len)
                                                                                     Data.ProtoLens.parseMessage)
                                                                               "headers"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"headers")
                                        (\ !t -> Data.Map.insert key value t) x)
                                     mutable'arguments)
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "arguments"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'arguments y)
                                loop x v
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToCloseTimeout") y x)
                                  mutable'arguments
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_start_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToStartTimeout") y x)
                                  mutable'arguments
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_to_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startToCloseTimeout") y x)
                                  mutable'arguments
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "heartbeat_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"heartbeatTimeout") y x)
                                  mutable'arguments
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "retry_policy"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"retryPolicy") y x)
                                  mutable'arguments
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "cancellation_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cancellationType") y x)
                                  mutable'arguments
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "do_not_eagerly_execute"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"doNotEagerlyExecute") y x)
                                  mutable'arguments
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "versioning_intent"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"versioningIntent") y x)
                                  mutable'arguments
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "priority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"priority") y x)
                                  mutable'arguments
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'arguments
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'arguments <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'arguments)
          "ScheduleActivity"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"seq") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"activityId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"activityType") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"taskQueue") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (Data.Monoid.mconcat
                            (Prelude.map
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.ProtoLens.encodeMessage
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"value")
                                                (Prelude.snd _v)
                                                (Data.ProtoLens.defMessage ::
                                                   ScheduleActivity'HeadersEntry)))))
                               (Data.Map.toList
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"headers") _x))))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.ProtoLens.encodeMessage _v))
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'arguments") _x))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'scheduleToCloseTimeout")
                                      _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field
                                            @"maybe'scheduleToStartTimeout")
                                         _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field
                                               @"maybe'startToCloseTimeout")
                                            _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field
                                                  @"maybe'heartbeatTimeout")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field @"maybe'retryPolicy")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                                     ((Prelude..)
                                                        (\ bs
                                                           -> (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                        Data.ProtoLens.encodeMessage _v))
                                           ((Data.Monoid.<>)
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"cancellationType")
                                                       _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 104)
                                                       ((Prelude..)
                                                          ((Prelude..)
                                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             Prelude.fromIntegral)
                                                          Prelude.fromEnum _v))
                                              ((Data.Monoid.<>)
                                                 (let
                                                    _v
                                                      = Lens.Family2.view
                                                          (Data.ProtoLens.Field.field
                                                             @"doNotEagerlyExecute")
                                                          _x
                                                  in
                                                    if (Prelude.==)
                                                         _v Data.ProtoLens.fieldDefault then
                                                        Data.Monoid.mempty
                                                    else
                                                        (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             112)
                                                          ((Prelude..)
                                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (\ b -> if b then 1 else 0) _v))
                                                 ((Data.Monoid.<>)
                                                    (let
                                                       _v
                                                         = Lens.Family2.view
                                                             (Data.ProtoLens.Field.field
                                                                @"versioningIntent")
                                                             _x
                                                     in
                                                       if (Prelude.==)
                                                            _v Data.ProtoLens.fieldDefault then
                                                           Data.Monoid.mempty
                                                       else
                                                           (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                120)
                                                             ((Prelude..)
                                                                ((Prelude..)
                                                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   Prelude.fromIntegral)
                                                                Prelude.fromEnum _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'priority")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    130)
                                                                 ((Prelude..)
                                                                    (\ bs
                                                                       -> (Data.Monoid.<>)
                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                               (Prelude.fromIntegral
                                                                                  (Data.ByteString.length
                                                                                     bs)))
                                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                               bs))
                                                                    Data.ProtoLens.encodeMessage
                                                                    _v))
                                                       (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                          (Lens.Family2.view
                                                             Data.ProtoLens.unknownFields
                                                             _x))))))))))))))))
instance Control.DeepSeq.NFData ScheduleActivity where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScheduleActivity'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScheduleActivity'seq x__)
                (Control.DeepSeq.deepseq
                   (_ScheduleActivity'activityId x__)
                   (Control.DeepSeq.deepseq
                      (_ScheduleActivity'activityType x__)
                      (Control.DeepSeq.deepseq
                         (_ScheduleActivity'taskQueue x__)
                         (Control.DeepSeq.deepseq
                            (_ScheduleActivity'headers x__)
                            (Control.DeepSeq.deepseq
                               (_ScheduleActivity'arguments x__)
                               (Control.DeepSeq.deepseq
                                  (_ScheduleActivity'scheduleToCloseTimeout x__)
                                  (Control.DeepSeq.deepseq
                                     (_ScheduleActivity'scheduleToStartTimeout x__)
                                     (Control.DeepSeq.deepseq
                                        (_ScheduleActivity'startToCloseTimeout x__)
                                        (Control.DeepSeq.deepseq
                                           (_ScheduleActivity'heartbeatTimeout x__)
                                           (Control.DeepSeq.deepseq
                                              (_ScheduleActivity'retryPolicy x__)
                                              (Control.DeepSeq.deepseq
                                                 (_ScheduleActivity'cancellationType x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_ScheduleActivity'doNotEagerlyExecute x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_ScheduleActivity'versioningIntent x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_ScheduleActivity'priority x__)
                                                          ())))))))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.key' @:: Lens' ScheduleActivity'HeadersEntry Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.value' @:: Lens' ScheduleActivity'HeadersEntry Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'value' @:: Lens' ScheduleActivity'HeadersEntry (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data ScheduleActivity'HeadersEntry
  = ScheduleActivity'HeadersEntry'_constructor {_ScheduleActivity'HeadersEntry'key :: !Data.Text.Text,
                                                _ScheduleActivity'HeadersEntry'value :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                                _ScheduleActivity'HeadersEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScheduleActivity'HeadersEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScheduleActivity'HeadersEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'HeadersEntry'key
           (\ x__ y__ -> x__ {_ScheduleActivity'HeadersEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivity'HeadersEntry "value" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'HeadersEntry'value
           (\ x__ y__ -> x__ {_ScheduleActivity'HeadersEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleActivity'HeadersEntry "maybe'value" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivity'HeadersEntry'value
           (\ x__ y__ -> x__ {_ScheduleActivity'HeadersEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScheduleActivity'HeadersEntry where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_commands.ScheduleActivity.HeadersEntry"
  packedMessageDescriptor _
    = "\n\
      \\fHeadersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivity'HeadersEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivity'HeadersEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScheduleActivity'HeadersEntry'_unknownFields
        (\ x__ y__
           -> x__ {_ScheduleActivity'HeadersEntry'_unknownFields = y__})
  defMessage
    = ScheduleActivity'HeadersEntry'_constructor
        {_ScheduleActivity'HeadersEntry'key = Data.ProtoLens.fieldDefault,
         _ScheduleActivity'HeadersEntry'value = Prelude.Nothing,
         _ScheduleActivity'HeadersEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScheduleActivity'HeadersEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser ScheduleActivity'HeadersEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HeadersEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ScheduleActivity'HeadersEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScheduleActivity'HeadersEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScheduleActivity'HeadersEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_ScheduleActivity'HeadersEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.seq' @:: Lens' ScheduleLocalActivity Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.activityId' @:: Lens' ScheduleLocalActivity Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.activityType' @:: Lens' ScheduleLocalActivity Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.attempt' @:: Lens' ScheduleLocalActivity Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.originalScheduleTime' @:: Lens' ScheduleLocalActivity Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'originalScheduleTime' @:: Lens' ScheduleLocalActivity (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.headers' @:: Lens' ScheduleLocalActivity (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.arguments' @:: Lens' ScheduleLocalActivity [Proto.Temporal.Api.Common.V1.Message.Payload]@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.vec'arguments' @:: Lens' ScheduleLocalActivity (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.scheduleToCloseTimeout' @:: Lens' ScheduleLocalActivity Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'scheduleToCloseTimeout' @:: Lens' ScheduleLocalActivity (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.scheduleToStartTimeout' @:: Lens' ScheduleLocalActivity Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'scheduleToStartTimeout' @:: Lens' ScheduleLocalActivity (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.startToCloseTimeout' @:: Lens' ScheduleLocalActivity Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'startToCloseTimeout' @:: Lens' ScheduleLocalActivity (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.retryPolicy' @:: Lens' ScheduleLocalActivity Proto.Temporal.Api.Common.V1.Message.RetryPolicy@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'retryPolicy' @:: Lens' ScheduleLocalActivity (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.localRetryThreshold' @:: Lens' ScheduleLocalActivity Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'localRetryThreshold' @:: Lens' ScheduleLocalActivity (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.cancellationType' @:: Lens' ScheduleLocalActivity ActivityCancellationType@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.includeArgumentsInMarker' @:: Lens' ScheduleLocalActivity Prelude.Bool@ -}
data ScheduleLocalActivity
  = ScheduleLocalActivity'_constructor {_ScheduleLocalActivity'seq :: !Data.Word.Word32,
                                        _ScheduleLocalActivity'activityId :: !Data.Text.Text,
                                        _ScheduleLocalActivity'activityType :: !Data.Text.Text,
                                        _ScheduleLocalActivity'attempt :: !Data.Word.Word32,
                                        _ScheduleLocalActivity'originalScheduleTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                        _ScheduleLocalActivity'headers :: !(Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload),
                                        _ScheduleLocalActivity'arguments :: !(Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload),
                                        _ScheduleLocalActivity'scheduleToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _ScheduleLocalActivity'scheduleToStartTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _ScheduleLocalActivity'startToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _ScheduleLocalActivity'retryPolicy :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy),
                                        _ScheduleLocalActivity'localRetryThreshold :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _ScheduleLocalActivity'cancellationType :: !ActivityCancellationType,
                                        _ScheduleLocalActivity'includeArgumentsInMarker :: !Prelude.Bool,
                                        _ScheduleLocalActivity'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScheduleLocalActivity where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'seq
           (\ x__ y__ -> x__ {_ScheduleLocalActivity'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity "activityId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'activityId
           (\ x__ y__ -> x__ {_ScheduleLocalActivity'activityId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity "activityType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'activityType
           (\ x__ y__ -> x__ {_ScheduleLocalActivity'activityType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity "attempt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'attempt
           (\ x__ y__ -> x__ {_ScheduleLocalActivity'attempt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity "originalScheduleTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'originalScheduleTime
           (\ x__ y__
              -> x__ {_ScheduleLocalActivity'originalScheduleTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity "maybe'originalScheduleTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'originalScheduleTime
           (\ x__ y__
              -> x__ {_ScheduleLocalActivity'originalScheduleTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity "headers" (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'headers
           (\ x__ y__ -> x__ {_ScheduleLocalActivity'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity "arguments" [Proto.Temporal.Api.Common.V1.Message.Payload] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'arguments
           (\ x__ y__ -> x__ {_ScheduleLocalActivity'arguments = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity "vec'arguments" (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'arguments
           (\ x__ y__ -> x__ {_ScheduleLocalActivity'arguments = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity "scheduleToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'scheduleToCloseTimeout
           (\ x__ y__
              -> x__ {_ScheduleLocalActivity'scheduleToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity "maybe'scheduleToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'scheduleToCloseTimeout
           (\ x__ y__
              -> x__ {_ScheduleLocalActivity'scheduleToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity "scheduleToStartTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'scheduleToStartTimeout
           (\ x__ y__
              -> x__ {_ScheduleLocalActivity'scheduleToStartTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity "maybe'scheduleToStartTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'scheduleToStartTimeout
           (\ x__ y__
              -> x__ {_ScheduleLocalActivity'scheduleToStartTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity "startToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'startToCloseTimeout
           (\ x__ y__
              -> x__ {_ScheduleLocalActivity'startToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity "maybe'startToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'startToCloseTimeout
           (\ x__ y__
              -> x__ {_ScheduleLocalActivity'startToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity "retryPolicy" Proto.Temporal.Api.Common.V1.Message.RetryPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'retryPolicy
           (\ x__ y__ -> x__ {_ScheduleLocalActivity'retryPolicy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity "maybe'retryPolicy" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'retryPolicy
           (\ x__ y__ -> x__ {_ScheduleLocalActivity'retryPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity "localRetryThreshold" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'localRetryThreshold
           (\ x__ y__
              -> x__ {_ScheduleLocalActivity'localRetryThreshold = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity "maybe'localRetryThreshold" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'localRetryThreshold
           (\ x__ y__
              -> x__ {_ScheduleLocalActivity'localRetryThreshold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity "cancellationType" ActivityCancellationType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'cancellationType
           (\ x__ y__ -> x__ {_ScheduleLocalActivity'cancellationType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity "includeArgumentsInMarker" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'includeArgumentsInMarker
           (\ x__ y__
              -> x__ {_ScheduleLocalActivity'includeArgumentsInMarker = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScheduleLocalActivity where
  messageName _
    = Data.Text.pack "coresdk.workflow_commands.ScheduleLocalActivity"
  packedMessageDescriptor _
    = "\n\
      \\NAKScheduleLocalActivity\DC2\DLE\n\
      \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2\US\n\
      \\vactivity_id\CAN\STX \SOH(\tR\n\
      \activityId\DC2#\n\
      \\ractivity_type\CAN\ETX \SOH(\tR\factivityType\DC2\CAN\n\
      \\aattempt\CAN\EOT \SOH(\rR\aattempt\DC2P\n\
      \\SYNoriginal_schedule_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\DC4originalScheduleTime\DC2W\n\
      \\aheaders\CAN\ACK \ETX(\v2=.coresdk.workflow_commands.ScheduleLocalActivity.HeadersEntryR\aheaders\DC2=\n\
      \\targuments\CAN\a \ETX(\v2\US.temporal.api.common.v1.PayloadR\targuments\DC2T\n\
      \\EMschedule_to_close_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2T\n\
      \\EMschedule_to_start_timeout\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout\DC2N\n\
      \\SYNstart_to_close_timeout\CAN\n\
      \ \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\DC2F\n\
      \\fretry_policy\CAN\v \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2M\n\
      \\NAKlocal_retry_threshold\CAN\f \SOH(\v2\EM.google.protobuf.DurationR\DC3localRetryThreshold\DC2`\n\
      \\DC1cancellation_type\CAN\r \SOH(\SO23.coresdk.workflow_commands.ActivityCancellationTypeR\DLEcancellationType\DC2=\n\
      \\ESCinclude_arguments_in_marker\CAN\SO \SOH(\bR\CANincludeArgumentsInMarker\SUB[\n\
      \\fHeadersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"seq")) ::
              Data.ProtoLens.FieldDescriptor ScheduleLocalActivity
        activityId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"activityId")) ::
              Data.ProtoLens.FieldDescriptor ScheduleLocalActivity
        activityType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"activityType")) ::
              Data.ProtoLens.FieldDescriptor ScheduleLocalActivity
        attempt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attempt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"attempt")) ::
              Data.ProtoLens.FieldDescriptor ScheduleLocalActivity
        originalScheduleTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "original_schedule_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'originalScheduleTime")) ::
              Data.ProtoLens.FieldDescriptor ScheduleLocalActivity
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScheduleLocalActivity'HeadersEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"headers")) ::
              Data.ProtoLens.FieldDescriptor ScheduleLocalActivity
        arguments__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "arguments"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"arguments")) ::
              Data.ProtoLens.FieldDescriptor ScheduleLocalActivity
        scheduleToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor ScheduleLocalActivity
        scheduleToStartTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_start_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToStartTimeout")) ::
              Data.ProtoLens.FieldDescriptor ScheduleLocalActivity
        startToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor ScheduleLocalActivity
        retryPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.RetryPolicy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'retryPolicy")) ::
              Data.ProtoLens.FieldDescriptor ScheduleLocalActivity
        localRetryThreshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "local_retry_threshold"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'localRetryThreshold")) ::
              Data.ProtoLens.FieldDescriptor ScheduleLocalActivity
        cancellationType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancellation_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ActivityCancellationType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"cancellationType")) ::
              Data.ProtoLens.FieldDescriptor ScheduleLocalActivity
        includeArgumentsInMarker__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "include_arguments_in_marker"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"includeArgumentsInMarker")) ::
              Data.ProtoLens.FieldDescriptor ScheduleLocalActivity
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, seq__field_descriptor),
           (Data.ProtoLens.Tag 2, activityId__field_descriptor),
           (Data.ProtoLens.Tag 3, activityType__field_descriptor),
           (Data.ProtoLens.Tag 4, attempt__field_descriptor),
           (Data.ProtoLens.Tag 5, originalScheduleTime__field_descriptor),
           (Data.ProtoLens.Tag 6, headers__field_descriptor),
           (Data.ProtoLens.Tag 7, arguments__field_descriptor),
           (Data.ProtoLens.Tag 8, scheduleToCloseTimeout__field_descriptor),
           (Data.ProtoLens.Tag 9, scheduleToStartTimeout__field_descriptor),
           (Data.ProtoLens.Tag 10, startToCloseTimeout__field_descriptor),
           (Data.ProtoLens.Tag 11, retryPolicy__field_descriptor),
           (Data.ProtoLens.Tag 12, localRetryThreshold__field_descriptor),
           (Data.ProtoLens.Tag 13, cancellationType__field_descriptor),
           (Data.ProtoLens.Tag 14, 
            includeArgumentsInMarker__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScheduleLocalActivity'_unknownFields
        (\ x__ y__ -> x__ {_ScheduleLocalActivity'_unknownFields = y__})
  defMessage
    = ScheduleLocalActivity'_constructor
        {_ScheduleLocalActivity'seq = Data.ProtoLens.fieldDefault,
         _ScheduleLocalActivity'activityId = Data.ProtoLens.fieldDefault,
         _ScheduleLocalActivity'activityType = Data.ProtoLens.fieldDefault,
         _ScheduleLocalActivity'attempt = Data.ProtoLens.fieldDefault,
         _ScheduleLocalActivity'originalScheduleTime = Prelude.Nothing,
         _ScheduleLocalActivity'headers = Data.Map.empty,
         _ScheduleLocalActivity'arguments = Data.Vector.Generic.empty,
         _ScheduleLocalActivity'scheduleToCloseTimeout = Prelude.Nothing,
         _ScheduleLocalActivity'scheduleToStartTimeout = Prelude.Nothing,
         _ScheduleLocalActivity'startToCloseTimeout = Prelude.Nothing,
         _ScheduleLocalActivity'retryPolicy = Prelude.Nothing,
         _ScheduleLocalActivity'localRetryThreshold = Prelude.Nothing,
         _ScheduleLocalActivity'cancellationType = Data.ProtoLens.fieldDefault,
         _ScheduleLocalActivity'includeArgumentsInMarker = Data.ProtoLens.fieldDefault,
         _ScheduleLocalActivity'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScheduleLocalActivity
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Common.V1.Message.Payload
             -> Data.ProtoLens.Encoding.Bytes.Parser ScheduleLocalActivity
        loop x mutable'arguments
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'arguments <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'arguments)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'arguments") frozen'arguments x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seq"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
                                  mutable'arguments
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "activity_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"activityId") y x)
                                  mutable'arguments
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "activity_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"activityType") y x)
                                  mutable'arguments
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "attempt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"attempt") y x)
                                  mutable'arguments
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "original_schedule_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"originalScheduleTime") y x)
                                  mutable'arguments
                        50
                          -> do !(entry :: ScheduleLocalActivity'HeadersEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                    (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                        Data.ProtoLens.Encoding.Bytes.isolate
                                                                                          (Prelude.fromIntegral
                                                                                             len)
                                                                                          Data.ProtoLens.parseMessage)
                                                                                    "headers"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"headers")
                                        (\ !t -> Data.Map.insert key value t) x)
                                     mutable'arguments)
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "arguments"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'arguments y)
                                loop x v
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToCloseTimeout") y x)
                                  mutable'arguments
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_start_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToStartTimeout") y x)
                                  mutable'arguments
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_to_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startToCloseTimeout") y x)
                                  mutable'arguments
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "retry_policy"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"retryPolicy") y x)
                                  mutable'arguments
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "local_retry_threshold"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"localRetryThreshold") y x)
                                  mutable'arguments
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "cancellation_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cancellationType") y x)
                                  mutable'arguments
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "include_arguments_in_marker"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"includeArgumentsInMarker") y x)
                                  mutable'arguments
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'arguments
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'arguments <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'arguments)
          "ScheduleLocalActivity"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"seq") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"activityId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"activityType") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"attempt") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'originalScheduleTime") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         ((Data.Monoid.<>)
                            (Data.Monoid.mconcat
                               (Prelude.map
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                                (Lens.Family2.set
                                                   (Data.ProtoLens.Field.field @"value")
                                                   (Prelude.snd _v)
                                                   (Data.ProtoLens.defMessage ::
                                                      ScheduleLocalActivity'HeadersEntry)))))
                                  (Data.Map.toList
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"headers") _x))))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage _v))
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'arguments") _x))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field
                                            @"maybe'scheduleToCloseTimeout")
                                         _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field
                                               @"maybe'scheduleToStartTimeout")
                                            _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field
                                                  @"maybe'startToCloseTimeout")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field @"maybe'retryPolicy")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                     ((Prelude..)
                                                        (\ bs
                                                           -> (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                        Data.ProtoLens.encodeMessage _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'localRetryThreshold")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                                        ((Prelude..)
                                                           (\ bs
                                                              -> (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      (Prelude.fromIntegral
                                                                         (Data.ByteString.length
                                                                            bs)))
                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                      bs))
                                                           Data.ProtoLens.encodeMessage _v))
                                              ((Data.Monoid.<>)
                                                 (let
                                                    _v
                                                      = Lens.Family2.view
                                                          (Data.ProtoLens.Field.field
                                                             @"cancellationType")
                                                          _x
                                                  in
                                                    if (Prelude.==)
                                                         _v Data.ProtoLens.fieldDefault then
                                                        Data.Monoid.mempty
                                                    else
                                                        (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             104)
                                                          ((Prelude..)
                                                             ((Prelude..)
                                                                Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                Prelude.fromIntegral)
                                                             Prelude.fromEnum _v))
                                                 ((Data.Monoid.<>)
                                                    (let
                                                       _v
                                                         = Lens.Family2.view
                                                             (Data.ProtoLens.Field.field
                                                                @"includeArgumentsInMarker")
                                                             _x
                                                     in
                                                       if (Prelude.==)
                                                            _v Data.ProtoLens.fieldDefault then
                                                           Data.Monoid.mempty
                                                       else
                                                           (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                112)
                                                             ((Prelude..)
                                                                Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (\ b -> if b then 1 else 0) _v))
                                                    (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                       (Lens.Family2.view
                                                          Data.ProtoLens.unknownFields
                                                          _x)))))))))))))))
instance Control.DeepSeq.NFData ScheduleLocalActivity where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScheduleLocalActivity'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScheduleLocalActivity'seq x__)
                (Control.DeepSeq.deepseq
                   (_ScheduleLocalActivity'activityId x__)
                   (Control.DeepSeq.deepseq
                      (_ScheduleLocalActivity'activityType x__)
                      (Control.DeepSeq.deepseq
                         (_ScheduleLocalActivity'attempt x__)
                         (Control.DeepSeq.deepseq
                            (_ScheduleLocalActivity'originalScheduleTime x__)
                            (Control.DeepSeq.deepseq
                               (_ScheduleLocalActivity'headers x__)
                               (Control.DeepSeq.deepseq
                                  (_ScheduleLocalActivity'arguments x__)
                                  (Control.DeepSeq.deepseq
                                     (_ScheduleLocalActivity'scheduleToCloseTimeout x__)
                                     (Control.DeepSeq.deepseq
                                        (_ScheduleLocalActivity'scheduleToStartTimeout x__)
                                        (Control.DeepSeq.deepseq
                                           (_ScheduleLocalActivity'startToCloseTimeout x__)
                                           (Control.DeepSeq.deepseq
                                              (_ScheduleLocalActivity'retryPolicy x__)
                                              (Control.DeepSeq.deepseq
                                                 (_ScheduleLocalActivity'localRetryThreshold x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_ScheduleLocalActivity'cancellationType x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_ScheduleLocalActivity'includeArgumentsInMarker
                                                          x__)
                                                       ()))))))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.key' @:: Lens' ScheduleLocalActivity'HeadersEntry Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.value' @:: Lens' ScheduleLocalActivity'HeadersEntry Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'value' @:: Lens' ScheduleLocalActivity'HeadersEntry (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data ScheduleLocalActivity'HeadersEntry
  = ScheduleLocalActivity'HeadersEntry'_constructor {_ScheduleLocalActivity'HeadersEntry'key :: !Data.Text.Text,
                                                     _ScheduleLocalActivity'HeadersEntry'value :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                                     _ScheduleLocalActivity'HeadersEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScheduleLocalActivity'HeadersEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity'HeadersEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'HeadersEntry'key
           (\ x__ y__ -> x__ {_ScheduleLocalActivity'HeadersEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity'HeadersEntry "value" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'HeadersEntry'value
           (\ x__ y__
              -> x__ {_ScheduleLocalActivity'HeadersEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleLocalActivity'HeadersEntry "maybe'value" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleLocalActivity'HeadersEntry'value
           (\ x__ y__
              -> x__ {_ScheduleLocalActivity'HeadersEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScheduleLocalActivity'HeadersEntry where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_commands.ScheduleLocalActivity.HeadersEntry"
  packedMessageDescriptor _
    = "\n\
      \\fHeadersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor ScheduleLocalActivity'HeadersEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor ScheduleLocalActivity'HeadersEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScheduleLocalActivity'HeadersEntry'_unknownFields
        (\ x__ y__
           -> x__ {_ScheduleLocalActivity'HeadersEntry'_unknownFields = y__})
  defMessage
    = ScheduleLocalActivity'HeadersEntry'_constructor
        {_ScheduleLocalActivity'HeadersEntry'key = Data.ProtoLens.fieldDefault,
         _ScheduleLocalActivity'HeadersEntry'value = Prelude.Nothing,
         _ScheduleLocalActivity'HeadersEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScheduleLocalActivity'HeadersEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser ScheduleLocalActivity'HeadersEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HeadersEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ScheduleLocalActivity'HeadersEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScheduleLocalActivity'HeadersEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScheduleLocalActivity'HeadersEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_ScheduleLocalActivity'HeadersEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.seq' @:: Lens' ScheduleNexusOperation Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.endpoint' @:: Lens' ScheduleNexusOperation Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.service' @:: Lens' ScheduleNexusOperation Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.operation' @:: Lens' ScheduleNexusOperation Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.input' @:: Lens' ScheduleNexusOperation Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'input' @:: Lens' ScheduleNexusOperation (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.scheduleToCloseTimeout' @:: Lens' ScheduleNexusOperation Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'scheduleToCloseTimeout' @:: Lens' ScheduleNexusOperation (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.nexusHeader' @:: Lens' ScheduleNexusOperation (Data.Map.Map Data.Text.Text Data.Text.Text)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.cancellationType' @:: Lens' ScheduleNexusOperation Proto.Temporal.Sdk.Core.Nexus.Nexus.NexusOperationCancellationType@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.scheduleToStartTimeout' @:: Lens' ScheduleNexusOperation Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'scheduleToStartTimeout' @:: Lens' ScheduleNexusOperation (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.startToCloseTimeout' @:: Lens' ScheduleNexusOperation Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'startToCloseTimeout' @:: Lens' ScheduleNexusOperation (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data ScheduleNexusOperation
  = ScheduleNexusOperation'_constructor {_ScheduleNexusOperation'seq :: !Data.Word.Word32,
                                         _ScheduleNexusOperation'endpoint :: !Data.Text.Text,
                                         _ScheduleNexusOperation'service :: !Data.Text.Text,
                                         _ScheduleNexusOperation'operation :: !Data.Text.Text,
                                         _ScheduleNexusOperation'input :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                         _ScheduleNexusOperation'scheduleToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                         _ScheduleNexusOperation'nexusHeader :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                                         _ScheduleNexusOperation'cancellationType :: !Proto.Temporal.Sdk.Core.Nexus.Nexus.NexusOperationCancellationType,
                                         _ScheduleNexusOperation'scheduleToStartTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                         _ScheduleNexusOperation'startToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                         _ScheduleNexusOperation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScheduleNexusOperation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScheduleNexusOperation "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperation'seq
           (\ x__ y__ -> x__ {_ScheduleNexusOperation'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleNexusOperation "endpoint" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperation'endpoint
           (\ x__ y__ -> x__ {_ScheduleNexusOperation'endpoint = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleNexusOperation "service" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperation'service
           (\ x__ y__ -> x__ {_ScheduleNexusOperation'service = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleNexusOperation "operation" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperation'operation
           (\ x__ y__ -> x__ {_ScheduleNexusOperation'operation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleNexusOperation "input" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperation'input
           (\ x__ y__ -> x__ {_ScheduleNexusOperation'input = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleNexusOperation "maybe'input" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperation'input
           (\ x__ y__ -> x__ {_ScheduleNexusOperation'input = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleNexusOperation "scheduleToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperation'scheduleToCloseTimeout
           (\ x__ y__
              -> x__ {_ScheduleNexusOperation'scheduleToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleNexusOperation "maybe'scheduleToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperation'scheduleToCloseTimeout
           (\ x__ y__
              -> x__ {_ScheduleNexusOperation'scheduleToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleNexusOperation "nexusHeader" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperation'nexusHeader
           (\ x__ y__ -> x__ {_ScheduleNexusOperation'nexusHeader = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleNexusOperation "cancellationType" Proto.Temporal.Sdk.Core.Nexus.Nexus.NexusOperationCancellationType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperation'cancellationType
           (\ x__ y__
              -> x__ {_ScheduleNexusOperation'cancellationType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleNexusOperation "scheduleToStartTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperation'scheduleToStartTimeout
           (\ x__ y__
              -> x__ {_ScheduleNexusOperation'scheduleToStartTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleNexusOperation "maybe'scheduleToStartTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperation'scheduleToStartTimeout
           (\ x__ y__
              -> x__ {_ScheduleNexusOperation'scheduleToStartTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleNexusOperation "startToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperation'startToCloseTimeout
           (\ x__ y__
              -> x__ {_ScheduleNexusOperation'startToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleNexusOperation "maybe'startToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperation'startToCloseTimeout
           (\ x__ y__
              -> x__ {_ScheduleNexusOperation'startToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScheduleNexusOperation where
  messageName _
    = Data.Text.pack "coresdk.workflow_commands.ScheduleNexusOperation"
  packedMessageDescriptor _
    = "\n\
      \\SYNScheduleNexusOperation\DC2\DLE\n\
      \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2\SUB\n\
      \\bendpoint\CAN\STX \SOH(\tR\bendpoint\DC2\CAN\n\
      \\aservice\CAN\ETX \SOH(\tR\aservice\DC2\FS\n\
      \\toperation\CAN\EOT \SOH(\tR\toperation\DC25\n\
      \\ENQinput\CAN\ENQ \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQinput\DC2T\n\
      \\EMschedule_to_close_timeout\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2e\n\
      \\fnexus_header\CAN\a \ETX(\v2B.coresdk.workflow_commands.ScheduleNexusOperation.NexusHeaderEntryR\vnexusHeader\DC2Z\n\
      \\DC1cancellation_type\CAN\b \SOH(\SO2-.coresdk.nexus.NexusOperationCancellationTypeR\DLEcancellationType\DC2T\n\
      \\EMschedule_to_start_timeout\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout\DC2N\n\
      \\SYNstart_to_close_timeout\CAN\n\
      \ \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\SUB>\n\
      \\DLENexusHeaderEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"seq")) ::
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperation
        endpoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"endpoint")) ::
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperation
        service__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"service")) ::
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperation
        operation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operation")) ::
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperation
        input__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "input"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'input")) ::
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperation
        scheduleToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperation
        nexusHeader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nexus_header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScheduleNexusOperation'NexusHeaderEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"nexusHeader")) ::
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperation
        cancellationType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancellation_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Sdk.Core.Nexus.Nexus.NexusOperationCancellationType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"cancellationType")) ::
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperation
        scheduleToStartTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_start_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToStartTimeout")) ::
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperation
        startToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, seq__field_descriptor),
           (Data.ProtoLens.Tag 2, endpoint__field_descriptor),
           (Data.ProtoLens.Tag 3, service__field_descriptor),
           (Data.ProtoLens.Tag 4, operation__field_descriptor),
           (Data.ProtoLens.Tag 5, input__field_descriptor),
           (Data.ProtoLens.Tag 6, scheduleToCloseTimeout__field_descriptor),
           (Data.ProtoLens.Tag 7, nexusHeader__field_descriptor),
           (Data.ProtoLens.Tag 8, cancellationType__field_descriptor),
           (Data.ProtoLens.Tag 9, scheduleToStartTimeout__field_descriptor),
           (Data.ProtoLens.Tag 10, startToCloseTimeout__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScheduleNexusOperation'_unknownFields
        (\ x__ y__ -> x__ {_ScheduleNexusOperation'_unknownFields = y__})
  defMessage
    = ScheduleNexusOperation'_constructor
        {_ScheduleNexusOperation'seq = Data.ProtoLens.fieldDefault,
         _ScheduleNexusOperation'endpoint = Data.ProtoLens.fieldDefault,
         _ScheduleNexusOperation'service = Data.ProtoLens.fieldDefault,
         _ScheduleNexusOperation'operation = Data.ProtoLens.fieldDefault,
         _ScheduleNexusOperation'input = Prelude.Nothing,
         _ScheduleNexusOperation'scheduleToCloseTimeout = Prelude.Nothing,
         _ScheduleNexusOperation'nexusHeader = Data.Map.empty,
         _ScheduleNexusOperation'cancellationType = Data.ProtoLens.fieldDefault,
         _ScheduleNexusOperation'scheduleToStartTimeout = Prelude.Nothing,
         _ScheduleNexusOperation'startToCloseTimeout = Prelude.Nothing,
         _ScheduleNexusOperation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScheduleNexusOperation
          -> Data.ProtoLens.Encoding.Bytes.Parser ScheduleNexusOperation
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "endpoint"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endpoint") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "service"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"service") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operation") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "input"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"input") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToCloseTimeout") y x)
                        58
                          -> do !(entry :: ScheduleNexusOperation'NexusHeaderEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                         (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                             Data.ProtoLens.Encoding.Bytes.isolate
                                                                                               (Prelude.fromIntegral
                                                                                                  len)
                                                                                               Data.ProtoLens.parseMessage)
                                                                                         "nexus_header"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"nexusHeader")
                                        (\ !t -> Data.Map.insert key value t) x))
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "cancellation_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cancellationType") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_start_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToStartTimeout") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_to_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startToCloseTimeout") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ScheduleNexusOperation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"seq") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"endpoint") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"service") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operation") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'input") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'scheduleToCloseTimeout") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage _v))
                            ((Data.Monoid.<>)
                               (Data.Monoid.mconcat
                                  (Prelude.map
                                     (\ _v
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                             ((Prelude..)
                                                (\ bs
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           (Prelude.fromIntegral
                                                              (Data.ByteString.length bs)))
                                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Data.ProtoLens.encodeMessage
                                                (Lens.Family2.set
                                                   (Data.ProtoLens.Field.field @"key")
                                                   (Prelude.fst _v)
                                                   (Lens.Family2.set
                                                      (Data.ProtoLens.Field.field @"value")
                                                      (Prelude.snd _v)
                                                      (Data.ProtoLens.defMessage ::
                                                         ScheduleNexusOperation'NexusHeaderEntry)))))
                                     (Data.Map.toList
                                        (Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"nexusHeader") _x))))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"cancellationType") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                           ((Prelude..)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 Prelude.fromIntegral)
                                              Prelude.fromEnum _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field
                                               @"maybe'scheduleToStartTimeout")
                                            _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field
                                                  @"maybe'startToCloseTimeout")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage _v))
                                        (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                           (Lens.Family2.view
                                              Data.ProtoLens.unknownFields _x)))))))))))
instance Control.DeepSeq.NFData ScheduleNexusOperation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScheduleNexusOperation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScheduleNexusOperation'seq x__)
                (Control.DeepSeq.deepseq
                   (_ScheduleNexusOperation'endpoint x__)
                   (Control.DeepSeq.deepseq
                      (_ScheduleNexusOperation'service x__)
                      (Control.DeepSeq.deepseq
                         (_ScheduleNexusOperation'operation x__)
                         (Control.DeepSeq.deepseq
                            (_ScheduleNexusOperation'input x__)
                            (Control.DeepSeq.deepseq
                               (_ScheduleNexusOperation'scheduleToCloseTimeout x__)
                               (Control.DeepSeq.deepseq
                                  (_ScheduleNexusOperation'nexusHeader x__)
                                  (Control.DeepSeq.deepseq
                                     (_ScheduleNexusOperation'cancellationType x__)
                                     (Control.DeepSeq.deepseq
                                        (_ScheduleNexusOperation'scheduleToStartTimeout x__)
                                        (Control.DeepSeq.deepseq
                                           (_ScheduleNexusOperation'startToCloseTimeout x__)
                                           ()))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.key' @:: Lens' ScheduleNexusOperation'NexusHeaderEntry Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.value' @:: Lens' ScheduleNexusOperation'NexusHeaderEntry Data.Text.Text@ -}
data ScheduleNexusOperation'NexusHeaderEntry
  = ScheduleNexusOperation'NexusHeaderEntry'_constructor {_ScheduleNexusOperation'NexusHeaderEntry'key :: !Data.Text.Text,
                                                          _ScheduleNexusOperation'NexusHeaderEntry'value :: !Data.Text.Text,
                                                          _ScheduleNexusOperation'NexusHeaderEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScheduleNexusOperation'NexusHeaderEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScheduleNexusOperation'NexusHeaderEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperation'NexusHeaderEntry'key
           (\ x__ y__
              -> x__ {_ScheduleNexusOperation'NexusHeaderEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleNexusOperation'NexusHeaderEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperation'NexusHeaderEntry'value
           (\ x__ y__
              -> x__ {_ScheduleNexusOperation'NexusHeaderEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScheduleNexusOperation'NexusHeaderEntry where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_commands.ScheduleNexusOperation.NexusHeaderEntry"
  packedMessageDescriptor _
    = "\n\
      \\DLENexusHeaderEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperation'NexusHeaderEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperation'NexusHeaderEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScheduleNexusOperation'NexusHeaderEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_ScheduleNexusOperation'NexusHeaderEntry'_unknownFields = y__})
  defMessage
    = ScheduleNexusOperation'NexusHeaderEntry'_constructor
        {_ScheduleNexusOperation'NexusHeaderEntry'key = Data.ProtoLens.fieldDefault,
         _ScheduleNexusOperation'NexusHeaderEntry'value = Data.ProtoLens.fieldDefault,
         _ScheduleNexusOperation'NexusHeaderEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScheduleNexusOperation'NexusHeaderEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser ScheduleNexusOperation'NexusHeaderEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NexusHeaderEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ScheduleNexusOperation'NexusHeaderEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScheduleNexusOperation'NexusHeaderEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScheduleNexusOperation'NexusHeaderEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_ScheduleNexusOperation'NexusHeaderEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.patchId' @:: Lens' SetPatchMarker Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.deprecated' @:: Lens' SetPatchMarker Prelude.Bool@ -}
data SetPatchMarker
  = SetPatchMarker'_constructor {_SetPatchMarker'patchId :: !Data.Text.Text,
                                 _SetPatchMarker'deprecated :: !Prelude.Bool,
                                 _SetPatchMarker'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SetPatchMarker where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SetPatchMarker "patchId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SetPatchMarker'patchId
           (\ x__ y__ -> x__ {_SetPatchMarker'patchId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SetPatchMarker "deprecated" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SetPatchMarker'deprecated
           (\ x__ y__ -> x__ {_SetPatchMarker'deprecated = y__}))
        Prelude.id
instance Data.ProtoLens.Message SetPatchMarker where
  messageName _
    = Data.Text.pack "coresdk.workflow_commands.SetPatchMarker"
  packedMessageDescriptor _
    = "\n\
      \\SOSetPatchMarker\DC2\EM\n\
      \\bpatch_id\CAN\SOH \SOH(\tR\apatchId\DC2\RS\n\
      \\n\
      \deprecated\CAN\STX \SOH(\bR\n\
      \deprecated"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        patchId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "patch_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"patchId")) ::
              Data.ProtoLens.FieldDescriptor SetPatchMarker
        deprecated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deprecated"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"deprecated")) ::
              Data.ProtoLens.FieldDescriptor SetPatchMarker
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, patchId__field_descriptor),
           (Data.ProtoLens.Tag 2, deprecated__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SetPatchMarker'_unknownFields
        (\ x__ y__ -> x__ {_SetPatchMarker'_unknownFields = y__})
  defMessage
    = SetPatchMarker'_constructor
        {_SetPatchMarker'patchId = Data.ProtoLens.fieldDefault,
         _SetPatchMarker'deprecated = Data.ProtoLens.fieldDefault,
         _SetPatchMarker'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SetPatchMarker
          -> Data.ProtoLens.Encoding.Bytes.Parser SetPatchMarker
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "patch_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"patchId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "deprecated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"deprecated") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SetPatchMarker"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"patchId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"deprecated") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData SetPatchMarker where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SetPatchMarker'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SetPatchMarker'patchId x__)
                (Control.DeepSeq.deepseq (_SetPatchMarker'deprecated x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.seq' @:: Lens' SignalExternalWorkflowExecution Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.signalName' @:: Lens' SignalExternalWorkflowExecution Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.args' @:: Lens' SignalExternalWorkflowExecution [Proto.Temporal.Api.Common.V1.Message.Payload]@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.vec'args' @:: Lens' SignalExternalWorkflowExecution (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.headers' @:: Lens' SignalExternalWorkflowExecution (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'target' @:: Lens' SignalExternalWorkflowExecution (Prelude.Maybe SignalExternalWorkflowExecution'Target)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'workflowExecution' @:: Lens' SignalExternalWorkflowExecution (Prelude.Maybe Proto.Temporal.Sdk.Core.Common.Common.NamespacedWorkflowExecution)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.workflowExecution' @:: Lens' SignalExternalWorkflowExecution Proto.Temporal.Sdk.Core.Common.Common.NamespacedWorkflowExecution@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'childWorkflowId' @:: Lens' SignalExternalWorkflowExecution (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.childWorkflowId' @:: Lens' SignalExternalWorkflowExecution Data.Text.Text@ -}
data SignalExternalWorkflowExecution
  = SignalExternalWorkflowExecution'_constructor {_SignalExternalWorkflowExecution'seq :: !Data.Word.Word32,
                                                  _SignalExternalWorkflowExecution'signalName :: !Data.Text.Text,
                                                  _SignalExternalWorkflowExecution'args :: !(Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload),
                                                  _SignalExternalWorkflowExecution'headers :: !(Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload),
                                                  _SignalExternalWorkflowExecution'target :: !(Prelude.Maybe SignalExternalWorkflowExecution'Target),
                                                  _SignalExternalWorkflowExecution'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SignalExternalWorkflowExecution where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data SignalExternalWorkflowExecution'Target
  = SignalExternalWorkflowExecution'WorkflowExecution !Proto.Temporal.Sdk.Core.Common.Common.NamespacedWorkflowExecution |
    SignalExternalWorkflowExecution'ChildWorkflowId !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecution "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecution'seq
           (\ x__ y__ -> x__ {_SignalExternalWorkflowExecution'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecution "signalName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecution'signalName
           (\ x__ y__
              -> x__ {_SignalExternalWorkflowExecution'signalName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecution "args" [Proto.Temporal.Api.Common.V1.Message.Payload] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecution'args
           (\ x__ y__ -> x__ {_SignalExternalWorkflowExecution'args = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecution "vec'args" (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecution'args
           (\ x__ y__ -> x__ {_SignalExternalWorkflowExecution'args = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecution "headers" (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecution'headers
           (\ x__ y__
              -> x__ {_SignalExternalWorkflowExecution'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecution "maybe'target" (Prelude.Maybe SignalExternalWorkflowExecution'Target) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecution'target
           (\ x__ y__ -> x__ {_SignalExternalWorkflowExecution'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecution "maybe'workflowExecution" (Prelude.Maybe Proto.Temporal.Sdk.Core.Common.Common.NamespacedWorkflowExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecution'target
           (\ x__ y__ -> x__ {_SignalExternalWorkflowExecution'target = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SignalExternalWorkflowExecution'WorkflowExecution x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   SignalExternalWorkflowExecution'WorkflowExecution y__))
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecution "workflowExecution" Proto.Temporal.Sdk.Core.Common.Common.NamespacedWorkflowExecution where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecution'target
           (\ x__ y__ -> x__ {_SignalExternalWorkflowExecution'target = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SignalExternalWorkflowExecution'WorkflowExecution x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      SignalExternalWorkflowExecution'WorkflowExecution y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecution "maybe'childWorkflowId" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecution'target
           (\ x__ y__ -> x__ {_SignalExternalWorkflowExecution'target = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SignalExternalWorkflowExecution'ChildWorkflowId x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   SignalExternalWorkflowExecution'ChildWorkflowId y__))
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecution "childWorkflowId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecution'target
           (\ x__ y__ -> x__ {_SignalExternalWorkflowExecution'target = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SignalExternalWorkflowExecution'ChildWorkflowId x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      SignalExternalWorkflowExecution'ChildWorkflowId y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message SignalExternalWorkflowExecution where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_commands.SignalExternalWorkflowExecution"
  packedMessageDescriptor _
    = "\n\
      \\USSignalExternalWorkflowExecution\DC2\DLE\n\
      \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2\\\n\
      \\DC2workflow_execution\CAN\STX \SOH(\v2+.coresdk.common.NamespacedWorkflowExecutionH\NULR\DC1workflowExecution\DC2,\n\
      \\DC1child_workflow_id\CAN\ETX \SOH(\tH\NULR\SIchildWorkflowId\DC2\US\n\
      \\vsignal_name\CAN\EOT \SOH(\tR\n\
      \signalName\DC23\n\
      \\EOTargs\CAN\ENQ \ETX(\v2\US.temporal.api.common.v1.PayloadR\EOTargs\DC2a\n\
      \\aheaders\CAN\ACK \ETX(\v2G.coresdk.workflow_commands.SignalExternalWorkflowExecution.HeadersEntryR\aheaders\SUB[\n\
      \\fHeadersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOHB\b\n\
      \\ACKtarget"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"seq")) ::
              Data.ProtoLens.FieldDescriptor SignalExternalWorkflowExecution
        signalName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signal_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"signalName")) ::
              Data.ProtoLens.FieldDescriptor SignalExternalWorkflowExecution
        args__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "args"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"args")) ::
              Data.ProtoLens.FieldDescriptor SignalExternalWorkflowExecution
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SignalExternalWorkflowExecution'HeadersEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"headers")) ::
              Data.ProtoLens.FieldDescriptor SignalExternalWorkflowExecution
        workflowExecution__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_execution"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Sdk.Core.Common.Common.NamespacedWorkflowExecution)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowExecution")) ::
              Data.ProtoLens.FieldDescriptor SignalExternalWorkflowExecution
        childWorkflowId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "child_workflow_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'childWorkflowId")) ::
              Data.ProtoLens.FieldDescriptor SignalExternalWorkflowExecution
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, seq__field_descriptor),
           (Data.ProtoLens.Tag 4, signalName__field_descriptor),
           (Data.ProtoLens.Tag 5, args__field_descriptor),
           (Data.ProtoLens.Tag 6, headers__field_descriptor),
           (Data.ProtoLens.Tag 2, workflowExecution__field_descriptor),
           (Data.ProtoLens.Tag 3, childWorkflowId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SignalExternalWorkflowExecution'_unknownFields
        (\ x__ y__
           -> x__ {_SignalExternalWorkflowExecution'_unknownFields = y__})
  defMessage
    = SignalExternalWorkflowExecution'_constructor
        {_SignalExternalWorkflowExecution'seq = Data.ProtoLens.fieldDefault,
         _SignalExternalWorkflowExecution'signalName = Data.ProtoLens.fieldDefault,
         _SignalExternalWorkflowExecution'args = Data.Vector.Generic.empty,
         _SignalExternalWorkflowExecution'headers = Data.Map.empty,
         _SignalExternalWorkflowExecution'target = Prelude.Nothing,
         _SignalExternalWorkflowExecution'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SignalExternalWorkflowExecution
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Common.V1.Message.Payload
             -> Data.ProtoLens.Encoding.Bytes.Parser SignalExternalWorkflowExecution
        loop x mutable'args
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'args <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'args)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'args") frozen'args x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seq"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
                                  mutable'args
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "signal_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"signalName") y x)
                                  mutable'args
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "args"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'args y)
                                loop x v
                        50
                          -> do !(entry :: SignalExternalWorkflowExecution'HeadersEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                              (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                    (Prelude.fromIntegral
                                                                                                       len)
                                                                                                    Data.ProtoLens.parseMessage)
                                                                                              "headers"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"headers")
                                        (\ !t -> Data.Map.insert key value t) x)
                                     mutable'args)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_execution"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowExecution") y x)
                                  mutable'args
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "child_workflow_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"childWorkflowId") y x)
                                  mutable'args
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'args
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'args <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'args)
          "SignalExternalWorkflowExecution"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"seq") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"signalName") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'args") _x))
                   ((Data.Monoid.<>)
                      (Data.Monoid.mconcat
                         (Prelude.map
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"value") (Prelude.snd _v)
                                             (Data.ProtoLens.defMessage ::
                                                SignalExternalWorkflowExecution'HeadersEntry)))))
                            (Data.Map.toList
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"headers") _x))))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just (SignalExternalWorkflowExecution'WorkflowExecution v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage v)
                            (Prelude.Just (SignalExternalWorkflowExecution'ChildWorkflowId v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.Text.Encoding.encodeUtf8 v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData SignalExternalWorkflowExecution where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SignalExternalWorkflowExecution'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SignalExternalWorkflowExecution'seq x__)
                (Control.DeepSeq.deepseq
                   (_SignalExternalWorkflowExecution'signalName x__)
                   (Control.DeepSeq.deepseq
                      (_SignalExternalWorkflowExecution'args x__)
                      (Control.DeepSeq.deepseq
                         (_SignalExternalWorkflowExecution'headers x__)
                         (Control.DeepSeq.deepseq
                            (_SignalExternalWorkflowExecution'target x__) ())))))
instance Control.DeepSeq.NFData SignalExternalWorkflowExecution'Target where
  rnf (SignalExternalWorkflowExecution'WorkflowExecution x__)
    = Control.DeepSeq.rnf x__
  rnf (SignalExternalWorkflowExecution'ChildWorkflowId x__)
    = Control.DeepSeq.rnf x__
_SignalExternalWorkflowExecution'WorkflowExecution ::
  Data.ProtoLens.Prism.Prism' SignalExternalWorkflowExecution'Target Proto.Temporal.Sdk.Core.Common.Common.NamespacedWorkflowExecution
_SignalExternalWorkflowExecution'WorkflowExecution
  = Data.ProtoLens.Prism.prism'
      SignalExternalWorkflowExecution'WorkflowExecution
      (\ p__
         -> case p__ of
              (SignalExternalWorkflowExecution'WorkflowExecution p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_SignalExternalWorkflowExecution'ChildWorkflowId ::
  Data.ProtoLens.Prism.Prism' SignalExternalWorkflowExecution'Target Data.Text.Text
_SignalExternalWorkflowExecution'ChildWorkflowId
  = Data.ProtoLens.Prism.prism'
      SignalExternalWorkflowExecution'ChildWorkflowId
      (\ p__
         -> case p__ of
              (SignalExternalWorkflowExecution'ChildWorkflowId p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.key' @:: Lens' SignalExternalWorkflowExecution'HeadersEntry Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.value' @:: Lens' SignalExternalWorkflowExecution'HeadersEntry Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'value' @:: Lens' SignalExternalWorkflowExecution'HeadersEntry (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data SignalExternalWorkflowExecution'HeadersEntry
  = SignalExternalWorkflowExecution'HeadersEntry'_constructor {_SignalExternalWorkflowExecution'HeadersEntry'key :: !Data.Text.Text,
                                                               _SignalExternalWorkflowExecution'HeadersEntry'value :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                                               _SignalExternalWorkflowExecution'HeadersEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SignalExternalWorkflowExecution'HeadersEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecution'HeadersEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecution'HeadersEntry'key
           (\ x__ y__
              -> x__ {_SignalExternalWorkflowExecution'HeadersEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecution'HeadersEntry "value" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecution'HeadersEntry'value
           (\ x__ y__
              -> x__
                   {_SignalExternalWorkflowExecution'HeadersEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecution'HeadersEntry "maybe'value" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecution'HeadersEntry'value
           (\ x__ y__
              -> x__
                   {_SignalExternalWorkflowExecution'HeadersEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message SignalExternalWorkflowExecution'HeadersEntry where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_commands.SignalExternalWorkflowExecution.HeadersEntry"
  packedMessageDescriptor _
    = "\n\
      \\fHeadersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor SignalExternalWorkflowExecution'HeadersEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor SignalExternalWorkflowExecution'HeadersEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SignalExternalWorkflowExecution'HeadersEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_SignalExternalWorkflowExecution'HeadersEntry'_unknownFields = y__})
  defMessage
    = SignalExternalWorkflowExecution'HeadersEntry'_constructor
        {_SignalExternalWorkflowExecution'HeadersEntry'key = Data.ProtoLens.fieldDefault,
         _SignalExternalWorkflowExecution'HeadersEntry'value = Prelude.Nothing,
         _SignalExternalWorkflowExecution'HeadersEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SignalExternalWorkflowExecution'HeadersEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser SignalExternalWorkflowExecution'HeadersEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HeadersEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData SignalExternalWorkflowExecution'HeadersEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SignalExternalWorkflowExecution'HeadersEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SignalExternalWorkflowExecution'HeadersEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_SignalExternalWorkflowExecution'HeadersEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.seq' @:: Lens' StartChildWorkflowExecution Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.namespace' @:: Lens' StartChildWorkflowExecution Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.workflowId' @:: Lens' StartChildWorkflowExecution Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.workflowType' @:: Lens' StartChildWorkflowExecution Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.taskQueue' @:: Lens' StartChildWorkflowExecution Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.input' @:: Lens' StartChildWorkflowExecution [Proto.Temporal.Api.Common.V1.Message.Payload]@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.vec'input' @:: Lens' StartChildWorkflowExecution (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.workflowExecutionTimeout' @:: Lens' StartChildWorkflowExecution Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'workflowExecutionTimeout' @:: Lens' StartChildWorkflowExecution (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.workflowRunTimeout' @:: Lens' StartChildWorkflowExecution Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'workflowRunTimeout' @:: Lens' StartChildWorkflowExecution (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.workflowTaskTimeout' @:: Lens' StartChildWorkflowExecution Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'workflowTaskTimeout' @:: Lens' StartChildWorkflowExecution (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.parentClosePolicy' @:: Lens' StartChildWorkflowExecution Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow.ParentClosePolicy@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.workflowIdReusePolicy' @:: Lens' StartChildWorkflowExecution Proto.Temporal.Api.Enums.V1.Workflow.WorkflowIdReusePolicy@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.retryPolicy' @:: Lens' StartChildWorkflowExecution Proto.Temporal.Api.Common.V1.Message.RetryPolicy@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'retryPolicy' @:: Lens' StartChildWorkflowExecution (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.cronSchedule' @:: Lens' StartChildWorkflowExecution Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.headers' @:: Lens' StartChildWorkflowExecution (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.memo' @:: Lens' StartChildWorkflowExecution (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.searchAttributes' @:: Lens' StartChildWorkflowExecution Proto.Temporal.Api.Common.V1.Message.SearchAttributes@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'searchAttributes' @:: Lens' StartChildWorkflowExecution (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.cancellationType' @:: Lens' StartChildWorkflowExecution Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow.ChildWorkflowCancellationType@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.versioningIntent' @:: Lens' StartChildWorkflowExecution Proto.Temporal.Sdk.Core.Common.Common.VersioningIntent@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.priority' @:: Lens' StartChildWorkflowExecution Proto.Temporal.Api.Common.V1.Message.Priority@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'priority' @:: Lens' StartChildWorkflowExecution (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.versioningOverride' @:: Lens' StartChildWorkflowExecution Proto.Temporal.Api.Workflow.V1.Message.VersioningOverride@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'versioningOverride' @:: Lens' StartChildWorkflowExecution (Prelude.Maybe Proto.Temporal.Api.Workflow.V1.Message.VersioningOverride)@ -}
data StartChildWorkflowExecution
  = StartChildWorkflowExecution'_constructor {_StartChildWorkflowExecution'seq :: !Data.Word.Word32,
                                              _StartChildWorkflowExecution'namespace :: !Data.Text.Text,
                                              _StartChildWorkflowExecution'workflowId :: !Data.Text.Text,
                                              _StartChildWorkflowExecution'workflowType :: !Data.Text.Text,
                                              _StartChildWorkflowExecution'taskQueue :: !Data.Text.Text,
                                              _StartChildWorkflowExecution'input :: !(Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload),
                                              _StartChildWorkflowExecution'workflowExecutionTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                              _StartChildWorkflowExecution'workflowRunTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                              _StartChildWorkflowExecution'workflowTaskTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                              _StartChildWorkflowExecution'parentClosePolicy :: !Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow.ParentClosePolicy,
                                              _StartChildWorkflowExecution'workflowIdReusePolicy :: !Proto.Temporal.Api.Enums.V1.Workflow.WorkflowIdReusePolicy,
                                              _StartChildWorkflowExecution'retryPolicy :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy),
                                              _StartChildWorkflowExecution'cronSchedule :: !Data.Text.Text,
                                              _StartChildWorkflowExecution'headers :: !(Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload),
                                              _StartChildWorkflowExecution'memo :: !(Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload),
                                              _StartChildWorkflowExecution'searchAttributes :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes),
                                              _StartChildWorkflowExecution'cancellationType :: !Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow.ChildWorkflowCancellationType,
                                              _StartChildWorkflowExecution'versioningIntent :: !Proto.Temporal.Sdk.Core.Common.Common.VersioningIntent,
                                              _StartChildWorkflowExecution'priority :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority),
                                              _StartChildWorkflowExecution'versioningOverride :: !(Prelude.Maybe Proto.Temporal.Api.Workflow.V1.Message.VersioningOverride),
                                              _StartChildWorkflowExecution'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StartChildWorkflowExecution where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'seq
           (\ x__ y__ -> x__ {_StartChildWorkflowExecution'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "namespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'namespace
           (\ x__ y__ -> x__ {_StartChildWorkflowExecution'namespace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "workflowId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'workflowId
           (\ x__ y__ -> x__ {_StartChildWorkflowExecution'workflowId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "workflowType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'workflowType
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'workflowType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "taskQueue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'taskQueue
           (\ x__ y__ -> x__ {_StartChildWorkflowExecution'taskQueue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "input" [Proto.Temporal.Api.Common.V1.Message.Payload] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'input
           (\ x__ y__ -> x__ {_StartChildWorkflowExecution'input = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "vec'input" (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'input
           (\ x__ y__ -> x__ {_StartChildWorkflowExecution'input = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "workflowExecutionTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'workflowExecutionTimeout
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecution'workflowExecutionTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "maybe'workflowExecutionTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'workflowExecutionTimeout
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecution'workflowExecutionTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "workflowRunTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'workflowRunTimeout
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'workflowRunTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "maybe'workflowRunTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'workflowRunTimeout
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'workflowRunTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "workflowTaskTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'workflowTaskTimeout
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'workflowTaskTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "maybe'workflowTaskTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'workflowTaskTimeout
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'workflowTaskTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "parentClosePolicy" Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow.ParentClosePolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'parentClosePolicy
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'parentClosePolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "workflowIdReusePolicy" Proto.Temporal.Api.Enums.V1.Workflow.WorkflowIdReusePolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'workflowIdReusePolicy
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'workflowIdReusePolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "retryPolicy" Proto.Temporal.Api.Common.V1.Message.RetryPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'retryPolicy
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'retryPolicy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "maybe'retryPolicy" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'retryPolicy
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'retryPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "cronSchedule" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'cronSchedule
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'cronSchedule = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "headers" (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'headers
           (\ x__ y__ -> x__ {_StartChildWorkflowExecution'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "memo" (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'memo
           (\ x__ y__ -> x__ {_StartChildWorkflowExecution'memo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "searchAttributes" Proto.Temporal.Api.Common.V1.Message.SearchAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'searchAttributes
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'searchAttributes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "maybe'searchAttributes" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'searchAttributes
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'searchAttributes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "cancellationType" Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow.ChildWorkflowCancellationType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'cancellationType
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'cancellationType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "versioningIntent" Proto.Temporal.Sdk.Core.Common.Common.VersioningIntent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'versioningIntent
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'versioningIntent = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "priority" Proto.Temporal.Api.Common.V1.Message.Priority where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'priority
           (\ x__ y__ -> x__ {_StartChildWorkflowExecution'priority = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "maybe'priority" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'priority
           (\ x__ y__ -> x__ {_StartChildWorkflowExecution'priority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "versioningOverride" Proto.Temporal.Api.Workflow.V1.Message.VersioningOverride where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'versioningOverride
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'versioningOverride = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution "maybe'versioningOverride" (Prelude.Maybe Proto.Temporal.Api.Workflow.V1.Message.VersioningOverride) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'versioningOverride
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'versioningOverride = y__}))
        Prelude.id
instance Data.ProtoLens.Message StartChildWorkflowExecution where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_commands.StartChildWorkflowExecution"
  packedMessageDescriptor _
    = "\n\
      \\ESCStartChildWorkflowExecution\DC2\DLE\n\
      \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2\FS\n\
      \\tnamespace\CAN\STX \SOH(\tR\tnamespace\DC2\US\n\
      \\vworkflow_id\CAN\ETX \SOH(\tR\n\
      \workflowId\DC2#\n\
      \\rworkflow_type\CAN\EOT \SOH(\tR\fworkflowType\DC2\GS\n\
      \\n\
      \task_queue\CAN\ENQ \SOH(\tR\ttaskQueue\DC25\n\
      \\ENQinput\CAN\ACK \ETX(\v2\US.temporal.api.common.v1.PayloadR\ENQinput\DC2W\n\
      \\SUBworkflow_execution_timeout\CAN\a \SOH(\v2\EM.google.protobuf.DurationR\CANworkflowExecutionTimeout\DC2K\n\
      \\DC4workflow_run_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\DC2workflowRunTimeout\DC2M\n\
      \\NAKworkflow_task_timeout\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\DC3workflowTaskTimeout\DC2Y\n\
      \\DC3parent_close_policy\CAN\n\
      \ \SOH(\SO2).coresdk.child_workflow.ParentClosePolicyR\DC1parentClosePolicy\DC2e\n\
      \\CANworkflow_id_reuse_policy\CAN\f \SOH(\SO2,.temporal.api.enums.v1.WorkflowIdReusePolicyR\NAKworkflowIdReusePolicy\DC2F\n\
      \\fretry_policy\CAN\r \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2#\n\
      \\rcron_schedule\CAN\SO \SOH(\tR\fcronSchedule\DC2]\n\
      \\aheaders\CAN\SI \ETX(\v2C.coresdk.workflow_commands.StartChildWorkflowExecution.HeadersEntryR\aheaders\DC2T\n\
      \\EOTmemo\CAN\DLE \ETX(\v2@.coresdk.workflow_commands.StartChildWorkflowExecution.MemoEntryR\EOTmemo\DC2U\n\
      \\DC1search_attributes\CAN\DC1 \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC2b\n\
      \\DC1cancellation_type\CAN\DC2 \SOH(\SO25.coresdk.child_workflow.ChildWorkflowCancellationTypeR\DLEcancellationType\DC2M\n\
      \\DC1versioning_intent\CAN\DC3 \SOH(\SO2 .coresdk.common.VersioningIntentR\DLEversioningIntent\DC2<\n\
      \\bpriority\CAN\DC4 \SOH(\v2 .temporal.api.common.v1.PriorityR\bpriority\DC2]\n\
      \\DC3versioning_override\CAN\NAK \SOH(\v2,.temporal.api.workflow.v1.VersioningOverrideR\DC2versioningOverride\SUB[\n\
      \\fHeadersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH\SUBX\n\
      \\tMemoEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"seq")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution
        namespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "namespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"namespace")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution
        workflowId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workflowId")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution
        workflowType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workflowType")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution
        taskQueue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"taskQueue")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution
        input__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "input"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"input")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution
        workflowExecutionTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_execution_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowExecutionTimeout")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution
        workflowRunTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_run_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowRunTimeout")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution
        workflowTaskTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_task_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowTaskTimeout")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution
        parentClosePolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "parent_close_policy"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow.ParentClosePolicy)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"parentClosePolicy")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution
        workflowIdReusePolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_id_reuse_policy"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Workflow.WorkflowIdReusePolicy)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workflowIdReusePolicy")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution
        retryPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.RetryPolicy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'retryPolicy")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution
        cronSchedule__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cron_schedule"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"cronSchedule")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StartChildWorkflowExecution'HeadersEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"headers")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution
        memo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "memo"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StartChildWorkflowExecution'MemoEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"memo")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution
        searchAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "search_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.SearchAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'searchAttributes")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution
        cancellationType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancellation_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow.ChildWorkflowCancellationType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"cancellationType")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution
        versioningIntent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "versioning_intent"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Sdk.Core.Common.Common.VersioningIntent)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"versioningIntent")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution
        priority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "priority"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Priority)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'priority")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution
        versioningOverride__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "versioning_override"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Workflow.V1.Message.VersioningOverride)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'versioningOverride")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, seq__field_descriptor),
           (Data.ProtoLens.Tag 2, namespace__field_descriptor),
           (Data.ProtoLens.Tag 3, workflowId__field_descriptor),
           (Data.ProtoLens.Tag 4, workflowType__field_descriptor),
           (Data.ProtoLens.Tag 5, taskQueue__field_descriptor),
           (Data.ProtoLens.Tag 6, input__field_descriptor),
           (Data.ProtoLens.Tag 7, workflowExecutionTimeout__field_descriptor),
           (Data.ProtoLens.Tag 8, workflowRunTimeout__field_descriptor),
           (Data.ProtoLens.Tag 9, workflowTaskTimeout__field_descriptor),
           (Data.ProtoLens.Tag 10, parentClosePolicy__field_descriptor),
           (Data.ProtoLens.Tag 12, workflowIdReusePolicy__field_descriptor),
           (Data.ProtoLens.Tag 13, retryPolicy__field_descriptor),
           (Data.ProtoLens.Tag 14, cronSchedule__field_descriptor),
           (Data.ProtoLens.Tag 15, headers__field_descriptor),
           (Data.ProtoLens.Tag 16, memo__field_descriptor),
           (Data.ProtoLens.Tag 17, searchAttributes__field_descriptor),
           (Data.ProtoLens.Tag 18, cancellationType__field_descriptor),
           (Data.ProtoLens.Tag 19, versioningIntent__field_descriptor),
           (Data.ProtoLens.Tag 20, priority__field_descriptor),
           (Data.ProtoLens.Tag 21, versioningOverride__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StartChildWorkflowExecution'_unknownFields
        (\ x__ y__
           -> x__ {_StartChildWorkflowExecution'_unknownFields = y__})
  defMessage
    = StartChildWorkflowExecution'_constructor
        {_StartChildWorkflowExecution'seq = Data.ProtoLens.fieldDefault,
         _StartChildWorkflowExecution'namespace = Data.ProtoLens.fieldDefault,
         _StartChildWorkflowExecution'workflowId = Data.ProtoLens.fieldDefault,
         _StartChildWorkflowExecution'workflowType = Data.ProtoLens.fieldDefault,
         _StartChildWorkflowExecution'taskQueue = Data.ProtoLens.fieldDefault,
         _StartChildWorkflowExecution'input = Data.Vector.Generic.empty,
         _StartChildWorkflowExecution'workflowExecutionTimeout = Prelude.Nothing,
         _StartChildWorkflowExecution'workflowRunTimeout = Prelude.Nothing,
         _StartChildWorkflowExecution'workflowTaskTimeout = Prelude.Nothing,
         _StartChildWorkflowExecution'parentClosePolicy = Data.ProtoLens.fieldDefault,
         _StartChildWorkflowExecution'workflowIdReusePolicy = Data.ProtoLens.fieldDefault,
         _StartChildWorkflowExecution'retryPolicy = Prelude.Nothing,
         _StartChildWorkflowExecution'cronSchedule = Data.ProtoLens.fieldDefault,
         _StartChildWorkflowExecution'headers = Data.Map.empty,
         _StartChildWorkflowExecution'memo = Data.Map.empty,
         _StartChildWorkflowExecution'searchAttributes = Prelude.Nothing,
         _StartChildWorkflowExecution'cancellationType = Data.ProtoLens.fieldDefault,
         _StartChildWorkflowExecution'versioningIntent = Data.ProtoLens.fieldDefault,
         _StartChildWorkflowExecution'priority = Prelude.Nothing,
         _StartChildWorkflowExecution'versioningOverride = Prelude.Nothing,
         _StartChildWorkflowExecution'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StartChildWorkflowExecution
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Common.V1.Message.Payload
             -> Data.ProtoLens.Encoding.Bytes.Parser StartChildWorkflowExecution
        loop x mutable'input
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'input <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'input)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'input") frozen'input x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seq"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
                                  mutable'input
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "namespace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"namespace") y x)
                                  mutable'input
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "workflow_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"workflowId") y x)
                                  mutable'input
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "workflow_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowType") y x)
                                  mutable'input
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "task_queue"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskQueue") y x)
                                  mutable'input
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "input"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'input y)
                                loop x v
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_execution_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowExecutionTimeout") y x)
                                  mutable'input
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_run_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowRunTimeout") y x)
                                  mutable'input
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_task_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowTaskTimeout") y x)
                                  mutable'input
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "parent_close_policy"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"parentClosePolicy") y x)
                                  mutable'input
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "workflow_id_reuse_policy"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowIdReusePolicy") y x)
                                  mutable'input
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "retry_policy"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"retryPolicy") y x)
                                  mutable'input
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "cron_schedule"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cronSchedule") y x)
                                  mutable'input
                        122
                          -> do !(entry :: StartChildWorkflowExecution'HeadersEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                          (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                              Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                (Prelude.fromIntegral
                                                                                                   len)
                                                                                                Data.ProtoLens.parseMessage)
                                                                                          "headers"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"headers")
                                        (\ !t -> Data.Map.insert key value t) x)
                                     mutable'input)
                        130
                          -> do !(entry :: StartChildWorkflowExecution'MemoEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                           Data.ProtoLens.Encoding.Bytes.isolate
                                                                                             (Prelude.fromIntegral
                                                                                                len)
                                                                                             Data.ProtoLens.parseMessage)
                                                                                       "memo"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"memo")
                                        (\ !t -> Data.Map.insert key value t) x)
                                     mutable'input)
                        138
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "search_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"searchAttributes") y x)
                                  mutable'input
                        144
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "cancellation_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cancellationType") y x)
                                  mutable'input
                        152
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "versioning_intent"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"versioningIntent") y x)
                                  mutable'input
                        162
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "priority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"priority") y x)
                                  mutable'input
                        170
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "versioning_override"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"versioningOverride") y x)
                                  mutable'input
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'input
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'input <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'input)
          "StartChildWorkflowExecution"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"seq") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"namespace") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"workflowId") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"workflowType") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"taskQueue") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((Prelude..)
                                     (\ bs
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     Data.Text.Encoding.encodeUtf8 _v))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.ProtoLens.encodeMessage _v))
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'input") _x))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'workflowExecutionTimeout")
                                      _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'workflowRunTimeout") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field
                                               @"maybe'workflowTaskTimeout")
                                            _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"parentClosePolicy")
                                                 _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                 ((Prelude..)
                                                    ((Prelude..)
                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       Prelude.fromIntegral)
                                                    Prelude.fromEnum _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field
                                                       @"workflowIdReusePolicy")
                                                    _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                    ((Prelude..)
                                                       ((Prelude..)
                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          Prelude.fromIntegral)
                                                       Prelude.fromEnum _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'retryPolicy")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           106)
                                                        ((Prelude..)
                                                           (\ bs
                                                              -> (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      (Prelude.fromIntegral
                                                                         (Data.ByteString.length
                                                                            bs)))
                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                      bs))
                                                           Data.ProtoLens.encodeMessage _v))
                                              ((Data.Monoid.<>)
                                                 (let
                                                    _v
                                                      = Lens.Family2.view
                                                          (Data.ProtoLens.Field.field
                                                             @"cronSchedule")
                                                          _x
                                                  in
                                                    if (Prelude.==)
                                                         _v Data.ProtoLens.fieldDefault then
                                                        Data.Monoid.mempty
                                                    else
                                                        (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             114)
                                                          ((Prelude..)
                                                             (\ bs
                                                                -> (Data.Monoid.<>)
                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                        (Prelude.fromIntegral
                                                                           (Data.ByteString.length
                                                                              bs)))
                                                                     (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                        bs))
                                                             Data.Text.Encoding.encodeUtf8 _v))
                                                 ((Data.Monoid.<>)
                                                    (Data.Monoid.mconcat
                                                       (Prelude.map
                                                          (\ _v
                                                             -> (Data.Monoid.<>)
                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                     122)
                                                                  ((Prelude..)
                                                                     (\ bs
                                                                        -> (Data.Monoid.<>)
                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                (Prelude.fromIntegral
                                                                                   (Data.ByteString.length
                                                                                      bs)))
                                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                bs))
                                                                     Data.ProtoLens.encodeMessage
                                                                     (Lens.Family2.set
                                                                        (Data.ProtoLens.Field.field
                                                                           @"key")
                                                                        (Prelude.fst _v)
                                                                        (Lens.Family2.set
                                                                           (Data.ProtoLens.Field.field
                                                                              @"value")
                                                                           (Prelude.snd _v)
                                                                           (Data.ProtoLens.defMessage ::
                                                                              StartChildWorkflowExecution'HeadersEntry)))))
                                                          (Data.Map.toList
                                                             (Lens.Family2.view
                                                                (Data.ProtoLens.Field.field
                                                                   @"headers")
                                                                _x))))
                                                    ((Data.Monoid.<>)
                                                       (Data.Monoid.mconcat
                                                          (Prelude.map
                                                             (\ _v
                                                                -> (Data.Monoid.<>)
                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                        130)
                                                                     ((Prelude..)
                                                                        (\ bs
                                                                           -> (Data.Monoid.<>)
                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   (Prelude.fromIntegral
                                                                                      (Data.ByteString.length
                                                                                         bs)))
                                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                   bs))
                                                                        Data.ProtoLens.encodeMessage
                                                                        (Lens.Family2.set
                                                                           (Data.ProtoLens.Field.field
                                                                              @"key")
                                                                           (Prelude.fst _v)
                                                                           (Lens.Family2.set
                                                                              (Data.ProtoLens.Field.field
                                                                                 @"value")
                                                                              (Prelude.snd _v)
                                                                              (Data.ProtoLens.defMessage ::
                                                                                 StartChildWorkflowExecution'MemoEntry)))))
                                                             (Data.Map.toList
                                                                (Lens.Family2.view
                                                                   (Data.ProtoLens.Field.field
                                                                      @"memo")
                                                                   _x))))
                                                       ((Data.Monoid.<>)
                                                          (case
                                                               Lens.Family2.view
                                                                 (Data.ProtoLens.Field.field
                                                                    @"maybe'searchAttributes")
                                                                 _x
                                                           of
                                                             Prelude.Nothing -> Data.Monoid.mempty
                                                             (Prelude.Just _v)
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       138)
                                                                    ((Prelude..)
                                                                       (\ bs
                                                                          -> (Data.Monoid.<>)
                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                  (Prelude.fromIntegral
                                                                                     (Data.ByteString.length
                                                                                        bs)))
                                                                               (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                  bs))
                                                                       Data.ProtoLens.encodeMessage
                                                                       _v))
                                                          ((Data.Monoid.<>)
                                                             (let
                                                                _v
                                                                  = Lens.Family2.view
                                                                      (Data.ProtoLens.Field.field
                                                                         @"cancellationType")
                                                                      _x
                                                              in
                                                                if (Prelude.==)
                                                                     _v
                                                                     Data.ProtoLens.fieldDefault then
                                                                    Data.Monoid.mempty
                                                                else
                                                                    (Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         144)
                                                                      ((Prelude..)
                                                                         ((Prelude..)
                                                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                            Prelude.fromIntegral)
                                                                         Prelude.fromEnum _v))
                                                             ((Data.Monoid.<>)
                                                                (let
                                                                   _v
                                                                     = Lens.Family2.view
                                                                         (Data.ProtoLens.Field.field
                                                                            @"versioningIntent")
                                                                         _x
                                                                 in
                                                                   if (Prelude.==)
                                                                        _v
                                                                        Data.ProtoLens.fieldDefault then
                                                                       Data.Monoid.mempty
                                                                   else
                                                                       (Data.Monoid.<>)
                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                            152)
                                                                         ((Prelude..)
                                                                            ((Prelude..)
                                                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                               Prelude.fromIntegral)
                                                                            Prelude.fromEnum _v))
                                                                ((Data.Monoid.<>)
                                                                   (case
                                                                        Lens.Family2.view
                                                                          (Data.ProtoLens.Field.field
                                                                             @"maybe'priority")
                                                                          _x
                                                                    of
                                                                      Prelude.Nothing
                                                                        -> Data.Monoid.mempty
                                                                      (Prelude.Just _v)
                                                                        -> (Data.Monoid.<>)
                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                162)
                                                                             ((Prelude..)
                                                                                (\ bs
                                                                                   -> (Data.Monoid.<>)
                                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                           (Prelude.fromIntegral
                                                                                              (Data.ByteString.length
                                                                                                 bs)))
                                                                                        (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                           bs))
                                                                                Data.ProtoLens.encodeMessage
                                                                                _v))
                                                                   ((Data.Monoid.<>)
                                                                      (case
                                                                           Lens.Family2.view
                                                                             (Data.ProtoLens.Field.field
                                                                                @"maybe'versioningOverride")
                                                                             _x
                                                                       of
                                                                         Prelude.Nothing
                                                                           -> Data.Monoid.mempty
                                                                         (Prelude.Just _v)
                                                                           -> (Data.Monoid.<>)
                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   170)
                                                                                ((Prelude..)
                                                                                   (\ bs
                                                                                      -> (Data.Monoid.<>)
                                                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                              (Prelude.fromIntegral
                                                                                                 (Data.ByteString.length
                                                                                                    bs)))
                                                                                           (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                              bs))
                                                                                   Data.ProtoLens.encodeMessage
                                                                                   _v))
                                                                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                         (Lens.Family2.view
                                                                            Data.ProtoLens.unknownFields
                                                                            _x)))))))))))))))))))))
instance Control.DeepSeq.NFData StartChildWorkflowExecution where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StartChildWorkflowExecution'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StartChildWorkflowExecution'seq x__)
                (Control.DeepSeq.deepseq
                   (_StartChildWorkflowExecution'namespace x__)
                   (Control.DeepSeq.deepseq
                      (_StartChildWorkflowExecution'workflowId x__)
                      (Control.DeepSeq.deepseq
                         (_StartChildWorkflowExecution'workflowType x__)
                         (Control.DeepSeq.deepseq
                            (_StartChildWorkflowExecution'taskQueue x__)
                            (Control.DeepSeq.deepseq
                               (_StartChildWorkflowExecution'input x__)
                               (Control.DeepSeq.deepseq
                                  (_StartChildWorkflowExecution'workflowExecutionTimeout x__)
                                  (Control.DeepSeq.deepseq
                                     (_StartChildWorkflowExecution'workflowRunTimeout x__)
                                     (Control.DeepSeq.deepseq
                                        (_StartChildWorkflowExecution'workflowTaskTimeout x__)
                                        (Control.DeepSeq.deepseq
                                           (_StartChildWorkflowExecution'parentClosePolicy x__)
                                           (Control.DeepSeq.deepseq
                                              (_StartChildWorkflowExecution'workflowIdReusePolicy
                                                 x__)
                                              (Control.DeepSeq.deepseq
                                                 (_StartChildWorkflowExecution'retryPolicy x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_StartChildWorkflowExecution'cronSchedule x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_StartChildWorkflowExecution'headers x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_StartChildWorkflowExecution'memo x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_StartChildWorkflowExecution'searchAttributes
                                                                x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_StartChildWorkflowExecution'cancellationType
                                                                   x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_StartChildWorkflowExecution'versioningIntent
                                                                      x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_StartChildWorkflowExecution'priority
                                                                         x__)
                                                                      (Control.DeepSeq.deepseq
                                                                         (_StartChildWorkflowExecution'versioningOverride
                                                                            x__)
                                                                         ()))))))))))))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.key' @:: Lens' StartChildWorkflowExecution'HeadersEntry Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.value' @:: Lens' StartChildWorkflowExecution'HeadersEntry Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'value' @:: Lens' StartChildWorkflowExecution'HeadersEntry (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data StartChildWorkflowExecution'HeadersEntry
  = StartChildWorkflowExecution'HeadersEntry'_constructor {_StartChildWorkflowExecution'HeadersEntry'key :: !Data.Text.Text,
                                                           _StartChildWorkflowExecution'HeadersEntry'value :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                                           _StartChildWorkflowExecution'HeadersEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StartChildWorkflowExecution'HeadersEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution'HeadersEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'HeadersEntry'key
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'HeadersEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution'HeadersEntry "value" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'HeadersEntry'value
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'HeadersEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution'HeadersEntry "maybe'value" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'HeadersEntry'value
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'HeadersEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message StartChildWorkflowExecution'HeadersEntry where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_commands.StartChildWorkflowExecution.HeadersEntry"
  packedMessageDescriptor _
    = "\n\
      \\fHeadersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution'HeadersEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution'HeadersEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StartChildWorkflowExecution'HeadersEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_StartChildWorkflowExecution'HeadersEntry'_unknownFields = y__})
  defMessage
    = StartChildWorkflowExecution'HeadersEntry'_constructor
        {_StartChildWorkflowExecution'HeadersEntry'key = Data.ProtoLens.fieldDefault,
         _StartChildWorkflowExecution'HeadersEntry'value = Prelude.Nothing,
         _StartChildWorkflowExecution'HeadersEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StartChildWorkflowExecution'HeadersEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser StartChildWorkflowExecution'HeadersEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HeadersEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData StartChildWorkflowExecution'HeadersEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StartChildWorkflowExecution'HeadersEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StartChildWorkflowExecution'HeadersEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_StartChildWorkflowExecution'HeadersEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.key' @:: Lens' StartChildWorkflowExecution'MemoEntry Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.value' @:: Lens' StartChildWorkflowExecution'MemoEntry Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'value' @:: Lens' StartChildWorkflowExecution'MemoEntry (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data StartChildWorkflowExecution'MemoEntry
  = StartChildWorkflowExecution'MemoEntry'_constructor {_StartChildWorkflowExecution'MemoEntry'key :: !Data.Text.Text,
                                                        _StartChildWorkflowExecution'MemoEntry'value :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                                        _StartChildWorkflowExecution'MemoEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StartChildWorkflowExecution'MemoEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution'MemoEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'MemoEntry'key
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'MemoEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution'MemoEntry "value" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'MemoEntry'value
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'MemoEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecution'MemoEntry "maybe'value" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecution'MemoEntry'value
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecution'MemoEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message StartChildWorkflowExecution'MemoEntry where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_commands.StartChildWorkflowExecution.MemoEntry"
  packedMessageDescriptor _
    = "\n\
      \\tMemoEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution'MemoEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecution'MemoEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StartChildWorkflowExecution'MemoEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_StartChildWorkflowExecution'MemoEntry'_unknownFields = y__})
  defMessage
    = StartChildWorkflowExecution'MemoEntry'_constructor
        {_StartChildWorkflowExecution'MemoEntry'key = Data.ProtoLens.fieldDefault,
         _StartChildWorkflowExecution'MemoEntry'value = Prelude.Nothing,
         _StartChildWorkflowExecution'MemoEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StartChildWorkflowExecution'MemoEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser StartChildWorkflowExecution'MemoEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MemoEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData StartChildWorkflowExecution'MemoEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StartChildWorkflowExecution'MemoEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StartChildWorkflowExecution'MemoEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_StartChildWorkflowExecution'MemoEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.seq' @:: Lens' StartTimer Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.startToFireTimeout' @:: Lens' StartTimer Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'startToFireTimeout' @:: Lens' StartTimer (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data StartTimer
  = StartTimer'_constructor {_StartTimer'seq :: !Data.Word.Word32,
                             _StartTimer'startToFireTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                             _StartTimer'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StartTimer where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StartTimer "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartTimer'seq (\ x__ y__ -> x__ {_StartTimer'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartTimer "startToFireTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartTimer'startToFireTimeout
           (\ x__ y__ -> x__ {_StartTimer'startToFireTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartTimer "maybe'startToFireTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartTimer'startToFireTimeout
           (\ x__ y__ -> x__ {_StartTimer'startToFireTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Message StartTimer where
  messageName _
    = Data.Text.pack "coresdk.workflow_commands.StartTimer"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \StartTimer\DC2\DLE\n\
      \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2L\n\
      \\NAKstart_to_fire_timeout\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\DC2startToFireTimeout"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"seq")) ::
              Data.ProtoLens.FieldDescriptor StartTimer
        startToFireTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_to_fire_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startToFireTimeout")) ::
              Data.ProtoLens.FieldDescriptor StartTimer
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, seq__field_descriptor),
           (Data.ProtoLens.Tag 2, startToFireTimeout__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StartTimer'_unknownFields
        (\ x__ y__ -> x__ {_StartTimer'_unknownFields = y__})
  defMessage
    = StartTimer'_constructor
        {_StartTimer'seq = Data.ProtoLens.fieldDefault,
         _StartTimer'startToFireTimeout = Prelude.Nothing,
         _StartTimer'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StartTimer -> Data.ProtoLens.Encoding.Bytes.Parser StartTimer
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_to_fire_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startToFireTimeout") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StartTimer"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"seq") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'startToFireTimeout") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData StartTimer where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StartTimer'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StartTimer'seq x__)
                (Control.DeepSeq.deepseq (_StartTimer'startToFireTimeout x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.protocolInstanceId' @:: Lens' UpdateResponse Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'response' @:: Lens' UpdateResponse (Prelude.Maybe UpdateResponse'Response)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'accepted' @:: Lens' UpdateResponse (Prelude.Maybe Proto.Google.Protobuf.Empty.Empty)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.accepted' @:: Lens' UpdateResponse Proto.Google.Protobuf.Empty.Empty@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'rejected' @:: Lens' UpdateResponse (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.rejected' @:: Lens' UpdateResponse Proto.Temporal.Api.Failure.V1.Message.Failure@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'completed' @:: Lens' UpdateResponse (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.completed' @:: Lens' UpdateResponse Proto.Temporal.Api.Common.V1.Message.Payload@ -}
data UpdateResponse
  = UpdateResponse'_constructor {_UpdateResponse'protocolInstanceId :: !Data.Text.Text,
                                 _UpdateResponse'response :: !(Prelude.Maybe UpdateResponse'Response),
                                 _UpdateResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpdateResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data UpdateResponse'Response
  = UpdateResponse'Accepted !Proto.Google.Protobuf.Empty.Empty |
    UpdateResponse'Rejected !Proto.Temporal.Api.Failure.V1.Message.Failure |
    UpdateResponse'Completed !Proto.Temporal.Api.Common.V1.Message.Payload
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField UpdateResponse "protocolInstanceId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateResponse'protocolInstanceId
           (\ x__ y__ -> x__ {_UpdateResponse'protocolInstanceId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateResponse "maybe'response" (Prelude.Maybe UpdateResponse'Response) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateResponse'response
           (\ x__ y__ -> x__ {_UpdateResponse'response = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateResponse "maybe'accepted" (Prelude.Maybe Proto.Google.Protobuf.Empty.Empty) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateResponse'response
           (\ x__ y__ -> x__ {_UpdateResponse'response = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (UpdateResponse'Accepted x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap UpdateResponse'Accepted y__))
instance Data.ProtoLens.Field.HasField UpdateResponse "accepted" Proto.Google.Protobuf.Empty.Empty where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateResponse'response
           (\ x__ y__ -> x__ {_UpdateResponse'response = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (UpdateResponse'Accepted x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap UpdateResponse'Accepted y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField UpdateResponse "maybe'rejected" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateResponse'response
           (\ x__ y__ -> x__ {_UpdateResponse'response = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (UpdateResponse'Rejected x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap UpdateResponse'Rejected y__))
instance Data.ProtoLens.Field.HasField UpdateResponse "rejected" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateResponse'response
           (\ x__ y__ -> x__ {_UpdateResponse'response = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (UpdateResponse'Rejected x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap UpdateResponse'Rejected y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField UpdateResponse "maybe'completed" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateResponse'response
           (\ x__ y__ -> x__ {_UpdateResponse'response = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (UpdateResponse'Completed x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap UpdateResponse'Completed y__))
instance Data.ProtoLens.Field.HasField UpdateResponse "completed" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateResponse'response
           (\ x__ y__ -> x__ {_UpdateResponse'response = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (UpdateResponse'Completed x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap UpdateResponse'Completed y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message UpdateResponse where
  messageName _
    = Data.Text.pack "coresdk.workflow_commands.UpdateResponse"
  packedMessageDescriptor _
    = "\n\
      \\SOUpdateResponse\DC20\n\
      \\DC4protocol_instance_id\CAN\SOH \SOH(\tR\DC2protocolInstanceId\DC24\n\
      \\baccepted\CAN\STX \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\baccepted\DC2>\n\
      \\brejected\CAN\ETX \SOH(\v2 .temporal.api.failure.v1.FailureH\NULR\brejected\DC2?\n\
      \\tcompleted\CAN\EOT \SOH(\v2\US.temporal.api.common.v1.PayloadH\NULR\tcompletedB\n\
      \\n\
      \\bresponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        protocolInstanceId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol_instance_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"protocolInstanceId")) ::
              Data.ProtoLens.FieldDescriptor UpdateResponse
        accepted__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "accepted"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Empty.Empty)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'accepted")) ::
              Data.ProtoLens.FieldDescriptor UpdateResponse
        rejected__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rejected"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rejected")) ::
              Data.ProtoLens.FieldDescriptor UpdateResponse
        completed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "completed"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'completed")) ::
              Data.ProtoLens.FieldDescriptor UpdateResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, protocolInstanceId__field_descriptor),
           (Data.ProtoLens.Tag 2, accepted__field_descriptor),
           (Data.ProtoLens.Tag 3, rejected__field_descriptor),
           (Data.ProtoLens.Tag 4, completed__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpdateResponse'_unknownFields
        (\ x__ y__ -> x__ {_UpdateResponse'_unknownFields = y__})
  defMessage
    = UpdateResponse'_constructor
        {_UpdateResponse'protocolInstanceId = Data.ProtoLens.fieldDefault,
         _UpdateResponse'response = Prelude.Nothing,
         _UpdateResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UpdateResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser UpdateResponse
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "protocol_instance_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"protocolInstanceId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "accepted"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"accepted") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "rejected"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"rejected") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "completed"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"completed") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UpdateResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"protocolInstanceId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'response") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (UpdateResponse'Accepted v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage v)
                   (Prelude.Just (UpdateResponse'Rejected v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage v)
                   (Prelude.Just (UpdateResponse'Completed v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData UpdateResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UpdateResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UpdateResponse'protocolInstanceId x__)
                (Control.DeepSeq.deepseq (_UpdateResponse'response x__) ()))
instance Control.DeepSeq.NFData UpdateResponse'Response where
  rnf (UpdateResponse'Accepted x__) = Control.DeepSeq.rnf x__
  rnf (UpdateResponse'Rejected x__) = Control.DeepSeq.rnf x__
  rnf (UpdateResponse'Completed x__) = Control.DeepSeq.rnf x__
_UpdateResponse'Accepted ::
  Data.ProtoLens.Prism.Prism' UpdateResponse'Response Proto.Google.Protobuf.Empty.Empty
_UpdateResponse'Accepted
  = Data.ProtoLens.Prism.prism'
      UpdateResponse'Accepted
      (\ p__
         -> case p__ of
              (UpdateResponse'Accepted p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_UpdateResponse'Rejected ::
  Data.ProtoLens.Prism.Prism' UpdateResponse'Response Proto.Temporal.Api.Failure.V1.Message.Failure
_UpdateResponse'Rejected
  = Data.ProtoLens.Prism.prism'
      UpdateResponse'Rejected
      (\ p__
         -> case p__ of
              (UpdateResponse'Rejected p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_UpdateResponse'Completed ::
  Data.ProtoLens.Prism.Prism' UpdateResponse'Response Proto.Temporal.Api.Common.V1.Message.Payload
_UpdateResponse'Completed
  = Data.ProtoLens.Prism.prism'
      UpdateResponse'Completed
      (\ p__
         -> case p__ of
              (UpdateResponse'Completed p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.searchAttributes' @:: Lens' UpsertWorkflowSearchAttributes Proto.Temporal.Api.Common.V1.Message.SearchAttributes@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'searchAttributes' @:: Lens' UpsertWorkflowSearchAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes)@ -}
data UpsertWorkflowSearchAttributes
  = UpsertWorkflowSearchAttributes'_constructor {_UpsertWorkflowSearchAttributes'searchAttributes :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes),
                                                 _UpsertWorkflowSearchAttributes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpsertWorkflowSearchAttributes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UpsertWorkflowSearchAttributes "searchAttributes" Proto.Temporal.Api.Common.V1.Message.SearchAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpsertWorkflowSearchAttributes'searchAttributes
           (\ x__ y__
              -> x__ {_UpsertWorkflowSearchAttributes'searchAttributes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpsertWorkflowSearchAttributes "maybe'searchAttributes" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpsertWorkflowSearchAttributes'searchAttributes
           (\ x__ y__
              -> x__ {_UpsertWorkflowSearchAttributes'searchAttributes = y__}))
        Prelude.id
instance Data.ProtoLens.Message UpsertWorkflowSearchAttributes where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_commands.UpsertWorkflowSearchAttributes"
  packedMessageDescriptor _
    = "\n\
      \\RSUpsertWorkflowSearchAttributes\DC2U\n\
      \\DC1search_attributes\CAN\SOH \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        searchAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "search_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.SearchAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'searchAttributes")) ::
              Data.ProtoLens.FieldDescriptor UpsertWorkflowSearchAttributes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, searchAttributes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpsertWorkflowSearchAttributes'_unknownFields
        (\ x__ y__
           -> x__ {_UpsertWorkflowSearchAttributes'_unknownFields = y__})
  defMessage
    = UpsertWorkflowSearchAttributes'_constructor
        {_UpsertWorkflowSearchAttributes'searchAttributes = Prelude.Nothing,
         _UpsertWorkflowSearchAttributes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UpsertWorkflowSearchAttributes
          -> Data.ProtoLens.Encoding.Bytes.Parser UpsertWorkflowSearchAttributes
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "search_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"searchAttributes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "UpsertWorkflowSearchAttributes"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'searchAttributes") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData UpsertWorkflowSearchAttributes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UpsertWorkflowSearchAttributes'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UpsertWorkflowSearchAttributes'searchAttributes x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.userMetadata' @:: Lens' WorkflowCommand Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'userMetadata' @:: Lens' WorkflowCommand (Prelude.Maybe Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.eventGroupMarkers' @:: Lens' WorkflowCommand [Proto.Temporal.Api.Sdk.V1.EventGroupMarker.EventGroupMarker]@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.vec'eventGroupMarkers' @:: Lens' WorkflowCommand (Data.Vector.Vector Proto.Temporal.Api.Sdk.V1.EventGroupMarker.EventGroupMarker)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'variant' @:: Lens' WorkflowCommand (Prelude.Maybe WorkflowCommand'Variant)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'startTimer' @:: Lens' WorkflowCommand (Prelude.Maybe StartTimer)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.startTimer' @:: Lens' WorkflowCommand StartTimer@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'scheduleActivity' @:: Lens' WorkflowCommand (Prelude.Maybe ScheduleActivity)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.scheduleActivity' @:: Lens' WorkflowCommand ScheduleActivity@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'respondToQuery' @:: Lens' WorkflowCommand (Prelude.Maybe QueryResult)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.respondToQuery' @:: Lens' WorkflowCommand QueryResult@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'requestCancelActivity' @:: Lens' WorkflowCommand (Prelude.Maybe RequestCancelActivity)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.requestCancelActivity' @:: Lens' WorkflowCommand RequestCancelActivity@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'cancelTimer' @:: Lens' WorkflowCommand (Prelude.Maybe CancelTimer)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.cancelTimer' @:: Lens' WorkflowCommand CancelTimer@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'completeWorkflowExecution' @:: Lens' WorkflowCommand (Prelude.Maybe CompleteWorkflowExecution)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.completeWorkflowExecution' @:: Lens' WorkflowCommand CompleteWorkflowExecution@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'failWorkflowExecution' @:: Lens' WorkflowCommand (Prelude.Maybe FailWorkflowExecution)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.failWorkflowExecution' @:: Lens' WorkflowCommand FailWorkflowExecution@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'continueAsNewWorkflowExecution' @:: Lens' WorkflowCommand (Prelude.Maybe ContinueAsNewWorkflowExecution)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.continueAsNewWorkflowExecution' @:: Lens' WorkflowCommand ContinueAsNewWorkflowExecution@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'cancelWorkflowExecution' @:: Lens' WorkflowCommand (Prelude.Maybe CancelWorkflowExecution)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.cancelWorkflowExecution' @:: Lens' WorkflowCommand CancelWorkflowExecution@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'setPatchMarker' @:: Lens' WorkflowCommand (Prelude.Maybe SetPatchMarker)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.setPatchMarker' @:: Lens' WorkflowCommand SetPatchMarker@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'startChildWorkflowExecution' @:: Lens' WorkflowCommand (Prelude.Maybe StartChildWorkflowExecution)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.startChildWorkflowExecution' @:: Lens' WorkflowCommand StartChildWorkflowExecution@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'cancelChildWorkflowExecution' @:: Lens' WorkflowCommand (Prelude.Maybe CancelChildWorkflowExecution)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.cancelChildWorkflowExecution' @:: Lens' WorkflowCommand CancelChildWorkflowExecution@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'requestCancelExternalWorkflowExecution' @:: Lens' WorkflowCommand (Prelude.Maybe RequestCancelExternalWorkflowExecution)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.requestCancelExternalWorkflowExecution' @:: Lens' WorkflowCommand RequestCancelExternalWorkflowExecution@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'signalExternalWorkflowExecution' @:: Lens' WorkflowCommand (Prelude.Maybe SignalExternalWorkflowExecution)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.signalExternalWorkflowExecution' @:: Lens' WorkflowCommand SignalExternalWorkflowExecution@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'cancelSignalWorkflow' @:: Lens' WorkflowCommand (Prelude.Maybe CancelSignalWorkflow)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.cancelSignalWorkflow' @:: Lens' WorkflowCommand CancelSignalWorkflow@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'scheduleLocalActivity' @:: Lens' WorkflowCommand (Prelude.Maybe ScheduleLocalActivity)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.scheduleLocalActivity' @:: Lens' WorkflowCommand ScheduleLocalActivity@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'requestCancelLocalActivity' @:: Lens' WorkflowCommand (Prelude.Maybe RequestCancelLocalActivity)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.requestCancelLocalActivity' @:: Lens' WorkflowCommand RequestCancelLocalActivity@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'upsertWorkflowSearchAttributes' @:: Lens' WorkflowCommand (Prelude.Maybe UpsertWorkflowSearchAttributes)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.upsertWorkflowSearchAttributes' @:: Lens' WorkflowCommand UpsertWorkflowSearchAttributes@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'modifyWorkflowProperties' @:: Lens' WorkflowCommand (Prelude.Maybe ModifyWorkflowProperties)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.modifyWorkflowProperties' @:: Lens' WorkflowCommand ModifyWorkflowProperties@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'updateResponse' @:: Lens' WorkflowCommand (Prelude.Maybe UpdateResponse)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.updateResponse' @:: Lens' WorkflowCommand UpdateResponse@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'scheduleNexusOperation' @:: Lens' WorkflowCommand (Prelude.Maybe ScheduleNexusOperation)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.scheduleNexusOperation' @:: Lens' WorkflowCommand ScheduleNexusOperation@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.maybe'requestCancelNexusOperation' @:: Lens' WorkflowCommand (Prelude.Maybe RequestCancelNexusOperation)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields.requestCancelNexusOperation' @:: Lens' WorkflowCommand RequestCancelNexusOperation@ -}
data WorkflowCommand
  = WorkflowCommand'_constructor {_WorkflowCommand'userMetadata :: !(Prelude.Maybe Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata),
                                  _WorkflowCommand'eventGroupMarkers :: !(Data.Vector.Vector Proto.Temporal.Api.Sdk.V1.EventGroupMarker.EventGroupMarker),
                                  _WorkflowCommand'variant :: !(Prelude.Maybe WorkflowCommand'Variant),
                                  _WorkflowCommand'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkflowCommand where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data WorkflowCommand'Variant
  = WorkflowCommand'StartTimer !StartTimer |
    WorkflowCommand'ScheduleActivity !ScheduleActivity |
    WorkflowCommand'RespondToQuery !QueryResult |
    WorkflowCommand'RequestCancelActivity !RequestCancelActivity |
    WorkflowCommand'CancelTimer !CancelTimer |
    WorkflowCommand'CompleteWorkflowExecution !CompleteWorkflowExecution |
    WorkflowCommand'FailWorkflowExecution !FailWorkflowExecution |
    WorkflowCommand'ContinueAsNewWorkflowExecution !ContinueAsNewWorkflowExecution |
    WorkflowCommand'CancelWorkflowExecution !CancelWorkflowExecution |
    WorkflowCommand'SetPatchMarker !SetPatchMarker |
    WorkflowCommand'StartChildWorkflowExecution !StartChildWorkflowExecution |
    WorkflowCommand'CancelChildWorkflowExecution !CancelChildWorkflowExecution |
    WorkflowCommand'RequestCancelExternalWorkflowExecution !RequestCancelExternalWorkflowExecution |
    WorkflowCommand'SignalExternalWorkflowExecution !SignalExternalWorkflowExecution |
    WorkflowCommand'CancelSignalWorkflow !CancelSignalWorkflow |
    WorkflowCommand'ScheduleLocalActivity !ScheduleLocalActivity |
    WorkflowCommand'RequestCancelLocalActivity !RequestCancelLocalActivity |
    WorkflowCommand'UpsertWorkflowSearchAttributes !UpsertWorkflowSearchAttributes |
    WorkflowCommand'ModifyWorkflowProperties !ModifyWorkflowProperties |
    WorkflowCommand'UpdateResponse !UpdateResponse |
    WorkflowCommand'ScheduleNexusOperation !ScheduleNexusOperation |
    WorkflowCommand'RequestCancelNexusOperation !RequestCancelNexusOperation
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField WorkflowCommand "userMetadata" Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'userMetadata
           (\ x__ y__ -> x__ {_WorkflowCommand'userMetadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'userMetadata" (Prelude.Maybe Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'userMetadata
           (\ x__ y__ -> x__ {_WorkflowCommand'userMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowCommand "eventGroupMarkers" [Proto.Temporal.Api.Sdk.V1.EventGroupMarker.EventGroupMarker] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'eventGroupMarkers
           (\ x__ y__ -> x__ {_WorkflowCommand'eventGroupMarkers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "vec'eventGroupMarkers" (Data.Vector.Vector Proto.Temporal.Api.Sdk.V1.EventGroupMarker.EventGroupMarker) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'eventGroupMarkers
           (\ x__ y__ -> x__ {_WorkflowCommand'eventGroupMarkers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'variant" (Prelude.Maybe WorkflowCommand'Variant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'startTimer" (Prelude.Maybe StartTimer) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'StartTimer x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap WorkflowCommand'StartTimer y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "startTimer" StartTimer where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'StartTimer x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap WorkflowCommand'StartTimer y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'scheduleActivity" (Prelude.Maybe ScheduleActivity) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'ScheduleActivity x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap WorkflowCommand'ScheduleActivity y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "scheduleActivity" ScheduleActivity where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'ScheduleActivity x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap WorkflowCommand'ScheduleActivity y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'respondToQuery" (Prelude.Maybe QueryResult) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'RespondToQuery x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap WorkflowCommand'RespondToQuery y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "respondToQuery" QueryResult where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'RespondToQuery x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap WorkflowCommand'RespondToQuery y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'requestCancelActivity" (Prelude.Maybe RequestCancelActivity) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'RequestCancelActivity x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap WorkflowCommand'RequestCancelActivity y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "requestCancelActivity" RequestCancelActivity where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'RequestCancelActivity x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap WorkflowCommand'RequestCancelActivity y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'cancelTimer" (Prelude.Maybe CancelTimer) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'CancelTimer x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap WorkflowCommand'CancelTimer y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "cancelTimer" CancelTimer where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'CancelTimer x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap WorkflowCommand'CancelTimer y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'completeWorkflowExecution" (Prelude.Maybe CompleteWorkflowExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'CompleteWorkflowExecution x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap WorkflowCommand'CompleteWorkflowExecution y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "completeWorkflowExecution" CompleteWorkflowExecution where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'CompleteWorkflowExecution x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap WorkflowCommand'CompleteWorkflowExecution y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'failWorkflowExecution" (Prelude.Maybe FailWorkflowExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'FailWorkflowExecution x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap WorkflowCommand'FailWorkflowExecution y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "failWorkflowExecution" FailWorkflowExecution where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'FailWorkflowExecution x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap WorkflowCommand'FailWorkflowExecution y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'continueAsNewWorkflowExecution" (Prelude.Maybe ContinueAsNewWorkflowExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'ContinueAsNewWorkflowExecution x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   WorkflowCommand'ContinueAsNewWorkflowExecution y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "continueAsNewWorkflowExecution" ContinueAsNewWorkflowExecution where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'ContinueAsNewWorkflowExecution x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      WorkflowCommand'ContinueAsNewWorkflowExecution y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'cancelWorkflowExecution" (Prelude.Maybe CancelWorkflowExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'CancelWorkflowExecution x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap WorkflowCommand'CancelWorkflowExecution y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "cancelWorkflowExecution" CancelWorkflowExecution where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'CancelWorkflowExecution x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap WorkflowCommand'CancelWorkflowExecution y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'setPatchMarker" (Prelude.Maybe SetPatchMarker) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'SetPatchMarker x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap WorkflowCommand'SetPatchMarker y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "setPatchMarker" SetPatchMarker where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'SetPatchMarker x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap WorkflowCommand'SetPatchMarker y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'startChildWorkflowExecution" (Prelude.Maybe StartChildWorkflowExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'StartChildWorkflowExecution x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap WorkflowCommand'StartChildWorkflowExecution y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "startChildWorkflowExecution" StartChildWorkflowExecution where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'StartChildWorkflowExecution x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap WorkflowCommand'StartChildWorkflowExecution y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'cancelChildWorkflowExecution" (Prelude.Maybe CancelChildWorkflowExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'CancelChildWorkflowExecution x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap WorkflowCommand'CancelChildWorkflowExecution y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "cancelChildWorkflowExecution" CancelChildWorkflowExecution where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'CancelChildWorkflowExecution x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap WorkflowCommand'CancelChildWorkflowExecution y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'requestCancelExternalWorkflowExecution" (Prelude.Maybe RequestCancelExternalWorkflowExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'RequestCancelExternalWorkflowExecution x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   WorkflowCommand'RequestCancelExternalWorkflowExecution y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "requestCancelExternalWorkflowExecution" RequestCancelExternalWorkflowExecution where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'RequestCancelExternalWorkflowExecution x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      WorkflowCommand'RequestCancelExternalWorkflowExecution y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'signalExternalWorkflowExecution" (Prelude.Maybe SignalExternalWorkflowExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'SignalExternalWorkflowExecution x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   WorkflowCommand'SignalExternalWorkflowExecution y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "signalExternalWorkflowExecution" SignalExternalWorkflowExecution where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'SignalExternalWorkflowExecution x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      WorkflowCommand'SignalExternalWorkflowExecution y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'cancelSignalWorkflow" (Prelude.Maybe CancelSignalWorkflow) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'CancelSignalWorkflow x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap WorkflowCommand'CancelSignalWorkflow y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "cancelSignalWorkflow" CancelSignalWorkflow where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'CancelSignalWorkflow x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap WorkflowCommand'CancelSignalWorkflow y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'scheduleLocalActivity" (Prelude.Maybe ScheduleLocalActivity) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'ScheduleLocalActivity x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap WorkflowCommand'ScheduleLocalActivity y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "scheduleLocalActivity" ScheduleLocalActivity where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'ScheduleLocalActivity x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap WorkflowCommand'ScheduleLocalActivity y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'requestCancelLocalActivity" (Prelude.Maybe RequestCancelLocalActivity) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'RequestCancelLocalActivity x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap WorkflowCommand'RequestCancelLocalActivity y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "requestCancelLocalActivity" RequestCancelLocalActivity where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'RequestCancelLocalActivity x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap WorkflowCommand'RequestCancelLocalActivity y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'upsertWorkflowSearchAttributes" (Prelude.Maybe UpsertWorkflowSearchAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'UpsertWorkflowSearchAttributes x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   WorkflowCommand'UpsertWorkflowSearchAttributes y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "upsertWorkflowSearchAttributes" UpsertWorkflowSearchAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'UpsertWorkflowSearchAttributes x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      WorkflowCommand'UpsertWorkflowSearchAttributes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'modifyWorkflowProperties" (Prelude.Maybe ModifyWorkflowProperties) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'ModifyWorkflowProperties x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap WorkflowCommand'ModifyWorkflowProperties y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "modifyWorkflowProperties" ModifyWorkflowProperties where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'ModifyWorkflowProperties x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap WorkflowCommand'ModifyWorkflowProperties y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'updateResponse" (Prelude.Maybe UpdateResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'UpdateResponse x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap WorkflowCommand'UpdateResponse y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "updateResponse" UpdateResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'UpdateResponse x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap WorkflowCommand'UpdateResponse y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'scheduleNexusOperation" (Prelude.Maybe ScheduleNexusOperation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'ScheduleNexusOperation x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap WorkflowCommand'ScheduleNexusOperation y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "scheduleNexusOperation" ScheduleNexusOperation where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'ScheduleNexusOperation x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap WorkflowCommand'ScheduleNexusOperation y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowCommand "maybe'requestCancelNexusOperation" (Prelude.Maybe RequestCancelNexusOperation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowCommand'RequestCancelNexusOperation x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap WorkflowCommand'RequestCancelNexusOperation y__))
instance Data.ProtoLens.Field.HasField WorkflowCommand "requestCancelNexusOperation" RequestCancelNexusOperation where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowCommand'variant
           (\ x__ y__ -> x__ {_WorkflowCommand'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowCommand'RequestCancelNexusOperation x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap WorkflowCommand'RequestCancelNexusOperation y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message WorkflowCommand where
  messageName _
    = Data.Text.pack "coresdk.workflow_commands.WorkflowCommand"
  packedMessageDescriptor _
    = "\n\
      \\SIWorkflowCommand\DC2F\n\
      \\ruser_metadata\CANd \SOH(\v2!.temporal.api.sdk.v1.UserMetadataR\fuserMetadata\DC2U\n\
      \\DC3event_group_markers\CANe \ETX(\v2%.temporal.api.sdk.v1.EventGroupMarkerR\DC1eventGroupMarkers\DC2H\n\
      \\vstart_timer\CAN\SOH \SOH(\v2%.coresdk.workflow_commands.StartTimerH\NULR\n\
      \startTimer\DC2Z\n\
      \\DC1schedule_activity\CAN\STX \SOH(\v2+.coresdk.workflow_commands.ScheduleActivityH\NULR\DLEscheduleActivity\DC2R\n\
      \\DLErespond_to_query\CAN\ETX \SOH(\v2&.coresdk.workflow_commands.QueryResultH\NULR\SOrespondToQuery\DC2j\n\
      \\ETBrequest_cancel_activity\CAN\EOT \SOH(\v20.coresdk.workflow_commands.RequestCancelActivityH\NULR\NAKrequestCancelActivity\DC2K\n\
      \\fcancel_timer\CAN\ENQ \SOH(\v2&.coresdk.workflow_commands.CancelTimerH\NULR\vcancelTimer\DC2v\n\
      \\ESCcomplete_workflow_execution\CAN\ACK \SOH(\v24.coresdk.workflow_commands.CompleteWorkflowExecutionH\NULR\EMcompleteWorkflowExecution\DC2j\n\
      \\ETBfail_workflow_execution\CAN\a \SOH(\v20.coresdk.workflow_commands.FailWorkflowExecutionH\NULR\NAKfailWorkflowExecution\DC2\135\SOH\n\
      \\"continue_as_new_workflow_execution\CAN\b \SOH(\v29.coresdk.workflow_commands.ContinueAsNewWorkflowExecutionH\NULR\RScontinueAsNewWorkflowExecution\DC2p\n\
      \\EMcancel_workflow_execution\CAN\t \SOH(\v22.coresdk.workflow_commands.CancelWorkflowExecutionH\NULR\ETBcancelWorkflowExecution\DC2U\n\
      \\DLEset_patch_marker\CAN\n\
      \ \SOH(\v2).coresdk.workflow_commands.SetPatchMarkerH\NULR\SOsetPatchMarker\DC2}\n\
      \\RSstart_child_workflow_execution\CAN\v \SOH(\v26.coresdk.workflow_commands.StartChildWorkflowExecutionH\NULR\ESCstartChildWorkflowExecution\DC2\128\SOH\n\
      \\UScancel_child_workflow_execution\CAN\f \SOH(\v27.coresdk.workflow_commands.CancelChildWorkflowExecutionH\NULR\FScancelChildWorkflowExecution\DC2\159\SOH\n\
      \*request_cancel_external_workflow_execution\CAN\r \SOH(\v2A.coresdk.workflow_commands.RequestCancelExternalWorkflowExecutionH\NULR&requestCancelExternalWorkflowExecution\DC2\137\SOH\n\
      \\"signal_external_workflow_execution\CAN\SO \SOH(\v2:.coresdk.workflow_commands.SignalExternalWorkflowExecutionH\NULR\USsignalExternalWorkflowExecution\DC2g\n\
      \\SYNcancel_signal_workflow\CAN\SI \SOH(\v2/.coresdk.workflow_commands.CancelSignalWorkflowH\NULR\DC4cancelSignalWorkflow\DC2j\n\
      \\ETBschedule_local_activity\CAN\DLE \SOH(\v20.coresdk.workflow_commands.ScheduleLocalActivityH\NULR\NAKscheduleLocalActivity\DC2z\n\
      \\GSrequest_cancel_local_activity\CAN\DC1 \SOH(\v25.coresdk.workflow_commands.RequestCancelLocalActivityH\NULR\SUBrequestCancelLocalActivity\DC2\134\SOH\n\
      \!upsert_workflow_search_attributes\CAN\DC2 \SOH(\v29.coresdk.workflow_commands.UpsertWorkflowSearchAttributesH\NULR\RSupsertWorkflowSearchAttributes\DC2s\n\
      \\SUBmodify_workflow_properties\CAN\DC3 \SOH(\v23.coresdk.workflow_commands.ModifyWorkflowPropertiesH\NULR\CANmodifyWorkflowProperties\DC2T\n\
      \\SIupdate_response\CAN\DC4 \SOH(\v2).coresdk.workflow_commands.UpdateResponseH\NULR\SOupdateResponse\DC2m\n\
      \\CANschedule_nexus_operation\CAN\NAK \SOH(\v21.coresdk.workflow_commands.ScheduleNexusOperationH\NULR\SYNscheduleNexusOperation\DC2}\n\
      \\RSrequest_cancel_nexus_operation\CAN\SYN \SOH(\v26.coresdk.workflow_commands.RequestCancelNexusOperationH\NULR\ESCrequestCancelNexusOperationB\t\n\
      \\avariant"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        userMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "user_metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'userMetadata")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        eventGroupMarkers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "event_group_markers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Sdk.V1.EventGroupMarker.EventGroupMarker)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"eventGroupMarkers")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        startTimer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_timer"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StartTimer)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startTimer")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        scheduleActivity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_activity"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScheduleActivity)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleActivity")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        respondToQuery__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "respond_to_query"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor QueryResult)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'respondToQuery")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        requestCancelActivity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_cancel_activity"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestCancelActivity)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestCancelActivity")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        cancelTimer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancel_timer"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CancelTimer)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cancelTimer")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        completeWorkflowExecution__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "complete_workflow_execution"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CompleteWorkflowExecution)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'completeWorkflowExecution")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        failWorkflowExecution__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fail_workflow_execution"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FailWorkflowExecution)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failWorkflowExecution")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        continueAsNewWorkflowExecution__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "continue_as_new_workflow_execution"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ContinueAsNewWorkflowExecution)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'continueAsNewWorkflowExecution")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        cancelWorkflowExecution__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancel_workflow_execution"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CancelWorkflowExecution)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cancelWorkflowExecution")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        setPatchMarker__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "set_patch_marker"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SetPatchMarker)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'setPatchMarker")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        startChildWorkflowExecution__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_child_workflow_execution"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StartChildWorkflowExecution)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'startChildWorkflowExecution")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        cancelChildWorkflowExecution__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancel_child_workflow_execution"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CancelChildWorkflowExecution)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'cancelChildWorkflowExecution")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        requestCancelExternalWorkflowExecution__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_cancel_external_workflow_execution"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestCancelExternalWorkflowExecution)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'requestCancelExternalWorkflowExecution")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        signalExternalWorkflowExecution__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signal_external_workflow_execution"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SignalExternalWorkflowExecution)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'signalExternalWorkflowExecution")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        cancelSignalWorkflow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancel_signal_workflow"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CancelSignalWorkflow)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cancelSignalWorkflow")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        scheduleLocalActivity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_local_activity"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScheduleLocalActivity)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleLocalActivity")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        requestCancelLocalActivity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_cancel_local_activity"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestCancelLocalActivity)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'requestCancelLocalActivity")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        upsertWorkflowSearchAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upsert_workflow_search_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UpsertWorkflowSearchAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'upsertWorkflowSearchAttributes")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        modifyWorkflowProperties__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "modify_workflow_properties"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ModifyWorkflowProperties)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'modifyWorkflowProperties")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        updateResponse__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "update_response"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UpdateResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'updateResponse")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        scheduleNexusOperation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_nexus_operation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScheduleNexusOperation)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleNexusOperation")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
        requestCancelNexusOperation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_cancel_nexus_operation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestCancelNexusOperation)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'requestCancelNexusOperation")) ::
              Data.ProtoLens.FieldDescriptor WorkflowCommand
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 100, userMetadata__field_descriptor),
           (Data.ProtoLens.Tag 101, eventGroupMarkers__field_descriptor),
           (Data.ProtoLens.Tag 1, startTimer__field_descriptor),
           (Data.ProtoLens.Tag 2, scheduleActivity__field_descriptor),
           (Data.ProtoLens.Tag 3, respondToQuery__field_descriptor),
           (Data.ProtoLens.Tag 4, requestCancelActivity__field_descriptor),
           (Data.ProtoLens.Tag 5, cancelTimer__field_descriptor),
           (Data.ProtoLens.Tag 6, 
            completeWorkflowExecution__field_descriptor),
           (Data.ProtoLens.Tag 7, failWorkflowExecution__field_descriptor),
           (Data.ProtoLens.Tag 8, 
            continueAsNewWorkflowExecution__field_descriptor),
           (Data.ProtoLens.Tag 9, cancelWorkflowExecution__field_descriptor),
           (Data.ProtoLens.Tag 10, setPatchMarker__field_descriptor),
           (Data.ProtoLens.Tag 11, 
            startChildWorkflowExecution__field_descriptor),
           (Data.ProtoLens.Tag 12, 
            cancelChildWorkflowExecution__field_descriptor),
           (Data.ProtoLens.Tag 13, 
            requestCancelExternalWorkflowExecution__field_descriptor),
           (Data.ProtoLens.Tag 14, 
            signalExternalWorkflowExecution__field_descriptor),
           (Data.ProtoLens.Tag 15, cancelSignalWorkflow__field_descriptor),
           (Data.ProtoLens.Tag 16, scheduleLocalActivity__field_descriptor),
           (Data.ProtoLens.Tag 17, 
            requestCancelLocalActivity__field_descriptor),
           (Data.ProtoLens.Tag 18, 
            upsertWorkflowSearchAttributes__field_descriptor),
           (Data.ProtoLens.Tag 19, 
            modifyWorkflowProperties__field_descriptor),
           (Data.ProtoLens.Tag 20, updateResponse__field_descriptor),
           (Data.ProtoLens.Tag 21, scheduleNexusOperation__field_descriptor),
           (Data.ProtoLens.Tag 22, 
            requestCancelNexusOperation__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkflowCommand'_unknownFields
        (\ x__ y__ -> x__ {_WorkflowCommand'_unknownFields = y__})
  defMessage
    = WorkflowCommand'_constructor
        {_WorkflowCommand'userMetadata = Prelude.Nothing,
         _WorkflowCommand'eventGroupMarkers = Data.Vector.Generic.empty,
         _WorkflowCommand'variant = Prelude.Nothing,
         _WorkflowCommand'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkflowCommand
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Sdk.V1.EventGroupMarker.EventGroupMarker
             -> Data.ProtoLens.Encoding.Bytes.Parser WorkflowCommand
        loop x mutable'eventGroupMarkers
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'eventGroupMarkers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                       mutable'eventGroupMarkers)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'eventGroupMarkers")
                              frozen'eventGroupMarkers x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        802
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "user_metadata"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"userMetadata") y x)
                                  mutable'eventGroupMarkers
                        810
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "event_group_markers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'eventGroupMarkers y)
                                loop x v
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_timer"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startTimer") y x)
                                  mutable'eventGroupMarkers
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_activity"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleActivity") y x)
                                  mutable'eventGroupMarkers
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "respond_to_query"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"respondToQuery") y x)
                                  mutable'eventGroupMarkers
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_cancel_activity"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestCancelActivity") y x)
                                  mutable'eventGroupMarkers
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cancel_timer"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"cancelTimer") y x)
                                  mutable'eventGroupMarkers
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "complete_workflow_execution"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"completeWorkflowExecution") y x)
                                  mutable'eventGroupMarkers
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "fail_workflow_execution"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"failWorkflowExecution") y x)
                                  mutable'eventGroupMarkers
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "continue_as_new_workflow_execution"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"continueAsNewWorkflowExecution")
                                     y x)
                                  mutable'eventGroupMarkers
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cancel_workflow_execution"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cancelWorkflowExecution") y x)
                                  mutable'eventGroupMarkers
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "set_patch_marker"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"setPatchMarker") y x)
                                  mutable'eventGroupMarkers
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_child_workflow_execution"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startChildWorkflowExecution") y
                                     x)
                                  mutable'eventGroupMarkers
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cancel_child_workflow_execution"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cancelChildWorkflowExecution") y
                                     x)
                                  mutable'eventGroupMarkers
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_cancel_external_workflow_execution"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"requestCancelExternalWorkflowExecution")
                                     y x)
                                  mutable'eventGroupMarkers
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "signal_external_workflow_execution"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"signalExternalWorkflowExecution")
                                     y x)
                                  mutable'eventGroupMarkers
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cancel_signal_workflow"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cancelSignalWorkflow") y x)
                                  mutable'eventGroupMarkers
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_local_activity"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleLocalActivity") y x)
                                  mutable'eventGroupMarkers
                        138
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_cancel_local_activity"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestCancelLocalActivity") y x)
                                  mutable'eventGroupMarkers
                        146
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "upsert_workflow_search_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upsertWorkflowSearchAttributes")
                                     y x)
                                  mutable'eventGroupMarkers
                        154
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "modify_workflow_properties"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"modifyWorkflowProperties") y x)
                                  mutable'eventGroupMarkers
                        162
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "update_response"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"updateResponse") y x)
                                  mutable'eventGroupMarkers
                        170
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_nexus_operation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleNexusOperation") y x)
                                  mutable'eventGroupMarkers
                        178
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_cancel_nexus_operation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestCancelNexusOperation") y
                                     x)
                                  mutable'eventGroupMarkers
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'eventGroupMarkers
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'eventGroupMarkers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'eventGroupMarkers)
          "WorkflowCommand"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'userMetadata") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 802)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 810)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'eventGroupMarkers") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'variant") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (WorkflowCommand'StartTimer v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (WorkflowCommand'ScheduleActivity v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (WorkflowCommand'RespondToQuery v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (WorkflowCommand'RequestCancelActivity v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (WorkflowCommand'CancelTimer v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (WorkflowCommand'CompleteWorkflowExecution v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (WorkflowCommand'FailWorkflowExecution v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (WorkflowCommand'ContinueAsNewWorkflowExecution v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (WorkflowCommand'CancelWorkflowExecution v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (WorkflowCommand'SetPatchMarker v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (WorkflowCommand'StartChildWorkflowExecution v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (WorkflowCommand'CancelChildWorkflowExecution v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (WorkflowCommand'RequestCancelExternalWorkflowExecution v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 106)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (WorkflowCommand'SignalExternalWorkflowExecution v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 114)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (WorkflowCommand'CancelSignalWorkflow v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 122)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (WorkflowCommand'ScheduleLocalActivity v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 130)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (WorkflowCommand'RequestCancelLocalActivity v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 138)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (WorkflowCommand'UpsertWorkflowSearchAttributes v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 146)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (WorkflowCommand'ModifyWorkflowProperties v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 154)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (WorkflowCommand'UpdateResponse v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 162)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (WorkflowCommand'ScheduleNexusOperation v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 170)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (WorkflowCommand'RequestCancelNexusOperation v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 178)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData WorkflowCommand where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkflowCommand'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WorkflowCommand'userMetadata x__)
                (Control.DeepSeq.deepseq
                   (_WorkflowCommand'eventGroupMarkers x__)
                   (Control.DeepSeq.deepseq (_WorkflowCommand'variant x__) ())))
instance Control.DeepSeq.NFData WorkflowCommand'Variant where
  rnf (WorkflowCommand'StartTimer x__) = Control.DeepSeq.rnf x__
  rnf (WorkflowCommand'ScheduleActivity x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowCommand'RespondToQuery x__) = Control.DeepSeq.rnf x__
  rnf (WorkflowCommand'RequestCancelActivity x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowCommand'CancelTimer x__) = Control.DeepSeq.rnf x__
  rnf (WorkflowCommand'CompleteWorkflowExecution x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowCommand'FailWorkflowExecution x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowCommand'ContinueAsNewWorkflowExecution x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowCommand'CancelWorkflowExecution x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowCommand'SetPatchMarker x__) = Control.DeepSeq.rnf x__
  rnf (WorkflowCommand'StartChildWorkflowExecution x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowCommand'CancelChildWorkflowExecution x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowCommand'RequestCancelExternalWorkflowExecution x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowCommand'SignalExternalWorkflowExecution x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowCommand'CancelSignalWorkflow x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowCommand'ScheduleLocalActivity x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowCommand'RequestCancelLocalActivity x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowCommand'UpsertWorkflowSearchAttributes x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowCommand'ModifyWorkflowProperties x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowCommand'UpdateResponse x__) = Control.DeepSeq.rnf x__
  rnf (WorkflowCommand'ScheduleNexusOperation x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowCommand'RequestCancelNexusOperation x__)
    = Control.DeepSeq.rnf x__
_WorkflowCommand'StartTimer ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant StartTimer
_WorkflowCommand'StartTimer
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'StartTimer
      (\ p__
         -> case p__ of
              (WorkflowCommand'StartTimer p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowCommand'ScheduleActivity ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant ScheduleActivity
_WorkflowCommand'ScheduleActivity
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'ScheduleActivity
      (\ p__
         -> case p__ of
              (WorkflowCommand'ScheduleActivity p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowCommand'RespondToQuery ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant QueryResult
_WorkflowCommand'RespondToQuery
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'RespondToQuery
      (\ p__
         -> case p__ of
              (WorkflowCommand'RespondToQuery p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowCommand'RequestCancelActivity ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant RequestCancelActivity
_WorkflowCommand'RequestCancelActivity
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'RequestCancelActivity
      (\ p__
         -> case p__ of
              (WorkflowCommand'RequestCancelActivity p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowCommand'CancelTimer ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant CancelTimer
_WorkflowCommand'CancelTimer
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'CancelTimer
      (\ p__
         -> case p__ of
              (WorkflowCommand'CancelTimer p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowCommand'CompleteWorkflowExecution ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant CompleteWorkflowExecution
_WorkflowCommand'CompleteWorkflowExecution
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'CompleteWorkflowExecution
      (\ p__
         -> case p__ of
              (WorkflowCommand'CompleteWorkflowExecution p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowCommand'FailWorkflowExecution ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant FailWorkflowExecution
_WorkflowCommand'FailWorkflowExecution
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'FailWorkflowExecution
      (\ p__
         -> case p__ of
              (WorkflowCommand'FailWorkflowExecution p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowCommand'ContinueAsNewWorkflowExecution ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant ContinueAsNewWorkflowExecution
_WorkflowCommand'ContinueAsNewWorkflowExecution
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'ContinueAsNewWorkflowExecution
      (\ p__
         -> case p__ of
              (WorkflowCommand'ContinueAsNewWorkflowExecution p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowCommand'CancelWorkflowExecution ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant CancelWorkflowExecution
_WorkflowCommand'CancelWorkflowExecution
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'CancelWorkflowExecution
      (\ p__
         -> case p__ of
              (WorkflowCommand'CancelWorkflowExecution p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowCommand'SetPatchMarker ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant SetPatchMarker
_WorkflowCommand'SetPatchMarker
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'SetPatchMarker
      (\ p__
         -> case p__ of
              (WorkflowCommand'SetPatchMarker p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowCommand'StartChildWorkflowExecution ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant StartChildWorkflowExecution
_WorkflowCommand'StartChildWorkflowExecution
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'StartChildWorkflowExecution
      (\ p__
         -> case p__ of
              (WorkflowCommand'StartChildWorkflowExecution p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowCommand'CancelChildWorkflowExecution ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant CancelChildWorkflowExecution
_WorkflowCommand'CancelChildWorkflowExecution
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'CancelChildWorkflowExecution
      (\ p__
         -> case p__ of
              (WorkflowCommand'CancelChildWorkflowExecution p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowCommand'RequestCancelExternalWorkflowExecution ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant RequestCancelExternalWorkflowExecution
_WorkflowCommand'RequestCancelExternalWorkflowExecution
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'RequestCancelExternalWorkflowExecution
      (\ p__
         -> case p__ of
              (WorkflowCommand'RequestCancelExternalWorkflowExecution p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowCommand'SignalExternalWorkflowExecution ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant SignalExternalWorkflowExecution
_WorkflowCommand'SignalExternalWorkflowExecution
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'SignalExternalWorkflowExecution
      (\ p__
         -> case p__ of
              (WorkflowCommand'SignalExternalWorkflowExecution p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowCommand'CancelSignalWorkflow ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant CancelSignalWorkflow
_WorkflowCommand'CancelSignalWorkflow
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'CancelSignalWorkflow
      (\ p__
         -> case p__ of
              (WorkflowCommand'CancelSignalWorkflow p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowCommand'ScheduleLocalActivity ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant ScheduleLocalActivity
_WorkflowCommand'ScheduleLocalActivity
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'ScheduleLocalActivity
      (\ p__
         -> case p__ of
              (WorkflowCommand'ScheduleLocalActivity p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowCommand'RequestCancelLocalActivity ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant RequestCancelLocalActivity
_WorkflowCommand'RequestCancelLocalActivity
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'RequestCancelLocalActivity
      (\ p__
         -> case p__ of
              (WorkflowCommand'RequestCancelLocalActivity p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowCommand'UpsertWorkflowSearchAttributes ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant UpsertWorkflowSearchAttributes
_WorkflowCommand'UpsertWorkflowSearchAttributes
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'UpsertWorkflowSearchAttributes
      (\ p__
         -> case p__ of
              (WorkflowCommand'UpsertWorkflowSearchAttributes p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowCommand'ModifyWorkflowProperties ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant ModifyWorkflowProperties
_WorkflowCommand'ModifyWorkflowProperties
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'ModifyWorkflowProperties
      (\ p__
         -> case p__ of
              (WorkflowCommand'ModifyWorkflowProperties p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowCommand'UpdateResponse ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant UpdateResponse
_WorkflowCommand'UpdateResponse
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'UpdateResponse
      (\ p__
         -> case p__ of
              (WorkflowCommand'UpdateResponse p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowCommand'ScheduleNexusOperation ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant ScheduleNexusOperation
_WorkflowCommand'ScheduleNexusOperation
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'ScheduleNexusOperation
      (\ p__
         -> case p__ of
              (WorkflowCommand'ScheduleNexusOperation p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowCommand'RequestCancelNexusOperation ::
  Data.ProtoLens.Prism.Prism' WorkflowCommand'Variant RequestCancelNexusOperation
_WorkflowCommand'RequestCancelNexusOperation
  = Data.ProtoLens.Prism.prism'
      WorkflowCommand'RequestCancelNexusOperation
      (\ p__
         -> case p__ of
              (WorkflowCommand'RequestCancelNexusOperation p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \;temporal/sdk/core/workflow_commands/workflow_commands.proto\DC2\EMcoresdk.workflow_commands\SUB\RSgoogle/protobuf/duration.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\ESCgoogle/protobuf/empty.proto\SUB$temporal/api/common/v1/message.proto\SUB$temporal/api/enums/v1/workflow.proto\SUB%temporal/api/failure/v1/message.proto\SUB'temporal/api/sdk/v1/user_metadata.proto\SUB,temporal/api/sdk/v1/event_group_marker.proto\SUB&temporal/api/workflow/v1/message.proto\SUB5temporal/sdk/core/child_workflow/child_workflow.proto\SUB#temporal/sdk/core/nexus/nexus.proto\SUB%temporal/sdk/core/common/common.proto\"\232\DC4\n\
    \\SIWorkflowCommand\DC2F\n\
    \\ruser_metadata\CANd \SOH(\v2!.temporal.api.sdk.v1.UserMetadataR\fuserMetadata\DC2U\n\
    \\DC3event_group_markers\CANe \ETX(\v2%.temporal.api.sdk.v1.EventGroupMarkerR\DC1eventGroupMarkers\DC2H\n\
    \\vstart_timer\CAN\SOH \SOH(\v2%.coresdk.workflow_commands.StartTimerH\NULR\n\
    \startTimer\DC2Z\n\
    \\DC1schedule_activity\CAN\STX \SOH(\v2+.coresdk.workflow_commands.ScheduleActivityH\NULR\DLEscheduleActivity\DC2R\n\
    \\DLErespond_to_query\CAN\ETX \SOH(\v2&.coresdk.workflow_commands.QueryResultH\NULR\SOrespondToQuery\DC2j\n\
    \\ETBrequest_cancel_activity\CAN\EOT \SOH(\v20.coresdk.workflow_commands.RequestCancelActivityH\NULR\NAKrequestCancelActivity\DC2K\n\
    \\fcancel_timer\CAN\ENQ \SOH(\v2&.coresdk.workflow_commands.CancelTimerH\NULR\vcancelTimer\DC2v\n\
    \\ESCcomplete_workflow_execution\CAN\ACK \SOH(\v24.coresdk.workflow_commands.CompleteWorkflowExecutionH\NULR\EMcompleteWorkflowExecution\DC2j\n\
    \\ETBfail_workflow_execution\CAN\a \SOH(\v20.coresdk.workflow_commands.FailWorkflowExecutionH\NULR\NAKfailWorkflowExecution\DC2\135\SOH\n\
    \\"continue_as_new_workflow_execution\CAN\b \SOH(\v29.coresdk.workflow_commands.ContinueAsNewWorkflowExecutionH\NULR\RScontinueAsNewWorkflowExecution\DC2p\n\
    \\EMcancel_workflow_execution\CAN\t \SOH(\v22.coresdk.workflow_commands.CancelWorkflowExecutionH\NULR\ETBcancelWorkflowExecution\DC2U\n\
    \\DLEset_patch_marker\CAN\n\
    \ \SOH(\v2).coresdk.workflow_commands.SetPatchMarkerH\NULR\SOsetPatchMarker\DC2}\n\
    \\RSstart_child_workflow_execution\CAN\v \SOH(\v26.coresdk.workflow_commands.StartChildWorkflowExecutionH\NULR\ESCstartChildWorkflowExecution\DC2\128\SOH\n\
    \\UScancel_child_workflow_execution\CAN\f \SOH(\v27.coresdk.workflow_commands.CancelChildWorkflowExecutionH\NULR\FScancelChildWorkflowExecution\DC2\159\SOH\n\
    \*request_cancel_external_workflow_execution\CAN\r \SOH(\v2A.coresdk.workflow_commands.RequestCancelExternalWorkflowExecutionH\NULR&requestCancelExternalWorkflowExecution\DC2\137\SOH\n\
    \\"signal_external_workflow_execution\CAN\SO \SOH(\v2:.coresdk.workflow_commands.SignalExternalWorkflowExecutionH\NULR\USsignalExternalWorkflowExecution\DC2g\n\
    \\SYNcancel_signal_workflow\CAN\SI \SOH(\v2/.coresdk.workflow_commands.CancelSignalWorkflowH\NULR\DC4cancelSignalWorkflow\DC2j\n\
    \\ETBschedule_local_activity\CAN\DLE \SOH(\v20.coresdk.workflow_commands.ScheduleLocalActivityH\NULR\NAKscheduleLocalActivity\DC2z\n\
    \\GSrequest_cancel_local_activity\CAN\DC1 \SOH(\v25.coresdk.workflow_commands.RequestCancelLocalActivityH\NULR\SUBrequestCancelLocalActivity\DC2\134\SOH\n\
    \!upsert_workflow_search_attributes\CAN\DC2 \SOH(\v29.coresdk.workflow_commands.UpsertWorkflowSearchAttributesH\NULR\RSupsertWorkflowSearchAttributes\DC2s\n\
    \\SUBmodify_workflow_properties\CAN\DC3 \SOH(\v23.coresdk.workflow_commands.ModifyWorkflowPropertiesH\NULR\CANmodifyWorkflowProperties\DC2T\n\
    \\SIupdate_response\CAN\DC4 \SOH(\v2).coresdk.workflow_commands.UpdateResponseH\NULR\SOupdateResponse\DC2m\n\
    \\CANschedule_nexus_operation\CAN\NAK \SOH(\v21.coresdk.workflow_commands.ScheduleNexusOperationH\NULR\SYNscheduleNexusOperation\DC2}\n\
    \\RSrequest_cancel_nexus_operation\CAN\SYN \SOH(\v26.coresdk.workflow_commands.RequestCancelNexusOperationH\NULR\ESCrequestCancelNexusOperationB\t\n\
    \\avariant\"l\n\
    \\n\
    \StartTimer\DC2\DLE\n\
    \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2L\n\
    \\NAKstart_to_fire_timeout\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\DC2startToFireTimeout\"\US\n\
    \\vCancelTimer\DC2\DLE\n\
    \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\"\169\b\n\
    \\DLEScheduleActivity\DC2\DLE\n\
    \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2\US\n\
    \\vactivity_id\CAN\STX \SOH(\tR\n\
    \activityId\DC2#\n\
    \\ractivity_type\CAN\ETX \SOH(\tR\factivityType\DC2\GS\n\
    \\n\
    \task_queue\CAN\ENQ \SOH(\tR\ttaskQueue\DC2R\n\
    \\aheaders\CAN\ACK \ETX(\v28.coresdk.workflow_commands.ScheduleActivity.HeadersEntryR\aheaders\DC2=\n\
    \\targuments\CAN\a \ETX(\v2\US.temporal.api.common.v1.PayloadR\targuments\DC2T\n\
    \\EMschedule_to_close_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2T\n\
    \\EMschedule_to_start_timeout\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout\DC2N\n\
    \\SYNstart_to_close_timeout\CAN\n\
    \ \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\DC2F\n\
    \\DC1heartbeat_timeout\CAN\v \SOH(\v2\EM.google.protobuf.DurationR\DLEheartbeatTimeout\DC2F\n\
    \\fretry_policy\CAN\f \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2`\n\
    \\DC1cancellation_type\CAN\r \SOH(\SO23.coresdk.workflow_commands.ActivityCancellationTypeR\DLEcancellationType\DC23\n\
    \\SYNdo_not_eagerly_execute\CAN\SO \SOH(\bR\DC3doNotEagerlyExecute\DC2M\n\
    \\DC1versioning_intent\CAN\SI \SOH(\SO2 .coresdk.common.VersioningIntentR\DLEversioningIntent\DC2<\n\
    \\bpriority\CAN\DLE \SOH(\v2 .temporal.api.common.v1.PriorityR\bpriority\SUB[\n\
    \\fHeadersEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
    \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH\"\132\b\n\
    \\NAKScheduleLocalActivity\DC2\DLE\n\
    \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2\US\n\
    \\vactivity_id\CAN\STX \SOH(\tR\n\
    \activityId\DC2#\n\
    \\ractivity_type\CAN\ETX \SOH(\tR\factivityType\DC2\CAN\n\
    \\aattempt\CAN\EOT \SOH(\rR\aattempt\DC2P\n\
    \\SYNoriginal_schedule_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\DC4originalScheduleTime\DC2W\n\
    \\aheaders\CAN\ACK \ETX(\v2=.coresdk.workflow_commands.ScheduleLocalActivity.HeadersEntryR\aheaders\DC2=\n\
    \\targuments\CAN\a \ETX(\v2\US.temporal.api.common.v1.PayloadR\targuments\DC2T\n\
    \\EMschedule_to_close_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2T\n\
    \\EMschedule_to_start_timeout\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout\DC2N\n\
    \\SYNstart_to_close_timeout\CAN\n\
    \ \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\DC2F\n\
    \\fretry_policy\CAN\v \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2M\n\
    \\NAKlocal_retry_threshold\CAN\f \SOH(\v2\EM.google.protobuf.DurationR\DC3localRetryThreshold\DC2`\n\
    \\DC1cancellation_type\CAN\r \SOH(\SO23.coresdk.workflow_commands.ActivityCancellationTypeR\DLEcancellationType\DC2=\n\
    \\ESCinclude_arguments_in_marker\CAN\SO \SOH(\bR\CANincludeArgumentsInMarker\SUB[\n\
    \\fHeadersEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
    \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH\")\n\
    \\NAKRequestCancelActivity\DC2\DLE\n\
    \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\".\n\
    \\SUBRequestCancelLocalActivity\DC2\DLE\n\
    \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\"\184\SOH\n\
    \\vQueryResult\DC2\EM\n\
    \\bquery_id\CAN\SOH \SOH(\tR\aqueryId\DC2G\n\
    \\tsucceeded\CAN\STX \SOH(\v2'.coresdk.workflow_commands.QuerySuccessH\NULR\tsucceeded\DC2:\n\
    \\ACKfailed\CAN\ETX \SOH(\v2 .temporal.api.failure.v1.FailureH\NULR\ACKfailedB\t\n\
    \\avariant\"K\n\
    \\fQuerySuccess\DC2;\n\
    \\bresponse\CAN\SOH \SOH(\v2\US.temporal.api.common.v1.PayloadR\bresponse\"T\n\
    \\EMCompleteWorkflowExecution\DC27\n\
    \\ACKresult\CAN\SOH \SOH(\v2\US.temporal.api.common.v1.PayloadR\ACKresult\"S\n\
    \\NAKFailWorkflowExecution\DC2:\n\
    \\afailure\CAN\SOH \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure\"\232\b\n\
    \\RSContinueAsNewWorkflowExecution\DC2#\n\
    \\rworkflow_type\CAN\SOH \SOH(\tR\fworkflowType\DC2\GS\n\
    \\n\
    \task_queue\CAN\STX \SOH(\tR\ttaskQueue\DC2=\n\
    \\targuments\CAN\ETX \ETX(\v2\US.temporal.api.common.v1.PayloadR\targuments\DC2K\n\
    \\DC4workflow_run_timeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC2workflowRunTimeout\DC2M\n\
    \\NAKworkflow_task_timeout\CAN\ENQ \SOH(\v2\EM.google.protobuf.DurationR\DC3workflowTaskTimeout\DC2W\n\
    \\EOTmemo\CAN\ACK \ETX(\v2C.coresdk.workflow_commands.ContinueAsNewWorkflowExecution.MemoEntryR\EOTmemo\DC2`\n\
    \\aheaders\CAN\a \ETX(\v2F.coresdk.workflow_commands.ContinueAsNewWorkflowExecution.HeadersEntryR\aheaders\DC2U\n\
    \\DC1search_attributes\CAN\b \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC2F\n\
    \\fretry_policy\CAN\t \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2M\n\
    \\DC1versioning_intent\CAN\n\
    \ \SOH(\SO2 .coresdk.common.VersioningIntentR\DLEversioningIntent\DC2v\n\
    \\ESCinitial_versioning_behavior\CAN\v \SOH(\SO26.temporal.api.enums.v1.ContinueAsNewVersioningBehaviorR\EMinitialVersioningBehavior\DC2O\n\
    \\SYNbackoff_start_interval\CAN\f \SOH(\v2\EM.google.protobuf.DurationR\DC4backoffStartInterval\SUBX\n\
    \\tMemoEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
    \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH\SUB[\n\
    \\fHeadersEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
    \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH\"U\n\
    \\ETBCancelWorkflowExecution\DC2:\n\
    \\adetails\CAN\SOH \SOH(\v2 .temporal.api.common.v1.PayloadsR\adetails\"K\n\
    \\SOSetPatchMarker\DC2\EM\n\
    \\bpatch_id\CAN\SOH \SOH(\tR\apatchId\DC2\RS\n\
    \\n\
    \deprecated\CAN\STX \SOH(\bR\n\
    \deprecated\"\160\f\n\
    \\ESCStartChildWorkflowExecution\DC2\DLE\n\
    \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2\FS\n\
    \\tnamespace\CAN\STX \SOH(\tR\tnamespace\DC2\US\n\
    \\vworkflow_id\CAN\ETX \SOH(\tR\n\
    \workflowId\DC2#\n\
    \\rworkflow_type\CAN\EOT \SOH(\tR\fworkflowType\DC2\GS\n\
    \\n\
    \task_queue\CAN\ENQ \SOH(\tR\ttaskQueue\DC25\n\
    \\ENQinput\CAN\ACK \ETX(\v2\US.temporal.api.common.v1.PayloadR\ENQinput\DC2W\n\
    \\SUBworkflow_execution_timeout\CAN\a \SOH(\v2\EM.google.protobuf.DurationR\CANworkflowExecutionTimeout\DC2K\n\
    \\DC4workflow_run_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\DC2workflowRunTimeout\DC2M\n\
    \\NAKworkflow_task_timeout\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\DC3workflowTaskTimeout\DC2Y\n\
    \\DC3parent_close_policy\CAN\n\
    \ \SOH(\SO2).coresdk.child_workflow.ParentClosePolicyR\DC1parentClosePolicy\DC2e\n\
    \\CANworkflow_id_reuse_policy\CAN\f \SOH(\SO2,.temporal.api.enums.v1.WorkflowIdReusePolicyR\NAKworkflowIdReusePolicy\DC2F\n\
    \\fretry_policy\CAN\r \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2#\n\
    \\rcron_schedule\CAN\SO \SOH(\tR\fcronSchedule\DC2]\n\
    \\aheaders\CAN\SI \ETX(\v2C.coresdk.workflow_commands.StartChildWorkflowExecution.HeadersEntryR\aheaders\DC2T\n\
    \\EOTmemo\CAN\DLE \ETX(\v2@.coresdk.workflow_commands.StartChildWorkflowExecution.MemoEntryR\EOTmemo\DC2U\n\
    \\DC1search_attributes\CAN\DC1 \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC2b\n\
    \\DC1cancellation_type\CAN\DC2 \SOH(\SO25.coresdk.child_workflow.ChildWorkflowCancellationTypeR\DLEcancellationType\DC2M\n\
    \\DC1versioning_intent\CAN\DC3 \SOH(\SO2 .coresdk.common.VersioningIntentR\DLEversioningIntent\DC2<\n\
    \\bpriority\CAN\DC4 \SOH(\v2 .temporal.api.common.v1.PriorityR\bpriority\DC2]\n\
    \\DC3versioning_override\CAN\NAK \SOH(\v2,.temporal.api.workflow.v1.VersioningOverrideR\DC2versioningOverride\SUB[\n\
    \\fHeadersEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
    \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH\SUBX\n\
    \\tMemoEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
    \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH\"d\n\
    \\FSCancelChildWorkflowExecution\DC2,\n\
    \\DC2child_workflow_seq\CAN\SOH \SOH(\rR\DLEchildWorkflowSeq\DC2\SYN\n\
    \\ACKreason\CAN\STX \SOH(\tR\ACKreason\"\174\SOH\n\
    \&RequestCancelExternalWorkflowExecution\DC2\DLE\n\
    \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2Z\n\
    \\DC2workflow_execution\CAN\STX \SOH(\v2+.coresdk.common.NamespacedWorkflowExecutionR\DC1workflowExecution\DC2\SYN\n\
    \\ACKreason\CAN\ETX \SOH(\tR\ACKreason\"\223\ETX\n\
    \\USSignalExternalWorkflowExecution\DC2\DLE\n\
    \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2\\\n\
    \\DC2workflow_execution\CAN\STX \SOH(\v2+.coresdk.common.NamespacedWorkflowExecutionH\NULR\DC1workflowExecution\DC2,\n\
    \\DC1child_workflow_id\CAN\ETX \SOH(\tH\NULR\SIchildWorkflowId\DC2\US\n\
    \\vsignal_name\CAN\EOT \SOH(\tR\n\
    \signalName\DC23\n\
    \\EOTargs\CAN\ENQ \ETX(\v2\US.temporal.api.common.v1.PayloadR\EOTargs\DC2a\n\
    \\aheaders\CAN\ACK \ETX(\v2G.coresdk.workflow_commands.SignalExternalWorkflowExecution.HeadersEntryR\aheaders\SUB[\n\
    \\fHeadersEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
    \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOHB\b\n\
    \\ACKtarget\"(\n\
    \\DC4CancelSignalWorkflow\DC2\DLE\n\
    \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\"w\n\
    \\RSUpsertWorkflowSearchAttributes\DC2U\n\
    \\DC1search_attributes\CAN\SOH \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\"]\n\
    \\CANModifyWorkflowProperties\DC2A\n\
    \\rupserted_memo\CAN\SOH \SOH(\v2\FS.temporal.api.common.v1.MemoR\fupsertedMemo\"\133\STX\n\
    \\SOUpdateResponse\DC20\n\
    \\DC4protocol_instance_id\CAN\SOH \SOH(\tR\DC2protocolInstanceId\DC24\n\
    \\baccepted\CAN\STX \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\baccepted\DC2>\n\
    \\brejected\CAN\ETX \SOH(\v2 .temporal.api.failure.v1.FailureH\NULR\brejected\DC2?\n\
    \\tcompleted\CAN\EOT \SOH(\v2\US.temporal.api.common.v1.PayloadH\NULR\tcompletedB\n\
    \\n\
    \\bresponse\"\180\ENQ\n\
    \\SYNScheduleNexusOperation\DC2\DLE\n\
    \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2\SUB\n\
    \\bendpoint\CAN\STX \SOH(\tR\bendpoint\DC2\CAN\n\
    \\aservice\CAN\ETX \SOH(\tR\aservice\DC2\FS\n\
    \\toperation\CAN\EOT \SOH(\tR\toperation\DC25\n\
    \\ENQinput\CAN\ENQ \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQinput\DC2T\n\
    \\EMschedule_to_close_timeout\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2e\n\
    \\fnexus_header\CAN\a \ETX(\v2B.coresdk.workflow_commands.ScheduleNexusOperation.NexusHeaderEntryR\vnexusHeader\DC2Z\n\
    \\DC1cancellation_type\CAN\b \SOH(\SO2-.coresdk.nexus.NexusOperationCancellationTypeR\DLEcancellationType\DC2T\n\
    \\EMschedule_to_start_timeout\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout\DC2N\n\
    \\SYNstart_to_close_timeout\CAN\n\
    \ \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\SUB>\n\
    \\DLENexusHeaderEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH\"/\n\
    \\ESCRequestCancelNexusOperation\DC2\DLE\n\
    \\ETXseq\CAN\SOH \SOH(\rR\ETXseq*X\n\
    \\CANActivityCancellationType\DC2\SO\n\
    \\n\
    \TRY_CANCEL\DLE\NUL\DC2\US\n\
    \\ESCWAIT_CANCELLATION_COMPLETED\DLE\SOH\DC2\v\n\
    \\aABANDON\DLE\STXB6\234\STX3Temporalio::Internal::Bridge::Api::WorkflowCommandsJ\211\164\SOH\n\
    \\a\DC2\ENQ\NUL\NUL\165\ETX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\215\SOH\n\
    \\SOH\STX\DC2\ETX\a\NUL\"\SUB\204\SOH\n\
    \ Definitions for commands from a workflow in lang SDK to core. While a workflow processes a batch\n\
    \ of activation jobs, it accumulates these commands to be sent back to core to conclude that\n\
    \ activation.\n\
    \\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULL\n\
    \\t\n\
    \\STX\b-\DC2\ETX\b\NULL\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\n\
    \\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\v\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\f\NUL%\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\r\NUL.\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\SO\NUL.\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\SI\NUL/\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\DLE\NUL1\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\DC1\NUL6\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\DC2\NUL0\n\
    \\t\n\
    \\STX\ETX\t\DC2\ETX\DC3\NUL?\n\
    \\t\n\
    \\STX\ETX\n\
    \\DC2\ETX\DC4\NUL-\n\
    \\t\n\
    \\STX\ETX\v\DC2\ETX\NAK\NUL/\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NUL:\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\ETB\n\
    \\230\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ESC\EOT9\SUB\216\SOH User metadata that may or may not be persisted into history depending on the command type.\n\
    \ Lang layers are expected to expose the setting of the internals of this metadata on a\n\
    \ per-command basis where applicable.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\ESC\EOT$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ESC%2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ESC58\n\
    \\235\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX \EOTL\SUB\221\SOH Event group markers attached to the command. These are forwarded onto\n\
    \ the corresponding server-side Command, and consequently surfaced on the\n\
    \ resulting HistoryEvent. See `temporal/api/sdk/v1/event_group_marker.proto`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX \EOT\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX \r1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX 2E\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX HK\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\"\EOT9\ENQ\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\"\n\
    \\DC1\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX#\b#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX#\b\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX#\DC3\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX#!\"\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX$\b/\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX$\b\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX$\EM*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX$-.\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX%\b)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX%\b\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX%\DC4$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX%'(\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX&\b:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX&\b\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX&\RS5\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX&89\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX'\b%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETX'\b\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX'\DC4 \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX'#$\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX(\bB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\ETX(\b!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX(\"=\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX(@A\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETX)\b:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ACK\DC2\ETX)\b\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX)\RS5\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX)89\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\t\DC2\ETX*\bN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ACK\DC2\ETX*\b&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETX*'I\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETX*LM\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\ETX+\b>\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ACK\DC2\ETX+\b\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\ETX+ 9\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\ETX+<=\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\v\DC2\ETX,\b-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ACK\DC2\ETX,\b\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\ETX,\ETB'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\ETX,*,\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\f\DC2\ETX-\bH\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ACK\DC2\ETX-\b#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\SOH\DC2\ETX-$B\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ETX\DC2\ETX-EG\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\r\DC2\ETX.\bJ\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\ACK\DC2\ETX.\b$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\SOH\DC2\ETX.%D\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\ETX\DC2\ETX.GI\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SO\DC2\ETX/\b_\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\ACK\DC2\ETX/\b.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\SOH\DC2\ETX//Y\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\ETX\DC2\ETX/\\^\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SI\DC2\ETX0\bP\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\ACK\DC2\ETX0\b'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\SOH\DC2\ETX0(J\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\ETX\DC2\ETX0MO\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\DLE\DC2\ETX1\b9\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DLE\ACK\DC2\ETX1\b\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DLE\SOH\DC2\ETX1\GS3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DLE\ETX\DC2\ETX168\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\DC1\DC2\ETX2\b;\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC1\ACK\DC2\ETX2\b\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC1\SOH\DC2\ETX2\RS5\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC1\ETX\DC2\ETX28:\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\DC2\DC2\ETX3\bF\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC2\ACK\DC2\ETX3\b\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC2\SOH\DC2\ETX3#@\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC2\ETX\DC2\ETX3CE\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\DC3\DC2\ETX4\bN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC3\ACK\DC2\ETX4\b&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC3\SOH\DC2\ETX4'H\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC3\ETX\DC2\ETX4KM\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\DC4\DC2\ETX5\bA\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC4\ACK\DC2\ETX5\b \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC4\SOH\DC2\ETX5!;\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC4\ETX\DC2\ETX5>@\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NAK\DC2\ETX6\b,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NAK\ACK\DC2\ETX6\b\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NAK\SOH\DC2\ETX6\ETB&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NAK\ETX\DC2\ETX6)+\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SYN\DC2\ETX7\b=\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SYN\ACK\DC2\ETX7\b\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SYN\SOH\DC2\ETX7\US7\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SYN\ETX\DC2\ETX7:<\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETB\DC2\ETX8\bH\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETB\ACK\DC2\ETX8\b#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETB\SOH\DC2\ETX8$B\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETB\ETX\DC2\ETX8EG\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT<\NUL@\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX<\b\DC2\n\
    \S\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX>\EOT\DC3\SUBF Lang's incremental sequence number, used as the operation identifier\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX>\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX>\v\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX>\DC1\DC2\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX?\EOT7\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX?\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX?\GS2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX?56\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOTB\NULE\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXB\b\DC3\n\
    \K\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXD\EOT\DC3\SUB> Lang's incremental sequence number as passed to `StartTimer`\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXD\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXD\v\SO\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXD\DC1\DC2\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOTG\NULl\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXG\b\CAN\n\
    \S\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXI\EOT\DC3\SUBF Lang's incremental sequence number, used as the operation identifier\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXI\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXI\v\SO\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXI\DC1\DC2\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXJ\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETXJ\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXJ\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXJ\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETXK\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETXK\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXK\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXK\ESC\FS\n\
    \K\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETXM\EOT\SUB\SUB> The name of the task queue to place this activity request in\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETXM\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETXM\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETXM\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETXN\EOT<\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ACK\DC2\ETXN\EOT/\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETXN07\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETXN:;\n\
    \H\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\ETXP\EOT:\SUB; Arguments/input to the activity. Called \"input\" upstream.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\EOT\DC2\ETXP\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ACK\DC2\ETXP\r+\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETXP,5\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETXP89\n\
    \\137\STX\n\
    \\EOT\EOT\ETX\STX\ACK\DC2\ETXT\EOT;\SUB\251\SOH Indicates how long the caller is willing to wait for an activity completion. Limits how long\n\
    \ retries will be attempted. Either this or start_to_close_timeout_seconds must be specified.\n\
    \ When not specified defaults to the workflow execution timeout.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ACK\DC2\ETXT\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\SOH\DC2\ETXT\GS6\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ETX\DC2\ETXT9:\n\
    \\163\STX\n\
    \\EOT\EOT\ETX\STX\a\DC2\ETXX\EOT;\SUB\149\STX Limits time an activity task can stay in a task queue before a worker picks it up. This\n\
    \ timeout is always non retryable as all a retry would achieve is to put it back into the same\n\
    \ queue. Defaults to schedule_to_close_timeout or workflow execution timeout if not specified.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ACK\DC2\ETXX\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\SOH\DC2\ETXX\GS6\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ETX\DC2\ETXX9:\n\
    \\186\SOH\n\
    \\EOT\EOT\ETX\STX\b\DC2\ETX[\EOT9\SUB\172\SOH Maximum time an activity is allowed to execute after a pick up by a worker. This timeout is\n\
    \ always retryable. Either this or schedule_to_close_timeout must be specified.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ACK\DC2\ETX[\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\SOH\DC2\ETX[\GS3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ETX\DC2\ETX[68\n\
    \I\n\
    \\EOT\EOT\ETX\STX\t\DC2\ETX]\EOT4\SUB< Maximum time allowed between successful worker heartbeats.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\ACK\DC2\ETX]\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\SOH\DC2\ETX]\GS.\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\ETX\DC2\ETX]13\n\
    \\235\SOH\n\
    \\EOT\EOT\ETX\STX\n\
    \\DC2\ETXa\EOT9\SUB\221\SOH Activities are provided by a default retry policy controlled through the service dynamic\n\
    \ configuration. Retries are happening up to schedule_to_close_timeout. To disable retries set\n\
    \ retry_policy.maximum_attempts to 1.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ACK\DC2\ETXa\EOT&\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\SOH\DC2\ETXa'3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ETX\DC2\ETXa68\n\
    \k\n\
    \\EOT\EOT\ETX\STX\v\DC2\ETXc\EOT4\SUB^ Defines how the workflow will wait (or not) for cancellation of the activity to be confirmed\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\ACK\DC2\ETXc\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\SOH\DC2\ETXc\GS.\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\ETX\DC2\ETXc13\n\
    \\217\SOH\n\
    \\EOT\EOT\ETX\STX\f\DC2\ETXg\EOT%\SUB\203\SOH If set, the worker will not tell the service that it can immediately start executing this\n\
    \ activity. When unset/default, workers will always attempt to do so if activity execution\n\
    \ slots are available.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\ENQ\DC2\ETXg\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\SOH\DC2\ETXg\t\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\ETX\DC2\ETXg\"$\n\
    \^\n\
    \\EOT\EOT\ETX\STX\r\DC2\ETXi\EOT;\SUBQ Whether this activity should run on a worker with a compatible build id or not.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\r\ACK\DC2\ETXi\EOT#\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\r\SOH\DC2\ETXi$5\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\r\ETX\DC2\ETXi8:\n\
    \4\n\
    \\EOT\EOT\ETX\STX\SO\DC2\ETXk\EOT2\SUB' The Priority to use for this activity\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SO\ACK\DC2\ETXk\EOT#\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SO\SOH\DC2\ETXk$,\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SO\ETX\DC2\ETXk/1\n\
    \\v\n\
    \\STX\EOT\EOT\DC2\ENQn\NUL\155\SOH\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXn\b\GS\n\
    \S\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXp\EOT\DC3\SUBF Lang's incremental sequence number, used as the operation identifier\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXp\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXp\v\SO\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXp\DC1\DC2\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXq\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXq\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXq\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXq\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXr\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETXr\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXr\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXr\ESC\FS\n\
    \\204\SOH\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETXv\EOT\ETB\SUB\190\SOH Local activities can start with a non-1 attempt, if lang has been told to backoff using\n\
    \ a timer before retrying. It should pass the attempt number from a `DoBackoff` activity\n\
    \ resolution.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETXv\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETXv\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETXv\NAK\SYN\n\
    \\152\SOH\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\ETXy\EOT9\SUB\138\SOH If this local activity is a retry (as per the attempt field) this needs to be the original\n\
    \ scheduling time (as provided in `DoBackoff`)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ACK\DC2\ETXy\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\ETXy\RS4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\ETXy78\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\ETXz\EOT<\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ACK\DC2\ETXz\EOT/\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\ETXz07\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\ETXz:;\n\
    \/\n\
    \\EOT\EOT\EOT\STX\ACK\DC2\ETX|\EOT:\SUB\" Arguments/input to the activity.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\EOT\DC2\ETX|\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\ACK\DC2\ETX|\r+\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\SOH\DC2\ETX|,5\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\ETX\DC2\ETX|89\n\
    \\225\SOH\n\
    \\EOT\EOT\EOT\STX\a\DC2\EOT\128\SOH\EOT;\SUB\210\SOH Indicates how long the caller is willing to wait for local activity completion. Limits how\n\
    \ long retries will be attempted. When not specified defaults to the workflow execution\n\
    \ timeout (which may be unset).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\a\ACK\DC2\EOT\128\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\a\SOH\DC2\EOT\128\SOH\GS6\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\a\ETX\DC2\EOT\128\SOH9:\n\
    \\190\ETX\n\
    \\EOT\EOT\EOT\STX\b\DC2\EOT\134\SOH\EOT;\SUB\175\ETX Limits time the local activity can idle internally before being executed. That can happen if\n\
    \ the worker is currently at max concurrent local activity executions. This timeout is always\n\
    \ non retryable as all a retry would achieve is to put it back into the same queue. Defaults\n\
    \ to `schedule_to_close_timeout` if not specified and that is set. Must be <=\n\
    \ `schedule_to_close_timeout` when set, otherwise, it will be clamped down.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\b\ACK\DC2\EOT\134\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\b\SOH\DC2\EOT\134\SOH\GS6\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\b\ETX\DC2\EOT\134\SOH9:\n\
    \\172\STX\n\
    \\EOT\EOT\EOT\STX\t\DC2\EOT\139\SOH\EOT9\SUB\157\STX Maximum time the local activity is allowed to execute after the task is dispatched. This\n\
    \ timeout is always retryable. Either or both of `schedule_to_close_timeout` and this must be\n\
    \ specified. If set, this must be <= `schedule_to_close_timeout`, otherwise, it will be\n\
    \ clamped down.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\t\ACK\DC2\EOT\139\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\t\SOH\DC2\EOT\139\SOH\GS3\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\t\ETX\DC2\EOT\139\SOH68\n\
    \y\n\
    \\EOT\EOT\EOT\STX\n\
    \\DC2\EOT\142\SOH\EOT9\SUBk Specify a retry policy for the local activity. By default local activities will be retried\n\
    \ indefinitely.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\n\
    \\ACK\DC2\EOT\142\SOH\EOT&\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\n\
    \\SOH\DC2\EOT\142\SOH'3\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\n\
    \\ETX\DC2\EOT\142\SOH68\n\
    \\224\SOH\n\
    \\EOT\EOT\EOT\STX\v\DC2\EOT\146\SOH\EOT8\SUB\209\SOH If the activity is retrying and backoff would exceed this value, lang will be told to\n\
    \ schedule a timer and retry the activity after. Otherwise, backoff will happen internally in\n\
    \ core. Defaults to 1 minute.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\v\ACK\DC2\EOT\146\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\v\SOH\DC2\EOT\146\SOH\GS2\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\v\ETX\DC2\EOT\146\SOH57\n\
    \\233\SOH\n\
    \\EOT\EOT\EOT\STX\f\DC2\EOT\150\SOH\EOT4\SUB\218\SOH Defines how the workflow will wait (or not) for cancellation of the activity to be\n\
    \ confirmed. Lang should default this to `WAIT_CANCELLATION_COMPLETED`, even though proto\n\
    \ will default to `TRY_CANCEL` automatically.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\f\ACK\DC2\EOT\150\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\f\SOH\DC2\EOT\150\SOH\GS.\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\f\ETX\DC2\EOT\150\SOH13\n\
    \\233\SOH\n\
    \\EOT\EOT\EOT\STX\r\DC2\EOT\154\SOH\EOT*\SUB\218\SOH If set, the local activity arguments will be included in the resulting marker under the\n\
    \ `input` key. This is disabled by default to avoid increasing history size unless the lang\n\
    \ SDK explicitly chooses to expose it.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\r\ENQ\DC2\EOT\154\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\r\SOH\DC2\EOT\154\SOH\t$\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\r\ETX\DC2\EOT\154\SOH')\n\
    \\f\n\
    \\STX\ENQ\NUL\DC2\ACK\157\SOH\NUL\167\SOH\SOH\n\
    \\v\n\
    \\ETX\ENQ\NUL\SOH\DC2\EOT\157\SOH\ENQ\GS\n\
    \d\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\EOT\159\SOH\EOT\DC3\SUBV Initiate a cancellation request and immediately report cancellation to the workflow.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\EOT\159\SOH\EOT\SO\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\EOT\159\SOH\DC1\DC2\n\
    \\132\STX\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\EOT\163\SOH\EOT$\SUB\245\SOH Wait for activity cancellation completion. Note that activity must heartbeat to receive a\n\
    \ cancellation notification. This can block the cancellation for a long time if activity\n\
    \ doesn't heartbeat or chooses to ignore the cancellation request.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\EOT\163\SOH\EOT\US\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\EOT\163\SOH\"#\n\
    \p\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\EOT\166\SOH\EOT\DLE\SUBb Do not request cancellation of the activity and immediately report cancellation to the\n\
    \ workflow\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\EOT\166\SOH\EOT\v\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\EOT\166\SOH\SO\SI\n\
    \\f\n\
    \\STX\EOT\ENQ\DC2\ACK\169\SOH\NUL\172\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\169\SOH\b\GS\n\
    \R\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\171\SOH\EOT\DC3\SUBD Lang's incremental sequence number as passed to `ScheduleActivity`\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\EOT\171\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\171\SOH\v\SO\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\171\SOH\DC1\DC2\n\
    \\f\n\
    \\STX\EOT\ACK\DC2\ACK\174\SOH\NUL\177\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\174\SOH\b\"\n\
    \W\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\176\SOH\EOT\DC3\SUBI Lang's incremental sequence number as passed to `ScheduleLocalActivity`\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\EOT\176\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\176\SOH\v\SO\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\176\SOH\DC1\DC2\n\
    \\f\n\
    \\STX\EOT\a\DC2\ACK\179\SOH\NUL\186\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\179\SOH\b\DC3\n\
    \D\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\181\SOH\EOT\CAN\SUB6 Corresponds to the id provided in the activation job\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\EOT\181\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\181\SOH\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\181\SOH\SYN\ETB\n\
    \\SO\n\
    \\EOT\EOT\a\b\NUL\DC2\ACK\182\SOH\EOT\185\SOH\ENQ\n\
    \\r\n\
    \\ENQ\EOT\a\b\NUL\SOH\DC2\EOT\182\SOH\n\
    \\DC1\n\
    \\f\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\183\SOH\b#\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\EOT\183\SOH\b\DC4\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\183\SOH\NAK\RS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\183\SOH!\"\n\
    \\f\n\
    \\EOT\EOT\a\STX\STX\DC2\EOT\184\SOH\b3\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ACK\DC2\EOT\184\SOH\b'\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\EOT\184\SOH(.\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\EOT\184\SOH12\n\
    \\f\n\
    \\STX\EOT\b\DC2\ACK\188\SOH\NUL\190\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\188\SOH\b\DC4\n\
    \\f\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\189\SOH\EOT0\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\EOT\189\SOH\EOT\"\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\189\SOH#+\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\189\SOH./\n\
    \?\n\
    \\STX\EOT\t\DC2\ACK\193\SOH\NUL\195\SOH\SOH\SUB1 Issued when the workflow completes successfully\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\193\SOH\b!\n\
    \\f\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\194\SOH\EOT.\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\194\SOH\EOT\"\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\194\SOH#)\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\194\SOH,-\n\
    \3\n\
    \\STX\EOT\n\
    \\DC2\ACK\198\SOH\NUL\200\SOH\SOH\SUB% Issued when the workflow errors out\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\198\SOH\b\GS\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\199\SOH\EOT0\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ACK\DC2\EOT\199\SOH\EOT#\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\199\SOH$+\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\199\SOH./\n\
    \8\n\
    \\STX\EOT\v\DC2\ACK\203\SOH\NUL\234\SOH\SOH\SUB* Continue the workflow as a new execution\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\203\SOH\b&\n\
    \R\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\205\SOH\EOT\GS\SUBD The identifier the lang-specific sdk uses to execute workflow code\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\EOT\205\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\205\SOH\v\CAN\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\205\SOH\ESC\FS\n\
    \9\n\
    \\EOT\EOT\v\STX\SOH\DC2\EOT\207\SOH\EOT\SUB\SUB+ Task queue for the new workflow execution\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\EOT\207\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\EOT\207\SOH\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\EOT\207\SOH\CAN\EM\n\
    \\140\SOH\n\
    \\EOT\EOT\v\STX\STX\DC2\EOT\210\SOH\EOT:\SUB~ Inputs to the workflow code. Should be specified. Will not re-use old arguments, as that\n\
    \ typically wouldn't make any sense.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\EOT\DC2\EOT\210\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ACK\DC2\EOT\210\SOH\r+\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\EOT\210\SOH,5\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\EOT\210\SOH89\n\
    \g\n\
    \\EOT\EOT\v\STX\ETX\DC2\EOT\212\SOH\EOT6\SUBY Timeout for a single run of the new workflow. Will not re-use current workflow's value.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ACK\DC2\EOT\212\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\SOH\DC2\EOT\212\SOH\GS1\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ETX\DC2\EOT\212\SOH45\n\
    \\\\n\
    \\EOT\EOT\v\STX\EOT\DC2\EOT\214\SOH\EOT7\SUBN Timeout of a single workflow task. Will not re-use current workflow's value.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\ACK\DC2\EOT\214\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\SOH\DC2\EOT\214\SOH\GS2\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\ETX\DC2\EOT\214\SOH56\n\
    \k\n\
    \\EOT\EOT\v\STX\ENQ\DC2\EOT\216\SOH\EOT9\SUB] If set, the new workflow will have this memo. If unset, re-uses the current workflow's memo\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ENQ\ACK\DC2\EOT\216\SOH\EOT/\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ENQ\SOH\DC2\EOT\216\SOH04\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ENQ\ETX\DC2\EOT\216\SOH78\n\
    \z\n\
    \\EOT\EOT\v\STX\ACK\DC2\EOT\219\SOH\EOT<\SUBl If set, the new workflow will have these headers. Will *not* re-use current workflow's\n\
    \ headers otherwise.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ACK\ACK\DC2\EOT\219\SOH\EOT/\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ACK\SOH\DC2\EOT\219\SOH07\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ACK\ETX\DC2\EOT\219\SOH:;\n\
    \\136\SOH\n\
    \\EOT\EOT\v\STX\a\DC2\EOT\222\SOH\EOTB\SUBz If set, the new workflow will have these search attributes. If unset, re-uses the current\n\
    \ workflow's search attributes.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\a\ACK\DC2\EOT\222\SOH\EOT+\n\
    \\r\n\
    \\ENQ\EOT\v\STX\a\SOH\DC2\EOT\222\SOH,=\n\
    \\r\n\
    \\ENQ\EOT\v\STX\a\ETX\DC2\EOT\222\SOH@A\n\
    \}\n\
    \\EOT\EOT\v\STX\b\DC2\EOT\225\SOH\EOT8\SUBo If set, the new workflow will have this retry policy. If unset, re-uses the current\n\
    \ workflow's retry policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\b\ACK\DC2\EOT\225\SOH\EOT&\n\
    \\r\n\
    \\ENQ\EOT\v\STX\b\SOH\DC2\EOT\225\SOH'3\n\
    \\r\n\
    \\ENQ\EOT\v\STX\b\ETX\DC2\EOT\225\SOH67\n\
    \h\n\
    \\EOT\EOT\v\STX\t\DC2\EOT\227\SOH\EOT;\SUBZ Whether the continued workflow should run on a worker with a compatible build id or not.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\t\ACK\DC2\EOT\227\SOH\EOT#\n\
    \\r\n\
    \\ENQ\EOT\v\STX\t\SOH\DC2\EOT\227\SOH$5\n\
    \\r\n\
    \\ENQ\EOT\v\STX\t\ETX\DC2\EOT\227\SOH8:\n\
    \\237\SOH\n\
    \\EOT\EOT\v\STX\n\
    \\DC2\EOT\231\SOH\EOT[\SUB\222\SOH Experimental. Optionally decide the versioning behavior that the first task of the new run should use.\n\
    \ For example, choose to AutoUpgrade on continue-as-new instead of inheriting the pinned version\n\
    \ of the previous run.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\n\
    \\ACK\DC2\EOT\231\SOH\EOT9\n\
    \\r\n\
    \\ENQ\EOT\v\STX\n\
    \\SOH\DC2\EOT\231\SOH:U\n\
    \\r\n\
    \\ENQ\EOT\v\STX\n\
    \\ETX\DC2\EOT\231\SOHXZ\n\
    \W\n\
    \\EOT\EOT\v\STX\v\DC2\EOT\233\SOH\EOT9\SUBI Delay before the first workflow task of the continued run is scheduled.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\v\ACK\DC2\EOT\233\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\v\SOH\DC2\EOT\233\SOH\GS3\n\
    \\r\n\
    \\ENQ\EOT\v\STX\v\ETX\DC2\EOT\233\SOH68\n\
    \\141\SOH\n\
    \\STX\EOT\f\DC2\ACK\238\SOH\NUL\240\SOH\SOH\SUB\DEL Indicate a workflow has completed as cancelled. Generally sent as a response to an activation\n\
    \ containing a cancellation job.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\238\SOH\b\US\n\
    \\f\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\239\SOH\EOT0\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ACK\DC2\EOT\239\SOH\EOT#\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\239\SOH$+\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\239\SOH./\n\
    \K\n\
    \\STX\EOT\r\DC2\ACK\243\SOH\NUL\251\SOH\SOH\SUB= A request to set/check if a certain patch is present or not\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\243\SOH\b\SYN\n\
    \\242\SOH\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\247\SOH\EOT\CAN\SUB\227\SOH A user-chosen identifier for this patch. If the same identifier is used in multiple places in\n\
    \ the code, those places are considered to be versioned as one unit. IE: The check call will\n\
    \ return the same result for all of them\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\EOT\247\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\247\SOH\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\247\SOH\SYN\ETB\n\
    \\180\SOH\n\
    \\EOT\EOT\r\STX\SOH\DC2\EOT\250\SOH\EOT\CAN\SUB\165\SOH Can be set to true to indicate that branches using this change are being removed, and all\n\
    \ future worker deployments will only have the \"with change\" code in them.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ENQ\DC2\EOT\250\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\EOT\250\SOH\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\EOT\250\SOH\SYN\ETB\n\
    \0\n\
    \\STX\EOT\SO\DC2\ACK\254\SOH\NUL\162\STX\SOH\SUB\" Start a child workflow execution\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\254\SOH\b#\n\
    \T\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\128\STX\EOT\DC3\SUBF Lang's incremental sequence number, used as the operation identifier\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\EOT\128\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\128\STX\v\SO\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\128\STX\DC1\DC2\n\
    \\f\n\
    \\EOT\EOT\SO\STX\SOH\DC2\EOT\129\STX\EOT\EM\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ENQ\DC2\EOT\129\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\EOT\129\STX\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\EOT\129\STX\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\SO\STX\STX\DC2\EOT\130\STX\EOT\ESC\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ENQ\DC2\EOT\130\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\SOH\DC2\EOT\130\STX\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ETX\DC2\EOT\130\STX\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\SO\STX\ETX\DC2\EOT\131\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\ENQ\DC2\EOT\131\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\SOH\DC2\EOT\131\STX\v\CAN\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\ETX\DC2\EOT\131\STX\ESC\FS\n\
    \\f\n\
    \\EOT\EOT\SO\STX\EOT\DC2\EOT\132\STX\EOT\SUB\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EOT\ENQ\DC2\EOT\132\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EOT\SOH\DC2\EOT\132\STX\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EOT\ETX\DC2\EOT\132\STX\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\SO\STX\ENQ\DC2\EOT\133\STX\EOT6\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ENQ\EOT\DC2\EOT\133\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ENQ\ACK\DC2\EOT\133\STX\r+\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ENQ\SOH\DC2\EOT\133\STX,1\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ENQ\ETX\DC2\EOT\133\STX45\n\
    \W\n\
    \\EOT\EOT\SO\STX\ACK\DC2\EOT\135\STX\EOT<\SUBI Total workflow execution timeout including retries and continue as new.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ACK\ACK\DC2\EOT\135\STX\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ACK\SOH\DC2\EOT\135\STX\GS7\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ACK\ETX\DC2\EOT\135\STX:;\n\
    \1\n\
    \\EOT\EOT\SO\STX\a\DC2\EOT\137\STX\EOT6\SUB# Timeout of a single workflow run.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\a\ACK\DC2\EOT\137\STX\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\a\SOH\DC2\EOT\137\STX\GS1\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\a\ETX\DC2\EOT\137\STX45\n\
    \2\n\
    \\EOT\EOT\SO\STX\b\DC2\EOT\139\STX\EOT7\SUB$ Timeout of a single workflow task.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\b\ACK\DC2\EOT\139\STX\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\b\SOH\DC2\EOT\139\STX\GS2\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\b\ETX\DC2\EOT\139\STX56\n\
    \7\n\
    \\EOT\EOT\SO\STX\t\DC2\EOT\141\STX\EOT>\SUB) Default: PARENT_CLOSE_POLICY_TERMINATE.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\t\ACK\DC2\EOT\141\STX\EOT$\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\t\SOH\DC2\EOT\141\STX%8\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\t\ETX\DC2\EOT\141\STX;=\n\
    \\148\SOH\n\
    \\EOT\EOT\SO\STX\n\
    \\DC2\EOT\144\STX\EOTN\SUB\133\SOH string control = 11; (unused from StartChildWorkflowExecutionCommandAttributes)\n\
    \ Default: WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\n\
    \\ACK\DC2\EOT\144\STX\EOT/\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\n\
    \\SOH\DC2\EOT\144\STX0H\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\n\
    \\ETX\DC2\EOT\144\STXKM\n\
    \\f\n\
    \\EOT\EOT\SO\STX\v\DC2\EOT\145\STX\EOT9\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\v\ACK\DC2\EOT\145\STX\EOT&\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\v\SOH\DC2\EOT\145\STX'3\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\v\ETX\DC2\EOT\145\STX68\n\
    \\f\n\
    \\EOT\EOT\SO\STX\f\DC2\EOT\146\STX\EOT\RS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\f\ENQ\DC2\EOT\146\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\f\SOH\DC2\EOT\146\STX\v\CAN\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\f\ETX\DC2\EOT\146\STX\ESC\GS\n\
    \\GS\n\
    \\EOT\EOT\SO\STX\r\DC2\EOT\148\STX\EOT=\SUB\SI Header fields\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\r\ACK\DC2\EOT\148\STX\EOT/\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\r\SOH\DC2\EOT\148\STX07\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\r\ETX\DC2\EOT\148\STX:<\n\
    \\ESC\n\
    \\EOT\EOT\SO\STX\SO\DC2\EOT\150\STX\EOT:\SUB\r Memo fields\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SO\ACK\DC2\EOT\150\STX\EOT/\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SO\SOH\DC2\EOT\150\STX04\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SO\ETX\DC2\EOT\150\STX79\n\
    \!\n\
    \\EOT\EOT\SO\STX\SI\DC2\EOT\152\STX\EOTC\SUB\DC3 Search attributes\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SI\ACK\DC2\EOT\152\STX\EOT+\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SI\SOH\DC2\EOT\152\STX,=\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SI\ETX\DC2\EOT\152\STX@B\n\
    \q\n\
    \\EOT\EOT\SO\STX\DLE\DC2\EOT\154\STX\EOTH\SUBc Defines behaviour of the underlying workflow when child workflow cancellation has been requested.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DLE\ACK\DC2\EOT\154\STX\EOT0\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DLE\SOH\DC2\EOT\154\STX1B\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DLE\ETX\DC2\EOT\154\STXEG\n\
    \\\\n\
    \\EOT\EOT\SO\STX\DC1\DC2\EOT\156\STX\EOT;\SUBN Whether this child should run on a worker with a compatible build id or not.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DC1\ACK\DC2\EOT\156\STX\EOT#\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DC1\SOH\DC2\EOT\156\STX$5\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DC1\ETX\DC2\EOT\156\STX8:\n\
    \5\n\
    \\EOT\EOT\SO\STX\DC2\DC2\EOT\158\STX\EOT2\SUB' The Priority to use for this activity\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DC2\ACK\DC2\EOT\158\STX\EOT#\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DC2\SOH\DC2\EOT\158\STX$,\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DC2\ETX\DC2\EOT\158\STX/1\n\
    \\130\SOH\n\
    \\EOT\EOT\SO\STX\DC3\DC2\EOT\161\STX\EOTI\SUBt Allows routing the child independently of the parent's worker deployment version.\n\
    \ Requires Temporal Server 1.32+.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DC3\ACK\DC2\EOT\161\STX\EOT/\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DC3\SOH\DC2\EOT\161\STX0C\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DC3\ETX\DC2\EOT\161\STXFH\n\
    \'\n\
    \\STX\EOT\SI\DC2\ACK\165\STX\NUL\170\STX\SOH\SUB\EM Cancel a child workflow\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\165\STX\b$\n\
    \U\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\167\STX\EOT\"\SUBG Sequence number as given to the `StartChildWorkflowExecution` command\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ENQ\DC2\EOT\167\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\167\STX\v\GS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\167\STX !\n\
    \-\n\
    \\EOT\EOT\SI\STX\SOH\DC2\EOT\169\STX\EOT\SYN\SUB\US A reason for the cancellation\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ENQ\DC2\EOT\169\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\EOT\169\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\EOT\169\STX\DC4\NAK\n\
    \\207\SOH\n\
    \\STX\EOT\DLE\DC2\ACK\174\STX\NUL\181\STX\SOH\SUB\192\SOH Request cancellation of an external workflow execution. For cancellation of a child workflow,\n\
    \ prefer `CancelChildWorkflowExecution` instead, as it guards against cancel-before-start issues.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\174\STX\b.\n\
    \T\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\176\STX\EOT\DC3\SUBF Lang's incremental sequence number, used as the operation identifier\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\EOT\176\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\176\STX\v\SO\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\176\STX\DC1\DC2\n\
    \4\n\
    \\EOT\EOT\DLE\STX\SOH\DC2\EOT\178\STX\EOT>\SUB& The workflow instance being targeted\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ACK\DC2\EOT\178\STX\EOT&\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\EOT\178\STX'9\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\EOT\178\STX<=\n\
    \-\n\
    \\EOT\EOT\DLE\STX\STX\DC2\EOT\180\STX\EOT\SYN\SUB\US A reason for the cancellation\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ENQ\DC2\EOT\180\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\SOH\DC2\EOT\180\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ETX\DC2\EOT\180\STX\DC4\NAK\n\
    \>\n\
    \\STX\EOT\DC1\DC2\ACK\184\STX\NUL\200\STX\SOH\SUB0 Send a signal to an external or child workflow\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\184\STX\b'\n\
    \T\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\186\STX\EOT\DC3\SUBF Lang's incremental sequence number, used as the operation identifier\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ENQ\DC2\EOT\186\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\186\STX\v\SO\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\186\STX\DC1\DC2\n\
    \1\n\
    \\EOT\EOT\DC1\b\NUL\DC2\ACK\188\STX\EOT\193\STX\ENQ\SUB! What workflow is being targeted\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\b\NUL\SOH\DC2\EOT\188\STX\n\
    \\DLE\n\
    \,\n\
    \\EOT\EOT\DC1\STX\SOH\DC2\EOT\190\STX\bB\SUB\RS A specific workflow instance\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ACK\DC2\EOT\190\STX\b*\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\SOH\DC2\EOT\190\STX+=\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ETX\DC2\EOT\190\STX@A\n\
    \g\n\
    \\EOT\EOT\DC1\STX\STX\DC2\EOT\192\STX\b%\SUBY The desired target must be a child of the issuing workflow, and this is its workflow id\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\ENQ\DC2\EOT\192\STX\b\SO\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\SOH\DC2\EOT\192\STX\SI \n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\ETX\DC2\EOT\192\STX#$\n\
    \*\n\
    \\EOT\EOT\DC1\STX\ETX\DC2\EOT\195\STX\EOT\ESC\SUB\FS Name of the signal handler\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ETX\ENQ\DC2\EOT\195\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ETX\SOH\DC2\EOT\195\STX\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ETX\ETX\DC2\EOT\195\STX\EM\SUB\n\
    \)\n\
    \\EOT\EOT\DC1\STX\EOT\DC2\EOT\197\STX\EOT5\SUB\ESC Arguments for the handler\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\EOT\EOT\DC2\EOT\197\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\EOT\ACK\DC2\EOT\197\STX\r+\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\EOT\SOH\DC2\EOT\197\STX,0\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\EOT\ETX\DC2\EOT\197\STX34\n\
    \/\n\
    \\EOT\EOT\DC1\STX\ENQ\DC2\EOT\199\STX\EOT<\SUB! Headers to attach to the signal\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ENQ\ACK\DC2\EOT\199\STX\EOT/\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ENQ\SOH\DC2\EOT\199\STX07\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ENQ\ETX\DC2\EOT\199\STX:;\n\
    \a\n\
    \\STX\EOT\DC2\DC2\ACK\203\STX\NUL\206\STX\SOH\SUBS Can be used to cancel not-already-sent `SignalExternalWorkflowExecution` commands\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\203\STX\b\FS\n\
    \a\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\205\STX\EOT\DC3\SUBS Lang's incremental sequence number as passed to `SignalExternalWorkflowExecution`\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ENQ\DC2\EOT\205\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\205\STX\v\SO\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\205\STX\DC1\DC2\n\
    \\f\n\
    \\STX\EOT\DC3\DC2\ACK\208\STX\NUL\212\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\208\STX\b&\n\
    \\153\SOH\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\EOT\211\STX\EOTB\SUB\138\SOH SearchAttributes to upsert. The indexed_fields map will be merged with existing search\n\
    \ attributes, with these values taking precedence.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ACK\DC2\EOT\211\STX\EOT+\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\211\STX,=\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\211\STX@A\n\
    \\f\n\
    \\STX\EOT\DC4\DC2\ACK\214\STX\NUL\219\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\DC4\SOH\DC2\EOT\214\STX\b \n\
    \\242\SOH\n\
    \\EOT\EOT\DC4\STX\NUL\DC2\EOT\218\STX\EOT2\SUB\227\SOH If set, update the workflow memo with the provided values. The values will be merged with\n\
    \ the existing memo. If the user wants to delete values, a default/empty Payload should be\n\
    \ used as the value for the key being deleted.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ACK\DC2\EOT\218\STX\EOT\US\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\SOH\DC2\EOT\218\STX -\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ETX\DC2\EOT\218\STX01\n\
    \\166\EOT\n\
    \\STX\EOT\NAK\DC2\ACK\230\STX\NUL\244\STX\SOH\SUB\151\EOT A reply to a `DoUpdate` job - lang must run the update's validator if told to, and then\n\
    \ immediately run the handler, if the update was accepted.\n\
    \\n\
    \ There must always be an accepted or rejected response immediately, in the same activation as\n\
    \ this job, to indicate the result of the validator. Accepted for ran and accepted or skipped, or\n\
    \ rejected for rejected.\n\
    \\n\
    \ Then, in the same or any subsequent activation, after the update handler has completed, respond\n\
    \ with completed or rejected as appropriate for the result of the handler.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\NAK\SOH\DC2\EOT\230\STX\b\SYN\n\
    \0\n\
    \\EOT\EOT\NAK\STX\NUL\DC2\EOT\232\STX\EOT$\SUB\" The protocol message instance ID\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ENQ\DC2\EOT\232\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\SOH\DC2\EOT\232\STX\v\US\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ETX\DC2\EOT\232\STX\"#\n\
    \\SO\n\
    \\EOT\EOT\NAK\b\NUL\DC2\ACK\233\STX\EOT\243\STX\ENQ\n\
    \\r\n\
    \\ENQ\EOT\NAK\b\NUL\SOH\DC2\EOT\233\STX\n\
    \\DC2\n\
    \\209\SOH\n\
    \\EOT\EOT\NAK\STX\SOH\DC2\EOT\237\STX\b+\SUB\194\SOH Must be sent if the update's validator has passed (or lang was not asked to run it, and\n\
    \ thus should be considered already-accepted, allowing lang to always send the same\n\
    \ sequence on replay).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ACK\DC2\EOT\237\STX\b\GS\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\SOH\DC2\EOT\237\STX\RS&\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ETX\DC2\EOT\237\STX)*\n\
    \w\n\
    \\EOT\EOT\NAK\STX\STX\DC2\EOT\240\STX\b5\SUBi Must be sent if the update's validator does not pass, or after acceptance if the update\n\
    \ handler fails.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\ACK\DC2\EOT\240\STX\b'\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\SOH\DC2\EOT\240\STX(0\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\ETX\DC2\EOT\240\STX34\n\
    \L\n\
    \\EOT\EOT\NAK\STX\ETX\DC2\EOT\242\STX\b5\SUB> Must be sent once the update handler completes successfully.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ETX\ACK\DC2\EOT\242\STX\b&\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ETX\SOH\DC2\EOT\242\STX'0\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ETX\ETX\DC2\EOT\242\STX34\n\
    \4\n\
    \\STX\EOT\SYN\DC2\ACK\247\STX\NUL\159\ETX\SOH\SUB& A request to begin a Nexus operation\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SYN\SOH\DC2\EOT\247\STX\b\RS\n\
    \T\n\
    \\EOT\EOT\SYN\STX\NUL\DC2\EOT\249\STX\EOT\DC3\SUBF Lang's incremental sequence number, used as the operation identifier\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ENQ\DC2\EOT\249\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\SOH\DC2\EOT\249\STX\v\SO\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ETX\DC2\EOT\249\STX\DC1\DC2\n\
    \]\n\
    \\EOT\EOT\SYN\STX\SOH\DC2\EOT\251\STX\EOT\CAN\SUBO Endpoint name, must exist in the endpoint registry or this command will fail.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ENQ\DC2\EOT\251\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\SOH\DC2\EOT\251\STX\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ETX\DC2\EOT\251\STX\SYN\ETB\n\
    \\GS\n\
    \\EOT\EOT\SYN\STX\STX\DC2\EOT\253\STX\EOT\ETB\SUB\SI Service name.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\ENQ\DC2\EOT\253\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\SOH\DC2\EOT\253\STX\v\DC2\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\ETX\DC2\EOT\253\STX\NAK\SYN\n\
    \\US\n\
    \\EOT\EOT\SYN\STX\ETX\DC2\EOT\255\STX\EOT\EM\SUB\DC1 Operation name.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\ENQ\DC2\EOT\255\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\SOH\DC2\EOT\255\STX\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\ETX\DC2\EOT\255\STX\ETB\CAN\n\
    \\189\STX\n\
    \\EOT\EOT\SYN\STX\EOT\DC2\EOT\132\ETX\EOT-\SUB\174\STX Input for the operation. The server converts this into Nexus request content and the\n\
    \ appropriate content headers internally when sending the StartOperation request. On the\n\
    \ handler side, if it is also backed by Temporal, the content is transformed back to the\n\
    \ original Payload sent in this command.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\EOT\ACK\DC2\EOT\132\ETX\EOT\"\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\EOT\SOH\DC2\EOT\132\ETX#(\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\EOT\ETX\DC2\EOT\132\ETX+,\n\
    \\183\SOH\n\
    \\EOT\EOT\SYN\STX\ENQ\DC2\EOT\136\ETX\EOT;\SUB\168\SOH Schedule-to-close timeout for this operation.\n\
    \ Indicates how long the caller is willing to wait for operation completion.\n\
    \ Calls are retried internally by the server.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ENQ\ACK\DC2\EOT\136\ETX\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ENQ\SOH\DC2\EOT\136\ETX\GS6\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ENQ\ETX\DC2\EOT\136\ETX9:\n\
    \\200\ETX\n\
    \\EOT\EOT\SYN\STX\ACK\DC2\EOT\143\ETX\EOT)\SUB\185\ETX Header to attach to the Nexus request.\n\
    \ Users are responsible for encrypting sensitive data in this header as it is stored in\n\
    \ workflow history and transmitted to external services as-is. This is useful for propagating\n\
    \ tracing information. Note these headers are not the same as Temporal headers on internal\n\
    \ activities and child workflows, these are transmitted to Nexus operations that may be\n\
    \ external and are not traditional payloads.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ACK\ACK\DC2\EOT\143\ETX\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ACK\SOH\DC2\EOT\143\ETX\CAN$\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ACK\ETX\DC2\EOT\143\ETX'(\n\
    \s\n\
    \\EOT\EOT\SYN\STX\a\DC2\EOT\145\ETX\EOT?\SUBe Defines behaviour of the underlying nexus operation when operation cancellation has been requested.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\a\ACK\DC2\EOT\145\ETX\EOT(\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\a\SOH\DC2\EOT\145\ETX):\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\a\ETX\DC2\EOT\145\ETX=>\n\
    \\230\STX\n\
    \\EOT\EOT\SYN\STX\b\DC2\EOT\151\ETX\EOT;\SUB\215\STX Schedule-to-start timeout for this operation.\n\
    \ Indicates how long the caller is willing to wait for the operation to be started (or completed if synchronous)\n\
    \ by the handler. If the operation is not started within this timeout, it will fail with\n\
    \ TIMEOUT_TYPE_SCHEDULE_TO_START.\n\
    \ If not set or zero, no schedule-to-start timeout is enforced.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\b\ACK\DC2\EOT\151\ETX\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\b\SOH\DC2\EOT\151\ETX\GS6\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\b\ETX\DC2\EOT\151\ETX9:\n\
    \\188\ETX\n\
    \\EOT\EOT\SYN\STX\t\DC2\EOT\158\ETX\EOT9\SUB\173\ETX Start-to-close timeout for this operation.\n\
    \ Indicates how long the caller is willing to wait for an asynchronous operation to complete after it has been\n\
    \ started. If the operation does not complete within this timeout after starting, it will fail with\n\
    \ TIMEOUT_TYPE_START_TO_CLOSE.\n\
    \ Only applies to asynchronous operations. Synchronous operations ignore this timeout.\n\
    \ If not set or zero, no start-to-close timeout is enforced.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\t\ACK\DC2\EOT\158\ETX\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\t\SOH\DC2\EOT\158\ETX\GS3\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\t\ETX\DC2\EOT\158\ETX68\n\
    \^\n\
    \\STX\EOT\ETB\DC2\ACK\162\ETX\NUL\165\ETX\SOH\SUBP Request cancellation of a nexus operation started via `ScheduleNexusOperation`\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETB\SOH\DC2\EOT\162\ETX\b#\n\
    \X\n\
    \\EOT\EOT\ETB\STX\NUL\DC2\EOT\164\ETX\EOT\DC3\SUBJ Lang's incremental sequence number as passed to `ScheduleNexusOperation`\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ENQ\DC2\EOT\164\ETX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\SOH\DC2\EOT\164\ETX\v\SO\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ETX\DC2\EOT\164\ETX\DC1\DC2b\ACKproto3"