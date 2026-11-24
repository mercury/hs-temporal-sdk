{- This file was auto-generated from temporal/api/notificationservice/v1/request_response.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Notificationservice.V1.RequestResponse (
        OnCompleteRequest(), OnCompleteRequest'Result(..),
        _OnCompleteRequest'Success, _OnCompleteRequest'Failure,
        OnCompleteResponse()
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
import qualified Proto.Temporal.Api.Failure.V1.Message
{- | Fields :
     
         * 'Proto.Temporal.Api.Notificationservice.V1.RequestResponse_Fields.sourceContext' @:: Lens' OnCompleteRequest Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Api.Notificationservice.V1.RequestResponse_Fields.maybe'sourceContext' @:: Lens' OnCompleteRequest (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Api.Notificationservice.V1.RequestResponse_Fields.maybe'result' @:: Lens' OnCompleteRequest (Prelude.Maybe OnCompleteRequest'Result)@
         * 'Proto.Temporal.Api.Notificationservice.V1.RequestResponse_Fields.maybe'success' @:: Lens' OnCompleteRequest (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Api.Notificationservice.V1.RequestResponse_Fields.success' @:: Lens' OnCompleteRequest Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Api.Notificationservice.V1.RequestResponse_Fields.maybe'failure' @:: Lens' OnCompleteRequest (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@
         * 'Proto.Temporal.Api.Notificationservice.V1.RequestResponse_Fields.failure' @:: Lens' OnCompleteRequest Proto.Temporal.Api.Failure.V1.Message.Failure@ -}
data OnCompleteRequest
  = OnCompleteRequest'_constructor {_OnCompleteRequest'sourceContext :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                    _OnCompleteRequest'result :: !(Prelude.Maybe OnCompleteRequest'Result),
                                    _OnCompleteRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OnCompleteRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data OnCompleteRequest'Result
  = OnCompleteRequest'Success !Proto.Temporal.Api.Common.V1.Message.Payload |
    OnCompleteRequest'Failure !Proto.Temporal.Api.Failure.V1.Message.Failure
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField OnCompleteRequest "sourceContext" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OnCompleteRequest'sourceContext
           (\ x__ y__ -> x__ {_OnCompleteRequest'sourceContext = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OnCompleteRequest "maybe'sourceContext" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OnCompleteRequest'sourceContext
           (\ x__ y__ -> x__ {_OnCompleteRequest'sourceContext = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OnCompleteRequest "maybe'result" (Prelude.Maybe OnCompleteRequest'Result) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OnCompleteRequest'result
           (\ x__ y__ -> x__ {_OnCompleteRequest'result = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OnCompleteRequest "maybe'success" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OnCompleteRequest'result
           (\ x__ y__ -> x__ {_OnCompleteRequest'result = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (OnCompleteRequest'Success x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap OnCompleteRequest'Success y__))
instance Data.ProtoLens.Field.HasField OnCompleteRequest "success" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OnCompleteRequest'result
           (\ x__ y__ -> x__ {_OnCompleteRequest'result = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (OnCompleteRequest'Success x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap OnCompleteRequest'Success y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField OnCompleteRequest "maybe'failure" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OnCompleteRequest'result
           (\ x__ y__ -> x__ {_OnCompleteRequest'result = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (OnCompleteRequest'Failure x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap OnCompleteRequest'Failure y__))
instance Data.ProtoLens.Field.HasField OnCompleteRequest "failure" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OnCompleteRequest'result
           (\ x__ y__ -> x__ {_OnCompleteRequest'result = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (OnCompleteRequest'Failure x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap OnCompleteRequest'Failure y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message OnCompleteRequest where
  messageName _
    = Data.Text.pack
        "temporal.api.notificationservice.v1.OnCompleteRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC1OnCompleteRequest\DC2;\n\
      \\asuccess\CAN\SOH \SOH(\v2\US.temporal.api.common.v1.PayloadH\NULR\asuccess\DC2<\n\
      \\afailure\CAN\STX \SOH(\v2 .temporal.api.failure.v1.FailureH\NULR\afailure\DC2F\n\
      \\SOsource_context\CAN\ETX \SOH(\v2\US.temporal.api.common.v1.PayloadR\rsourceContextB\b\n\
      \\ACKresult"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sourceContext__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_context"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sourceContext")) ::
              Data.ProtoLens.FieldDescriptor OnCompleteRequest
        success__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "success"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'success")) ::
              Data.ProtoLens.FieldDescriptor OnCompleteRequest
        failure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failure")) ::
              Data.ProtoLens.FieldDescriptor OnCompleteRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 3, sourceContext__field_descriptor),
           (Data.ProtoLens.Tag 1, success__field_descriptor),
           (Data.ProtoLens.Tag 2, failure__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OnCompleteRequest'_unknownFields
        (\ x__ y__ -> x__ {_OnCompleteRequest'_unknownFields = y__})
  defMessage
    = OnCompleteRequest'_constructor
        {_OnCompleteRequest'sourceContext = Prelude.Nothing,
         _OnCompleteRequest'result = Prelude.Nothing,
         _OnCompleteRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OnCompleteRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser OnCompleteRequest
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
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "source_context"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sourceContext") y x)
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
          (do loop Data.ProtoLens.defMessage) "OnCompleteRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'sourceContext") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'result") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (OnCompleteRequest'Success v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage v)
                   (Prelude.Just (OnCompleteRequest'Failure v))
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
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData OnCompleteRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OnCompleteRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_OnCompleteRequest'sourceContext x__)
                (Control.DeepSeq.deepseq (_OnCompleteRequest'result x__) ()))
instance Control.DeepSeq.NFData OnCompleteRequest'Result where
  rnf (OnCompleteRequest'Success x__) = Control.DeepSeq.rnf x__
  rnf (OnCompleteRequest'Failure x__) = Control.DeepSeq.rnf x__
_OnCompleteRequest'Success ::
  Data.ProtoLens.Prism.Prism' OnCompleteRequest'Result Proto.Temporal.Api.Common.V1.Message.Payload
_OnCompleteRequest'Success
  = Data.ProtoLens.Prism.prism'
      OnCompleteRequest'Success
      (\ p__
         -> case p__ of
              (OnCompleteRequest'Success p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_OnCompleteRequest'Failure ::
  Data.ProtoLens.Prism.Prism' OnCompleteRequest'Result Proto.Temporal.Api.Failure.V1.Message.Failure
_OnCompleteRequest'Failure
  = Data.ProtoLens.Prism.prism'
      OnCompleteRequest'Failure
      (\ p__
         -> case p__ of
              (OnCompleteRequest'Failure p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
      -}
data OnCompleteResponse
  = OnCompleteResponse'_constructor {_OnCompleteResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OnCompleteResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message OnCompleteResponse where
  messageName _
    = Data.Text.pack
        "temporal.api.notificationservice.v1.OnCompleteResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC2OnCompleteResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OnCompleteResponse'_unknownFields
        (\ x__ y__ -> x__ {_OnCompleteResponse'_unknownFields = y__})
  defMessage
    = OnCompleteResponse'_constructor
        {_OnCompleteResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OnCompleteResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser OnCompleteResponse
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
          (do loop Data.ProtoLens.defMessage) "OnCompleteResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData OnCompleteResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OnCompleteResponse'_unknownFields x__) ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \:temporal/api/notificationservice/v1/request_response.proto\DC2#temporal.api.notificationservice.v1\SUB$temporal/api/common/v1/message.proto\SUB%temporal/api/failure/v1/message.proto\"\224\SOH\n\
    \\DC1OnCompleteRequest\DC2;\n\
    \\asuccess\CAN\SOH \SOH(\v2\US.temporal.api.common.v1.PayloadH\NULR\asuccess\DC2<\n\
    \\afailure\CAN\STX \SOH(\v2 .temporal.api.failure.v1.FailureH\NULR\afailure\DC2F\n\
    \\SOsource_context\CAN\ETX \SOH(\v2\US.temporal.api.common.v1.PayloadR\rsourceContextB\b\n\
    \\ACKresult\"\DC4\n\
    \\DC2OnCompleteResponseB\210\SOH\n\
    \&io.temporal.api.notificationservice.v1B\DC4RequestResponseProtoP\SOHZ=go.temporal.io/api/notificationservice/v1;notificationservice\170\STX%Temporalio.Api.NotificationService.V1\234\STX(Temporalio::Api::NotificationService::V1J\237\t\n\
    \\ACK\DC2\EOT\NUL\NUL$\GS\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL,\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NULT\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\EOT\NULT\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NUL?\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\ENQ\NUL?\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\ACK\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL5\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\a\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULA\n\
    \\t\n\
    \\STX\b-\DC2\ETX\b\NULA\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULB\n\
    \\t\n\
    \\STX\b%\DC2\ETX\t\NULB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\v\NUL.\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\f\NUL/\n\
    \\131\EOT\n\
    \\STX\EOT\NUL\DC2\EOT\NAK\NUL!\SOH\SUB\246\ETX OnCompleteRequest is the request type to the NotificationService's OnComplete operation,\n\
    \ allowing for defining completion handlers for arbitrary operations.\n\
    \\n\
    \ Information about the source operation will be available in the form of a commonpb.Link,\n\
    \ which will be available separately from this OnCompleteRequest. e.g. a link to the source\n\
    \ standalone Nexus operation would be found in the nexuspb.StartOperationRequest parameter\n\
    \ sent to the worker callback. (In addition to this OnCompleteRequest.)\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\EM\n\
    \3\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\CAN\EOT\GS\ENQ\SUB% The result of the source operation.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\CAN\n\
    \\DLE\n\
    \O\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SUB\b3\SUBB The operation was successful, and resulted in the given payload.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\SUB\b&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB'.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SUB12\n\
    \\\\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\FS\b4\SUBO The operation failed. Includes timeout, cancellation, and application errors.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\FS\b'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\FS(/\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\FS23\n\
    \\\\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX \EOT6\SUBO User-supplied data which was added to the source invocation. (As applicable.)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX \EOT\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX #1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX 45\n\
    \O\n\
    \\STX\EOT\SOH\DC2\ETX$\NUL\GS\SUBD OnCompleteResponse is the return type of the OnComplete operation.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX$\b\SUBb\ACKproto3"