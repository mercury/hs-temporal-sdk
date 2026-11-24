{- This file was auto-generated from temporal/sdk/core/external_data/external_data.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Sdk.Core.ExternalData.ExternalData (
        LocalActivityMarkerData(), PatchedMarkerData()
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
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.ExternalData.ExternalData_Fields.seq' @:: Lens' LocalActivityMarkerData Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.ExternalData.ExternalData_Fields.attempt' @:: Lens' LocalActivityMarkerData Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.ExternalData.ExternalData_Fields.activityId' @:: Lens' LocalActivityMarkerData Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.ExternalData.ExternalData_Fields.activityType' @:: Lens' LocalActivityMarkerData Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.ExternalData.ExternalData_Fields.completeTime' @:: Lens' LocalActivityMarkerData Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Sdk.Core.ExternalData.ExternalData_Fields.maybe'completeTime' @:: Lens' LocalActivityMarkerData (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Sdk.Core.ExternalData.ExternalData_Fields.backoff' @:: Lens' LocalActivityMarkerData Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.ExternalData.ExternalData_Fields.maybe'backoff' @:: Lens' LocalActivityMarkerData (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.ExternalData.ExternalData_Fields.originalScheduleTime' @:: Lens' LocalActivityMarkerData Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Sdk.Core.ExternalData.ExternalData_Fields.maybe'originalScheduleTime' @:: Lens' LocalActivityMarkerData (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Sdk.Core.ExternalData.ExternalData_Fields.activationIndex' @:: Lens' LocalActivityMarkerData Data.Word.Word64@
         * 'Proto.Temporal.Sdk.Core.ExternalData.ExternalData_Fields.maybe'activationIndex' @:: Lens' LocalActivityMarkerData (Prelude.Maybe Data.Word.Word64)@ -}
data LocalActivityMarkerData
  = LocalActivityMarkerData'_constructor {_LocalActivityMarkerData'seq :: !Data.Word.Word32,
                                          _LocalActivityMarkerData'attempt :: !Data.Word.Word32,
                                          _LocalActivityMarkerData'activityId :: !Data.Text.Text,
                                          _LocalActivityMarkerData'activityType :: !Data.Text.Text,
                                          _LocalActivityMarkerData'completeTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                          _LocalActivityMarkerData'backoff :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                          _LocalActivityMarkerData'originalScheduleTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                          _LocalActivityMarkerData'activationIndex :: !(Prelude.Maybe Data.Word.Word64),
                                          _LocalActivityMarkerData'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LocalActivityMarkerData where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LocalActivityMarkerData "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalActivityMarkerData'seq
           (\ x__ y__ -> x__ {_LocalActivityMarkerData'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalActivityMarkerData "attempt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalActivityMarkerData'attempt
           (\ x__ y__ -> x__ {_LocalActivityMarkerData'attempt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalActivityMarkerData "activityId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalActivityMarkerData'activityId
           (\ x__ y__ -> x__ {_LocalActivityMarkerData'activityId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalActivityMarkerData "activityType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalActivityMarkerData'activityType
           (\ x__ y__ -> x__ {_LocalActivityMarkerData'activityType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalActivityMarkerData "completeTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalActivityMarkerData'completeTime
           (\ x__ y__ -> x__ {_LocalActivityMarkerData'completeTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LocalActivityMarkerData "maybe'completeTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalActivityMarkerData'completeTime
           (\ x__ y__ -> x__ {_LocalActivityMarkerData'completeTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalActivityMarkerData "backoff" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalActivityMarkerData'backoff
           (\ x__ y__ -> x__ {_LocalActivityMarkerData'backoff = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LocalActivityMarkerData "maybe'backoff" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalActivityMarkerData'backoff
           (\ x__ y__ -> x__ {_LocalActivityMarkerData'backoff = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalActivityMarkerData "originalScheduleTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalActivityMarkerData'originalScheduleTime
           (\ x__ y__
              -> x__ {_LocalActivityMarkerData'originalScheduleTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LocalActivityMarkerData "maybe'originalScheduleTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalActivityMarkerData'originalScheduleTime
           (\ x__ y__
              -> x__ {_LocalActivityMarkerData'originalScheduleTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalActivityMarkerData "activationIndex" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalActivityMarkerData'activationIndex
           (\ x__ y__
              -> x__ {_LocalActivityMarkerData'activationIndex = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField LocalActivityMarkerData "maybe'activationIndex" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalActivityMarkerData'activationIndex
           (\ x__ y__
              -> x__ {_LocalActivityMarkerData'activationIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Message LocalActivityMarkerData where
  messageName _
    = Data.Text.pack "coresdk.external_data.LocalActivityMarkerData"
  packedMessageDescriptor _
    = "\n\
      \\ETBLocalActivityMarkerData\DC2\DLE\n\
      \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2\CAN\n\
      \\aattempt\CAN\STX \SOH(\rR\aattempt\DC2\US\n\
      \\vactivity_id\CAN\ETX \SOH(\tR\n\
      \activityId\DC2#\n\
      \\ractivity_type\CAN\EOT \SOH(\tR\factivityType\DC2?\n\
      \\rcomplete_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\fcompleteTime\DC23\n\
      \\abackoff\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\abackoff\DC2P\n\
      \\SYNoriginal_schedule_time\CAN\a \SOH(\v2\SUB.google.protobuf.TimestampR\DC4originalScheduleTime\DC2.\n\
      \\DLEactivation_index\CAN\b \SOH(\EOTH\NULR\SIactivationIndex\136\SOH\SOHB\DC3\n\
      \\DC1_activation_index"
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
              Data.ProtoLens.FieldDescriptor LocalActivityMarkerData
        attempt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attempt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"attempt")) ::
              Data.ProtoLens.FieldDescriptor LocalActivityMarkerData
        activityId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"activityId")) ::
              Data.ProtoLens.FieldDescriptor LocalActivityMarkerData
        activityType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"activityType")) ::
              Data.ProtoLens.FieldDescriptor LocalActivityMarkerData
        completeTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "complete_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'completeTime")) ::
              Data.ProtoLens.FieldDescriptor LocalActivityMarkerData
        backoff__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "backoff"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'backoff")) ::
              Data.ProtoLens.FieldDescriptor LocalActivityMarkerData
        originalScheduleTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "original_schedule_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'originalScheduleTime")) ::
              Data.ProtoLens.FieldDescriptor LocalActivityMarkerData
        activationIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activation_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'activationIndex")) ::
              Data.ProtoLens.FieldDescriptor LocalActivityMarkerData
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, seq__field_descriptor),
           (Data.ProtoLens.Tag 2, attempt__field_descriptor),
           (Data.ProtoLens.Tag 3, activityId__field_descriptor),
           (Data.ProtoLens.Tag 4, activityType__field_descriptor),
           (Data.ProtoLens.Tag 5, completeTime__field_descriptor),
           (Data.ProtoLens.Tag 6, backoff__field_descriptor),
           (Data.ProtoLens.Tag 7, originalScheduleTime__field_descriptor),
           (Data.ProtoLens.Tag 8, activationIndex__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LocalActivityMarkerData'_unknownFields
        (\ x__ y__ -> x__ {_LocalActivityMarkerData'_unknownFields = y__})
  defMessage
    = LocalActivityMarkerData'_constructor
        {_LocalActivityMarkerData'seq = Data.ProtoLens.fieldDefault,
         _LocalActivityMarkerData'attempt = Data.ProtoLens.fieldDefault,
         _LocalActivityMarkerData'activityId = Data.ProtoLens.fieldDefault,
         _LocalActivityMarkerData'activityType = Data.ProtoLens.fieldDefault,
         _LocalActivityMarkerData'completeTime = Prelude.Nothing,
         _LocalActivityMarkerData'backoff = Prelude.Nothing,
         _LocalActivityMarkerData'originalScheduleTime = Prelude.Nothing,
         _LocalActivityMarkerData'activationIndex = Prelude.Nothing,
         _LocalActivityMarkerData'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LocalActivityMarkerData
          -> Data.ProtoLens.Encoding.Bytes.Parser LocalActivityMarkerData
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "attempt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"attempt") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "activity_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"activityId") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "activity_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"activityType") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "complete_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"completeTime") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "backoff"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"backoff") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "original_schedule_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"originalScheduleTime") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "activation_index"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"activationIndex") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "LocalActivityMarkerData"
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"attempt") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"activityId") _x
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
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"activityType") _x
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
                                (Data.ProtoLens.Field.field @"maybe'completeTime") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'backoff") _x
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
                                      (Data.ProtoLens.Field.field @"maybe'originalScheduleTime") _x
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
                                         (Data.ProtoLens.Field.field @"maybe'activationIndex") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData LocalActivityMarkerData where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LocalActivityMarkerData'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LocalActivityMarkerData'seq x__)
                (Control.DeepSeq.deepseq
                   (_LocalActivityMarkerData'attempt x__)
                   (Control.DeepSeq.deepseq
                      (_LocalActivityMarkerData'activityId x__)
                      (Control.DeepSeq.deepseq
                         (_LocalActivityMarkerData'activityType x__)
                         (Control.DeepSeq.deepseq
                            (_LocalActivityMarkerData'completeTime x__)
                            (Control.DeepSeq.deepseq
                               (_LocalActivityMarkerData'backoff x__)
                               (Control.DeepSeq.deepseq
                                  (_LocalActivityMarkerData'originalScheduleTime x__)
                                  (Control.DeepSeq.deepseq
                                     (_LocalActivityMarkerData'activationIndex x__) ()))))))))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.ExternalData.ExternalData_Fields.id' @:: Lens' PatchedMarkerData Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.ExternalData.ExternalData_Fields.deprecated' @:: Lens' PatchedMarkerData Prelude.Bool@ -}
data PatchedMarkerData
  = PatchedMarkerData'_constructor {_PatchedMarkerData'id :: !Data.Text.Text,
                                    _PatchedMarkerData'deprecated :: !Prelude.Bool,
                                    _PatchedMarkerData'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PatchedMarkerData where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PatchedMarkerData "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PatchedMarkerData'id
           (\ x__ y__ -> x__ {_PatchedMarkerData'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PatchedMarkerData "deprecated" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PatchedMarkerData'deprecated
           (\ x__ y__ -> x__ {_PatchedMarkerData'deprecated = y__}))
        Prelude.id
instance Data.ProtoLens.Message PatchedMarkerData where
  messageName _
    = Data.Text.pack "coresdk.external_data.PatchedMarkerData"
  packedMessageDescriptor _
    = "\n\
      \\DC1PatchedMarkerData\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\tR\STXid\DC2\RS\n\
      \\n\
      \deprecated\CAN\STX \SOH(\bR\n\
      \deprecated"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor PatchedMarkerData
        deprecated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deprecated"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"deprecated")) ::
              Data.ProtoLens.FieldDescriptor PatchedMarkerData
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, deprecated__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PatchedMarkerData'_unknownFields
        (\ x__ y__ -> x__ {_PatchedMarkerData'_unknownFields = y__})
  defMessage
    = PatchedMarkerData'_constructor
        {_PatchedMarkerData'id = Data.ProtoLens.fieldDefault,
         _PatchedMarkerData'deprecated = Data.ProtoLens.fieldDefault,
         _PatchedMarkerData'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PatchedMarkerData
          -> Data.ProtoLens.Encoding.Bytes.Parser PatchedMarkerData
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
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
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
          (do loop Data.ProtoLens.defMessage) "PatchedMarkerData"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
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
instance Control.DeepSeq.NFData PatchedMarkerData where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PatchedMarkerData'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PatchedMarkerData'id x__)
                (Control.DeepSeq.deepseq (_PatchedMarkerData'deprecated x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \3temporal/sdk/core/external_data/external_data.proto\DC2\NAKcoresdk.external_data\SUB\RSgoogle/protobuf/duration.proto\SUB\USgoogle/protobuf/timestamp.proto\"\152\ETX\n\
    \\ETBLocalActivityMarkerData\DC2\DLE\n\
    \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2\CAN\n\
    \\aattempt\CAN\STX \SOH(\rR\aattempt\DC2\US\n\
    \\vactivity_id\CAN\ETX \SOH(\tR\n\
    \activityId\DC2#\n\
    \\ractivity_type\CAN\EOT \SOH(\tR\factivityType\DC2?\n\
    \\rcomplete_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\fcompleteTime\DC23\n\
    \\abackoff\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\abackoff\DC2P\n\
    \\SYNoriginal_schedule_time\CAN\a \SOH(\v2\SUB.google.protobuf.TimestampR\DC4originalScheduleTime\DC2.\n\
    \\DLEactivation_index\CAN\b \SOH(\EOTH\NULR\SIactivationIndex\136\SOH\SOHB\DC3\n\
    \\DC1_activation_index\"C\n\
    \\DC1PatchedMarkerData\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\tR\STXid\DC2\RS\n\
    \\n\
    \deprecated\CAN\STX \SOH(\bR\n\
    \deprecatedB2\234\STX/Temporalio::Internal::Bridge::Api::ExternalDataJ\196\DLE\n\
    \\ACK\DC2\EOT\NUL\NUL)\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NULH\n\
    \\t\n\
    \\STX\b-\DC2\ETX\ETX\NULH\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL)\n\
    \\166\STX\n\
    \\STX\EOT\NUL\DC2\EOT\f\NUL\"\SOH2\153\STX This file defines data that Core might write externally. The first motivating case being\n\
    \ storing data in markers in event history. Defining such data as protos provides an easy way\n\
    \ for consumers which would like to just depend on the proto package to make sense of marker data.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\f\b\US\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\r\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\r\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\r\t\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\r\SI\DLE\n\
    \\186\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DLE\STX\NAK\SUB\172\SOH The number of attempts at execution before we recorded this result. Typically starts at 1,\n\
    \ but it is possible to start at a higher number when backing off using a timer.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\DLE\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DLE\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DLE\DC3\DC4\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DC1\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\DC1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DC1\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DC1\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\DC2\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\DC2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\DC2\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\DC2\EM\SUB\n\
    \\128\STX\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\SYN\STX.\SUB\242\SOH You can think of this as \"perceived completion time\". It is the time the local activity thought\n\
    \ it was when it completed. Which could be different from wall-clock time because of workflow\n\
    \ replay. It's the WFT start time + the LA's runtime\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\SYN\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\SYN\FS)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\SYN,-\n\
    \\240\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\SUB\STX'\SUB\226\SOH If set, this local activity conceptually is retrying after the specified backoff.\n\
    \ Implementation wise, they are really two different LA machines, but with the same type & input.\n\
    \ The retry starts with an attempt number > 1.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX\SUB\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\SUB\ESC\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\SUB%&\n\
    \\160\SOH\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX\GS\STX7\SUB\146\SOH The time the LA was originally scheduled (wall clock time). This is used to track\n\
    \ schedule-to-close timeouts when timer-based backoffs are used\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETX\GS\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\GS\FS2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\GS56\n\
    \\162\STX\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX!\STX'\SUB\148\STX Position, within the workflow task, of the activation this resolution was delivered in.\n\
    \ Replay must deliver resolutions in the same activations because workflow code can branch on\n\
    \ which handles are ready. Absent in markers written by Core versions that predate this field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETX!\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX!\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX!%&\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT$\NUL)\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX$\b\EM\n\
    \\ESC\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX&\STX\DLE\SUB\SO The patch id\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX&\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX&\t\v\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX&\SO\SI\n\
    \=\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX(\STX\SYN\SUB0 Whether or not the patch is marked deprecated.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX(\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX(\a\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX(\DC4\NAKb\ACKproto3"