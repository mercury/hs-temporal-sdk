{- This file was auto-generated from temporal/api/compute/v1/provider.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Compute.V1.Provider (
        ComputeProvider()
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
     
         * 'Proto.Temporal.Api.Compute.V1.Provider_Fields.type'' @:: Lens' ComputeProvider Data.Text.Text@
         * 'Proto.Temporal.Api.Compute.V1.Provider_Fields.details' @:: Lens' ComputeProvider Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Api.Compute.V1.Provider_Fields.maybe'details' @:: Lens' ComputeProvider (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Api.Compute.V1.Provider_Fields.nexusEndpoint' @:: Lens' ComputeProvider Data.Text.Text@ -}
data ComputeProvider
  = ComputeProvider'_constructor {_ComputeProvider'type' :: !Data.Text.Text,
                                  _ComputeProvider'details :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                  _ComputeProvider'nexusEndpoint :: !Data.Text.Text,
                                  _ComputeProvider'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ComputeProvider where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ComputeProvider "type'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeProvider'type'
           (\ x__ y__ -> x__ {_ComputeProvider'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ComputeProvider "details" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeProvider'details
           (\ x__ y__ -> x__ {_ComputeProvider'details = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ComputeProvider "maybe'details" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeProvider'details
           (\ x__ y__ -> x__ {_ComputeProvider'details = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ComputeProvider "nexusEndpoint" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeProvider'nexusEndpoint
           (\ x__ y__ -> x__ {_ComputeProvider'nexusEndpoint = y__}))
        Prelude.id
instance Data.ProtoLens.Message ComputeProvider where
  messageName _
    = Data.Text.pack "temporal.api.compute.v1.ComputeProvider"
  packedMessageDescriptor _
    = "\n\
      \\SIComputeProvider\DC2\DC2\n\
      \\EOTtype\CAN\SOH \SOH(\tR\EOTtype\DC29\n\
      \\adetails\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\adetails\DC2%\n\
      \\SOnexus_endpoint\CAN\n\
      \ \SOH(\tR\rnexusEndpoint"
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
              Data.ProtoLens.FieldDescriptor ComputeProvider
        details__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "details"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'details")) ::
              Data.ProtoLens.FieldDescriptor ComputeProvider
        nexusEndpoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nexus_endpoint"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"nexusEndpoint")) ::
              Data.ProtoLens.FieldDescriptor ComputeProvider
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, details__field_descriptor),
           (Data.ProtoLens.Tag 10, nexusEndpoint__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ComputeProvider'_unknownFields
        (\ x__ y__ -> x__ {_ComputeProvider'_unknownFields = y__})
  defMessage
    = ComputeProvider'_constructor
        {_ComputeProvider'type' = Data.ProtoLens.fieldDefault,
         _ComputeProvider'details = Prelude.Nothing,
         _ComputeProvider'nexusEndpoint = Data.ProtoLens.fieldDefault,
         _ComputeProvider'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ComputeProvider
          -> Data.ProtoLens.Encoding.Bytes.Parser ComputeProvider
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
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "nexus_endpoint"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"nexusEndpoint") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ComputeProvider"
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
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"nexusEndpoint") _x
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
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ComputeProvider where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ComputeProvider'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ComputeProvider'type' x__)
                (Control.DeepSeq.deepseq
                   (_ComputeProvider'details x__)
                   (Control.DeepSeq.deepseq (_ComputeProvider'nexusEndpoint x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&temporal/api/compute/v1/provider.proto\DC2\ETBtemporal.api.compute.v1\SUB$temporal/api/common/v1/message.proto\"\135\SOH\n\
    \\SIComputeProvider\DC2\DC2\n\
    \\EOTtype\CAN\SOH \SOH(\tR\EOTtype\DC29\n\
    \\adetails\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\adetails\DC2%\n\
    \\SOnexus_endpoint\CAN\n\
    \ \SOH(\tR\rnexusEndpointB\143\SOH\n\
    \\SUBio.temporal.api.compute.v1B\rProviderProtoP\SOHZ%go.temporal.io/api/compute/v1;compute\170\STX\EMTemporalio.Api.Compute.V1\234\STX\FSTemporalio::Api::Compute::V1J\131\n\
    \\n\
    \\ACK\DC2\EOT\NUL\NUL\"\SOH\n\
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
    \\SOH\b\DC2\ETX\a\NUL.\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\a\NUL.\n\
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
    \\232\STX\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL\"\SOH\SUB\219\STX ComputeProvider stores information used by a worker control plane controller\n\
    \ to respond to worker lifecycle events. For example, when a Task is received\n\
    \ on a TaskQueue that has no active pollers, a serverless worker lifecycle\n\
    \ controller might need to invoke an AWS Lambda Function that itself ends up\n\
    \ calling the SDK's worker.New() function.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\ETB\n\
    \\196\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SYN\EOT\DC4\SUB\182\SOH Type of the compute provider. This string is implementation-specific and\n\
    \ can be used by implementations to understand how to interpret the\n\
    \ contents of the provider_details field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SYN\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SYN\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SYN\DC2\DC3\n\
    \\191\STX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\GS\EOT/\SUB\177\STX Contains provider-specific instructions and configuration.\n\
    \ For server-implemented providers, use the SDK's default content\n\
    \ converter to ensure the server can understand it.\n\
    \ For remote-implemented providers, you might use your own content\n\
    \ converters according to what the remote endpoints understand.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\GS\EOT\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\GS#*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\GS-.\n\
    \^\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX!\EOT\US\SUBQ Optional. If the compute provider is a Nexus service, this should point\n\
    \ there.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX!\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX!\v\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX!\FS\RSb\ACKproto3"