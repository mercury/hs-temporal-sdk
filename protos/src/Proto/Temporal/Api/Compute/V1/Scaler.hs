{- This file was auto-generated from temporal/api/compute/v1/scaler.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Compute.V1.Scaler (
        ComputeScaler()
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
     
         * 'Proto.Temporal.Api.Compute.V1.Scaler_Fields.type'' @:: Lens' ComputeScaler Data.Text.Text@
         * 'Proto.Temporal.Api.Compute.V1.Scaler_Fields.details' @:: Lens' ComputeScaler Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Api.Compute.V1.Scaler_Fields.maybe'details' @:: Lens' ComputeScaler (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data ComputeScaler
  = ComputeScaler'_constructor {_ComputeScaler'type' :: !Data.Text.Text,
                                _ComputeScaler'details :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                _ComputeScaler'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ComputeScaler where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ComputeScaler "type'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeScaler'type'
           (\ x__ y__ -> x__ {_ComputeScaler'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ComputeScaler "details" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeScaler'details
           (\ x__ y__ -> x__ {_ComputeScaler'details = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ComputeScaler "maybe'details" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeScaler'details
           (\ x__ y__ -> x__ {_ComputeScaler'details = y__}))
        Prelude.id
instance Data.ProtoLens.Message ComputeScaler where
  messageName _
    = Data.Text.pack "temporal.api.compute.v1.ComputeScaler"
  packedMessageDescriptor _
    = "\n\
      \\rComputeScaler\DC2\DC2\n\
      \\EOTtype\CAN\SOH \SOH(\tR\EOTtype\DC29\n\
      \\adetails\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\adetails"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor ComputeScaler
        details__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "details"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'details")) ::
              Data.ProtoLens.FieldDescriptor ComputeScaler
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, details__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ComputeScaler'_unknownFields
        (\ x__ y__ -> x__ {_ComputeScaler'_unknownFields = y__})
  defMessage
    = ComputeScaler'_constructor
        {_ComputeScaler'type' = Data.ProtoLens.fieldDefault,
         _ComputeScaler'details = Prelude.Nothing,
         _ComputeScaler'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ComputeScaler -> Data.ProtoLens.Encoding.Bytes.Parser ComputeScaler
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
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        18
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
          (do loop Data.ProtoLens.defMessage) "ComputeScaler"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'details") _x
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
instance Control.DeepSeq.NFData ComputeScaler where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ComputeScaler'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ComputeScaler'type' x__)
                (Control.DeepSeq.deepseq (_ComputeScaler'details x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \$temporal/api/compute/v1/scaler.proto\DC2\ETBtemporal.api.compute.v1\SUB$temporal/api/common/v1/message.proto\"^\n\
    \\rComputeScaler\DC2\DC2\n\
    \\EOTtype\CAN\SOH \SOH(\tR\EOTtype\DC29\n\
    \\adetails\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\adetailsB\141\SOH\n\
    \\SUBio.temporal.api.compute.v1B\vScalerProtoP\SOHZ%go.temporal.io/api/compute/v1;compute\170\STX\EMTemporalio.Api.Compute.V1\234\STX\FSTemporalio::Api::Compute::V1J\142\a\n\
    \\ACK\DC2\EOT\NUL\NUL\ESC\SOH\n\
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
    \\SOH\b\DC2\ETX\a\NUL,\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\a\NUL,\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL5\n\
    \\t\n\
    \\STX\b-\DC2\ETX\b\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL6\n\
    \\t\n\
    \\STX\b%\DC2\ETX\t\NUL6\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\v\NUL.\n\
    \\141\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\SI\NUL\ESC\SOH\SUB\128\SOH ComputeScaler instructs the Temporal Service when to scale up or down the number of\n\
    \ Workers that comprise a WorkerDeployment.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SI\b\NAK\n\
    \\192\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC3\EOT\DC4\SUB\178\SOH Type of the compute scaler. this string is implementation-specific and\n\
    \ can be used by implementations to understand how to interpret the\n\
    \ contents of the scaler_details field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DC3\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC3\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC3\DC2\DC3\n\
    \\179\STX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SUB\EOT/\SUB\165\STX Contains scaler-specific instructions and configuration.\n\
    \ For server-implemented scalers, use the SDK's default data\n\
    \ converter to ensure the server can understand it.\n\
    \ For remote-implemented scalers, you might use your own data\n\
    \ converters according to what the remote endpoints understand.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\SUB\EOT\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SUB#*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SUB-.b\ACKproto3"