{- This file was auto-generated from temporal/api/sdk/v1/event_group_marker.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Sdk.V1.EventGroupMarker (
        EventGroupMarker(), EventGroupMarker'Variant(..),
        _EventGroupMarker'Label', _EventGroupMarker'InboundEvent',
        _EventGroupMarker'InboundUpdate', EventGroupMarker'InboundEvent(),
        EventGroupMarker'InboundUpdate(), EventGroupMarker'Label()
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
import qualified Proto.Temporal.Api.Common.V1.Message
{- | Fields :
     
         * 'Proto.Temporal.Api.Sdk.V1.EventGroupMarker_Fields.maybe'variant' @:: Lens' EventGroupMarker (Prelude.Maybe EventGroupMarker'Variant)@
         * 'Proto.Temporal.Api.Sdk.V1.EventGroupMarker_Fields.maybe'label' @:: Lens' EventGroupMarker (Prelude.Maybe EventGroupMarker'Label)@
         * 'Proto.Temporal.Api.Sdk.V1.EventGroupMarker_Fields.label' @:: Lens' EventGroupMarker EventGroupMarker'Label@
         * 'Proto.Temporal.Api.Sdk.V1.EventGroupMarker_Fields.maybe'inboundEvent' @:: Lens' EventGroupMarker (Prelude.Maybe EventGroupMarker'InboundEvent)@
         * 'Proto.Temporal.Api.Sdk.V1.EventGroupMarker_Fields.inboundEvent' @:: Lens' EventGroupMarker EventGroupMarker'InboundEvent@
         * 'Proto.Temporal.Api.Sdk.V1.EventGroupMarker_Fields.maybe'inboundUpdate' @:: Lens' EventGroupMarker (Prelude.Maybe EventGroupMarker'InboundUpdate)@
         * 'Proto.Temporal.Api.Sdk.V1.EventGroupMarker_Fields.inboundUpdate' @:: Lens' EventGroupMarker EventGroupMarker'InboundUpdate@ -}
data EventGroupMarker
  = EventGroupMarker'_constructor {_EventGroupMarker'variant :: !(Prelude.Maybe EventGroupMarker'Variant),
                                   _EventGroupMarker'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventGroupMarker where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data EventGroupMarker'Variant
  = EventGroupMarker'Label' !EventGroupMarker'Label |
    EventGroupMarker'InboundEvent' !EventGroupMarker'InboundEvent |
    EventGroupMarker'InboundUpdate' !EventGroupMarker'InboundUpdate
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField EventGroupMarker "maybe'variant" (Prelude.Maybe EventGroupMarker'Variant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventGroupMarker'variant
           (\ x__ y__ -> x__ {_EventGroupMarker'variant = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventGroupMarker "maybe'label" (Prelude.Maybe EventGroupMarker'Label) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventGroupMarker'variant
           (\ x__ y__ -> x__ {_EventGroupMarker'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (EventGroupMarker'Label' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap EventGroupMarker'Label' y__))
instance Data.ProtoLens.Field.HasField EventGroupMarker "label" EventGroupMarker'Label where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventGroupMarker'variant
           (\ x__ y__ -> x__ {_EventGroupMarker'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (EventGroupMarker'Label' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap EventGroupMarker'Label' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField EventGroupMarker "maybe'inboundEvent" (Prelude.Maybe EventGroupMarker'InboundEvent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventGroupMarker'variant
           (\ x__ y__ -> x__ {_EventGroupMarker'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (EventGroupMarker'InboundEvent' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap EventGroupMarker'InboundEvent' y__))
instance Data.ProtoLens.Field.HasField EventGroupMarker "inboundEvent" EventGroupMarker'InboundEvent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventGroupMarker'variant
           (\ x__ y__ -> x__ {_EventGroupMarker'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (EventGroupMarker'InboundEvent' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap EventGroupMarker'InboundEvent' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField EventGroupMarker "maybe'inboundUpdate" (Prelude.Maybe EventGroupMarker'InboundUpdate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventGroupMarker'variant
           (\ x__ y__ -> x__ {_EventGroupMarker'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (EventGroupMarker'InboundUpdate' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap EventGroupMarker'InboundUpdate' y__))
instance Data.ProtoLens.Field.HasField EventGroupMarker "inboundUpdate" EventGroupMarker'InboundUpdate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventGroupMarker'variant
           (\ x__ y__ -> x__ {_EventGroupMarker'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (EventGroupMarker'InboundUpdate' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap EventGroupMarker'InboundUpdate' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message EventGroupMarker where
  messageName _
    = Data.Text.pack "temporal.api.sdk.v1.EventGroupMarker"
  packedMessageDescriptor _
    = "\n\
      \\DLEEventGroupMarker\DC2C\n\
      \\ENQlabel\CAN\SOH \SOH(\v2+.temporal.api.sdk.v1.EventGroupMarker.LabelH\NULR\ENQlabel\DC2Y\n\
      \\rinbound_event\CAN\STX \SOH(\v22.temporal.api.sdk.v1.EventGroupMarker.InboundEventH\NULR\finboundEvent\DC2\\\n\
      \\SOinbound_update\CAN\ETX \SOH(\v23.temporal.api.sdk.v1.EventGroupMarker.InboundUpdateH\NULR\rinboundUpdate\SUBN\n\
      \\ENQLabel\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\tR\STXid\DC25\n\
      \\ENQlabel\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQlabel\SUB8\n\
      \\fInboundEvent\DC2(\n\
      \\DLEinbound_event_id\CAN\SOH \SOH(\ETXR\SOinboundEventId\SUB;\n\
      \\rInboundUpdate\DC2*\n\
      \\DC1inbound_update_id\CAN\SOH \SOH(\tR\SIinboundUpdateIdB\t\n\
      \\avariant"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        label__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "label"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EventGroupMarker'Label)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'label")) ::
              Data.ProtoLens.FieldDescriptor EventGroupMarker
        inboundEvent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inbound_event"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EventGroupMarker'InboundEvent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'inboundEvent")) ::
              Data.ProtoLens.FieldDescriptor EventGroupMarker
        inboundUpdate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inbound_update"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EventGroupMarker'InboundUpdate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'inboundUpdate")) ::
              Data.ProtoLens.FieldDescriptor EventGroupMarker
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, label__field_descriptor),
           (Data.ProtoLens.Tag 2, inboundEvent__field_descriptor),
           (Data.ProtoLens.Tag 3, inboundUpdate__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventGroupMarker'_unknownFields
        (\ x__ y__ -> x__ {_EventGroupMarker'_unknownFields = y__})
  defMessage
    = EventGroupMarker'_constructor
        {_EventGroupMarker'variant = Prelude.Nothing,
         _EventGroupMarker'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventGroupMarker
          -> Data.ProtoLens.Encoding.Bytes.Parser EventGroupMarker
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
                                       "label"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"label") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "inbound_event"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"inboundEvent") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "inbound_update"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"inboundUpdate") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventGroupMarker"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'variant") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (EventGroupMarker'Label' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (EventGroupMarker'InboundEvent' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (EventGroupMarker'InboundUpdate' v))
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
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData EventGroupMarker where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventGroupMarker'_unknownFields x__)
             (Control.DeepSeq.deepseq (_EventGroupMarker'variant x__) ())
instance Control.DeepSeq.NFData EventGroupMarker'Variant where
  rnf (EventGroupMarker'Label' x__) = Control.DeepSeq.rnf x__
  rnf (EventGroupMarker'InboundEvent' x__) = Control.DeepSeq.rnf x__
  rnf (EventGroupMarker'InboundUpdate' x__) = Control.DeepSeq.rnf x__
_EventGroupMarker'Label' ::
  Data.ProtoLens.Prism.Prism' EventGroupMarker'Variant EventGroupMarker'Label
_EventGroupMarker'Label'
  = Data.ProtoLens.Prism.prism'
      EventGroupMarker'Label'
      (\ p__
         -> case p__ of
              (EventGroupMarker'Label' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_EventGroupMarker'InboundEvent' ::
  Data.ProtoLens.Prism.Prism' EventGroupMarker'Variant EventGroupMarker'InboundEvent
_EventGroupMarker'InboundEvent'
  = Data.ProtoLens.Prism.prism'
      EventGroupMarker'InboundEvent'
      (\ p__
         -> case p__ of
              (EventGroupMarker'InboundEvent' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_EventGroupMarker'InboundUpdate' ::
  Data.ProtoLens.Prism.Prism' EventGroupMarker'Variant EventGroupMarker'InboundUpdate
_EventGroupMarker'InboundUpdate'
  = Data.ProtoLens.Prism.prism'
      EventGroupMarker'InboundUpdate'
      (\ p__
         -> case p__ of
              (EventGroupMarker'InboundUpdate' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Sdk.V1.EventGroupMarker_Fields.inboundEventId' @:: Lens' EventGroupMarker'InboundEvent Data.Int.Int64@ -}
data EventGroupMarker'InboundEvent
  = EventGroupMarker'InboundEvent'_constructor {_EventGroupMarker'InboundEvent'inboundEventId :: !Data.Int.Int64,
                                                _EventGroupMarker'InboundEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventGroupMarker'InboundEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventGroupMarker'InboundEvent "inboundEventId" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventGroupMarker'InboundEvent'inboundEventId
           (\ x__ y__
              -> x__ {_EventGroupMarker'InboundEvent'inboundEventId = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventGroupMarker'InboundEvent where
  messageName _
    = Data.Text.pack
        "temporal.api.sdk.v1.EventGroupMarker.InboundEvent"
  packedMessageDescriptor _
    = "\n\
      \\fInboundEvent\DC2(\n\
      \\DLEinbound_event_id\CAN\SOH \SOH(\ETXR\SOinboundEventId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        inboundEventId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inbound_event_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"inboundEventId")) ::
              Data.ProtoLens.FieldDescriptor EventGroupMarker'InboundEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, inboundEventId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventGroupMarker'InboundEvent'_unknownFields
        (\ x__ y__
           -> x__ {_EventGroupMarker'InboundEvent'_unknownFields = y__})
  defMessage
    = EventGroupMarker'InboundEvent'_constructor
        {_EventGroupMarker'InboundEvent'inboundEventId = Data.ProtoLens.fieldDefault,
         _EventGroupMarker'InboundEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventGroupMarker'InboundEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser EventGroupMarker'InboundEvent
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
                                       "inbound_event_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"inboundEventId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "InboundEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"inboundEventId") _x
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
instance Control.DeepSeq.NFData EventGroupMarker'InboundEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventGroupMarker'InboundEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventGroupMarker'InboundEvent'inboundEventId x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Sdk.V1.EventGroupMarker_Fields.inboundUpdateId' @:: Lens' EventGroupMarker'InboundUpdate Data.Text.Text@ -}
data EventGroupMarker'InboundUpdate
  = EventGroupMarker'InboundUpdate'_constructor {_EventGroupMarker'InboundUpdate'inboundUpdateId :: !Data.Text.Text,
                                                 _EventGroupMarker'InboundUpdate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventGroupMarker'InboundUpdate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventGroupMarker'InboundUpdate "inboundUpdateId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventGroupMarker'InboundUpdate'inboundUpdateId
           (\ x__ y__
              -> x__ {_EventGroupMarker'InboundUpdate'inboundUpdateId = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventGroupMarker'InboundUpdate where
  messageName _
    = Data.Text.pack
        "temporal.api.sdk.v1.EventGroupMarker.InboundUpdate"
  packedMessageDescriptor _
    = "\n\
      \\rInboundUpdate\DC2*\n\
      \\DC1inbound_update_id\CAN\SOH \SOH(\tR\SIinboundUpdateId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        inboundUpdateId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inbound_update_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"inboundUpdateId")) ::
              Data.ProtoLens.FieldDescriptor EventGroupMarker'InboundUpdate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, inboundUpdateId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventGroupMarker'InboundUpdate'_unknownFields
        (\ x__ y__
           -> x__ {_EventGroupMarker'InboundUpdate'_unknownFields = y__})
  defMessage
    = EventGroupMarker'InboundUpdate'_constructor
        {_EventGroupMarker'InboundUpdate'inboundUpdateId = Data.ProtoLens.fieldDefault,
         _EventGroupMarker'InboundUpdate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventGroupMarker'InboundUpdate
          -> Data.ProtoLens.Encoding.Bytes.Parser EventGroupMarker'InboundUpdate
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
                                       "inbound_update_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"inboundUpdateId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "InboundUpdate"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"inboundUpdateId") _x
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
instance Control.DeepSeq.NFData EventGroupMarker'InboundUpdate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventGroupMarker'InboundUpdate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventGroupMarker'InboundUpdate'inboundUpdateId x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Sdk.V1.EventGroupMarker_Fields.id' @:: Lens' EventGroupMarker'Label Data.Text.Text@
         * 'Proto.Temporal.Api.Sdk.V1.EventGroupMarker_Fields.label' @:: Lens' EventGroupMarker'Label Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Api.Sdk.V1.EventGroupMarker_Fields.maybe'label' @:: Lens' EventGroupMarker'Label (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data EventGroupMarker'Label
  = EventGroupMarker'Label'_constructor {_EventGroupMarker'Label'id :: !Data.Text.Text,
                                         _EventGroupMarker'Label'label :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                         _EventGroupMarker'Label'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventGroupMarker'Label where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventGroupMarker'Label "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventGroupMarker'Label'id
           (\ x__ y__ -> x__ {_EventGroupMarker'Label'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventGroupMarker'Label "label" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventGroupMarker'Label'label
           (\ x__ y__ -> x__ {_EventGroupMarker'Label'label = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EventGroupMarker'Label "maybe'label" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventGroupMarker'Label'label
           (\ x__ y__ -> x__ {_EventGroupMarker'Label'label = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventGroupMarker'Label where
  messageName _
    = Data.Text.pack "temporal.api.sdk.v1.EventGroupMarker.Label"
  packedMessageDescriptor _
    = "\n\
      \\ENQLabel\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\tR\STXid\DC25\n\
      \\ENQlabel\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQlabel"
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
              Data.ProtoLens.FieldDescriptor EventGroupMarker'Label
        label__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "label"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'label")) ::
              Data.ProtoLens.FieldDescriptor EventGroupMarker'Label
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, label__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventGroupMarker'Label'_unknownFields
        (\ x__ y__ -> x__ {_EventGroupMarker'Label'_unknownFields = y__})
  defMessage
    = EventGroupMarker'Label'_constructor
        {_EventGroupMarker'Label'id = Data.ProtoLens.fieldDefault,
         _EventGroupMarker'Label'label = Prelude.Nothing,
         _EventGroupMarker'Label'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventGroupMarker'Label
          -> Data.ProtoLens.Encoding.Bytes.Parser EventGroupMarker'Label
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "label"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"label") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Label"
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
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'label") _x
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
instance Control.DeepSeq.NFData EventGroupMarker'Label where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventGroupMarker'Label'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventGroupMarker'Label'id x__)
                (Control.DeepSeq.deepseq (_EventGroupMarker'Label'label x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \,temporal/api/sdk/v1/event_group_marker.proto\DC2\DC3temporal.api.sdk.v1\SUB$temporal/api/common/v1/message.proto\"\226\ETX\n\
    \\DLEEventGroupMarker\DC2C\n\
    \\ENQlabel\CAN\SOH \SOH(\v2+.temporal.api.sdk.v1.EventGroupMarker.LabelH\NULR\ENQlabel\DC2Y\n\
    \\rinbound_event\CAN\STX \SOH(\v22.temporal.api.sdk.v1.EventGroupMarker.InboundEventH\NULR\finboundEvent\DC2\\\n\
    \\SOinbound_update\CAN\ETX \SOH(\v23.temporal.api.sdk.v1.EventGroupMarker.InboundUpdateH\NULR\rinboundUpdate\SUBN\n\
    \\ENQLabel\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\tR\STXid\DC25\n\
    \\ENQlabel\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQlabel\SUB8\n\
    \\fInboundEvent\DC2(\n\
    \\DLEinbound_event_id\CAN\SOH \SOH(\ETXR\SOinboundEventId\SUB;\n\
    \\rInboundUpdate\DC2*\n\
    \\DC1inbound_update_id\CAN\SOH \SOH(\tR\SIinboundUpdateIdB\t\n\
    \\avariantB\131\SOH\n\
    \\SYNio.temporal.api.sdk.v1B\NAKEventGroupMarkerProtoP\SOHZ\GSgo.temporal.io/api/sdk/v1;sdk\170\STX\NAKTemporalio.Api.Sdk.V1\234\STX\CANTemporalio::Api::Sdk::V1J\240\DC1\n\
    \\ACK\DC2\EOT\NUL\NUL?\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\FS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NUL4\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\EOT\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NUL/\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\ENQ\NUL/\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\ACK\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL6\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\a\NUL6\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL1\n\
    \\t\n\
    \\STX\b-\DC2\ETX\b\NUL1\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL2\n\
    \\t\n\
    \\STX\b%\DC2\ETX\t\NUL2\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\f\NUL.\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\SO\NUL?\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SO\b\CAN\n\
    \\237\SOH\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\DC2\STX\SYN\ETX\SUB\222\SOH What this Marker represents. The variant determines whether the Marker was\n\
    \ created explicitly by user code (label) or implicitly by the SDK on inbound\n\
    \ signals/events (inbound_event) or update handlers (inbound_update).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\DC2\b\SI\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC3\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\DC3\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC3\n\
    \\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC3\DC2\DC3\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC4\EOT#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\DC4\EOT\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC4\DC1\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC4!\"\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\NAK\EOT%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\NAK\EOT\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\NAK\DC2 \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\NAK#$\n\
    \W\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\EM\STX*\ETX\SUBI A user-defined short-form string value to be used as the group's label.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\EM\n\
    \\SI\n\
    \7\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX\ESC\EOT\DC2\SUB( Opaque identifier assigned by the SDK.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX\ESC\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\ESC\v\r\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\ESC\DLE\DC1\n\
    \\153\ENQ\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX)\EOT-\SUB\137\ENQ This payload should be a \"json/plain\"-encoded payload that is a single\n\
    \ JSON string for use in user interfaces. User interface formatting may not\n\
    \ apply to this text when used in \"label\" situations. The payload data\n\
    \ section is limited to 400 bytes by default.\n\
    \\n\
    \ Payload only needs to be set on the first use of a given Marker ID;\n\
    \ further references to an existing Marker ID reuse existing attributes of\n\
    \ the referenced Marker -- i.e. further label payloads are ignored.\n\
    \\n\
    \ Note that it is valid to have distinct Markers (i.e. distinct Marker IDs)\n\
    \ in a given workflow execution that carry the same label, provided that\n\
    \ they have the distinct ID.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ACK\DC2\ETX)\EOT\"\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX)#(\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX)+,\n\
    \\244\SOH\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOT2\STX4\ETX\SUB\229\SOH The event ID of an event in the present workflow that triggered implicit\n\
    \ creation of this group Marker.\n\
    \\n\
    \ The target event's type must be one of the following:\n\
    \  - `WORKFLOW_EXECUTION_STARTED`\n\
    \  - `WORKFLOW_EXECUTION_SIGNALED`\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETX2\n\
    \\SYN\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETX3\EOT\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ENQ\DC2\ETX3\EOT\t\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETX3\n\
    \\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETX3\GS\RS\n\
    \\224\STX\n\
    \\EOT\EOT\NUL\ETX\STX\DC2\EOT<\STX>\ETX\SUB\209\STX The identifier of an inbound Update (request.meta.update_id)\n\
    \ whose handler triggered implicit creation of this group Marker.\n\
    \\n\
    \ Used in place of `inbound_event_id` for Updates because the event ID of the\n\
    \ UpdateAccepted history event is not known until the Workflow Task is\n\
    \ completed and recorded by the server, which may be too late.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\STX\SOH\DC2\ETX<\n\
    \\ETB\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\NUL\DC2\ETX=\EOT!\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ENQ\DC2\ETX=\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\SOH\DC2\ETX=\v\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ETX\DC2\ETX=\US b\ACKproto3"