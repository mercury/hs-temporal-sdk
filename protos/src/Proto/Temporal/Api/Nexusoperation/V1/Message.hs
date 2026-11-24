{- This file was auto-generated from temporal/api/nexusoperation/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Nexusoperation.V1.Message (
        CallbackInfo(), CallbackInfo'OperationCompleted(),
        CallbackInfo'Trigger(), CallbackInfo'Trigger'Variant(..),
        _CallbackInfo'Trigger'OperationCompleted, OnConflictOptions()
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
import qualified Proto.Temporal.Api.Callback.V1.Message
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexusoperation.V1.Message_Fields.trigger' @:: Lens' CallbackInfo CallbackInfo'Trigger@
         * 'Proto.Temporal.Api.Nexusoperation.V1.Message_Fields.maybe'trigger' @:: Lens' CallbackInfo (Prelude.Maybe CallbackInfo'Trigger)@
         * 'Proto.Temporal.Api.Nexusoperation.V1.Message_Fields.info' @:: Lens' CallbackInfo Proto.Temporal.Api.Callback.V1.Message.CallbackInfo@
         * 'Proto.Temporal.Api.Nexusoperation.V1.Message_Fields.maybe'info' @:: Lens' CallbackInfo (Prelude.Maybe Proto.Temporal.Api.Callback.V1.Message.CallbackInfo)@ -}
data CallbackInfo
  = CallbackInfo'_constructor {_CallbackInfo'trigger :: !(Prelude.Maybe CallbackInfo'Trigger),
                               _CallbackInfo'info :: !(Prelude.Maybe Proto.Temporal.Api.Callback.V1.Message.CallbackInfo),
                               _CallbackInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CallbackInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CallbackInfo "trigger" CallbackInfo'Trigger where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CallbackInfo'trigger
           (\ x__ y__ -> x__ {_CallbackInfo'trigger = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CallbackInfo "maybe'trigger" (Prelude.Maybe CallbackInfo'Trigger) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CallbackInfo'trigger
           (\ x__ y__ -> x__ {_CallbackInfo'trigger = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CallbackInfo "info" Proto.Temporal.Api.Callback.V1.Message.CallbackInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CallbackInfo'info (\ x__ y__ -> x__ {_CallbackInfo'info = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CallbackInfo "maybe'info" (Prelude.Maybe Proto.Temporal.Api.Callback.V1.Message.CallbackInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CallbackInfo'info (\ x__ y__ -> x__ {_CallbackInfo'info = y__}))
        Prelude.id
instance Data.ProtoLens.Message CallbackInfo where
  messageName _
    = Data.Text.pack "temporal.api.nexusoperation.v1.CallbackInfo"
  packedMessageDescriptor _
    = "\n\
      \\fCallbackInfo\DC2N\n\
      \\atrigger\CAN\SOH \SOH(\v24.temporal.api.nexusoperation.v1.CallbackInfo.TriggerR\atrigger\DC2:\n\
      \\EOTinfo\CAN\STX \SOH(\v2&.temporal.api.callback.v1.CallbackInfoR\EOTinfo\SUB\DC4\n\
      \\DC2OperationCompleted\SUB\136\SOH\n\
      \\aTrigger\DC2r\n\
      \\DC3operation_completed\CAN\SOH \SOH(\v2?.temporal.api.nexusoperation.v1.CallbackInfo.OperationCompletedH\NULR\DC2operationCompletedB\t\n\
      \\avariant"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        trigger__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trigger"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CallbackInfo'Trigger)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'trigger")) ::
              Data.ProtoLens.FieldDescriptor CallbackInfo
        info__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Callback.V1.Message.CallbackInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'info")) ::
              Data.ProtoLens.FieldDescriptor CallbackInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, trigger__field_descriptor),
           (Data.ProtoLens.Tag 2, info__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CallbackInfo'_unknownFields
        (\ x__ y__ -> x__ {_CallbackInfo'_unknownFields = y__})
  defMessage
    = CallbackInfo'_constructor
        {_CallbackInfo'trigger = Prelude.Nothing,
         _CallbackInfo'info = Prelude.Nothing,
         _CallbackInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CallbackInfo -> Data.ProtoLens.Encoding.Bytes.Parser CallbackInfo
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
                                       "trigger"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"trigger") y x)
                        18
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
          (do loop Data.ProtoLens.defMessage) "CallbackInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'trigger") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'info") _x
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
instance Control.DeepSeq.NFData CallbackInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CallbackInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CallbackInfo'trigger x__)
                (Control.DeepSeq.deepseq (_CallbackInfo'info x__) ()))
{- | Fields :
      -}
data CallbackInfo'OperationCompleted
  = CallbackInfo'OperationCompleted'_constructor {_CallbackInfo'OperationCompleted'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CallbackInfo'OperationCompleted where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message CallbackInfo'OperationCompleted where
  messageName _
    = Data.Text.pack
        "temporal.api.nexusoperation.v1.CallbackInfo.OperationCompleted"
  packedMessageDescriptor _
    = "\n\
      \\DC2OperationCompleted"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CallbackInfo'OperationCompleted'_unknownFields
        (\ x__ y__
           -> x__ {_CallbackInfo'OperationCompleted'_unknownFields = y__})
  defMessage
    = CallbackInfo'OperationCompleted'_constructor
        {_CallbackInfo'OperationCompleted'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CallbackInfo'OperationCompleted
          -> Data.ProtoLens.Encoding.Bytes.Parser CallbackInfo'OperationCompleted
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "OperationCompleted"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData CallbackInfo'OperationCompleted where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CallbackInfo'OperationCompleted'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexusoperation.V1.Message_Fields.maybe'variant' @:: Lens' CallbackInfo'Trigger (Prelude.Maybe CallbackInfo'Trigger'Variant)@
         * 'Proto.Temporal.Api.Nexusoperation.V1.Message_Fields.maybe'operationCompleted' @:: Lens' CallbackInfo'Trigger (Prelude.Maybe CallbackInfo'OperationCompleted)@
         * 'Proto.Temporal.Api.Nexusoperation.V1.Message_Fields.operationCompleted' @:: Lens' CallbackInfo'Trigger CallbackInfo'OperationCompleted@ -}
data CallbackInfo'Trigger
  = CallbackInfo'Trigger'_constructor {_CallbackInfo'Trigger'variant :: !(Prelude.Maybe CallbackInfo'Trigger'Variant),
                                       _CallbackInfo'Trigger'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CallbackInfo'Trigger where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data CallbackInfo'Trigger'Variant
  = CallbackInfo'Trigger'OperationCompleted !CallbackInfo'OperationCompleted
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField CallbackInfo'Trigger "maybe'variant" (Prelude.Maybe CallbackInfo'Trigger'Variant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CallbackInfo'Trigger'variant
           (\ x__ y__ -> x__ {_CallbackInfo'Trigger'variant = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CallbackInfo'Trigger "maybe'operationCompleted" (Prelude.Maybe CallbackInfo'OperationCompleted) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CallbackInfo'Trigger'variant
           (\ x__ y__ -> x__ {_CallbackInfo'Trigger'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CallbackInfo'Trigger'OperationCompleted x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap CallbackInfo'Trigger'OperationCompleted y__))
instance Data.ProtoLens.Field.HasField CallbackInfo'Trigger "operationCompleted" CallbackInfo'OperationCompleted where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CallbackInfo'Trigger'variant
           (\ x__ y__ -> x__ {_CallbackInfo'Trigger'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CallbackInfo'Trigger'OperationCompleted x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap CallbackInfo'Trigger'OperationCompleted y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message CallbackInfo'Trigger where
  messageName _
    = Data.Text.pack
        "temporal.api.nexusoperation.v1.CallbackInfo.Trigger"
  packedMessageDescriptor _
    = "\n\
      \\aTrigger\DC2r\n\
      \\DC3operation_completed\CAN\SOH \SOH(\v2?.temporal.api.nexusoperation.v1.CallbackInfo.OperationCompletedH\NULR\DC2operationCompletedB\t\n\
      \\avariant"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operationCompleted__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_completed"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CallbackInfo'OperationCompleted)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'operationCompleted")) ::
              Data.ProtoLens.FieldDescriptor CallbackInfo'Trigger
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operationCompleted__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CallbackInfo'Trigger'_unknownFields
        (\ x__ y__ -> x__ {_CallbackInfo'Trigger'_unknownFields = y__})
  defMessage
    = CallbackInfo'Trigger'_constructor
        {_CallbackInfo'Trigger'variant = Prelude.Nothing,
         _CallbackInfo'Trigger'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CallbackInfo'Trigger
          -> Data.ProtoLens.Encoding.Bytes.Parser CallbackInfo'Trigger
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
                                       "operation_completed"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"operationCompleted") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Trigger"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'variant") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (CallbackInfo'Trigger'OperationCompleted v))
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
instance Control.DeepSeq.NFData CallbackInfo'Trigger where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CallbackInfo'Trigger'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CallbackInfo'Trigger'variant x__) ())
instance Control.DeepSeq.NFData CallbackInfo'Trigger'Variant where
  rnf (CallbackInfo'Trigger'OperationCompleted x__)
    = Control.DeepSeq.rnf x__
_CallbackInfo'Trigger'OperationCompleted ::
  Data.ProtoLens.Prism.Prism' CallbackInfo'Trigger'Variant CallbackInfo'OperationCompleted
_CallbackInfo'Trigger'OperationCompleted
  = Data.ProtoLens.Prism.prism'
      CallbackInfo'Trigger'OperationCompleted
      (\ p__
         -> case p__ of
              (CallbackInfo'Trigger'OperationCompleted p__val)
                -> Prelude.Just p__val)
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexusoperation.V1.Message_Fields.attachRequestId' @:: Lens' OnConflictOptions Prelude.Bool@
         * 'Proto.Temporal.Api.Nexusoperation.V1.Message_Fields.attachCompletionCallbacks' @:: Lens' OnConflictOptions Prelude.Bool@
         * 'Proto.Temporal.Api.Nexusoperation.V1.Message_Fields.attachLinks' @:: Lens' OnConflictOptions Prelude.Bool@ -}
data OnConflictOptions
  = OnConflictOptions'_constructor {_OnConflictOptions'attachRequestId :: !Prelude.Bool,
                                    _OnConflictOptions'attachCompletionCallbacks :: !Prelude.Bool,
                                    _OnConflictOptions'attachLinks :: !Prelude.Bool,
                                    _OnConflictOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OnConflictOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField OnConflictOptions "attachRequestId" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OnConflictOptions'attachRequestId
           (\ x__ y__ -> x__ {_OnConflictOptions'attachRequestId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OnConflictOptions "attachCompletionCallbacks" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OnConflictOptions'attachCompletionCallbacks
           (\ x__ y__
              -> x__ {_OnConflictOptions'attachCompletionCallbacks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OnConflictOptions "attachLinks" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OnConflictOptions'attachLinks
           (\ x__ y__ -> x__ {_OnConflictOptions'attachLinks = y__}))
        Prelude.id
instance Data.ProtoLens.Message OnConflictOptions where
  messageName _
    = Data.Text.pack "temporal.api.nexusoperation.v1.OnConflictOptions"
  packedMessageDescriptor _
    = "\n\
      \\DC1OnConflictOptions\DC2*\n\
      \\DC1attach_request_id\CAN\SOH \SOH(\bR\SIattachRequestId\DC2>\n\
      \\ESCattach_completion_callbacks\CAN\STX \SOH(\bR\EMattachCompletionCallbacks\DC2!\n\
      \\fattach_links\CAN\ETX \SOH(\bR\vattachLinks"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        attachRequestId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attach_request_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"attachRequestId")) ::
              Data.ProtoLens.FieldDescriptor OnConflictOptions
        attachCompletionCallbacks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attach_completion_callbacks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"attachCompletionCallbacks")) ::
              Data.ProtoLens.FieldDescriptor OnConflictOptions
        attachLinks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attach_links"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"attachLinks")) ::
              Data.ProtoLens.FieldDescriptor OnConflictOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, attachRequestId__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            attachCompletionCallbacks__field_descriptor),
           (Data.ProtoLens.Tag 3, attachLinks__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OnConflictOptions'_unknownFields
        (\ x__ y__ -> x__ {_OnConflictOptions'_unknownFields = y__})
  defMessage
    = OnConflictOptions'_constructor
        {_OnConflictOptions'attachRequestId = Data.ProtoLens.fieldDefault,
         _OnConflictOptions'attachCompletionCallbacks = Data.ProtoLens.fieldDefault,
         _OnConflictOptions'attachLinks = Data.ProtoLens.fieldDefault,
         _OnConflictOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OnConflictOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser OnConflictOptions
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
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "attach_request_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"attachRequestId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "attach_completion_callbacks"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"attachCompletionCallbacks") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "attach_links"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"attachLinks") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "OnConflictOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"attachRequestId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"attachCompletionCallbacks") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"attachLinks") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData OnConflictOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OnConflictOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_OnConflictOptions'attachRequestId x__)
                (Control.DeepSeq.deepseq
                   (_OnConflictOptions'attachCompletionCallbacks x__)
                   (Control.DeepSeq.deepseq (_OnConflictOptions'attachLinks x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \,temporal/api/nexusoperation/v1/message.proto\DC2\RStemporal.api.nexusoperation.v1\SUB&temporal/api/callback/v1/message.proto\"\187\STX\n\
    \\fCallbackInfo\DC2N\n\
    \\atrigger\CAN\SOH \SOH(\v24.temporal.api.nexusoperation.v1.CallbackInfo.TriggerR\atrigger\DC2:\n\
    \\EOTinfo\CAN\STX \SOH(\v2&.temporal.api.callback.v1.CallbackInfoR\EOTinfo\SUB\DC4\n\
    \\DC2OperationCompleted\SUB\136\SOH\n\
    \\aTrigger\DC2r\n\
    \\DC3operation_completed\CAN\SOH \SOH(\v2?.temporal.api.nexusoperation.v1.CallbackInfo.OperationCompletedH\NULR\DC2operationCompletedB\t\n\
    \\avariant\"\162\SOH\n\
    \\DC1OnConflictOptions\DC2*\n\
    \\DC1attach_request_id\CAN\SOH \SOH(\bR\SIattachRequestId\DC2>\n\
    \\ESCattach_completion_callbacks\CAN\STX \SOH(\bR\EMattachCompletionCallbacks\DC2!\n\
    \\fattach_links\CAN\ETX \SOH(\bR\vattachLinksB\177\SOH\n\
    \!io.temporal.api.nexusoperation.v1B\fMessageProtoP\SOHZ3go.temporal.io/api/nexusoperation/v1;nexusoperation\170\STX Temporalio.Api.NexusOperation.V1\234\STX#Temporalio::Api::NexusOperation::V1J\153\n\
    \\n\
    \\ACK\DC2\EOT\NUL\NUL)\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL'\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NULJ\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\EOT\NULJ\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NUL:\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\ENQ\NUL:\n\
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
    \\SOH\b\DC2\ETX\b\NUL<\n\
    \\t\n\
    \\STX\b-\DC2\ETX\b\NUL<\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL=\n\
    \\t\n\
    \\STX\b%\DC2\ETX\t\NUL=\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\v\NUL0\n\
    \e\n\
    \\STX\EOT\NUL\DC2\EOT\SO\NUL\GS\SOH\SUBY CallbackInfo contains the state of a callback attached to a standalone Nexus operation.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SO\b\DC4\n\
    \~\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\ETX\DC1\EOT!\SUBq Trigger for when the Nexus operation is completed, covering both success cases as\n\
    \ well as any type of failure.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\DC1\f\RS\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOT\DC3\EOT\ETB\ENQ\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETX\DC3\f\DC3\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\SOH\b\NUL\DC2\EOT\DC4\b\SYN\t\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\b\NUL\SOH\DC2\ETX\DC4\SO\NAK\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETX\NAK\f7\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ACK\DC2\ETX\NAK\f\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETX\NAK\US2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETX\NAK56\n\
    \)\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SUB\EOT\CAN\SUB\FS Trigger for this callback.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\SUB\EOT\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB\f\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SUB\SYN\ETB\n\
    \$\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\FS\EOT3\SUB\ETB Common callback info.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\FS\EOT)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\FS*.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\FS12\n\
    \\247\SOH\n\
    \\STX\EOT\SOH\DC2\EOT\"\NUL)\SOH\SUB\234\SOH When StartNexusOperationExecutionRequest uses the conflict policy NEXUS_OPERATION_ID_CONFLICT_POLICY_USE_EXISTING\n\
    \ and there is already an existing, running standalone Nexus operation, OnConflictOptions defines actions to be\n\
    \ taken.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\"\b\EM\n\
    \@\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX$\EOT\US\SUB3 Attaches the request ID to the running operation.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX$\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX$\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX$\GS\RS\n\
    \J\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX&\EOT)\SUB= Attaches the completion callbacks to the running operation.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX&\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX&\t$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX&'(\n\
    \?\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX(\EOT\SUB\SUB2 Attaches any new links to the running operation.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX(\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX(\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX(\CAN\EMb\ACKproto3"