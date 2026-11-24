{- This file was auto-generated from temporal/api/command/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Command.V1.Message (
        CancelTimerCommandAttributes(),
        CancelWorkflowExecutionCommandAttributes(), Command(),
        Command'Attributes(..),
        _Command'ScheduleActivityTaskCommandAttributes,
        _Command'StartTimerCommandAttributes,
        _Command'CompleteWorkflowExecutionCommandAttributes,
        _Command'FailWorkflowExecutionCommandAttributes,
        _Command'RequestCancelActivityTaskCommandAttributes,
        _Command'CancelTimerCommandAttributes,
        _Command'CancelWorkflowExecutionCommandAttributes,
        _Command'RequestCancelExternalWorkflowExecutionCommandAttributes,
        _Command'RecordMarkerCommandAttributes,
        _Command'ContinueAsNewWorkflowExecutionCommandAttributes,
        _Command'StartChildWorkflowExecutionCommandAttributes,
        _Command'SignalExternalWorkflowExecutionCommandAttributes,
        _Command'UpsertWorkflowSearchAttributesCommandAttributes,
        _Command'ProtocolMessageCommandAttributes,
        _Command'ModifyWorkflowPropertiesCommandAttributes,
        _Command'ScheduleNexusOperationCommandAttributes,
        _Command'RequestCancelNexusOperationCommandAttributes,
        CompleteWorkflowExecutionCommandAttributes(),
        ContinueAsNewWorkflowExecutionCommandAttributes(),
        FailWorkflowExecutionCommandAttributes(),
        ModifyWorkflowPropertiesCommandAttributes(),
        ProtocolMessageCommandAttributes(),
        RecordMarkerCommandAttributes(),
        RecordMarkerCommandAttributes'DetailsEntry(),
        RequestCancelActivityTaskCommandAttributes(),
        RequestCancelExternalWorkflowExecutionCommandAttributes(),
        RequestCancelNexusOperationCommandAttributes(),
        ScheduleActivityTaskCommandAttributes(),
        ScheduleNexusOperationCommandAttributes(),
        ScheduleNexusOperationCommandAttributes'NexusHeaderEntry(),
        SignalExternalWorkflowExecutionCommandAttributes(),
        StartChildWorkflowExecutionCommandAttributes(),
        StartTimerCommandAttributes(),
        UpsertWorkflowSearchAttributesCommandAttributes()
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
import qualified Proto.Temporal.Api.Common.V1.Message
import qualified Proto.Temporal.Api.Enums.V1.CommandType
import qualified Proto.Temporal.Api.Enums.V1.Workflow
import qualified Proto.Temporal.Api.Failure.V1.Message
import qualified Proto.Temporal.Api.Sdk.V1.EventGroupMarker
import qualified Proto.Temporal.Api.Sdk.V1.UserMetadata
import qualified Proto.Temporal.Api.Taskqueue.V1.Message
import qualified Proto.Temporal.Api.Workflow.V1.Message
{- | Fields :
     
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.timerId' @:: Lens' CancelTimerCommandAttributes Data.Text.Text@ -}
data CancelTimerCommandAttributes
  = CancelTimerCommandAttributes'_constructor {_CancelTimerCommandAttributes'timerId :: !Data.Text.Text,
                                               _CancelTimerCommandAttributes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CancelTimerCommandAttributes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CancelTimerCommandAttributes "timerId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelTimerCommandAttributes'timerId
           (\ x__ y__ -> x__ {_CancelTimerCommandAttributes'timerId = y__}))
        Prelude.id
instance Data.ProtoLens.Message CancelTimerCommandAttributes where
  messageName _
    = Data.Text.pack
        "temporal.api.command.v1.CancelTimerCommandAttributes"
  packedMessageDescriptor _
    = "\n\
      \\FSCancelTimerCommandAttributes\DC2\EM\n\
      \\btimer_id\CAN\SOH \SOH(\tR\atimerId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        timerId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timer_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"timerId")) ::
              Data.ProtoLens.FieldDescriptor CancelTimerCommandAttributes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, timerId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CancelTimerCommandAttributes'_unknownFields
        (\ x__ y__
           -> x__ {_CancelTimerCommandAttributes'_unknownFields = y__})
  defMessage
    = CancelTimerCommandAttributes'_constructor
        {_CancelTimerCommandAttributes'timerId = Data.ProtoLens.fieldDefault,
         _CancelTimerCommandAttributes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CancelTimerCommandAttributes
          -> Data.ProtoLens.Encoding.Bytes.Parser CancelTimerCommandAttributes
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
                                       "timer_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"timerId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CancelTimerCommandAttributes"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"timerId") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CancelTimerCommandAttributes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CancelTimerCommandAttributes'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CancelTimerCommandAttributes'timerId x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.details' @:: Lens' CancelWorkflowExecutionCommandAttributes Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'details' @:: Lens' CancelWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@ -}
data CancelWorkflowExecutionCommandAttributes
  = CancelWorkflowExecutionCommandAttributes'_constructor {_CancelWorkflowExecutionCommandAttributes'details :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads),
                                                           _CancelWorkflowExecutionCommandAttributes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CancelWorkflowExecutionCommandAttributes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CancelWorkflowExecutionCommandAttributes "details" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelWorkflowExecutionCommandAttributes'details
           (\ x__ y__
              -> x__ {_CancelWorkflowExecutionCommandAttributes'details = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CancelWorkflowExecutionCommandAttributes "maybe'details" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelWorkflowExecutionCommandAttributes'details
           (\ x__ y__
              -> x__ {_CancelWorkflowExecutionCommandAttributes'details = y__}))
        Prelude.id
instance Data.ProtoLens.Message CancelWorkflowExecutionCommandAttributes where
  messageName _
    = Data.Text.pack
        "temporal.api.command.v1.CancelWorkflowExecutionCommandAttributes"
  packedMessageDescriptor _
    = "\n\
      \(CancelWorkflowExecutionCommandAttributes\DC2:\n\
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
              Data.ProtoLens.FieldDescriptor CancelWorkflowExecutionCommandAttributes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, details__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CancelWorkflowExecutionCommandAttributes'_unknownFields
        (\ x__ y__
           -> x__
                {_CancelWorkflowExecutionCommandAttributes'_unknownFields = y__})
  defMessage
    = CancelWorkflowExecutionCommandAttributes'_constructor
        {_CancelWorkflowExecutionCommandAttributes'details = Prelude.Nothing,
         _CancelWorkflowExecutionCommandAttributes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CancelWorkflowExecutionCommandAttributes
          -> Data.ProtoLens.Encoding.Bytes.Parser CancelWorkflowExecutionCommandAttributes
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
          (do loop Data.ProtoLens.defMessage)
          "CancelWorkflowExecutionCommandAttributes"
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
instance Control.DeepSeq.NFData CancelWorkflowExecutionCommandAttributes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CancelWorkflowExecutionCommandAttributes'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CancelWorkflowExecutionCommandAttributes'details x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.commandType' @:: Lens' Command Proto.Temporal.Api.Enums.V1.CommandType.CommandType@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.userMetadata' @:: Lens' Command Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'userMetadata' @:: Lens' Command (Prelude.Maybe Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.eventGroupMarkers' @:: Lens' Command [Proto.Temporal.Api.Sdk.V1.EventGroupMarker.EventGroupMarker]@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.vec'eventGroupMarkers' @:: Lens' Command (Data.Vector.Vector Proto.Temporal.Api.Sdk.V1.EventGroupMarker.EventGroupMarker)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'attributes' @:: Lens' Command (Prelude.Maybe Command'Attributes)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'scheduleActivityTaskCommandAttributes' @:: Lens' Command (Prelude.Maybe ScheduleActivityTaskCommandAttributes)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.scheduleActivityTaskCommandAttributes' @:: Lens' Command ScheduleActivityTaskCommandAttributes@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'startTimerCommandAttributes' @:: Lens' Command (Prelude.Maybe StartTimerCommandAttributes)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.startTimerCommandAttributes' @:: Lens' Command StartTimerCommandAttributes@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'completeWorkflowExecutionCommandAttributes' @:: Lens' Command (Prelude.Maybe CompleteWorkflowExecutionCommandAttributes)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.completeWorkflowExecutionCommandAttributes' @:: Lens' Command CompleteWorkflowExecutionCommandAttributes@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'failWorkflowExecutionCommandAttributes' @:: Lens' Command (Prelude.Maybe FailWorkflowExecutionCommandAttributes)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.failWorkflowExecutionCommandAttributes' @:: Lens' Command FailWorkflowExecutionCommandAttributes@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'requestCancelActivityTaskCommandAttributes' @:: Lens' Command (Prelude.Maybe RequestCancelActivityTaskCommandAttributes)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.requestCancelActivityTaskCommandAttributes' @:: Lens' Command RequestCancelActivityTaskCommandAttributes@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'cancelTimerCommandAttributes' @:: Lens' Command (Prelude.Maybe CancelTimerCommandAttributes)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.cancelTimerCommandAttributes' @:: Lens' Command CancelTimerCommandAttributes@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'cancelWorkflowExecutionCommandAttributes' @:: Lens' Command (Prelude.Maybe CancelWorkflowExecutionCommandAttributes)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.cancelWorkflowExecutionCommandAttributes' @:: Lens' Command CancelWorkflowExecutionCommandAttributes@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'requestCancelExternalWorkflowExecutionCommandAttributes' @:: Lens' Command (Prelude.Maybe RequestCancelExternalWorkflowExecutionCommandAttributes)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.requestCancelExternalWorkflowExecutionCommandAttributes' @:: Lens' Command RequestCancelExternalWorkflowExecutionCommandAttributes@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'recordMarkerCommandAttributes' @:: Lens' Command (Prelude.Maybe RecordMarkerCommandAttributes)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.recordMarkerCommandAttributes' @:: Lens' Command RecordMarkerCommandAttributes@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'continueAsNewWorkflowExecutionCommandAttributes' @:: Lens' Command (Prelude.Maybe ContinueAsNewWorkflowExecutionCommandAttributes)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.continueAsNewWorkflowExecutionCommandAttributes' @:: Lens' Command ContinueAsNewWorkflowExecutionCommandAttributes@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'startChildWorkflowExecutionCommandAttributes' @:: Lens' Command (Prelude.Maybe StartChildWorkflowExecutionCommandAttributes)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.startChildWorkflowExecutionCommandAttributes' @:: Lens' Command StartChildWorkflowExecutionCommandAttributes@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'signalExternalWorkflowExecutionCommandAttributes' @:: Lens' Command (Prelude.Maybe SignalExternalWorkflowExecutionCommandAttributes)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.signalExternalWorkflowExecutionCommandAttributes' @:: Lens' Command SignalExternalWorkflowExecutionCommandAttributes@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'upsertWorkflowSearchAttributesCommandAttributes' @:: Lens' Command (Prelude.Maybe UpsertWorkflowSearchAttributesCommandAttributes)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.upsertWorkflowSearchAttributesCommandAttributes' @:: Lens' Command UpsertWorkflowSearchAttributesCommandAttributes@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'protocolMessageCommandAttributes' @:: Lens' Command (Prelude.Maybe ProtocolMessageCommandAttributes)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.protocolMessageCommandAttributes' @:: Lens' Command ProtocolMessageCommandAttributes@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'modifyWorkflowPropertiesCommandAttributes' @:: Lens' Command (Prelude.Maybe ModifyWorkflowPropertiesCommandAttributes)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.modifyWorkflowPropertiesCommandAttributes' @:: Lens' Command ModifyWorkflowPropertiesCommandAttributes@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'scheduleNexusOperationCommandAttributes' @:: Lens' Command (Prelude.Maybe ScheduleNexusOperationCommandAttributes)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.scheduleNexusOperationCommandAttributes' @:: Lens' Command ScheduleNexusOperationCommandAttributes@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'requestCancelNexusOperationCommandAttributes' @:: Lens' Command (Prelude.Maybe RequestCancelNexusOperationCommandAttributes)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.requestCancelNexusOperationCommandAttributes' @:: Lens' Command RequestCancelNexusOperationCommandAttributes@ -}
data Command
  = Command'_constructor {_Command'commandType :: !Proto.Temporal.Api.Enums.V1.CommandType.CommandType,
                          _Command'userMetadata :: !(Prelude.Maybe Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata),
                          _Command'eventGroupMarkers :: !(Data.Vector.Vector Proto.Temporal.Api.Sdk.V1.EventGroupMarker.EventGroupMarker),
                          _Command'attributes :: !(Prelude.Maybe Command'Attributes),
                          _Command'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Command where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Command'Attributes
  = Command'ScheduleActivityTaskCommandAttributes !ScheduleActivityTaskCommandAttributes |
    Command'StartTimerCommandAttributes !StartTimerCommandAttributes |
    Command'CompleteWorkflowExecutionCommandAttributes !CompleteWorkflowExecutionCommandAttributes |
    Command'FailWorkflowExecutionCommandAttributes !FailWorkflowExecutionCommandAttributes |
    Command'RequestCancelActivityTaskCommandAttributes !RequestCancelActivityTaskCommandAttributes |
    Command'CancelTimerCommandAttributes !CancelTimerCommandAttributes |
    Command'CancelWorkflowExecutionCommandAttributes !CancelWorkflowExecutionCommandAttributes |
    Command'RequestCancelExternalWorkflowExecutionCommandAttributes !RequestCancelExternalWorkflowExecutionCommandAttributes |
    Command'RecordMarkerCommandAttributes !RecordMarkerCommandAttributes |
    Command'ContinueAsNewWorkflowExecutionCommandAttributes !ContinueAsNewWorkflowExecutionCommandAttributes |
    Command'StartChildWorkflowExecutionCommandAttributes !StartChildWorkflowExecutionCommandAttributes |
    Command'SignalExternalWorkflowExecutionCommandAttributes !SignalExternalWorkflowExecutionCommandAttributes |
    Command'UpsertWorkflowSearchAttributesCommandAttributes !UpsertWorkflowSearchAttributesCommandAttributes |
    Command'ProtocolMessageCommandAttributes !ProtocolMessageCommandAttributes |
    Command'ModifyWorkflowPropertiesCommandAttributes !ModifyWorkflowPropertiesCommandAttributes |
    Command'ScheduleNexusOperationCommandAttributes !ScheduleNexusOperationCommandAttributes |
    Command'RequestCancelNexusOperationCommandAttributes !RequestCancelNexusOperationCommandAttributes
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Command "commandType" Proto.Temporal.Api.Enums.V1.CommandType.CommandType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'commandType
           (\ x__ y__ -> x__ {_Command'commandType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Command "userMetadata" Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'userMetadata
           (\ x__ y__ -> x__ {_Command'userMetadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Command "maybe'userMetadata" (Prelude.Maybe Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'userMetadata
           (\ x__ y__ -> x__ {_Command'userMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Command "eventGroupMarkers" [Proto.Temporal.Api.Sdk.V1.EventGroupMarker.EventGroupMarker] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'eventGroupMarkers
           (\ x__ y__ -> x__ {_Command'eventGroupMarkers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Command "vec'eventGroupMarkers" (Data.Vector.Vector Proto.Temporal.Api.Sdk.V1.EventGroupMarker.EventGroupMarker) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'eventGroupMarkers
           (\ x__ y__ -> x__ {_Command'eventGroupMarkers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Command "maybe'attributes" (Prelude.Maybe Command'Attributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Command "maybe'scheduleActivityTaskCommandAttributes" (Prelude.Maybe ScheduleActivityTaskCommandAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Command'ScheduleActivityTaskCommandAttributes x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap Command'ScheduleActivityTaskCommandAttributes y__))
instance Data.ProtoLens.Field.HasField Command "scheduleActivityTaskCommandAttributes" ScheduleActivityTaskCommandAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Command'ScheduleActivityTaskCommandAttributes x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap Command'ScheduleActivityTaskCommandAttributes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Command "maybe'startTimerCommandAttributes" (Prelude.Maybe StartTimerCommandAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Command'StartTimerCommandAttributes x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Command'StartTimerCommandAttributes y__))
instance Data.ProtoLens.Field.HasField Command "startTimerCommandAttributes" StartTimerCommandAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Command'StartTimerCommandAttributes x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Command'StartTimerCommandAttributes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Command "maybe'completeWorkflowExecutionCommandAttributes" (Prelude.Maybe CompleteWorkflowExecutionCommandAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Command'CompleteWorkflowExecutionCommandAttributes x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   Command'CompleteWorkflowExecutionCommandAttributes y__))
instance Data.ProtoLens.Field.HasField Command "completeWorkflowExecutionCommandAttributes" CompleteWorkflowExecutionCommandAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Command'CompleteWorkflowExecutionCommandAttributes x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      Command'CompleteWorkflowExecutionCommandAttributes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Command "maybe'failWorkflowExecutionCommandAttributes" (Prelude.Maybe FailWorkflowExecutionCommandAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Command'FailWorkflowExecutionCommandAttributes x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   Command'FailWorkflowExecutionCommandAttributes y__))
instance Data.ProtoLens.Field.HasField Command "failWorkflowExecutionCommandAttributes" FailWorkflowExecutionCommandAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Command'FailWorkflowExecutionCommandAttributes x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      Command'FailWorkflowExecutionCommandAttributes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Command "maybe'requestCancelActivityTaskCommandAttributes" (Prelude.Maybe RequestCancelActivityTaskCommandAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Command'RequestCancelActivityTaskCommandAttributes x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   Command'RequestCancelActivityTaskCommandAttributes y__))
instance Data.ProtoLens.Field.HasField Command "requestCancelActivityTaskCommandAttributes" RequestCancelActivityTaskCommandAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Command'RequestCancelActivityTaskCommandAttributes x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      Command'RequestCancelActivityTaskCommandAttributes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Command "maybe'cancelTimerCommandAttributes" (Prelude.Maybe CancelTimerCommandAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Command'CancelTimerCommandAttributes x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Command'CancelTimerCommandAttributes y__))
instance Data.ProtoLens.Field.HasField Command "cancelTimerCommandAttributes" CancelTimerCommandAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Command'CancelTimerCommandAttributes x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Command'CancelTimerCommandAttributes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Command "maybe'cancelWorkflowExecutionCommandAttributes" (Prelude.Maybe CancelWorkflowExecutionCommandAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Command'CancelWorkflowExecutionCommandAttributes x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   Command'CancelWorkflowExecutionCommandAttributes y__))
instance Data.ProtoLens.Field.HasField Command "cancelWorkflowExecutionCommandAttributes" CancelWorkflowExecutionCommandAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Command'CancelWorkflowExecutionCommandAttributes x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      Command'CancelWorkflowExecutionCommandAttributes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Command "maybe'requestCancelExternalWorkflowExecutionCommandAttributes" (Prelude.Maybe RequestCancelExternalWorkflowExecutionCommandAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Command'RequestCancelExternalWorkflowExecutionCommandAttributes x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   Command'RequestCancelExternalWorkflowExecutionCommandAttributes
                   y__))
instance Data.ProtoLens.Field.HasField Command "requestCancelExternalWorkflowExecutionCommandAttributes" RequestCancelExternalWorkflowExecutionCommandAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Command'RequestCancelExternalWorkflowExecutionCommandAttributes x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      Command'RequestCancelExternalWorkflowExecutionCommandAttributes
                      y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Command "maybe'recordMarkerCommandAttributes" (Prelude.Maybe RecordMarkerCommandAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Command'RecordMarkerCommandAttributes x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap Command'RecordMarkerCommandAttributes y__))
instance Data.ProtoLens.Field.HasField Command "recordMarkerCommandAttributes" RecordMarkerCommandAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Command'RecordMarkerCommandAttributes x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap Command'RecordMarkerCommandAttributes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Command "maybe'continueAsNewWorkflowExecutionCommandAttributes" (Prelude.Maybe ContinueAsNewWorkflowExecutionCommandAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Command'ContinueAsNewWorkflowExecutionCommandAttributes x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   Command'ContinueAsNewWorkflowExecutionCommandAttributes y__))
instance Data.ProtoLens.Field.HasField Command "continueAsNewWorkflowExecutionCommandAttributes" ContinueAsNewWorkflowExecutionCommandAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Command'ContinueAsNewWorkflowExecutionCommandAttributes x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      Command'ContinueAsNewWorkflowExecutionCommandAttributes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Command "maybe'startChildWorkflowExecutionCommandAttributes" (Prelude.Maybe StartChildWorkflowExecutionCommandAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Command'StartChildWorkflowExecutionCommandAttributes x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   Command'StartChildWorkflowExecutionCommandAttributes y__))
instance Data.ProtoLens.Field.HasField Command "startChildWorkflowExecutionCommandAttributes" StartChildWorkflowExecutionCommandAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Command'StartChildWorkflowExecutionCommandAttributes x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      Command'StartChildWorkflowExecutionCommandAttributes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Command "maybe'signalExternalWorkflowExecutionCommandAttributes" (Prelude.Maybe SignalExternalWorkflowExecutionCommandAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Command'SignalExternalWorkflowExecutionCommandAttributes x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   Command'SignalExternalWorkflowExecutionCommandAttributes y__))
instance Data.ProtoLens.Field.HasField Command "signalExternalWorkflowExecutionCommandAttributes" SignalExternalWorkflowExecutionCommandAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Command'SignalExternalWorkflowExecutionCommandAttributes x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      Command'SignalExternalWorkflowExecutionCommandAttributes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Command "maybe'upsertWorkflowSearchAttributesCommandAttributes" (Prelude.Maybe UpsertWorkflowSearchAttributesCommandAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Command'UpsertWorkflowSearchAttributesCommandAttributes x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   Command'UpsertWorkflowSearchAttributesCommandAttributes y__))
instance Data.ProtoLens.Field.HasField Command "upsertWorkflowSearchAttributesCommandAttributes" UpsertWorkflowSearchAttributesCommandAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Command'UpsertWorkflowSearchAttributesCommandAttributes x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      Command'UpsertWorkflowSearchAttributesCommandAttributes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Command "maybe'protocolMessageCommandAttributes" (Prelude.Maybe ProtocolMessageCommandAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Command'ProtocolMessageCommandAttributes x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap Command'ProtocolMessageCommandAttributes y__))
instance Data.ProtoLens.Field.HasField Command "protocolMessageCommandAttributes" ProtocolMessageCommandAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Command'ProtocolMessageCommandAttributes x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap Command'ProtocolMessageCommandAttributes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Command "maybe'modifyWorkflowPropertiesCommandAttributes" (Prelude.Maybe ModifyWorkflowPropertiesCommandAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Command'ModifyWorkflowPropertiesCommandAttributes x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   Command'ModifyWorkflowPropertiesCommandAttributes y__))
instance Data.ProtoLens.Field.HasField Command "modifyWorkflowPropertiesCommandAttributes" ModifyWorkflowPropertiesCommandAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Command'ModifyWorkflowPropertiesCommandAttributes x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      Command'ModifyWorkflowPropertiesCommandAttributes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Command "maybe'scheduleNexusOperationCommandAttributes" (Prelude.Maybe ScheduleNexusOperationCommandAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Command'ScheduleNexusOperationCommandAttributes x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   Command'ScheduleNexusOperationCommandAttributes y__))
instance Data.ProtoLens.Field.HasField Command "scheduleNexusOperationCommandAttributes" ScheduleNexusOperationCommandAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Command'ScheduleNexusOperationCommandAttributes x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      Command'ScheduleNexusOperationCommandAttributes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Command "maybe'requestCancelNexusOperationCommandAttributes" (Prelude.Maybe RequestCancelNexusOperationCommandAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Command'RequestCancelNexusOperationCommandAttributes x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   Command'RequestCancelNexusOperationCommandAttributes y__))
instance Data.ProtoLens.Field.HasField Command "requestCancelNexusOperationCommandAttributes" RequestCancelNexusOperationCommandAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Command'attributes (\ x__ y__ -> x__ {_Command'attributes = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Command'RequestCancelNexusOperationCommandAttributes x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      Command'RequestCancelNexusOperationCommandAttributes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Command where
  messageName _ = Data.Text.pack "temporal.api.command.v1.Command"
  packedMessageDescriptor _
    = "\n\
      \\aCommand\DC2E\n\
      \\fcommand_type\CAN\SOH \SOH(\SO2\".temporal.api.enums.v1.CommandTypeR\vcommandType\DC2G\n\
      \\ruser_metadata\CAN\173\STX \SOH(\v2!.temporal.api.sdk.v1.UserMetadataR\fuserMetadata\DC2V\n\
      \\DC3event_group_markers\CAN\174\STX \ETX(\v2%.temporal.api.sdk.v1.EventGroupMarkerR\DC1eventGroupMarkers\DC2\154\SOH\n\
      \)schedule_activity_task_command_attributes\CAN\STX \SOH(\v2>.temporal.api.command.v1.ScheduleActivityTaskCommandAttributesH\NULR%scheduleActivityTaskCommandAttributes\DC2{\n\
      \\RSstart_timer_command_attributes\CAN\ETX \SOH(\v24.temporal.api.command.v1.StartTimerCommandAttributesH\NULR\ESCstartTimerCommandAttributes\DC2\169\SOH\n\
      \.complete_workflow_execution_command_attributes\CAN\EOT \SOH(\v2C.temporal.api.command.v1.CompleteWorkflowExecutionCommandAttributesH\NULR*completeWorkflowExecutionCommandAttributes\DC2\157\SOH\n\
      \*fail_workflow_execution_command_attributes\CAN\ENQ \SOH(\v2?.temporal.api.command.v1.FailWorkflowExecutionCommandAttributesH\NULR&failWorkflowExecutionCommandAttributes\DC2\170\SOH\n\
      \/request_cancel_activity_task_command_attributes\CAN\ACK \SOH(\v2C.temporal.api.command.v1.RequestCancelActivityTaskCommandAttributesH\NULR*requestCancelActivityTaskCommandAttributes\DC2~\n\
      \\UScancel_timer_command_attributes\CAN\a \SOH(\v25.temporal.api.command.v1.CancelTimerCommandAttributesH\NULR\FScancelTimerCommandAttributes\DC2\163\SOH\n\
      \,cancel_workflow_execution_command_attributes\CAN\b \SOH(\v2A.temporal.api.command.v1.CancelWorkflowExecutionCommandAttributesH\NULR(cancelWorkflowExecutionCommandAttributes\DC2\210\SOH\n\
      \=request_cancel_external_workflow_execution_command_attributes\CAN\t \SOH(\v2P.temporal.api.command.v1.RequestCancelExternalWorkflowExecutionCommandAttributesH\NULR7requestCancelExternalWorkflowExecutionCommandAttributes\DC2\129\SOH\n\
      \ record_marker_command_attributes\CAN\n\
      \ \SOH(\v26.temporal.api.command.v1.RecordMarkerCommandAttributesH\NULR\GSrecordMarkerCommandAttributes\DC2\186\SOH\n\
      \5continue_as_new_workflow_execution_command_attributes\CAN\v \SOH(\v2H.temporal.api.command.v1.ContinueAsNewWorkflowExecutionCommandAttributesH\NULR/continueAsNewWorkflowExecutionCommandAttributes\DC2\176\SOH\n\
      \1start_child_workflow_execution_command_attributes\CAN\f \SOH(\v2E.temporal.api.command.v1.StartChildWorkflowExecutionCommandAttributesH\NULR,startChildWorkflowExecutionCommandAttributes\DC2\188\SOH\n\
      \5signal_external_workflow_execution_command_attributes\CAN\r \SOH(\v2I.temporal.api.command.v1.SignalExternalWorkflowExecutionCommandAttributesH\NULR0signalExternalWorkflowExecutionCommandAttributes\DC2\185\SOH\n\
      \4upsert_workflow_search_attributes_command_attributes\CAN\SO \SOH(\v2H.temporal.api.command.v1.UpsertWorkflowSearchAttributesCommandAttributesH\NULR/upsertWorkflowSearchAttributesCommandAttributes\DC2\138\SOH\n\
      \#protocol_message_command_attributes\CAN\SI \SOH(\v29.temporal.api.command.v1.ProtocolMessageCommandAttributesH\NULR protocolMessageCommandAttributes\DC2\166\SOH\n\
      \-modify_workflow_properties_command_attributes\CAN\DC1 \SOH(\v2B.temporal.api.command.v1.ModifyWorkflowPropertiesCommandAttributesH\NULR)modifyWorkflowPropertiesCommandAttributes\DC2\160\SOH\n\
      \+schedule_nexus_operation_command_attributes\CAN\DC2 \SOH(\v2@.temporal.api.command.v1.ScheduleNexusOperationCommandAttributesH\NULR'scheduleNexusOperationCommandAttributes\DC2\176\SOH\n\
      \1request_cancel_nexus_operation_command_attributes\CAN\DC3 \SOH(\v2E.temporal.api.command.v1.RequestCancelNexusOperationCommandAttributesH\NULR,requestCancelNexusOperationCommandAttributesB\f\n\
      \\n\
      \attributes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        commandType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "command_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.CommandType.CommandType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"commandType")) ::
              Data.ProtoLens.FieldDescriptor Command
        userMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "user_metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'userMetadata")) ::
              Data.ProtoLens.FieldDescriptor Command
        eventGroupMarkers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "event_group_markers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Sdk.V1.EventGroupMarker.EventGroupMarker)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"eventGroupMarkers")) ::
              Data.ProtoLens.FieldDescriptor Command
        scheduleActivityTaskCommandAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_activity_task_command_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScheduleActivityTaskCommandAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'scheduleActivityTaskCommandAttributes")) ::
              Data.ProtoLens.FieldDescriptor Command
        startTimerCommandAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_timer_command_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StartTimerCommandAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'startTimerCommandAttributes")) ::
              Data.ProtoLens.FieldDescriptor Command
        completeWorkflowExecutionCommandAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "complete_workflow_execution_command_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CompleteWorkflowExecutionCommandAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'completeWorkflowExecutionCommandAttributes")) ::
              Data.ProtoLens.FieldDescriptor Command
        failWorkflowExecutionCommandAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fail_workflow_execution_command_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FailWorkflowExecutionCommandAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'failWorkflowExecutionCommandAttributes")) ::
              Data.ProtoLens.FieldDescriptor Command
        requestCancelActivityTaskCommandAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_cancel_activity_task_command_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestCancelActivityTaskCommandAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'requestCancelActivityTaskCommandAttributes")) ::
              Data.ProtoLens.FieldDescriptor Command
        cancelTimerCommandAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancel_timer_command_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CancelTimerCommandAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'cancelTimerCommandAttributes")) ::
              Data.ProtoLens.FieldDescriptor Command
        cancelWorkflowExecutionCommandAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancel_workflow_execution_command_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CancelWorkflowExecutionCommandAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'cancelWorkflowExecutionCommandAttributes")) ::
              Data.ProtoLens.FieldDescriptor Command
        requestCancelExternalWorkflowExecutionCommandAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_cancel_external_workflow_execution_command_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestCancelExternalWorkflowExecutionCommandAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'requestCancelExternalWorkflowExecutionCommandAttributes")) ::
              Data.ProtoLens.FieldDescriptor Command
        recordMarkerCommandAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "record_marker_command_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RecordMarkerCommandAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'recordMarkerCommandAttributes")) ::
              Data.ProtoLens.FieldDescriptor Command
        continueAsNewWorkflowExecutionCommandAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "continue_as_new_workflow_execution_command_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ContinueAsNewWorkflowExecutionCommandAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'continueAsNewWorkflowExecutionCommandAttributes")) ::
              Data.ProtoLens.FieldDescriptor Command
        startChildWorkflowExecutionCommandAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_child_workflow_execution_command_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StartChildWorkflowExecutionCommandAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'startChildWorkflowExecutionCommandAttributes")) ::
              Data.ProtoLens.FieldDescriptor Command
        signalExternalWorkflowExecutionCommandAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signal_external_workflow_execution_command_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SignalExternalWorkflowExecutionCommandAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'signalExternalWorkflowExecutionCommandAttributes")) ::
              Data.ProtoLens.FieldDescriptor Command
        upsertWorkflowSearchAttributesCommandAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upsert_workflow_search_attributes_command_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UpsertWorkflowSearchAttributesCommandAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'upsertWorkflowSearchAttributesCommandAttributes")) ::
              Data.ProtoLens.FieldDescriptor Command
        protocolMessageCommandAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol_message_command_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ProtocolMessageCommandAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'protocolMessageCommandAttributes")) ::
              Data.ProtoLens.FieldDescriptor Command
        modifyWorkflowPropertiesCommandAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "modify_workflow_properties_command_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ModifyWorkflowPropertiesCommandAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'modifyWorkflowPropertiesCommandAttributes")) ::
              Data.ProtoLens.FieldDescriptor Command
        scheduleNexusOperationCommandAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_nexus_operation_command_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScheduleNexusOperationCommandAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'scheduleNexusOperationCommandAttributes")) ::
              Data.ProtoLens.FieldDescriptor Command
        requestCancelNexusOperationCommandAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_cancel_nexus_operation_command_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestCancelNexusOperationCommandAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'requestCancelNexusOperationCommandAttributes")) ::
              Data.ProtoLens.FieldDescriptor Command
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, commandType__field_descriptor),
           (Data.ProtoLens.Tag 301, userMetadata__field_descriptor),
           (Data.ProtoLens.Tag 302, eventGroupMarkers__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            scheduleActivityTaskCommandAttributes__field_descriptor),
           (Data.ProtoLens.Tag 3, 
            startTimerCommandAttributes__field_descriptor),
           (Data.ProtoLens.Tag 4, 
            completeWorkflowExecutionCommandAttributes__field_descriptor),
           (Data.ProtoLens.Tag 5, 
            failWorkflowExecutionCommandAttributes__field_descriptor),
           (Data.ProtoLens.Tag 6, 
            requestCancelActivityTaskCommandAttributes__field_descriptor),
           (Data.ProtoLens.Tag 7, 
            cancelTimerCommandAttributes__field_descriptor),
           (Data.ProtoLens.Tag 8, 
            cancelWorkflowExecutionCommandAttributes__field_descriptor),
           (Data.ProtoLens.Tag 9, 
            requestCancelExternalWorkflowExecutionCommandAttributes__field_descriptor),
           (Data.ProtoLens.Tag 10, 
            recordMarkerCommandAttributes__field_descriptor),
           (Data.ProtoLens.Tag 11, 
            continueAsNewWorkflowExecutionCommandAttributes__field_descriptor),
           (Data.ProtoLens.Tag 12, 
            startChildWorkflowExecutionCommandAttributes__field_descriptor),
           (Data.ProtoLens.Tag 13, 
            signalExternalWorkflowExecutionCommandAttributes__field_descriptor),
           (Data.ProtoLens.Tag 14, 
            upsertWorkflowSearchAttributesCommandAttributes__field_descriptor),
           (Data.ProtoLens.Tag 15, 
            protocolMessageCommandAttributes__field_descriptor),
           (Data.ProtoLens.Tag 17, 
            modifyWorkflowPropertiesCommandAttributes__field_descriptor),
           (Data.ProtoLens.Tag 18, 
            scheduleNexusOperationCommandAttributes__field_descriptor),
           (Data.ProtoLens.Tag 19, 
            requestCancelNexusOperationCommandAttributes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Command'_unknownFields
        (\ x__ y__ -> x__ {_Command'_unknownFields = y__})
  defMessage
    = Command'_constructor
        {_Command'commandType = Data.ProtoLens.fieldDefault,
         _Command'userMetadata = Prelude.Nothing,
         _Command'eventGroupMarkers = Data.Vector.Generic.empty,
         _Command'attributes = Prelude.Nothing,
         _Command'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Command
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Sdk.V1.EventGroupMarker.EventGroupMarker
             -> Data.ProtoLens.Encoding.Bytes.Parser Command
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "command_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"commandType") y x)
                                  mutable'eventGroupMarkers
                        2410
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "user_metadata"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"userMetadata") y x)
                                  mutable'eventGroupMarkers
                        2418
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_activity_task_command_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"scheduleActivityTaskCommandAttributes")
                                     y x)
                                  mutable'eventGroupMarkers
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_timer_command_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startTimerCommandAttributes") y
                                     x)
                                  mutable'eventGroupMarkers
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "complete_workflow_execution_command_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"completeWorkflowExecutionCommandAttributes")
                                     y x)
                                  mutable'eventGroupMarkers
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "fail_workflow_execution_command_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"failWorkflowExecutionCommandAttributes")
                                     y x)
                                  mutable'eventGroupMarkers
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_cancel_activity_task_command_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"requestCancelActivityTaskCommandAttributes")
                                     y x)
                                  mutable'eventGroupMarkers
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cancel_timer_command_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cancelTimerCommandAttributes") y
                                     x)
                                  mutable'eventGroupMarkers
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cancel_workflow_execution_command_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"cancelWorkflowExecutionCommandAttributes")
                                     y x)
                                  mutable'eventGroupMarkers
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_cancel_external_workflow_execution_command_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"requestCancelExternalWorkflowExecutionCommandAttributes")
                                     y x)
                                  mutable'eventGroupMarkers
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "record_marker_command_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"recordMarkerCommandAttributes") y
                                     x)
                                  mutable'eventGroupMarkers
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "continue_as_new_workflow_execution_command_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"continueAsNewWorkflowExecutionCommandAttributes")
                                     y x)
                                  mutable'eventGroupMarkers
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_child_workflow_execution_command_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"startChildWorkflowExecutionCommandAttributes")
                                     y x)
                                  mutable'eventGroupMarkers
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "signal_external_workflow_execution_command_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"signalExternalWorkflowExecutionCommandAttributes")
                                     y x)
                                  mutable'eventGroupMarkers
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "upsert_workflow_search_attributes_command_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"upsertWorkflowSearchAttributesCommandAttributes")
                                     y x)
                                  mutable'eventGroupMarkers
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "protocol_message_command_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"protocolMessageCommandAttributes")
                                     y x)
                                  mutable'eventGroupMarkers
                        138
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "modify_workflow_properties_command_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"modifyWorkflowPropertiesCommandAttributes")
                                     y x)
                                  mutable'eventGroupMarkers
                        146
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_nexus_operation_command_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"scheduleNexusOperationCommandAttributes")
                                     y x)
                                  mutable'eventGroupMarkers
                        154
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_cancel_nexus_operation_command_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"requestCancelNexusOperationCommandAttributes")
                                     y x)
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
          "Command"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"commandType") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'userMetadata") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 2410)
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
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 2418)
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
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'attributes") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just (Command'ScheduleActivityTaskCommandAttributes v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (Command'StartTimerCommandAttributes v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (Command'CompleteWorkflowExecutionCommandAttributes v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (Command'FailWorkflowExecutionCommandAttributes v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (Command'RequestCancelActivityTaskCommandAttributes v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (Command'CancelTimerCommandAttributes v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (Command'CancelWorkflowExecutionCommandAttributes v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (Command'RequestCancelExternalWorkflowExecutionCommandAttributes v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (Command'RecordMarkerCommandAttributes v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (Command'ContinueAsNewWorkflowExecutionCommandAttributes v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (Command'StartChildWorkflowExecutionCommandAttributes v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (Command'SignalExternalWorkflowExecutionCommandAttributes v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 106)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (Command'UpsertWorkflowSearchAttributesCommandAttributes v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 114)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (Command'ProtocolMessageCommandAttributes v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 122)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (Command'ModifyWorkflowPropertiesCommandAttributes v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 138)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (Command'ScheduleNexusOperationCommandAttributes v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 146)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (Command'RequestCancelNexusOperationCommandAttributes v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 154)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData Command where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Command'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Command'commandType x__)
                (Control.DeepSeq.deepseq
                   (_Command'userMetadata x__)
                   (Control.DeepSeq.deepseq
                      (_Command'eventGroupMarkers x__)
                      (Control.DeepSeq.deepseq (_Command'attributes x__) ()))))
instance Control.DeepSeq.NFData Command'Attributes where
  rnf (Command'ScheduleActivityTaskCommandAttributes x__)
    = Control.DeepSeq.rnf x__
  rnf (Command'StartTimerCommandAttributes x__)
    = Control.DeepSeq.rnf x__
  rnf (Command'CompleteWorkflowExecutionCommandAttributes x__)
    = Control.DeepSeq.rnf x__
  rnf (Command'FailWorkflowExecutionCommandAttributes x__)
    = Control.DeepSeq.rnf x__
  rnf (Command'RequestCancelActivityTaskCommandAttributes x__)
    = Control.DeepSeq.rnf x__
  rnf (Command'CancelTimerCommandAttributes x__)
    = Control.DeepSeq.rnf x__
  rnf (Command'CancelWorkflowExecutionCommandAttributes x__)
    = Control.DeepSeq.rnf x__
  rnf
    (Command'RequestCancelExternalWorkflowExecutionCommandAttributes x__)
    = Control.DeepSeq.rnf x__
  rnf (Command'RecordMarkerCommandAttributes x__)
    = Control.DeepSeq.rnf x__
  rnf (Command'ContinueAsNewWorkflowExecutionCommandAttributes x__)
    = Control.DeepSeq.rnf x__
  rnf (Command'StartChildWorkflowExecutionCommandAttributes x__)
    = Control.DeepSeq.rnf x__
  rnf (Command'SignalExternalWorkflowExecutionCommandAttributes x__)
    = Control.DeepSeq.rnf x__
  rnf (Command'UpsertWorkflowSearchAttributesCommandAttributes x__)
    = Control.DeepSeq.rnf x__
  rnf (Command'ProtocolMessageCommandAttributes x__)
    = Control.DeepSeq.rnf x__
  rnf (Command'ModifyWorkflowPropertiesCommandAttributes x__)
    = Control.DeepSeq.rnf x__
  rnf (Command'ScheduleNexusOperationCommandAttributes x__)
    = Control.DeepSeq.rnf x__
  rnf (Command'RequestCancelNexusOperationCommandAttributes x__)
    = Control.DeepSeq.rnf x__
_Command'ScheduleActivityTaskCommandAttributes ::
  Data.ProtoLens.Prism.Prism' Command'Attributes ScheduleActivityTaskCommandAttributes
_Command'ScheduleActivityTaskCommandAttributes
  = Data.ProtoLens.Prism.prism'
      Command'ScheduleActivityTaskCommandAttributes
      (\ p__
         -> case p__ of
              (Command'ScheduleActivityTaskCommandAttributes p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Command'StartTimerCommandAttributes ::
  Data.ProtoLens.Prism.Prism' Command'Attributes StartTimerCommandAttributes
_Command'StartTimerCommandAttributes
  = Data.ProtoLens.Prism.prism'
      Command'StartTimerCommandAttributes
      (\ p__
         -> case p__ of
              (Command'StartTimerCommandAttributes p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Command'CompleteWorkflowExecutionCommandAttributes ::
  Data.ProtoLens.Prism.Prism' Command'Attributes CompleteWorkflowExecutionCommandAttributes
_Command'CompleteWorkflowExecutionCommandAttributes
  = Data.ProtoLens.Prism.prism'
      Command'CompleteWorkflowExecutionCommandAttributes
      (\ p__
         -> case p__ of
              (Command'CompleteWorkflowExecutionCommandAttributes p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Command'FailWorkflowExecutionCommandAttributes ::
  Data.ProtoLens.Prism.Prism' Command'Attributes FailWorkflowExecutionCommandAttributes
_Command'FailWorkflowExecutionCommandAttributes
  = Data.ProtoLens.Prism.prism'
      Command'FailWorkflowExecutionCommandAttributes
      (\ p__
         -> case p__ of
              (Command'FailWorkflowExecutionCommandAttributes p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Command'RequestCancelActivityTaskCommandAttributes ::
  Data.ProtoLens.Prism.Prism' Command'Attributes RequestCancelActivityTaskCommandAttributes
_Command'RequestCancelActivityTaskCommandAttributes
  = Data.ProtoLens.Prism.prism'
      Command'RequestCancelActivityTaskCommandAttributes
      (\ p__
         -> case p__ of
              (Command'RequestCancelActivityTaskCommandAttributes p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Command'CancelTimerCommandAttributes ::
  Data.ProtoLens.Prism.Prism' Command'Attributes CancelTimerCommandAttributes
_Command'CancelTimerCommandAttributes
  = Data.ProtoLens.Prism.prism'
      Command'CancelTimerCommandAttributes
      (\ p__
         -> case p__ of
              (Command'CancelTimerCommandAttributes p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Command'CancelWorkflowExecutionCommandAttributes ::
  Data.ProtoLens.Prism.Prism' Command'Attributes CancelWorkflowExecutionCommandAttributes
_Command'CancelWorkflowExecutionCommandAttributes
  = Data.ProtoLens.Prism.prism'
      Command'CancelWorkflowExecutionCommandAttributes
      (\ p__
         -> case p__ of
              (Command'CancelWorkflowExecutionCommandAttributes p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Command'RequestCancelExternalWorkflowExecutionCommandAttributes ::
  Data.ProtoLens.Prism.Prism' Command'Attributes RequestCancelExternalWorkflowExecutionCommandAttributes
_Command'RequestCancelExternalWorkflowExecutionCommandAttributes
  = Data.ProtoLens.Prism.prism'
      Command'RequestCancelExternalWorkflowExecutionCommandAttributes
      (\ p__
         -> case p__ of
              (Command'RequestCancelExternalWorkflowExecutionCommandAttributes p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Command'RecordMarkerCommandAttributes ::
  Data.ProtoLens.Prism.Prism' Command'Attributes RecordMarkerCommandAttributes
_Command'RecordMarkerCommandAttributes
  = Data.ProtoLens.Prism.prism'
      Command'RecordMarkerCommandAttributes
      (\ p__
         -> case p__ of
              (Command'RecordMarkerCommandAttributes p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Command'ContinueAsNewWorkflowExecutionCommandAttributes ::
  Data.ProtoLens.Prism.Prism' Command'Attributes ContinueAsNewWorkflowExecutionCommandAttributes
_Command'ContinueAsNewWorkflowExecutionCommandAttributes
  = Data.ProtoLens.Prism.prism'
      Command'ContinueAsNewWorkflowExecutionCommandAttributes
      (\ p__
         -> case p__ of
              (Command'ContinueAsNewWorkflowExecutionCommandAttributes p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Command'StartChildWorkflowExecutionCommandAttributes ::
  Data.ProtoLens.Prism.Prism' Command'Attributes StartChildWorkflowExecutionCommandAttributes
_Command'StartChildWorkflowExecutionCommandAttributes
  = Data.ProtoLens.Prism.prism'
      Command'StartChildWorkflowExecutionCommandAttributes
      (\ p__
         -> case p__ of
              (Command'StartChildWorkflowExecutionCommandAttributes p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Command'SignalExternalWorkflowExecutionCommandAttributes ::
  Data.ProtoLens.Prism.Prism' Command'Attributes SignalExternalWorkflowExecutionCommandAttributes
_Command'SignalExternalWorkflowExecutionCommandAttributes
  = Data.ProtoLens.Prism.prism'
      Command'SignalExternalWorkflowExecutionCommandAttributes
      (\ p__
         -> case p__ of
              (Command'SignalExternalWorkflowExecutionCommandAttributes p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Command'UpsertWorkflowSearchAttributesCommandAttributes ::
  Data.ProtoLens.Prism.Prism' Command'Attributes UpsertWorkflowSearchAttributesCommandAttributes
_Command'UpsertWorkflowSearchAttributesCommandAttributes
  = Data.ProtoLens.Prism.prism'
      Command'UpsertWorkflowSearchAttributesCommandAttributes
      (\ p__
         -> case p__ of
              (Command'UpsertWorkflowSearchAttributesCommandAttributes p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Command'ProtocolMessageCommandAttributes ::
  Data.ProtoLens.Prism.Prism' Command'Attributes ProtocolMessageCommandAttributes
_Command'ProtocolMessageCommandAttributes
  = Data.ProtoLens.Prism.prism'
      Command'ProtocolMessageCommandAttributes
      (\ p__
         -> case p__ of
              (Command'ProtocolMessageCommandAttributes p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Command'ModifyWorkflowPropertiesCommandAttributes ::
  Data.ProtoLens.Prism.Prism' Command'Attributes ModifyWorkflowPropertiesCommandAttributes
_Command'ModifyWorkflowPropertiesCommandAttributes
  = Data.ProtoLens.Prism.prism'
      Command'ModifyWorkflowPropertiesCommandAttributes
      (\ p__
         -> case p__ of
              (Command'ModifyWorkflowPropertiesCommandAttributes p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Command'ScheduleNexusOperationCommandAttributes ::
  Data.ProtoLens.Prism.Prism' Command'Attributes ScheduleNexusOperationCommandAttributes
_Command'ScheduleNexusOperationCommandAttributes
  = Data.ProtoLens.Prism.prism'
      Command'ScheduleNexusOperationCommandAttributes
      (\ p__
         -> case p__ of
              (Command'ScheduleNexusOperationCommandAttributes p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Command'RequestCancelNexusOperationCommandAttributes ::
  Data.ProtoLens.Prism.Prism' Command'Attributes RequestCancelNexusOperationCommandAttributes
_Command'RequestCancelNexusOperationCommandAttributes
  = Data.ProtoLens.Prism.prism'
      Command'RequestCancelNexusOperationCommandAttributes
      (\ p__
         -> case p__ of
              (Command'RequestCancelNexusOperationCommandAttributes p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.result' @:: Lens' CompleteWorkflowExecutionCommandAttributes Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'result' @:: Lens' CompleteWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@ -}
data CompleteWorkflowExecutionCommandAttributes
  = CompleteWorkflowExecutionCommandAttributes'_constructor {_CompleteWorkflowExecutionCommandAttributes'result :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads),
                                                             _CompleteWorkflowExecutionCommandAttributes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CompleteWorkflowExecutionCommandAttributes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CompleteWorkflowExecutionCommandAttributes "result" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CompleteWorkflowExecutionCommandAttributes'result
           (\ x__ y__
              -> x__ {_CompleteWorkflowExecutionCommandAttributes'result = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CompleteWorkflowExecutionCommandAttributes "maybe'result" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CompleteWorkflowExecutionCommandAttributes'result
           (\ x__ y__
              -> x__ {_CompleteWorkflowExecutionCommandAttributes'result = y__}))
        Prelude.id
instance Data.ProtoLens.Message CompleteWorkflowExecutionCommandAttributes where
  messageName _
    = Data.Text.pack
        "temporal.api.command.v1.CompleteWorkflowExecutionCommandAttributes"
  packedMessageDescriptor _
    = "\n\
      \*CompleteWorkflowExecutionCommandAttributes\DC28\n\
      \\ACKresult\CAN\SOH \SOH(\v2 .temporal.api.common.v1.PayloadsR\ACKresult"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        result__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payloads)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'result")) ::
              Data.ProtoLens.FieldDescriptor CompleteWorkflowExecutionCommandAttributes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, result__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CompleteWorkflowExecutionCommandAttributes'_unknownFields
        (\ x__ y__
           -> x__
                {_CompleteWorkflowExecutionCommandAttributes'_unknownFields = y__})
  defMessage
    = CompleteWorkflowExecutionCommandAttributes'_constructor
        {_CompleteWorkflowExecutionCommandAttributes'result = Prelude.Nothing,
         _CompleteWorkflowExecutionCommandAttributes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CompleteWorkflowExecutionCommandAttributes
          -> Data.ProtoLens.Encoding.Bytes.Parser CompleteWorkflowExecutionCommandAttributes
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
          (do loop Data.ProtoLens.defMessage)
          "CompleteWorkflowExecutionCommandAttributes"
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
instance Control.DeepSeq.NFData CompleteWorkflowExecutionCommandAttributes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CompleteWorkflowExecutionCommandAttributes'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CompleteWorkflowExecutionCommandAttributes'result x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.workflowType' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes Proto.Temporal.Api.Common.V1.Message.WorkflowType@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'workflowType' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowType)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.taskQueue' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'taskQueue' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.input' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'input' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.workflowRunTimeout' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'workflowRunTimeout' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.workflowTaskTimeout' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'workflowTaskTimeout' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.backoffStartInterval' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'backoffStartInterval' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.retryPolicy' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes Proto.Temporal.Api.Common.V1.Message.RetryPolicy@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'retryPolicy' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.initiator' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes Proto.Temporal.Api.Enums.V1.Workflow.ContinueAsNewInitiator@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.failure' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes Proto.Temporal.Api.Failure.V1.Message.Failure@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'failure' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.lastCompletionResult' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'lastCompletionResult' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.cronSchedule' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes Data.Text.Text@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.header' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes Proto.Temporal.Api.Common.V1.Message.Header@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'header' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.memo' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes Proto.Temporal.Api.Common.V1.Message.Memo@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'memo' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Memo)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.searchAttributes' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes Proto.Temporal.Api.Common.V1.Message.SearchAttributes@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'searchAttributes' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.inheritBuildId' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes Prelude.Bool@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.initialVersioningBehavior' @:: Lens' ContinueAsNewWorkflowExecutionCommandAttributes Proto.Temporal.Api.Enums.V1.Workflow.ContinueAsNewVersioningBehavior@ -}
data ContinueAsNewWorkflowExecutionCommandAttributes
  = ContinueAsNewWorkflowExecutionCommandAttributes'_constructor {_ContinueAsNewWorkflowExecutionCommandAttributes'workflowType :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowType),
                                                                  _ContinueAsNewWorkflowExecutionCommandAttributes'taskQueue :: !(Prelude.Maybe Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue),
                                                                  _ContinueAsNewWorkflowExecutionCommandAttributes'input :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads),
                                                                  _ContinueAsNewWorkflowExecutionCommandAttributes'workflowRunTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                                  _ContinueAsNewWorkflowExecutionCommandAttributes'workflowTaskTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                                  _ContinueAsNewWorkflowExecutionCommandAttributes'backoffStartInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                                  _ContinueAsNewWorkflowExecutionCommandAttributes'retryPolicy :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy),
                                                                  _ContinueAsNewWorkflowExecutionCommandAttributes'initiator :: !Proto.Temporal.Api.Enums.V1.Workflow.ContinueAsNewInitiator,
                                                                  _ContinueAsNewWorkflowExecutionCommandAttributes'failure :: !(Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure),
                                                                  _ContinueAsNewWorkflowExecutionCommandAttributes'lastCompletionResult :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads),
                                                                  _ContinueAsNewWorkflowExecutionCommandAttributes'cronSchedule :: !Data.Text.Text,
                                                                  _ContinueAsNewWorkflowExecutionCommandAttributes'header :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header),
                                                                  _ContinueAsNewWorkflowExecutionCommandAttributes'memo :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Memo),
                                                                  _ContinueAsNewWorkflowExecutionCommandAttributes'searchAttributes :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes),
                                                                  _ContinueAsNewWorkflowExecutionCommandAttributes'inheritBuildId :: !Prelude.Bool,
                                                                  _ContinueAsNewWorkflowExecutionCommandAttributes'initialVersioningBehavior :: !Proto.Temporal.Api.Enums.V1.Workflow.ContinueAsNewVersioningBehavior,
                                                                  _ContinueAsNewWorkflowExecutionCommandAttributes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ContinueAsNewWorkflowExecutionCommandAttributes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "workflowType" Proto.Temporal.Api.Common.V1.Message.WorkflowType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'workflowType
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'workflowType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "maybe'workflowType" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'workflowType
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'workflowType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "taskQueue" Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'taskQueue
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'taskQueue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "maybe'taskQueue" (Prelude.Maybe Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'taskQueue
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'taskQueue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "input" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'input
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'input = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "maybe'input" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'input
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'input = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "workflowRunTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'workflowRunTimeout
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'workflowRunTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "maybe'workflowRunTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'workflowRunTimeout
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'workflowRunTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "workflowTaskTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'workflowTaskTimeout
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'workflowTaskTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "maybe'workflowTaskTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'workflowTaskTimeout
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'workflowTaskTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "backoffStartInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'backoffStartInterval
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'backoffStartInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "maybe'backoffStartInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'backoffStartInterval
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'backoffStartInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "retryPolicy" Proto.Temporal.Api.Common.V1.Message.RetryPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'retryPolicy
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'retryPolicy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "maybe'retryPolicy" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'retryPolicy
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'retryPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "initiator" Proto.Temporal.Api.Enums.V1.Workflow.ContinueAsNewInitiator where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'initiator
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'initiator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "failure" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'failure
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'failure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "maybe'failure" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'failure
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'failure = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "lastCompletionResult" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'lastCompletionResult
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'lastCompletionResult = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "maybe'lastCompletionResult" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'lastCompletionResult
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'lastCompletionResult = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "cronSchedule" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'cronSchedule
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'cronSchedule = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "header" Proto.Temporal.Api.Common.V1.Message.Header where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'header
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'header = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "maybe'header" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'header
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'header = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "memo" Proto.Temporal.Api.Common.V1.Message.Memo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'memo
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'memo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "maybe'memo" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Memo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'memo
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'memo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "searchAttributes" Proto.Temporal.Api.Common.V1.Message.SearchAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'searchAttributes
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'searchAttributes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "maybe'searchAttributes" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'searchAttributes
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'searchAttributes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "inheritBuildId" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'inheritBuildId
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'inheritBuildId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinueAsNewWorkflowExecutionCommandAttributes "initialVersioningBehavior" Proto.Temporal.Api.Enums.V1.Workflow.ContinueAsNewVersioningBehavior where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinueAsNewWorkflowExecutionCommandAttributes'initialVersioningBehavior
           (\ x__ y__
              -> x__
                   {_ContinueAsNewWorkflowExecutionCommandAttributes'initialVersioningBehavior = y__}))
        Prelude.id
instance Data.ProtoLens.Message ContinueAsNewWorkflowExecutionCommandAttributes where
  messageName _
    = Data.Text.pack
        "temporal.api.command.v1.ContinueAsNewWorkflowExecutionCommandAttributes"
  packedMessageDescriptor _
    = "\n\
      \/ContinueAsNewWorkflowExecutionCommandAttributes\DC2I\n\
      \\rworkflow_type\CAN\SOH \SOH(\v2$.temporal.api.common.v1.WorkflowTypeR\fworkflowType\DC2C\n\
      \\n\
      \task_queue\CAN\STX \SOH(\v2$.temporal.api.taskqueue.v1.TaskQueueR\ttaskQueue\DC26\n\
      \\ENQinput\CAN\ETX \SOH(\v2 .temporal.api.common.v1.PayloadsR\ENQinput\DC2K\n\
      \\DC4workflow_run_timeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC2workflowRunTimeout\DC2M\n\
      \\NAKworkflow_task_timeout\CAN\ENQ \SOH(\v2\EM.google.protobuf.DurationR\DC3workflowTaskTimeout\DC2O\n\
      \\SYNbackoff_start_interval\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\DC4backoffStartInterval\DC2F\n\
      \\fretry_policy\CAN\a \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2K\n\
      \\tinitiator\CAN\b \SOH(\SO2-.temporal.api.enums.v1.ContinueAsNewInitiatorR\tinitiator\DC2:\n\
      \\afailure\CAN\t \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure\DC2V\n\
      \\SYNlast_completion_result\CAN\n\
      \ \SOH(\v2 .temporal.api.common.v1.PayloadsR\DC4lastCompletionResult\DC2#\n\
      \\rcron_schedule\CAN\v \SOH(\tR\fcronSchedule\DC26\n\
      \\ACKheader\CAN\f \SOH(\v2\RS.temporal.api.common.v1.HeaderR\ACKheader\DC20\n\
      \\EOTmemo\CAN\r \SOH(\v2\FS.temporal.api.common.v1.MemoR\EOTmemo\DC2U\n\
      \\DC1search_attributes\CAN\SO \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC2,\n\
      \\DLEinherit_build_id\CAN\SI \SOH(\bR\SOinheritBuildIdB\STX\CAN\SOH\DC2v\n\
      \\ESCinitial_versioning_behavior\CAN\DLE \SOH(\SO26.temporal.api.enums.v1.ContinueAsNewVersioningBehaviorR\EMinitialVersioningBehavior"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        workflowType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.WorkflowType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowType")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecutionCommandAttributes
        taskQueue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'taskQueue")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecutionCommandAttributes
        input__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "input"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payloads)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'input")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecutionCommandAttributes
        workflowRunTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_run_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowRunTimeout")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecutionCommandAttributes
        workflowTaskTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_task_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowTaskTimeout")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecutionCommandAttributes
        backoffStartInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "backoff_start_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'backoffStartInterval")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecutionCommandAttributes
        retryPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.RetryPolicy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'retryPolicy")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecutionCommandAttributes
        initiator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "initiator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Workflow.ContinueAsNewInitiator)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"initiator")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecutionCommandAttributes
        failure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failure")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecutionCommandAttributes
        lastCompletionResult__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_completion_result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payloads)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastCompletionResult")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecutionCommandAttributes
        cronSchedule__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cron_schedule"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"cronSchedule")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecutionCommandAttributes
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Header)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'header")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecutionCommandAttributes
        memo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "memo"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Memo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'memo")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecutionCommandAttributes
        searchAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "search_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.SearchAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'searchAttributes")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecutionCommandAttributes
        inheritBuildId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inherit_build_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"inheritBuildId")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecutionCommandAttributes
        initialVersioningBehavior__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "initial_versioning_behavior"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Workflow.ContinueAsNewVersioningBehavior)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"initialVersioningBehavior")) ::
              Data.ProtoLens.FieldDescriptor ContinueAsNewWorkflowExecutionCommandAttributes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, workflowType__field_descriptor),
           (Data.ProtoLens.Tag 2, taskQueue__field_descriptor),
           (Data.ProtoLens.Tag 3, input__field_descriptor),
           (Data.ProtoLens.Tag 4, workflowRunTimeout__field_descriptor),
           (Data.ProtoLens.Tag 5, workflowTaskTimeout__field_descriptor),
           (Data.ProtoLens.Tag 6, backoffStartInterval__field_descriptor),
           (Data.ProtoLens.Tag 7, retryPolicy__field_descriptor),
           (Data.ProtoLens.Tag 8, initiator__field_descriptor),
           (Data.ProtoLens.Tag 9, failure__field_descriptor),
           (Data.ProtoLens.Tag 10, lastCompletionResult__field_descriptor),
           (Data.ProtoLens.Tag 11, cronSchedule__field_descriptor),
           (Data.ProtoLens.Tag 12, header__field_descriptor),
           (Data.ProtoLens.Tag 13, memo__field_descriptor),
           (Data.ProtoLens.Tag 14, searchAttributes__field_descriptor),
           (Data.ProtoLens.Tag 15, inheritBuildId__field_descriptor),
           (Data.ProtoLens.Tag 16, 
            initialVersioningBehavior__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ContinueAsNewWorkflowExecutionCommandAttributes'_unknownFields
        (\ x__ y__
           -> x__
                {_ContinueAsNewWorkflowExecutionCommandAttributes'_unknownFields = y__})
  defMessage
    = ContinueAsNewWorkflowExecutionCommandAttributes'_constructor
        {_ContinueAsNewWorkflowExecutionCommandAttributes'workflowType = Prelude.Nothing,
         _ContinueAsNewWorkflowExecutionCommandAttributes'taskQueue = Prelude.Nothing,
         _ContinueAsNewWorkflowExecutionCommandAttributes'input = Prelude.Nothing,
         _ContinueAsNewWorkflowExecutionCommandAttributes'workflowRunTimeout = Prelude.Nothing,
         _ContinueAsNewWorkflowExecutionCommandAttributes'workflowTaskTimeout = Prelude.Nothing,
         _ContinueAsNewWorkflowExecutionCommandAttributes'backoffStartInterval = Prelude.Nothing,
         _ContinueAsNewWorkflowExecutionCommandAttributes'retryPolicy = Prelude.Nothing,
         _ContinueAsNewWorkflowExecutionCommandAttributes'initiator = Data.ProtoLens.fieldDefault,
         _ContinueAsNewWorkflowExecutionCommandAttributes'failure = Prelude.Nothing,
         _ContinueAsNewWorkflowExecutionCommandAttributes'lastCompletionResult = Prelude.Nothing,
         _ContinueAsNewWorkflowExecutionCommandAttributes'cronSchedule = Data.ProtoLens.fieldDefault,
         _ContinueAsNewWorkflowExecutionCommandAttributes'header = Prelude.Nothing,
         _ContinueAsNewWorkflowExecutionCommandAttributes'memo = Prelude.Nothing,
         _ContinueAsNewWorkflowExecutionCommandAttributes'searchAttributes = Prelude.Nothing,
         _ContinueAsNewWorkflowExecutionCommandAttributes'inheritBuildId = Data.ProtoLens.fieldDefault,
         _ContinueAsNewWorkflowExecutionCommandAttributes'initialVersioningBehavior = Data.ProtoLens.fieldDefault,
         _ContinueAsNewWorkflowExecutionCommandAttributes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ContinueAsNewWorkflowExecutionCommandAttributes
          -> Data.ProtoLens.Encoding.Bytes.Parser ContinueAsNewWorkflowExecutionCommandAttributes
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
                                       "workflow_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowType") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "task_queue"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskQueue") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "input"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"input") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_run_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowRunTimeout") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_task_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowTaskTimeout") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "backoff_start_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"backoffStartInterval") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "retry_policy"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"retryPolicy") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "initiator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"initiator") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "failure"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"failure") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_completion_result"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastCompletionResult") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "cron_schedule"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cronSchedule") y x)
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "header"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"header") y x)
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "memo"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"memo") y x)
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "search_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"searchAttributes") y x)
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "inherit_build_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"inheritBuildId") y x)
                        128
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "ContinueAsNewWorkflowExecutionCommandAttributes"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'workflowType") _x
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'taskQueue") _x
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
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'input") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'backoffStartInterval") _x
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
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'retryPolicy") _x
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
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"initiator") _x
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
                                            (Data.ProtoLens.Field.field @"maybe'failure") _x
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
                                                  @"maybe'lastCompletionResult")
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
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field @"cronSchedule") _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                    ((Prelude..)
                                                       (\ bs
                                                          -> (Data.Monoid.<>)
                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                  (Prelude.fromIntegral
                                                                     (Data.ByteString.length bs)))
                                                               (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                  bs))
                                                       Data.Text.Encoding.encodeUtf8 _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field @"maybe'header") _x
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
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field @"maybe'memo")
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
                                                                 Data.ProtoLens.encodeMessage _v))
                                                    ((Data.Monoid.<>)
                                                       (let
                                                          _v
                                                            = Lens.Family2.view
                                                                (Data.ProtoLens.Field.field
                                                                   @"inheritBuildId")
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
                                                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (\ b -> if b then 1 else 0) _v))
                                                       ((Data.Monoid.<>)
                                                          (let
                                                             _v
                                                               = Lens.Family2.view
                                                                   (Data.ProtoLens.Field.field
                                                                      @"initialVersioningBehavior")
                                                                   _x
                                                           in
                                                             if (Prelude.==)
                                                                  _v
                                                                  Data.ProtoLens.fieldDefault then
                                                                 Data.Monoid.mempty
                                                             else
                                                                 (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      128)
                                                                   ((Prelude..)
                                                                      ((Prelude..)
                                                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         Prelude.fromIntegral)
                                                                      Prelude.fromEnum _v))
                                                          (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                             (Lens.Family2.view
                                                                Data.ProtoLens.unknownFields
                                                                _x)))))))))))))))))
instance Control.DeepSeq.NFData ContinueAsNewWorkflowExecutionCommandAttributes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ContinueAsNewWorkflowExecutionCommandAttributes'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_ContinueAsNewWorkflowExecutionCommandAttributes'workflowType x__)
                (Control.DeepSeq.deepseq
                   (_ContinueAsNewWorkflowExecutionCommandAttributes'taskQueue x__)
                   (Control.DeepSeq.deepseq
                      (_ContinueAsNewWorkflowExecutionCommandAttributes'input x__)
                      (Control.DeepSeq.deepseq
                         (_ContinueAsNewWorkflowExecutionCommandAttributes'workflowRunTimeout
                            x__)
                         (Control.DeepSeq.deepseq
                            (_ContinueAsNewWorkflowExecutionCommandAttributes'workflowTaskTimeout
                               x__)
                            (Control.DeepSeq.deepseq
                               (_ContinueAsNewWorkflowExecutionCommandAttributes'backoffStartInterval
                                  x__)
                               (Control.DeepSeq.deepseq
                                  (_ContinueAsNewWorkflowExecutionCommandAttributes'retryPolicy x__)
                                  (Control.DeepSeq.deepseq
                                     (_ContinueAsNewWorkflowExecutionCommandAttributes'initiator
                                        x__)
                                     (Control.DeepSeq.deepseq
                                        (_ContinueAsNewWorkflowExecutionCommandAttributes'failure
                                           x__)
                                        (Control.DeepSeq.deepseq
                                           (_ContinueAsNewWorkflowExecutionCommandAttributes'lastCompletionResult
                                              x__)
                                           (Control.DeepSeq.deepseq
                                              (_ContinueAsNewWorkflowExecutionCommandAttributes'cronSchedule
                                                 x__)
                                              (Control.DeepSeq.deepseq
                                                 (_ContinueAsNewWorkflowExecutionCommandAttributes'header
                                                    x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_ContinueAsNewWorkflowExecutionCommandAttributes'memo
                                                       x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_ContinueAsNewWorkflowExecutionCommandAttributes'searchAttributes
                                                          x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_ContinueAsNewWorkflowExecutionCommandAttributes'inheritBuildId
                                                             x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_ContinueAsNewWorkflowExecutionCommandAttributes'initialVersioningBehavior
                                                                x__)
                                                             ()))))))))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.failure' @:: Lens' FailWorkflowExecutionCommandAttributes Proto.Temporal.Api.Failure.V1.Message.Failure@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'failure' @:: Lens' FailWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@ -}
data FailWorkflowExecutionCommandAttributes
  = FailWorkflowExecutionCommandAttributes'_constructor {_FailWorkflowExecutionCommandAttributes'failure :: !(Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure),
                                                         _FailWorkflowExecutionCommandAttributes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FailWorkflowExecutionCommandAttributes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FailWorkflowExecutionCommandAttributes "failure" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FailWorkflowExecutionCommandAttributes'failure
           (\ x__ y__
              -> x__ {_FailWorkflowExecutionCommandAttributes'failure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FailWorkflowExecutionCommandAttributes "maybe'failure" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FailWorkflowExecutionCommandAttributes'failure
           (\ x__ y__
              -> x__ {_FailWorkflowExecutionCommandAttributes'failure = y__}))
        Prelude.id
instance Data.ProtoLens.Message FailWorkflowExecutionCommandAttributes where
  messageName _
    = Data.Text.pack
        "temporal.api.command.v1.FailWorkflowExecutionCommandAttributes"
  packedMessageDescriptor _
    = "\n\
      \&FailWorkflowExecutionCommandAttributes\DC2:\n\
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
              Data.ProtoLens.FieldDescriptor FailWorkflowExecutionCommandAttributes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, failure__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FailWorkflowExecutionCommandAttributes'_unknownFields
        (\ x__ y__
           -> x__
                {_FailWorkflowExecutionCommandAttributes'_unknownFields = y__})
  defMessage
    = FailWorkflowExecutionCommandAttributes'_constructor
        {_FailWorkflowExecutionCommandAttributes'failure = Prelude.Nothing,
         _FailWorkflowExecutionCommandAttributes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FailWorkflowExecutionCommandAttributes
          -> Data.ProtoLens.Encoding.Bytes.Parser FailWorkflowExecutionCommandAttributes
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
          (do loop Data.ProtoLens.defMessage)
          "FailWorkflowExecutionCommandAttributes"
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
instance Control.DeepSeq.NFData FailWorkflowExecutionCommandAttributes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FailWorkflowExecutionCommandAttributes'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FailWorkflowExecutionCommandAttributes'failure x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.upsertedMemo' @:: Lens' ModifyWorkflowPropertiesCommandAttributes Proto.Temporal.Api.Common.V1.Message.Memo@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'upsertedMemo' @:: Lens' ModifyWorkflowPropertiesCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Memo)@ -}
data ModifyWorkflowPropertiesCommandAttributes
  = ModifyWorkflowPropertiesCommandAttributes'_constructor {_ModifyWorkflowPropertiesCommandAttributes'upsertedMemo :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Memo),
                                                            _ModifyWorkflowPropertiesCommandAttributes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ModifyWorkflowPropertiesCommandAttributes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ModifyWorkflowPropertiesCommandAttributes "upsertedMemo" Proto.Temporal.Api.Common.V1.Message.Memo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModifyWorkflowPropertiesCommandAttributes'upsertedMemo
           (\ x__ y__
              -> x__
                   {_ModifyWorkflowPropertiesCommandAttributes'upsertedMemo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ModifyWorkflowPropertiesCommandAttributes "maybe'upsertedMemo" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Memo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModifyWorkflowPropertiesCommandAttributes'upsertedMemo
           (\ x__ y__
              -> x__
                   {_ModifyWorkflowPropertiesCommandAttributes'upsertedMemo = y__}))
        Prelude.id
instance Data.ProtoLens.Message ModifyWorkflowPropertiesCommandAttributes where
  messageName _
    = Data.Text.pack
        "temporal.api.command.v1.ModifyWorkflowPropertiesCommandAttributes"
  packedMessageDescriptor _
    = "\n\
      \)ModifyWorkflowPropertiesCommandAttributes\DC2A\n\
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
              Data.ProtoLens.FieldDescriptor ModifyWorkflowPropertiesCommandAttributes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, upsertedMemo__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ModifyWorkflowPropertiesCommandAttributes'_unknownFields
        (\ x__ y__
           -> x__
                {_ModifyWorkflowPropertiesCommandAttributes'_unknownFields = y__})
  defMessage
    = ModifyWorkflowPropertiesCommandAttributes'_constructor
        {_ModifyWorkflowPropertiesCommandAttributes'upsertedMemo = Prelude.Nothing,
         _ModifyWorkflowPropertiesCommandAttributes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ModifyWorkflowPropertiesCommandAttributes
          -> Data.ProtoLens.Encoding.Bytes.Parser ModifyWorkflowPropertiesCommandAttributes
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
          (do loop Data.ProtoLens.defMessage)
          "ModifyWorkflowPropertiesCommandAttributes"
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
instance Control.DeepSeq.NFData ModifyWorkflowPropertiesCommandAttributes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ModifyWorkflowPropertiesCommandAttributes'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ModifyWorkflowPropertiesCommandAttributes'upsertedMemo x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.messageId' @:: Lens' ProtocolMessageCommandAttributes Data.Text.Text@ -}
data ProtocolMessageCommandAttributes
  = ProtocolMessageCommandAttributes'_constructor {_ProtocolMessageCommandAttributes'messageId :: !Data.Text.Text,
                                                   _ProtocolMessageCommandAttributes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProtocolMessageCommandAttributes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProtocolMessageCommandAttributes "messageId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProtocolMessageCommandAttributes'messageId
           (\ x__ y__
              -> x__ {_ProtocolMessageCommandAttributes'messageId = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProtocolMessageCommandAttributes where
  messageName _
    = Data.Text.pack
        "temporal.api.command.v1.ProtocolMessageCommandAttributes"
  packedMessageDescriptor _
    = "\n\
      \ ProtocolMessageCommandAttributes\DC2\GS\n\
      \\n\
      \message_id\CAN\SOH \SOH(\tR\tmessageId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        messageId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"messageId")) ::
              Data.ProtoLens.FieldDescriptor ProtocolMessageCommandAttributes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, messageId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProtocolMessageCommandAttributes'_unknownFields
        (\ x__ y__
           -> x__ {_ProtocolMessageCommandAttributes'_unknownFields = y__})
  defMessage
    = ProtocolMessageCommandAttributes'_constructor
        {_ProtocolMessageCommandAttributes'messageId = Data.ProtoLens.fieldDefault,
         _ProtocolMessageCommandAttributes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProtocolMessageCommandAttributes
          -> Data.ProtoLens.Encoding.Bytes.Parser ProtocolMessageCommandAttributes
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
                                       "message_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"messageId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "ProtocolMessageCommandAttributes"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"messageId") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ProtocolMessageCommandAttributes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProtocolMessageCommandAttributes'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProtocolMessageCommandAttributes'messageId x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.markerName' @:: Lens' RecordMarkerCommandAttributes Data.Text.Text@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.details' @:: Lens' RecordMarkerCommandAttributes (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payloads)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.header' @:: Lens' RecordMarkerCommandAttributes Proto.Temporal.Api.Common.V1.Message.Header@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'header' @:: Lens' RecordMarkerCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.failure' @:: Lens' RecordMarkerCommandAttributes Proto.Temporal.Api.Failure.V1.Message.Failure@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'failure' @:: Lens' RecordMarkerCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@ -}
data RecordMarkerCommandAttributes
  = RecordMarkerCommandAttributes'_constructor {_RecordMarkerCommandAttributes'markerName :: !Data.Text.Text,
                                                _RecordMarkerCommandAttributes'details :: !(Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payloads),
                                                _RecordMarkerCommandAttributes'header :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header),
                                                _RecordMarkerCommandAttributes'failure :: !(Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure),
                                                _RecordMarkerCommandAttributes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RecordMarkerCommandAttributes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RecordMarkerCommandAttributes "markerName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RecordMarkerCommandAttributes'markerName
           (\ x__ y__
              -> x__ {_RecordMarkerCommandAttributes'markerName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RecordMarkerCommandAttributes "details" (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RecordMarkerCommandAttributes'details
           (\ x__ y__ -> x__ {_RecordMarkerCommandAttributes'details = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RecordMarkerCommandAttributes "header" Proto.Temporal.Api.Common.V1.Message.Header where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RecordMarkerCommandAttributes'header
           (\ x__ y__ -> x__ {_RecordMarkerCommandAttributes'header = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RecordMarkerCommandAttributes "maybe'header" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RecordMarkerCommandAttributes'header
           (\ x__ y__ -> x__ {_RecordMarkerCommandAttributes'header = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RecordMarkerCommandAttributes "failure" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RecordMarkerCommandAttributes'failure
           (\ x__ y__ -> x__ {_RecordMarkerCommandAttributes'failure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RecordMarkerCommandAttributes "maybe'failure" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RecordMarkerCommandAttributes'failure
           (\ x__ y__ -> x__ {_RecordMarkerCommandAttributes'failure = y__}))
        Prelude.id
instance Data.ProtoLens.Message RecordMarkerCommandAttributes where
  messageName _
    = Data.Text.pack
        "temporal.api.command.v1.RecordMarkerCommandAttributes"
  packedMessageDescriptor _
    = "\n\
      \\GSRecordMarkerCommandAttributes\DC2\US\n\
      \\vmarker_name\CAN\SOH \SOH(\tR\n\
      \markerName\DC2]\n\
      \\adetails\CAN\STX \ETX(\v2C.temporal.api.command.v1.RecordMarkerCommandAttributes.DetailsEntryR\adetails\DC26\n\
      \\ACKheader\CAN\ETX \SOH(\v2\RS.temporal.api.common.v1.HeaderR\ACKheader\DC2:\n\
      \\afailure\CAN\EOT \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure\SUB\\\n\
      \\fDetailsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC26\n\
      \\ENQvalue\CAN\STX \SOH(\v2 .temporal.api.common.v1.PayloadsR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        markerName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "marker_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"markerName")) ::
              Data.ProtoLens.FieldDescriptor RecordMarkerCommandAttributes
        details__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "details"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RecordMarkerCommandAttributes'DetailsEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"details")) ::
              Data.ProtoLens.FieldDescriptor RecordMarkerCommandAttributes
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Header)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'header")) ::
              Data.ProtoLens.FieldDescriptor RecordMarkerCommandAttributes
        failure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failure")) ::
              Data.ProtoLens.FieldDescriptor RecordMarkerCommandAttributes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, markerName__field_descriptor),
           (Data.ProtoLens.Tag 2, details__field_descriptor),
           (Data.ProtoLens.Tag 3, header__field_descriptor),
           (Data.ProtoLens.Tag 4, failure__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RecordMarkerCommandAttributes'_unknownFields
        (\ x__ y__
           -> x__ {_RecordMarkerCommandAttributes'_unknownFields = y__})
  defMessage
    = RecordMarkerCommandAttributes'_constructor
        {_RecordMarkerCommandAttributes'markerName = Data.ProtoLens.fieldDefault,
         _RecordMarkerCommandAttributes'details = Data.Map.empty,
         _RecordMarkerCommandAttributes'header = Prelude.Nothing,
         _RecordMarkerCommandAttributes'failure = Prelude.Nothing,
         _RecordMarkerCommandAttributes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RecordMarkerCommandAttributes
          -> Data.ProtoLens.Encoding.Bytes.Parser RecordMarkerCommandAttributes
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
                                       "marker_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"markerName") y x)
                        18
                          -> do !(entry :: RecordMarkerCommandAttributes'DetailsEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                            (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                                Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                  (Prelude.fromIntegral
                                                                                                     len)
                                                                                                  Data.ProtoLens.parseMessage)
                                                                                            "details"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"details")
                                        (\ !t -> Data.Map.insert key value t) x))
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "header"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"header") y x)
                        34
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
          (do loop Data.ProtoLens.defMessage) "RecordMarkerCommandAttributes"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"markerName") _x
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
                (Data.Monoid.mconcat
                   (Prelude.map
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"value") (Prelude.snd _v)
                                       (Data.ProtoLens.defMessage ::
                                          RecordMarkerCommandAttributes'DetailsEntry)))))
                      (Data.Map.toList
                         (Lens.Family2.view (Data.ProtoLens.Field.field @"details") _x))))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'header") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'failure") _x
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
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData RecordMarkerCommandAttributes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RecordMarkerCommandAttributes'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RecordMarkerCommandAttributes'markerName x__)
                (Control.DeepSeq.deepseq
                   (_RecordMarkerCommandAttributes'details x__)
                   (Control.DeepSeq.deepseq
                      (_RecordMarkerCommandAttributes'header x__)
                      (Control.DeepSeq.deepseq
                         (_RecordMarkerCommandAttributes'failure x__) ()))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.key' @:: Lens' RecordMarkerCommandAttributes'DetailsEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.value' @:: Lens' RecordMarkerCommandAttributes'DetailsEntry Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'value' @:: Lens' RecordMarkerCommandAttributes'DetailsEntry (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@ -}
data RecordMarkerCommandAttributes'DetailsEntry
  = RecordMarkerCommandAttributes'DetailsEntry'_constructor {_RecordMarkerCommandAttributes'DetailsEntry'key :: !Data.Text.Text,
                                                             _RecordMarkerCommandAttributes'DetailsEntry'value :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads),
                                                             _RecordMarkerCommandAttributes'DetailsEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RecordMarkerCommandAttributes'DetailsEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RecordMarkerCommandAttributes'DetailsEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RecordMarkerCommandAttributes'DetailsEntry'key
           (\ x__ y__
              -> x__ {_RecordMarkerCommandAttributes'DetailsEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RecordMarkerCommandAttributes'DetailsEntry "value" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RecordMarkerCommandAttributes'DetailsEntry'value
           (\ x__ y__
              -> x__ {_RecordMarkerCommandAttributes'DetailsEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RecordMarkerCommandAttributes'DetailsEntry "maybe'value" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RecordMarkerCommandAttributes'DetailsEntry'value
           (\ x__ y__
              -> x__ {_RecordMarkerCommandAttributes'DetailsEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message RecordMarkerCommandAttributes'DetailsEntry where
  messageName _
    = Data.Text.pack
        "temporal.api.command.v1.RecordMarkerCommandAttributes.DetailsEntry"
  packedMessageDescriptor _
    = "\n\
      \\fDetailsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC26\n\
      \\ENQvalue\CAN\STX \SOH(\v2 .temporal.api.common.v1.PayloadsR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor RecordMarkerCommandAttributes'DetailsEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payloads)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor RecordMarkerCommandAttributes'DetailsEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RecordMarkerCommandAttributes'DetailsEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_RecordMarkerCommandAttributes'DetailsEntry'_unknownFields = y__})
  defMessage
    = RecordMarkerCommandAttributes'DetailsEntry'_constructor
        {_RecordMarkerCommandAttributes'DetailsEntry'key = Data.ProtoLens.fieldDefault,
         _RecordMarkerCommandAttributes'DetailsEntry'value = Prelude.Nothing,
         _RecordMarkerCommandAttributes'DetailsEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RecordMarkerCommandAttributes'DetailsEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser RecordMarkerCommandAttributes'DetailsEntry
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
          (do loop Data.ProtoLens.defMessage) "DetailsEntry"
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
instance Control.DeepSeq.NFData RecordMarkerCommandAttributes'DetailsEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RecordMarkerCommandAttributes'DetailsEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RecordMarkerCommandAttributes'DetailsEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_RecordMarkerCommandAttributes'DetailsEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.scheduledEventId' @:: Lens' RequestCancelActivityTaskCommandAttributes Data.Int.Int64@ -}
data RequestCancelActivityTaskCommandAttributes
  = RequestCancelActivityTaskCommandAttributes'_constructor {_RequestCancelActivityTaskCommandAttributes'scheduledEventId :: !Data.Int.Int64,
                                                             _RequestCancelActivityTaskCommandAttributes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestCancelActivityTaskCommandAttributes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestCancelActivityTaskCommandAttributes "scheduledEventId" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestCancelActivityTaskCommandAttributes'scheduledEventId
           (\ x__ y__
              -> x__
                   {_RequestCancelActivityTaskCommandAttributes'scheduledEventId = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestCancelActivityTaskCommandAttributes where
  messageName _
    = Data.Text.pack
        "temporal.api.command.v1.RequestCancelActivityTaskCommandAttributes"
  packedMessageDescriptor _
    = "\n\
      \*RequestCancelActivityTaskCommandAttributes\DC2,\n\
      \\DC2scheduled_event_id\CAN\SOH \SOH(\ETXR\DLEscheduledEventId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        scheduledEventId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scheduled_event_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"scheduledEventId")) ::
              Data.ProtoLens.FieldDescriptor RequestCancelActivityTaskCommandAttributes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, scheduledEventId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestCancelActivityTaskCommandAttributes'_unknownFields
        (\ x__ y__
           -> x__
                {_RequestCancelActivityTaskCommandAttributes'_unknownFields = y__})
  defMessage
    = RequestCancelActivityTaskCommandAttributes'_constructor
        {_RequestCancelActivityTaskCommandAttributes'scheduledEventId = Data.ProtoLens.fieldDefault,
         _RequestCancelActivityTaskCommandAttributes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestCancelActivityTaskCommandAttributes
          -> Data.ProtoLens.Encoding.Bytes.Parser RequestCancelActivityTaskCommandAttributes
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
                                       "scheduled_event_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduledEventId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "RequestCancelActivityTaskCommandAttributes"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"scheduledEventId") _x
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
instance Control.DeepSeq.NFData RequestCancelActivityTaskCommandAttributes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestCancelActivityTaskCommandAttributes'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RequestCancelActivityTaskCommandAttributes'scheduledEventId x__)
                ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.namespace' @:: Lens' RequestCancelExternalWorkflowExecutionCommandAttributes Data.Text.Text@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.workflowId' @:: Lens' RequestCancelExternalWorkflowExecutionCommandAttributes Data.Text.Text@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.runId' @:: Lens' RequestCancelExternalWorkflowExecutionCommandAttributes Data.Text.Text@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.control' @:: Lens' RequestCancelExternalWorkflowExecutionCommandAttributes Data.Text.Text@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.childWorkflowOnly' @:: Lens' RequestCancelExternalWorkflowExecutionCommandAttributes Prelude.Bool@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.reason' @:: Lens' RequestCancelExternalWorkflowExecutionCommandAttributes Data.Text.Text@ -}
data RequestCancelExternalWorkflowExecutionCommandAttributes
  = RequestCancelExternalWorkflowExecutionCommandAttributes'_constructor {_RequestCancelExternalWorkflowExecutionCommandAttributes'namespace :: !Data.Text.Text,
                                                                          _RequestCancelExternalWorkflowExecutionCommandAttributes'workflowId :: !Data.Text.Text,
                                                                          _RequestCancelExternalWorkflowExecutionCommandAttributes'runId :: !Data.Text.Text,
                                                                          _RequestCancelExternalWorkflowExecutionCommandAttributes'control :: !Data.Text.Text,
                                                                          _RequestCancelExternalWorkflowExecutionCommandAttributes'childWorkflowOnly :: !Prelude.Bool,
                                                                          _RequestCancelExternalWorkflowExecutionCommandAttributes'reason :: !Data.Text.Text,
                                                                          _RequestCancelExternalWorkflowExecutionCommandAttributes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestCancelExternalWorkflowExecutionCommandAttributes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestCancelExternalWorkflowExecutionCommandAttributes "namespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestCancelExternalWorkflowExecutionCommandAttributes'namespace
           (\ x__ y__
              -> x__
                   {_RequestCancelExternalWorkflowExecutionCommandAttributes'namespace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestCancelExternalWorkflowExecutionCommandAttributes "workflowId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestCancelExternalWorkflowExecutionCommandAttributes'workflowId
           (\ x__ y__
              -> x__
                   {_RequestCancelExternalWorkflowExecutionCommandAttributes'workflowId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestCancelExternalWorkflowExecutionCommandAttributes "runId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestCancelExternalWorkflowExecutionCommandAttributes'runId
           (\ x__ y__
              -> x__
                   {_RequestCancelExternalWorkflowExecutionCommandAttributes'runId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestCancelExternalWorkflowExecutionCommandAttributes "control" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestCancelExternalWorkflowExecutionCommandAttributes'control
           (\ x__ y__
              -> x__
                   {_RequestCancelExternalWorkflowExecutionCommandAttributes'control = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestCancelExternalWorkflowExecutionCommandAttributes "childWorkflowOnly" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestCancelExternalWorkflowExecutionCommandAttributes'childWorkflowOnly
           (\ x__ y__
              -> x__
                   {_RequestCancelExternalWorkflowExecutionCommandAttributes'childWorkflowOnly = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestCancelExternalWorkflowExecutionCommandAttributes "reason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestCancelExternalWorkflowExecutionCommandAttributes'reason
           (\ x__ y__
              -> x__
                   {_RequestCancelExternalWorkflowExecutionCommandAttributes'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestCancelExternalWorkflowExecutionCommandAttributes where
  messageName _
    = Data.Text.pack
        "temporal.api.command.v1.RequestCancelExternalWorkflowExecutionCommandAttributes"
  packedMessageDescriptor _
    = "\n\
      \7RequestCancelExternalWorkflowExecutionCommandAttributes\DC2 \n\
      \\tnamespace\CAN\SOH \SOH(\tR\tnamespaceB\STX\CAN\SOH\DC2\US\n\
      \\vworkflow_id\CAN\STX \SOH(\tR\n\
      \workflowId\DC2\NAK\n\
      \\ACKrun_id\CAN\ETX \SOH(\tR\ENQrunId\DC2\FS\n\
      \\acontrol\CAN\EOT \SOH(\tR\acontrolB\STX\CAN\SOH\DC2.\n\
      \\DC3child_workflow_only\CAN\ENQ \SOH(\bR\DC1childWorkflowOnly\DC2\SYN\n\
      \\ACKreason\CAN\ACK \SOH(\tR\ACKreason"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        namespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "namespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"namespace")) ::
              Data.ProtoLens.FieldDescriptor RequestCancelExternalWorkflowExecutionCommandAttributes
        workflowId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workflowId")) ::
              Data.ProtoLens.FieldDescriptor RequestCancelExternalWorkflowExecutionCommandAttributes
        runId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "run_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"runId")) ::
              Data.ProtoLens.FieldDescriptor RequestCancelExternalWorkflowExecutionCommandAttributes
        control__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "control"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"control")) ::
              Data.ProtoLens.FieldDescriptor RequestCancelExternalWorkflowExecutionCommandAttributes
        childWorkflowOnly__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "child_workflow_only"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"childWorkflowOnly")) ::
              Data.ProtoLens.FieldDescriptor RequestCancelExternalWorkflowExecutionCommandAttributes
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"reason")) ::
              Data.ProtoLens.FieldDescriptor RequestCancelExternalWorkflowExecutionCommandAttributes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, namespace__field_descriptor),
           (Data.ProtoLens.Tag 2, workflowId__field_descriptor),
           (Data.ProtoLens.Tag 3, runId__field_descriptor),
           (Data.ProtoLens.Tag 4, control__field_descriptor),
           (Data.ProtoLens.Tag 5, childWorkflowOnly__field_descriptor),
           (Data.ProtoLens.Tag 6, reason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestCancelExternalWorkflowExecutionCommandAttributes'_unknownFields
        (\ x__ y__
           -> x__
                {_RequestCancelExternalWorkflowExecutionCommandAttributes'_unknownFields = y__})
  defMessage
    = RequestCancelExternalWorkflowExecutionCommandAttributes'_constructor
        {_RequestCancelExternalWorkflowExecutionCommandAttributes'namespace = Data.ProtoLens.fieldDefault,
         _RequestCancelExternalWorkflowExecutionCommandAttributes'workflowId = Data.ProtoLens.fieldDefault,
         _RequestCancelExternalWorkflowExecutionCommandAttributes'runId = Data.ProtoLens.fieldDefault,
         _RequestCancelExternalWorkflowExecutionCommandAttributes'control = Data.ProtoLens.fieldDefault,
         _RequestCancelExternalWorkflowExecutionCommandAttributes'childWorkflowOnly = Data.ProtoLens.fieldDefault,
         _RequestCancelExternalWorkflowExecutionCommandAttributes'reason = Data.ProtoLens.fieldDefault,
         _RequestCancelExternalWorkflowExecutionCommandAttributes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestCancelExternalWorkflowExecutionCommandAttributes
          -> Data.ProtoLens.Encoding.Bytes.Parser RequestCancelExternalWorkflowExecutionCommandAttributes
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
                                       "namespace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"namespace") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "workflow_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"workflowId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "run_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"runId") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "control"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"control") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "child_workflow_only"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"childWorkflowOnly") y x)
                        50
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
          "RequestCancelExternalWorkflowExecutionCommandAttributes"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"namespace") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"workflowId") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"runId") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"control") _x
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
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"childWorkflowOnly") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (\ b -> if b then 1 else 0) _v))
                         ((Data.Monoid.<>)
                            (let
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"reason") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((Prelude..)
                                        (\ bs
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8 _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData RequestCancelExternalWorkflowExecutionCommandAttributes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestCancelExternalWorkflowExecutionCommandAttributes'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_RequestCancelExternalWorkflowExecutionCommandAttributes'namespace
                   x__)
                (Control.DeepSeq.deepseq
                   (_RequestCancelExternalWorkflowExecutionCommandAttributes'workflowId
                      x__)
                   (Control.DeepSeq.deepseq
                      (_RequestCancelExternalWorkflowExecutionCommandAttributes'runId
                         x__)
                      (Control.DeepSeq.deepseq
                         (_RequestCancelExternalWorkflowExecutionCommandAttributes'control
                            x__)
                         (Control.DeepSeq.deepseq
                            (_RequestCancelExternalWorkflowExecutionCommandAttributes'childWorkflowOnly
                               x__)
                            (Control.DeepSeq.deepseq
                               (_RequestCancelExternalWorkflowExecutionCommandAttributes'reason
                                  x__)
                               ()))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.scheduledEventId' @:: Lens' RequestCancelNexusOperationCommandAttributes Data.Int.Int64@ -}
data RequestCancelNexusOperationCommandAttributes
  = RequestCancelNexusOperationCommandAttributes'_constructor {_RequestCancelNexusOperationCommandAttributes'scheduledEventId :: !Data.Int.Int64,
                                                               _RequestCancelNexusOperationCommandAttributes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestCancelNexusOperationCommandAttributes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestCancelNexusOperationCommandAttributes "scheduledEventId" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestCancelNexusOperationCommandAttributes'scheduledEventId
           (\ x__ y__
              -> x__
                   {_RequestCancelNexusOperationCommandAttributes'scheduledEventId = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestCancelNexusOperationCommandAttributes where
  messageName _
    = Data.Text.pack
        "temporal.api.command.v1.RequestCancelNexusOperationCommandAttributes"
  packedMessageDescriptor _
    = "\n\
      \,RequestCancelNexusOperationCommandAttributes\DC2,\n\
      \\DC2scheduled_event_id\CAN\SOH \SOH(\ETXR\DLEscheduledEventId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        scheduledEventId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scheduled_event_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"scheduledEventId")) ::
              Data.ProtoLens.FieldDescriptor RequestCancelNexusOperationCommandAttributes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, scheduledEventId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestCancelNexusOperationCommandAttributes'_unknownFields
        (\ x__ y__
           -> x__
                {_RequestCancelNexusOperationCommandAttributes'_unknownFields = y__})
  defMessage
    = RequestCancelNexusOperationCommandAttributes'_constructor
        {_RequestCancelNexusOperationCommandAttributes'scheduledEventId = Data.ProtoLens.fieldDefault,
         _RequestCancelNexusOperationCommandAttributes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestCancelNexusOperationCommandAttributes
          -> Data.ProtoLens.Encoding.Bytes.Parser RequestCancelNexusOperationCommandAttributes
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
                                       "scheduled_event_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduledEventId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "RequestCancelNexusOperationCommandAttributes"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"scheduledEventId") _x
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
instance Control.DeepSeq.NFData RequestCancelNexusOperationCommandAttributes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestCancelNexusOperationCommandAttributes'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RequestCancelNexusOperationCommandAttributes'scheduledEventId
                   x__)
                ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.activityId' @:: Lens' ScheduleActivityTaskCommandAttributes Data.Text.Text@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.activityType' @:: Lens' ScheduleActivityTaskCommandAttributes Proto.Temporal.Api.Common.V1.Message.ActivityType@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'activityType' @:: Lens' ScheduleActivityTaskCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ActivityType)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.taskQueue' @:: Lens' ScheduleActivityTaskCommandAttributes Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'taskQueue' @:: Lens' ScheduleActivityTaskCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.header' @:: Lens' ScheduleActivityTaskCommandAttributes Proto.Temporal.Api.Common.V1.Message.Header@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'header' @:: Lens' ScheduleActivityTaskCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.input' @:: Lens' ScheduleActivityTaskCommandAttributes Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'input' @:: Lens' ScheduleActivityTaskCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.scheduleToCloseTimeout' @:: Lens' ScheduleActivityTaskCommandAttributes Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'scheduleToCloseTimeout' @:: Lens' ScheduleActivityTaskCommandAttributes (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.scheduleToStartTimeout' @:: Lens' ScheduleActivityTaskCommandAttributes Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'scheduleToStartTimeout' @:: Lens' ScheduleActivityTaskCommandAttributes (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.startToCloseTimeout' @:: Lens' ScheduleActivityTaskCommandAttributes Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'startToCloseTimeout' @:: Lens' ScheduleActivityTaskCommandAttributes (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.heartbeatTimeout' @:: Lens' ScheduleActivityTaskCommandAttributes Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'heartbeatTimeout' @:: Lens' ScheduleActivityTaskCommandAttributes (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.retryPolicy' @:: Lens' ScheduleActivityTaskCommandAttributes Proto.Temporal.Api.Common.V1.Message.RetryPolicy@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'retryPolicy' @:: Lens' ScheduleActivityTaskCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.requestEagerExecution' @:: Lens' ScheduleActivityTaskCommandAttributes Prelude.Bool@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.useWorkflowBuildId' @:: Lens' ScheduleActivityTaskCommandAttributes Prelude.Bool@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.priority' @:: Lens' ScheduleActivityTaskCommandAttributes Proto.Temporal.Api.Common.V1.Message.Priority@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'priority' @:: Lens' ScheduleActivityTaskCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority)@ -}
data ScheduleActivityTaskCommandAttributes
  = ScheduleActivityTaskCommandAttributes'_constructor {_ScheduleActivityTaskCommandAttributes'activityId :: !Data.Text.Text,
                                                        _ScheduleActivityTaskCommandAttributes'activityType :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ActivityType),
                                                        _ScheduleActivityTaskCommandAttributes'taskQueue :: !(Prelude.Maybe Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue),
                                                        _ScheduleActivityTaskCommandAttributes'header :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header),
                                                        _ScheduleActivityTaskCommandAttributes'input :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads),
                                                        _ScheduleActivityTaskCommandAttributes'scheduleToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                        _ScheduleActivityTaskCommandAttributes'scheduleToStartTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                        _ScheduleActivityTaskCommandAttributes'startToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                        _ScheduleActivityTaskCommandAttributes'heartbeatTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                        _ScheduleActivityTaskCommandAttributes'retryPolicy :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy),
                                                        _ScheduleActivityTaskCommandAttributes'requestEagerExecution :: !Prelude.Bool,
                                                        _ScheduleActivityTaskCommandAttributes'useWorkflowBuildId :: !Prelude.Bool,
                                                        _ScheduleActivityTaskCommandAttributes'priority :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority),
                                                        _ScheduleActivityTaskCommandAttributes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScheduleActivityTaskCommandAttributes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "activityId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'activityId
           (\ x__ y__
              -> x__ {_ScheduleActivityTaskCommandAttributes'activityId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "activityType" Proto.Temporal.Api.Common.V1.Message.ActivityType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'activityType
           (\ x__ y__
              -> x__
                   {_ScheduleActivityTaskCommandAttributes'activityType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "maybe'activityType" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ActivityType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'activityType
           (\ x__ y__
              -> x__
                   {_ScheduleActivityTaskCommandAttributes'activityType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "taskQueue" Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'taskQueue
           (\ x__ y__
              -> x__ {_ScheduleActivityTaskCommandAttributes'taskQueue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "maybe'taskQueue" (Prelude.Maybe Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'taskQueue
           (\ x__ y__
              -> x__ {_ScheduleActivityTaskCommandAttributes'taskQueue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "header" Proto.Temporal.Api.Common.V1.Message.Header where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'header
           (\ x__ y__
              -> x__ {_ScheduleActivityTaskCommandAttributes'header = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "maybe'header" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'header
           (\ x__ y__
              -> x__ {_ScheduleActivityTaskCommandAttributes'header = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "input" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'input
           (\ x__ y__
              -> x__ {_ScheduleActivityTaskCommandAttributes'input = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "maybe'input" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'input
           (\ x__ y__
              -> x__ {_ScheduleActivityTaskCommandAttributes'input = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "scheduleToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'scheduleToCloseTimeout
           (\ x__ y__
              -> x__
                   {_ScheduleActivityTaskCommandAttributes'scheduleToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "maybe'scheduleToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'scheduleToCloseTimeout
           (\ x__ y__
              -> x__
                   {_ScheduleActivityTaskCommandAttributes'scheduleToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "scheduleToStartTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'scheduleToStartTimeout
           (\ x__ y__
              -> x__
                   {_ScheduleActivityTaskCommandAttributes'scheduleToStartTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "maybe'scheduleToStartTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'scheduleToStartTimeout
           (\ x__ y__
              -> x__
                   {_ScheduleActivityTaskCommandAttributes'scheduleToStartTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "startToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'startToCloseTimeout
           (\ x__ y__
              -> x__
                   {_ScheduleActivityTaskCommandAttributes'startToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "maybe'startToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'startToCloseTimeout
           (\ x__ y__
              -> x__
                   {_ScheduleActivityTaskCommandAttributes'startToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "heartbeatTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'heartbeatTimeout
           (\ x__ y__
              -> x__
                   {_ScheduleActivityTaskCommandAttributes'heartbeatTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "maybe'heartbeatTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'heartbeatTimeout
           (\ x__ y__
              -> x__
                   {_ScheduleActivityTaskCommandAttributes'heartbeatTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "retryPolicy" Proto.Temporal.Api.Common.V1.Message.RetryPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'retryPolicy
           (\ x__ y__
              -> x__ {_ScheduleActivityTaskCommandAttributes'retryPolicy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "maybe'retryPolicy" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'retryPolicy
           (\ x__ y__
              -> x__ {_ScheduleActivityTaskCommandAttributes'retryPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "requestEagerExecution" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'requestEagerExecution
           (\ x__ y__
              -> x__
                   {_ScheduleActivityTaskCommandAttributes'requestEagerExecution = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "useWorkflowBuildId" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'useWorkflowBuildId
           (\ x__ y__
              -> x__
                   {_ScheduleActivityTaskCommandAttributes'useWorkflowBuildId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "priority" Proto.Temporal.Api.Common.V1.Message.Priority where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'priority
           (\ x__ y__
              -> x__ {_ScheduleActivityTaskCommandAttributes'priority = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleActivityTaskCommandAttributes "maybe'priority" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActivityTaskCommandAttributes'priority
           (\ x__ y__
              -> x__ {_ScheduleActivityTaskCommandAttributes'priority = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScheduleActivityTaskCommandAttributes where
  messageName _
    = Data.Text.pack
        "temporal.api.command.v1.ScheduleActivityTaskCommandAttributes"
  packedMessageDescriptor _
    = "\n\
      \%ScheduleActivityTaskCommandAttributes\DC2\US\n\
      \\vactivity_id\CAN\SOH \SOH(\tR\n\
      \activityId\DC2I\n\
      \\ractivity_type\CAN\STX \SOH(\v2$.temporal.api.common.v1.ActivityTypeR\factivityType\DC2C\n\
      \\n\
      \task_queue\CAN\EOT \SOH(\v2$.temporal.api.taskqueue.v1.TaskQueueR\ttaskQueue\DC26\n\
      \\ACKheader\CAN\ENQ \SOH(\v2\RS.temporal.api.common.v1.HeaderR\ACKheader\DC26\n\
      \\ENQinput\CAN\ACK \SOH(\v2 .temporal.api.common.v1.PayloadsR\ENQinput\DC2T\n\
      \\EMschedule_to_close_timeout\CAN\a \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2T\n\
      \\EMschedule_to_start_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout\DC2N\n\
      \\SYNstart_to_close_timeout\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\DC2F\n\
      \\DC1heartbeat_timeout\CAN\n\
      \ \SOH(\v2\EM.google.protobuf.DurationR\DLEheartbeatTimeout\DC2F\n\
      \\fretry_policy\CAN\v \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC26\n\
      \\ETBrequest_eager_execution\CAN\f \SOH(\bR\NAKrequestEagerExecution\DC21\n\
      \\NAKuse_workflow_build_id\CAN\r \SOH(\bR\DC2useWorkflowBuildId\DC2<\n\
      \\bpriority\CAN\SO \SOH(\v2 .temporal.api.common.v1.PriorityR\bpriorityJ\EOT\b\ETX\DLE\EOT"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        activityId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"activityId")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivityTaskCommandAttributes
        activityType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.ActivityType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'activityType")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivityTaskCommandAttributes
        taskQueue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'taskQueue")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivityTaskCommandAttributes
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Header)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'header")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivityTaskCommandAttributes
        input__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "input"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payloads)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'input")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivityTaskCommandAttributes
        scheduleToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivityTaskCommandAttributes
        scheduleToStartTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_start_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToStartTimeout")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivityTaskCommandAttributes
        startToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivityTaskCommandAttributes
        heartbeatTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heartbeat_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heartbeatTimeout")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivityTaskCommandAttributes
        retryPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.RetryPolicy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'retryPolicy")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivityTaskCommandAttributes
        requestEagerExecution__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_eager_execution"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestEagerExecution")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivityTaskCommandAttributes
        useWorkflowBuildId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_workflow_build_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"useWorkflowBuildId")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivityTaskCommandAttributes
        priority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "priority"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Priority)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'priority")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActivityTaskCommandAttributes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, activityId__field_descriptor),
           (Data.ProtoLens.Tag 2, activityType__field_descriptor),
           (Data.ProtoLens.Tag 4, taskQueue__field_descriptor),
           (Data.ProtoLens.Tag 5, header__field_descriptor),
           (Data.ProtoLens.Tag 6, input__field_descriptor),
           (Data.ProtoLens.Tag 7, scheduleToCloseTimeout__field_descriptor),
           (Data.ProtoLens.Tag 8, scheduleToStartTimeout__field_descriptor),
           (Data.ProtoLens.Tag 9, startToCloseTimeout__field_descriptor),
           (Data.ProtoLens.Tag 10, heartbeatTimeout__field_descriptor),
           (Data.ProtoLens.Tag 11, retryPolicy__field_descriptor),
           (Data.ProtoLens.Tag 12, requestEagerExecution__field_descriptor),
           (Data.ProtoLens.Tag 13, useWorkflowBuildId__field_descriptor),
           (Data.ProtoLens.Tag 14, priority__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScheduleActivityTaskCommandAttributes'_unknownFields
        (\ x__ y__
           -> x__
                {_ScheduleActivityTaskCommandAttributes'_unknownFields = y__})
  defMessage
    = ScheduleActivityTaskCommandAttributes'_constructor
        {_ScheduleActivityTaskCommandAttributes'activityId = Data.ProtoLens.fieldDefault,
         _ScheduleActivityTaskCommandAttributes'activityType = Prelude.Nothing,
         _ScheduleActivityTaskCommandAttributes'taskQueue = Prelude.Nothing,
         _ScheduleActivityTaskCommandAttributes'header = Prelude.Nothing,
         _ScheduleActivityTaskCommandAttributes'input = Prelude.Nothing,
         _ScheduleActivityTaskCommandAttributes'scheduleToCloseTimeout = Prelude.Nothing,
         _ScheduleActivityTaskCommandAttributes'scheduleToStartTimeout = Prelude.Nothing,
         _ScheduleActivityTaskCommandAttributes'startToCloseTimeout = Prelude.Nothing,
         _ScheduleActivityTaskCommandAttributes'heartbeatTimeout = Prelude.Nothing,
         _ScheduleActivityTaskCommandAttributes'retryPolicy = Prelude.Nothing,
         _ScheduleActivityTaskCommandAttributes'requestEagerExecution = Data.ProtoLens.fieldDefault,
         _ScheduleActivityTaskCommandAttributes'useWorkflowBuildId = Data.ProtoLens.fieldDefault,
         _ScheduleActivityTaskCommandAttributes'priority = Prelude.Nothing,
         _ScheduleActivityTaskCommandAttributes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScheduleActivityTaskCommandAttributes
          -> Data.ProtoLens.Encoding.Bytes.Parser ScheduleActivityTaskCommandAttributes
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
                                       "activity_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"activityId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "activity_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"activityType") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "task_queue"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskQueue") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "header"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"header") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "input"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"input") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToCloseTimeout") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_start_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToStartTimeout") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_to_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startToCloseTimeout") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "heartbeat_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"heartbeatTimeout") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "retry_policy"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"retryPolicy") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "request_eager_execution"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestEagerExecution") y x)
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "use_workflow_build_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"useWorkflowBuildId") y x)
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "priority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"priority") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "ScheduleActivityTaskCommandAttributes"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"activityId") _x
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'activityType") _x
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'taskQueue") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'header") _x
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
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'input") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
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
                                      (Data.ProtoLens.Field.field @"maybe'scheduleToStartTimeout")
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
                                         (Data.ProtoLens.Field.field @"maybe'startToCloseTimeout")
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
                                            (Data.ProtoLens.Field.field @"maybe'heartbeatTimeout")
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
                                               (Data.ProtoLens.Field.field @"maybe'retryPolicy") _x
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
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field
                                                       @"requestEagerExecution")
                                                    _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                    ((Prelude..)
                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (\ b -> if b then 1 else 0) _v))
                                           ((Data.Monoid.<>)
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"useWorkflowBuildId")
                                                       _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 104)
                                                       ((Prelude..)
                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (\ b -> if b then 1 else 0) _v))
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
                                                              Data.ProtoLens.encodeMessage _v))
                                                 (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                    (Lens.Family2.view
                                                       Data.ProtoLens.unknownFields _x))))))))))))))
instance Control.DeepSeq.NFData ScheduleActivityTaskCommandAttributes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScheduleActivityTaskCommandAttributes'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScheduleActivityTaskCommandAttributes'activityId x__)
                (Control.DeepSeq.deepseq
                   (_ScheduleActivityTaskCommandAttributes'activityType x__)
                   (Control.DeepSeq.deepseq
                      (_ScheduleActivityTaskCommandAttributes'taskQueue x__)
                      (Control.DeepSeq.deepseq
                         (_ScheduleActivityTaskCommandAttributes'header x__)
                         (Control.DeepSeq.deepseq
                            (_ScheduleActivityTaskCommandAttributes'input x__)
                            (Control.DeepSeq.deepseq
                               (_ScheduleActivityTaskCommandAttributes'scheduleToCloseTimeout x__)
                               (Control.DeepSeq.deepseq
                                  (_ScheduleActivityTaskCommandAttributes'scheduleToStartTimeout
                                     x__)
                                  (Control.DeepSeq.deepseq
                                     (_ScheduleActivityTaskCommandAttributes'startToCloseTimeout
                                        x__)
                                     (Control.DeepSeq.deepseq
                                        (_ScheduleActivityTaskCommandAttributes'heartbeatTimeout
                                           x__)
                                        (Control.DeepSeq.deepseq
                                           (_ScheduleActivityTaskCommandAttributes'retryPolicy x__)
                                           (Control.DeepSeq.deepseq
                                              (_ScheduleActivityTaskCommandAttributes'requestEagerExecution
                                                 x__)
                                              (Control.DeepSeq.deepseq
                                                 (_ScheduleActivityTaskCommandAttributes'useWorkflowBuildId
                                                    x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_ScheduleActivityTaskCommandAttributes'priority
                                                       x__)
                                                    ())))))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.endpoint' @:: Lens' ScheduleNexusOperationCommandAttributes Data.Text.Text@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.service' @:: Lens' ScheduleNexusOperationCommandAttributes Data.Text.Text@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.operation' @:: Lens' ScheduleNexusOperationCommandAttributes Data.Text.Text@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.input' @:: Lens' ScheduleNexusOperationCommandAttributes Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'input' @:: Lens' ScheduleNexusOperationCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.scheduleToCloseTimeout' @:: Lens' ScheduleNexusOperationCommandAttributes Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'scheduleToCloseTimeout' @:: Lens' ScheduleNexusOperationCommandAttributes (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.nexusHeader' @:: Lens' ScheduleNexusOperationCommandAttributes (Data.Map.Map Data.Text.Text Data.Text.Text)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.scheduleToStartTimeout' @:: Lens' ScheduleNexusOperationCommandAttributes Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'scheduleToStartTimeout' @:: Lens' ScheduleNexusOperationCommandAttributes (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.startToCloseTimeout' @:: Lens' ScheduleNexusOperationCommandAttributes Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'startToCloseTimeout' @:: Lens' ScheduleNexusOperationCommandAttributes (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data ScheduleNexusOperationCommandAttributes
  = ScheduleNexusOperationCommandAttributes'_constructor {_ScheduleNexusOperationCommandAttributes'endpoint :: !Data.Text.Text,
                                                          _ScheduleNexusOperationCommandAttributes'service :: !Data.Text.Text,
                                                          _ScheduleNexusOperationCommandAttributes'operation :: !Data.Text.Text,
                                                          _ScheduleNexusOperationCommandAttributes'input :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                                          _ScheduleNexusOperationCommandAttributes'scheduleToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                          _ScheduleNexusOperationCommandAttributes'nexusHeader :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                                                          _ScheduleNexusOperationCommandAttributes'scheduleToStartTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                          _ScheduleNexusOperationCommandAttributes'startToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                          _ScheduleNexusOperationCommandAttributes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScheduleNexusOperationCommandAttributes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScheduleNexusOperationCommandAttributes "endpoint" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperationCommandAttributes'endpoint
           (\ x__ y__
              -> x__ {_ScheduleNexusOperationCommandAttributes'endpoint = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleNexusOperationCommandAttributes "service" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperationCommandAttributes'service
           (\ x__ y__
              -> x__ {_ScheduleNexusOperationCommandAttributes'service = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleNexusOperationCommandAttributes "operation" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperationCommandAttributes'operation
           (\ x__ y__
              -> x__ {_ScheduleNexusOperationCommandAttributes'operation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleNexusOperationCommandAttributes "input" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperationCommandAttributes'input
           (\ x__ y__
              -> x__ {_ScheduleNexusOperationCommandAttributes'input = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleNexusOperationCommandAttributes "maybe'input" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperationCommandAttributes'input
           (\ x__ y__
              -> x__ {_ScheduleNexusOperationCommandAttributes'input = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleNexusOperationCommandAttributes "scheduleToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperationCommandAttributes'scheduleToCloseTimeout
           (\ x__ y__
              -> x__
                   {_ScheduleNexusOperationCommandAttributes'scheduleToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleNexusOperationCommandAttributes "maybe'scheduleToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperationCommandAttributes'scheduleToCloseTimeout
           (\ x__ y__
              -> x__
                   {_ScheduleNexusOperationCommandAttributes'scheduleToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleNexusOperationCommandAttributes "nexusHeader" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperationCommandAttributes'nexusHeader
           (\ x__ y__
              -> x__
                   {_ScheduleNexusOperationCommandAttributes'nexusHeader = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleNexusOperationCommandAttributes "scheduleToStartTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperationCommandAttributes'scheduleToStartTimeout
           (\ x__ y__
              -> x__
                   {_ScheduleNexusOperationCommandAttributes'scheduleToStartTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleNexusOperationCommandAttributes "maybe'scheduleToStartTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperationCommandAttributes'scheduleToStartTimeout
           (\ x__ y__
              -> x__
                   {_ScheduleNexusOperationCommandAttributes'scheduleToStartTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleNexusOperationCommandAttributes "startToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperationCommandAttributes'startToCloseTimeout
           (\ x__ y__
              -> x__
                   {_ScheduleNexusOperationCommandAttributes'startToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleNexusOperationCommandAttributes "maybe'startToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperationCommandAttributes'startToCloseTimeout
           (\ x__ y__
              -> x__
                   {_ScheduleNexusOperationCommandAttributes'startToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScheduleNexusOperationCommandAttributes where
  messageName _
    = Data.Text.pack
        "temporal.api.command.v1.ScheduleNexusOperationCommandAttributes"
  packedMessageDescriptor _
    = "\n\
      \'ScheduleNexusOperationCommandAttributes\DC2\SUB\n\
      \\bendpoint\CAN\SOH \SOH(\tR\bendpoint\DC2\CAN\n\
      \\aservice\CAN\STX \SOH(\tR\aservice\DC2\FS\n\
      \\toperation\CAN\ETX \SOH(\tR\toperation\DC25\n\
      \\ENQinput\CAN\EOT \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQinput\DC2T\n\
      \\EMschedule_to_close_timeout\CAN\ENQ \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2t\n\
      \\fnexus_header\CAN\ACK \ETX(\v2Q.temporal.api.command.v1.ScheduleNexusOperationCommandAttributes.NexusHeaderEntryR\vnexusHeader\DC2T\n\
      \\EMschedule_to_start_timeout\CAN\a \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout\DC2N\n\
      \\SYNstart_to_close_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\SUB>\n\
      \\DLENexusHeaderEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        endpoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"endpoint")) ::
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperationCommandAttributes
        service__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"service")) ::
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperationCommandAttributes
        operation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operation")) ::
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperationCommandAttributes
        input__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "input"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'input")) ::
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperationCommandAttributes
        scheduleToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperationCommandAttributes
        nexusHeader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nexus_header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScheduleNexusOperationCommandAttributes'NexusHeaderEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"nexusHeader")) ::
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperationCommandAttributes
        scheduleToStartTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_start_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToStartTimeout")) ::
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperationCommandAttributes
        startToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperationCommandAttributes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, endpoint__field_descriptor),
           (Data.ProtoLens.Tag 2, service__field_descriptor),
           (Data.ProtoLens.Tag 3, operation__field_descriptor),
           (Data.ProtoLens.Tag 4, input__field_descriptor),
           (Data.ProtoLens.Tag 5, scheduleToCloseTimeout__field_descriptor),
           (Data.ProtoLens.Tag 6, nexusHeader__field_descriptor),
           (Data.ProtoLens.Tag 7, scheduleToStartTimeout__field_descriptor),
           (Data.ProtoLens.Tag 8, startToCloseTimeout__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScheduleNexusOperationCommandAttributes'_unknownFields
        (\ x__ y__
           -> x__
                {_ScheduleNexusOperationCommandAttributes'_unknownFields = y__})
  defMessage
    = ScheduleNexusOperationCommandAttributes'_constructor
        {_ScheduleNexusOperationCommandAttributes'endpoint = Data.ProtoLens.fieldDefault,
         _ScheduleNexusOperationCommandAttributes'service = Data.ProtoLens.fieldDefault,
         _ScheduleNexusOperationCommandAttributes'operation = Data.ProtoLens.fieldDefault,
         _ScheduleNexusOperationCommandAttributes'input = Prelude.Nothing,
         _ScheduleNexusOperationCommandAttributes'scheduleToCloseTimeout = Prelude.Nothing,
         _ScheduleNexusOperationCommandAttributes'nexusHeader = Data.Map.empty,
         _ScheduleNexusOperationCommandAttributes'scheduleToStartTimeout = Prelude.Nothing,
         _ScheduleNexusOperationCommandAttributes'startToCloseTimeout = Prelude.Nothing,
         _ScheduleNexusOperationCommandAttributes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScheduleNexusOperationCommandAttributes
          -> Data.ProtoLens.Encoding.Bytes.Parser ScheduleNexusOperationCommandAttributes
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
                                       "endpoint"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endpoint") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "service"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"service") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operation") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "input"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"input") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToCloseTimeout") y x)
                        50
                          -> do !(entry :: ScheduleNexusOperationCommandAttributes'NexusHeaderEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
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
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_start_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToStartTimeout") y x)
                        66
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
          (do loop Data.ProtoLens.defMessage)
          "ScheduleNexusOperationCommandAttributes"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"endpoint") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"service") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operation") _x
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
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'input") _x
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
                                (Data.ProtoLens.Field.field @"maybe'scheduleToCloseTimeout") _x
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
                                                      ScheduleNexusOperationCommandAttributes'NexusHeaderEntry)))))
                                  (Data.Map.toList
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"nexusHeader") _x))))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'scheduleToStartTimeout")
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
                                         (Data.ProtoLens.Field.field @"maybe'startToCloseTimeout")
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
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData ScheduleNexusOperationCommandAttributes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScheduleNexusOperationCommandAttributes'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScheduleNexusOperationCommandAttributes'endpoint x__)
                (Control.DeepSeq.deepseq
                   (_ScheduleNexusOperationCommandAttributes'service x__)
                   (Control.DeepSeq.deepseq
                      (_ScheduleNexusOperationCommandAttributes'operation x__)
                      (Control.DeepSeq.deepseq
                         (_ScheduleNexusOperationCommandAttributes'input x__)
                         (Control.DeepSeq.deepseq
                            (_ScheduleNexusOperationCommandAttributes'scheduleToCloseTimeout
                               x__)
                            (Control.DeepSeq.deepseq
                               (_ScheduleNexusOperationCommandAttributes'nexusHeader x__)
                               (Control.DeepSeq.deepseq
                                  (_ScheduleNexusOperationCommandAttributes'scheduleToStartTimeout
                                     x__)
                                  (Control.DeepSeq.deepseq
                                     (_ScheduleNexusOperationCommandAttributes'startToCloseTimeout
                                        x__)
                                     ()))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.key' @:: Lens' ScheduleNexusOperationCommandAttributes'NexusHeaderEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.value' @:: Lens' ScheduleNexusOperationCommandAttributes'NexusHeaderEntry Data.Text.Text@ -}
data ScheduleNexusOperationCommandAttributes'NexusHeaderEntry
  = ScheduleNexusOperationCommandAttributes'NexusHeaderEntry'_constructor {_ScheduleNexusOperationCommandAttributes'NexusHeaderEntry'key :: !Data.Text.Text,
                                                                           _ScheduleNexusOperationCommandAttributes'NexusHeaderEntry'value :: !Data.Text.Text,
                                                                           _ScheduleNexusOperationCommandAttributes'NexusHeaderEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScheduleNexusOperationCommandAttributes'NexusHeaderEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScheduleNexusOperationCommandAttributes'NexusHeaderEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperationCommandAttributes'NexusHeaderEntry'key
           (\ x__ y__
              -> x__
                   {_ScheduleNexusOperationCommandAttributes'NexusHeaderEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleNexusOperationCommandAttributes'NexusHeaderEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleNexusOperationCommandAttributes'NexusHeaderEntry'value
           (\ x__ y__
              -> x__
                   {_ScheduleNexusOperationCommandAttributes'NexusHeaderEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScheduleNexusOperationCommandAttributes'NexusHeaderEntry where
  messageName _
    = Data.Text.pack
        "temporal.api.command.v1.ScheduleNexusOperationCommandAttributes.NexusHeaderEntry"
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
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperationCommandAttributes'NexusHeaderEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor ScheduleNexusOperationCommandAttributes'NexusHeaderEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScheduleNexusOperationCommandAttributes'NexusHeaderEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_ScheduleNexusOperationCommandAttributes'NexusHeaderEntry'_unknownFields = y__})
  defMessage
    = ScheduleNexusOperationCommandAttributes'NexusHeaderEntry'_constructor
        {_ScheduleNexusOperationCommandAttributes'NexusHeaderEntry'key = Data.ProtoLens.fieldDefault,
         _ScheduleNexusOperationCommandAttributes'NexusHeaderEntry'value = Data.ProtoLens.fieldDefault,
         _ScheduleNexusOperationCommandAttributes'NexusHeaderEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScheduleNexusOperationCommandAttributes'NexusHeaderEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser ScheduleNexusOperationCommandAttributes'NexusHeaderEntry
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
instance Control.DeepSeq.NFData ScheduleNexusOperationCommandAttributes'NexusHeaderEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScheduleNexusOperationCommandAttributes'NexusHeaderEntry'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_ScheduleNexusOperationCommandAttributes'NexusHeaderEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_ScheduleNexusOperationCommandAttributes'NexusHeaderEntry'value
                      x__)
                   ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.namespace' @:: Lens' SignalExternalWorkflowExecutionCommandAttributes Data.Text.Text@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.execution' @:: Lens' SignalExternalWorkflowExecutionCommandAttributes Proto.Temporal.Api.Common.V1.Message.WorkflowExecution@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'execution' @:: Lens' SignalExternalWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowExecution)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.signalName' @:: Lens' SignalExternalWorkflowExecutionCommandAttributes Data.Text.Text@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.input' @:: Lens' SignalExternalWorkflowExecutionCommandAttributes Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'input' @:: Lens' SignalExternalWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.control' @:: Lens' SignalExternalWorkflowExecutionCommandAttributes Data.Text.Text@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.childWorkflowOnly' @:: Lens' SignalExternalWorkflowExecutionCommandAttributes Prelude.Bool@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.header' @:: Lens' SignalExternalWorkflowExecutionCommandAttributes Proto.Temporal.Api.Common.V1.Message.Header@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'header' @:: Lens' SignalExternalWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header)@ -}
data SignalExternalWorkflowExecutionCommandAttributes
  = SignalExternalWorkflowExecutionCommandAttributes'_constructor {_SignalExternalWorkflowExecutionCommandAttributes'namespace :: !Data.Text.Text,
                                                                   _SignalExternalWorkflowExecutionCommandAttributes'execution :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowExecution),
                                                                   _SignalExternalWorkflowExecutionCommandAttributes'signalName :: !Data.Text.Text,
                                                                   _SignalExternalWorkflowExecutionCommandAttributes'input :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads),
                                                                   _SignalExternalWorkflowExecutionCommandAttributes'control :: !Data.Text.Text,
                                                                   _SignalExternalWorkflowExecutionCommandAttributes'childWorkflowOnly :: !Prelude.Bool,
                                                                   _SignalExternalWorkflowExecutionCommandAttributes'header :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header),
                                                                   _SignalExternalWorkflowExecutionCommandAttributes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SignalExternalWorkflowExecutionCommandAttributes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecutionCommandAttributes "namespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecutionCommandAttributes'namespace
           (\ x__ y__
              -> x__
                   {_SignalExternalWorkflowExecutionCommandAttributes'namespace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecutionCommandAttributes "execution" Proto.Temporal.Api.Common.V1.Message.WorkflowExecution where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecutionCommandAttributes'execution
           (\ x__ y__
              -> x__
                   {_SignalExternalWorkflowExecutionCommandAttributes'execution = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecutionCommandAttributes "maybe'execution" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecutionCommandAttributes'execution
           (\ x__ y__
              -> x__
                   {_SignalExternalWorkflowExecutionCommandAttributes'execution = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecutionCommandAttributes "signalName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecutionCommandAttributes'signalName
           (\ x__ y__
              -> x__
                   {_SignalExternalWorkflowExecutionCommandAttributes'signalName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecutionCommandAttributes "input" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecutionCommandAttributes'input
           (\ x__ y__
              -> x__
                   {_SignalExternalWorkflowExecutionCommandAttributes'input = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecutionCommandAttributes "maybe'input" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecutionCommandAttributes'input
           (\ x__ y__
              -> x__
                   {_SignalExternalWorkflowExecutionCommandAttributes'input = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecutionCommandAttributes "control" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecutionCommandAttributes'control
           (\ x__ y__
              -> x__
                   {_SignalExternalWorkflowExecutionCommandAttributes'control = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecutionCommandAttributes "childWorkflowOnly" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecutionCommandAttributes'childWorkflowOnly
           (\ x__ y__
              -> x__
                   {_SignalExternalWorkflowExecutionCommandAttributes'childWorkflowOnly = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecutionCommandAttributes "header" Proto.Temporal.Api.Common.V1.Message.Header where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecutionCommandAttributes'header
           (\ x__ y__
              -> x__
                   {_SignalExternalWorkflowExecutionCommandAttributes'header = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SignalExternalWorkflowExecutionCommandAttributes "maybe'header" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalExternalWorkflowExecutionCommandAttributes'header
           (\ x__ y__
              -> x__
                   {_SignalExternalWorkflowExecutionCommandAttributes'header = y__}))
        Prelude.id
instance Data.ProtoLens.Message SignalExternalWorkflowExecutionCommandAttributes where
  messageName _
    = Data.Text.pack
        "temporal.api.command.v1.SignalExternalWorkflowExecutionCommandAttributes"
  packedMessageDescriptor _
    = "\n\
      \0SignalExternalWorkflowExecutionCommandAttributes\DC2 \n\
      \\tnamespace\CAN\SOH \SOH(\tR\tnamespaceB\STX\CAN\SOH\DC2G\n\
      \\texecution\CAN\STX \SOH(\v2).temporal.api.common.v1.WorkflowExecutionR\texecution\DC2\US\n\
      \\vsignal_name\CAN\ETX \SOH(\tR\n\
      \signalName\DC26\n\
      \\ENQinput\CAN\EOT \SOH(\v2 .temporal.api.common.v1.PayloadsR\ENQinput\DC2\FS\n\
      \\acontrol\CAN\ENQ \SOH(\tR\acontrolB\STX\CAN\SOH\DC2.\n\
      \\DC3child_workflow_only\CAN\ACK \SOH(\bR\DC1childWorkflowOnly\DC26\n\
      \\ACKheader\CAN\a \SOH(\v2\RS.temporal.api.common.v1.HeaderR\ACKheader"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        namespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "namespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"namespace")) ::
              Data.ProtoLens.FieldDescriptor SignalExternalWorkflowExecutionCommandAttributes
        execution__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "execution"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.WorkflowExecution)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'execution")) ::
              Data.ProtoLens.FieldDescriptor SignalExternalWorkflowExecutionCommandAttributes
        signalName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signal_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"signalName")) ::
              Data.ProtoLens.FieldDescriptor SignalExternalWorkflowExecutionCommandAttributes
        input__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "input"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payloads)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'input")) ::
              Data.ProtoLens.FieldDescriptor SignalExternalWorkflowExecutionCommandAttributes
        control__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "control"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"control")) ::
              Data.ProtoLens.FieldDescriptor SignalExternalWorkflowExecutionCommandAttributes
        childWorkflowOnly__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "child_workflow_only"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"childWorkflowOnly")) ::
              Data.ProtoLens.FieldDescriptor SignalExternalWorkflowExecutionCommandAttributes
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Header)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'header")) ::
              Data.ProtoLens.FieldDescriptor SignalExternalWorkflowExecutionCommandAttributes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, namespace__field_descriptor),
           (Data.ProtoLens.Tag 2, execution__field_descriptor),
           (Data.ProtoLens.Tag 3, signalName__field_descriptor),
           (Data.ProtoLens.Tag 4, input__field_descriptor),
           (Data.ProtoLens.Tag 5, control__field_descriptor),
           (Data.ProtoLens.Tag 6, childWorkflowOnly__field_descriptor),
           (Data.ProtoLens.Tag 7, header__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SignalExternalWorkflowExecutionCommandAttributes'_unknownFields
        (\ x__ y__
           -> x__
                {_SignalExternalWorkflowExecutionCommandAttributes'_unknownFields = y__})
  defMessage
    = SignalExternalWorkflowExecutionCommandAttributes'_constructor
        {_SignalExternalWorkflowExecutionCommandAttributes'namespace = Data.ProtoLens.fieldDefault,
         _SignalExternalWorkflowExecutionCommandAttributes'execution = Prelude.Nothing,
         _SignalExternalWorkflowExecutionCommandAttributes'signalName = Data.ProtoLens.fieldDefault,
         _SignalExternalWorkflowExecutionCommandAttributes'input = Prelude.Nothing,
         _SignalExternalWorkflowExecutionCommandAttributes'control = Data.ProtoLens.fieldDefault,
         _SignalExternalWorkflowExecutionCommandAttributes'childWorkflowOnly = Data.ProtoLens.fieldDefault,
         _SignalExternalWorkflowExecutionCommandAttributes'header = Prelude.Nothing,
         _SignalExternalWorkflowExecutionCommandAttributes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SignalExternalWorkflowExecutionCommandAttributes
          -> Data.ProtoLens.Encoding.Bytes.Parser SignalExternalWorkflowExecutionCommandAttributes
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
                                       "namespace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"namespace") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "execution"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"execution") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "signal_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"signalName") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "input"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"input") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "control"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"control") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "child_workflow_only"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"childWorkflowOnly") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "header"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"header") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "SignalExternalWorkflowExecutionCommandAttributes"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"namespace") _x
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'execution") _x
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
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"signalName") _x
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
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'input") _x
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
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"control") _x
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
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"childWorkflowOnly") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (\ b -> if b then 1 else 0) _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'header") _x
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
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData SignalExternalWorkflowExecutionCommandAttributes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SignalExternalWorkflowExecutionCommandAttributes'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_SignalExternalWorkflowExecutionCommandAttributes'namespace x__)
                (Control.DeepSeq.deepseq
                   (_SignalExternalWorkflowExecutionCommandAttributes'execution x__)
                   (Control.DeepSeq.deepseq
                      (_SignalExternalWorkflowExecutionCommandAttributes'signalName x__)
                      (Control.DeepSeq.deepseq
                         (_SignalExternalWorkflowExecutionCommandAttributes'input x__)
                         (Control.DeepSeq.deepseq
                            (_SignalExternalWorkflowExecutionCommandAttributes'control x__)
                            (Control.DeepSeq.deepseq
                               (_SignalExternalWorkflowExecutionCommandAttributes'childWorkflowOnly
                                  x__)
                               (Control.DeepSeq.deepseq
                                  (_SignalExternalWorkflowExecutionCommandAttributes'header x__)
                                  ())))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.namespace' @:: Lens' StartChildWorkflowExecutionCommandAttributes Data.Text.Text@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.workflowId' @:: Lens' StartChildWorkflowExecutionCommandAttributes Data.Text.Text@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.workflowType' @:: Lens' StartChildWorkflowExecutionCommandAttributes Proto.Temporal.Api.Common.V1.Message.WorkflowType@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'workflowType' @:: Lens' StartChildWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowType)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.taskQueue' @:: Lens' StartChildWorkflowExecutionCommandAttributes Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'taskQueue' @:: Lens' StartChildWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.input' @:: Lens' StartChildWorkflowExecutionCommandAttributes Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'input' @:: Lens' StartChildWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.workflowExecutionTimeout' @:: Lens' StartChildWorkflowExecutionCommandAttributes Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'workflowExecutionTimeout' @:: Lens' StartChildWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.workflowRunTimeout' @:: Lens' StartChildWorkflowExecutionCommandAttributes Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'workflowRunTimeout' @:: Lens' StartChildWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.workflowTaskTimeout' @:: Lens' StartChildWorkflowExecutionCommandAttributes Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'workflowTaskTimeout' @:: Lens' StartChildWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.parentClosePolicy' @:: Lens' StartChildWorkflowExecutionCommandAttributes Proto.Temporal.Api.Enums.V1.Workflow.ParentClosePolicy@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.control' @:: Lens' StartChildWorkflowExecutionCommandAttributes Data.Text.Text@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.workflowIdReusePolicy' @:: Lens' StartChildWorkflowExecutionCommandAttributes Proto.Temporal.Api.Enums.V1.Workflow.WorkflowIdReusePolicy@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.retryPolicy' @:: Lens' StartChildWorkflowExecutionCommandAttributes Proto.Temporal.Api.Common.V1.Message.RetryPolicy@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'retryPolicy' @:: Lens' StartChildWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.cronSchedule' @:: Lens' StartChildWorkflowExecutionCommandAttributes Data.Text.Text@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.header' @:: Lens' StartChildWorkflowExecutionCommandAttributes Proto.Temporal.Api.Common.V1.Message.Header@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'header' @:: Lens' StartChildWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.memo' @:: Lens' StartChildWorkflowExecutionCommandAttributes Proto.Temporal.Api.Common.V1.Message.Memo@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'memo' @:: Lens' StartChildWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Memo)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.searchAttributes' @:: Lens' StartChildWorkflowExecutionCommandAttributes Proto.Temporal.Api.Common.V1.Message.SearchAttributes@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'searchAttributes' @:: Lens' StartChildWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.inheritBuildId' @:: Lens' StartChildWorkflowExecutionCommandAttributes Prelude.Bool@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.priority' @:: Lens' StartChildWorkflowExecutionCommandAttributes Proto.Temporal.Api.Common.V1.Message.Priority@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'priority' @:: Lens' StartChildWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority)@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.versioningOverride' @:: Lens' StartChildWorkflowExecutionCommandAttributes Proto.Temporal.Api.Workflow.V1.Message.VersioningOverride@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'versioningOverride' @:: Lens' StartChildWorkflowExecutionCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Workflow.V1.Message.VersioningOverride)@ -}
data StartChildWorkflowExecutionCommandAttributes
  = StartChildWorkflowExecutionCommandAttributes'_constructor {_StartChildWorkflowExecutionCommandAttributes'namespace :: !Data.Text.Text,
                                                               _StartChildWorkflowExecutionCommandAttributes'workflowId :: !Data.Text.Text,
                                                               _StartChildWorkflowExecutionCommandAttributes'workflowType :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowType),
                                                               _StartChildWorkflowExecutionCommandAttributes'taskQueue :: !(Prelude.Maybe Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue),
                                                               _StartChildWorkflowExecutionCommandAttributes'input :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads),
                                                               _StartChildWorkflowExecutionCommandAttributes'workflowExecutionTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                               _StartChildWorkflowExecutionCommandAttributes'workflowRunTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                               _StartChildWorkflowExecutionCommandAttributes'workflowTaskTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                               _StartChildWorkflowExecutionCommandAttributes'parentClosePolicy :: !Proto.Temporal.Api.Enums.V1.Workflow.ParentClosePolicy,
                                                               _StartChildWorkflowExecutionCommandAttributes'control :: !Data.Text.Text,
                                                               _StartChildWorkflowExecutionCommandAttributes'workflowIdReusePolicy :: !Proto.Temporal.Api.Enums.V1.Workflow.WorkflowIdReusePolicy,
                                                               _StartChildWorkflowExecutionCommandAttributes'retryPolicy :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy),
                                                               _StartChildWorkflowExecutionCommandAttributes'cronSchedule :: !Data.Text.Text,
                                                               _StartChildWorkflowExecutionCommandAttributes'header :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header),
                                                               _StartChildWorkflowExecutionCommandAttributes'memo :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Memo),
                                                               _StartChildWorkflowExecutionCommandAttributes'searchAttributes :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes),
                                                               _StartChildWorkflowExecutionCommandAttributes'inheritBuildId :: !Prelude.Bool,
                                                               _StartChildWorkflowExecutionCommandAttributes'priority :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority),
                                                               _StartChildWorkflowExecutionCommandAttributes'versioningOverride :: !(Prelude.Maybe Proto.Temporal.Api.Workflow.V1.Message.VersioningOverride),
                                                               _StartChildWorkflowExecutionCommandAttributes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StartChildWorkflowExecutionCommandAttributes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "namespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'namespace
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'namespace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "workflowId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'workflowId
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'workflowId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "workflowType" Proto.Temporal.Api.Common.V1.Message.WorkflowType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'workflowType
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'workflowType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "maybe'workflowType" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'workflowType
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'workflowType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "taskQueue" Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'taskQueue
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'taskQueue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "maybe'taskQueue" (Prelude.Maybe Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'taskQueue
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'taskQueue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "input" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'input
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'input = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "maybe'input" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'input
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'input = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "workflowExecutionTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'workflowExecutionTimeout
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'workflowExecutionTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "maybe'workflowExecutionTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'workflowExecutionTimeout
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'workflowExecutionTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "workflowRunTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'workflowRunTimeout
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'workflowRunTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "maybe'workflowRunTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'workflowRunTimeout
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'workflowRunTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "workflowTaskTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'workflowTaskTimeout
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'workflowTaskTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "maybe'workflowTaskTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'workflowTaskTimeout
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'workflowTaskTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "parentClosePolicy" Proto.Temporal.Api.Enums.V1.Workflow.ParentClosePolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'parentClosePolicy
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'parentClosePolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "control" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'control
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'control = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "workflowIdReusePolicy" Proto.Temporal.Api.Enums.V1.Workflow.WorkflowIdReusePolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'workflowIdReusePolicy
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'workflowIdReusePolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "retryPolicy" Proto.Temporal.Api.Common.V1.Message.RetryPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'retryPolicy
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'retryPolicy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "maybe'retryPolicy" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'retryPolicy
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'retryPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "cronSchedule" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'cronSchedule
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'cronSchedule = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "header" Proto.Temporal.Api.Common.V1.Message.Header where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'header
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'header = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "maybe'header" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'header
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'header = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "memo" Proto.Temporal.Api.Common.V1.Message.Memo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'memo
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecutionCommandAttributes'memo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "maybe'memo" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Memo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'memo
           (\ x__ y__
              -> x__ {_StartChildWorkflowExecutionCommandAttributes'memo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "searchAttributes" Proto.Temporal.Api.Common.V1.Message.SearchAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'searchAttributes
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'searchAttributes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "maybe'searchAttributes" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'searchAttributes
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'searchAttributes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "inheritBuildId" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'inheritBuildId
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'inheritBuildId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "priority" Proto.Temporal.Api.Common.V1.Message.Priority where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'priority
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'priority = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "maybe'priority" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'priority
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'priority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "versioningOverride" Proto.Temporal.Api.Workflow.V1.Message.VersioningOverride where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'versioningOverride
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'versioningOverride = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartChildWorkflowExecutionCommandAttributes "maybe'versioningOverride" (Prelude.Maybe Proto.Temporal.Api.Workflow.V1.Message.VersioningOverride) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartChildWorkflowExecutionCommandAttributes'versioningOverride
           (\ x__ y__
              -> x__
                   {_StartChildWorkflowExecutionCommandAttributes'versioningOverride = y__}))
        Prelude.id
instance Data.ProtoLens.Message StartChildWorkflowExecutionCommandAttributes where
  messageName _
    = Data.Text.pack
        "temporal.api.command.v1.StartChildWorkflowExecutionCommandAttributes"
  packedMessageDescriptor _
    = "\n\
      \,StartChildWorkflowExecutionCommandAttributes\DC2 \n\
      \\tnamespace\CAN\SOH \SOH(\tR\tnamespaceB\STX\CAN\SOH\DC2\US\n\
      \\vworkflow_id\CAN\STX \SOH(\tR\n\
      \workflowId\DC2I\n\
      \\rworkflow_type\CAN\ETX \SOH(\v2$.temporal.api.common.v1.WorkflowTypeR\fworkflowType\DC2C\n\
      \\n\
      \task_queue\CAN\EOT \SOH(\v2$.temporal.api.taskqueue.v1.TaskQueueR\ttaskQueue\DC26\n\
      \\ENQinput\CAN\ENQ \SOH(\v2 .temporal.api.common.v1.PayloadsR\ENQinput\DC2W\n\
      \\SUBworkflow_execution_timeout\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\CANworkflowExecutionTimeout\DC2K\n\
      \\DC4workflow_run_timeout\CAN\a \SOH(\v2\EM.google.protobuf.DurationR\DC2workflowRunTimeout\DC2M\n\
      \\NAKworkflow_task_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\DC3workflowTaskTimeout\DC2X\n\
      \\DC3parent_close_policy\CAN\t \SOH(\SO2(.temporal.api.enums.v1.ParentClosePolicyR\DC1parentClosePolicy\DC2\CAN\n\
      \\acontrol\CAN\n\
      \ \SOH(\tR\acontrol\DC2e\n\
      \\CANworkflow_id_reuse_policy\CAN\v \SOH(\SO2,.temporal.api.enums.v1.WorkflowIdReusePolicyR\NAKworkflowIdReusePolicy\DC2F\n\
      \\fretry_policy\CAN\f \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2#\n\
      \\rcron_schedule\CAN\r \SOH(\tR\fcronSchedule\DC26\n\
      \\ACKheader\CAN\SO \SOH(\v2\RS.temporal.api.common.v1.HeaderR\ACKheader\DC20\n\
      \\EOTmemo\CAN\SI \SOH(\v2\FS.temporal.api.common.v1.MemoR\EOTmemo\DC2U\n\
      \\DC1search_attributes\CAN\DLE \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC2,\n\
      \\DLEinherit_build_id\CAN\DC1 \SOH(\bR\SOinheritBuildIdB\STX\CAN\SOH\DC2<\n\
      \\bpriority\CAN\DC2 \SOH(\v2 .temporal.api.common.v1.PriorityR\bpriority\DC2]\n\
      \\DC3versioning_override\CAN\DC3 \SOH(\v2,.temporal.api.workflow.v1.VersioningOverrideR\DC2versioningOverride"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        namespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "namespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"namespace")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecutionCommandAttributes
        workflowId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workflowId")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecutionCommandAttributes
        workflowType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.WorkflowType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowType")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecutionCommandAttributes
        taskQueue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'taskQueue")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecutionCommandAttributes
        input__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "input"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payloads)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'input")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecutionCommandAttributes
        workflowExecutionTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_execution_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowExecutionTimeout")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecutionCommandAttributes
        workflowRunTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_run_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowRunTimeout")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecutionCommandAttributes
        workflowTaskTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_task_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowTaskTimeout")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecutionCommandAttributes
        parentClosePolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "parent_close_policy"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Workflow.ParentClosePolicy)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"parentClosePolicy")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecutionCommandAttributes
        control__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "control"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"control")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecutionCommandAttributes
        workflowIdReusePolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_id_reuse_policy"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Workflow.WorkflowIdReusePolicy)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workflowIdReusePolicy")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecutionCommandAttributes
        retryPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.RetryPolicy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'retryPolicy")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecutionCommandAttributes
        cronSchedule__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cron_schedule"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"cronSchedule")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecutionCommandAttributes
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Header)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'header")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecutionCommandAttributes
        memo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "memo"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Memo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'memo")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecutionCommandAttributes
        searchAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "search_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.SearchAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'searchAttributes")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecutionCommandAttributes
        inheritBuildId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inherit_build_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"inheritBuildId")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecutionCommandAttributes
        priority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "priority"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Priority)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'priority")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecutionCommandAttributes
        versioningOverride__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "versioning_override"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Workflow.V1.Message.VersioningOverride)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'versioningOverride")) ::
              Data.ProtoLens.FieldDescriptor StartChildWorkflowExecutionCommandAttributes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, namespace__field_descriptor),
           (Data.ProtoLens.Tag 2, workflowId__field_descriptor),
           (Data.ProtoLens.Tag 3, workflowType__field_descriptor),
           (Data.ProtoLens.Tag 4, taskQueue__field_descriptor),
           (Data.ProtoLens.Tag 5, input__field_descriptor),
           (Data.ProtoLens.Tag 6, workflowExecutionTimeout__field_descriptor),
           (Data.ProtoLens.Tag 7, workflowRunTimeout__field_descriptor),
           (Data.ProtoLens.Tag 8, workflowTaskTimeout__field_descriptor),
           (Data.ProtoLens.Tag 9, parentClosePolicy__field_descriptor),
           (Data.ProtoLens.Tag 10, control__field_descriptor),
           (Data.ProtoLens.Tag 11, workflowIdReusePolicy__field_descriptor),
           (Data.ProtoLens.Tag 12, retryPolicy__field_descriptor),
           (Data.ProtoLens.Tag 13, cronSchedule__field_descriptor),
           (Data.ProtoLens.Tag 14, header__field_descriptor),
           (Data.ProtoLens.Tag 15, memo__field_descriptor),
           (Data.ProtoLens.Tag 16, searchAttributes__field_descriptor),
           (Data.ProtoLens.Tag 17, inheritBuildId__field_descriptor),
           (Data.ProtoLens.Tag 18, priority__field_descriptor),
           (Data.ProtoLens.Tag 19, versioningOverride__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StartChildWorkflowExecutionCommandAttributes'_unknownFields
        (\ x__ y__
           -> x__
                {_StartChildWorkflowExecutionCommandAttributes'_unknownFields = y__})
  defMessage
    = StartChildWorkflowExecutionCommandAttributes'_constructor
        {_StartChildWorkflowExecutionCommandAttributes'namespace = Data.ProtoLens.fieldDefault,
         _StartChildWorkflowExecutionCommandAttributes'workflowId = Data.ProtoLens.fieldDefault,
         _StartChildWorkflowExecutionCommandAttributes'workflowType = Prelude.Nothing,
         _StartChildWorkflowExecutionCommandAttributes'taskQueue = Prelude.Nothing,
         _StartChildWorkflowExecutionCommandAttributes'input = Prelude.Nothing,
         _StartChildWorkflowExecutionCommandAttributes'workflowExecutionTimeout = Prelude.Nothing,
         _StartChildWorkflowExecutionCommandAttributes'workflowRunTimeout = Prelude.Nothing,
         _StartChildWorkflowExecutionCommandAttributes'workflowTaskTimeout = Prelude.Nothing,
         _StartChildWorkflowExecutionCommandAttributes'parentClosePolicy = Data.ProtoLens.fieldDefault,
         _StartChildWorkflowExecutionCommandAttributes'control = Data.ProtoLens.fieldDefault,
         _StartChildWorkflowExecutionCommandAttributes'workflowIdReusePolicy = Data.ProtoLens.fieldDefault,
         _StartChildWorkflowExecutionCommandAttributes'retryPolicy = Prelude.Nothing,
         _StartChildWorkflowExecutionCommandAttributes'cronSchedule = Data.ProtoLens.fieldDefault,
         _StartChildWorkflowExecutionCommandAttributes'header = Prelude.Nothing,
         _StartChildWorkflowExecutionCommandAttributes'memo = Prelude.Nothing,
         _StartChildWorkflowExecutionCommandAttributes'searchAttributes = Prelude.Nothing,
         _StartChildWorkflowExecutionCommandAttributes'inheritBuildId = Data.ProtoLens.fieldDefault,
         _StartChildWorkflowExecutionCommandAttributes'priority = Prelude.Nothing,
         _StartChildWorkflowExecutionCommandAttributes'versioningOverride = Prelude.Nothing,
         _StartChildWorkflowExecutionCommandAttributes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StartChildWorkflowExecutionCommandAttributes
          -> Data.ProtoLens.Encoding.Bytes.Parser StartChildWorkflowExecutionCommandAttributes
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
                                       "namespace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"namespace") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "workflow_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"workflowId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowType") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "task_queue"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskQueue") y x)
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
                                       "workflow_execution_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowExecutionTimeout") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_run_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowRunTimeout") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_task_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowTaskTimeout") y x)
                        72
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
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "control"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"control") y x)
                        88
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
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "retry_policy"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"retryPolicy") y x)
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "cron_schedule"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cronSchedule") y x)
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "header"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"header") y x)
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "memo"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"memo") y x)
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "search_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"searchAttributes") y x)
                        136
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "inherit_build_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"inheritBuildId") y x)
                        146
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "priority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"priority") y x)
                        154
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "versioning_override"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"versioningOverride") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "StartChildWorkflowExecutionCommandAttributes"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"namespace") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"workflowId") _x
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'workflowType") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                             (Data.ProtoLens.Field.field @"maybe'taskQueue") _x
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
                                   (Data.ProtoLens.Field.field @"maybe'workflowExecutionTimeout") _x
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
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'workflowRunTimeout") _x
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
                                         (Data.ProtoLens.Field.field @"maybe'workflowTaskTimeout")
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
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"parentClosePolicy") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                              ((Prelude..)
                                                 ((Prelude..)
                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    Prelude.fromIntegral)
                                                 Prelude.fromEnum _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"control") _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                 ((Prelude..)
                                                    (\ bs
                                                       -> (Data.Monoid.<>)
                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                               (Prelude.fromIntegral
                                                                  (Data.ByteString.length bs)))
                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                               bs))
                                                    Data.Text.Encoding.encodeUtf8 _v))
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
                                                        @"maybe'retryPolicy")
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
                                                             @"cronSchedule")
                                                          _x
                                                  in
                                                    if (Prelude.==)
                                                         _v Data.ProtoLens.fieldDefault then
                                                        Data.Monoid.mempty
                                                    else
                                                        (Data.Monoid.<>)
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
                                                             Data.Text.Encoding.encodeUtf8 _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'header")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
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
                                                                 Data.ProtoLens.encodeMessage _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'memo")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
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
                                                                    _v))
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
                                                          ((Data.Monoid.<>)
                                                             (let
                                                                _v
                                                                  = Lens.Family2.view
                                                                      (Data.ProtoLens.Field.field
                                                                         @"inheritBuildId")
                                                                      _x
                                                              in
                                                                if (Prelude.==)
                                                                     _v
                                                                     Data.ProtoLens.fieldDefault then
                                                                    Data.Monoid.mempty
                                                                else
                                                                    (Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         136)
                                                                      ((Prelude..)
                                                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         (\ b -> if b then 1 else 0)
                                                                         _v))
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
                                                                             146)
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
                                                                                154)
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
                                                                         _x))))))))))))))))))))
instance Control.DeepSeq.NFData StartChildWorkflowExecutionCommandAttributes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StartChildWorkflowExecutionCommandAttributes'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StartChildWorkflowExecutionCommandAttributes'namespace x__)
                (Control.DeepSeq.deepseq
                   (_StartChildWorkflowExecutionCommandAttributes'workflowId x__)
                   (Control.DeepSeq.deepseq
                      (_StartChildWorkflowExecutionCommandAttributes'workflowType x__)
                      (Control.DeepSeq.deepseq
                         (_StartChildWorkflowExecutionCommandAttributes'taskQueue x__)
                         (Control.DeepSeq.deepseq
                            (_StartChildWorkflowExecutionCommandAttributes'input x__)
                            (Control.DeepSeq.deepseq
                               (_StartChildWorkflowExecutionCommandAttributes'workflowExecutionTimeout
                                  x__)
                               (Control.DeepSeq.deepseq
                                  (_StartChildWorkflowExecutionCommandAttributes'workflowRunTimeout
                                     x__)
                                  (Control.DeepSeq.deepseq
                                     (_StartChildWorkflowExecutionCommandAttributes'workflowTaskTimeout
                                        x__)
                                     (Control.DeepSeq.deepseq
                                        (_StartChildWorkflowExecutionCommandAttributes'parentClosePolicy
                                           x__)
                                        (Control.DeepSeq.deepseq
                                           (_StartChildWorkflowExecutionCommandAttributes'control
                                              x__)
                                           (Control.DeepSeq.deepseq
                                              (_StartChildWorkflowExecutionCommandAttributes'workflowIdReusePolicy
                                                 x__)
                                              (Control.DeepSeq.deepseq
                                                 (_StartChildWorkflowExecutionCommandAttributes'retryPolicy
                                                    x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_StartChildWorkflowExecutionCommandAttributes'cronSchedule
                                                       x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_StartChildWorkflowExecutionCommandAttributes'header
                                                          x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_StartChildWorkflowExecutionCommandAttributes'memo
                                                             x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_StartChildWorkflowExecutionCommandAttributes'searchAttributes
                                                                x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_StartChildWorkflowExecutionCommandAttributes'inheritBuildId
                                                                   x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_StartChildWorkflowExecutionCommandAttributes'priority
                                                                      x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_StartChildWorkflowExecutionCommandAttributes'versioningOverride
                                                                         x__)
                                                                      ())))))))))))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.timerId' @:: Lens' StartTimerCommandAttributes Data.Text.Text@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.startToFireTimeout' @:: Lens' StartTimerCommandAttributes Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'startToFireTimeout' @:: Lens' StartTimerCommandAttributes (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data StartTimerCommandAttributes
  = StartTimerCommandAttributes'_constructor {_StartTimerCommandAttributes'timerId :: !Data.Text.Text,
                                              _StartTimerCommandAttributes'startToFireTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                              _StartTimerCommandAttributes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StartTimerCommandAttributes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StartTimerCommandAttributes "timerId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartTimerCommandAttributes'timerId
           (\ x__ y__ -> x__ {_StartTimerCommandAttributes'timerId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartTimerCommandAttributes "startToFireTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartTimerCommandAttributes'startToFireTimeout
           (\ x__ y__
              -> x__ {_StartTimerCommandAttributes'startToFireTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartTimerCommandAttributes "maybe'startToFireTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartTimerCommandAttributes'startToFireTimeout
           (\ x__ y__
              -> x__ {_StartTimerCommandAttributes'startToFireTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Message StartTimerCommandAttributes where
  messageName _
    = Data.Text.pack
        "temporal.api.command.v1.StartTimerCommandAttributes"
  packedMessageDescriptor _
    = "\n\
      \\ESCStartTimerCommandAttributes\DC2\EM\n\
      \\btimer_id\CAN\SOH \SOH(\tR\atimerId\DC2L\n\
      \\NAKstart_to_fire_timeout\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\DC2startToFireTimeout"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        timerId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timer_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"timerId")) ::
              Data.ProtoLens.FieldDescriptor StartTimerCommandAttributes
        startToFireTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_to_fire_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startToFireTimeout")) ::
              Data.ProtoLens.FieldDescriptor StartTimerCommandAttributes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, timerId__field_descriptor),
           (Data.ProtoLens.Tag 2, startToFireTimeout__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StartTimerCommandAttributes'_unknownFields
        (\ x__ y__
           -> x__ {_StartTimerCommandAttributes'_unknownFields = y__})
  defMessage
    = StartTimerCommandAttributes'_constructor
        {_StartTimerCommandAttributes'timerId = Data.ProtoLens.fieldDefault,
         _StartTimerCommandAttributes'startToFireTimeout = Prelude.Nothing,
         _StartTimerCommandAttributes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StartTimerCommandAttributes
          -> Data.ProtoLens.Encoding.Bytes.Parser StartTimerCommandAttributes
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
                                       "timer_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"timerId") y x)
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
          (do loop Data.ProtoLens.defMessage) "StartTimerCommandAttributes"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"timerId") _x
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
instance Control.DeepSeq.NFData StartTimerCommandAttributes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StartTimerCommandAttributes'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StartTimerCommandAttributes'timerId x__)
                (Control.DeepSeq.deepseq
                   (_StartTimerCommandAttributes'startToFireTimeout x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.searchAttributes' @:: Lens' UpsertWorkflowSearchAttributesCommandAttributes Proto.Temporal.Api.Common.V1.Message.SearchAttributes@
         * 'Proto.Temporal.Api.Command.V1.Message_Fields.maybe'searchAttributes' @:: Lens' UpsertWorkflowSearchAttributesCommandAttributes (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes)@ -}
data UpsertWorkflowSearchAttributesCommandAttributes
  = UpsertWorkflowSearchAttributesCommandAttributes'_constructor {_UpsertWorkflowSearchAttributesCommandAttributes'searchAttributes :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes),
                                                                  _UpsertWorkflowSearchAttributesCommandAttributes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpsertWorkflowSearchAttributesCommandAttributes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UpsertWorkflowSearchAttributesCommandAttributes "searchAttributes" Proto.Temporal.Api.Common.V1.Message.SearchAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpsertWorkflowSearchAttributesCommandAttributes'searchAttributes
           (\ x__ y__
              -> x__
                   {_UpsertWorkflowSearchAttributesCommandAttributes'searchAttributes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpsertWorkflowSearchAttributesCommandAttributes "maybe'searchAttributes" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpsertWorkflowSearchAttributesCommandAttributes'searchAttributes
           (\ x__ y__
              -> x__
                   {_UpsertWorkflowSearchAttributesCommandAttributes'searchAttributes = y__}))
        Prelude.id
instance Data.ProtoLens.Message UpsertWorkflowSearchAttributesCommandAttributes where
  messageName _
    = Data.Text.pack
        "temporal.api.command.v1.UpsertWorkflowSearchAttributesCommandAttributes"
  packedMessageDescriptor _
    = "\n\
      \/UpsertWorkflowSearchAttributesCommandAttributes\DC2U\n\
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
              Data.ProtoLens.FieldDescriptor UpsertWorkflowSearchAttributesCommandAttributes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, searchAttributes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpsertWorkflowSearchAttributesCommandAttributes'_unknownFields
        (\ x__ y__
           -> x__
                {_UpsertWorkflowSearchAttributesCommandAttributes'_unknownFields = y__})
  defMessage
    = UpsertWorkflowSearchAttributesCommandAttributes'_constructor
        {_UpsertWorkflowSearchAttributesCommandAttributes'searchAttributes = Prelude.Nothing,
         _UpsertWorkflowSearchAttributesCommandAttributes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UpsertWorkflowSearchAttributesCommandAttributes
          -> Data.ProtoLens.Encoding.Bytes.Parser UpsertWorkflowSearchAttributesCommandAttributes
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
          "UpsertWorkflowSearchAttributesCommandAttributes"
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
instance Control.DeepSeq.NFData UpsertWorkflowSearchAttributesCommandAttributes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UpsertWorkflowSearchAttributesCommandAttributes'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_UpsertWorkflowSearchAttributesCommandAttributes'searchAttributes
                   x__)
                ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \%temporal/api/command/v1/message.proto\DC2\ETBtemporal.api.command.v1\SUB\RSgoogle/protobuf/duration.proto\SUB$temporal/api/enums/v1/workflow.proto\SUB(temporal/api/enums/v1/command_type.proto\SUB$temporal/api/common/v1/message.proto\SUB%temporal/api/failure/v1/message.proto\SUB'temporal/api/taskqueue/v1/message.proto\SUB&temporal/api/workflow/v1/message.proto\SUB'temporal/api/sdk/v1/user_metadata.proto\SUB,temporal/api/sdk/v1/event_group_marker.proto\"\131\a\n\
    \%ScheduleActivityTaskCommandAttributes\DC2\US\n\
    \\vactivity_id\CAN\SOH \SOH(\tR\n\
    \activityId\DC2I\n\
    \\ractivity_type\CAN\STX \SOH(\v2$.temporal.api.common.v1.ActivityTypeR\factivityType\DC2C\n\
    \\n\
    \task_queue\CAN\EOT \SOH(\v2$.temporal.api.taskqueue.v1.TaskQueueR\ttaskQueue\DC26\n\
    \\ACKheader\CAN\ENQ \SOH(\v2\RS.temporal.api.common.v1.HeaderR\ACKheader\DC26\n\
    \\ENQinput\CAN\ACK \SOH(\v2 .temporal.api.common.v1.PayloadsR\ENQinput\DC2T\n\
    \\EMschedule_to_close_timeout\CAN\a \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2T\n\
    \\EMschedule_to_start_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout\DC2N\n\
    \\SYNstart_to_close_timeout\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\DC2F\n\
    \\DC1heartbeat_timeout\CAN\n\
    \ \SOH(\v2\EM.google.protobuf.DurationR\DLEheartbeatTimeout\DC2F\n\
    \\fretry_policy\CAN\v \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC26\n\
    \\ETBrequest_eager_execution\CAN\f \SOH(\bR\NAKrequestEagerExecution\DC21\n\
    \\NAKuse_workflow_build_id\CAN\r \SOH(\bR\DC2useWorkflowBuildId\DC2<\n\
    \\bpriority\CAN\SO \SOH(\v2 .temporal.api.common.v1.PriorityR\bpriorityJ\EOT\b\ETX\DLE\EOT\"Z\n\
    \*RequestCancelActivityTaskCommandAttributes\DC2,\n\
    \\DC2scheduled_event_id\CAN\SOH \SOH(\ETXR\DLEscheduledEventId\"\134\SOH\n\
    \\ESCStartTimerCommandAttributes\DC2\EM\n\
    \\btimer_id\CAN\SOH \SOH(\tR\atimerId\DC2L\n\
    \\NAKstart_to_fire_timeout\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\DC2startToFireTimeout\"f\n\
    \*CompleteWorkflowExecutionCommandAttributes\DC28\n\
    \\ACKresult\CAN\SOH \SOH(\v2 .temporal.api.common.v1.PayloadsR\ACKresult\"d\n\
    \&FailWorkflowExecutionCommandAttributes\DC2:\n\
    \\afailure\CAN\SOH \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure\"9\n\
    \\FSCancelTimerCommandAttributes\DC2\EM\n\
    \\btimer_id\CAN\SOH \SOH(\tR\atimerId\"f\n\
    \(CancelWorkflowExecutionCommandAttributes\DC2:\n\
    \\adetails\CAN\SOH \SOH(\v2 .temporal.api.common.v1.PayloadsR\adetails\"\249\SOH\n\
    \7RequestCancelExternalWorkflowExecutionCommandAttributes\DC2 \n\
    \\tnamespace\CAN\SOH \SOH(\tR\tnamespaceB\STX\CAN\SOH\DC2\US\n\
    \\vworkflow_id\CAN\STX \SOH(\tR\n\
    \workflowId\DC2\NAK\n\
    \\ACKrun_id\CAN\ETX \SOH(\tR\ENQrunId\DC2\FS\n\
    \\acontrol\CAN\EOT \SOH(\tR\acontrolB\STX\CAN\SOH\DC2.\n\
    \\DC3child_workflow_only\CAN\ENQ \SOH(\bR\DC1childWorkflowOnly\DC2\SYN\n\
    \\ACKreason\CAN\ACK \SOH(\tR\ACKreason\"\252\STX\n\
    \0SignalExternalWorkflowExecutionCommandAttributes\DC2 \n\
    \\tnamespace\CAN\SOH \SOH(\tR\tnamespaceB\STX\CAN\SOH\DC2G\n\
    \\texecution\CAN\STX \SOH(\v2).temporal.api.common.v1.WorkflowExecutionR\texecution\DC2\US\n\
    \\vsignal_name\CAN\ETX \SOH(\tR\n\
    \signalName\DC26\n\
    \\ENQinput\CAN\EOT \SOH(\v2 .temporal.api.common.v1.PayloadsR\ENQinput\DC2\FS\n\
    \\acontrol\CAN\ENQ \SOH(\tR\acontrolB\STX\CAN\SOH\DC2.\n\
    \\DC3child_workflow_only\CAN\ACK \SOH(\bR\DC1childWorkflowOnly\DC26\n\
    \\ACKheader\CAN\a \SOH(\v2\RS.temporal.api.common.v1.HeaderR\ACKheader\"\136\SOH\n\
    \/UpsertWorkflowSearchAttributesCommandAttributes\DC2U\n\
    \\DC1search_attributes\CAN\SOH \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\"n\n\
    \)ModifyWorkflowPropertiesCommandAttributes\DC2A\n\
    \\rupserted_memo\CAN\SOH \SOH(\v2\FS.temporal.api.common.v1.MemoR\fupsertedMemo\"\241\STX\n\
    \\GSRecordMarkerCommandAttributes\DC2\US\n\
    \\vmarker_name\CAN\SOH \SOH(\tR\n\
    \markerName\DC2]\n\
    \\adetails\CAN\STX \ETX(\v2C.temporal.api.command.v1.RecordMarkerCommandAttributes.DetailsEntryR\adetails\DC26\n\
    \\ACKheader\CAN\ETX \SOH(\v2\RS.temporal.api.common.v1.HeaderR\ACKheader\DC2:\n\
    \\afailure\CAN\EOT \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure\SUB\\\n\
    \\fDetailsEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC26\n\
    \\ENQvalue\CAN\STX \SOH(\v2 .temporal.api.common.v1.PayloadsR\ENQvalue:\STX8\SOH\"\155\t\n\
    \/ContinueAsNewWorkflowExecutionCommandAttributes\DC2I\n\
    \\rworkflow_type\CAN\SOH \SOH(\v2$.temporal.api.common.v1.WorkflowTypeR\fworkflowType\DC2C\n\
    \\n\
    \task_queue\CAN\STX \SOH(\v2$.temporal.api.taskqueue.v1.TaskQueueR\ttaskQueue\DC26\n\
    \\ENQinput\CAN\ETX \SOH(\v2 .temporal.api.common.v1.PayloadsR\ENQinput\DC2K\n\
    \\DC4workflow_run_timeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC2workflowRunTimeout\DC2M\n\
    \\NAKworkflow_task_timeout\CAN\ENQ \SOH(\v2\EM.google.protobuf.DurationR\DC3workflowTaskTimeout\DC2O\n\
    \\SYNbackoff_start_interval\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\DC4backoffStartInterval\DC2F\n\
    \\fretry_policy\CAN\a \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2K\n\
    \\tinitiator\CAN\b \SOH(\SO2-.temporal.api.enums.v1.ContinueAsNewInitiatorR\tinitiator\DC2:\n\
    \\afailure\CAN\t \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure\DC2V\n\
    \\SYNlast_completion_result\CAN\n\
    \ \SOH(\v2 .temporal.api.common.v1.PayloadsR\DC4lastCompletionResult\DC2#\n\
    \\rcron_schedule\CAN\v \SOH(\tR\fcronSchedule\DC26\n\
    \\ACKheader\CAN\f \SOH(\v2\RS.temporal.api.common.v1.HeaderR\ACKheader\DC20\n\
    \\EOTmemo\CAN\r \SOH(\v2\FS.temporal.api.common.v1.MemoR\EOTmemo\DC2U\n\
    \\DC1search_attributes\CAN\SO \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC2,\n\
    \\DLEinherit_build_id\CAN\SI \SOH(\bR\SOinheritBuildIdB\STX\CAN\SOH\DC2v\n\
    \\ESCinitial_versioning_behavior\CAN\DLE \SOH(\SO26.temporal.api.enums.v1.ContinueAsNewVersioningBehaviorR\EMinitialVersioningBehavior\"\130\n\
    \\n\
    \,StartChildWorkflowExecutionCommandAttributes\DC2 \n\
    \\tnamespace\CAN\SOH \SOH(\tR\tnamespaceB\STX\CAN\SOH\DC2\US\n\
    \\vworkflow_id\CAN\STX \SOH(\tR\n\
    \workflowId\DC2I\n\
    \\rworkflow_type\CAN\ETX \SOH(\v2$.temporal.api.common.v1.WorkflowTypeR\fworkflowType\DC2C\n\
    \\n\
    \task_queue\CAN\EOT \SOH(\v2$.temporal.api.taskqueue.v1.TaskQueueR\ttaskQueue\DC26\n\
    \\ENQinput\CAN\ENQ \SOH(\v2 .temporal.api.common.v1.PayloadsR\ENQinput\DC2W\n\
    \\SUBworkflow_execution_timeout\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\CANworkflowExecutionTimeout\DC2K\n\
    \\DC4workflow_run_timeout\CAN\a \SOH(\v2\EM.google.protobuf.DurationR\DC2workflowRunTimeout\DC2M\n\
    \\NAKworkflow_task_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\DC3workflowTaskTimeout\DC2X\n\
    \\DC3parent_close_policy\CAN\t \SOH(\SO2(.temporal.api.enums.v1.ParentClosePolicyR\DC1parentClosePolicy\DC2\CAN\n\
    \\acontrol\CAN\n\
    \ \SOH(\tR\acontrol\DC2e\n\
    \\CANworkflow_id_reuse_policy\CAN\v \SOH(\SO2,.temporal.api.enums.v1.WorkflowIdReusePolicyR\NAKworkflowIdReusePolicy\DC2F\n\
    \\fretry_policy\CAN\f \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2#\n\
    \\rcron_schedule\CAN\r \SOH(\tR\fcronSchedule\DC26\n\
    \\ACKheader\CAN\SO \SOH(\v2\RS.temporal.api.common.v1.HeaderR\ACKheader\DC20\n\
    \\EOTmemo\CAN\SI \SOH(\v2\FS.temporal.api.common.v1.MemoR\EOTmemo\DC2U\n\
    \\DC1search_attributes\CAN\DLE \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC2,\n\
    \\DLEinherit_build_id\CAN\DC1 \SOH(\bR\SOinheritBuildIdB\STX\CAN\SOH\DC2<\n\
    \\bpriority\CAN\DC2 \SOH(\v2 .temporal.api.common.v1.PriorityR\bpriority\DC2]\n\
    \\DC3versioning_override\CAN\DC3 \SOH(\v2,.temporal.api.workflow.v1.VersioningOverrideR\DC2versioningOverride\"A\n\
    \ ProtocolMessageCommandAttributes\DC2\GS\n\
    \\n\
    \message_id\CAN\SOH \SOH(\tR\tmessageId\"\230\EOT\n\
    \'ScheduleNexusOperationCommandAttributes\DC2\SUB\n\
    \\bendpoint\CAN\SOH \SOH(\tR\bendpoint\DC2\CAN\n\
    \\aservice\CAN\STX \SOH(\tR\aservice\DC2\FS\n\
    \\toperation\CAN\ETX \SOH(\tR\toperation\DC25\n\
    \\ENQinput\CAN\EOT \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQinput\DC2T\n\
    \\EMschedule_to_close_timeout\CAN\ENQ \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2t\n\
    \\fnexus_header\CAN\ACK \ETX(\v2Q.temporal.api.command.v1.ScheduleNexusOperationCommandAttributes.NexusHeaderEntryR\vnexusHeader\DC2T\n\
    \\EMschedule_to_start_timeout\CAN\a \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout\DC2N\n\
    \\SYNstart_to_close_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\SUB>\n\
    \\DLENexusHeaderEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH\"\\\n\
    \,RequestCancelNexusOperationCommandAttributes\DC2,\n\
    \\DC2scheduled_event_id\CAN\SOH \SOH(\ETXR\DLEscheduledEventId\"\136\CAN\n\
    \\aCommand\DC2E\n\
    \\fcommand_type\CAN\SOH \SOH(\SO2\".temporal.api.enums.v1.CommandTypeR\vcommandType\DC2G\n\
    \\ruser_metadata\CAN\173\STX \SOH(\v2!.temporal.api.sdk.v1.UserMetadataR\fuserMetadata\DC2V\n\
    \\DC3event_group_markers\CAN\174\STX \ETX(\v2%.temporal.api.sdk.v1.EventGroupMarkerR\DC1eventGroupMarkers\DC2\154\SOH\n\
    \)schedule_activity_task_command_attributes\CAN\STX \SOH(\v2>.temporal.api.command.v1.ScheduleActivityTaskCommandAttributesH\NULR%scheduleActivityTaskCommandAttributes\DC2{\n\
    \\RSstart_timer_command_attributes\CAN\ETX \SOH(\v24.temporal.api.command.v1.StartTimerCommandAttributesH\NULR\ESCstartTimerCommandAttributes\DC2\169\SOH\n\
    \.complete_workflow_execution_command_attributes\CAN\EOT \SOH(\v2C.temporal.api.command.v1.CompleteWorkflowExecutionCommandAttributesH\NULR*completeWorkflowExecutionCommandAttributes\DC2\157\SOH\n\
    \*fail_workflow_execution_command_attributes\CAN\ENQ \SOH(\v2?.temporal.api.command.v1.FailWorkflowExecutionCommandAttributesH\NULR&failWorkflowExecutionCommandAttributes\DC2\170\SOH\n\
    \/request_cancel_activity_task_command_attributes\CAN\ACK \SOH(\v2C.temporal.api.command.v1.RequestCancelActivityTaskCommandAttributesH\NULR*requestCancelActivityTaskCommandAttributes\DC2~\n\
    \\UScancel_timer_command_attributes\CAN\a \SOH(\v25.temporal.api.command.v1.CancelTimerCommandAttributesH\NULR\FScancelTimerCommandAttributes\DC2\163\SOH\n\
    \,cancel_workflow_execution_command_attributes\CAN\b \SOH(\v2A.temporal.api.command.v1.CancelWorkflowExecutionCommandAttributesH\NULR(cancelWorkflowExecutionCommandAttributes\DC2\210\SOH\n\
    \=request_cancel_external_workflow_execution_command_attributes\CAN\t \SOH(\v2P.temporal.api.command.v1.RequestCancelExternalWorkflowExecutionCommandAttributesH\NULR7requestCancelExternalWorkflowExecutionCommandAttributes\DC2\129\SOH\n\
    \ record_marker_command_attributes\CAN\n\
    \ \SOH(\v26.temporal.api.command.v1.RecordMarkerCommandAttributesH\NULR\GSrecordMarkerCommandAttributes\DC2\186\SOH\n\
    \5continue_as_new_workflow_execution_command_attributes\CAN\v \SOH(\v2H.temporal.api.command.v1.ContinueAsNewWorkflowExecutionCommandAttributesH\NULR/continueAsNewWorkflowExecutionCommandAttributes\DC2\176\SOH\n\
    \1start_child_workflow_execution_command_attributes\CAN\f \SOH(\v2E.temporal.api.command.v1.StartChildWorkflowExecutionCommandAttributesH\NULR,startChildWorkflowExecutionCommandAttributes\DC2\188\SOH\n\
    \5signal_external_workflow_execution_command_attributes\CAN\r \SOH(\v2I.temporal.api.command.v1.SignalExternalWorkflowExecutionCommandAttributesH\NULR0signalExternalWorkflowExecutionCommandAttributes\DC2\185\SOH\n\
    \4upsert_workflow_search_attributes_command_attributes\CAN\SO \SOH(\v2H.temporal.api.command.v1.UpsertWorkflowSearchAttributesCommandAttributesH\NULR/upsertWorkflowSearchAttributesCommandAttributes\DC2\138\SOH\n\
    \#protocol_message_command_attributes\CAN\SI \SOH(\v29.temporal.api.command.v1.ProtocolMessageCommandAttributesH\NULR protocolMessageCommandAttributes\DC2\166\SOH\n\
    \-modify_workflow_properties_command_attributes\CAN\DC1 \SOH(\v2B.temporal.api.command.v1.ModifyWorkflowPropertiesCommandAttributesH\NULR)modifyWorkflowPropertiesCommandAttributes\DC2\160\SOH\n\
    \+schedule_nexus_operation_command_attributes\CAN\DC2 \SOH(\v2@.temporal.api.command.v1.ScheduleNexusOperationCommandAttributesH\NULR'scheduleNexusOperationCommandAttributes\DC2\176\SOH\n\
    \1request_cancel_nexus_operation_command_attributes\CAN\DC3 \SOH(\v2E.temporal.api.command.v1.RequestCancelNexusOperationCommandAttributesH\NULR,requestCancelNexusOperationCommandAttributesB\f\n\
    \\n\
    \attributesB\142\SOH\n\
    \\SUBio.temporal.api.command.v1B\fMessageProtoP\SOHZ%go.temporal.io/api/command/v1;command\170\STX\EMTemporalio.Api.Command.V1\234\STX\FSTemporalio::Api::Command::V1J\145~\n\
    \\a\DC2\ENQ\NUL\NUL\199\STX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL \n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NUL<\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\EOT\NUL<\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NUL3\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\ENQ\NUL3\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\ACK\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL-\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\a\NUL-\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL5\n\
    \\t\n\
    \\STX\b-\DC2\ETX\b\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL6\n\
    \\t\n\
    \\STX\b%\DC2\ETX\t\NUL6\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\v\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\r\NUL.\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\SO\NUL2\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\SI\NUL.\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\DLE\NUL/\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\DC1\NUL1\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\DC2\NUL0\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\DC3\NUL1\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\DC4\NUL6\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\SYN\NULF\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SYN\b-\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ETB\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\ETB\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ETB\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ETB\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\CAN\EOT:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\CAN\EOT'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\CAN(5\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\CAN89\n\
    \j\n\
    \\ETX\EOT\NUL\t\DC2\ETX\SUB\EOT\SI\SUB^ This used to be a `namespace` field which allowed to schedule activity in another namespace.\n\
    \\n\
    \\v\n\
    \\EOT\EOT\NUL\t\NUL\DC2\ETX\SUB\r\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\ETX\SUB\r\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\ETX\SUB\r\SO\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\ESC\EOT7\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\ESC\EOT'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\ESC(2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\ESC56\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\FS\EOT-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX\FS\EOT!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\FS\"(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\FS+,\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\GS\EOT.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\GS\EOT#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\GS$)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\GS,-\n\
    \\231\ETX\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX%\EOT;\SUB\217\ETX Indicates how long the caller is willing to wait for activity completion. The \"schedule\" time\n\
    \ is when the activity is initially scheduled, not when the most recent retry is scheduled.\n\
    \ Limits how long retries will be attempted. Either this or `start_to_close_timeout` must be\n\
    \ specified. When not specified, defaults to the workflow execution timeout.\n\
    \\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX%\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX%\GS6\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX%9:\n\
    \\175\ENQ\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX0\EOT;\SUB\161\ENQ Limits the time an activity task can stay in a task queue before a worker picks it up. The\n\
    \ \"schedule\" time is when the most recent retry is scheduled. This timeout should usually not\n\
    \ be set: it's useful in specific scenarios like worker-specific task queues. This timeout is\n\
    \ always non retryable, as all a retry would achieve is to put it back into the same queue.\n\
    \ Defaults to `schedule_to_close_timeout` or workflow execution timeout if that is not\n\
    \ specified. More info:\n\
    \ https://docs.temporal.io/docs/content/what-is-a-schedule-to-start-timeout/\n\
    \\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETX0\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX0\GS6\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX09:\n\
    \\185\STX\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX6\EOT8\SUB\171\STX Maximum time an activity is allowed to execute after being picked up by a worker. This\n\
    \ timeout is always retryable. Either this or `schedule_to_close_timeout` must be specified.\n\
    \\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\ETX6\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX6\GS3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX667\n\
    \K\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETX8\EOT4\SUB> Maximum permitted time between successful worker heartbeats.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ACK\DC2\ETX8\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX8\GS.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX813\n\
    \\136\STX\n\
    \\EOT\EOT\NUL\STX\t\DC2\ETX<\EOT9\SUB\250\SOH Activities are provided by a default retry policy which is controlled through the service's\n\
    \ dynamic configuration. Retries will be attempted until `schedule_to_close_timeout` has\n\
    \ elapsed. To disable retries set retry_policy.maximum_attempts to 1.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ACK\DC2\ETX<\EOT&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETX<'3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETX<68\n\
    \\189\SOH\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\ETX?\EOT&\SUB\175\SOH Request to start the activity directly bypassing matching service and worker polling\n\
    \ The slot for executing the activity should be reserved when setting this field to true.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ENQ\DC2\ETX?\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\ETX?\t \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\ETX?#%\n\
    \\193\SOH\n\
    \\EOT\EOT\NUL\STX\v\DC2\ETXB\EOT$\SUB\179\SOH If this is set, the activity would be assigned to the Build ID of the workflow. Otherwise,\n\
    \ Assignment rules of the activity's Task Queue will be used to determine the Build ID.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ENQ\DC2\ETXB\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\ETXB\t\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\ETXB!#\n\
    \\140\SOH\n\
    \\EOT\EOT\NUL\STX\f\DC2\ETXE\EOT2\SUB\DEL Priority metadata. If this message is not present, or any fields are not\n\
    \ present, they inherit the values from the workflow.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ACK\DC2\ETXE\EOT#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\SOH\DC2\ETXE$,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ETX\DC2\ETXE/1\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOTH\NULK\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXH\b2\n\
    \W\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXJ\EOT!\SUBJ The `ACTIVITY_TASK_SCHEDULED` event id for the activity being cancelled.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETXJ\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXJ\n\
    \\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXJ\US \n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOTM\NULV\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXM\b#\n\
    \w\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXP\EOT\CAN\SUBj An id for the timer, currently live timers must have different ids. Typically autogenerated\n\
    \ by the SDK.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXP\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXP\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXP\SYN\ETB\n\
    \\199\SOH\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXU\EOT7\SUB\185\SOH How long until the timer fires, producing a `TIMER_FIRED` event.\n\
    \\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETXU\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXU\GS2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXU56\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOTX\NULZ\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXX\b2\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXY\EOT/\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETXY\EOT#\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXY$*\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXY-.\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT\\\NUL^\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX\\\b.\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX]\EOT0\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETX]\EOT#\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX]$+\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX]./\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT`\NULc\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX`\b$\n\
    \=\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXb\EOT\CAN\SUB0 The same timer id from the start timer command\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETXb\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXb\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXb\SYN\ETB\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOTe\NULg\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXe\b0\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXf\EOT0\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\ETXf\EOT#\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXf$+\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXf./\n\
    \\n\
    \\n\
    \\STX\EOT\a\DC2\EOTi\NULv\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXi\b?\n\
    \b\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETXk\EOT-\SUBU Deprecated. Cross-namespace operations are disabled by default as of server 1.30.1.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETXk\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETXk\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETXk\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\b\DC2\ETXk\EM,\n\
    \\r\n\
    \\ACK\EOT\a\STX\NUL\b\ETX\DC2\ETXk\SUB+\n\
    \\v\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETXl\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\ETXl\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETXl\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETXl\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\a\STX\STX\DC2\ETXm\EOT\SYN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\ETXm\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\ETXm\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\ETXm\DC4\NAK\n\
    \\SUB\n\
    \\EOT\EOT\a\STX\ETX\DC2\ETXo\EOT+\SUB\r Deprecated.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ENQ\DC2\ETXo\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\ETXo\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\ETXo\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\b\DC2\ETXo\ETB*\n\
    \\r\n\
    \\ACK\EOT\a\STX\ETX\b\ETX\DC2\ETXo\CAN)\n\
    \\238\SOH\n\
    \\EOT\EOT\a\STX\EOT\DC2\ETXs\EOT!\SUB\224\SOH Set this to true if the workflow being cancelled is a child of the workflow originating this\n\
    \ command. The request will be rejected if it is set to true and the target workflow is *not*\n\
    \ a child of the requesting workflow.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\ENQ\DC2\ETXs\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\SOH\DC2\ETXs\t\FS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\ETX\DC2\ETXs\US \n\
    \5\n\
    \\EOT\EOT\a\STX\ENQ\DC2\ETXu\EOT\SYN\SUB( Reason for requesting the cancellation\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ENQ\ENQ\DC2\ETXu\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ENQ\SOH\DC2\ETXu\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ENQ\ETX\DC2\ETXu\DC4\NAK\n\
    \\v\n\
    \\STX\EOT\b\DC2\ENQx\NUL\137\SOH\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXx\b8\n\
    \b\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETXz\EOT-\SUBU Deprecated. Cross-namespace operations are disabled by default as of server 1.30.1.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETXz\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETXz\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETXz\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\b\DC2\ETXz\EM,\n\
    \\r\n\
    \\ACK\EOT\b\STX\NUL\b\ETX\DC2\ETXz\SUB+\n\
    \\v\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETX{\EOT;\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ACK\DC2\ETX{\EOT,\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETX{-6\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETX{9:\n\
    \V\n\
    \\EOT\EOT\b\STX\STX\DC2\ETX}\EOT\ESC\SUBI The workflow author-defined name of the signal to send to the workflow.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\ETX}\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\ETX}\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\ETX}\EM\SUB\n\
    \>\n\
    \\EOT\EOT\b\STX\ETX\DC2\ETX\DEL\EOT.\SUB1 Serialized value(s) to provide with the signal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\ACK\DC2\ETX\DEL\EOT#\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\ETX\DEL$)\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\ETX\DEL,-\n\
    \\SUB\n\
    \\EOT\EOT\b\STX\EOT\DC2\EOT\129\SOH\EOT+\SUB\f Deprecated\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\ENQ\DC2\EOT\129\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\SOH\DC2\EOT\129\SOH\v\DC2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\ETX\DC2\EOT\129\SOH\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\b\DC2\EOT\129\SOH\ETB*\n\
    \\SO\n\
    \\ACK\EOT\b\STX\EOT\b\ETX\DC2\EOT\129\SOH\CAN)\n\
    \\239\SOH\n\
    \\EOT\EOT\b\STX\ENQ\DC2\EOT\133\SOH\EOT!\SUB\224\SOH Set this to true if the workflow being cancelled is a child of the workflow originating this\n\
    \ command. The request will be rejected if it is set to true and the target workflow is *not*\n\
    \ a child of the requesting workflow.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\ENQ\DC2\EOT\133\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\SOH\DC2\EOT\133\SOH\t\FS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\ETX\DC2\EOT\133\SOH\US \n\
    \\138\SOH\n\
    \\EOT\EOT\b\STX\ACK\DC2\EOT\136\SOH\EOT-\SUB| Headers that are passed by the workflow that is sending a signal to the external \n\
    \ workflow that is receiving this signal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ACK\ACK\DC2\EOT\136\SOH\EOT!\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ACK\SOH\DC2\EOT\136\SOH\"(\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ACK\ETX\DC2\EOT\136\SOH+,\n\
    \\f\n\
    \\STX\EOT\t\DC2\ACK\139\SOH\NUL\141\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\139\SOH\b7\n\
    \\f\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\140\SOH\EOTB\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\140\SOH\EOT+\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\140\SOH,=\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\140\SOH@A\n\
    \\f\n\
    \\STX\EOT\n\
    \\DC2\ACK\143\SOH\NUL\148\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\143\SOH\b1\n\
    \\242\SOH\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\147\SOH\EOT2\SUB\227\SOH If set, update the workflow memo with the provided values. The values will be merged with\n\
    \ the existing memo. If the user wants to delete values, a default/empty Payload should be\n\
    \ used as the value for the key being deleted.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ACK\DC2\EOT\147\SOH\EOT\US\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\147\SOH -\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\147\SOH01\n\
    \\f\n\
    \\STX\EOT\v\DC2\ACK\150\SOH\NUL\155\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\150\SOH\b%\n\
    \\f\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\151\SOH\EOT\ESC\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\EOT\151\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\151\SOH\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\151\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\v\STX\SOH\DC2\EOT\152\SOH\EOT=\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ACK\DC2\EOT\152\SOH\EOT0\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\EOT\152\SOH18\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\EOT\152\SOH;<\n\
    \\f\n\
    \\EOT\EOT\v\STX\STX\DC2\EOT\153\SOH\EOT-\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ACK\DC2\EOT\153\SOH\EOT!\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\EOT\153\SOH\"(\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\EOT\153\SOH+,\n\
    \\f\n\
    \\EOT\EOT\v\STX\ETX\DC2\EOT\154\SOH\EOT0\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ACK\DC2\EOT\154\SOH\EOT#\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\SOH\DC2\EOT\154\SOH$+\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ETX\DC2\EOT\154\SOH./\n\
    \\f\n\
    \\STX\EOT\f\DC2\ACK\157\SOH\NUL\191\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\157\SOH\b7\n\
    \\f\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\158\SOH\EOT:\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ACK\DC2\EOT\158\SOH\EOT'\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\158\SOH(5\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\158\SOH89\n\
    \\f\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\159\SOH\EOT7\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ACK\DC2\EOT\159\SOH\EOT'\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\159\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\159\SOH56\n\
    \\f\n\
    \\EOT\EOT\f\STX\STX\DC2\EOT\160\SOH\EOT.\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ACK\DC2\EOT\160\SOH\EOT#\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\SOH\DC2\EOT\160\SOH$)\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ETX\DC2\EOT\160\SOH,-\n\
    \1\n\
    \\EOT\EOT\f\STX\ETX\DC2\EOT\163\SOH\EOT6\SUB# Timeout of a single workflow run.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\ACK\DC2\EOT\163\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\SOH\DC2\EOT\163\SOH\GS1\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\ETX\DC2\EOT\163\SOH45\n\
    \2\n\
    \\EOT\EOT\f\STX\EOT\DC2\EOT\165\SOH\EOT7\SUB$ Timeout of a single workflow task.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\ACK\DC2\EOT\165\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\SOH\DC2\EOT\165\SOH\GS2\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\ETX\DC2\EOT\165\SOH56\n\
    \n\n\
    \\EOT\EOT\f\STX\ENQ\DC2\EOT\167\SOH\EOT8\SUB` How long the workflow start will be delayed - not really a \"backoff\" in the traditional sense.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\ACK\DC2\EOT\167\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\SOH\DC2\EOT\167\SOH\GS3\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\ETX\DC2\EOT\167\SOH67\n\
    \\f\n\
    \\EOT\EOT\f\STX\ACK\DC2\EOT\168\SOH\EOT8\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ACK\ACK\DC2\EOT\168\SOH\EOT&\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ACK\SOH\DC2\EOT\168\SOH'3\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ACK\ETX\DC2\EOT\168\SOH67\n\
    \!\n\
    \\EOT\EOT\f\STX\a\DC2\EOT\170\SOH\EOT?\SUB\DC3 Should be removed\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\a\ACK\DC2\EOT\170\SOH\EOT0\n\
    \\r\n\
    \\ENQ\EOT\f\STX\a\SOH\DC2\EOT\170\SOH1:\n\
    \\r\n\
    \\ENQ\EOT\f\STX\a\ETX\DC2\EOT\170\SOH=>\n\
    \!\n\
    \\EOT\EOT\f\STX\b\DC2\EOT\172\SOH\EOT0\SUB\DC3 Should be removed\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\b\ACK\DC2\EOT\172\SOH\EOT#\n\
    \\r\n\
    \\ENQ\EOT\f\STX\b\SOH\DC2\EOT\172\SOH$+\n\
    \\r\n\
    \\ENQ\EOT\f\STX\b\ETX\DC2\EOT\172\SOH./\n\
    \!\n\
    \\EOT\EOT\f\STX\t\DC2\EOT\174\SOH\EOT@\SUB\DC3 Should be removed\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\t\ACK\DC2\EOT\174\SOH\EOT#\n\
    \\r\n\
    \\ENQ\EOT\f\STX\t\SOH\DC2\EOT\174\SOH$:\n\
    \\r\n\
    \\ENQ\EOT\f\STX\t\ETX\DC2\EOT\174\SOH=?\n\
    \^\n\
    \\EOT\EOT\f\STX\n\
    \\DC2\EOT\176\SOH\EOT\RS\SUBP Should be removed. Not necessarily unused but unclear and not exposed by SDKs.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\n\
    \\ENQ\DC2\EOT\176\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\n\
    \\SOH\DC2\EOT\176\SOH\v\CAN\n\
    \\r\n\
    \\ENQ\EOT\f\STX\n\
    \\ETX\DC2\EOT\176\SOH\ESC\GS\n\
    \\f\n\
    \\EOT\EOT\f\STX\v\DC2\EOT\177\SOH\EOT.\n\
    \\r\n\
    \\ENQ\EOT\f\STX\v\ACK\DC2\EOT\177\SOH\EOT!\n\
    \\r\n\
    \\ENQ\EOT\f\STX\v\SOH\DC2\EOT\177\SOH\"(\n\
    \\r\n\
    \\ENQ\EOT\f\STX\v\ETX\DC2\EOT\177\SOH+-\n\
    \\f\n\
    \\EOT\EOT\f\STX\f\DC2\EOT\178\SOH\EOT*\n\
    \\r\n\
    \\ENQ\EOT\f\STX\f\ACK\DC2\EOT\178\SOH\EOT\US\n\
    \\r\n\
    \\ENQ\EOT\f\STX\f\SOH\DC2\EOT\178\SOH $\n\
    \\r\n\
    \\ENQ\EOT\f\STX\f\ETX\DC2\EOT\178\SOH')\n\
    \\f\n\
    \\EOT\EOT\f\STX\r\DC2\EOT\179\SOH\EOTC\n\
    \\r\n\
    \\ENQ\EOT\f\STX\r\ACK\DC2\EOT\179\SOH\EOT+\n\
    \\r\n\
    \\ENQ\EOT\f\STX\r\SOH\DC2\EOT\179\SOH,=\n\
    \\r\n\
    \\ENQ\EOT\f\STX\r\ETX\DC2\EOT\179\SOH@B\n\
    \\251\SOH\n\
    \\EOT\EOT\f\STX\SO\DC2\EOT\183\SOH\EOT3\SUB\236\SOH If this is set, the new execution inherits the Build ID of the current execution. Otherwise,\n\
    \ the assignment rules will be used to independently assign a Build ID to the new execution.\n\
    \ Deprecated. Only considered for versioning v0.2.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SO\ENQ\DC2\EOT\183\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SO\SOH\DC2\EOT\183\SOH\t\EM\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SO\ETX\DC2\EOT\183\SOH\FS\RS\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SO\b\DC2\EOT\183\SOH\US2\n\
    \\SO\n\
    \\ACK\EOT\f\STX\SO\b\ETX\DC2\EOT\183\SOH 1\n\
    \\237\SOH\n\
    \\EOT\EOT\f\STX\SI\DC2\EOT\188\SOH\EOT[\SUB\222\SOH Experimental. Optionally decide the versioning behavior that the first task of the new run should use.\n\
    \ For example, choose to AutoUpgrade on continue-as-new instead of inheriting the pinned version\n\
    \ of the previous run.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SI\ACK\DC2\EOT\188\SOH\EOT9\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SI\SOH\DC2\EOT\188\SOH:U\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SI\ETX\DC2\EOT\188\SOHXZ\n\
    \\f\n\
    \\STX\EOT\r\DC2\ACK\193\SOH\NUL\227\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\193\SOH\b4\n\
    \c\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\195\SOH\EOT-\SUBU Deprecated. Cross-namespace operations are disabled by default as of server 1.30.1.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\EOT\195\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\195\SOH\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\195\SOH\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\b\DC2\EOT\195\SOH\EM,\n\
    \\SO\n\
    \\ACK\EOT\r\STX\NUL\b\ETX\DC2\EOT\195\SOH\SUB+\n\
    \\f\n\
    \\EOT\EOT\r\STX\SOH\DC2\EOT\196\SOH\EOT\ESC\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ENQ\DC2\EOT\196\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\EOT\196\SOH\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\EOT\196\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\r\STX\STX\DC2\EOT\197\SOH\EOT:\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ACK\DC2\EOT\197\SOH\EOT'\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\SOH\DC2\EOT\197\SOH(5\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ETX\DC2\EOT\197\SOH89\n\
    \\f\n\
    \\EOT\EOT\r\STX\ETX\DC2\EOT\198\SOH\EOT7\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\ACK\DC2\EOT\198\SOH\EOT'\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\SOH\DC2\EOT\198\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\ETX\DC2\EOT\198\SOH56\n\
    \\f\n\
    \\EOT\EOT\r\STX\EOT\DC2\EOT\199\SOH\EOT.\n\
    \\r\n\
    \\ENQ\EOT\r\STX\EOT\ACK\DC2\EOT\199\SOH\EOT#\n\
    \\r\n\
    \\ENQ\EOT\r\STX\EOT\SOH\DC2\EOT\199\SOH$)\n\
    \\r\n\
    \\ENQ\EOT\r\STX\EOT\ETX\DC2\EOT\199\SOH,-\n\
    \W\n\
    \\EOT\EOT\r\STX\ENQ\DC2\EOT\201\SOH\EOT<\SUBI Total workflow execution timeout including retries and continue as new.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ENQ\ACK\DC2\EOT\201\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ENQ\SOH\DC2\EOT\201\SOH\GS7\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ENQ\ETX\DC2\EOT\201\SOH:;\n\
    \1\n\
    \\EOT\EOT\r\STX\ACK\DC2\EOT\203\SOH\EOT6\SUB# Timeout of a single workflow run.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ACK\ACK\DC2\EOT\203\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ACK\SOH\DC2\EOT\203\SOH\GS1\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ACK\ETX\DC2\EOT\203\SOH45\n\
    \2\n\
    \\EOT\EOT\r\STX\a\DC2\EOT\205\SOH\EOT7\SUB$ Timeout of a single workflow task.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\a\ACK\DC2\EOT\205\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\r\STX\a\SOH\DC2\EOT\205\SOH\GS2\n\
    \\r\n\
    \\ENQ\EOT\r\STX\a\ETX\DC2\EOT\205\SOH56\n\
    \7\n\
    \\EOT\EOT\r\STX\b\DC2\EOT\207\SOH\EOTD\SUB) Default: PARENT_CLOSE_POLICY_TERMINATE.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\b\ACK\DC2\EOT\207\SOH\EOT+\n\
    \\r\n\
    \\ENQ\EOT\r\STX\b\SOH\DC2\EOT\207\SOH,?\n\
    \\r\n\
    \\ENQ\EOT\r\STX\b\ETX\DC2\EOT\207\SOHBC\n\
    \\f\n\
    \\EOT\EOT\r\STX\t\DC2\EOT\208\SOH\EOT\CAN\n\
    \\r\n\
    \\ENQ\EOT\r\STX\t\ENQ\DC2\EOT\208\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\t\SOH\DC2\EOT\208\SOH\v\DC2\n\
    \\r\n\
    \\ENQ\EOT\r\STX\t\ETX\DC2\EOT\208\SOH\NAK\ETB\n\
    \B\n\
    \\EOT\EOT\r\STX\n\
    \\DC2\EOT\210\SOH\EOTN\SUB4 Default: WORKFLOW_ID_REUSE_POLICY_ALLOW_DUPLICATE.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\n\
    \\ACK\DC2\EOT\210\SOH\EOT/\n\
    \\r\n\
    \\ENQ\EOT\r\STX\n\
    \\SOH\DC2\EOT\210\SOH0H\n\
    \\r\n\
    \\ENQ\EOT\r\STX\n\
    \\ETX\DC2\EOT\210\SOHKM\n\
    \\f\n\
    \\EOT\EOT\r\STX\v\DC2\EOT\211\SOH\EOT9\n\
    \\r\n\
    \\ENQ\EOT\r\STX\v\ACK\DC2\EOT\211\SOH\EOT&\n\
    \\r\n\
    \\ENQ\EOT\r\STX\v\SOH\DC2\EOT\211\SOH'3\n\
    \\r\n\
    \\ENQ\EOT\r\STX\v\ETX\DC2\EOT\211\SOH68\n\
    \A\n\
    \\EOT\EOT\r\STX\f\DC2\EOT\213\SOH\EOT\RS\SUB3 Establish a cron schedule for the child workflow.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\f\ENQ\DC2\EOT\213\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\f\SOH\DC2\EOT\213\SOH\v\CAN\n\
    \\r\n\
    \\ENQ\EOT\r\STX\f\ETX\DC2\EOT\213\SOH\ESC\GS\n\
    \\f\n\
    \\EOT\EOT\r\STX\r\DC2\EOT\214\SOH\EOT.\n\
    \\r\n\
    \\ENQ\EOT\r\STX\r\ACK\DC2\EOT\214\SOH\EOT!\n\
    \\r\n\
    \\ENQ\EOT\r\STX\r\SOH\DC2\EOT\214\SOH\"(\n\
    \\r\n\
    \\ENQ\EOT\r\STX\r\ETX\DC2\EOT\214\SOH+-\n\
    \\f\n\
    \\EOT\EOT\r\STX\SO\DC2\EOT\215\SOH\EOT*\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SO\ACK\DC2\EOT\215\SOH\EOT\US\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SO\SOH\DC2\EOT\215\SOH $\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SO\ETX\DC2\EOT\215\SOH')\n\
    \\f\n\
    \\EOT\EOT\r\STX\SI\DC2\EOT\216\SOH\EOTC\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SI\ACK\DC2\EOT\216\SOH\EOT+\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SI\SOH\DC2\EOT\216\SOH,=\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SI\ETX\DC2\EOT\216\SOH@B\n\
    \\252\SOH\n\
    \\EOT\EOT\r\STX\DLE\DC2\EOT\220\SOH\EOT3\SUB\237\SOH If this is set, the child workflow inherits the Build ID of the parent. Otherwise, the assignment\n\
    \ rules of the child's Task Queue will be used to independently assign a Build ID to it.\n\
    \ Deprecated. Only considered for versioning v0.2.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\DLE\ENQ\DC2\EOT\220\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\DLE\SOH\DC2\EOT\220\SOH\t\EM\n\
    \\r\n\
    \\ENQ\EOT\r\STX\DLE\ETX\DC2\EOT\220\SOH\FS\RS\n\
    \\r\n\
    \\ENQ\EOT\r\STX\DLE\b\DC2\EOT\220\SOH\US2\n\
    \\SO\n\
    \\ACK\EOT\r\STX\DLE\b\ETX\DC2\EOT\220\SOH 1\n\
    \\141\SOH\n\
    \\EOT\EOT\r\STX\DC1\DC2\EOT\223\SOH\EOT2\SUB\DEL Priority metadata. If this message is not present, or any fields are not\n\
    \ present, they inherit the values from the workflow.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\DC1\ACK\DC2\EOT\223\SOH\EOT#\n\
    \\r\n\
    \\ENQ\EOT\r\STX\DC1\SOH\DC2\EOT\223\SOH$,\n\
    \\r\n\
    \\ENQ\EOT\r\STX\DC1\ETX\DC2\EOT\223\SOH/1\n\
    \\174\SOH\n\
    \\EOT\EOT\r\STX\DC2\DC2\EOT\226\SOH\EOTI\SUB\159\SOH Versioning override for the child workflow. If present, this explicit override takes\n\
    \ precedence over versioning behavior inherited from the parent workflow.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\DC2\ACK\DC2\EOT\226\SOH\EOT/\n\
    \\r\n\
    \\ENQ\EOT\r\STX\DC2\SOH\DC2\EOT\226\SOH0C\n\
    \\r\n\
    \\ENQ\EOT\r\STX\DC2\ETX\DC2\EOT\226\SOHFH\n\
    \\f\n\
    \\STX\EOT\SO\DC2\ACK\229\SOH\NUL\232\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\229\SOH\b(\n\
    \Q\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\231\SOH\EOT\SUB\SUBC The message ID of the message to which this command is a pointer.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\EOT\231\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\231\SOH\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\231\SOH\CAN\EM\n\
    \\f\n\
    \\STX\EOT\SI\DC2\ACK\234\SOH\NUL\152\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\234\SOH\b/\n\
    \]\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\236\SOH\EOT\CAN\SUBO Endpoint name, must exist in the endpoint registry or this command will fail.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ENQ\DC2\EOT\236\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\236\SOH\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\236\SOH\SYN\ETB\n\
    \\GS\n\
    \\EOT\EOT\SI\STX\SOH\DC2\EOT\238\SOH\EOT\ETB\SUB\SI Service name.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ENQ\DC2\EOT\238\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\EOT\238\SOH\v\DC2\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\EOT\238\SOH\NAK\SYN\n\
    \\US\n\
    \\EOT\EOT\SI\STX\STX\DC2\EOT\240\SOH\EOT\EM\SUB\DC1 Operation name.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ENQ\DC2\EOT\240\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\SOH\DC2\EOT\240\SOH\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ETX\DC2\EOT\240\SOH\ETB\CAN\n\
    \\188\STX\n\
    \\EOT\EOT\SI\STX\ETX\DC2\EOT\244\SOH\EOT-\SUB\173\STX Input for the operation. The server converts this into Nexus request content and the appropriate content headers\n\
    \ internally when sending the StartOperation request. On the handler side, if it is also backed by Temporal, the\n\
    \ content is transformed back to the original Payload sent in this command.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ACK\DC2\EOT\244\SOH\EOT\"\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\SOH\DC2\EOT\244\SOH#(\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ETX\DC2\EOT\244\SOH+,\n\
    \\173\STX\n\
    \\EOT\EOT\SI\STX\EOT\DC2\EOT\250\SOH\EOT;\SUB\158\STX Schedule-to-close timeout for this operation.\n\
    \ Indicates how long the caller is willing to wait for operation completion.\n\
    \ Calls are retried internally by the server.\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\ACK\DC2\EOT\250\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\SOH\DC2\EOT\250\SOH\GS6\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\ETX\DC2\EOT\250\SOH9:\n\
    \\200\ETX\n\
    \\EOT\EOT\SI\STX\ENQ\DC2\EOT\130\STX\EOT)\SUB\185\ETX Header to attach to the Nexus request.\n\
    \ Users are responsible for encrypting sensitive data in this header as it is stored in workflow history and\n\
    \ transmitted to external services as-is.\n\
    \ This is useful for propagating tracing information.\n\
    \ Note these headers are not the same as Temporal headers on internal activities and child workflows, these are\n\
    \ transmitted to Nexus operations that may be external and are not traditional payloads.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\ACK\DC2\EOT\130\STX\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\SOH\DC2\EOT\130\STX\CAN$\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\ETX\DC2\EOT\130\STX'(\n\
    \\134\EOT\n\
    \\EOT\EOT\SI\STX\ACK\DC2\EOT\140\STX\EOT;\SUB\247\ETX Schedule-to-start timeout for this operation.\n\
    \ Indicates how long the caller is willing to wait for the operation to be started (or completed if synchronous)\n\
    \ by the handler. If the operation is not started within this timeout, it will fail with\n\
    \ TIMEOUT_TYPE_SCHEDULE_TO_START.\n\
    \ If not set or zero, no schedule-to-start timeout is enforced.\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \ Requires server version 1.31.0 or later.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ACK\ACK\DC2\EOT\140\STX\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ACK\SOH\DC2\EOT\140\STX\GS6\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ACK\ETX\DC2\EOT\140\STX9:\n\
    \\220\EOT\n\
    \\EOT\EOT\SI\STX\a\DC2\EOT\151\STX\EOT8\SUB\205\EOT Start-to-close timeout for this operation.\n\
    \ Indicates how long the caller is willing to wait for an asynchronous operation to complete after it has been\n\
    \ started. If the operation does not complete within this timeout after starting, it will fail with\n\
    \ TIMEOUT_TYPE_START_TO_CLOSE.\n\
    \ Only applies to asynchronous operations. Synchronous operations ignore this timeout.\n\
    \ If not set or zero, no start-to-close timeout is enforced.\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \ Requires server version 1.31.0 or later.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\a\ACK\DC2\EOT\151\STX\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\a\SOH\DC2\EOT\151\STX\GS3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\a\ETX\DC2\EOT\151\STX67\n\
    \\f\n\
    \\STX\EOT\DLE\DC2\ACK\154\STX\NUL\158\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\154\STX\b4\n\
    \\190\SOH\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\157\STX\EOT!\SUB\175\SOH The `NEXUS_OPERATION_SCHEDULED` event ID (a unique identifier) for the operation to be canceled.\n\
    \ The operation may ignore cancellation and end up with any completion state.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\EOT\157\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\157\STX\n\
    \\FS\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\157\STX\US \n\
    \\f\n\
    \\STX\EOT\DC1\DC2\ACK\160\STX\NUL\199\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\160\STX\b\SI\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\161\STX\EOT7\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ACK\DC2\EOT\161\STX\EOT%\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\161\STX&2\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\161\STX56\n\
    \\183\ENQ\n\
    \\EOT\EOT\DC1\STX\SOH\DC2\EOT\172\STX\EOT9\SUB\168\ENQ Metadata on the command. This is sometimes carried over to the history event if one is\n\
    \ created as a result of the command. Most commands won't have this information, and how this\n\
    \ information is used is dependent upon the interface that reads it.\n\
    \\n\
    \ Current well-known uses:\n\
    \  * start_child_workflow_execution_command_attributes - populates\n\
    \    temporal.api.workflow.v1.WorkflowExecutionInfo.user_metadata where the summary and details\n\
    \    are used by user interfaces to show fixed as-of-start workflow summary and details.\n\
    \  * start_timer_command_attributes - populates temporal.api.history.v1.HistoryEvent for timer\n\
    \    started where the summary is used to identify the timer.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ACK\DC2\EOT\172\STX\EOT$\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\SOH\DC2\EOT\172\STX%2\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ETX\DC2\EOT\172\STX58\n\
    \S\n\
    \\EOT\EOT\DC1\STX\STX\DC2\EOT\175\STX\EOTL\SUBE Event Group Markers attached to the command by the workflow author.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\EOT\DC2\EOT\175\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\ACK\DC2\EOT\175\STX\r1\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\SOH\DC2\EOT\175\STX2E\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\ETX\DC2\EOT\175\STXHK\n\
    \R\n\
    \\EOT\EOT\DC1\b\NUL\DC2\ACK\178\STX\EOT\198\STX\ENQ\SUBB The command details. The type must match that in `command_type`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\b\NUL\SOH\DC2\EOT\178\STX\n\
    \\DC4\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\ETX\DC2\EOT\179\STX\b\\\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ETX\ACK\DC2\EOT\179\STX\b-\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ETX\SOH\DC2\EOT\179\STX.W\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ETX\ETX\DC2\EOT\179\STXZ[\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\EOT\DC2\EOT\180\STX\bG\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\EOT\ACK\DC2\EOT\180\STX\b#\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\EOT\SOH\DC2\EOT\180\STX$B\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\EOT\ETX\DC2\EOT\180\STXEF\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\ENQ\DC2\EOT\181\STX\bf\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ENQ\ACK\DC2\EOT\181\STX\b2\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ENQ\SOH\DC2\EOT\181\STX3a\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ENQ\ETX\DC2\EOT\181\STXde\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\ACK\DC2\EOT\182\STX\b^\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ACK\ACK\DC2\EOT\182\STX\b.\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ACK\SOH\DC2\EOT\182\STX/Y\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ACK\ETX\DC2\EOT\182\STX\\]\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\a\DC2\EOT\183\STX\bg\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\a\ACK\DC2\EOT\183\STX\b2\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\a\SOH\DC2\EOT\183\STX3b\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\a\ETX\DC2\EOT\183\STXef\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\b\DC2\EOT\184\STX\bI\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\b\ACK\DC2\EOT\184\STX\b$\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\b\SOH\DC2\EOT\184\STX%D\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\b\ETX\DC2\EOT\184\STXGH\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\t\DC2\EOT\185\STX\bb\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\t\ACK\DC2\EOT\185\STX\b0\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\t\SOH\DC2\EOT\185\STX1]\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\t\ETX\DC2\EOT\185\STX`a\n\
    \\r\n\
    \\EOT\EOT\DC1\STX\n\
    \\DC2\ENQ\186\STX\b\130\SOH\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\n\
    \\ACK\DC2\EOT\186\STX\b?\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\n\
    \\SOH\DC2\EOT\186\STX@}\n\
    \\SI\n\
    \\ENQ\EOT\DC1\STX\n\
    \\ETX\DC2\ACK\186\STX\128\SOH\129\SOH\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\v\DC2\EOT\187\STX\bL\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\v\ACK\DC2\EOT\187\STX\b%\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\v\SOH\DC2\EOT\187\STX&F\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\v\ETX\DC2\EOT\187\STXIK\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\f\DC2\EOT\188\STX\bs\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\f\ACK\DC2\EOT\188\STX\b7\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\f\SOH\DC2\EOT\188\STX8m\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\f\ETX\DC2\EOT\188\STXpr\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\r\DC2\EOT\189\STX\bl\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\r\ACK\DC2\EOT\189\STX\b4\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\r\SOH\DC2\EOT\189\STX5f\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\r\ETX\DC2\EOT\189\STXik\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\SO\DC2\EOT\190\STX\bt\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SO\ACK\DC2\EOT\190\STX\b8\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SO\SOH\DC2\EOT\190\STX9n\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SO\ETX\DC2\EOT\190\STXqs\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\SI\DC2\EOT\191\STX\br\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SI\ACK\DC2\EOT\191\STX\b7\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SI\SOH\DC2\EOT\191\STX8l\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SI\ETX\DC2\EOT\191\STXoq\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\DLE\DC2\EOT\192\STX\bR\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\DLE\ACK\DC2\EOT\192\STX\b(\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\DLE\SOH\DC2\EOT\192\STX)L\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\DLE\ETX\DC2\EOT\192\STXOQ\n\
    \n\n\
    \\EOT\EOT\DC1\STX\DC1\DC2\EOT\194\STX\be\SUB` 16 is available for use - it was used as part of a prototype that never made it into a release\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\DC1\ACK\DC2\EOT\194\STX\b1\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\DC1\SOH\DC2\EOT\194\STX2_\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\DC1\ETX\DC2\EOT\194\STXbd\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\DC2\DC2\EOT\196\STX\ba\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\DC2\ACK\DC2\EOT\196\STX\b/\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\DC2\SOH\DC2\EOT\196\STX0[\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\DC2\ETX\DC2\EOT\196\STX^`\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\DC3\DC2\EOT\197\STX\bl\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\DC3\ACK\DC2\EOT\197\STX\b4\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\DC3\SOH\DC2\EOT\197\STX5f\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\DC3\ETX\DC2\EOT\197\STXikb\ACKproto3"