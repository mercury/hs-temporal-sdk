{- This file was auto-generated from temporal/api/sdk/v1/external_storage.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Sdk.V1.ExternalStorage (
        ExternalStorageReference(),
        ExternalStorageReference'ClaimDataEntry()
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
{- | Fields :
     
         * 'Proto.Temporal.Api.Sdk.V1.ExternalStorage_Fields.driverName' @:: Lens' ExternalStorageReference Data.Text.Text@
         * 'Proto.Temporal.Api.Sdk.V1.ExternalStorage_Fields.claimData' @:: Lens' ExternalStorageReference (Data.Map.Map Data.Text.Text Data.Text.Text)@ -}
data ExternalStorageReference
  = ExternalStorageReference'_constructor {_ExternalStorageReference'driverName :: !Data.Text.Text,
                                           _ExternalStorageReference'claimData :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                                           _ExternalStorageReference'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExternalStorageReference where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ExternalStorageReference "driverName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalStorageReference'driverName
           (\ x__ y__ -> x__ {_ExternalStorageReference'driverName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExternalStorageReference "claimData" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalStorageReference'claimData
           (\ x__ y__ -> x__ {_ExternalStorageReference'claimData = y__}))
        Prelude.id
instance Data.ProtoLens.Message ExternalStorageReference where
  messageName _
    = Data.Text.pack "temporal.api.sdk.v1.ExternalStorageReference"
  packedMessageDescriptor _
    = "\n\
      \\CANExternalStorageReference\DC2\US\n\
      \\vdriver_name\CAN\SOH \SOH(\tR\n\
      \driverName\DC2[\n\
      \\n\
      \claim_data\CAN\STX \ETX(\v2<.temporal.api.sdk.v1.ExternalStorageReference.ClaimDataEntryR\tclaimData\SUB<\n\
      \\SOClaimDataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        driverName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "driver_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"driverName")) ::
              Data.ProtoLens.FieldDescriptor ExternalStorageReference
        claimData__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "claim_data"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ExternalStorageReference'ClaimDataEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"claimData")) ::
              Data.ProtoLens.FieldDescriptor ExternalStorageReference
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, driverName__field_descriptor),
           (Data.ProtoLens.Tag 2, claimData__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExternalStorageReference'_unknownFields
        (\ x__ y__ -> x__ {_ExternalStorageReference'_unknownFields = y__})
  defMessage
    = ExternalStorageReference'_constructor
        {_ExternalStorageReference'driverName = Data.ProtoLens.fieldDefault,
         _ExternalStorageReference'claimData = Data.Map.empty,
         _ExternalStorageReference'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ExternalStorageReference
          -> Data.ProtoLens.Encoding.Bytes.Parser ExternalStorageReference
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
                                       "driver_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"driverName") y x)
                        18
                          -> do !(entry :: ExternalStorageReference'ClaimDataEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                         (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                             Data.ProtoLens.Encoding.Bytes.isolate
                                                                                               (Prelude.fromIntegral
                                                                                                  len)
                                                                                               Data.ProtoLens.parseMessage)
                                                                                         "claim_data"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"claimData")
                                        (\ !t -> Data.Map.insert key value t) x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ExternalStorageReference"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"driverName") _x
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
                                          ExternalStorageReference'ClaimDataEntry)))))
                      (Data.Map.toList
                         (Lens.Family2.view (Data.ProtoLens.Field.field @"claimData") _x))))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ExternalStorageReference where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExternalStorageReference'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ExternalStorageReference'driverName x__)
                (Control.DeepSeq.deepseq
                   (_ExternalStorageReference'claimData x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Sdk.V1.ExternalStorage_Fields.key' @:: Lens' ExternalStorageReference'ClaimDataEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Sdk.V1.ExternalStorage_Fields.value' @:: Lens' ExternalStorageReference'ClaimDataEntry Data.Text.Text@ -}
data ExternalStorageReference'ClaimDataEntry
  = ExternalStorageReference'ClaimDataEntry'_constructor {_ExternalStorageReference'ClaimDataEntry'key :: !Data.Text.Text,
                                                          _ExternalStorageReference'ClaimDataEntry'value :: !Data.Text.Text,
                                                          _ExternalStorageReference'ClaimDataEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExternalStorageReference'ClaimDataEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ExternalStorageReference'ClaimDataEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalStorageReference'ClaimDataEntry'key
           (\ x__ y__
              -> x__ {_ExternalStorageReference'ClaimDataEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExternalStorageReference'ClaimDataEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalStorageReference'ClaimDataEntry'value
           (\ x__ y__
              -> x__ {_ExternalStorageReference'ClaimDataEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message ExternalStorageReference'ClaimDataEntry where
  messageName _
    = Data.Text.pack
        "temporal.api.sdk.v1.ExternalStorageReference.ClaimDataEntry"
  packedMessageDescriptor _
    = "\n\
      \\SOClaimDataEntry\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor ExternalStorageReference'ClaimDataEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor ExternalStorageReference'ClaimDataEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExternalStorageReference'ClaimDataEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_ExternalStorageReference'ClaimDataEntry'_unknownFields = y__})
  defMessage
    = ExternalStorageReference'ClaimDataEntry'_constructor
        {_ExternalStorageReference'ClaimDataEntry'key = Data.ProtoLens.fieldDefault,
         _ExternalStorageReference'ClaimDataEntry'value = Data.ProtoLens.fieldDefault,
         _ExternalStorageReference'ClaimDataEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ExternalStorageReference'ClaimDataEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser ExternalStorageReference'ClaimDataEntry
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
          (do loop Data.ProtoLens.defMessage) "ClaimDataEntry"
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
instance Control.DeepSeq.NFData ExternalStorageReference'ClaimDataEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExternalStorageReference'ClaimDataEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ExternalStorageReference'ClaimDataEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_ExternalStorageReference'ClaimDataEntry'value x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \*temporal/api/sdk/v1/external_storage.proto\DC2\DC3temporal.api.sdk.v1\"\214\SOH\n\
    \\CANExternalStorageReference\DC2\US\n\
    \\vdriver_name\CAN\SOH \SOH(\tR\n\
    \driverName\DC2[\n\
    \\n\
    \claim_data\CAN\STX \ETX(\v2<.temporal.api.sdk.v1.ExternalStorageReference.ClaimDataEntryR\tclaimData\SUB<\n\
    \\SOClaimDataEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOHB\130\SOH\n\
    \\SYNio.temporal.api.sdk.v1B\DC4ExternalStorageProtoP\SOHZ\GSgo.temporal.io/api/sdk/v1;sdk\170\STX\NAKTemporalio.Api.Sdk.V1\234\STX\CANTemporalio::Api::Sdk::V1J\169\ENQ\n\
    \\ACK\DC2\EOT\NUL\NUL\DC3\SOH\n\
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
    \\SOH\b\DC2\ETX\a\NUL5\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\a\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL1\n\
    \\t\n\
    \\STX\b-\DC2\ETX\b\NUL1\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL2\n\
    \\t\n\
    \\STX\b%\DC2\ETX\t\NUL2\n\
    \\237\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\SO\NUL\DC3\SOH\SUB\224\SOH ExternalStorageReference identifies a payload stored in an external storage system.\n\
    \ It is used as a claim-check token, allowing the actual payload data to be retrieved\n\
    \ from the named driver using the provided claim data.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SO\b \n\
    \U\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DLE\STX\EM\SUBH The name of the storage driver responsible for retrieving the payload.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DLE\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DLE\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DLE\ETB\CAN\n\
    \f\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC2\STX%\SUBY Driver-specific key-value pairs that identify and provide access to the stored payload.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\DC2\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC2\SYN \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC2#$b\ACKproto3"