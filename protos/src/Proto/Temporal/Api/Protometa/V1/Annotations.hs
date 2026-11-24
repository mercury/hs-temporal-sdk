{- This file was auto-generated from temporal/api/protometa/v1/annotations.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Protometa.V1.Annotations (
        RequestHeaderAnnotation()
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
import qualified Proto.Google.Protobuf.Descriptor
{- | Fields :
     
         * 'Proto.Temporal.Api.Protometa.V1.Annotations_Fields.header' @:: Lens' RequestHeaderAnnotation Data.Text.Text@
         * 'Proto.Temporal.Api.Protometa.V1.Annotations_Fields.value' @:: Lens' RequestHeaderAnnotation Data.Text.Text@ -}
data RequestHeaderAnnotation
  = RequestHeaderAnnotation'_constructor {_RequestHeaderAnnotation'header :: !Data.Text.Text,
                                          _RequestHeaderAnnotation'value :: !Data.Text.Text,
                                          _RequestHeaderAnnotation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestHeaderAnnotation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestHeaderAnnotation "header" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestHeaderAnnotation'header
           (\ x__ y__ -> x__ {_RequestHeaderAnnotation'header = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestHeaderAnnotation "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestHeaderAnnotation'value
           (\ x__ y__ -> x__ {_RequestHeaderAnnotation'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestHeaderAnnotation where
  messageName _
    = Data.Text.pack
        "temporal.api.protometa.v1.RequestHeaderAnnotation"
  packedMessageDescriptor _
    = "\n\
      \\ETBRequestHeaderAnnotation\DC2\SYN\n\
      \\ACKheader\CAN\SOH \SOH(\tR\ACKheader\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"header")) ::
              Data.ProtoLens.FieldDescriptor RequestHeaderAnnotation
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor RequestHeaderAnnotation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, header__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestHeaderAnnotation'_unknownFields
        (\ x__ y__ -> x__ {_RequestHeaderAnnotation'_unknownFields = y__})
  defMessage
    = RequestHeaderAnnotation'_constructor
        {_RequestHeaderAnnotation'header = Data.ProtoLens.fieldDefault,
         _RequestHeaderAnnotation'value = Data.ProtoLens.fieldDefault,
         _RequestHeaderAnnotation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestHeaderAnnotation
          -> Data.ProtoLens.Encoding.Bytes.Parser RequestHeaderAnnotation
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
                                       "header"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"header") y x)
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
          (do loop Data.ProtoLens.defMessage) "RequestHeaderAnnotation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"header") _x
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
instance Control.DeepSeq.NFData RequestHeaderAnnotation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestHeaderAnnotation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RequestHeaderAnnotation'header x__)
                (Control.DeepSeq.deepseq (_RequestHeaderAnnotation'value x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \+temporal/api/protometa/v1/annotations.proto\DC2\EMtemporal.api.protometa.v1\SUB google/protobuf/descriptor.proto\"G\n\
    \\ETBRequestHeaderAnnotation\DC2\SYN\n\
    \\ACKheader\CAN\SOH \SOH(\tR\ACKheader\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:|\n\
    \\SOrequest_header\CAN\209\195\185\ETX \ETX(\v22.temporal.api.protometa.v1.RequestHeaderAnnotation\DC2\RS.google.protobuf.MethodOptionsR\rrequestHeaderB\156\SOH\n\
    \\FSio.temporal.api.protometa.v1B\DLEAnnotationsProtoP\SOHZ)go.temporal.io/api/protometa/v1;protometa\170\STX\ESCTemporalio.Api.Protometa.V1\234\STX\RSTemporalio::Api::Protometa::V1J\151\t\n\
    \\ACK\DC2\EOT\NUL\NUL$\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NUL@\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\EOT\NUL@\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NUL5\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\ENQ\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\ACK\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL1\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\a\NUL1\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL7\n\
    \\t\n\
    \\STX\b-\DC2\ETX\b\NUL7\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL8\n\
    \\t\n\
    \\STX\b%\DC2\ETX\t\NUL8\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\v\NUL*\n\
    \\198\ETX\n\
    \\STX\EOT\NUL\DC2\EOT\SYN\NUL\RS\SOH\SUB\185\ETX RequestHeaderAnnotation allows specifying that field values from a request\n\
    \ should be propagated as outbound headers.\n\
    \\n\
    \ The value field supports template interpolation where field paths enclosed\n\
    \ in braces will be replaced with the actual field values from the request.\n\
    \ For example:\n\
    \   value: \"{workflow_execution.workflow_id}\"\n\
    \   value: \"workflow-{workflow_execution.workflow_id}\"\n\
    \   value: \"{namespace}/{workflow_execution.workflow_id}\"\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SYN\b\US\n\
    \K\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\CAN\STX\DC4\SUB> The name of the header to set (e.g., \"temporal-resource-id\")\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\CAN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\CAN\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\CAN\DC2\DC3\n\
    \\177\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\GS\STX\DC3\SUB\163\SOH A template string that may contain field paths in braces.\n\
    \ Field paths use dot notation to traverse nested messages.\n\
    \ Example: \"{workflow_execution.workflow_id}\"\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\GS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\GS\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\GS\DC1\DC2\n\
    \\DEL\n\
    \\SOH\a\DC2\EOT\"\NUL$\SOH\SUBt Extension to add request-header annotations to RPC methods.\n\
    \ Multiple headers can be set by repeating this option.\n\
    \\n\
    \\t\n\
    \\STX\a\NUL\DC2\ETX#\STX<\n\
    \\n\
    \\n\
    \\ETX\a\NUL\STX\DC2\ETX\"\a$\n\
    \\n\
    \\n\
    \\ETX\a\NUL\EOT\DC2\ETX#\STX\n\
    \\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ACK\DC2\ETX#\v\"\n\
    \\n\
    \\n\
    \\ETX\a\NUL\SOH\DC2\ETX##1\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ETX\DC2\ETX#4;b\ACKproto3"