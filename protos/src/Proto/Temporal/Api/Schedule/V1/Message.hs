{- This file was auto-generated from temporal/api/schedule/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Schedule.V1.Message (
        BackfillRequest(), CalendarSpec(), IntervalSpec(), Range(),
        Schedule(), ScheduleAction(), ScheduleAction'Action(..),
        _ScheduleAction'StartWorkflow, ScheduleActionResult(),
        ScheduleInfo(), ScheduleListEntry(), ScheduleListInfo(),
        SchedulePatch(), SchedulePolicies(), ScheduleSpec(),
        ScheduleState(), StructuredCalendarSpec(),
        TriggerImmediatelyRequest()
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
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Temporal.Api.Common.V1.Message
import qualified Proto.Temporal.Api.Enums.V1.Schedule
import qualified Proto.Temporal.Api.Enums.V1.Workflow
import qualified Proto.Temporal.Api.Workflow.V1.Message
{- | Fields :
     
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.startTime' @:: Lens' BackfillRequest Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'startTime' @:: Lens' BackfillRequest (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.endTime' @:: Lens' BackfillRequest Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'endTime' @:: Lens' BackfillRequest (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.overlapPolicy' @:: Lens' BackfillRequest Proto.Temporal.Api.Enums.V1.Schedule.ScheduleOverlapPolicy@ -}
data BackfillRequest
  = BackfillRequest'_constructor {_BackfillRequest'startTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                  _BackfillRequest'endTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                  _BackfillRequest'overlapPolicy :: !Proto.Temporal.Api.Enums.V1.Schedule.ScheduleOverlapPolicy,
                                  _BackfillRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BackfillRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BackfillRequest "startTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BackfillRequest'startTime
           (\ x__ y__ -> x__ {_BackfillRequest'startTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BackfillRequest "maybe'startTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BackfillRequest'startTime
           (\ x__ y__ -> x__ {_BackfillRequest'startTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BackfillRequest "endTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BackfillRequest'endTime
           (\ x__ y__ -> x__ {_BackfillRequest'endTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BackfillRequest "maybe'endTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BackfillRequest'endTime
           (\ x__ y__ -> x__ {_BackfillRequest'endTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BackfillRequest "overlapPolicy" Proto.Temporal.Api.Enums.V1.Schedule.ScheduleOverlapPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BackfillRequest'overlapPolicy
           (\ x__ y__ -> x__ {_BackfillRequest'overlapPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Message BackfillRequest where
  messageName _
    = Data.Text.pack "temporal.api.schedule.v1.BackfillRequest"
  packedMessageDescriptor _
    = "\n\
      \\SIBackfillRequest\DC29\n\
      \\n\
      \start_time\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\tstartTime\DC25\n\
      \\bend_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\aendTime\DC2S\n\
      \\SOoverlap_policy\CAN\ETX \SOH(\SO2,.temporal.api.enums.v1.ScheduleOverlapPolicyR\roverlapPolicy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        startTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startTime")) ::
              Data.ProtoLens.FieldDescriptor BackfillRequest
        endTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'endTime")) ::
              Data.ProtoLens.FieldDescriptor BackfillRequest
        overlapPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "overlap_policy"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Schedule.ScheduleOverlapPolicy)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"overlapPolicy")) ::
              Data.ProtoLens.FieldDescriptor BackfillRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, startTime__field_descriptor),
           (Data.ProtoLens.Tag 2, endTime__field_descriptor),
           (Data.ProtoLens.Tag 3, overlapPolicy__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BackfillRequest'_unknownFields
        (\ x__ y__ -> x__ {_BackfillRequest'_unknownFields = y__})
  defMessage
    = BackfillRequest'_constructor
        {_BackfillRequest'startTime = Prelude.Nothing,
         _BackfillRequest'endTime = Prelude.Nothing,
         _BackfillRequest'overlapPolicy = Data.ProtoLens.fieldDefault,
         _BackfillRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BackfillRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser BackfillRequest
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
                                       "start_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startTime") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "end_time"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"endTime") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "overlap_policy"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"overlapPolicy") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BackfillRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'startTime") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'endTime") _x
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
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"overlapPolicy") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                               Prelude.fromEnum _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData BackfillRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BackfillRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BackfillRequest'startTime x__)
                (Control.DeepSeq.deepseq
                   (_BackfillRequest'endTime x__)
                   (Control.DeepSeq.deepseq (_BackfillRequest'overlapPolicy x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.second' @:: Lens' CalendarSpec Data.Text.Text@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.minute' @:: Lens' CalendarSpec Data.Text.Text@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.hour' @:: Lens' CalendarSpec Data.Text.Text@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.dayOfMonth' @:: Lens' CalendarSpec Data.Text.Text@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.month' @:: Lens' CalendarSpec Data.Text.Text@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.year' @:: Lens' CalendarSpec Data.Text.Text@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.dayOfWeek' @:: Lens' CalendarSpec Data.Text.Text@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.comment' @:: Lens' CalendarSpec Data.Text.Text@ -}
data CalendarSpec
  = CalendarSpec'_constructor {_CalendarSpec'second :: !Data.Text.Text,
                               _CalendarSpec'minute :: !Data.Text.Text,
                               _CalendarSpec'hour :: !Data.Text.Text,
                               _CalendarSpec'dayOfMonth :: !Data.Text.Text,
                               _CalendarSpec'month :: !Data.Text.Text,
                               _CalendarSpec'year :: !Data.Text.Text,
                               _CalendarSpec'dayOfWeek :: !Data.Text.Text,
                               _CalendarSpec'comment :: !Data.Text.Text,
                               _CalendarSpec'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CalendarSpec where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CalendarSpec "second" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CalendarSpec'second
           (\ x__ y__ -> x__ {_CalendarSpec'second = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CalendarSpec "minute" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CalendarSpec'minute
           (\ x__ y__ -> x__ {_CalendarSpec'minute = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CalendarSpec "hour" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CalendarSpec'hour (\ x__ y__ -> x__ {_CalendarSpec'hour = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CalendarSpec "dayOfMonth" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CalendarSpec'dayOfMonth
           (\ x__ y__ -> x__ {_CalendarSpec'dayOfMonth = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CalendarSpec "month" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CalendarSpec'month (\ x__ y__ -> x__ {_CalendarSpec'month = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CalendarSpec "year" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CalendarSpec'year (\ x__ y__ -> x__ {_CalendarSpec'year = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CalendarSpec "dayOfWeek" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CalendarSpec'dayOfWeek
           (\ x__ y__ -> x__ {_CalendarSpec'dayOfWeek = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CalendarSpec "comment" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CalendarSpec'comment
           (\ x__ y__ -> x__ {_CalendarSpec'comment = y__}))
        Prelude.id
instance Data.ProtoLens.Message CalendarSpec where
  messageName _
    = Data.Text.pack "temporal.api.schedule.v1.CalendarSpec"
  packedMessageDescriptor _
    = "\n\
      \\fCalendarSpec\DC2\SYN\n\
      \\ACKsecond\CAN\SOH \SOH(\tR\ACKsecond\DC2\SYN\n\
      \\ACKminute\CAN\STX \SOH(\tR\ACKminute\DC2\DC2\n\
      \\EOThour\CAN\ETX \SOH(\tR\EOThour\DC2 \n\
      \\fday_of_month\CAN\EOT \SOH(\tR\n\
      \dayOfMonth\DC2\DC4\n\
      \\ENQmonth\CAN\ENQ \SOH(\tR\ENQmonth\DC2\DC2\n\
      \\EOTyear\CAN\ACK \SOH(\tR\EOTyear\DC2\RS\n\
      \\vday_of_week\CAN\a \SOH(\tR\tdayOfWeek\DC2\CAN\n\
      \\acomment\CAN\b \SOH(\tR\acomment"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        second__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "second"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"second")) ::
              Data.ProtoLens.FieldDescriptor CalendarSpec
        minute__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "minute"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"minute")) ::
              Data.ProtoLens.FieldDescriptor CalendarSpec
        hour__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hour"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"hour")) ::
              Data.ProtoLens.FieldDescriptor CalendarSpec
        dayOfMonth__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "day_of_month"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"dayOfMonth")) ::
              Data.ProtoLens.FieldDescriptor CalendarSpec
        month__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "month"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"month")) ::
              Data.ProtoLens.FieldDescriptor CalendarSpec
        year__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "year"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"year")) ::
              Data.ProtoLens.FieldDescriptor CalendarSpec
        dayOfWeek__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "day_of_week"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"dayOfWeek")) ::
              Data.ProtoLens.FieldDescriptor CalendarSpec
        comment__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comment"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"comment")) ::
              Data.ProtoLens.FieldDescriptor CalendarSpec
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, second__field_descriptor),
           (Data.ProtoLens.Tag 2, minute__field_descriptor),
           (Data.ProtoLens.Tag 3, hour__field_descriptor),
           (Data.ProtoLens.Tag 4, dayOfMonth__field_descriptor),
           (Data.ProtoLens.Tag 5, month__field_descriptor),
           (Data.ProtoLens.Tag 6, year__field_descriptor),
           (Data.ProtoLens.Tag 7, dayOfWeek__field_descriptor),
           (Data.ProtoLens.Tag 8, comment__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CalendarSpec'_unknownFields
        (\ x__ y__ -> x__ {_CalendarSpec'_unknownFields = y__})
  defMessage
    = CalendarSpec'_constructor
        {_CalendarSpec'second = Data.ProtoLens.fieldDefault,
         _CalendarSpec'minute = Data.ProtoLens.fieldDefault,
         _CalendarSpec'hour = Data.ProtoLens.fieldDefault,
         _CalendarSpec'dayOfMonth = Data.ProtoLens.fieldDefault,
         _CalendarSpec'month = Data.ProtoLens.fieldDefault,
         _CalendarSpec'year = Data.ProtoLens.fieldDefault,
         _CalendarSpec'dayOfWeek = Data.ProtoLens.fieldDefault,
         _CalendarSpec'comment = Data.ProtoLens.fieldDefault,
         _CalendarSpec'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CalendarSpec -> Data.ProtoLens.Encoding.Bytes.Parser CalendarSpec
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
                                       "second"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"second") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "minute"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"minute") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "hour"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"hour") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "day_of_month"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"dayOfMonth") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "month"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"month") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "year"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"year") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "day_of_week"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"dayOfWeek") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "comment"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comment") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CalendarSpec"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"second") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"minute") _x
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
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hour") _x
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
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"dayOfMonth") _x
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
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"month") _x
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
                            (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"year") _x
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
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view (Data.ProtoLens.Field.field @"dayOfWeek") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                        ((Prelude..)
                                           (\ bs
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                           Data.Text.Encoding.encodeUtf8 _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"comment") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                           ((Prelude..)
                                              (\ bs
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Data.Text.Encoding.encodeUtf8 _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData CalendarSpec where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CalendarSpec'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CalendarSpec'second x__)
                (Control.DeepSeq.deepseq
                   (_CalendarSpec'minute x__)
                   (Control.DeepSeq.deepseq
                      (_CalendarSpec'hour x__)
                      (Control.DeepSeq.deepseq
                         (_CalendarSpec'dayOfMonth x__)
                         (Control.DeepSeq.deepseq
                            (_CalendarSpec'month x__)
                            (Control.DeepSeq.deepseq
                               (_CalendarSpec'year x__)
                               (Control.DeepSeq.deepseq
                                  (_CalendarSpec'dayOfWeek x__)
                                  (Control.DeepSeq.deepseq (_CalendarSpec'comment x__) ()))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.interval' @:: Lens' IntervalSpec Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'interval' @:: Lens' IntervalSpec (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.phase' @:: Lens' IntervalSpec Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'phase' @:: Lens' IntervalSpec (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data IntervalSpec
  = IntervalSpec'_constructor {_IntervalSpec'interval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                               _IntervalSpec'phase :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                               _IntervalSpec'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IntervalSpec where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IntervalSpec "interval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IntervalSpec'interval
           (\ x__ y__ -> x__ {_IntervalSpec'interval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField IntervalSpec "maybe'interval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IntervalSpec'interval
           (\ x__ y__ -> x__ {_IntervalSpec'interval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IntervalSpec "phase" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IntervalSpec'phase (\ x__ y__ -> x__ {_IntervalSpec'phase = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField IntervalSpec "maybe'phase" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IntervalSpec'phase (\ x__ y__ -> x__ {_IntervalSpec'phase = y__}))
        Prelude.id
instance Data.ProtoLens.Message IntervalSpec where
  messageName _
    = Data.Text.pack "temporal.api.schedule.v1.IntervalSpec"
  packedMessageDescriptor _
    = "\n\
      \\fIntervalSpec\DC25\n\
      \\binterval\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\binterval\DC2/\n\
      \\ENQphase\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\ENQphase"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        interval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'interval")) ::
              Data.ProtoLens.FieldDescriptor IntervalSpec
        phase__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "phase"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'phase")) ::
              Data.ProtoLens.FieldDescriptor IntervalSpec
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, interval__field_descriptor),
           (Data.ProtoLens.Tag 2, phase__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IntervalSpec'_unknownFields
        (\ x__ y__ -> x__ {_IntervalSpec'_unknownFields = y__})
  defMessage
    = IntervalSpec'_constructor
        {_IntervalSpec'interval = Prelude.Nothing,
         _IntervalSpec'phase = Prelude.Nothing,
         _IntervalSpec'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IntervalSpec -> Data.ProtoLens.Encoding.Bytes.Parser IntervalSpec
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
                                       "interval"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"interval") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "phase"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"phase") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "IntervalSpec"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'interval") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'phase") _x
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
instance Control.DeepSeq.NFData IntervalSpec where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IntervalSpec'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IntervalSpec'interval x__)
                (Control.DeepSeq.deepseq (_IntervalSpec'phase x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.start' @:: Lens' Range Data.Int.Int32@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.end' @:: Lens' Range Data.Int.Int32@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.step' @:: Lens' Range Data.Int.Int32@ -}
data Range
  = Range'_constructor {_Range'start :: !Data.Int.Int32,
                        _Range'end :: !Data.Int.Int32,
                        _Range'step :: !Data.Int.Int32,
                        _Range'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Range where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Range "start" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Range'start (\ x__ y__ -> x__ {_Range'start = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Range "end" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Range'end (\ x__ y__ -> x__ {_Range'end = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Range "step" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Range'step (\ x__ y__ -> x__ {_Range'step = y__}))
        Prelude.id
instance Data.ProtoLens.Message Range where
  messageName _ = Data.Text.pack "temporal.api.schedule.v1.Range"
  packedMessageDescriptor _
    = "\n\
      \\ENQRange\DC2\DC4\n\
      \\ENQstart\CAN\SOH \SOH(\ENQR\ENQstart\DC2\DLE\n\
      \\ETXend\CAN\STX \SOH(\ENQR\ETXend\DC2\DC2\n\
      \\EOTstep\CAN\ETX \SOH(\ENQR\EOTstep"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        start__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"start")) ::
              Data.ProtoLens.FieldDescriptor Range
        end__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"end")) ::
              Data.ProtoLens.FieldDescriptor Range
        step__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "step"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"step")) ::
              Data.ProtoLens.FieldDescriptor Range
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, start__field_descriptor),
           (Data.ProtoLens.Tag 2, end__field_descriptor),
           (Data.ProtoLens.Tag 3, step__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Range'_unknownFields
        (\ x__ y__ -> x__ {_Range'_unknownFields = y__})
  defMessage
    = Range'_constructor
        {_Range'start = Data.ProtoLens.fieldDefault,
         _Range'end = Data.ProtoLens.fieldDefault,
         _Range'step = Data.ProtoLens.fieldDefault,
         _Range'_unknownFields = []}
  parseMessage
    = let
        loop :: Range -> Data.ProtoLens.Encoding.Bytes.Parser Range
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
                                       "start"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"start") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "end"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"end") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "step"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"step") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Range"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"start") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"end") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"step") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Range where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Range'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Range'start x__)
                (Control.DeepSeq.deepseq
                   (_Range'end x__) (Control.DeepSeq.deepseq (_Range'step x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.spec' @:: Lens' Schedule ScheduleSpec@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'spec' @:: Lens' Schedule (Prelude.Maybe ScheduleSpec)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.action' @:: Lens' Schedule ScheduleAction@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'action' @:: Lens' Schedule (Prelude.Maybe ScheduleAction)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.policies' @:: Lens' Schedule SchedulePolicies@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'policies' @:: Lens' Schedule (Prelude.Maybe SchedulePolicies)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.state' @:: Lens' Schedule ScheduleState@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'state' @:: Lens' Schedule (Prelude.Maybe ScheduleState)@ -}
data Schedule
  = Schedule'_constructor {_Schedule'spec :: !(Prelude.Maybe ScheduleSpec),
                           _Schedule'action :: !(Prelude.Maybe ScheduleAction),
                           _Schedule'policies :: !(Prelude.Maybe SchedulePolicies),
                           _Schedule'state :: !(Prelude.Maybe ScheduleState),
                           _Schedule'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Schedule where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Schedule "spec" ScheduleSpec where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Schedule'spec (\ x__ y__ -> x__ {_Schedule'spec = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Schedule "maybe'spec" (Prelude.Maybe ScheduleSpec) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Schedule'spec (\ x__ y__ -> x__ {_Schedule'spec = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Schedule "action" ScheduleAction where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Schedule'action (\ x__ y__ -> x__ {_Schedule'action = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Schedule "maybe'action" (Prelude.Maybe ScheduleAction) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Schedule'action (\ x__ y__ -> x__ {_Schedule'action = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Schedule "policies" SchedulePolicies where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Schedule'policies (\ x__ y__ -> x__ {_Schedule'policies = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Schedule "maybe'policies" (Prelude.Maybe SchedulePolicies) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Schedule'policies (\ x__ y__ -> x__ {_Schedule'policies = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Schedule "state" ScheduleState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Schedule'state (\ x__ y__ -> x__ {_Schedule'state = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Schedule "maybe'state" (Prelude.Maybe ScheduleState) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Schedule'state (\ x__ y__ -> x__ {_Schedule'state = y__}))
        Prelude.id
instance Data.ProtoLens.Message Schedule where
  messageName _ = Data.Text.pack "temporal.api.schedule.v1.Schedule"
  packedMessageDescriptor _
    = "\n\
      \\bSchedule\DC2:\n\
      \\EOTspec\CAN\SOH \SOH(\v2&.temporal.api.schedule.v1.ScheduleSpecR\EOTspec\DC2@\n\
      \\ACKaction\CAN\STX \SOH(\v2(.temporal.api.schedule.v1.ScheduleActionR\ACKaction\DC2F\n\
      \\bpolicies\CAN\ETX \SOH(\v2*.temporal.api.schedule.v1.SchedulePoliciesR\bpolicies\DC2=\n\
      \\ENQstate\CAN\EOT \SOH(\v2'.temporal.api.schedule.v1.ScheduleStateR\ENQstate"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        spec__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "spec"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScheduleSpec)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'spec")) ::
              Data.ProtoLens.FieldDescriptor Schedule
        action__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "action"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScheduleAction)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'action")) ::
              Data.ProtoLens.FieldDescriptor Schedule
        policies__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "policies"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SchedulePolicies)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'policies")) ::
              Data.ProtoLens.FieldDescriptor Schedule
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScheduleState)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'state")) ::
              Data.ProtoLens.FieldDescriptor Schedule
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, spec__field_descriptor),
           (Data.ProtoLens.Tag 2, action__field_descriptor),
           (Data.ProtoLens.Tag 3, policies__field_descriptor),
           (Data.ProtoLens.Tag 4, state__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Schedule'_unknownFields
        (\ x__ y__ -> x__ {_Schedule'_unknownFields = y__})
  defMessage
    = Schedule'_constructor
        {_Schedule'spec = Prelude.Nothing,
         _Schedule'action = Prelude.Nothing,
         _Schedule'policies = Prelude.Nothing,
         _Schedule'state = Prelude.Nothing, _Schedule'_unknownFields = []}
  parseMessage
    = let
        loop :: Schedule -> Data.ProtoLens.Encoding.Bytes.Parser Schedule
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
                                       "spec"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"spec") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "action"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"action") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "policies"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"policies") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "state"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"state") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Schedule"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'spec") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'action") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'policies") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'state") _x
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
instance Control.DeepSeq.NFData Schedule where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Schedule'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Schedule'spec x__)
                (Control.DeepSeq.deepseq
                   (_Schedule'action x__)
                   (Control.DeepSeq.deepseq
                      (_Schedule'policies x__)
                      (Control.DeepSeq.deepseq (_Schedule'state x__) ()))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'action' @:: Lens' ScheduleAction (Prelude.Maybe ScheduleAction'Action)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'startWorkflow' @:: Lens' ScheduleAction (Prelude.Maybe Proto.Temporal.Api.Workflow.V1.Message.NewWorkflowExecutionInfo)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.startWorkflow' @:: Lens' ScheduleAction Proto.Temporal.Api.Workflow.V1.Message.NewWorkflowExecutionInfo@ -}
data ScheduleAction
  = ScheduleAction'_constructor {_ScheduleAction'action :: !(Prelude.Maybe ScheduleAction'Action),
                                 _ScheduleAction'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScheduleAction where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ScheduleAction'Action
  = ScheduleAction'StartWorkflow !Proto.Temporal.Api.Workflow.V1.Message.NewWorkflowExecutionInfo
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ScheduleAction "maybe'action" (Prelude.Maybe ScheduleAction'Action) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleAction'action
           (\ x__ y__ -> x__ {_ScheduleAction'action = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleAction "maybe'startWorkflow" (Prelude.Maybe Proto.Temporal.Api.Workflow.V1.Message.NewWorkflowExecutionInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleAction'action
           (\ x__ y__ -> x__ {_ScheduleAction'action = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ScheduleAction'StartWorkflow x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ScheduleAction'StartWorkflow y__))
instance Data.ProtoLens.Field.HasField ScheduleAction "startWorkflow" Proto.Temporal.Api.Workflow.V1.Message.NewWorkflowExecutionInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleAction'action
           (\ x__ y__ -> x__ {_ScheduleAction'action = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ScheduleAction'StartWorkflow x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ScheduleAction'StartWorkflow y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ScheduleAction where
  messageName _
    = Data.Text.pack "temporal.api.schedule.v1.ScheduleAction"
  packedMessageDescriptor _
    = "\n\
      \\SOScheduleAction\DC2[\n\
      \\SOstart_workflow\CAN\SOH \SOH(\v22.temporal.api.workflow.v1.NewWorkflowExecutionInfoH\NULR\rstartWorkflowB\b\n\
      \\ACKaction"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        startWorkflow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_workflow"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Workflow.V1.Message.NewWorkflowExecutionInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startWorkflow")) ::
              Data.ProtoLens.FieldDescriptor ScheduleAction
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, startWorkflow__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScheduleAction'_unknownFields
        (\ x__ y__ -> x__ {_ScheduleAction'_unknownFields = y__})
  defMessage
    = ScheduleAction'_constructor
        {_ScheduleAction'action = Prelude.Nothing,
         _ScheduleAction'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScheduleAction
          -> Data.ProtoLens.Encoding.Bytes.Parser ScheduleAction
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
                                       "start_workflow"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startWorkflow") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ScheduleAction"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'action") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (ScheduleAction'StartWorkflow v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ScheduleAction where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScheduleAction'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ScheduleAction'action x__) ())
instance Control.DeepSeq.NFData ScheduleAction'Action where
  rnf (ScheduleAction'StartWorkflow x__) = Control.DeepSeq.rnf x__
_ScheduleAction'StartWorkflow ::
  Data.ProtoLens.Prism.Prism' ScheduleAction'Action Proto.Temporal.Api.Workflow.V1.Message.NewWorkflowExecutionInfo
_ScheduleAction'StartWorkflow
  = Data.ProtoLens.Prism.prism'
      ScheduleAction'StartWorkflow
      (\ p__
         -> case p__ of
              (ScheduleAction'StartWorkflow p__val) -> Prelude.Just p__val)
{- | Fields :
     
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.scheduleTime' @:: Lens' ScheduleActionResult Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'scheduleTime' @:: Lens' ScheduleActionResult (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.actualTime' @:: Lens' ScheduleActionResult Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'actualTime' @:: Lens' ScheduleActionResult (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.startWorkflowResult' @:: Lens' ScheduleActionResult Proto.Temporal.Api.Common.V1.Message.WorkflowExecution@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'startWorkflowResult' @:: Lens' ScheduleActionResult (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowExecution)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.startWorkflowStatus' @:: Lens' ScheduleActionResult Proto.Temporal.Api.Enums.V1.Workflow.WorkflowExecutionStatus@ -}
data ScheduleActionResult
  = ScheduleActionResult'_constructor {_ScheduleActionResult'scheduleTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                       _ScheduleActionResult'actualTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                       _ScheduleActionResult'startWorkflowResult :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowExecution),
                                       _ScheduleActionResult'startWorkflowStatus :: !Proto.Temporal.Api.Enums.V1.Workflow.WorkflowExecutionStatus,
                                       _ScheduleActionResult'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScheduleActionResult where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScheduleActionResult "scheduleTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActionResult'scheduleTime
           (\ x__ y__ -> x__ {_ScheduleActionResult'scheduleTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleActionResult "maybe'scheduleTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActionResult'scheduleTime
           (\ x__ y__ -> x__ {_ScheduleActionResult'scheduleTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActionResult "actualTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActionResult'actualTime
           (\ x__ y__ -> x__ {_ScheduleActionResult'actualTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleActionResult "maybe'actualTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActionResult'actualTime
           (\ x__ y__ -> x__ {_ScheduleActionResult'actualTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActionResult "startWorkflowResult" Proto.Temporal.Api.Common.V1.Message.WorkflowExecution where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActionResult'startWorkflowResult
           (\ x__ y__
              -> x__ {_ScheduleActionResult'startWorkflowResult = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleActionResult "maybe'startWorkflowResult" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActionResult'startWorkflowResult
           (\ x__ y__
              -> x__ {_ScheduleActionResult'startWorkflowResult = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleActionResult "startWorkflowStatus" Proto.Temporal.Api.Enums.V1.Workflow.WorkflowExecutionStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleActionResult'startWorkflowStatus
           (\ x__ y__
              -> x__ {_ScheduleActionResult'startWorkflowStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScheduleActionResult where
  messageName _
    = Data.Text.pack "temporal.api.schedule.v1.ScheduleActionResult"
  packedMessageDescriptor _
    = "\n\
      \\DC4ScheduleActionResult\DC2?\n\
      \\rschedule_time\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\fscheduleTime\DC2;\n\
      \\vactual_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \actualTime\DC2]\n\
      \\NAKstart_workflow_result\CAN\v \SOH(\v2).temporal.api.common.v1.WorkflowExecutionR\DC3startWorkflowResult\DC2b\n\
      \\NAKstart_workflow_status\CAN\f \SOH(\SO2..temporal.api.enums.v1.WorkflowExecutionStatusR\DC3startWorkflowStatus"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        scheduleTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleTime")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActionResult
        actualTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "actual_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'actualTime")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActionResult
        startWorkflowResult__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_workflow_result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.WorkflowExecution)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startWorkflowResult")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActionResult
        startWorkflowStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_workflow_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Workflow.WorkflowExecutionStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"startWorkflowStatus")) ::
              Data.ProtoLens.FieldDescriptor ScheduleActionResult
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, scheduleTime__field_descriptor),
           (Data.ProtoLens.Tag 2, actualTime__field_descriptor),
           (Data.ProtoLens.Tag 11, startWorkflowResult__field_descriptor),
           (Data.ProtoLens.Tag 12, startWorkflowStatus__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScheduleActionResult'_unknownFields
        (\ x__ y__ -> x__ {_ScheduleActionResult'_unknownFields = y__})
  defMessage
    = ScheduleActionResult'_constructor
        {_ScheduleActionResult'scheduleTime = Prelude.Nothing,
         _ScheduleActionResult'actualTime = Prelude.Nothing,
         _ScheduleActionResult'startWorkflowResult = Prelude.Nothing,
         _ScheduleActionResult'startWorkflowStatus = Data.ProtoLens.fieldDefault,
         _ScheduleActionResult'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScheduleActionResult
          -> Data.ProtoLens.Encoding.Bytes.Parser ScheduleActionResult
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
                                       "schedule_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleTime") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "actual_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"actualTime") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_workflow_result"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startWorkflowResult") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "start_workflow_status"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startWorkflowStatus") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ScheduleActionResult"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'scheduleTime") _x
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
                       (Data.ProtoLens.Field.field @"maybe'actualTime") _x
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
                          (Data.ProtoLens.Field.field @"maybe'startWorkflowResult") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
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
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"startWorkflowStatus") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                               ((Prelude..)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                  Prelude.fromEnum _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ScheduleActionResult where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScheduleActionResult'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScheduleActionResult'scheduleTime x__)
                (Control.DeepSeq.deepseq
                   (_ScheduleActionResult'actualTime x__)
                   (Control.DeepSeq.deepseq
                      (_ScheduleActionResult'startWorkflowResult x__)
                      (Control.DeepSeq.deepseq
                         (_ScheduleActionResult'startWorkflowStatus x__) ()))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.actionCount' @:: Lens' ScheduleInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.missedCatchupWindow' @:: Lens' ScheduleInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.overlapSkipped' @:: Lens' ScheduleInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.bufferDropped' @:: Lens' ScheduleInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.bufferSize' @:: Lens' ScheduleInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.runningWorkflows' @:: Lens' ScheduleInfo [Proto.Temporal.Api.Common.V1.Message.WorkflowExecution]@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.vec'runningWorkflows' @:: Lens' ScheduleInfo (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.WorkflowExecution)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.recentActions' @:: Lens' ScheduleInfo [ScheduleActionResult]@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.vec'recentActions' @:: Lens' ScheduleInfo (Data.Vector.Vector ScheduleActionResult)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.futureActionTimes' @:: Lens' ScheduleInfo [Proto.Google.Protobuf.Timestamp.Timestamp]@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.vec'futureActionTimes' @:: Lens' ScheduleInfo (Data.Vector.Vector Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.createTime' @:: Lens' ScheduleInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'createTime' @:: Lens' ScheduleInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.updateTime' @:: Lens' ScheduleInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'updateTime' @:: Lens' ScheduleInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.invalidScheduleError' @:: Lens' ScheduleInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.stateSizeBytes' @:: Lens' ScheduleInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.timeSkippingInfo' @:: Lens' ScheduleInfo Proto.Temporal.Api.Common.V1.Message.TimeSkippingInfo@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'timeSkippingInfo' @:: Lens' ScheduleInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.TimeSkippingInfo)@ -}
data ScheduleInfo
  = ScheduleInfo'_constructor {_ScheduleInfo'actionCount :: !Data.Int.Int64,
                               _ScheduleInfo'missedCatchupWindow :: !Data.Int.Int64,
                               _ScheduleInfo'overlapSkipped :: !Data.Int.Int64,
                               _ScheduleInfo'bufferDropped :: !Data.Int.Int64,
                               _ScheduleInfo'bufferSize :: !Data.Int.Int64,
                               _ScheduleInfo'runningWorkflows :: !(Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.WorkflowExecution),
                               _ScheduleInfo'recentActions :: !(Data.Vector.Vector ScheduleActionResult),
                               _ScheduleInfo'futureActionTimes :: !(Data.Vector.Vector Proto.Google.Protobuf.Timestamp.Timestamp),
                               _ScheduleInfo'createTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                               _ScheduleInfo'updateTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                               _ScheduleInfo'invalidScheduleError :: !Data.Text.Text,
                               _ScheduleInfo'stateSizeBytes :: !Data.Int.Int64,
                               _ScheduleInfo'timeSkippingInfo :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.TimeSkippingInfo),
                               _ScheduleInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScheduleInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScheduleInfo "actionCount" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleInfo'actionCount
           (\ x__ y__ -> x__ {_ScheduleInfo'actionCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleInfo "missedCatchupWindow" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleInfo'missedCatchupWindow
           (\ x__ y__ -> x__ {_ScheduleInfo'missedCatchupWindow = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleInfo "overlapSkipped" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleInfo'overlapSkipped
           (\ x__ y__ -> x__ {_ScheduleInfo'overlapSkipped = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleInfo "bufferDropped" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleInfo'bufferDropped
           (\ x__ y__ -> x__ {_ScheduleInfo'bufferDropped = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleInfo "bufferSize" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleInfo'bufferSize
           (\ x__ y__ -> x__ {_ScheduleInfo'bufferSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleInfo "runningWorkflows" [Proto.Temporal.Api.Common.V1.Message.WorkflowExecution] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleInfo'runningWorkflows
           (\ x__ y__ -> x__ {_ScheduleInfo'runningWorkflows = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScheduleInfo "vec'runningWorkflows" (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.WorkflowExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleInfo'runningWorkflows
           (\ x__ y__ -> x__ {_ScheduleInfo'runningWorkflows = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleInfo "recentActions" [ScheduleActionResult] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleInfo'recentActions
           (\ x__ y__ -> x__ {_ScheduleInfo'recentActions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScheduleInfo "vec'recentActions" (Data.Vector.Vector ScheduleActionResult) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleInfo'recentActions
           (\ x__ y__ -> x__ {_ScheduleInfo'recentActions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleInfo "futureActionTimes" [Proto.Google.Protobuf.Timestamp.Timestamp] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleInfo'futureActionTimes
           (\ x__ y__ -> x__ {_ScheduleInfo'futureActionTimes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScheduleInfo "vec'futureActionTimes" (Data.Vector.Vector Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleInfo'futureActionTimes
           (\ x__ y__ -> x__ {_ScheduleInfo'futureActionTimes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleInfo "createTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleInfo'createTime
           (\ x__ y__ -> x__ {_ScheduleInfo'createTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleInfo "maybe'createTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleInfo'createTime
           (\ x__ y__ -> x__ {_ScheduleInfo'createTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleInfo "updateTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleInfo'updateTime
           (\ x__ y__ -> x__ {_ScheduleInfo'updateTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleInfo "maybe'updateTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleInfo'updateTime
           (\ x__ y__ -> x__ {_ScheduleInfo'updateTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleInfo "invalidScheduleError" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleInfo'invalidScheduleError
           (\ x__ y__ -> x__ {_ScheduleInfo'invalidScheduleError = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleInfo "stateSizeBytes" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleInfo'stateSizeBytes
           (\ x__ y__ -> x__ {_ScheduleInfo'stateSizeBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleInfo "timeSkippingInfo" Proto.Temporal.Api.Common.V1.Message.TimeSkippingInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleInfo'timeSkippingInfo
           (\ x__ y__ -> x__ {_ScheduleInfo'timeSkippingInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleInfo "maybe'timeSkippingInfo" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.TimeSkippingInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleInfo'timeSkippingInfo
           (\ x__ y__ -> x__ {_ScheduleInfo'timeSkippingInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScheduleInfo where
  messageName _
    = Data.Text.pack "temporal.api.schedule.v1.ScheduleInfo"
  packedMessageDescriptor _
    = "\n\
      \\fScheduleInfo\DC2!\n\
      \\faction_count\CAN\SOH \SOH(\ETXR\vactionCount\DC22\n\
      \\NAKmissed_catchup_window\CAN\STX \SOH(\ETXR\DC3missedCatchupWindow\DC2'\n\
      \\SIoverlap_skipped\CAN\ETX \SOH(\ETXR\SOoverlapSkipped\DC2%\n\
      \\SObuffer_dropped\CAN\n\
      \ \SOH(\ETXR\rbufferDropped\DC2\US\n\
      \\vbuffer_size\CAN\v \SOH(\ETXR\n\
      \bufferSize\DC2V\n\
      \\DC1running_workflows\CAN\t \ETX(\v2).temporal.api.common.v1.WorkflowExecutionR\DLErunningWorkflows\DC2U\n\
      \\SOrecent_actions\CAN\EOT \ETX(\v2..temporal.api.schedule.v1.ScheduleActionResultR\rrecentActions\DC2J\n\
      \\DC3future_action_times\CAN\ENQ \ETX(\v2\SUB.google.protobuf.TimestampR\DC1futureActionTimes\DC2;\n\
      \\vcreate_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \createTime\DC2;\n\
      \\vupdate_time\CAN\a \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \updateTime\DC28\n\
      \\SYNinvalid_schedule_error\CAN\b \SOH(\tR\DC4invalidScheduleErrorB\STX\CAN\SOH\DC2(\n\
      \\DLEstate_size_bytes\CAN\f \SOH(\ETXR\SOstateSizeBytes\DC2V\n\
      \\DC2time_skipping_info\CAN\r \SOH(\v2(.temporal.api.common.v1.TimeSkippingInfoR\DLEtimeSkippingInfo"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        actionCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "action_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"actionCount")) ::
              Data.ProtoLens.FieldDescriptor ScheduleInfo
        missedCatchupWindow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "missed_catchup_window"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"missedCatchupWindow")) ::
              Data.ProtoLens.FieldDescriptor ScheduleInfo
        overlapSkipped__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "overlap_skipped"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"overlapSkipped")) ::
              Data.ProtoLens.FieldDescriptor ScheduleInfo
        bufferDropped__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buffer_dropped"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bufferDropped")) ::
              Data.ProtoLens.FieldDescriptor ScheduleInfo
        bufferSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buffer_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bufferSize")) ::
              Data.ProtoLens.FieldDescriptor ScheduleInfo
        runningWorkflows__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "running_workflows"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.WorkflowExecution)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"runningWorkflows")) ::
              Data.ProtoLens.FieldDescriptor ScheduleInfo
        recentActions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "recent_actions"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScheduleActionResult)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"recentActions")) ::
              Data.ProtoLens.FieldDescriptor ScheduleInfo
        futureActionTimes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "future_action_times"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"futureActionTimes")) ::
              Data.ProtoLens.FieldDescriptor ScheduleInfo
        createTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "create_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'createTime")) ::
              Data.ProtoLens.FieldDescriptor ScheduleInfo
        updateTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "update_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'updateTime")) ::
              Data.ProtoLens.FieldDescriptor ScheduleInfo
        invalidScheduleError__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "invalid_schedule_error"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"invalidScheduleError")) ::
              Data.ProtoLens.FieldDescriptor ScheduleInfo
        stateSizeBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state_size_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stateSizeBytes")) ::
              Data.ProtoLens.FieldDescriptor ScheduleInfo
        timeSkippingInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time_skipping_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.TimeSkippingInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeSkippingInfo")) ::
              Data.ProtoLens.FieldDescriptor ScheduleInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, actionCount__field_descriptor),
           (Data.ProtoLens.Tag 2, missedCatchupWindow__field_descriptor),
           (Data.ProtoLens.Tag 3, overlapSkipped__field_descriptor),
           (Data.ProtoLens.Tag 10, bufferDropped__field_descriptor),
           (Data.ProtoLens.Tag 11, bufferSize__field_descriptor),
           (Data.ProtoLens.Tag 9, runningWorkflows__field_descriptor),
           (Data.ProtoLens.Tag 4, recentActions__field_descriptor),
           (Data.ProtoLens.Tag 5, futureActionTimes__field_descriptor),
           (Data.ProtoLens.Tag 6, createTime__field_descriptor),
           (Data.ProtoLens.Tag 7, updateTime__field_descriptor),
           (Data.ProtoLens.Tag 8, invalidScheduleError__field_descriptor),
           (Data.ProtoLens.Tag 12, stateSizeBytes__field_descriptor),
           (Data.ProtoLens.Tag 13, timeSkippingInfo__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScheduleInfo'_unknownFields
        (\ x__ y__ -> x__ {_ScheduleInfo'_unknownFields = y__})
  defMessage
    = ScheduleInfo'_constructor
        {_ScheduleInfo'actionCount = Data.ProtoLens.fieldDefault,
         _ScheduleInfo'missedCatchupWindow = Data.ProtoLens.fieldDefault,
         _ScheduleInfo'overlapSkipped = Data.ProtoLens.fieldDefault,
         _ScheduleInfo'bufferDropped = Data.ProtoLens.fieldDefault,
         _ScheduleInfo'bufferSize = Data.ProtoLens.fieldDefault,
         _ScheduleInfo'runningWorkflows = Data.Vector.Generic.empty,
         _ScheduleInfo'recentActions = Data.Vector.Generic.empty,
         _ScheduleInfo'futureActionTimes = Data.Vector.Generic.empty,
         _ScheduleInfo'createTime = Prelude.Nothing,
         _ScheduleInfo'updateTime = Prelude.Nothing,
         _ScheduleInfo'invalidScheduleError = Data.ProtoLens.fieldDefault,
         _ScheduleInfo'stateSizeBytes = Data.ProtoLens.fieldDefault,
         _ScheduleInfo'timeSkippingInfo = Prelude.Nothing,
         _ScheduleInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScheduleInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Timestamp.Timestamp
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ScheduleActionResult
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Common.V1.Message.WorkflowExecution
                   -> Data.ProtoLens.Encoding.Bytes.Parser ScheduleInfo
        loop
          x
          mutable'futureActionTimes
          mutable'recentActions
          mutable'runningWorkflows
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'futureActionTimes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                       mutable'futureActionTimes)
                      frozen'recentActions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'recentActions)
                      frozen'runningWorkflows <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'runningWorkflows)
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
                              (Data.ProtoLens.Field.field @"vec'futureActionTimes")
                              frozen'futureActionTimes
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'recentActions")
                                 frozen'recentActions
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'runningWorkflows")
                                    frozen'runningWorkflows x))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "action_count"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"actionCount") y x)
                                  mutable'futureActionTimes mutable'recentActions
                                  mutable'runningWorkflows
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "missed_catchup_window"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"missedCatchupWindow") y x)
                                  mutable'futureActionTimes mutable'recentActions
                                  mutable'runningWorkflows
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "overlap_skipped"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"overlapSkipped") y x)
                                  mutable'futureActionTimes mutable'recentActions
                                  mutable'runningWorkflows
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "buffer_dropped"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bufferDropped") y x)
                                  mutable'futureActionTimes mutable'recentActions
                                  mutable'runningWorkflows
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "buffer_size"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bufferSize") y x)
                                  mutable'futureActionTimes mutable'recentActions
                                  mutable'runningWorkflows
                        74
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "running_workflows"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'runningWorkflows y)
                                loop x mutable'futureActionTimes mutable'recentActions v
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "recent_actions"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'recentActions y)
                                loop x mutable'futureActionTimes v mutable'runningWorkflows
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "future_action_times"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'futureActionTimes y)
                                loop x v mutable'recentActions mutable'runningWorkflows
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "create_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"createTime") y x)
                                  mutable'futureActionTimes mutable'recentActions
                                  mutable'runningWorkflows
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "update_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"updateTime") y x)
                                  mutable'futureActionTimes mutable'recentActions
                                  mutable'runningWorkflows
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "invalid_schedule_error"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"invalidScheduleError") y x)
                                  mutable'futureActionTimes mutable'recentActions
                                  mutable'runningWorkflows
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "state_size_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stateSizeBytes") y x)
                                  mutable'futureActionTimes mutable'recentActions
                                  mutable'runningWorkflows
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "time_skipping_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timeSkippingInfo") y x)
                                  mutable'futureActionTimes mutable'recentActions
                                  mutable'runningWorkflows
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'futureActionTimes mutable'recentActions
                                  mutable'runningWorkflows
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'futureActionTimes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             Data.ProtoLens.Encoding.Growing.new
              mutable'recentActions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              mutable'runningWorkflows <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'futureActionTimes
                mutable'recentActions mutable'runningWorkflows)
          "ScheduleInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"actionCount") _x
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
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"missedCatchupWindow") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"overlapSkipped") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"bufferDropped") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"bufferSize") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                     _v))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
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
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'runningWorkflows") _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage _v))
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'recentActions") _x))
                               ((Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                     (\ _v
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                             ((Prelude..)
                                                (\ bs
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           (Prelude.fromIntegral
                                                              (Data.ByteString.length bs)))
                                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Data.ProtoLens.encodeMessage _v))
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"vec'futureActionTimes") _x))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'createTime") _x
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
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'updateTime") _x
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
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field
                                                       @"invalidScheduleError")
                                                    _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
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
                                                          @"stateSizeBytes")
                                                       _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                       ((Prelude..)
                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          Prelude.fromIntegral _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'timeSkippingInfo")
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
                                                 (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                    (Lens.Family2.view
                                                       Data.ProtoLens.unknownFields _x))))))))))))))
instance Control.DeepSeq.NFData ScheduleInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScheduleInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScheduleInfo'actionCount x__)
                (Control.DeepSeq.deepseq
                   (_ScheduleInfo'missedCatchupWindow x__)
                   (Control.DeepSeq.deepseq
                      (_ScheduleInfo'overlapSkipped x__)
                      (Control.DeepSeq.deepseq
                         (_ScheduleInfo'bufferDropped x__)
                         (Control.DeepSeq.deepseq
                            (_ScheduleInfo'bufferSize x__)
                            (Control.DeepSeq.deepseq
                               (_ScheduleInfo'runningWorkflows x__)
                               (Control.DeepSeq.deepseq
                                  (_ScheduleInfo'recentActions x__)
                                  (Control.DeepSeq.deepseq
                                     (_ScheduleInfo'futureActionTimes x__)
                                     (Control.DeepSeq.deepseq
                                        (_ScheduleInfo'createTime x__)
                                        (Control.DeepSeq.deepseq
                                           (_ScheduleInfo'updateTime x__)
                                           (Control.DeepSeq.deepseq
                                              (_ScheduleInfo'invalidScheduleError x__)
                                              (Control.DeepSeq.deepseq
                                                 (_ScheduleInfo'stateSizeBytes x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_ScheduleInfo'timeSkippingInfo x__)
                                                    ())))))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.scheduleId' @:: Lens' ScheduleListEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.memo' @:: Lens' ScheduleListEntry Proto.Temporal.Api.Common.V1.Message.Memo@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'memo' @:: Lens' ScheduleListEntry (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Memo)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.searchAttributes' @:: Lens' ScheduleListEntry Proto.Temporal.Api.Common.V1.Message.SearchAttributes@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'searchAttributes' @:: Lens' ScheduleListEntry (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.info' @:: Lens' ScheduleListEntry ScheduleListInfo@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'info' @:: Lens' ScheduleListEntry (Prelude.Maybe ScheduleListInfo)@ -}
data ScheduleListEntry
  = ScheduleListEntry'_constructor {_ScheduleListEntry'scheduleId :: !Data.Text.Text,
                                    _ScheduleListEntry'memo :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Memo),
                                    _ScheduleListEntry'searchAttributes :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes),
                                    _ScheduleListEntry'info :: !(Prelude.Maybe ScheduleListInfo),
                                    _ScheduleListEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScheduleListEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScheduleListEntry "scheduleId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleListEntry'scheduleId
           (\ x__ y__ -> x__ {_ScheduleListEntry'scheduleId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleListEntry "memo" Proto.Temporal.Api.Common.V1.Message.Memo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleListEntry'memo
           (\ x__ y__ -> x__ {_ScheduleListEntry'memo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleListEntry "maybe'memo" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Memo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleListEntry'memo
           (\ x__ y__ -> x__ {_ScheduleListEntry'memo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleListEntry "searchAttributes" Proto.Temporal.Api.Common.V1.Message.SearchAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleListEntry'searchAttributes
           (\ x__ y__ -> x__ {_ScheduleListEntry'searchAttributes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleListEntry "maybe'searchAttributes" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleListEntry'searchAttributes
           (\ x__ y__ -> x__ {_ScheduleListEntry'searchAttributes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleListEntry "info" ScheduleListInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleListEntry'info
           (\ x__ y__ -> x__ {_ScheduleListEntry'info = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleListEntry "maybe'info" (Prelude.Maybe ScheduleListInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleListEntry'info
           (\ x__ y__ -> x__ {_ScheduleListEntry'info = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScheduleListEntry where
  messageName _
    = Data.Text.pack "temporal.api.schedule.v1.ScheduleListEntry"
  packedMessageDescriptor _
    = "\n\
      \\DC1ScheduleListEntry\DC2\US\n\
      \\vschedule_id\CAN\SOH \SOH(\tR\n\
      \scheduleId\DC20\n\
      \\EOTmemo\CAN\STX \SOH(\v2\FS.temporal.api.common.v1.MemoR\EOTmemo\DC2U\n\
      \\DC1search_attributes\CAN\ETX \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC2>\n\
      \\EOTinfo\CAN\EOT \SOH(\v2*.temporal.api.schedule.v1.ScheduleListInfoR\EOTinfo"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        scheduleId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"scheduleId")) ::
              Data.ProtoLens.FieldDescriptor ScheduleListEntry
        memo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "memo"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Memo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'memo")) ::
              Data.ProtoLens.FieldDescriptor ScheduleListEntry
        searchAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "search_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.SearchAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'searchAttributes")) ::
              Data.ProtoLens.FieldDescriptor ScheduleListEntry
        info__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScheduleListInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'info")) ::
              Data.ProtoLens.FieldDescriptor ScheduleListEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, scheduleId__field_descriptor),
           (Data.ProtoLens.Tag 2, memo__field_descriptor),
           (Data.ProtoLens.Tag 3, searchAttributes__field_descriptor),
           (Data.ProtoLens.Tag 4, info__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScheduleListEntry'_unknownFields
        (\ x__ y__ -> x__ {_ScheduleListEntry'_unknownFields = y__})
  defMessage
    = ScheduleListEntry'_constructor
        {_ScheduleListEntry'scheduleId = Data.ProtoLens.fieldDefault,
         _ScheduleListEntry'memo = Prelude.Nothing,
         _ScheduleListEntry'searchAttributes = Prelude.Nothing,
         _ScheduleListEntry'info = Prelude.Nothing,
         _ScheduleListEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScheduleListEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser ScheduleListEntry
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
                                       "schedule_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"scheduleId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "memo"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"memo") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "search_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"searchAttributes") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "info"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"info") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ScheduleListEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"scheduleId") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'memo") _x
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
                          (Data.ProtoLens.Field.field @"maybe'searchAttributes") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'info") _x
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
instance Control.DeepSeq.NFData ScheduleListEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScheduleListEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScheduleListEntry'scheduleId x__)
                (Control.DeepSeq.deepseq
                   (_ScheduleListEntry'memo x__)
                   (Control.DeepSeq.deepseq
                      (_ScheduleListEntry'searchAttributes x__)
                      (Control.DeepSeq.deepseq (_ScheduleListEntry'info x__) ()))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.spec' @:: Lens' ScheduleListInfo ScheduleSpec@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'spec' @:: Lens' ScheduleListInfo (Prelude.Maybe ScheduleSpec)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.workflowType' @:: Lens' ScheduleListInfo Proto.Temporal.Api.Common.V1.Message.WorkflowType@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'workflowType' @:: Lens' ScheduleListInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowType)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.notes' @:: Lens' ScheduleListInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.paused' @:: Lens' ScheduleListInfo Prelude.Bool@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.recentActions' @:: Lens' ScheduleListInfo [ScheduleActionResult]@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.vec'recentActions' @:: Lens' ScheduleListInfo (Data.Vector.Vector ScheduleActionResult)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.futureActionTimes' @:: Lens' ScheduleListInfo [Proto.Google.Protobuf.Timestamp.Timestamp]@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.vec'futureActionTimes' @:: Lens' ScheduleListInfo (Data.Vector.Vector Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.stateSizeBytes' @:: Lens' ScheduleListInfo Data.Int.Int64@ -}
data ScheduleListInfo
  = ScheduleListInfo'_constructor {_ScheduleListInfo'spec :: !(Prelude.Maybe ScheduleSpec),
                                   _ScheduleListInfo'workflowType :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowType),
                                   _ScheduleListInfo'notes :: !Data.Text.Text,
                                   _ScheduleListInfo'paused :: !Prelude.Bool,
                                   _ScheduleListInfo'recentActions :: !(Data.Vector.Vector ScheduleActionResult),
                                   _ScheduleListInfo'futureActionTimes :: !(Data.Vector.Vector Proto.Google.Protobuf.Timestamp.Timestamp),
                                   _ScheduleListInfo'stateSizeBytes :: !Data.Int.Int64,
                                   _ScheduleListInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScheduleListInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScheduleListInfo "spec" ScheduleSpec where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleListInfo'spec
           (\ x__ y__ -> x__ {_ScheduleListInfo'spec = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleListInfo "maybe'spec" (Prelude.Maybe ScheduleSpec) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleListInfo'spec
           (\ x__ y__ -> x__ {_ScheduleListInfo'spec = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleListInfo "workflowType" Proto.Temporal.Api.Common.V1.Message.WorkflowType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleListInfo'workflowType
           (\ x__ y__ -> x__ {_ScheduleListInfo'workflowType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleListInfo "maybe'workflowType" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleListInfo'workflowType
           (\ x__ y__ -> x__ {_ScheduleListInfo'workflowType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleListInfo "notes" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleListInfo'notes
           (\ x__ y__ -> x__ {_ScheduleListInfo'notes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleListInfo "paused" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleListInfo'paused
           (\ x__ y__ -> x__ {_ScheduleListInfo'paused = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleListInfo "recentActions" [ScheduleActionResult] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleListInfo'recentActions
           (\ x__ y__ -> x__ {_ScheduleListInfo'recentActions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScheduleListInfo "vec'recentActions" (Data.Vector.Vector ScheduleActionResult) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleListInfo'recentActions
           (\ x__ y__ -> x__ {_ScheduleListInfo'recentActions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleListInfo "futureActionTimes" [Proto.Google.Protobuf.Timestamp.Timestamp] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleListInfo'futureActionTimes
           (\ x__ y__ -> x__ {_ScheduleListInfo'futureActionTimes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScheduleListInfo "vec'futureActionTimes" (Data.Vector.Vector Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleListInfo'futureActionTimes
           (\ x__ y__ -> x__ {_ScheduleListInfo'futureActionTimes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleListInfo "stateSizeBytes" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleListInfo'stateSizeBytes
           (\ x__ y__ -> x__ {_ScheduleListInfo'stateSizeBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScheduleListInfo where
  messageName _
    = Data.Text.pack "temporal.api.schedule.v1.ScheduleListInfo"
  packedMessageDescriptor _
    = "\n\
      \\DLEScheduleListInfo\DC2:\n\
      \\EOTspec\CAN\SOH \SOH(\v2&.temporal.api.schedule.v1.ScheduleSpecR\EOTspec\DC2I\n\
      \\rworkflow_type\CAN\STX \SOH(\v2$.temporal.api.common.v1.WorkflowTypeR\fworkflowType\DC2\DC4\n\
      \\ENQnotes\CAN\ETX \SOH(\tR\ENQnotes\DC2\SYN\n\
      \\ACKpaused\CAN\EOT \SOH(\bR\ACKpaused\DC2U\n\
      \\SOrecent_actions\CAN\ENQ \ETX(\v2..temporal.api.schedule.v1.ScheduleActionResultR\rrecentActions\DC2J\n\
      \\DC3future_action_times\CAN\ACK \ETX(\v2\SUB.google.protobuf.TimestampR\DC1futureActionTimes\DC2(\n\
      \\DLEstate_size_bytes\CAN\a \SOH(\ETXR\SOstateSizeBytes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        spec__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "spec"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScheduleSpec)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'spec")) ::
              Data.ProtoLens.FieldDescriptor ScheduleListInfo
        workflowType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.WorkflowType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowType")) ::
              Data.ProtoLens.FieldDescriptor ScheduleListInfo
        notes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "notes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"notes")) ::
              Data.ProtoLens.FieldDescriptor ScheduleListInfo
        paused__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "paused"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"paused")) ::
              Data.ProtoLens.FieldDescriptor ScheduleListInfo
        recentActions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "recent_actions"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScheduleActionResult)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"recentActions")) ::
              Data.ProtoLens.FieldDescriptor ScheduleListInfo
        futureActionTimes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "future_action_times"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"futureActionTimes")) ::
              Data.ProtoLens.FieldDescriptor ScheduleListInfo
        stateSizeBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state_size_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stateSizeBytes")) ::
              Data.ProtoLens.FieldDescriptor ScheduleListInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, spec__field_descriptor),
           (Data.ProtoLens.Tag 2, workflowType__field_descriptor),
           (Data.ProtoLens.Tag 3, notes__field_descriptor),
           (Data.ProtoLens.Tag 4, paused__field_descriptor),
           (Data.ProtoLens.Tag 5, recentActions__field_descriptor),
           (Data.ProtoLens.Tag 6, futureActionTimes__field_descriptor),
           (Data.ProtoLens.Tag 7, stateSizeBytes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScheduleListInfo'_unknownFields
        (\ x__ y__ -> x__ {_ScheduleListInfo'_unknownFields = y__})
  defMessage
    = ScheduleListInfo'_constructor
        {_ScheduleListInfo'spec = Prelude.Nothing,
         _ScheduleListInfo'workflowType = Prelude.Nothing,
         _ScheduleListInfo'notes = Data.ProtoLens.fieldDefault,
         _ScheduleListInfo'paused = Data.ProtoLens.fieldDefault,
         _ScheduleListInfo'recentActions = Data.Vector.Generic.empty,
         _ScheduleListInfo'futureActionTimes = Data.Vector.Generic.empty,
         _ScheduleListInfo'stateSizeBytes = Data.ProtoLens.fieldDefault,
         _ScheduleListInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScheduleListInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Timestamp.Timestamp
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ScheduleActionResult
                -> Data.ProtoLens.Encoding.Bytes.Parser ScheduleListInfo
        loop x mutable'futureActionTimes mutable'recentActions
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'futureActionTimes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                       mutable'futureActionTimes)
                      frozen'recentActions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'recentActions)
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
                              (Data.ProtoLens.Field.field @"vec'futureActionTimes")
                              frozen'futureActionTimes
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'recentActions")
                                 frozen'recentActions x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "spec"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"spec") y x)
                                  mutable'futureActionTimes mutable'recentActions
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowType") y x)
                                  mutable'futureActionTimes mutable'recentActions
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "notes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"notes") y x)
                                  mutable'futureActionTimes mutable'recentActions
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "paused"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"paused") y x)
                                  mutable'futureActionTimes mutable'recentActions
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "recent_actions"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'recentActions y)
                                loop x mutable'futureActionTimes v
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "future_action_times"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'futureActionTimes y)
                                loop x v mutable'recentActions
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "state_size_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stateSizeBytes") y x)
                                  mutable'futureActionTimes mutable'recentActions
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'futureActionTimes mutable'recentActions
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'futureActionTimes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             Data.ProtoLens.Encoding.Growing.new
              mutable'recentActions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'futureActionTimes
                mutable'recentActions)
          "ScheduleListInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'spec") _x
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
                       (Data.ProtoLens.Field.field @"maybe'workflowType") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"notes") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"paused") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0) _v))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'recentActions") _x))
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
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'futureActionTimes") _x))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"stateSizeBytes") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           Prelude.fromIntegral _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData ScheduleListInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScheduleListInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScheduleListInfo'spec x__)
                (Control.DeepSeq.deepseq
                   (_ScheduleListInfo'workflowType x__)
                   (Control.DeepSeq.deepseq
                      (_ScheduleListInfo'notes x__)
                      (Control.DeepSeq.deepseq
                         (_ScheduleListInfo'paused x__)
                         (Control.DeepSeq.deepseq
                            (_ScheduleListInfo'recentActions x__)
                            (Control.DeepSeq.deepseq
                               (_ScheduleListInfo'futureActionTimes x__)
                               (Control.DeepSeq.deepseq
                                  (_ScheduleListInfo'stateSizeBytes x__) ())))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.triggerImmediately' @:: Lens' SchedulePatch TriggerImmediatelyRequest@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'triggerImmediately' @:: Lens' SchedulePatch (Prelude.Maybe TriggerImmediatelyRequest)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.backfillRequest' @:: Lens' SchedulePatch [BackfillRequest]@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.vec'backfillRequest' @:: Lens' SchedulePatch (Data.Vector.Vector BackfillRequest)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.pause' @:: Lens' SchedulePatch Data.Text.Text@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.unpause' @:: Lens' SchedulePatch Data.Text.Text@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.timeSkippingConfig' @:: Lens' SchedulePatch Proto.Temporal.Api.Common.V1.Message.TimeSkippingConfig@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'timeSkippingConfig' @:: Lens' SchedulePatch (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.TimeSkippingConfig)@ -}
data SchedulePatch
  = SchedulePatch'_constructor {_SchedulePatch'triggerImmediately :: !(Prelude.Maybe TriggerImmediatelyRequest),
                                _SchedulePatch'backfillRequest :: !(Data.Vector.Vector BackfillRequest),
                                _SchedulePatch'pause :: !Data.Text.Text,
                                _SchedulePatch'unpause :: !Data.Text.Text,
                                _SchedulePatch'timeSkippingConfig :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.TimeSkippingConfig),
                                _SchedulePatch'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SchedulePatch where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SchedulePatch "triggerImmediately" TriggerImmediatelyRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedulePatch'triggerImmediately
           (\ x__ y__ -> x__ {_SchedulePatch'triggerImmediately = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SchedulePatch "maybe'triggerImmediately" (Prelude.Maybe TriggerImmediatelyRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedulePatch'triggerImmediately
           (\ x__ y__ -> x__ {_SchedulePatch'triggerImmediately = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedulePatch "backfillRequest" [BackfillRequest] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedulePatch'backfillRequest
           (\ x__ y__ -> x__ {_SchedulePatch'backfillRequest = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SchedulePatch "vec'backfillRequest" (Data.Vector.Vector BackfillRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedulePatch'backfillRequest
           (\ x__ y__ -> x__ {_SchedulePatch'backfillRequest = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedulePatch "pause" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedulePatch'pause
           (\ x__ y__ -> x__ {_SchedulePatch'pause = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedulePatch "unpause" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedulePatch'unpause
           (\ x__ y__ -> x__ {_SchedulePatch'unpause = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedulePatch "timeSkippingConfig" Proto.Temporal.Api.Common.V1.Message.TimeSkippingConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedulePatch'timeSkippingConfig
           (\ x__ y__ -> x__ {_SchedulePatch'timeSkippingConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SchedulePatch "maybe'timeSkippingConfig" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.TimeSkippingConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedulePatch'timeSkippingConfig
           (\ x__ y__ -> x__ {_SchedulePatch'timeSkippingConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message SchedulePatch where
  messageName _
    = Data.Text.pack "temporal.api.schedule.v1.SchedulePatch"
  packedMessageDescriptor _
    = "\n\
      \\rSchedulePatch\DC2d\n\
      \\DC3trigger_immediately\CAN\SOH \SOH(\v23.temporal.api.schedule.v1.TriggerImmediatelyRequestR\DC2triggerImmediately\DC2T\n\
      \\DLEbackfill_request\CAN\STX \ETX(\v2).temporal.api.schedule.v1.BackfillRequestR\SIbackfillRequest\DC2\DC4\n\
      \\ENQpause\CAN\ETX \SOH(\tR\ENQpause\DC2\CAN\n\
      \\aunpause\CAN\EOT \SOH(\tR\aunpause\DC2\\\n\
      \\DC4time_skipping_config\CAN\ENQ \SOH(\v2*.temporal.api.common.v1.TimeSkippingConfigR\DC2timeSkippingConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        triggerImmediately__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trigger_immediately"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TriggerImmediatelyRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'triggerImmediately")) ::
              Data.ProtoLens.FieldDescriptor SchedulePatch
        backfillRequest__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "backfill_request"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BackfillRequest)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"backfillRequest")) ::
              Data.ProtoLens.FieldDescriptor SchedulePatch
        pause__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pause"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"pause")) ::
              Data.ProtoLens.FieldDescriptor SchedulePatch
        unpause__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unpause"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"unpause")) ::
              Data.ProtoLens.FieldDescriptor SchedulePatch
        timeSkippingConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time_skipping_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.TimeSkippingConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeSkippingConfig")) ::
              Data.ProtoLens.FieldDescriptor SchedulePatch
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, triggerImmediately__field_descriptor),
           (Data.ProtoLens.Tag 2, backfillRequest__field_descriptor),
           (Data.ProtoLens.Tag 3, pause__field_descriptor),
           (Data.ProtoLens.Tag 4, unpause__field_descriptor),
           (Data.ProtoLens.Tag 5, timeSkippingConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SchedulePatch'_unknownFields
        (\ x__ y__ -> x__ {_SchedulePatch'_unknownFields = y__})
  defMessage
    = SchedulePatch'_constructor
        {_SchedulePatch'triggerImmediately = Prelude.Nothing,
         _SchedulePatch'backfillRequest = Data.Vector.Generic.empty,
         _SchedulePatch'pause = Data.ProtoLens.fieldDefault,
         _SchedulePatch'unpause = Data.ProtoLens.fieldDefault,
         _SchedulePatch'timeSkippingConfig = Prelude.Nothing,
         _SchedulePatch'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SchedulePatch
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld BackfillRequest
             -> Data.ProtoLens.Encoding.Bytes.Parser SchedulePatch
        loop x mutable'backfillRequest
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'backfillRequest <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'backfillRequest)
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
                              (Data.ProtoLens.Field.field @"vec'backfillRequest")
                              frozen'backfillRequest x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "trigger_immediately"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"triggerImmediately") y x)
                                  mutable'backfillRequest
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "backfill_request"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'backfillRequest y)
                                loop x v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "pause"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pause") y x)
                                  mutable'backfillRequest
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "unpause"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"unpause") y x)
                                  mutable'backfillRequest
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "time_skipping_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timeSkippingConfig") y x)
                                  mutable'backfillRequest
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'backfillRequest
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'backfillRequest <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'backfillRequest)
          "SchedulePatch"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'triggerImmediately") _x
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
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'backfillRequest") _x))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"pause") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"unpause") _x
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
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'timeSkippingConfig") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData SchedulePatch where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SchedulePatch'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SchedulePatch'triggerImmediately x__)
                (Control.DeepSeq.deepseq
                   (_SchedulePatch'backfillRequest x__)
                   (Control.DeepSeq.deepseq
                      (_SchedulePatch'pause x__)
                      (Control.DeepSeq.deepseq
                         (_SchedulePatch'unpause x__)
                         (Control.DeepSeq.deepseq
                            (_SchedulePatch'timeSkippingConfig x__) ())))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.overlapPolicy' @:: Lens' SchedulePolicies Proto.Temporal.Api.Enums.V1.Schedule.ScheduleOverlapPolicy@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.catchupWindow' @:: Lens' SchedulePolicies Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'catchupWindow' @:: Lens' SchedulePolicies (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.pauseOnFailure' @:: Lens' SchedulePolicies Prelude.Bool@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.keepOriginalWorkflowId' @:: Lens' SchedulePolicies Prelude.Bool@ -}
data SchedulePolicies
  = SchedulePolicies'_constructor {_SchedulePolicies'overlapPolicy :: !Proto.Temporal.Api.Enums.V1.Schedule.ScheduleOverlapPolicy,
                                   _SchedulePolicies'catchupWindow :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                   _SchedulePolicies'pauseOnFailure :: !Prelude.Bool,
                                   _SchedulePolicies'keepOriginalWorkflowId :: !Prelude.Bool,
                                   _SchedulePolicies'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SchedulePolicies where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SchedulePolicies "overlapPolicy" Proto.Temporal.Api.Enums.V1.Schedule.ScheduleOverlapPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedulePolicies'overlapPolicy
           (\ x__ y__ -> x__ {_SchedulePolicies'overlapPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedulePolicies "catchupWindow" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedulePolicies'catchupWindow
           (\ x__ y__ -> x__ {_SchedulePolicies'catchupWindow = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SchedulePolicies "maybe'catchupWindow" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedulePolicies'catchupWindow
           (\ x__ y__ -> x__ {_SchedulePolicies'catchupWindow = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedulePolicies "pauseOnFailure" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedulePolicies'pauseOnFailure
           (\ x__ y__ -> x__ {_SchedulePolicies'pauseOnFailure = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedulePolicies "keepOriginalWorkflowId" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedulePolicies'keepOriginalWorkflowId
           (\ x__ y__
              -> x__ {_SchedulePolicies'keepOriginalWorkflowId = y__}))
        Prelude.id
instance Data.ProtoLens.Message SchedulePolicies where
  messageName _
    = Data.Text.pack "temporal.api.schedule.v1.SchedulePolicies"
  packedMessageDescriptor _
    = "\n\
      \\DLESchedulePolicies\DC2S\n\
      \\SOoverlap_policy\CAN\SOH \SOH(\SO2,.temporal.api.enums.v1.ScheduleOverlapPolicyR\roverlapPolicy\DC2@\n\
      \\SOcatchup_window\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\rcatchupWindow\DC2(\n\
      \\DLEpause_on_failure\CAN\ETX \SOH(\bR\SOpauseOnFailure\DC29\n\
      \\EMkeep_original_workflow_id\CAN\EOT \SOH(\bR\SYNkeepOriginalWorkflowId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        overlapPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "overlap_policy"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Schedule.ScheduleOverlapPolicy)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"overlapPolicy")) ::
              Data.ProtoLens.FieldDescriptor SchedulePolicies
        catchupWindow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "catchup_window"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'catchupWindow")) ::
              Data.ProtoLens.FieldDescriptor SchedulePolicies
        pauseOnFailure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pause_on_failure"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"pauseOnFailure")) ::
              Data.ProtoLens.FieldDescriptor SchedulePolicies
        keepOriginalWorkflowId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "keep_original_workflow_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"keepOriginalWorkflowId")) ::
              Data.ProtoLens.FieldDescriptor SchedulePolicies
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, overlapPolicy__field_descriptor),
           (Data.ProtoLens.Tag 2, catchupWindow__field_descriptor),
           (Data.ProtoLens.Tag 3, pauseOnFailure__field_descriptor),
           (Data.ProtoLens.Tag 4, keepOriginalWorkflowId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SchedulePolicies'_unknownFields
        (\ x__ y__ -> x__ {_SchedulePolicies'_unknownFields = y__})
  defMessage
    = SchedulePolicies'_constructor
        {_SchedulePolicies'overlapPolicy = Data.ProtoLens.fieldDefault,
         _SchedulePolicies'catchupWindow = Prelude.Nothing,
         _SchedulePolicies'pauseOnFailure = Data.ProtoLens.fieldDefault,
         _SchedulePolicies'keepOriginalWorkflowId = Data.ProtoLens.fieldDefault,
         _SchedulePolicies'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SchedulePolicies
          -> Data.ProtoLens.Encoding.Bytes.Parser SchedulePolicies
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
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "overlap_policy"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"overlapPolicy") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "catchup_window"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"catchupWindow") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pause_on_failure"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"pauseOnFailure") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "keep_original_workflow_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"keepOriginalWorkflowId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SchedulePolicies"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"overlapPolicy") _x
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
                       (Data.ProtoLens.Field.field @"maybe'catchupWindow") _x
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
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"pauseOnFailure") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                               _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"keepOriginalWorkflowId") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0) _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData SchedulePolicies where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SchedulePolicies'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SchedulePolicies'overlapPolicy x__)
                (Control.DeepSeq.deepseq
                   (_SchedulePolicies'catchupWindow x__)
                   (Control.DeepSeq.deepseq
                      (_SchedulePolicies'pauseOnFailure x__)
                      (Control.DeepSeq.deepseq
                         (_SchedulePolicies'keepOriginalWorkflowId x__) ()))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.structuredCalendar' @:: Lens' ScheduleSpec [StructuredCalendarSpec]@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.vec'structuredCalendar' @:: Lens' ScheduleSpec (Data.Vector.Vector StructuredCalendarSpec)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.cronString' @:: Lens' ScheduleSpec [Data.Text.Text]@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.vec'cronString' @:: Lens' ScheduleSpec (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.calendar' @:: Lens' ScheduleSpec [CalendarSpec]@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.vec'calendar' @:: Lens' ScheduleSpec (Data.Vector.Vector CalendarSpec)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.interval' @:: Lens' ScheduleSpec [IntervalSpec]@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.vec'interval' @:: Lens' ScheduleSpec (Data.Vector.Vector IntervalSpec)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.excludeCalendar' @:: Lens' ScheduleSpec [CalendarSpec]@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.vec'excludeCalendar' @:: Lens' ScheduleSpec (Data.Vector.Vector CalendarSpec)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.excludeStructuredCalendar' @:: Lens' ScheduleSpec [StructuredCalendarSpec]@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.vec'excludeStructuredCalendar' @:: Lens' ScheduleSpec (Data.Vector.Vector StructuredCalendarSpec)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.startTime' @:: Lens' ScheduleSpec Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'startTime' @:: Lens' ScheduleSpec (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.endTime' @:: Lens' ScheduleSpec Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'endTime' @:: Lens' ScheduleSpec (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.jitter' @:: Lens' ScheduleSpec Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'jitter' @:: Lens' ScheduleSpec (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.timezoneName' @:: Lens' ScheduleSpec Data.Text.Text@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.timezoneData' @:: Lens' ScheduleSpec Data.ByteString.ByteString@ -}
data ScheduleSpec
  = ScheduleSpec'_constructor {_ScheduleSpec'structuredCalendar :: !(Data.Vector.Vector StructuredCalendarSpec),
                               _ScheduleSpec'cronString :: !(Data.Vector.Vector Data.Text.Text),
                               _ScheduleSpec'calendar :: !(Data.Vector.Vector CalendarSpec),
                               _ScheduleSpec'interval :: !(Data.Vector.Vector IntervalSpec),
                               _ScheduleSpec'excludeCalendar :: !(Data.Vector.Vector CalendarSpec),
                               _ScheduleSpec'excludeStructuredCalendar :: !(Data.Vector.Vector StructuredCalendarSpec),
                               _ScheduleSpec'startTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                               _ScheduleSpec'endTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                               _ScheduleSpec'jitter :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                               _ScheduleSpec'timezoneName :: !Data.Text.Text,
                               _ScheduleSpec'timezoneData :: !Data.ByteString.ByteString,
                               _ScheduleSpec'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScheduleSpec where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScheduleSpec "structuredCalendar" [StructuredCalendarSpec] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleSpec'structuredCalendar
           (\ x__ y__ -> x__ {_ScheduleSpec'structuredCalendar = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScheduleSpec "vec'structuredCalendar" (Data.Vector.Vector StructuredCalendarSpec) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleSpec'structuredCalendar
           (\ x__ y__ -> x__ {_ScheduleSpec'structuredCalendar = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleSpec "cronString" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleSpec'cronString
           (\ x__ y__ -> x__ {_ScheduleSpec'cronString = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScheduleSpec "vec'cronString" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleSpec'cronString
           (\ x__ y__ -> x__ {_ScheduleSpec'cronString = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleSpec "calendar" [CalendarSpec] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleSpec'calendar
           (\ x__ y__ -> x__ {_ScheduleSpec'calendar = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScheduleSpec "vec'calendar" (Data.Vector.Vector CalendarSpec) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleSpec'calendar
           (\ x__ y__ -> x__ {_ScheduleSpec'calendar = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleSpec "interval" [IntervalSpec] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleSpec'interval
           (\ x__ y__ -> x__ {_ScheduleSpec'interval = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScheduleSpec "vec'interval" (Data.Vector.Vector IntervalSpec) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleSpec'interval
           (\ x__ y__ -> x__ {_ScheduleSpec'interval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleSpec "excludeCalendar" [CalendarSpec] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleSpec'excludeCalendar
           (\ x__ y__ -> x__ {_ScheduleSpec'excludeCalendar = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScheduleSpec "vec'excludeCalendar" (Data.Vector.Vector CalendarSpec) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleSpec'excludeCalendar
           (\ x__ y__ -> x__ {_ScheduleSpec'excludeCalendar = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleSpec "excludeStructuredCalendar" [StructuredCalendarSpec] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleSpec'excludeStructuredCalendar
           (\ x__ y__ -> x__ {_ScheduleSpec'excludeStructuredCalendar = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScheduleSpec "vec'excludeStructuredCalendar" (Data.Vector.Vector StructuredCalendarSpec) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleSpec'excludeStructuredCalendar
           (\ x__ y__ -> x__ {_ScheduleSpec'excludeStructuredCalendar = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleSpec "startTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleSpec'startTime
           (\ x__ y__ -> x__ {_ScheduleSpec'startTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleSpec "maybe'startTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleSpec'startTime
           (\ x__ y__ -> x__ {_ScheduleSpec'startTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleSpec "endTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleSpec'endTime
           (\ x__ y__ -> x__ {_ScheduleSpec'endTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleSpec "maybe'endTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleSpec'endTime
           (\ x__ y__ -> x__ {_ScheduleSpec'endTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleSpec "jitter" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleSpec'jitter
           (\ x__ y__ -> x__ {_ScheduleSpec'jitter = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScheduleSpec "maybe'jitter" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleSpec'jitter
           (\ x__ y__ -> x__ {_ScheduleSpec'jitter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleSpec "timezoneName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleSpec'timezoneName
           (\ x__ y__ -> x__ {_ScheduleSpec'timezoneName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleSpec "timezoneData" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleSpec'timezoneData
           (\ x__ y__ -> x__ {_ScheduleSpec'timezoneData = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScheduleSpec where
  messageName _
    = Data.Text.pack "temporal.api.schedule.v1.ScheduleSpec"
  packedMessageDescriptor _
    = "\n\
      \\fScheduleSpec\DC2a\n\
      \\DC3structured_calendar\CAN\a \ETX(\v20.temporal.api.schedule.v1.StructuredCalendarSpecR\DC2structuredCalendar\DC2\US\n\
      \\vcron_string\CAN\b \ETX(\tR\n\
      \cronString\DC2B\n\
      \\bcalendar\CAN\SOH \ETX(\v2&.temporal.api.schedule.v1.CalendarSpecR\bcalendar\DC2B\n\
      \\binterval\CAN\STX \ETX(\v2&.temporal.api.schedule.v1.IntervalSpecR\binterval\DC2U\n\
      \\DLEexclude_calendar\CAN\ETX \ETX(\v2&.temporal.api.schedule.v1.CalendarSpecR\SIexcludeCalendarB\STX\CAN\SOH\DC2p\n\
      \\ESCexclude_structured_calendar\CAN\t \ETX(\v20.temporal.api.schedule.v1.StructuredCalendarSpecR\EMexcludeStructuredCalendar\DC29\n\
      \\n\
      \start_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\tstartTime\DC25\n\
      \\bend_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\aendTime\DC21\n\
      \\ACKjitter\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\ACKjitter\DC2#\n\
      \\rtimezone_name\CAN\n\
      \ \SOH(\tR\ftimezoneName\DC2#\n\
      \\rtimezone_data\CAN\v \SOH(\fR\ftimezoneData"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        structuredCalendar__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "structured_calendar"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StructuredCalendarSpec)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"structuredCalendar")) ::
              Data.ProtoLens.FieldDescriptor ScheduleSpec
        cronString__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cron_string"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"cronString")) ::
              Data.ProtoLens.FieldDescriptor ScheduleSpec
        calendar__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "calendar"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CalendarSpec)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"calendar")) ::
              Data.ProtoLens.FieldDescriptor ScheduleSpec
        interval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor IntervalSpec)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"interval")) ::
              Data.ProtoLens.FieldDescriptor ScheduleSpec
        excludeCalendar__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exclude_calendar"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CalendarSpec)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"excludeCalendar")) ::
              Data.ProtoLens.FieldDescriptor ScheduleSpec
        excludeStructuredCalendar__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exclude_structured_calendar"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StructuredCalendarSpec)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"excludeStructuredCalendar")) ::
              Data.ProtoLens.FieldDescriptor ScheduleSpec
        startTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startTime")) ::
              Data.ProtoLens.FieldDescriptor ScheduleSpec
        endTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'endTime")) ::
              Data.ProtoLens.FieldDescriptor ScheduleSpec
        jitter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "jitter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'jitter")) ::
              Data.ProtoLens.FieldDescriptor ScheduleSpec
        timezoneName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timezone_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"timezoneName")) ::
              Data.ProtoLens.FieldDescriptor ScheduleSpec
        timezoneData__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timezone_data"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"timezoneData")) ::
              Data.ProtoLens.FieldDescriptor ScheduleSpec
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 7, structuredCalendar__field_descriptor),
           (Data.ProtoLens.Tag 8, cronString__field_descriptor),
           (Data.ProtoLens.Tag 1, calendar__field_descriptor),
           (Data.ProtoLens.Tag 2, interval__field_descriptor),
           (Data.ProtoLens.Tag 3, excludeCalendar__field_descriptor),
           (Data.ProtoLens.Tag 9, 
            excludeStructuredCalendar__field_descriptor),
           (Data.ProtoLens.Tag 4, startTime__field_descriptor),
           (Data.ProtoLens.Tag 5, endTime__field_descriptor),
           (Data.ProtoLens.Tag 6, jitter__field_descriptor),
           (Data.ProtoLens.Tag 10, timezoneName__field_descriptor),
           (Data.ProtoLens.Tag 11, timezoneData__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScheduleSpec'_unknownFields
        (\ x__ y__ -> x__ {_ScheduleSpec'_unknownFields = y__})
  defMessage
    = ScheduleSpec'_constructor
        {_ScheduleSpec'structuredCalendar = Data.Vector.Generic.empty,
         _ScheduleSpec'cronString = Data.Vector.Generic.empty,
         _ScheduleSpec'calendar = Data.Vector.Generic.empty,
         _ScheduleSpec'interval = Data.Vector.Generic.empty,
         _ScheduleSpec'excludeCalendar = Data.Vector.Generic.empty,
         _ScheduleSpec'excludeStructuredCalendar = Data.Vector.Generic.empty,
         _ScheduleSpec'startTime = Prelude.Nothing,
         _ScheduleSpec'endTime = Prelude.Nothing,
         _ScheduleSpec'jitter = Prelude.Nothing,
         _ScheduleSpec'timezoneName = Data.ProtoLens.fieldDefault,
         _ScheduleSpec'timezoneData = Data.ProtoLens.fieldDefault,
         _ScheduleSpec'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScheduleSpec
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld CalendarSpec
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld CalendarSpec
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld StructuredCalendarSpec
                      -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld IntervalSpec
                         -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld StructuredCalendarSpec
                            -> Data.ProtoLens.Encoding.Bytes.Parser ScheduleSpec
        loop
          x
          mutable'calendar
          mutable'cronString
          mutable'excludeCalendar
          mutable'excludeStructuredCalendar
          mutable'interval
          mutable'structuredCalendar
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'calendar <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'calendar)
                      frozen'cronString <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'cronString)
                      frozen'excludeCalendar <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'excludeCalendar)
                      frozen'excludeStructuredCalendar <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                               mutable'excludeStructuredCalendar)
                      frozen'interval <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'interval)
                      frozen'structuredCalendar <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'structuredCalendar)
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
                              (Data.ProtoLens.Field.field @"vec'calendar") frozen'calendar
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'cronString") frozen'cronString
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'excludeCalendar")
                                    frozen'excludeCalendar
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'excludeStructuredCalendar")
                                       frozen'excludeStructuredCalendar
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"vec'interval")
                                          frozen'interval
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"vec'structuredCalendar")
                                             frozen'structuredCalendar x)))))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "structured_calendar"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'structuredCalendar y)
                                loop
                                  x mutable'calendar mutable'cronString mutable'excludeCalendar
                                  mutable'excludeStructuredCalendar mutable'interval v
                        66
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getText
                                              (Prelude.fromIntegral len))
                                        "cron_string"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'cronString y)
                                loop
                                  x mutable'calendar v mutable'excludeCalendar
                                  mutable'excludeStructuredCalendar mutable'interval
                                  mutable'structuredCalendar
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "calendar"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'calendar y)
                                loop
                                  x v mutable'cronString mutable'excludeCalendar
                                  mutable'excludeStructuredCalendar mutable'interval
                                  mutable'structuredCalendar
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "interval"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'interval y)
                                loop
                                  x mutable'calendar mutable'cronString mutable'excludeCalendar
                                  mutable'excludeStructuredCalendar v mutable'structuredCalendar
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "exclude_calendar"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'excludeCalendar y)
                                loop
                                  x mutable'calendar mutable'cronString v
                                  mutable'excludeStructuredCalendar mutable'interval
                                  mutable'structuredCalendar
                        74
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "exclude_structured_calendar"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'excludeStructuredCalendar y)
                                loop
                                  x mutable'calendar mutable'cronString mutable'excludeCalendar v
                                  mutable'interval mutable'structuredCalendar
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startTime") y x)
                                  mutable'calendar mutable'cronString mutable'excludeCalendar
                                  mutable'excludeStructuredCalendar mutable'interval
                                  mutable'structuredCalendar
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "end_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endTime") y x)
                                  mutable'calendar mutable'cronString mutable'excludeCalendar
                                  mutable'excludeStructuredCalendar mutable'interval
                                  mutable'structuredCalendar
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "jitter"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"jitter") y x)
                                  mutable'calendar mutable'cronString mutable'excludeCalendar
                                  mutable'excludeStructuredCalendar mutable'interval
                                  mutable'structuredCalendar
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "timezone_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timezoneName") y x)
                                  mutable'calendar mutable'cronString mutable'excludeCalendar
                                  mutable'excludeStructuredCalendar mutable'interval
                                  mutable'structuredCalendar
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "timezone_data"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timezoneData") y x)
                                  mutable'calendar mutable'cronString mutable'excludeCalendar
                                  mutable'excludeStructuredCalendar mutable'interval
                                  mutable'structuredCalendar
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'calendar mutable'cronString mutable'excludeCalendar
                                  mutable'excludeStructuredCalendar mutable'interval
                                  mutable'structuredCalendar
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'calendar <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              mutable'cronString <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              mutable'excludeCalendar <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              mutable'excludeStructuredCalendar <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     Data.ProtoLens.Encoding.Growing.new
              mutable'interval <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              mutable'structuredCalendar <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'calendar mutable'cronString
                mutable'excludeCalendar mutable'excludeStructuredCalendar
                mutable'interval mutable'structuredCalendar)
          "ScheduleSpec"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'structuredCalendar") _x))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.Text.Encoding.encodeUtf8 _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'cronString") _x))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'calendar") _x))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'interval") _x))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'excludeCalendar") _x))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
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
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'excludeStructuredCalendar") _x))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'startTime") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
                                         (Data.ProtoLens.Field.field @"maybe'endTime") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                                            (Data.ProtoLens.Field.field @"maybe'jitter") _x
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
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"timezoneName") _x
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
                                                    (Data.ProtoLens.Field.field @"timezoneData") _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                    ((\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                       _v))
                                           (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                              (Lens.Family2.view
                                                 Data.ProtoLens.unknownFields _x))))))))))))
instance Control.DeepSeq.NFData ScheduleSpec where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScheduleSpec'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScheduleSpec'structuredCalendar x__)
                (Control.DeepSeq.deepseq
                   (_ScheduleSpec'cronString x__)
                   (Control.DeepSeq.deepseq
                      (_ScheduleSpec'calendar x__)
                      (Control.DeepSeq.deepseq
                         (_ScheduleSpec'interval x__)
                         (Control.DeepSeq.deepseq
                            (_ScheduleSpec'excludeCalendar x__)
                            (Control.DeepSeq.deepseq
                               (_ScheduleSpec'excludeStructuredCalendar x__)
                               (Control.DeepSeq.deepseq
                                  (_ScheduleSpec'startTime x__)
                                  (Control.DeepSeq.deepseq
                                     (_ScheduleSpec'endTime x__)
                                     (Control.DeepSeq.deepseq
                                        (_ScheduleSpec'jitter x__)
                                        (Control.DeepSeq.deepseq
                                           (_ScheduleSpec'timezoneName x__)
                                           (Control.DeepSeq.deepseq
                                              (_ScheduleSpec'timezoneData x__) ())))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.notes' @:: Lens' ScheduleState Data.Text.Text@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.paused' @:: Lens' ScheduleState Prelude.Bool@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.limitedActions' @:: Lens' ScheduleState Prelude.Bool@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.remainingActions' @:: Lens' ScheduleState Data.Int.Int64@ -}
data ScheduleState
  = ScheduleState'_constructor {_ScheduleState'notes :: !Data.Text.Text,
                                _ScheduleState'paused :: !Prelude.Bool,
                                _ScheduleState'limitedActions :: !Prelude.Bool,
                                _ScheduleState'remainingActions :: !Data.Int.Int64,
                                _ScheduleState'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScheduleState where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScheduleState "notes" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleState'notes
           (\ x__ y__ -> x__ {_ScheduleState'notes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleState "paused" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleState'paused
           (\ x__ y__ -> x__ {_ScheduleState'paused = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleState "limitedActions" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleState'limitedActions
           (\ x__ y__ -> x__ {_ScheduleState'limitedActions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScheduleState "remainingActions" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScheduleState'remainingActions
           (\ x__ y__ -> x__ {_ScheduleState'remainingActions = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScheduleState where
  messageName _
    = Data.Text.pack "temporal.api.schedule.v1.ScheduleState"
  packedMessageDescriptor _
    = "\n\
      \\rScheduleState\DC2\DC4\n\
      \\ENQnotes\CAN\SOH \SOH(\tR\ENQnotes\DC2\SYN\n\
      \\ACKpaused\CAN\STX \SOH(\bR\ACKpaused\DC2'\n\
      \\SIlimited_actions\CAN\ETX \SOH(\bR\SOlimitedActions\DC2+\n\
      \\DC1remaining_actions\CAN\EOT \SOH(\ETXR\DLEremainingActions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        notes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "notes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"notes")) ::
              Data.ProtoLens.FieldDescriptor ScheduleState
        paused__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "paused"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"paused")) ::
              Data.ProtoLens.FieldDescriptor ScheduleState
        limitedActions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "limited_actions"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"limitedActions")) ::
              Data.ProtoLens.FieldDescriptor ScheduleState
        remainingActions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "remaining_actions"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"remainingActions")) ::
              Data.ProtoLens.FieldDescriptor ScheduleState
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, notes__field_descriptor),
           (Data.ProtoLens.Tag 2, paused__field_descriptor),
           (Data.ProtoLens.Tag 3, limitedActions__field_descriptor),
           (Data.ProtoLens.Tag 4, remainingActions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScheduleState'_unknownFields
        (\ x__ y__ -> x__ {_ScheduleState'_unknownFields = y__})
  defMessage
    = ScheduleState'_constructor
        {_ScheduleState'notes = Data.ProtoLens.fieldDefault,
         _ScheduleState'paused = Data.ProtoLens.fieldDefault,
         _ScheduleState'limitedActions = Data.ProtoLens.fieldDefault,
         _ScheduleState'remainingActions = Data.ProtoLens.fieldDefault,
         _ScheduleState'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScheduleState -> Data.ProtoLens.Encoding.Bytes.Parser ScheduleState
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
                                       "notes"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"notes") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "paused"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"paused") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "limited_actions"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"limitedActions") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "remaining_actions"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"remainingActions") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ScheduleState"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"notes") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"paused") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"limitedActions") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                               _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"remainingActions") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ScheduleState where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScheduleState'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScheduleState'notes x__)
                (Control.DeepSeq.deepseq
                   (_ScheduleState'paused x__)
                   (Control.DeepSeq.deepseq
                      (_ScheduleState'limitedActions x__)
                      (Control.DeepSeq.deepseq
                         (_ScheduleState'remainingActions x__) ()))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.second' @:: Lens' StructuredCalendarSpec [Range]@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.vec'second' @:: Lens' StructuredCalendarSpec (Data.Vector.Vector Range)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.minute' @:: Lens' StructuredCalendarSpec [Range]@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.vec'minute' @:: Lens' StructuredCalendarSpec (Data.Vector.Vector Range)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.hour' @:: Lens' StructuredCalendarSpec [Range]@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.vec'hour' @:: Lens' StructuredCalendarSpec (Data.Vector.Vector Range)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.dayOfMonth' @:: Lens' StructuredCalendarSpec [Range]@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.vec'dayOfMonth' @:: Lens' StructuredCalendarSpec (Data.Vector.Vector Range)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.month' @:: Lens' StructuredCalendarSpec [Range]@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.vec'month' @:: Lens' StructuredCalendarSpec (Data.Vector.Vector Range)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.year' @:: Lens' StructuredCalendarSpec [Range]@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.vec'year' @:: Lens' StructuredCalendarSpec (Data.Vector.Vector Range)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.dayOfWeek' @:: Lens' StructuredCalendarSpec [Range]@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.vec'dayOfWeek' @:: Lens' StructuredCalendarSpec (Data.Vector.Vector Range)@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.comment' @:: Lens' StructuredCalendarSpec Data.Text.Text@ -}
data StructuredCalendarSpec
  = StructuredCalendarSpec'_constructor {_StructuredCalendarSpec'second :: !(Data.Vector.Vector Range),
                                         _StructuredCalendarSpec'minute :: !(Data.Vector.Vector Range),
                                         _StructuredCalendarSpec'hour :: !(Data.Vector.Vector Range),
                                         _StructuredCalendarSpec'dayOfMonth :: !(Data.Vector.Vector Range),
                                         _StructuredCalendarSpec'month :: !(Data.Vector.Vector Range),
                                         _StructuredCalendarSpec'year :: !(Data.Vector.Vector Range),
                                         _StructuredCalendarSpec'dayOfWeek :: !(Data.Vector.Vector Range),
                                         _StructuredCalendarSpec'comment :: !Data.Text.Text,
                                         _StructuredCalendarSpec'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StructuredCalendarSpec where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StructuredCalendarSpec "second" [Range] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructuredCalendarSpec'second
           (\ x__ y__ -> x__ {_StructuredCalendarSpec'second = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StructuredCalendarSpec "vec'second" (Data.Vector.Vector Range) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructuredCalendarSpec'second
           (\ x__ y__ -> x__ {_StructuredCalendarSpec'second = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StructuredCalendarSpec "minute" [Range] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructuredCalendarSpec'minute
           (\ x__ y__ -> x__ {_StructuredCalendarSpec'minute = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StructuredCalendarSpec "vec'minute" (Data.Vector.Vector Range) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructuredCalendarSpec'minute
           (\ x__ y__ -> x__ {_StructuredCalendarSpec'minute = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StructuredCalendarSpec "hour" [Range] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructuredCalendarSpec'hour
           (\ x__ y__ -> x__ {_StructuredCalendarSpec'hour = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StructuredCalendarSpec "vec'hour" (Data.Vector.Vector Range) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructuredCalendarSpec'hour
           (\ x__ y__ -> x__ {_StructuredCalendarSpec'hour = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StructuredCalendarSpec "dayOfMonth" [Range] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructuredCalendarSpec'dayOfMonth
           (\ x__ y__ -> x__ {_StructuredCalendarSpec'dayOfMonth = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StructuredCalendarSpec "vec'dayOfMonth" (Data.Vector.Vector Range) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructuredCalendarSpec'dayOfMonth
           (\ x__ y__ -> x__ {_StructuredCalendarSpec'dayOfMonth = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StructuredCalendarSpec "month" [Range] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructuredCalendarSpec'month
           (\ x__ y__ -> x__ {_StructuredCalendarSpec'month = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StructuredCalendarSpec "vec'month" (Data.Vector.Vector Range) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructuredCalendarSpec'month
           (\ x__ y__ -> x__ {_StructuredCalendarSpec'month = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StructuredCalendarSpec "year" [Range] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructuredCalendarSpec'year
           (\ x__ y__ -> x__ {_StructuredCalendarSpec'year = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StructuredCalendarSpec "vec'year" (Data.Vector.Vector Range) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructuredCalendarSpec'year
           (\ x__ y__ -> x__ {_StructuredCalendarSpec'year = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StructuredCalendarSpec "dayOfWeek" [Range] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructuredCalendarSpec'dayOfWeek
           (\ x__ y__ -> x__ {_StructuredCalendarSpec'dayOfWeek = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StructuredCalendarSpec "vec'dayOfWeek" (Data.Vector.Vector Range) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructuredCalendarSpec'dayOfWeek
           (\ x__ y__ -> x__ {_StructuredCalendarSpec'dayOfWeek = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StructuredCalendarSpec "comment" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StructuredCalendarSpec'comment
           (\ x__ y__ -> x__ {_StructuredCalendarSpec'comment = y__}))
        Prelude.id
instance Data.ProtoLens.Message StructuredCalendarSpec where
  messageName _
    = Data.Text.pack "temporal.api.schedule.v1.StructuredCalendarSpec"
  packedMessageDescriptor _
    = "\n\
      \\SYNStructuredCalendarSpec\DC27\n\
      \\ACKsecond\CAN\SOH \ETX(\v2\US.temporal.api.schedule.v1.RangeR\ACKsecond\DC27\n\
      \\ACKminute\CAN\STX \ETX(\v2\US.temporal.api.schedule.v1.RangeR\ACKminute\DC23\n\
      \\EOThour\CAN\ETX \ETX(\v2\US.temporal.api.schedule.v1.RangeR\EOThour\DC2A\n\
      \\fday_of_month\CAN\EOT \ETX(\v2\US.temporal.api.schedule.v1.RangeR\n\
      \dayOfMonth\DC25\n\
      \\ENQmonth\CAN\ENQ \ETX(\v2\US.temporal.api.schedule.v1.RangeR\ENQmonth\DC23\n\
      \\EOTyear\CAN\ACK \ETX(\v2\US.temporal.api.schedule.v1.RangeR\EOTyear\DC2?\n\
      \\vday_of_week\CAN\a \ETX(\v2\US.temporal.api.schedule.v1.RangeR\tdayOfWeek\DC2\CAN\n\
      \\acomment\CAN\b \SOH(\tR\acomment"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        second__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "second"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Range)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"second")) ::
              Data.ProtoLens.FieldDescriptor StructuredCalendarSpec
        minute__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "minute"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Range)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"minute")) ::
              Data.ProtoLens.FieldDescriptor StructuredCalendarSpec
        hour__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hour"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Range)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"hour")) ::
              Data.ProtoLens.FieldDescriptor StructuredCalendarSpec
        dayOfMonth__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "day_of_month"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Range)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"dayOfMonth")) ::
              Data.ProtoLens.FieldDescriptor StructuredCalendarSpec
        month__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "month"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Range)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"month")) ::
              Data.ProtoLens.FieldDescriptor StructuredCalendarSpec
        year__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "year"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Range)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"year")) ::
              Data.ProtoLens.FieldDescriptor StructuredCalendarSpec
        dayOfWeek__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "day_of_week"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Range)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"dayOfWeek")) ::
              Data.ProtoLens.FieldDescriptor StructuredCalendarSpec
        comment__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comment"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"comment")) ::
              Data.ProtoLens.FieldDescriptor StructuredCalendarSpec
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, second__field_descriptor),
           (Data.ProtoLens.Tag 2, minute__field_descriptor),
           (Data.ProtoLens.Tag 3, hour__field_descriptor),
           (Data.ProtoLens.Tag 4, dayOfMonth__field_descriptor),
           (Data.ProtoLens.Tag 5, month__field_descriptor),
           (Data.ProtoLens.Tag 6, year__field_descriptor),
           (Data.ProtoLens.Tag 7, dayOfWeek__field_descriptor),
           (Data.ProtoLens.Tag 8, comment__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StructuredCalendarSpec'_unknownFields
        (\ x__ y__ -> x__ {_StructuredCalendarSpec'_unknownFields = y__})
  defMessage
    = StructuredCalendarSpec'_constructor
        {_StructuredCalendarSpec'second = Data.Vector.Generic.empty,
         _StructuredCalendarSpec'minute = Data.Vector.Generic.empty,
         _StructuredCalendarSpec'hour = Data.Vector.Generic.empty,
         _StructuredCalendarSpec'dayOfMonth = Data.Vector.Generic.empty,
         _StructuredCalendarSpec'month = Data.Vector.Generic.empty,
         _StructuredCalendarSpec'year = Data.Vector.Generic.empty,
         _StructuredCalendarSpec'dayOfWeek = Data.Vector.Generic.empty,
         _StructuredCalendarSpec'comment = Data.ProtoLens.fieldDefault,
         _StructuredCalendarSpec'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StructuredCalendarSpec
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Range
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Range
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Range
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Range
                      -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Range
                         -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Range
                            -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Range
                               -> Data.ProtoLens.Encoding.Bytes.Parser StructuredCalendarSpec
        loop
          x
          mutable'dayOfMonth
          mutable'dayOfWeek
          mutable'hour
          mutable'minute
          mutable'month
          mutable'second
          mutable'year
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'dayOfMonth <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'dayOfMonth)
                      frozen'dayOfWeek <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'dayOfWeek)
                      frozen'hour <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'hour)
                      frozen'minute <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'minute)
                      frozen'month <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'month)
                      frozen'second <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'second)
                      frozen'year <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'year)
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
                              (Data.ProtoLens.Field.field @"vec'dayOfMonth") frozen'dayOfMonth
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'dayOfWeek") frozen'dayOfWeek
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'hour") frozen'hour
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'minute") frozen'minute
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"vec'month") frozen'month
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"vec'second")
                                             frozen'second
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"vec'year") frozen'year
                                                x))))))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "second"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'second y)
                                loop
                                  x mutable'dayOfMonth mutable'dayOfWeek mutable'hour mutable'minute
                                  mutable'month v mutable'year
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "minute"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'minute y)
                                loop
                                  x mutable'dayOfMonth mutable'dayOfWeek mutable'hour v
                                  mutable'month mutable'second mutable'year
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "hour"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'hour y)
                                loop
                                  x mutable'dayOfMonth mutable'dayOfWeek v mutable'minute
                                  mutable'month mutable'second mutable'year
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "day_of_month"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'dayOfMonth y)
                                loop
                                  x v mutable'dayOfWeek mutable'hour mutable'minute mutable'month
                                  mutable'second mutable'year
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "month"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'month y)
                                loop
                                  x mutable'dayOfMonth mutable'dayOfWeek mutable'hour mutable'minute
                                  v mutable'second mutable'year
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "year"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'year y)
                                loop
                                  x mutable'dayOfMonth mutable'dayOfWeek mutable'hour mutable'minute
                                  mutable'month mutable'second v
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "day_of_week"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'dayOfWeek y)
                                loop
                                  x mutable'dayOfMonth v mutable'hour mutable'minute mutable'month
                                  mutable'second mutable'year
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "comment"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"comment") y x)
                                  mutable'dayOfMonth mutable'dayOfWeek mutable'hour mutable'minute
                                  mutable'month mutable'second mutable'year
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'dayOfMonth mutable'dayOfWeek mutable'hour mutable'minute
                                  mutable'month mutable'second mutable'year
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'dayOfMonth <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              mutable'dayOfWeek <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'hour <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              mutable'minute <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              mutable'month <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              mutable'second <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              mutable'year <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'dayOfMonth mutable'dayOfWeek
                mutable'hour mutable'minute mutable'month mutable'second
                mutable'year)
          "StructuredCalendarSpec"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'second") _x))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'minute") _x))
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
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'hour") _x))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'dayOfMonth") _x))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage _v))
                            (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'month") _x))
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
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'year") _x))
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
                                     (Data.ProtoLens.Field.field @"vec'dayOfWeek") _x))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"comment") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                           ((Prelude..)
                                              (\ bs
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Data.Text.Encoding.encodeUtf8 _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData StructuredCalendarSpec where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StructuredCalendarSpec'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StructuredCalendarSpec'second x__)
                (Control.DeepSeq.deepseq
                   (_StructuredCalendarSpec'minute x__)
                   (Control.DeepSeq.deepseq
                      (_StructuredCalendarSpec'hour x__)
                      (Control.DeepSeq.deepseq
                         (_StructuredCalendarSpec'dayOfMonth x__)
                         (Control.DeepSeq.deepseq
                            (_StructuredCalendarSpec'month x__)
                            (Control.DeepSeq.deepseq
                               (_StructuredCalendarSpec'year x__)
                               (Control.DeepSeq.deepseq
                                  (_StructuredCalendarSpec'dayOfWeek x__)
                                  (Control.DeepSeq.deepseq
                                     (_StructuredCalendarSpec'comment x__) ()))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.overlapPolicy' @:: Lens' TriggerImmediatelyRequest Proto.Temporal.Api.Enums.V1.Schedule.ScheduleOverlapPolicy@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.scheduledTime' @:: Lens' TriggerImmediatelyRequest Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Schedule.V1.Message_Fields.maybe'scheduledTime' @:: Lens' TriggerImmediatelyRequest (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data TriggerImmediatelyRequest
  = TriggerImmediatelyRequest'_constructor {_TriggerImmediatelyRequest'overlapPolicy :: !Proto.Temporal.Api.Enums.V1.Schedule.ScheduleOverlapPolicy,
                                            _TriggerImmediatelyRequest'scheduledTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                            _TriggerImmediatelyRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TriggerImmediatelyRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TriggerImmediatelyRequest "overlapPolicy" Proto.Temporal.Api.Enums.V1.Schedule.ScheduleOverlapPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TriggerImmediatelyRequest'overlapPolicy
           (\ x__ y__
              -> x__ {_TriggerImmediatelyRequest'overlapPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TriggerImmediatelyRequest "scheduledTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TriggerImmediatelyRequest'scheduledTime
           (\ x__ y__
              -> x__ {_TriggerImmediatelyRequest'scheduledTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TriggerImmediatelyRequest "maybe'scheduledTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TriggerImmediatelyRequest'scheduledTime
           (\ x__ y__
              -> x__ {_TriggerImmediatelyRequest'scheduledTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message TriggerImmediatelyRequest where
  messageName _
    = Data.Text.pack
        "temporal.api.schedule.v1.TriggerImmediatelyRequest"
  packedMessageDescriptor _
    = "\n\
      \\EMTriggerImmediatelyRequest\DC2S\n\
      \\SOoverlap_policy\CAN\SOH \SOH(\SO2,.temporal.api.enums.v1.ScheduleOverlapPolicyR\roverlapPolicy\DC2A\n\
      \\SOscheduled_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\rscheduledTime"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        overlapPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "overlap_policy"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Schedule.ScheduleOverlapPolicy)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"overlapPolicy")) ::
              Data.ProtoLens.FieldDescriptor TriggerImmediatelyRequest
        scheduledTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scheduled_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduledTime")) ::
              Data.ProtoLens.FieldDescriptor TriggerImmediatelyRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, overlapPolicy__field_descriptor),
           (Data.ProtoLens.Tag 2, scheduledTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TriggerImmediatelyRequest'_unknownFields
        (\ x__ y__
           -> x__ {_TriggerImmediatelyRequest'_unknownFields = y__})
  defMessage
    = TriggerImmediatelyRequest'_constructor
        {_TriggerImmediatelyRequest'overlapPolicy = Data.ProtoLens.fieldDefault,
         _TriggerImmediatelyRequest'scheduledTime = Prelude.Nothing,
         _TriggerImmediatelyRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TriggerImmediatelyRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser TriggerImmediatelyRequest
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
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "overlap_policy"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"overlapPolicy") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "scheduled_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduledTime") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TriggerImmediatelyRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"overlapPolicy") _x
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
                       (Data.ProtoLens.Field.field @"maybe'scheduledTime") _x
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
instance Control.DeepSeq.NFData TriggerImmediatelyRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TriggerImmediatelyRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TriggerImmediatelyRequest'overlapPolicy x__)
                (Control.DeepSeq.deepseq
                   (_TriggerImmediatelyRequest'scheduledTime x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&temporal/api/schedule/v1/message.proto\DC2\CANtemporal.api.schedule.v1\SUB\RSgoogle/protobuf/duration.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB$temporal/api/common/v1/message.proto\SUB$temporal/api/enums/v1/schedule.proto\SUB$temporal/api/enums/v1/workflow.proto\SUB&temporal/api/workflow/v1/message.proto\"\216\SOH\n\
    \\fCalendarSpec\DC2\SYN\n\
    \\ACKsecond\CAN\SOH \SOH(\tR\ACKsecond\DC2\SYN\n\
    \\ACKminute\CAN\STX \SOH(\tR\ACKminute\DC2\DC2\n\
    \\EOThour\CAN\ETX \SOH(\tR\EOThour\DC2 \n\
    \\fday_of_month\CAN\EOT \SOH(\tR\n\
    \dayOfMonth\DC2\DC4\n\
    \\ENQmonth\CAN\ENQ \SOH(\tR\ENQmonth\DC2\DC2\n\
    \\EOTyear\CAN\ACK \SOH(\tR\EOTyear\DC2\RS\n\
    \\vday_of_week\CAN\a \SOH(\tR\tdayOfWeek\DC2\CAN\n\
    \\acomment\CAN\b \SOH(\tR\acomment\"C\n\
    \\ENQRange\DC2\DC4\n\
    \\ENQstart\CAN\SOH \SOH(\ENQR\ENQstart\DC2\DLE\n\
    \\ETXend\CAN\STX \SOH(\ENQR\ETXend\DC2\DC2\n\
    \\EOTstep\CAN\ETX \SOH(\ENQR\EOTstep\"\201\ETX\n\
    \\SYNStructuredCalendarSpec\DC27\n\
    \\ACKsecond\CAN\SOH \ETX(\v2\US.temporal.api.schedule.v1.RangeR\ACKsecond\DC27\n\
    \\ACKminute\CAN\STX \ETX(\v2\US.temporal.api.schedule.v1.RangeR\ACKminute\DC23\n\
    \\EOThour\CAN\ETX \ETX(\v2\US.temporal.api.schedule.v1.RangeR\EOThour\DC2A\n\
    \\fday_of_month\CAN\EOT \ETX(\v2\US.temporal.api.schedule.v1.RangeR\n\
    \dayOfMonth\DC25\n\
    \\ENQmonth\CAN\ENQ \ETX(\v2\US.temporal.api.schedule.v1.RangeR\ENQmonth\DC23\n\
    \\EOTyear\CAN\ACK \ETX(\v2\US.temporal.api.schedule.v1.RangeR\EOTyear\DC2?\n\
    \\vday_of_week\CAN\a \ETX(\v2\US.temporal.api.schedule.v1.RangeR\tdayOfWeek\DC2\CAN\n\
    \\acomment\CAN\b \SOH(\tR\acomment\"v\n\
    \\fIntervalSpec\DC25\n\
    \\binterval\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\binterval\DC2/\n\
    \\ENQphase\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\ENQphase\"\210\ENQ\n\
    \\fScheduleSpec\DC2a\n\
    \\DC3structured_calendar\CAN\a \ETX(\v20.temporal.api.schedule.v1.StructuredCalendarSpecR\DC2structuredCalendar\DC2\US\n\
    \\vcron_string\CAN\b \ETX(\tR\n\
    \cronString\DC2B\n\
    \\bcalendar\CAN\SOH \ETX(\v2&.temporal.api.schedule.v1.CalendarSpecR\bcalendar\DC2B\n\
    \\binterval\CAN\STX \ETX(\v2&.temporal.api.schedule.v1.IntervalSpecR\binterval\DC2U\n\
    \\DLEexclude_calendar\CAN\ETX \ETX(\v2&.temporal.api.schedule.v1.CalendarSpecR\SIexcludeCalendarB\STX\CAN\SOH\DC2p\n\
    \\ESCexclude_structured_calendar\CAN\t \ETX(\v20.temporal.api.schedule.v1.StructuredCalendarSpecR\EMexcludeStructuredCalendar\DC29\n\
    \\n\
    \start_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\tstartTime\DC25\n\
    \\bend_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\aendTime\DC21\n\
    \\ACKjitter\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\ACKjitter\DC2#\n\
    \\rtimezone_name\CAN\n\
    \ \SOH(\tR\ftimezoneName\DC2#\n\
    \\rtimezone_data\CAN\v \SOH(\fR\ftimezoneData\"\142\STX\n\
    \\DLESchedulePolicies\DC2S\n\
    \\SOoverlap_policy\CAN\SOH \SOH(\SO2,.temporal.api.enums.v1.ScheduleOverlapPolicyR\roverlapPolicy\DC2@\n\
    \\SOcatchup_window\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\rcatchupWindow\DC2(\n\
    \\DLEpause_on_failure\CAN\ETX \SOH(\bR\SOpauseOnFailure\DC29\n\
    \\EMkeep_original_workflow_id\CAN\EOT \SOH(\bR\SYNkeepOriginalWorkflowId\"w\n\
    \\SOScheduleAction\DC2[\n\
    \\SOstart_workflow\CAN\SOH \SOH(\v22.temporal.api.workflow.v1.NewWorkflowExecutionInfoH\NULR\rstartWorkflowB\b\n\
    \\ACKaction\"\215\STX\n\
    \\DC4ScheduleActionResult\DC2?\n\
    \\rschedule_time\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\fscheduleTime\DC2;\n\
    \\vactual_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \actualTime\DC2]\n\
    \\NAKstart_workflow_result\CAN\v \SOH(\v2).temporal.api.common.v1.WorkflowExecutionR\DC3startWorkflowResult\DC2b\n\
    \\NAKstart_workflow_status\CAN\f \SOH(\SO2..temporal.api.enums.v1.WorkflowExecutionStatusR\DC3startWorkflowStatus\"\147\SOH\n\
    \\rScheduleState\DC2\DC4\n\
    \\ENQnotes\CAN\SOH \SOH(\tR\ENQnotes\DC2\SYN\n\
    \\ACKpaused\CAN\STX \SOH(\bR\ACKpaused\DC2'\n\
    \\SIlimited_actions\CAN\ETX \SOH(\bR\SOlimitedActions\DC2+\n\
    \\DC1remaining_actions\CAN\EOT \SOH(\ETXR\DLEremainingActions\"\179\SOH\n\
    \\EMTriggerImmediatelyRequest\DC2S\n\
    \\SOoverlap_policy\CAN\SOH \SOH(\SO2,.temporal.api.enums.v1.ScheduleOverlapPolicyR\roverlapPolicy\DC2A\n\
    \\SOscheduled_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\rscheduledTime\"\216\SOH\n\
    \\SIBackfillRequest\DC29\n\
    \\n\
    \start_time\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\tstartTime\DC25\n\
    \\bend_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\aendTime\DC2S\n\
    \\SOoverlap_policy\CAN\ETX \SOH(\SO2,.temporal.api.enums.v1.ScheduleOverlapPolicyR\roverlapPolicy\"\217\STX\n\
    \\rSchedulePatch\DC2d\n\
    \\DC3trigger_immediately\CAN\SOH \SOH(\v23.temporal.api.schedule.v1.TriggerImmediatelyRequestR\DC2triggerImmediately\DC2T\n\
    \\DLEbackfill_request\CAN\STX \ETX(\v2).temporal.api.schedule.v1.BackfillRequestR\SIbackfillRequest\DC2\DC4\n\
    \\ENQpause\CAN\ETX \SOH(\tR\ENQpause\DC2\CAN\n\
    \\aunpause\CAN\EOT \SOH(\tR\aunpause\DC2\\\n\
    \\DC4time_skipping_config\CAN\ENQ \SOH(\v2*.temporal.api.common.v1.TimeSkippingConfigR\DC2timeSkippingConfig\"\135\ACK\n\
    \\fScheduleInfo\DC2!\n\
    \\faction_count\CAN\SOH \SOH(\ETXR\vactionCount\DC22\n\
    \\NAKmissed_catchup_window\CAN\STX \SOH(\ETXR\DC3missedCatchupWindow\DC2'\n\
    \\SIoverlap_skipped\CAN\ETX \SOH(\ETXR\SOoverlapSkipped\DC2%\n\
    \\SObuffer_dropped\CAN\n\
    \ \SOH(\ETXR\rbufferDropped\DC2\US\n\
    \\vbuffer_size\CAN\v \SOH(\ETXR\n\
    \bufferSize\DC2V\n\
    \\DC1running_workflows\CAN\t \ETX(\v2).temporal.api.common.v1.WorkflowExecutionR\DLErunningWorkflows\DC2U\n\
    \\SOrecent_actions\CAN\EOT \ETX(\v2..temporal.api.schedule.v1.ScheduleActionResultR\rrecentActions\DC2J\n\
    \\DC3future_action_times\CAN\ENQ \ETX(\v2\SUB.google.protobuf.TimestampR\DC1futureActionTimes\DC2;\n\
    \\vcreate_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \createTime\DC2;\n\
    \\vupdate_time\CAN\a \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \updateTime\DC28\n\
    \\SYNinvalid_schedule_error\CAN\b \SOH(\tR\DC4invalidScheduleErrorB\STX\CAN\SOH\DC2(\n\
    \\DLEstate_size_bytes\CAN\f \SOH(\ETXR\SOstateSizeBytes\DC2V\n\
    \\DC2time_skipping_info\CAN\r \SOH(\v2(.temporal.api.common.v1.TimeSkippingInfoR\DLEtimeSkippingInfo\"\143\STX\n\
    \\bSchedule\DC2:\n\
    \\EOTspec\CAN\SOH \SOH(\v2&.temporal.api.schedule.v1.ScheduleSpecR\EOTspec\DC2@\n\
    \\ACKaction\CAN\STX \SOH(\v2(.temporal.api.schedule.v1.ScheduleActionR\ACKaction\DC2F\n\
    \\bpolicies\CAN\ETX \SOH(\v2*.temporal.api.schedule.v1.SchedulePoliciesR\bpolicies\DC2=\n\
    \\ENQstate\CAN\EOT \SOH(\v2'.temporal.api.schedule.v1.ScheduleStateR\ENQstate\"\148\ETX\n\
    \\DLEScheduleListInfo\DC2:\n\
    \\EOTspec\CAN\SOH \SOH(\v2&.temporal.api.schedule.v1.ScheduleSpecR\EOTspec\DC2I\n\
    \\rworkflow_type\CAN\STX \SOH(\v2$.temporal.api.common.v1.WorkflowTypeR\fworkflowType\DC2\DC4\n\
    \\ENQnotes\CAN\ETX \SOH(\tR\ENQnotes\DC2\SYN\n\
    \\ACKpaused\CAN\EOT \SOH(\bR\ACKpaused\DC2U\n\
    \\SOrecent_actions\CAN\ENQ \ETX(\v2..temporal.api.schedule.v1.ScheduleActionResultR\rrecentActions\DC2J\n\
    \\DC3future_action_times\CAN\ACK \ETX(\v2\SUB.google.protobuf.TimestampR\DC1futureActionTimes\DC2(\n\
    \\DLEstate_size_bytes\CAN\a \SOH(\ETXR\SOstateSizeBytes\"\253\SOH\n\
    \\DC1ScheduleListEntry\DC2\US\n\
    \\vschedule_id\CAN\SOH \SOH(\tR\n\
    \scheduleId\DC20\n\
    \\EOTmemo\CAN\STX \SOH(\v2\FS.temporal.api.common.v1.MemoR\EOTmemo\DC2U\n\
    \\DC1search_attributes\CAN\ETX \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC2>\n\
    \\EOTinfo\CAN\EOT \SOH(\v2*.temporal.api.schedule.v1.ScheduleListInfoR\EOTinfoB\147\SOH\n\
    \\ESCio.temporal.api.schedule.v1B\fMessageProtoP\SOHZ'go.temporal.io/api/schedule/v1;schedule\170\STX\SUBTemporalio.Api.Schedule.V1\234\STX\GSTemporalio::Api::Schedule::V1J\211\143\SOH\n\
    \\a\DC2\ENQ\ENQ\NUL\147\ETX\SOH\n\
    \\157\STX\n\
    \\SOH\f\DC2\ETX\ENQ\NUL\DC22\146\STX (-- api-linter: core::0203::optional=disabled\n\
    \     aip.dev/not-precedent: field_behavior annotation not available in our gogo fork --)\n\
    \ (-- api-linter: core::0203::input-only=disabled\n\
    \     aip.dev/not-precedent: field_behavior annotation not available in our gogo fork --)\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL>\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\t\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL4\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL-\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL-\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL6\n\
    \\t\n\
    \\STX\b-\DC2\ETX\r\NUL6\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL7\n\
    \\t\n\
    \\STX\b%\DC2\ETX\SO\NUL7\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\DLE\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\DC1\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\DC3\NUL.\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\DC4\NUL.\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\NAK\NUL.\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\SYN\NUL0\n\
    \\231\a\n\
    \\STX\EOT\NUL\DC2\EOT*\NUL=\SOH\SUB\218\a CalendarSpec describes an event specification relative to the calendar,\n\
    \ similar to a traditional cron specification, but with labeled fields. Each\n\
    \ field can be one of:\n\
    \   *: matches always\n\
    \   x: matches when the field equals x\n\
    \   x/y : matches when the field equals x+n*y where n is an integer\n\
    \   x-z: matches when the field is between x and z inclusive\n\
    \   w,x,y,...: matches when the field is one of the listed values\n\
    \ Each x, y, z, ... is either a decimal integer, or a month or day of week name\n\
    \ or abbreviation (in the appropriate fields).\n\
    \ A timestamp matches if all fields match.\n\
    \ Note that fields have different default values, for convenience.\n\
    \ Note that the special case that some cron implementations have for treating\n\
    \ day_of_month and day_of_week as \"or\" instead of \"and\" when both are set is\n\
    \ not implemented.\n\
    \ day_of_week can accept 0 or 7 as Sunday\n\
    \ CalendarSpec gets compiled into StructuredCalendarSpec, which is what will be\n\
    \ returned if you describe the schedule.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX*\b\DC4\n\
    \6\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX,\EOT\SYN\SUB) Expression to match seconds. Default: 0\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX,\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX,\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX,\DC4\NAK\n\
    \6\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX.\EOT\SYN\SUB) Expression to match minutes. Default: 0\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX.\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX.\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX.\DC4\NAK\n\
    \4\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX0\EOT\DC4\SUB' Expression to match hours. Default: 0\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX0\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX0\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX0\DC2\DC3\n\
    \\171\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX4\EOT\FS\SUB\157\SOH Expression to match days of the month. Default: *\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: standard name of field --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX4\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX4\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX4\SUB\ESC\n\
    \5\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX6\EOT\NAK\SUB( Expression to match months. Default: *\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX6\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX6\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX6\DC3\DC4\n\
    \4\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX8\EOT\DC4\SUB' Expression to match years. Default: *\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX8\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX8\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX8\DC2\DC3\n\
    \?\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX:\EOT\ESC\SUB2 Expression to match days of the week. Default: *\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX:\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX:\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX:\EM\SUB\n\
    \G\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX<\EOT\ETB\SUB: Free-form comment describing the intention of this spec.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETX<\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX<\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX<\NAK\SYN\n\
    \\185\STX\n\
    \\STX\EOT\SOH\DC2\EOTC\NULJ\SOH\SUB\172\STX Range represents a set of integer values, used to match fields of a calendar\n\
    \ time in StructuredCalendarSpec. If end < start, then end is interpreted as\n\
    \ equal to start. This means you can use a Range with start set to a value, and\n\
    \ end and step unset (defaulting to 0) to represent a single value.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXC\b\r\n\
    \*\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXE\EOT\DC4\SUB\GS Start of range (inclusive).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETXE\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXE\n\
    \\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXE\DC2\DC3\n\
    \(\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXG\EOT\DC2\SUB\ESC End of range (inclusive).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETXG\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXG\n\
    \\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXG\DLE\DC1\n\
    \*\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETXI\EOT\DC3\SUB\GS Step (optional, default 1).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETXI\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXI\n\
    \\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXI\DC1\DC2\n\
    \\225\EOT\n\
    \\STX\EOT\STX\DC2\EOTU\NULh\SOH\SUB\212\EOT StructuredCalendarSpec describes an event specification relative to the\n\
    \ calendar, in a form that's easy to work with programmatically. Each field can\n\
    \ be one or more ranges.\n\
    \ A timestamp matches if at least one range of each field matches the\n\
    \ corresponding fields of the timestamp, except for year: if year is missing,\n\
    \ that means all years match. For all fields besides year, at least one Range\n\
    \ must be present to match anything.\n\
    \ Relative expressions such as \"last day of the month\" or \"third Monday\" are not currently\n\
    \ representable; callers must enumerate the concrete days they require.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXU\b\RS\n\
    \#\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXW\EOT\RS\SUB\SYN Match seconds (0-59)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETXW\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETXW\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXW\DC3\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXW\FS\GS\n\
    \#\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXY\EOT\RS\SUB\SYN Match minutes (0-59)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETXY\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETXY\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXY\DC3\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXY\FS\GS\n\
    \!\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX[\EOT\FS\SUB\DC4 Match hours (0-23)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX[\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETX[\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX[\DC3\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX[\SUB\ESC\n\
    \\152\SOH\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX_\EOT$\SUB\138\SOH Match days of the month (1-31)\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: standard name of field --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\ETX_\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\ETX_\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX_\DC3\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX_\"#\n\
    \\"\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETXa\EOT\GS\SUB\NAK Match months (1-12)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\EOT\DC2\ETXa\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ACK\DC2\ETXa\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETXa\DC3\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETXa\ESC\FS\n\
    \\ESC\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETXc\EOT\FS\SUB\SO Match years.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\EOT\DC2\ETXc\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ACK\DC2\ETXc\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETXc\DC3\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETXc\SUB\ESC\n\
    \9\n\
    \\EOT\EOT\STX\STX\ACK\DC2\ETXe\EOT#\SUB, Match days of the week (0-6; 0 is Sunday).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\EOT\DC2\ETXe\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ACK\DC2\ETXe\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\ETXe\DC3\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\ETXe!\"\n\
    \G\n\
    \\EOT\EOT\STX\STX\a\DC2\ETXg\EOT\ETB\SUB: Free-form comment describing the intention of this spec.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ENQ\DC2\ETXg\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\SOH\DC2\ETXg\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ETX\DC2\ETXg\NAK\SYN\n\
    \\148\ENQ\n\
    \\STX\EOT\ETX\DC2\EOTu\NULx\SOH\SUB\135\ENQ IntervalSpec matches times that can be expressed as:\n\
    \ epoch + n * interval + phase\n\
    \ where n is an integer.\n\
    \ phase defaults to zero if missing. interval is required.\n\
    \ Both interval and phase must be non-negative and are truncated to the nearest\n\
    \ second before any calculations.\n\
    \ For example, an interval of 1 hour with phase of zero would match every hour,\n\
    \ on the hour. The same interval but a phase of 19 minutes would match every\n\
    \ xx:19:00. An interval of 28 days with phase zero would match\n\
    \ 2022-02-17T00:00:00Z (among other times). The same interval with a phase of 3\n\
    \ days, 5 hours, and 23 minutes would match 2022-02-20T05:23:00Z instead.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXu\b\DC4\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXv\EOT*\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETXv\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXv\GS%\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXv()\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXw\EOT'\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETXw\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXw\GS\"\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXw%&\n\
    \\179\b\n\
    \\STX\EOT\EOT\DC2\ACK\140\SOH\NUL\205\SOH\SOH\SUB\164\b ScheduleSpec is a complete description of a set of absolute timestamps\n\
    \ (possibly infinite) that an action should occur at. The meaning of a\n\
    \ ScheduleSpec depends only on its contents and never changes, except that the\n\
    \ definition of a time zone can change over time (most commonly, when daylight\n\
    \ saving time policy changes for an area). To create a totally self-contained\n\
    \ ScheduleSpec, use UTC or include timezone_data.\n\
    \\n\
    \ For input, you can provide zero or more of: structured_calendar, calendar,\n\
    \ cron_string, interval, and exclude_structured_calendar, and all of them will\n\
    \ be used (the schedule will take action at the union of all of their times,\n\
    \ minus the ones that match exclude_structured_calendar).\n\
    \\n\
    \ On input, calendar and cron_string fields will be compiled into\n\
    \ structured_calendar (and maybe interval and timezone_name), so if you\n\
    \ Describe a schedule, you'll see only structured_calendar, interval, etc.\n\
    \\n\
    \ If a spec has no matching times after the current time, then the schedule\n\
    \ will be subject to automatic deletion (after several days).\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\140\SOH\b\DC4\n\
    \7\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\142\SOH\EOT<\SUB) Calendar-based specifications of times.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\EOT\142\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\EOT\142\SOH\r#\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\142\SOH$7\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\142\SOH:;\n\
    \\168\t\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\163\SOH\EOT$\SUB\153\t cron_string holds a traditional cron specification as a string. It\n\
    \ accepts 5, 6, or 7 fields, separated by spaces, and interprets them the\n\
    \ same way as CalendarSpec.\n\
    \ 5 fields:         minute, hour, day_of_month, month, day_of_week\n\
    \ 6 fields:         minute, hour, day_of_month, month, day_of_week, year\n\
    \ 7 fields: second, minute, hour, day_of_month, month, day_of_week, year\n\
    \ If year is not given, it defaults to *. If second is not given, it\n\
    \ defaults to 0.\n\
    \ Shorthands @yearly, @monthly, @weekly, @daily, and @hourly are also\n\
    \ accepted instead of the 5-7 time fields.\n\
    \ Optionally, the string can be preceded by CRON_TZ=<timezone name> or\n\
    \ TZ=<timezone name>, which will get copied to timezone_name. (There must\n\
    \ not also be a timezone_name present.)\n\
    \ Optionally \"#\" followed by a comment can appear at the end of the string.\n\
    \ Note that the special case that some cron implementations have for\n\
    \ treating day_of_month and day_of_week as \"or\" instead of \"and\" when both\n\
    \ are set is not implemented.\n\
    \ @every <interval>[/<phase>] is accepted and gets compiled into an\n\
    \ IntervalSpec instead. <interval> and <phase> should be a decimal integer\n\
    \ with a unit suffix s, m, h, or d.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\EOT\163\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\EOT\163\SOH\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\163\SOH\DC4\US\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\163\SOH\"#\n\
    \7\n\
    \\EOT\EOT\EOT\STX\STX\DC2\EOT\165\SOH\EOT'\SUB) Calendar-based specifications of times.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\EOT\165\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\EOT\165\SOH\r\EM\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\EOT\165\SOH\SUB\"\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\EOT\165\SOH%&\n\
    \7\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\EOT\167\SOH\EOT'\SUB) Interval-based specifications of times.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\EOT\DC2\EOT\167\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ACK\DC2\EOT\167\SOH\r\EM\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\EOT\167\SOH\SUB\"\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\EOT\167\SOH%&\n\
    \w\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\EOT\170\SOH\EOTC\SUBi Any timestamps matching any of exclude_* will be skipped.\n\
    \ Deprecated. Use exclude_structured_calendar.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\EOT\DC2\EOT\170\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\ACK\DC2\EOT\170\SOH\r\EM\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\EOT\170\SOH\SUB*\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\EOT\170\SOH-.\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\b\DC2\EOT\170\SOH/B\n\
    \\SO\n\
    \\ACK\EOT\EOT\STX\EOT\b\ETX\DC2\EOT\170\SOH0A\n\
    \\f\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\EOT\171\SOH\EOTD\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\EOT\DC2\EOT\171\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\ACK\DC2\EOT\171\SOH\r#\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\EOT\171\SOH$?\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\EOT\171\SOHBC\n\
    \\153\SOH\n\
    \\EOT\EOT\EOT\STX\ACK\DC2\EOT\174\SOH\EOT-\SUB\138\SOH If start_time is set, any timestamps before start_time will be skipped.\n\
    \ (Together, start_time and end_time make an inclusive interval.)\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ACK\ACK\DC2\EOT\174\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ACK\SOH\DC2\EOT\174\SOH\RS(\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ACK\ETX\DC2\EOT\174\SOH+,\n\
    \R\n\
    \\EOT\EOT\EOT\STX\a\DC2\EOT\176\SOH\EOT+\SUBD If end_time is set, any timestamps after end_time will be skipped.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\a\ACK\DC2\EOT\176\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\a\SOH\DC2\EOT\176\SOH\RS&\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\a\ETX\DC2\EOT\176\SOH)*\n\
    \q\n\
    \\EOT\EOT\EOT\STX\b\DC2\EOT\179\SOH\EOT(\SUBc All timestamps will be incremented by a random value from 0 to this\n\
    \ amount of jitter. Default: 0\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\b\ACK\DC2\EOT\179\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\b\SOH\DC2\EOT\179\SOH\GS#\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\b\ETX\DC2\EOT\179\SOH&'\n\
    \\187\t\n\
    \\EOT\EOT\EOT\STX\t\DC2\EOT\203\SOH\EOT\RS\SUB\172\t Time zone to interpret all calendar-based specs in.\n\
    \\n\
    \ If unset, defaults to UTC. We recommend using UTC for your application if\n\
    \ at all possible, to avoid various surprising properties of time zones.\n\
    \\n\
    \ Time zones may be provided by name, corresponding to names in the IANA\n\
    \ time zone database (see https://www.iana.org/time-zones). The definition\n\
    \ will be loaded by the Temporal server from the environment it runs in.\n\
    \\n\
    \ If your application requires more control over the time zone definition\n\
    \ used, it may pass in a complete definition in the form of a TZif file\n\
    \ from the time zone database. If present, this will be used instead of\n\
    \ loading anything from the environment. You are then responsible for\n\
    \ updating timezone_data when the definition changes.\n\
    \\n\
    \ Calendar spec matching is based on literal matching of the clock time\n\
    \ with no special handling of DST: if you write a calendar spec that fires\n\
    \ at 2:30am and specify a time zone that follows DST, that action will not\n\
    \ be triggered on the day that has no 2:30am. Similarly, an action that\n\
    \ fires at 1:30am will be triggered twice on the day that has two 1:30s.\n\
    \\n\
    \ Also note that no actions are taken on leap-seconds (e.g. 23:59:60 UTC).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\t\ENQ\DC2\EOT\203\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\t\SOH\DC2\EOT\203\SOH\v\CAN\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\t\ETX\DC2\EOT\203\SOH\ESC\GS\n\
    \\f\n\
    \\EOT\EOT\EOT\STX\n\
    \\DC2\EOT\204\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\n\
    \\ENQ\DC2\EOT\204\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\n\
    \\SOH\DC2\EOT\204\SOH\n\
    \\ETB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\n\
    \\ETX\DC2\EOT\204\SOH\SUB\FS\n\
    \\f\n\
    \\STX\EOT\ENQ\DC2\ACK\207\SOH\NUL\229\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\207\SOH\b\CAN\n\
    \\222\SOH\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\212\SOH\EOTC\SUB\207\SOH Policy for overlaps.\n\
    \ Note that this can be changed after a schedule has taken some actions,\n\
    \ and some changes might produce unintuitive results. In general, the later\n\
    \ policy overrides the earlier policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\EOT\212\SOH\EOT/\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\212\SOH0>\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\212\SOHAB\n\
    \\172\STX\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\219\SOH\EOT0\SUB\157\STX Policy for catchups:\n\
    \ If the Temporal server misses an action due to one or more components\n\
    \ being down, and comes back up, the action will be run if the scheduled\n\
    \ time is within this window from the current time.\n\
    \ This value defaults to one year, and can't be less than 10 seconds.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\EOT\219\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\219\SOH\GS+\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\219\SOH./\n\
    \\180\SOH\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\EOT\224\SOH\EOT\RS\SUB\165\SOH If true, and a workflow run fails or times out, turn on \"paused\".\n\
    \ This applies after retry policies: the full chain of retries must fail to\n\
    \ trigger a pause here.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\EOT\224\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\EOT\224\SOH\t\EM\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\EOT\224\SOH\FS\GS\n\
    \\DEL\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\EOT\228\SOH\EOT'\SUBq If true, and the action would start a workflow, a timestamp will not be\n\
    \ appended to the scheduled workflow id.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ENQ\DC2\EOT\228\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\EOT\228\SOH\t\"\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\EOT\228\SOH%&\n\
    \\f\n\
    \\STX\EOT\ACK\DC2\ACK\231\SOH\NUL\240\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\231\SOH\b\SYN\n\
    \\SO\n\
    \\EOT\EOT\ACK\b\NUL\DC2\ACK\232\SOH\EOT\239\SOH\ENQ\n\
    \\r\n\
    \\ENQ\EOT\ACK\b\NUL\SOH\DC2\EOT\232\SOH\n\
    \\DLE\n\
    \\241\SOH\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\238\SOH\bM\SUB\226\SOH All fields of NewWorkflowExecutionInfo are valid except for:\n\
    \ - workflow_id_reuse_policy\n\
    \ - cron_schedule\n\
    \ The workflow id of the started workflow may not match this exactly,\n\
    \ it may have a timestamp appended for uniqueness.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\EOT\238\SOH\b9\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\238\SOH:H\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\238\SOHKL\n\
    \\f\n\
    \\STX\EOT\a\DC2\ACK\242\SOH\NUL\255\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\242\SOH\b\FS\n\
    \]\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\244\SOH\EOT0\SUBO Time that the action was taken (according to the schedule, including jitter).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\EOT\244\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\244\SOH\RS+\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\244\SOH./\n\
    \;\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\247\SOH\EOT.\SUB- Time that the action was taken (real time).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\EOT\247\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\247\SOH\RS)\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\247\SOH,-\n\
    \-\n\
    \\EOT\EOT\a\STX\STX\DC2\EOT\250\SOH\EOTH\SUB\US If action was start_workflow:\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ACK\DC2\EOT\250\SOH\EOT,\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\EOT\250\SOH-B\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\EOT\250\SOHEG\n\
    \\138\SOH\n\
    \\EOT\EOT\a\STX\ETX\DC2\EOT\254\SOH\EOTM\SUB| If the action was start_workflow, this field will reflect an\n\
    \ eventually-consistent view of the started workflow's status.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ACK\DC2\EOT\254\SOH\EOT1\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\EOT\254\SOH2G\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\EOT\254\SOHJL\n\
    \\f\n\
    \\STX\EOT\b\DC2\ACK\129\STX\NUL\147\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\129\STX\b\NAK\n\
    \\211\SOH\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\133\STX\EOT\NAK\SUB\196\SOH Informative human-readable message with contextual notes, e.g. the reason\n\
    \ a schedule is paused. The system may overwrite this message on certain\n\
    \ conditions, e.g. when pause-on-failure happens.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\133\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\133\STX\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\133\STX\DC3\DC4\n\
    \L\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\136\STX\EOT\DC4\SUB> If true, do not take any actions based on the schedule spec.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\EOT\136\STX\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\136\STX\t\SI\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\136\STX\DC2\DC3\n\
    \\204\ETX\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT\145\STX\EOT\GS\SUB\189\ETX If limited_actions is true, decrement remaining_actions after each\n\
    \ action, and do not take any more scheduled actions if remaining_actions\n\
    \ is zero. Actions may still be taken by explicit request (i.e. trigger\n\
    \ immediately or backfill). Skipped actions (due to overlap policy) do not\n\
    \ count against remaining actions.\n\
    \ If a schedule has no more remaining actions, then the schedule will be\n\
    \ subject to automatic deletion (after several days).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\EOT\145\STX\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\145\STX\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\145\STX\ESC\FS\n\
    \\f\n\
    \\EOT\EOT\b\STX\ETX\DC2\EOT\146\STX\EOT \n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ENQ\DC2\EOT\146\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\EOT\146\STX\n\
    \\ESC\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\EOT\146\STX\RS\US\n\
    \\f\n\
    \\STX\EOT\t\DC2\ACK\149\STX\NUL\156\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\149\STX\b!\n\
    \E\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\151\STX\EOTC\SUB7 If set, override overlap policy for this one request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\151\STX\EOT/\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\151\STX0>\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\151\STXAB\n\
    \z\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\155\STX\EOT1\SUBl Timestamp used for the identity of the target workflow.\n\
    \ If not set the default value is the current time.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\EOT\155\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\155\STX\RS,\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\155\STX/0\n\
    \\f\n\
    \\STX\EOT\n\
    \\DC2\ACK\158\STX\NUL\169\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\158\STX\b\ETB\n\
    \\148\ETX\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\165\STX\EOT-\SUB\133\ETX Time range to evaluate schedule in. Currently, this time range is\n\
    \ exclusive on start_time and inclusive on end_time. (This is admittedly\n\
    \ counterintuitive and it may change in the future, so to be safe, use a\n\
    \ start time strictly before a scheduled time.) Also note that an action\n\
    \ nominally scheduled in the interval but with jitter that pushes it after\n\
    \ end_time will not be included.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ACK\DC2\EOT\165\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\165\STX\RS(\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\165\STX+,\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\166\STX\EOT+\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ACK\DC2\EOT\166\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\166\STX\RS&\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\166\STX)*\n\
    \A\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\EOT\168\STX\EOTC\SUB3 If set, override overlap policy for this request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ACK\DC2\EOT\168\STX\EOT/\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\EOT\168\STX0>\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\EOT\168\STXAB\n\
    \\f\n\
    \\STX\EOT\v\DC2\ACK\171\STX\NUL\189\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\171\STX\b\NAK\n\
    \7\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\173\STX\EOT6\SUB) If set, trigger one action immediately.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ACK\DC2\EOT\173\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\173\STX\RS1\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\173\STX45\n\
    \\203\SOH\n\
    \\EOT\EOT\v\STX\SOH\DC2\EOT\178\STX\EOT2\SUB\188\SOH If set, runs though the specified time period(s) and takes actions as if that time\n\
    \ passed by right now, all at once. The overlap policy can be overridden for the\n\
    \ scope of the backfill.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\EOT\DC2\EOT\178\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ACK\DC2\EOT\178\STX\r\FS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\EOT\178\STX\GS-\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\EOT\178\STX01\n\
    \\130\SOH\n\
    \\EOT\EOT\v\STX\STX\DC2\EOT\182\STX\EOT\NAK\SUBt If set, change the state to paused or unpaused (respectively) and set the\n\
    \ notes field to the value of the string.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ENQ\DC2\EOT\182\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\EOT\182\STX\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\EOT\182\STX\DC3\DC4\n\
    \\f\n\
    \\EOT\EOT\v\STX\ETX\DC2\EOT\183\STX\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ENQ\DC2\EOT\183\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\SOH\DC2\EOT\183\STX\v\DC2\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ETX\DC2\EOT\183\STX\NAK\SYN\n\
    \\160\SOH\n\
    \\EOT\EOT\v\STX\EOT\DC2\EOT\188\STX\EOTG\SUB\145\SOH Experimental.\n\
    \ If set, applies the specified time-skipping configuration to this schedule,\n\
    \ replacing any existing time-skipping configuration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\ACK\DC2\EOT\188\STX\EOT-\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\SOH\DC2\EOT\188\STX.B\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\ETX\DC2\EOT\188\STXEF\n\
    \\f\n\
    \\STX\EOT\f\DC2\ACK\191\STX\NUL\236\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\191\STX\b\DC4\n\
    \/\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\193\STX\EOT\ESC\SUB! Number of actions taken so far.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\EOT\193\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\193\STX\n\
    \\SYN\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\193\STX\EM\SUB\n\
    \a\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\196\STX\EOT$\SUBS Number of times a scheduled action was skipped due to missing the catchup window.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\EOT\196\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\196\STX\n\
    \\US\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\196\STX\"#\n\
    \9\n\
    \\EOT\EOT\f\STX\STX\DC2\EOT\199\STX\EOT\RS\SUB+ Number of skipped actions due to overlap.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ENQ\DC2\EOT\199\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\SOH\DC2\EOT\199\STX\n\
    \\EM\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ETX\DC2\EOT\199\STX\FS\GS\n\
    \>\n\
    \\EOT\EOT\f\STX\ETX\DC2\EOT\202\STX\EOT\RS\SUB0 Number of dropped actions due to buffer limit.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\ENQ\DC2\EOT\202\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\SOH\DC2\EOT\202\STX\n\
    \\CAN\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\ETX\DC2\EOT\202\STX\ESC\GS\n\
    \\214\SOH\n\
    \\EOT\EOT\f\STX\EOT\DC2\EOT\207\STX\EOT\ESC\SUB\199\SOH Number of actions in the buffer. The buffer holds the actions that cannot\n\
    \ be immediately triggered (due to the overlap policy). These actions can be a result of\n\
    \ the normal schedule or a backfill.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\ENQ\DC2\EOT\207\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\SOH\DC2\EOT\207\STX\n\
    \\NAK\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\ETX\DC2\EOT\207\STX\CAN\SUB\n\
    \\228\STX\n\
    \\EOT\EOT\f\STX\ENQ\DC2\EOT\214\STX\EOTL\SUB\213\STX Currently-running workflows started by this schedule. (There might be\n\
    \ more than one if the overlap policy allows overlaps.)\n\
    \ Note that the run_ids in here are the original execution run ids as\n\
    \ started by the schedule. If the workflows retried, did continue-as-new,\n\
    \ or were reset, they might still be running but with a different run_id.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\EOT\DC2\EOT\214\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\ACK\DC2\EOT\214\STX\r5\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\SOH\DC2\EOT\214\STX6G\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\ETX\DC2\EOT\214\STXJK\n\
    \P\n\
    \\EOT\EOT\f\STX\ACK\DC2\EOT\217\STX\EOT5\SUBB Most recent ten actual action times (including manual triggers).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ACK\EOT\DC2\EOT\217\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ACK\ACK\DC2\EOT\217\STX\r!\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ACK\SOH\DC2\EOT\217\STX\"0\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ACK\ETX\DC2\EOT\217\STX34\n\
    \0\n\
    \\EOT\EOT\f\STX\a\DC2\EOT\220\STX\EOT?\SUB\" Next ten scheduled action times.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\a\EOT\DC2\EOT\220\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\f\STX\a\ACK\DC2\EOT\220\STX\r&\n\
    \\r\n\
    \\ENQ\EOT\f\STX\a\SOH\DC2\EOT\220\STX':\n\
    \\r\n\
    \\ENQ\EOT\f\STX\a\ETX\DC2\EOT\220\STX=>\n\
    \@\n\
    \\EOT\EOT\f\STX\b\DC2\EOT\223\STX\EOT.\SUB2 Timestamps of schedule creation and last update.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\b\ACK\DC2\EOT\223\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\f\STX\b\SOH\DC2\EOT\223\STX\RS)\n\
    \\r\n\
    \\ENQ\EOT\f\STX\b\ETX\DC2\EOT\223\STX,-\n\
    \\f\n\
    \\EOT\EOT\f\STX\t\DC2\EOT\224\STX\EOT.\n\
    \\r\n\
    \\ENQ\EOT\f\STX\t\ACK\DC2\EOT\224\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\f\STX\t\SOH\DC2\EOT\224\STX\RS)\n\
    \\r\n\
    \\ENQ\EOT\f\STX\t\ETX\DC2\EOT\224\STX,-\n\
    \\ESC\n\
    \\EOT\EOT\f\STX\n\
    \\DC2\EOT\227\STX\EOT:\SUB\r Deprecated.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\n\
    \\ENQ\DC2\EOT\227\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\n\
    \\SOH\DC2\EOT\227\STX\v!\n\
    \\r\n\
    \\ENQ\EOT\f\STX\n\
    \\ETX\DC2\EOT\227\STX$%\n\
    \\r\n\
    \\ENQ\EOT\f\STX\n\
    \\b\DC2\EOT\227\STX&9\n\
    \\SO\n\
    \\ACK\EOT\f\STX\n\
    \\b\ETX\DC2\EOT\227\STX'8\n\
    \T\n\
    \\EOT\EOT\f\STX\v\DC2\EOT\230\STX\EOT \SUBF Size of the schedule's internal state (including payloads) in bytes.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\v\ENQ\DC2\EOT\230\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\f\STX\v\SOH\DC2\EOT\230\STX\n\
    \\SUB\n\
    \\r\n\
    \\ENQ\EOT\f\STX\v\ETX\DC2\EOT\230\STX\GS\US\n\
    \\152\SOH\n\
    \\EOT\EOT\f\STX\f\DC2\EOT\235\STX\EOTD\SUB\137\SOH Experimental.\n\
    \ Information about time skipping for this schedule.\n\
    \ If the schedule has never enabled time skipping, this will be unset.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\f\ACK\DC2\EOT\235\STX\EOT+\n\
    \\r\n\
    \\ENQ\EOT\f\STX\f\SOH\DC2\EOT\235\STX,>\n\
    \\r\n\
    \\ENQ\EOT\f\STX\f\ETX\DC2\EOT\235\STXAC\n\
    \\f\n\
    \\STX\EOT\r\DC2\ACK\238\STX\NUL\243\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\238\STX\b\DLE\n\
    \\f\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\239\STX\EOT\SUB\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ACK\DC2\EOT\239\STX\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\239\STX\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\239\STX\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\r\STX\SOH\DC2\EOT\240\STX\EOT\RS\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ACK\DC2\EOT\240\STX\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\EOT\240\STX\DC3\EM\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\EOT\240\STX\FS\GS\n\
    \\f\n\
    \\EOT\EOT\r\STX\STX\DC2\EOT\241\STX\EOT\"\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ACK\DC2\EOT\241\STX\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\SOH\DC2\EOT\241\STX\NAK\GS\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ETX\DC2\EOT\241\STX !\n\
    \\f\n\
    \\EOT\EOT\r\STX\ETX\DC2\EOT\242\STX\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\ACK\DC2\EOT\242\STX\EOT\DC1\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\SOH\DC2\EOT\242\STX\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\ETX\DC2\EOT\242\STX\SUB\ESC\n\
    \\130\SOH\n\
    \\STX\EOT\SO\DC2\ACK\247\STX\NUL\139\ETX\SOH\SUBt ScheduleListInfo is an abbreviated set of values from Schedule and ScheduleInfo\n\
    \ that's returned in ListSchedules.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\247\STX\b\CAN\n\
    \Y\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\250\STX\EOT\SUB\SUBK From spec:\n\
    \ Some fields are dropped from this copy of spec: timezone_data\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ACK\DC2\EOT\250\STX\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\250\STX\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\250\STX\CAN\EM\n\
    \\177\SOH\n\
    \\EOT\EOT\SO\STX\SOH\DC2\EOT\255\STX\EOT:\SUB\162\SOH From action:\n\
    \ Action is a oneof field, but we need to encode this in JSON and oneof fields don't work\n\
    \ well with JSON. If action is start_workflow, this is set:\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ACK\DC2\EOT\255\STX\EOT'\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\EOT\255\STX(5\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\EOT\255\STX89\n\
    \\ESC\n\
    \\EOT\EOT\SO\STX\STX\DC2\EOT\130\ETX\EOT\NAK\SUB\r From state:\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ENQ\DC2\EOT\130\ETX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\SOH\DC2\EOT\130\ETX\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ETX\DC2\EOT\130\ETX\DC3\DC4\n\
    \\f\n\
    \\EOT\EOT\SO\STX\ETX\DC2\EOT\131\ETX\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\ENQ\DC2\EOT\131\ETX\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\SOH\DC2\EOT\131\ETX\t\SI\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\ETX\DC2\EOT\131\ETX\DC2\DC3\n\
    \0\n\
    \\EOT\EOT\SO\STX\EOT\DC2\EOT\134\ETX\EOT5\SUB\" From info (maybe fewer entries):\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EOT\EOT\DC2\EOT\134\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EOT\ACK\DC2\EOT\134\ETX\r!\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EOT\SOH\DC2\EOT\134\ETX\"0\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EOT\ETX\DC2\EOT\134\ETX34\n\
    \\f\n\
    \\EOT\EOT\SO\STX\ENQ\DC2\EOT\135\ETX\EOT?\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ENQ\EOT\DC2\EOT\135\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ENQ\ACK\DC2\EOT\135\ETX\r&\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ENQ\SOH\DC2\EOT\135\ETX':\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ENQ\ETX\DC2\EOT\135\ETX=>\n\
    \T\n\
    \\EOT\EOT\SO\STX\ACK\DC2\EOT\138\ETX\EOT\US\SUBF Size of the schedule's internal state (including payloads) in bytes.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ACK\ENQ\DC2\EOT\138\ETX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ACK\SOH\DC2\EOT\138\ETX\n\
    \\SUB\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ACK\ETX\DC2\EOT\138\ETX\GS\RS\n\
    \?\n\
    \\STX\EOT\SI\DC2\ACK\142\ETX\NUL\147\ETX\SOH\SUB1 ScheduleListEntry is returned by ListSchedules.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\142\ETX\b\EM\n\
    \\f\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\143\ETX\EOT\ESC\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ENQ\DC2\EOT\143\ETX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\143\ETX\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\143\ETX\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\SI\STX\SOH\DC2\EOT\144\ETX\EOT)\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ACK\DC2\EOT\144\ETX\EOT\US\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\EOT\144\ETX $\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\EOT\144\ETX'(\n\
    \\f\n\
    \\EOT\EOT\SI\STX\STX\DC2\EOT\145\ETX\EOTB\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ACK\DC2\EOT\145\ETX\EOT+\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\SOH\DC2\EOT\145\ETX,=\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ETX\DC2\EOT\145\ETX@A\n\
    \\f\n\
    \\EOT\EOT\SI\STX\ETX\DC2\EOT\146\ETX\EOT\RS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ACK\DC2\EOT\146\ETX\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\SOH\DC2\EOT\146\ETX\NAK\EM\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ETX\DC2\EOT\146\ETX\FS\GSb\ACKproto3"