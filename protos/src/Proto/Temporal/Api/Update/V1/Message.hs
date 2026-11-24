{- This file was auto-generated from temporal/api/update/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Update.V1.Message (
        Acceptance(), Input(), Meta(), Outcome(), Outcome'Value(..),
        _Outcome'Success, _Outcome'Failure, Rejection(), Request(),
        Response(), UpdateRef(), WaitPolicy()
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
import qualified Proto.Temporal.Api.Enums.V1.Update
import qualified Proto.Temporal.Api.Failure.V1.Message
import qualified Proto.Temporal.Api.Nexus.V1.Message
{- | Fields :
     
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.acceptedRequestMessageId' @:: Lens' Acceptance Data.Text.Text@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.acceptedRequestSequencingEventId' @:: Lens' Acceptance Data.Int.Int64@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.acceptedRequest' @:: Lens' Acceptance Request@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.maybe'acceptedRequest' @:: Lens' Acceptance (Prelude.Maybe Request)@ -}
data Acceptance
  = Acceptance'_constructor {_Acceptance'acceptedRequestMessageId :: !Data.Text.Text,
                             _Acceptance'acceptedRequestSequencingEventId :: !Data.Int.Int64,
                             _Acceptance'acceptedRequest :: !(Prelude.Maybe Request),
                             _Acceptance'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Acceptance where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Acceptance "acceptedRequestMessageId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Acceptance'acceptedRequestMessageId
           (\ x__ y__ -> x__ {_Acceptance'acceptedRequestMessageId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Acceptance "acceptedRequestSequencingEventId" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Acceptance'acceptedRequestSequencingEventId
           (\ x__ y__
              -> x__ {_Acceptance'acceptedRequestSequencingEventId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Acceptance "acceptedRequest" Request where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Acceptance'acceptedRequest
           (\ x__ y__ -> x__ {_Acceptance'acceptedRequest = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Acceptance "maybe'acceptedRequest" (Prelude.Maybe Request) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Acceptance'acceptedRequest
           (\ x__ y__ -> x__ {_Acceptance'acceptedRequest = y__}))
        Prelude.id
instance Data.ProtoLens.Message Acceptance where
  messageName _ = Data.Text.pack "temporal.api.update.v1.Acceptance"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Acceptance\DC2=\n\
      \\ESCaccepted_request_message_id\CAN\SOH \SOH(\tR\CANacceptedRequestMessageId\DC2N\n\
      \$accepted_request_sequencing_event_id\CAN\STX \SOH(\ETXR acceptedRequestSequencingEventId\DC2J\n\
      \\DLEaccepted_request\CAN\ETX \SOH(\v2\US.temporal.api.update.v1.RequestR\SIacceptedRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        acceptedRequestMessageId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "accepted_request_message_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"acceptedRequestMessageId")) ::
              Data.ProtoLens.FieldDescriptor Acceptance
        acceptedRequestSequencingEventId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "accepted_request_sequencing_event_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field
                    @"acceptedRequestSequencingEventId")) ::
              Data.ProtoLens.FieldDescriptor Acceptance
        acceptedRequest__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "accepted_request"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Request)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'acceptedRequest")) ::
              Data.ProtoLens.FieldDescriptor Acceptance
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, 
            acceptedRequestMessageId__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            acceptedRequestSequencingEventId__field_descriptor),
           (Data.ProtoLens.Tag 3, acceptedRequest__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Acceptance'_unknownFields
        (\ x__ y__ -> x__ {_Acceptance'_unknownFields = y__})
  defMessage
    = Acceptance'_constructor
        {_Acceptance'acceptedRequestMessageId = Data.ProtoLens.fieldDefault,
         _Acceptance'acceptedRequestSequencingEventId = Data.ProtoLens.fieldDefault,
         _Acceptance'acceptedRequest = Prelude.Nothing,
         _Acceptance'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Acceptance -> Data.ProtoLens.Encoding.Bytes.Parser Acceptance
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
                                       "accepted_request_message_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"acceptedRequestMessageId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "accepted_request_sequencing_event_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"acceptedRequestSequencingEventId")
                                     y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "accepted_request"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"acceptedRequest") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Acceptance"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"acceptedRequestMessageId") _x
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
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"acceptedRequestSequencingEventId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'acceptedRequest") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Acceptance where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Acceptance'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Acceptance'acceptedRequestMessageId x__)
                (Control.DeepSeq.deepseq
                   (_Acceptance'acceptedRequestSequencingEventId x__)
                   (Control.DeepSeq.deepseq (_Acceptance'acceptedRequest x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.header' @:: Lens' Input Proto.Temporal.Api.Common.V1.Message.Header@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.maybe'header' @:: Lens' Input (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header)@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.name' @:: Lens' Input Data.Text.Text@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.args' @:: Lens' Input Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.maybe'args' @:: Lens' Input (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@ -}
data Input
  = Input'_constructor {_Input'header :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header),
                        _Input'name :: !Data.Text.Text,
                        _Input'args :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads),
                        _Input'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Input where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Input "header" Proto.Temporal.Api.Common.V1.Message.Header where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Input'header (\ x__ y__ -> x__ {_Input'header = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Input "maybe'header" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Input'header (\ x__ y__ -> x__ {_Input'header = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Input "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Input'name (\ x__ y__ -> x__ {_Input'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Input "args" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Input'args (\ x__ y__ -> x__ {_Input'args = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Input "maybe'args" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Input'args (\ x__ y__ -> x__ {_Input'args = y__}))
        Prelude.id
instance Data.ProtoLens.Message Input where
  messageName _ = Data.Text.pack "temporal.api.update.v1.Input"
  packedMessageDescriptor _
    = "\n\
      \\ENQInput\DC26\n\
      \\ACKheader\CAN\SOH \SOH(\v2\RS.temporal.api.common.v1.HeaderR\ACKheader\DC2\DC2\n\
      \\EOTname\CAN\STX \SOH(\tR\EOTname\DC24\n\
      \\EOTargs\CAN\ETX \SOH(\v2 .temporal.api.common.v1.PayloadsR\EOTargs"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Header)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'header")) ::
              Data.ProtoLens.FieldDescriptor Input
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor Input
        args__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "args"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payloads)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'args")) ::
              Data.ProtoLens.FieldDescriptor Input
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, header__field_descriptor),
           (Data.ProtoLens.Tag 2, name__field_descriptor),
           (Data.ProtoLens.Tag 3, args__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Input'_unknownFields
        (\ x__ y__ -> x__ {_Input'_unknownFields = y__})
  defMessage
    = Input'_constructor
        {_Input'header = Prelude.Nothing,
         _Input'name = Data.ProtoLens.fieldDefault,
         _Input'args = Prelude.Nothing, _Input'_unknownFields = []}
  parseMessage
    = let
        loop :: Input -> Data.ProtoLens.Encoding.Bytes.Parser Input
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
                                       "header"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"header") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "args"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"args") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Input"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'header") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'args") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Input where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Input'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Input'header x__)
                (Control.DeepSeq.deepseq
                   (_Input'name x__) (Control.DeepSeq.deepseq (_Input'args x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.updateId' @:: Lens' Meta Data.Text.Text@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.identity' @:: Lens' Meta Data.Text.Text@ -}
data Meta
  = Meta'_constructor {_Meta'updateId :: !Data.Text.Text,
                       _Meta'identity :: !Data.Text.Text,
                       _Meta'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Meta where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Meta "updateId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Meta'updateId (\ x__ y__ -> x__ {_Meta'updateId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Meta "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Meta'identity (\ x__ y__ -> x__ {_Meta'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Message Meta where
  messageName _ = Data.Text.pack "temporal.api.update.v1.Meta"
  packedMessageDescriptor _
    = "\n\
      \\EOTMeta\DC2\ESC\n\
      \\tupdate_id\CAN\SOH \SOH(\tR\bupdateId\DC2\SUB\n\
      \\bidentity\CAN\STX \SOH(\tR\bidentity"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        updateId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "update_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"updateId")) ::
              Data.ProtoLens.FieldDescriptor Meta
        identity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "identity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"identity")) ::
              Data.ProtoLens.FieldDescriptor Meta
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, updateId__field_descriptor),
           (Data.ProtoLens.Tag 2, identity__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Meta'_unknownFields
        (\ x__ y__ -> x__ {_Meta'_unknownFields = y__})
  defMessage
    = Meta'_constructor
        {_Meta'updateId = Data.ProtoLens.fieldDefault,
         _Meta'identity = Data.ProtoLens.fieldDefault,
         _Meta'_unknownFields = []}
  parseMessage
    = let
        loop :: Meta -> Data.ProtoLens.Encoding.Bytes.Parser Meta
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
                                       "update_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"updateId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "identity"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"identity") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Meta"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"updateId") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"identity") _x
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
instance Control.DeepSeq.NFData Meta where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Meta'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Meta'updateId x__)
                (Control.DeepSeq.deepseq (_Meta'identity x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.maybe'value' @:: Lens' Outcome (Prelude.Maybe Outcome'Value)@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.maybe'success' @:: Lens' Outcome (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.success' @:: Lens' Outcome Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.maybe'failure' @:: Lens' Outcome (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.failure' @:: Lens' Outcome Proto.Temporal.Api.Failure.V1.Message.Failure@ -}
data Outcome
  = Outcome'_constructor {_Outcome'value :: !(Prelude.Maybe Outcome'Value),
                          _Outcome'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Outcome where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Outcome'Value
  = Outcome'Success !Proto.Temporal.Api.Common.V1.Message.Payloads |
    Outcome'Failure !Proto.Temporal.Api.Failure.V1.Message.Failure
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Outcome "maybe'value" (Prelude.Maybe Outcome'Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Outcome'value (\ x__ y__ -> x__ {_Outcome'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Outcome "maybe'success" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Outcome'value (\ x__ y__ -> x__ {_Outcome'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Outcome'Success x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Outcome'Success y__))
instance Data.ProtoLens.Field.HasField Outcome "success" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Outcome'value (\ x__ y__ -> x__ {_Outcome'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Outcome'Success x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Outcome'Success y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Outcome "maybe'failure" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Outcome'value (\ x__ y__ -> x__ {_Outcome'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Outcome'Failure x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Outcome'Failure y__))
instance Data.ProtoLens.Field.HasField Outcome "failure" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Outcome'value (\ x__ y__ -> x__ {_Outcome'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Outcome'Failure x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Outcome'Failure y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Outcome where
  messageName _ = Data.Text.pack "temporal.api.update.v1.Outcome"
  packedMessageDescriptor _
    = "\n\
      \\aOutcome\DC2<\n\
      \\asuccess\CAN\SOH \SOH(\v2 .temporal.api.common.v1.PayloadsH\NULR\asuccess\DC2<\n\
      \\afailure\CAN\STX \SOH(\v2 .temporal.api.failure.v1.FailureH\NULR\afailureB\a\n\
      \\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        success__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "success"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payloads)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'success")) ::
              Data.ProtoLens.FieldDescriptor Outcome
        failure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failure")) ::
              Data.ProtoLens.FieldDescriptor Outcome
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, success__field_descriptor),
           (Data.ProtoLens.Tag 2, failure__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Outcome'_unknownFields
        (\ x__ y__ -> x__ {_Outcome'_unknownFields = y__})
  defMessage
    = Outcome'_constructor
        {_Outcome'value = Prelude.Nothing, _Outcome'_unknownFields = []}
  parseMessage
    = let
        loop :: Outcome -> Data.ProtoLens.Encoding.Bytes.Parser Outcome
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
                                       "success"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"success") y x)
                        18
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
          (do loop Data.ProtoLens.defMessage) "Outcome"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (Outcome'Success v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Outcome'Failure v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Outcome where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Outcome'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Outcome'value x__) ())
instance Control.DeepSeq.NFData Outcome'Value where
  rnf (Outcome'Success x__) = Control.DeepSeq.rnf x__
  rnf (Outcome'Failure x__) = Control.DeepSeq.rnf x__
_Outcome'Success ::
  Data.ProtoLens.Prism.Prism' Outcome'Value Proto.Temporal.Api.Common.V1.Message.Payloads
_Outcome'Success
  = Data.ProtoLens.Prism.prism'
      Outcome'Success
      (\ p__
         -> case p__ of
              (Outcome'Success p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Outcome'Failure ::
  Data.ProtoLens.Prism.Prism' Outcome'Value Proto.Temporal.Api.Failure.V1.Message.Failure
_Outcome'Failure
  = Data.ProtoLens.Prism.prism'
      Outcome'Failure
      (\ p__
         -> case p__ of
              (Outcome'Failure p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.rejectedRequestMessageId' @:: Lens' Rejection Data.Text.Text@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.rejectedRequestSequencingEventId' @:: Lens' Rejection Data.Int.Int64@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.rejectedRequest' @:: Lens' Rejection Request@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.maybe'rejectedRequest' @:: Lens' Rejection (Prelude.Maybe Request)@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.failure' @:: Lens' Rejection Proto.Temporal.Api.Failure.V1.Message.Failure@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.maybe'failure' @:: Lens' Rejection (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@ -}
data Rejection
  = Rejection'_constructor {_Rejection'rejectedRequestMessageId :: !Data.Text.Text,
                            _Rejection'rejectedRequestSequencingEventId :: !Data.Int.Int64,
                            _Rejection'rejectedRequest :: !(Prelude.Maybe Request),
                            _Rejection'failure :: !(Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure),
                            _Rejection'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Rejection where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Rejection "rejectedRequestMessageId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Rejection'rejectedRequestMessageId
           (\ x__ y__ -> x__ {_Rejection'rejectedRequestMessageId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Rejection "rejectedRequestSequencingEventId" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Rejection'rejectedRequestSequencingEventId
           (\ x__ y__
              -> x__ {_Rejection'rejectedRequestSequencingEventId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Rejection "rejectedRequest" Request where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Rejection'rejectedRequest
           (\ x__ y__ -> x__ {_Rejection'rejectedRequest = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Rejection "maybe'rejectedRequest" (Prelude.Maybe Request) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Rejection'rejectedRequest
           (\ x__ y__ -> x__ {_Rejection'rejectedRequest = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Rejection "failure" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Rejection'failure (\ x__ y__ -> x__ {_Rejection'failure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Rejection "maybe'failure" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Rejection'failure (\ x__ y__ -> x__ {_Rejection'failure = y__}))
        Prelude.id
instance Data.ProtoLens.Message Rejection where
  messageName _ = Data.Text.pack "temporal.api.update.v1.Rejection"
  packedMessageDescriptor _
    = "\n\
      \\tRejection\DC2=\n\
      \\ESCrejected_request_message_id\CAN\SOH \SOH(\tR\CANrejectedRequestMessageId\DC2N\n\
      \$rejected_request_sequencing_event_id\CAN\STX \SOH(\ETXR rejectedRequestSequencingEventId\DC2J\n\
      \\DLErejected_request\CAN\ETX \SOH(\v2\US.temporal.api.update.v1.RequestR\SIrejectedRequest\DC2:\n\
      \\afailure\CAN\EOT \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rejectedRequestMessageId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rejected_request_message_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rejectedRequestMessageId")) ::
              Data.ProtoLens.FieldDescriptor Rejection
        rejectedRequestSequencingEventId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rejected_request_sequencing_event_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field
                    @"rejectedRequestSequencingEventId")) ::
              Data.ProtoLens.FieldDescriptor Rejection
        rejectedRequest__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rejected_request"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Request)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rejectedRequest")) ::
              Data.ProtoLens.FieldDescriptor Rejection
        failure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failure")) ::
              Data.ProtoLens.FieldDescriptor Rejection
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, 
            rejectedRequestMessageId__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            rejectedRequestSequencingEventId__field_descriptor),
           (Data.ProtoLens.Tag 3, rejectedRequest__field_descriptor),
           (Data.ProtoLens.Tag 4, failure__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Rejection'_unknownFields
        (\ x__ y__ -> x__ {_Rejection'_unknownFields = y__})
  defMessage
    = Rejection'_constructor
        {_Rejection'rejectedRequestMessageId = Data.ProtoLens.fieldDefault,
         _Rejection'rejectedRequestSequencingEventId = Data.ProtoLens.fieldDefault,
         _Rejection'rejectedRequest = Prelude.Nothing,
         _Rejection'failure = Prelude.Nothing,
         _Rejection'_unknownFields = []}
  parseMessage
    = let
        loop :: Rejection -> Data.ProtoLens.Encoding.Bytes.Parser Rejection
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
                                       "rejected_request_message_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rejectedRequestMessageId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "rejected_request_sequencing_event_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"rejectedRequestSequencingEventId")
                                     y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "rejected_request"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rejectedRequest") y x)
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
          (do loop Data.ProtoLens.defMessage) "Rejection"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"rejectedRequestMessageId") _x
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
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"rejectedRequestSequencingEventId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'rejectedRequest") _x
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
instance Control.DeepSeq.NFData Rejection where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Rejection'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Rejection'rejectedRequestMessageId x__)
                (Control.DeepSeq.deepseq
                   (_Rejection'rejectedRequestSequencingEventId x__)
                   (Control.DeepSeq.deepseq
                      (_Rejection'rejectedRequest x__)
                      (Control.DeepSeq.deepseq (_Rejection'failure x__) ()))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.meta' @:: Lens' Request Meta@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.maybe'meta' @:: Lens' Request (Prelude.Maybe Meta)@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.input' @:: Lens' Request Input@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.maybe'input' @:: Lens' Request (Prelude.Maybe Input)@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.requestId' @:: Lens' Request Data.Text.Text@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.completionCallbacks' @:: Lens' Request [Proto.Temporal.Api.Common.V1.Message.Callback]@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.vec'completionCallbacks' @:: Lens' Request (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Callback)@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.links' @:: Lens' Request [Proto.Temporal.Api.Common.V1.Message.Link]@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.vec'links' @:: Lens' Request (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Link)@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.propagatedNexusSerializationContext' @:: Lens' Request Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.maybe'propagatedNexusSerializationContext' @:: Lens' Request (Prelude.Maybe Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext)@ -}
data Request
  = Request'_constructor {_Request'meta :: !(Prelude.Maybe Meta),
                          _Request'input :: !(Prelude.Maybe Input),
                          _Request'requestId :: !Data.Text.Text,
                          _Request'completionCallbacks :: !(Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Callback),
                          _Request'links :: !(Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Link),
                          _Request'propagatedNexusSerializationContext :: !(Prelude.Maybe Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext),
                          _Request'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Request where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Request "meta" Meta where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'meta (\ x__ y__ -> x__ {_Request'meta = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Request "maybe'meta" (Prelude.Maybe Meta) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'meta (\ x__ y__ -> x__ {_Request'meta = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Request "input" Input where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'input (\ x__ y__ -> x__ {_Request'input = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Request "maybe'input" (Prelude.Maybe Input) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'input (\ x__ y__ -> x__ {_Request'input = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Request "requestId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'requestId (\ x__ y__ -> x__ {_Request'requestId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Request "completionCallbacks" [Proto.Temporal.Api.Common.V1.Message.Callback] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'completionCallbacks
           (\ x__ y__ -> x__ {_Request'completionCallbacks = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Request "vec'completionCallbacks" (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Callback) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'completionCallbacks
           (\ x__ y__ -> x__ {_Request'completionCallbacks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Request "links" [Proto.Temporal.Api.Common.V1.Message.Link] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'links (\ x__ y__ -> x__ {_Request'links = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Request "vec'links" (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Link) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'links (\ x__ y__ -> x__ {_Request'links = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Request "propagatedNexusSerializationContext" Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'propagatedNexusSerializationContext
           (\ x__ y__
              -> x__ {_Request'propagatedNexusSerializationContext = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Request "maybe'propagatedNexusSerializationContext" (Prelude.Maybe Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'propagatedNexusSerializationContext
           (\ x__ y__
              -> x__ {_Request'propagatedNexusSerializationContext = y__}))
        Prelude.id
instance Data.ProtoLens.Message Request where
  messageName _ = Data.Text.pack "temporal.api.update.v1.Request"
  packedMessageDescriptor _
    = "\n\
      \\aRequest\DC20\n\
      \\EOTmeta\CAN\SOH \SOH(\v2\FS.temporal.api.update.v1.MetaR\EOTmeta\DC23\n\
      \\ENQinput\CAN\STX \SOH(\v2\GS.temporal.api.update.v1.InputR\ENQinput\DC2\GS\n\
      \\n\
      \request_id\CAN\ETX \SOH(\tR\trequestId\DC2S\n\
      \\DC4completion_callbacks\CAN\EOT \ETX(\v2 .temporal.api.common.v1.CallbackR\DC3completionCallbacks\DC22\n\
      \\ENQlinks\CAN\ENQ \ETX(\v2\FS.temporal.api.common.v1.LinkR\ENQlinks\DC2\138\SOH\n\
      \&propagated_nexus_serialization_context\CAN\ACK \SOH(\v25.temporal.api.nexus.v1.PropagatedSerializationContextR#propagatedNexusSerializationContext"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        meta__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "meta"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Meta)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'meta")) ::
              Data.ProtoLens.FieldDescriptor Request
        input__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "input"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Input)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'input")) ::
              Data.ProtoLens.FieldDescriptor Request
        requestId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestId")) ::
              Data.ProtoLens.FieldDescriptor Request
        completionCallbacks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "completion_callbacks"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Callback)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"completionCallbacks")) ::
              Data.ProtoLens.FieldDescriptor Request
        links__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "links"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Link)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"links")) ::
              Data.ProtoLens.FieldDescriptor Request
        propagatedNexusSerializationContext__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "propagated_nexus_serialization_context"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'propagatedNexusSerializationContext")) ::
              Data.ProtoLens.FieldDescriptor Request
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, meta__field_descriptor),
           (Data.ProtoLens.Tag 2, input__field_descriptor),
           (Data.ProtoLens.Tag 3, requestId__field_descriptor),
           (Data.ProtoLens.Tag 4, completionCallbacks__field_descriptor),
           (Data.ProtoLens.Tag 5, links__field_descriptor),
           (Data.ProtoLens.Tag 6, 
            propagatedNexusSerializationContext__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Request'_unknownFields
        (\ x__ y__ -> x__ {_Request'_unknownFields = y__})
  defMessage
    = Request'_constructor
        {_Request'meta = Prelude.Nothing, _Request'input = Prelude.Nothing,
         _Request'requestId = Data.ProtoLens.fieldDefault,
         _Request'completionCallbacks = Data.Vector.Generic.empty,
         _Request'links = Data.Vector.Generic.empty,
         _Request'propagatedNexusSerializationContext = Prelude.Nothing,
         _Request'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Request
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Common.V1.Message.Callback
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Common.V1.Message.Link
                -> Data.ProtoLens.Encoding.Bytes.Parser Request
        loop x mutable'completionCallbacks mutable'links
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'completionCallbacks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'completionCallbacks)
                      frozen'links <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'links)
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
                              (Data.ProtoLens.Field.field @"vec'completionCallbacks")
                              frozen'completionCallbacks
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'links") frozen'links x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "meta"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"meta") y x)
                                  mutable'completionCallbacks mutable'links
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "input"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"input") y x)
                                  mutable'completionCallbacks mutable'links
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "request_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"requestId") y x)
                                  mutable'completionCallbacks mutable'links
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "completion_callbacks"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'completionCallbacks y)
                                loop x v mutable'links
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "links"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'links y)
                                loop x mutable'completionCallbacks v
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "propagated_nexus_serialization_context"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"propagatedNexusSerializationContext")
                                     y x)
                                  mutable'completionCallbacks mutable'links
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'completionCallbacks mutable'links
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'completionCallbacks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              mutable'links <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'completionCallbacks
                mutable'links)
          "Request"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'meta") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'input") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"requestId") _x
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
                            (Data.ProtoLens.Field.field @"vec'completionCallbacks") _x))
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
                            (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'links") _x))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field
                                      @"maybe'propagatedNexusSerializationContext")
                                   _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData Request where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Request'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Request'meta x__)
                (Control.DeepSeq.deepseq
                   (_Request'input x__)
                   (Control.DeepSeq.deepseq
                      (_Request'requestId x__)
                      (Control.DeepSeq.deepseq
                         (_Request'completionCallbacks x__)
                         (Control.DeepSeq.deepseq
                            (_Request'links x__)
                            (Control.DeepSeq.deepseq
                               (_Request'propagatedNexusSerializationContext x__) ()))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.meta' @:: Lens' Response Meta@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.maybe'meta' @:: Lens' Response (Prelude.Maybe Meta)@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.outcome' @:: Lens' Response Outcome@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.maybe'outcome' @:: Lens' Response (Prelude.Maybe Outcome)@ -}
data Response
  = Response'_constructor {_Response'meta :: !(Prelude.Maybe Meta),
                           _Response'outcome :: !(Prelude.Maybe Outcome),
                           _Response'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Response where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Response "meta" Meta where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'meta (\ x__ y__ -> x__ {_Response'meta = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Response "maybe'meta" (Prelude.Maybe Meta) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'meta (\ x__ y__ -> x__ {_Response'meta = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Response "outcome" Outcome where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'outcome (\ x__ y__ -> x__ {_Response'outcome = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Response "maybe'outcome" (Prelude.Maybe Outcome) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'outcome (\ x__ y__ -> x__ {_Response'outcome = y__}))
        Prelude.id
instance Data.ProtoLens.Message Response where
  messageName _ = Data.Text.pack "temporal.api.update.v1.Response"
  packedMessageDescriptor _
    = "\n\
      \\bResponse\DC20\n\
      \\EOTmeta\CAN\SOH \SOH(\v2\FS.temporal.api.update.v1.MetaR\EOTmeta\DC29\n\
      \\aoutcome\CAN\STX \SOH(\v2\US.temporal.api.update.v1.OutcomeR\aoutcome"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        meta__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "meta"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Meta)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'meta")) ::
              Data.ProtoLens.FieldDescriptor Response
        outcome__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "outcome"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Outcome)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'outcome")) ::
              Data.ProtoLens.FieldDescriptor Response
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, meta__field_descriptor),
           (Data.ProtoLens.Tag 2, outcome__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Response'_unknownFields
        (\ x__ y__ -> x__ {_Response'_unknownFields = y__})
  defMessage
    = Response'_constructor
        {_Response'meta = Prelude.Nothing,
         _Response'outcome = Prelude.Nothing, _Response'_unknownFields = []}
  parseMessage
    = let
        loop :: Response -> Data.ProtoLens.Encoding.Bytes.Parser Response
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
                                       "meta"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"meta") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "outcome"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"outcome") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Response"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'meta") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'outcome") _x
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
instance Control.DeepSeq.NFData Response where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Response'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Response'meta x__)
                (Control.DeepSeq.deepseq (_Response'outcome x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.workflowExecution' @:: Lens' UpdateRef Proto.Temporal.Api.Common.V1.Message.WorkflowExecution@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.maybe'workflowExecution' @:: Lens' UpdateRef (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowExecution)@
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.updateId' @:: Lens' UpdateRef Data.Text.Text@ -}
data UpdateRef
  = UpdateRef'_constructor {_UpdateRef'workflowExecution :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowExecution),
                            _UpdateRef'updateId :: !Data.Text.Text,
                            _UpdateRef'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpdateRef where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UpdateRef "workflowExecution" Proto.Temporal.Api.Common.V1.Message.WorkflowExecution where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateRef'workflowExecution
           (\ x__ y__ -> x__ {_UpdateRef'workflowExecution = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpdateRef "maybe'workflowExecution" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateRef'workflowExecution
           (\ x__ y__ -> x__ {_UpdateRef'workflowExecution = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateRef "updateId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateRef'updateId (\ x__ y__ -> x__ {_UpdateRef'updateId = y__}))
        Prelude.id
instance Data.ProtoLens.Message UpdateRef where
  messageName _ = Data.Text.pack "temporal.api.update.v1.UpdateRef"
  packedMessageDescriptor _
    = "\n\
      \\tUpdateRef\DC2X\n\
      \\DC2workflow_execution\CAN\SOH \SOH(\v2).temporal.api.common.v1.WorkflowExecutionR\DC1workflowExecution\DC2\ESC\n\
      \\tupdate_id\CAN\STX \SOH(\tR\bupdateId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        workflowExecution__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_execution"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.WorkflowExecution)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowExecution")) ::
              Data.ProtoLens.FieldDescriptor UpdateRef
        updateId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "update_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"updateId")) ::
              Data.ProtoLens.FieldDescriptor UpdateRef
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, workflowExecution__field_descriptor),
           (Data.ProtoLens.Tag 2, updateId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpdateRef'_unknownFields
        (\ x__ y__ -> x__ {_UpdateRef'_unknownFields = y__})
  defMessage
    = UpdateRef'_constructor
        {_UpdateRef'workflowExecution = Prelude.Nothing,
         _UpdateRef'updateId = Data.ProtoLens.fieldDefault,
         _UpdateRef'_unknownFields = []}
  parseMessage
    = let
        loop :: UpdateRef -> Data.ProtoLens.Encoding.Bytes.Parser UpdateRef
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
                                       "workflow_execution"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowExecution") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "update_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"updateId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UpdateRef"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'workflowExecution") _x
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"updateId") _x
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
instance Control.DeepSeq.NFData UpdateRef where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UpdateRef'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UpdateRef'workflowExecution x__)
                (Control.DeepSeq.deepseq (_UpdateRef'updateId x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Update.V1.Message_Fields.lifecycleStage' @:: Lens' WaitPolicy Proto.Temporal.Api.Enums.V1.Update.UpdateWorkflowExecutionLifecycleStage@ -}
data WaitPolicy
  = WaitPolicy'_constructor {_WaitPolicy'lifecycleStage :: !Proto.Temporal.Api.Enums.V1.Update.UpdateWorkflowExecutionLifecycleStage,
                             _WaitPolicy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WaitPolicy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WaitPolicy "lifecycleStage" Proto.Temporal.Api.Enums.V1.Update.UpdateWorkflowExecutionLifecycleStage where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WaitPolicy'lifecycleStage
           (\ x__ y__ -> x__ {_WaitPolicy'lifecycleStage = y__}))
        Prelude.id
instance Data.ProtoLens.Message WaitPolicy where
  messageName _ = Data.Text.pack "temporal.api.update.v1.WaitPolicy"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \WaitPolicy\DC2e\n\
      \\SIlifecycle_stage\CAN\SOH \SOH(\SO2<.temporal.api.enums.v1.UpdateWorkflowExecutionLifecycleStageR\SOlifecycleStage"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        lifecycleStage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lifecycle_stage"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Update.UpdateWorkflowExecutionLifecycleStage)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lifecycleStage")) ::
              Data.ProtoLens.FieldDescriptor WaitPolicy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, lifecycleStage__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WaitPolicy'_unknownFields
        (\ x__ y__ -> x__ {_WaitPolicy'_unknownFields = y__})
  defMessage
    = WaitPolicy'_constructor
        {_WaitPolicy'lifecycleStage = Data.ProtoLens.fieldDefault,
         _WaitPolicy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WaitPolicy -> Data.ProtoLens.Encoding.Bytes.Parser WaitPolicy
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
                                       "lifecycle_stage"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lifecycleStage") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WaitPolicy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"lifecycleStage") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData WaitPolicy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WaitPolicy'_unknownFields x__)
             (Control.DeepSeq.deepseq (_WaitPolicy'lifecycleStage x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \$temporal/api/update/v1/message.proto\DC2\SYNtemporal.api.update.v1\SUB$temporal/api/common/v1/message.proto\SUB\"temporal/api/enums/v1/update.proto\SUB%temporal/api/failure/v1/message.proto\SUB#temporal/api/nexus/v1/message.proto\"s\n\
    \\n\
    \WaitPolicy\DC2e\n\
    \\SIlifecycle_stage\CAN\SOH \SOH(\SO2<.temporal.api.enums.v1.UpdateWorkflowExecutionLifecycleStageR\SOlifecycleStage\"\130\SOH\n\
    \\tUpdateRef\DC2X\n\
    \\DC2workflow_execution\CAN\SOH \SOH(\v2).temporal.api.common.v1.WorkflowExecutionR\DC1workflowExecution\DC2\ESC\n\
    \\tupdate_id\CAN\STX \SOH(\tR\bupdateId\"\142\SOH\n\
    \\aOutcome\DC2<\n\
    \\asuccess\CAN\SOH \SOH(\v2 .temporal.api.common.v1.PayloadsH\NULR\asuccess\DC2<\n\
    \\afailure\CAN\STX \SOH(\v2 .temporal.api.failure.v1.FailureH\NULR\afailureB\a\n\
    \\ENQvalue\"?\n\
    \\EOTMeta\DC2\ESC\n\
    \\tupdate_id\CAN\SOH \SOH(\tR\bupdateId\DC2\SUB\n\
    \\bidentity\CAN\STX \SOH(\tR\bidentity\"\137\SOH\n\
    \\ENQInput\DC26\n\
    \\ACKheader\CAN\SOH \SOH(\v2\RS.temporal.api.common.v1.HeaderR\ACKheader\DC2\DC2\n\
    \\EOTname\CAN\STX \SOH(\tR\EOTname\DC24\n\
    \\EOTargs\CAN\ETX \SOH(\v2 .temporal.api.common.v1.PayloadsR\EOTargs\"\165\ETX\n\
    \\aRequest\DC20\n\
    \\EOTmeta\CAN\SOH \SOH(\v2\FS.temporal.api.update.v1.MetaR\EOTmeta\DC23\n\
    \\ENQinput\CAN\STX \SOH(\v2\GS.temporal.api.update.v1.InputR\ENQinput\DC2\GS\n\
    \\n\
    \request_id\CAN\ETX \SOH(\tR\trequestId\DC2S\n\
    \\DC4completion_callbacks\CAN\EOT \ETX(\v2 .temporal.api.common.v1.CallbackR\DC3completionCallbacks\DC22\n\
    \\ENQlinks\CAN\ENQ \ETX(\v2\FS.temporal.api.common.v1.LinkR\ENQlinks\DC2\138\SOH\n\
    \&propagated_nexus_serialization_context\CAN\ACK \SOH(\v25.temporal.api.nexus.v1.PropagatedSerializationContextR#propagatedNexusSerializationContext\"\162\STX\n\
    \\tRejection\DC2=\n\
    \\ESCrejected_request_message_id\CAN\SOH \SOH(\tR\CANrejectedRequestMessageId\DC2N\n\
    \$rejected_request_sequencing_event_id\CAN\STX \SOH(\ETXR rejectedRequestSequencingEventId\DC2J\n\
    \\DLErejected_request\CAN\ETX \SOH(\v2\US.temporal.api.update.v1.RequestR\SIrejectedRequest\DC2:\n\
    \\afailure\CAN\EOT \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure\"\231\SOH\n\
    \\n\
    \Acceptance\DC2=\n\
    \\ESCaccepted_request_message_id\CAN\SOH \SOH(\tR\CANacceptedRequestMessageId\DC2N\n\
    \$accepted_request_sequencing_event_id\CAN\STX \SOH(\ETXR acceptedRequestSequencingEventId\DC2J\n\
    \\DLEaccepted_request\CAN\ETX \SOH(\v2\US.temporal.api.update.v1.RequestR\SIacceptedRequest\"w\n\
    \\bResponse\DC20\n\
    \\EOTmeta\CAN\SOH \SOH(\v2\FS.temporal.api.update.v1.MetaR\EOTmeta\DC29\n\
    \\aoutcome\CAN\STX \SOH(\v2\US.temporal.api.update.v1.OutcomeR\aoutcomeB\137\SOH\n\
    \\EMio.temporal.api.update.v1B\fMessageProtoP\SOHZ#go.temporal.io/api/update/v1;update\170\STX\CANTemporalio.Api.Update.V1\234\STX\ESCTemporalio::Api::Update::V1J\198\SUB\n\
    \\ACK\DC2\EOT\NUL\NUL`\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\US\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NUL:\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\EOT\NUL:\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NUL2\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\ENQ\NUL2\n\
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
    \\SOH\b\DC2\ETX\b\NUL4\n\
    \\t\n\
    \\STX\b-\DC2\ETX\b\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL5\n\
    \\t\n\
    \\STX\b%\DC2\ETX\t\NUL5\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\v\NUL.\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\f\NUL,\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\r\NUL/\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\SO\NUL-\n\
    \C\n\
    \\STX\EOT\NUL\DC2\EOT\DC1\NUL\CAN\SOH\SUB7 Specifies client's intent to wait for Update results.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC1\b\DC2\n\
    \\211\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ETB\EOTT\SUB\197\STX Indicates the Update lifecycle stage that the Update must reach before\n\
    \ API call is returned.\n\
    \ NOTE: This field works together with API call timeout which is limited by\n\
    \ server timeout (maximum wait time). If server timeout is expired before\n\
    \ user specified timeout, API call returns even if specified stage is not reached.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\ETB\EOT?\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ETB@O\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ETBRS\n\
    \[\n\
    \\STX\EOT\SOH\DC2\EOT\ESC\NUL\RS\SOH\SUBO The data needed by a client to refer to a previously invoked Workflow Update.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\ESC\b\DC1\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\FS\EOTD\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\FS\EOT,\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\FS-?\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\FSBC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\GS\EOT\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\GS\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\GS\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\GS\ETB\CAN\n\
    \C\n\
    \\STX\EOT\STX\DC2\EOT!\NUL&\SOH\SUB7 The outcome of a Workflow Update: success or failure.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX!\b\SI\n\
    \\f\n\
    \\EOT\EOT\STX\b\NUL\DC2\EOT\"\EOT%\ENQ\n\
    \\f\n\
    \\ENQ\EOT\STX\b\NUL\SOH\DC2\ETX\"\n\
    \\SI\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX#\b4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX#\b'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX#(/\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX#23\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX$\b4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX$\b'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX$(/\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX$23\n\
    \/\n\
    \\STX\EOT\ETX\DC2\EOT)\NUL/\SOH\SUB# Metadata about a Workflow Update.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX)\b\f\n\
    \E\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX+\EOT\EM\SUB8 An ID with workflow-scoped uniqueness for this Update.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX+\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX+\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX+\ETB\CAN\n\
    \I\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX.\EOT\CAN\SUB< A string identifying the agent that requested this Update.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX.\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX.\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX.\SYN\ETB\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT1\NUL;\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX1\b\r\n\
    \\137\SOH\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX4\EOT-\SUB| Headers that are passed with the Update from the requesting entity.\n\
    \ These can include things like auth or tracing tokens.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETX4\EOT!\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX4\"(\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX4+,\n\
    \O\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX7\EOT\DC4\SUBB The name of the Update handler to invoke on the target Workflow.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX7\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX7\v\SI\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX7\DC2\DC3\n\
    \A\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX:\EOT-\SUB4 The arguments to pass to the named Update handler.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\ETX:\EOT#\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX:$(\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX:+,\n\
    \A\n\
    \\STX\EOT\ENQ\DC2\EOT>\NULI\SOH\SUB5 The client request that triggers a Workflow Update.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX>\b\SI\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX?\EOT\DC2\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETX?\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX?\t\r\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX?\DLE\DC1\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX@\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\ETX@\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX@\n\
    \\SI\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX@\DC2\DC3\n\
    \-\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETXB\EOT\SUB\SUB  The request ID of the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETXB\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETXB\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETXB\CAN\EM\n\
    \^\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\ETXD\EOTF\SUBQ Callbacks to be called by the server when this update reaches a terminal state.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\EOT\DC2\ETXD\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ACK\DC2\ETXD\r,\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\ETXD-A\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\ETXDDE\n\
    \7\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\ETXF\EOT3\SUB* Links to be associated with this update.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\EOT\DC2\ETXF\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ACK\DC2\ETXF\r(\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\ETXF).\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\ETXF12\n\
    \_\n\
    \\EOT\EOT\ENQ\STX\ENQ\DC2\ETXH\EOTd\SUBR Serialization context propagated from the Nexus caller that started this update.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ACK\DC2\ETXH\EOT8\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\SOH\DC2\ETXH9_\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ETX\DC2\ETXHbc\n\
    \]\n\
    \\STX\EOT\ACK\DC2\EOTL\NULQ\SOH\SUBQ An Update protocol message indicating that a Workflow Update has been rejected.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXL\b\DC1\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXM\EOT+\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXM\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXM\v&\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXM)*\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETXN\EOT3\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETXN\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXN\n\
    \.\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXN12\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETXO\EOT!\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ACK\DC2\ETXO\EOT\v\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETXO\f\FS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETXO\US \n\
    \\v\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\ETXP\EOT0\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ACK\DC2\ETXP\EOT#\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\ETXP$+\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\ETXP./\n\
    \\142\SOH\n\
    \\STX\EOT\a\DC2\EOTU\NULY\SOH\SUB\129\SOH An Update protocol message indicating that a Workflow Update has\n\
    \ been accepted (i.e. passed the worker-side validation phase).\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXU\b\DC2\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETXV\EOT+\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETXV\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETXV\v&\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETXV)*\n\
    \\v\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETXW\EOT3\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\ETXW\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETXW\n\
    \.\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETXW12\n\
    \\v\n\
    \\EOT\EOT\a\STX\STX\DC2\ETXX\EOT!\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ACK\DC2\ETXX\EOT\v\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\ETXX\f\FS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\ETXX\US \n\
    \u\n\
    \\STX\EOT\b\DC2\EOT]\NUL`\SOH\SUBi An Update protocol message indicating that a Workflow Update has\n\
    \ completed with the contained outcome.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETX]\b\DLE\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETX^\EOT\DC2\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\ETX^\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETX^\t\r\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETX^\DLE\DC1\n\
    \\v\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETX_\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ACK\DC2\ETX_\EOT\v\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETX_\f\DC3\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETX_\SYN\ETBb\ACKproto3"