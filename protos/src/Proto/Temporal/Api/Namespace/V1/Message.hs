{- This file was auto-generated from temporal/api/namespace/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Namespace.V1.Message (
        BadBinaries(), BadBinaries'BinariesEntry(), BadBinaryInfo(),
        NamespaceConfig(),
        NamespaceConfig'CustomSearchAttributeAliasesEntry(),
        NamespaceFilter(), NamespaceInfo(), NamespaceInfo'Capabilities(),
        NamespaceInfo'DataEntry(), NamespaceInfo'Limits(),
        UpdateNamespaceInfo(), UpdateNamespaceInfo'DataEntry()
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
import qualified Proto.Temporal.Api.Enums.V1.Namespace
{- | Fields :
     
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.binaries' @:: Lens' BadBinaries (Data.Map.Map Data.Text.Text BadBinaryInfo)@ -}
data BadBinaries
  = BadBinaries'_constructor {_BadBinaries'binaries :: !(Data.Map.Map Data.Text.Text BadBinaryInfo),
                              _BadBinaries'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BadBinaries where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BadBinaries "binaries" (Data.Map.Map Data.Text.Text BadBinaryInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BadBinaries'binaries
           (\ x__ y__ -> x__ {_BadBinaries'binaries = y__}))
        Prelude.id
instance Data.ProtoLens.Message BadBinaries where
  messageName _
    = Data.Text.pack "temporal.api.namespace.v1.BadBinaries"
  packedMessageDescriptor _
    = "\n\
      \\vBadBinaries\DC2P\n\
      \\bbinaries\CAN\SOH \ETX(\v24.temporal.api.namespace.v1.BadBinaries.BinariesEntryR\bbinaries\SUBe\n\
      \\rBinariesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2>\n\
      \\ENQvalue\CAN\STX \SOH(\v2(.temporal.api.namespace.v1.BadBinaryInfoR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        binaries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "binaries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BadBinaries'BinariesEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"binaries")) ::
              Data.ProtoLens.FieldDescriptor BadBinaries
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, binaries__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BadBinaries'_unknownFields
        (\ x__ y__ -> x__ {_BadBinaries'_unknownFields = y__})
  defMessage
    = BadBinaries'_constructor
        {_BadBinaries'binaries = Data.Map.empty,
         _BadBinaries'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BadBinaries -> Data.ProtoLens.Encoding.Bytes.Parser BadBinaries
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
                          -> do !(entry :: BadBinaries'BinariesEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                           (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                               Data.ProtoLens.Encoding.Bytes.isolate
                                                                                 (Prelude.fromIntegral
                                                                                    len)
                                                                                 Data.ProtoLens.parseMessage)
                                                                           "binaries"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"binaries")
                                        (\ !t -> Data.Map.insert key value t) x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BadBinaries"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.Monoid.mconcat
                (Prelude.map
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
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
                                    (Data.ProtoLens.defMessage :: BadBinaries'BinariesEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"binaries") _x))))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData BadBinaries where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BadBinaries'_unknownFields x__)
             (Control.DeepSeq.deepseq (_BadBinaries'binaries x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.key' @:: Lens' BadBinaries'BinariesEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.value' @:: Lens' BadBinaries'BinariesEntry BadBinaryInfo@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.maybe'value' @:: Lens' BadBinaries'BinariesEntry (Prelude.Maybe BadBinaryInfo)@ -}
data BadBinaries'BinariesEntry
  = BadBinaries'BinariesEntry'_constructor {_BadBinaries'BinariesEntry'key :: !Data.Text.Text,
                                            _BadBinaries'BinariesEntry'value :: !(Prelude.Maybe BadBinaryInfo),
                                            _BadBinaries'BinariesEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BadBinaries'BinariesEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BadBinaries'BinariesEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BadBinaries'BinariesEntry'key
           (\ x__ y__ -> x__ {_BadBinaries'BinariesEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BadBinaries'BinariesEntry "value" BadBinaryInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BadBinaries'BinariesEntry'value
           (\ x__ y__ -> x__ {_BadBinaries'BinariesEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BadBinaries'BinariesEntry "maybe'value" (Prelude.Maybe BadBinaryInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BadBinaries'BinariesEntry'value
           (\ x__ y__ -> x__ {_BadBinaries'BinariesEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message BadBinaries'BinariesEntry where
  messageName _
    = Data.Text.pack
        "temporal.api.namespace.v1.BadBinaries.BinariesEntry"
  packedMessageDescriptor _
    = "\n\
      \\rBinariesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2>\n\
      \\ENQvalue\CAN\STX \SOH(\v2(.temporal.api.namespace.v1.BadBinaryInfoR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor BadBinaries'BinariesEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BadBinaryInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor BadBinaries'BinariesEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BadBinaries'BinariesEntry'_unknownFields
        (\ x__ y__
           -> x__ {_BadBinaries'BinariesEntry'_unknownFields = y__})
  defMessage
    = BadBinaries'BinariesEntry'_constructor
        {_BadBinaries'BinariesEntry'key = Data.ProtoLens.fieldDefault,
         _BadBinaries'BinariesEntry'value = Prelude.Nothing,
         _BadBinaries'BinariesEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BadBinaries'BinariesEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser BadBinaries'BinariesEntry
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
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
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
          (do loop Data.ProtoLens.defMessage) "BinariesEntry"
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
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
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
instance Control.DeepSeq.NFData BadBinaries'BinariesEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BadBinaries'BinariesEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BadBinaries'BinariesEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_BadBinaries'BinariesEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.reason' @:: Lens' BadBinaryInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.operator' @:: Lens' BadBinaryInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.createTime' @:: Lens' BadBinaryInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.maybe'createTime' @:: Lens' BadBinaryInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data BadBinaryInfo
  = BadBinaryInfo'_constructor {_BadBinaryInfo'reason :: !Data.Text.Text,
                                _BadBinaryInfo'operator :: !Data.Text.Text,
                                _BadBinaryInfo'createTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                _BadBinaryInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BadBinaryInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BadBinaryInfo "reason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BadBinaryInfo'reason
           (\ x__ y__ -> x__ {_BadBinaryInfo'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BadBinaryInfo "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BadBinaryInfo'operator
           (\ x__ y__ -> x__ {_BadBinaryInfo'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BadBinaryInfo "createTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BadBinaryInfo'createTime
           (\ x__ y__ -> x__ {_BadBinaryInfo'createTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BadBinaryInfo "maybe'createTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BadBinaryInfo'createTime
           (\ x__ y__ -> x__ {_BadBinaryInfo'createTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message BadBinaryInfo where
  messageName _
    = Data.Text.pack "temporal.api.namespace.v1.BadBinaryInfo"
  packedMessageDescriptor _
    = "\n\
      \\rBadBinaryInfo\DC2\SYN\n\
      \\ACKreason\CAN\SOH \SOH(\tR\ACKreason\DC2\SUB\n\
      \\boperator\CAN\STX \SOH(\tR\boperator\DC2;\n\
      \\vcreate_time\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \createTime"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"reason")) ::
              Data.ProtoLens.FieldDescriptor BadBinaryInfo
        operator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operator")) ::
              Data.ProtoLens.FieldDescriptor BadBinaryInfo
        createTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "create_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'createTime")) ::
              Data.ProtoLens.FieldDescriptor BadBinaryInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, reason__field_descriptor),
           (Data.ProtoLens.Tag 2, operator__field_descriptor),
           (Data.ProtoLens.Tag 3, createTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BadBinaryInfo'_unknownFields
        (\ x__ y__ -> x__ {_BadBinaryInfo'_unknownFields = y__})
  defMessage
    = BadBinaryInfo'_constructor
        {_BadBinaryInfo'reason = Data.ProtoLens.fieldDefault,
         _BadBinaryInfo'operator = Data.ProtoLens.fieldDefault,
         _BadBinaryInfo'createTime = Prelude.Nothing,
         _BadBinaryInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BadBinaryInfo -> Data.ProtoLens.Encoding.Bytes.Parser BadBinaryInfo
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
                                       "reason"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reason") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operator") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "create_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"createTime") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BadBinaryInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"reason") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operator") _x
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
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'createTime") _x
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
instance Control.DeepSeq.NFData BadBinaryInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BadBinaryInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BadBinaryInfo'reason x__)
                (Control.DeepSeq.deepseq
                   (_BadBinaryInfo'operator x__)
                   (Control.DeepSeq.deepseq (_BadBinaryInfo'createTime x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.workflowExecutionRetentionTtl' @:: Lens' NamespaceConfig Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.maybe'workflowExecutionRetentionTtl' @:: Lens' NamespaceConfig (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.badBinaries' @:: Lens' NamespaceConfig BadBinaries@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.maybe'badBinaries' @:: Lens' NamespaceConfig (Prelude.Maybe BadBinaries)@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.historyArchivalState' @:: Lens' NamespaceConfig Proto.Temporal.Api.Enums.V1.Namespace.ArchivalState@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.historyArchivalUri' @:: Lens' NamespaceConfig Data.Text.Text@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.visibilityArchivalState' @:: Lens' NamespaceConfig Proto.Temporal.Api.Enums.V1.Namespace.ArchivalState@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.visibilityArchivalUri' @:: Lens' NamespaceConfig Data.Text.Text@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.customSearchAttributeAliases' @:: Lens' NamespaceConfig (Data.Map.Map Data.Text.Text Data.Text.Text)@ -}
data NamespaceConfig
  = NamespaceConfig'_constructor {_NamespaceConfig'workflowExecutionRetentionTtl :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _NamespaceConfig'badBinaries :: !(Prelude.Maybe BadBinaries),
                                  _NamespaceConfig'historyArchivalState :: !Proto.Temporal.Api.Enums.V1.Namespace.ArchivalState,
                                  _NamespaceConfig'historyArchivalUri :: !Data.Text.Text,
                                  _NamespaceConfig'visibilityArchivalState :: !Proto.Temporal.Api.Enums.V1.Namespace.ArchivalState,
                                  _NamespaceConfig'visibilityArchivalUri :: !Data.Text.Text,
                                  _NamespaceConfig'customSearchAttributeAliases :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                                  _NamespaceConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NamespaceConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NamespaceConfig "workflowExecutionRetentionTtl" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceConfig'workflowExecutionRetentionTtl
           (\ x__ y__
              -> x__ {_NamespaceConfig'workflowExecutionRetentionTtl = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NamespaceConfig "maybe'workflowExecutionRetentionTtl" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceConfig'workflowExecutionRetentionTtl
           (\ x__ y__
              -> x__ {_NamespaceConfig'workflowExecutionRetentionTtl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceConfig "badBinaries" BadBinaries where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceConfig'badBinaries
           (\ x__ y__ -> x__ {_NamespaceConfig'badBinaries = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NamespaceConfig "maybe'badBinaries" (Prelude.Maybe BadBinaries) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceConfig'badBinaries
           (\ x__ y__ -> x__ {_NamespaceConfig'badBinaries = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceConfig "historyArchivalState" Proto.Temporal.Api.Enums.V1.Namespace.ArchivalState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceConfig'historyArchivalState
           (\ x__ y__ -> x__ {_NamespaceConfig'historyArchivalState = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceConfig "historyArchivalUri" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceConfig'historyArchivalUri
           (\ x__ y__ -> x__ {_NamespaceConfig'historyArchivalUri = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceConfig "visibilityArchivalState" Proto.Temporal.Api.Enums.V1.Namespace.ArchivalState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceConfig'visibilityArchivalState
           (\ x__ y__
              -> x__ {_NamespaceConfig'visibilityArchivalState = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceConfig "visibilityArchivalUri" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceConfig'visibilityArchivalUri
           (\ x__ y__ -> x__ {_NamespaceConfig'visibilityArchivalUri = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceConfig "customSearchAttributeAliases" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceConfig'customSearchAttributeAliases
           (\ x__ y__
              -> x__ {_NamespaceConfig'customSearchAttributeAliases = y__}))
        Prelude.id
instance Data.ProtoLens.Message NamespaceConfig where
  messageName _
    = Data.Text.pack "temporal.api.namespace.v1.NamespaceConfig"
  packedMessageDescriptor _
    = "\n\
      \\SINamespaceConfig\DC2b\n\
      \ workflow_execution_retention_ttl\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\GSworkflowExecutionRetentionTtl\DC2I\n\
      \\fbad_binaries\CAN\STX \SOH(\v2&.temporal.api.namespace.v1.BadBinariesR\vbadBinaries\DC2Z\n\
      \\SYNhistory_archival_state\CAN\ETX \SOH(\SO2$.temporal.api.enums.v1.ArchivalStateR\DC4historyArchivalState\DC20\n\
      \\DC4history_archival_uri\CAN\EOT \SOH(\tR\DC2historyArchivalUri\DC2`\n\
      \\EMvisibility_archival_state\CAN\ENQ \SOH(\SO2$.temporal.api.enums.v1.ArchivalStateR\ETBvisibilityArchivalState\DC26\n\
      \\ETBvisibility_archival_uri\CAN\ACK \SOH(\tR\NAKvisibilityArchivalUri\DC2\147\SOH\n\
      \\UScustom_search_attribute_aliases\CAN\a \ETX(\v2L.temporal.api.namespace.v1.NamespaceConfig.CustomSearchAttributeAliasesEntryR\FScustomSearchAttributeAliases\SUBO\n\
      \!CustomSearchAttributeAliasesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        workflowExecutionRetentionTtl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_execution_retention_ttl"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'workflowExecutionRetentionTtl")) ::
              Data.ProtoLens.FieldDescriptor NamespaceConfig
        badBinaries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bad_binaries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BadBinaries)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'badBinaries")) ::
              Data.ProtoLens.FieldDescriptor NamespaceConfig
        historyArchivalState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "history_archival_state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Namespace.ArchivalState)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"historyArchivalState")) ::
              Data.ProtoLens.FieldDescriptor NamespaceConfig
        historyArchivalUri__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "history_archival_uri"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"historyArchivalUri")) ::
              Data.ProtoLens.FieldDescriptor NamespaceConfig
        visibilityArchivalState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "visibility_archival_state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Namespace.ArchivalState)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"visibilityArchivalState")) ::
              Data.ProtoLens.FieldDescriptor NamespaceConfig
        visibilityArchivalUri__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "visibility_archival_uri"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"visibilityArchivalUri")) ::
              Data.ProtoLens.FieldDescriptor NamespaceConfig
        customSearchAttributeAliases__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "custom_search_attribute_aliases"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NamespaceConfig'CustomSearchAttributeAliasesEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"customSearchAttributeAliases")) ::
              Data.ProtoLens.FieldDescriptor NamespaceConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, 
            workflowExecutionRetentionTtl__field_descriptor),
           (Data.ProtoLens.Tag 2, badBinaries__field_descriptor),
           (Data.ProtoLens.Tag 3, historyArchivalState__field_descriptor),
           (Data.ProtoLens.Tag 4, historyArchivalUri__field_descriptor),
           (Data.ProtoLens.Tag 5, visibilityArchivalState__field_descriptor),
           (Data.ProtoLens.Tag 6, visibilityArchivalUri__field_descriptor),
           (Data.ProtoLens.Tag 7, 
            customSearchAttributeAliases__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NamespaceConfig'_unknownFields
        (\ x__ y__ -> x__ {_NamespaceConfig'_unknownFields = y__})
  defMessage
    = NamespaceConfig'_constructor
        {_NamespaceConfig'workflowExecutionRetentionTtl = Prelude.Nothing,
         _NamespaceConfig'badBinaries = Prelude.Nothing,
         _NamespaceConfig'historyArchivalState = Data.ProtoLens.fieldDefault,
         _NamespaceConfig'historyArchivalUri = Data.ProtoLens.fieldDefault,
         _NamespaceConfig'visibilityArchivalState = Data.ProtoLens.fieldDefault,
         _NamespaceConfig'visibilityArchivalUri = Data.ProtoLens.fieldDefault,
         _NamespaceConfig'customSearchAttributeAliases = Data.Map.empty,
         _NamespaceConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NamespaceConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser NamespaceConfig
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
                                       "workflow_execution_retention_ttl"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowExecutionRetentionTtl") y
                                     x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "bad_binaries"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"badBinaries") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "history_archival_state"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"historyArchivalState") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "history_archival_uri"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"historyArchivalUri") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "visibility_archival_state"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"visibilityArchivalState") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "visibility_archival_uri"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"visibilityArchivalUri") y x)
                        58
                          -> do !(entry :: NamespaceConfig'CustomSearchAttributeAliasesEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                                   (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                                       Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                         (Prelude.fromIntegral
                                                                                                            len)
                                                                                                         Data.ProtoLens.parseMessage)
                                                                                                   "custom_search_attribute_aliases"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"customSearchAttributeAliases")
                                        (\ !t -> Data.Map.insert key value t) x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NamespaceConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'workflowExecutionRetentionTtl")
                    _x
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
                       (Data.ProtoLens.Field.field @"maybe'badBinaries") _x
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
                            (Data.ProtoLens.Field.field @"historyArchivalState") _x
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
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"historyArchivalUri") _x
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
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"visibilityArchivalState") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral)
                                     Prelude.fromEnum _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"visibilityArchivalUri") _x
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
                               (Data.Monoid.mconcat
                                  (Prelude.map
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
                                                Data.ProtoLens.encodeMessage
                                                (Lens.Family2.set
                                                   (Data.ProtoLens.Field.field @"key")
                                                   (Prelude.fst _v)
                                                   (Lens.Family2.set
                                                      (Data.ProtoLens.Field.field @"value")
                                                      (Prelude.snd _v)
                                                      (Data.ProtoLens.defMessage ::
                                                         NamespaceConfig'CustomSearchAttributeAliasesEntry)))))
                                     (Data.Map.toList
                                        (Lens.Family2.view
                                           (Data.ProtoLens.Field.field
                                              @"customSearchAttributeAliases")
                                           _x))))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData NamespaceConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NamespaceConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NamespaceConfig'workflowExecutionRetentionTtl x__)
                (Control.DeepSeq.deepseq
                   (_NamespaceConfig'badBinaries x__)
                   (Control.DeepSeq.deepseq
                      (_NamespaceConfig'historyArchivalState x__)
                      (Control.DeepSeq.deepseq
                         (_NamespaceConfig'historyArchivalUri x__)
                         (Control.DeepSeq.deepseq
                            (_NamespaceConfig'visibilityArchivalState x__)
                            (Control.DeepSeq.deepseq
                               (_NamespaceConfig'visibilityArchivalUri x__)
                               (Control.DeepSeq.deepseq
                                  (_NamespaceConfig'customSearchAttributeAliases x__) ())))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.key' @:: Lens' NamespaceConfig'CustomSearchAttributeAliasesEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.value' @:: Lens' NamespaceConfig'CustomSearchAttributeAliasesEntry Data.Text.Text@ -}
data NamespaceConfig'CustomSearchAttributeAliasesEntry
  = NamespaceConfig'CustomSearchAttributeAliasesEntry'_constructor {_NamespaceConfig'CustomSearchAttributeAliasesEntry'key :: !Data.Text.Text,
                                                                    _NamespaceConfig'CustomSearchAttributeAliasesEntry'value :: !Data.Text.Text,
                                                                    _NamespaceConfig'CustomSearchAttributeAliasesEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NamespaceConfig'CustomSearchAttributeAliasesEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NamespaceConfig'CustomSearchAttributeAliasesEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceConfig'CustomSearchAttributeAliasesEntry'key
           (\ x__ y__
              -> x__
                   {_NamespaceConfig'CustomSearchAttributeAliasesEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceConfig'CustomSearchAttributeAliasesEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceConfig'CustomSearchAttributeAliasesEntry'value
           (\ x__ y__
              -> x__
                   {_NamespaceConfig'CustomSearchAttributeAliasesEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message NamespaceConfig'CustomSearchAttributeAliasesEntry where
  messageName _
    = Data.Text.pack
        "temporal.api.namespace.v1.NamespaceConfig.CustomSearchAttributeAliasesEntry"
  packedMessageDescriptor _
    = "\n\
      \!CustomSearchAttributeAliasesEntry\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor NamespaceConfig'CustomSearchAttributeAliasesEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor NamespaceConfig'CustomSearchAttributeAliasesEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NamespaceConfig'CustomSearchAttributeAliasesEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_NamespaceConfig'CustomSearchAttributeAliasesEntry'_unknownFields = y__})
  defMessage
    = NamespaceConfig'CustomSearchAttributeAliasesEntry'_constructor
        {_NamespaceConfig'CustomSearchAttributeAliasesEntry'key = Data.ProtoLens.fieldDefault,
         _NamespaceConfig'CustomSearchAttributeAliasesEntry'value = Data.ProtoLens.fieldDefault,
         _NamespaceConfig'CustomSearchAttributeAliasesEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NamespaceConfig'CustomSearchAttributeAliasesEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser NamespaceConfig'CustomSearchAttributeAliasesEntry
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
          (do loop Data.ProtoLens.defMessage)
          "CustomSearchAttributeAliasesEntry"
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
instance Control.DeepSeq.NFData NamespaceConfig'CustomSearchAttributeAliasesEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NamespaceConfig'CustomSearchAttributeAliasesEntry'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_NamespaceConfig'CustomSearchAttributeAliasesEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_NamespaceConfig'CustomSearchAttributeAliasesEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.includeDeleted' @:: Lens' NamespaceFilter Prelude.Bool@ -}
data NamespaceFilter
  = NamespaceFilter'_constructor {_NamespaceFilter'includeDeleted :: !Prelude.Bool,
                                  _NamespaceFilter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NamespaceFilter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NamespaceFilter "includeDeleted" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceFilter'includeDeleted
           (\ x__ y__ -> x__ {_NamespaceFilter'includeDeleted = y__}))
        Prelude.id
instance Data.ProtoLens.Message NamespaceFilter where
  messageName _
    = Data.Text.pack "temporal.api.namespace.v1.NamespaceFilter"
  packedMessageDescriptor _
    = "\n\
      \\SINamespaceFilter\DC2'\n\
      \\SIinclude_deleted\CAN\SOH \SOH(\bR\SOincludeDeleted"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        includeDeleted__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "include_deleted"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"includeDeleted")) ::
              Data.ProtoLens.FieldDescriptor NamespaceFilter
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, includeDeleted__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NamespaceFilter'_unknownFields
        (\ x__ y__ -> x__ {_NamespaceFilter'_unknownFields = y__})
  defMessage
    = NamespaceFilter'_constructor
        {_NamespaceFilter'includeDeleted = Data.ProtoLens.fieldDefault,
         _NamespaceFilter'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NamespaceFilter
          -> Data.ProtoLens.Encoding.Bytes.Parser NamespaceFilter
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
                                       "include_deleted"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"includeDeleted") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NamespaceFilter"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"includeDeleted") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData NamespaceFilter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NamespaceFilter'_unknownFields x__)
             (Control.DeepSeq.deepseq (_NamespaceFilter'includeDeleted x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.name' @:: Lens' NamespaceInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.state' @:: Lens' NamespaceInfo Proto.Temporal.Api.Enums.V1.Namespace.NamespaceState@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.description' @:: Lens' NamespaceInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.ownerEmail' @:: Lens' NamespaceInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.data'' @:: Lens' NamespaceInfo (Data.Map.Map Data.Text.Text Data.Text.Text)@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.id' @:: Lens' NamespaceInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.capabilities' @:: Lens' NamespaceInfo NamespaceInfo'Capabilities@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.maybe'capabilities' @:: Lens' NamespaceInfo (Prelude.Maybe NamespaceInfo'Capabilities)@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.limits' @:: Lens' NamespaceInfo NamespaceInfo'Limits@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.maybe'limits' @:: Lens' NamespaceInfo (Prelude.Maybe NamespaceInfo'Limits)@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.supportsSchedules' @:: Lens' NamespaceInfo Prelude.Bool@ -}
data NamespaceInfo
  = NamespaceInfo'_constructor {_NamespaceInfo'name :: !Data.Text.Text,
                                _NamespaceInfo'state :: !Proto.Temporal.Api.Enums.V1.Namespace.NamespaceState,
                                _NamespaceInfo'description :: !Data.Text.Text,
                                _NamespaceInfo'ownerEmail :: !Data.Text.Text,
                                _NamespaceInfo'data' :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                                _NamespaceInfo'id :: !Data.Text.Text,
                                _NamespaceInfo'capabilities :: !(Prelude.Maybe NamespaceInfo'Capabilities),
                                _NamespaceInfo'limits :: !(Prelude.Maybe NamespaceInfo'Limits),
                                _NamespaceInfo'supportsSchedules :: !Prelude.Bool,
                                _NamespaceInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NamespaceInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NamespaceInfo "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'name (\ x__ y__ -> x__ {_NamespaceInfo'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo "state" Proto.Temporal.Api.Enums.V1.Namespace.NamespaceState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'state
           (\ x__ y__ -> x__ {_NamespaceInfo'state = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo "description" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'description
           (\ x__ y__ -> x__ {_NamespaceInfo'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo "ownerEmail" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'ownerEmail
           (\ x__ y__ -> x__ {_NamespaceInfo'ownerEmail = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo "data'" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'data'
           (\ x__ y__ -> x__ {_NamespaceInfo'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'id (\ x__ y__ -> x__ {_NamespaceInfo'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo "capabilities" NamespaceInfo'Capabilities where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'capabilities
           (\ x__ y__ -> x__ {_NamespaceInfo'capabilities = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NamespaceInfo "maybe'capabilities" (Prelude.Maybe NamespaceInfo'Capabilities) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'capabilities
           (\ x__ y__ -> x__ {_NamespaceInfo'capabilities = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo "limits" NamespaceInfo'Limits where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'limits
           (\ x__ y__ -> x__ {_NamespaceInfo'limits = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NamespaceInfo "maybe'limits" (Prelude.Maybe NamespaceInfo'Limits) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'limits
           (\ x__ y__ -> x__ {_NamespaceInfo'limits = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo "supportsSchedules" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'supportsSchedules
           (\ x__ y__ -> x__ {_NamespaceInfo'supportsSchedules = y__}))
        Prelude.id
instance Data.ProtoLens.Message NamespaceInfo where
  messageName _
    = Data.Text.pack "temporal.api.namespace.v1.NamespaceInfo"
  packedMessageDescriptor _
    = "\n\
      \\rNamespaceInfo\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2;\n\
      \\ENQstate\CAN\STX \SOH(\SO2%.temporal.api.enums.v1.NamespaceStateR\ENQstate\DC2 \n\
      \\vdescription\CAN\ETX \SOH(\tR\vdescription\DC2\US\n\
      \\vowner_email\CAN\EOT \SOH(\tR\n\
      \ownerEmail\DC2F\n\
      \\EOTdata\CAN\ENQ \ETX(\v22.temporal.api.namespace.v1.NamespaceInfo.DataEntryR\EOTdata\DC2\SO\n\
      \\STXid\CAN\ACK \SOH(\tR\STXid\DC2Y\n\
      \\fcapabilities\CAN\a \SOH(\v25.temporal.api.namespace.v1.NamespaceInfo.CapabilitiesR\fcapabilities\DC2G\n\
      \\ACKlimits\CAN\b \SOH(\v2/.temporal.api.namespace.v1.NamespaceInfo.LimitsR\ACKlimits\DC2-\n\
      \\DC2supports_schedules\CANd \SOH(\bR\DC1supportsSchedules\SUB7\n\
      \\tDataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH\SUB\243\a\n\
      \\fCapabilities\DC20\n\
      \\DC4eager_workflow_start\CAN\SOH \SOH(\bR\DC2eagerWorkflowStart\DC2\US\n\
      \\vsync_update\CAN\STX \SOH(\bR\n\
      \syncUpdate\DC2!\n\
      \\fasync_update\CAN\ETX \SOH(\bR\vasyncUpdate\DC2+\n\
      \\DC1worker_heartbeats\CAN\EOT \SOH(\bR\DLEworkerHeartbeats\DC2K\n\
      \\"reported_problems_search_attribute\CAN\ENQ \SOH(\bR\USreportedProblemsSearchAttribute\DC2%\n\
      \\SOworkflow_pause\CAN\ACK \SOH(\bR\rworkflowPause\DC23\n\
      \\NAKstandalone_activities\CAN\a \SOH(\bR\DC4standaloneActivities\DC2F\n\
      \ worker_poll_complete_on_shutdown\CAN\b \SOH(\bR\FSworkerPollCompleteOnShutdown\DC2-\n\
      \\DC2poller_autoscaling\CAN\t \SOH(\bR\DC1pollerAutoscaling\DC2'\n\
      \\SIworker_commands\CAN\n\
      \ \SOH(\bR\SOworkerCommands\DC2<\n\
      \\SUBstandalone_nexus_operation\CAN\v \SOH(\bR\CANstandaloneNexusOperation\DC2:\n\
      \\EMworkflow_update_callbacks\CAN\f \SOH(\bR\ETBworkflowUpdateCallbacks\DC2C\n\
      \\RSpoller_autoscaling_auto_enroll\CAN\r \SOH(\bR\ESCpollerAutoscalingAutoEnroll\DC2M\n\
      \#workflow_task_completion_pagination\CAN\SO \SOH(\bR workflowTaskCompletionPagination\DC2E\n\
      \\USstandalone_activity_start_delay\CAN\SI \SOH(\bR\FSstandaloneActivityStartDelay\DC2O\n\
      \$standalone_activity_batch_operations\CAN\DLE \SOH(\bR!standaloneActivityBatchOperations\DC2Q\n\
      \%standalone_activity_operator_commands\CAN\DC1 \SOH(\bR\"standaloneActivityOperatorCommands\SUB\199\SOH\n\
      \\ACKLimits\DC21\n\
      \\NAKblob_size_limit_error\CAN\SOH \SOH(\ETXR\DC2blobSizeLimitError\DC21\n\
      \\NAKmemo_size_limit_error\CAN\STX \SOH(\ETXR\DC2memoSizeLimitError\DC2W\n\
      \)workflow_task_completion_size_limit_error\CAN\ETX \SOH(\ETXR$workflowTaskCompletionSizeLimitError"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Namespace.NamespaceState)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"state")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"description")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo
        ownerEmail__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner_email"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"ownerEmail")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NamespaceInfo'DataEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"data'")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo
        capabilities__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "capabilities"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NamespaceInfo'Capabilities)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'capabilities")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo
        limits__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "limits"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NamespaceInfo'Limits)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'limits")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo
        supportsSchedules__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "supports_schedules"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"supportsSchedules")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, state__field_descriptor),
           (Data.ProtoLens.Tag 3, description__field_descriptor),
           (Data.ProtoLens.Tag 4, ownerEmail__field_descriptor),
           (Data.ProtoLens.Tag 5, data'__field_descriptor),
           (Data.ProtoLens.Tag 6, id__field_descriptor),
           (Data.ProtoLens.Tag 7, capabilities__field_descriptor),
           (Data.ProtoLens.Tag 8, limits__field_descriptor),
           (Data.ProtoLens.Tag 100, supportsSchedules__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NamespaceInfo'_unknownFields
        (\ x__ y__ -> x__ {_NamespaceInfo'_unknownFields = y__})
  defMessage
    = NamespaceInfo'_constructor
        {_NamespaceInfo'name = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'state = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'description = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'ownerEmail = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'data' = Data.Map.empty,
         _NamespaceInfo'id = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'capabilities = Prelude.Nothing,
         _NamespaceInfo'limits = Prelude.Nothing,
         _NamespaceInfo'supportsSchedules = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NamespaceInfo -> Data.ProtoLens.Encoding.Bytes.Parser NamespaceInfo
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "state"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"state") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "owner_email"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ownerEmail") y x)
                        42
                          -> do !(entry :: NamespaceInfo'DataEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                         (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                             Data.ProtoLens.Encoding.Bytes.isolate
                                                                               (Prelude.fromIntegral
                                                                                  len)
                                                                               Data.ProtoLens.parseMessage)
                                                                         "data"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"data'")
                                        (\ !t -> Data.Map.insert key value t) x))
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "capabilities"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"capabilities") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "limits"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"limits") y x)
                        800
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "supports_schedules"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"supportsSchedules") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NamespaceInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"state") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"description") _x
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
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"ownerEmail") _x
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
                         (Data.Monoid.mconcat
                            (Prelude.map
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
                                          Data.ProtoLens.encodeMessage
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"value")
                                                (Prelude.snd _v)
                                                (Data.ProtoLens.defMessage ::
                                                   NamespaceInfo'DataEntry)))))
                               (Data.Map.toList
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x))))
                         ((Data.Monoid.<>)
                            (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
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
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'capabilities") _x
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
                                         (Data.ProtoLens.Field.field @"maybe'limits") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"supportsSchedules") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 800)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (\ b -> if b then 1 else 0) _v))
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData NamespaceInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NamespaceInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NamespaceInfo'name x__)
                (Control.DeepSeq.deepseq
                   (_NamespaceInfo'state x__)
                   (Control.DeepSeq.deepseq
                      (_NamespaceInfo'description x__)
                      (Control.DeepSeq.deepseq
                         (_NamespaceInfo'ownerEmail x__)
                         (Control.DeepSeq.deepseq
                            (_NamespaceInfo'data' x__)
                            (Control.DeepSeq.deepseq
                               (_NamespaceInfo'id x__)
                               (Control.DeepSeq.deepseq
                                  (_NamespaceInfo'capabilities x__)
                                  (Control.DeepSeq.deepseq
                                     (_NamespaceInfo'limits x__)
                                     (Control.DeepSeq.deepseq
                                        (_NamespaceInfo'supportsSchedules x__) ())))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.eagerWorkflowStart' @:: Lens' NamespaceInfo'Capabilities Prelude.Bool@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.syncUpdate' @:: Lens' NamespaceInfo'Capabilities Prelude.Bool@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.asyncUpdate' @:: Lens' NamespaceInfo'Capabilities Prelude.Bool@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.workerHeartbeats' @:: Lens' NamespaceInfo'Capabilities Prelude.Bool@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.reportedProblemsSearchAttribute' @:: Lens' NamespaceInfo'Capabilities Prelude.Bool@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.workflowPause' @:: Lens' NamespaceInfo'Capabilities Prelude.Bool@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.standaloneActivities' @:: Lens' NamespaceInfo'Capabilities Prelude.Bool@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.workerPollCompleteOnShutdown' @:: Lens' NamespaceInfo'Capabilities Prelude.Bool@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.pollerAutoscaling' @:: Lens' NamespaceInfo'Capabilities Prelude.Bool@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.workerCommands' @:: Lens' NamespaceInfo'Capabilities Prelude.Bool@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.standaloneNexusOperation' @:: Lens' NamespaceInfo'Capabilities Prelude.Bool@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.workflowUpdateCallbacks' @:: Lens' NamespaceInfo'Capabilities Prelude.Bool@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.pollerAutoscalingAutoEnroll' @:: Lens' NamespaceInfo'Capabilities Prelude.Bool@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.workflowTaskCompletionPagination' @:: Lens' NamespaceInfo'Capabilities Prelude.Bool@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.standaloneActivityStartDelay' @:: Lens' NamespaceInfo'Capabilities Prelude.Bool@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.standaloneActivityBatchOperations' @:: Lens' NamespaceInfo'Capabilities Prelude.Bool@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.standaloneActivityOperatorCommands' @:: Lens' NamespaceInfo'Capabilities Prelude.Bool@ -}
data NamespaceInfo'Capabilities
  = NamespaceInfo'Capabilities'_constructor {_NamespaceInfo'Capabilities'eagerWorkflowStart :: !Prelude.Bool,
                                             _NamespaceInfo'Capabilities'syncUpdate :: !Prelude.Bool,
                                             _NamespaceInfo'Capabilities'asyncUpdate :: !Prelude.Bool,
                                             _NamespaceInfo'Capabilities'workerHeartbeats :: !Prelude.Bool,
                                             _NamespaceInfo'Capabilities'reportedProblemsSearchAttribute :: !Prelude.Bool,
                                             _NamespaceInfo'Capabilities'workflowPause :: !Prelude.Bool,
                                             _NamespaceInfo'Capabilities'standaloneActivities :: !Prelude.Bool,
                                             _NamespaceInfo'Capabilities'workerPollCompleteOnShutdown :: !Prelude.Bool,
                                             _NamespaceInfo'Capabilities'pollerAutoscaling :: !Prelude.Bool,
                                             _NamespaceInfo'Capabilities'workerCommands :: !Prelude.Bool,
                                             _NamespaceInfo'Capabilities'standaloneNexusOperation :: !Prelude.Bool,
                                             _NamespaceInfo'Capabilities'workflowUpdateCallbacks :: !Prelude.Bool,
                                             _NamespaceInfo'Capabilities'pollerAutoscalingAutoEnroll :: !Prelude.Bool,
                                             _NamespaceInfo'Capabilities'workflowTaskCompletionPagination :: !Prelude.Bool,
                                             _NamespaceInfo'Capabilities'standaloneActivityStartDelay :: !Prelude.Bool,
                                             _NamespaceInfo'Capabilities'standaloneActivityBatchOperations :: !Prelude.Bool,
                                             _NamespaceInfo'Capabilities'standaloneActivityOperatorCommands :: !Prelude.Bool,
                                             _NamespaceInfo'Capabilities'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NamespaceInfo'Capabilities where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NamespaceInfo'Capabilities "eagerWorkflowStart" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'Capabilities'eagerWorkflowStart
           (\ x__ y__
              -> x__ {_NamespaceInfo'Capabilities'eagerWorkflowStart = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo'Capabilities "syncUpdate" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'Capabilities'syncUpdate
           (\ x__ y__ -> x__ {_NamespaceInfo'Capabilities'syncUpdate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo'Capabilities "asyncUpdate" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'Capabilities'asyncUpdate
           (\ x__ y__ -> x__ {_NamespaceInfo'Capabilities'asyncUpdate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo'Capabilities "workerHeartbeats" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'Capabilities'workerHeartbeats
           (\ x__ y__
              -> x__ {_NamespaceInfo'Capabilities'workerHeartbeats = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo'Capabilities "reportedProblemsSearchAttribute" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'Capabilities'reportedProblemsSearchAttribute
           (\ x__ y__
              -> x__
                   {_NamespaceInfo'Capabilities'reportedProblemsSearchAttribute = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo'Capabilities "workflowPause" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'Capabilities'workflowPause
           (\ x__ y__
              -> x__ {_NamespaceInfo'Capabilities'workflowPause = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo'Capabilities "standaloneActivities" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'Capabilities'standaloneActivities
           (\ x__ y__
              -> x__ {_NamespaceInfo'Capabilities'standaloneActivities = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo'Capabilities "workerPollCompleteOnShutdown" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'Capabilities'workerPollCompleteOnShutdown
           (\ x__ y__
              -> x__
                   {_NamespaceInfo'Capabilities'workerPollCompleteOnShutdown = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo'Capabilities "pollerAutoscaling" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'Capabilities'pollerAutoscaling
           (\ x__ y__
              -> x__ {_NamespaceInfo'Capabilities'pollerAutoscaling = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo'Capabilities "workerCommands" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'Capabilities'workerCommands
           (\ x__ y__
              -> x__ {_NamespaceInfo'Capabilities'workerCommands = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo'Capabilities "standaloneNexusOperation" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'Capabilities'standaloneNexusOperation
           (\ x__ y__
              -> x__
                   {_NamespaceInfo'Capabilities'standaloneNexusOperation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo'Capabilities "workflowUpdateCallbacks" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'Capabilities'workflowUpdateCallbacks
           (\ x__ y__
              -> x__
                   {_NamespaceInfo'Capabilities'workflowUpdateCallbacks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo'Capabilities "pollerAutoscalingAutoEnroll" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'Capabilities'pollerAutoscalingAutoEnroll
           (\ x__ y__
              -> x__
                   {_NamespaceInfo'Capabilities'pollerAutoscalingAutoEnroll = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo'Capabilities "workflowTaskCompletionPagination" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'Capabilities'workflowTaskCompletionPagination
           (\ x__ y__
              -> x__
                   {_NamespaceInfo'Capabilities'workflowTaskCompletionPagination = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo'Capabilities "standaloneActivityStartDelay" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'Capabilities'standaloneActivityStartDelay
           (\ x__ y__
              -> x__
                   {_NamespaceInfo'Capabilities'standaloneActivityStartDelay = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo'Capabilities "standaloneActivityBatchOperations" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'Capabilities'standaloneActivityBatchOperations
           (\ x__ y__
              -> x__
                   {_NamespaceInfo'Capabilities'standaloneActivityBatchOperations = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo'Capabilities "standaloneActivityOperatorCommands" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'Capabilities'standaloneActivityOperatorCommands
           (\ x__ y__
              -> x__
                   {_NamespaceInfo'Capabilities'standaloneActivityOperatorCommands = y__}))
        Prelude.id
instance Data.ProtoLens.Message NamespaceInfo'Capabilities where
  messageName _
    = Data.Text.pack
        "temporal.api.namespace.v1.NamespaceInfo.Capabilities"
  packedMessageDescriptor _
    = "\n\
      \\fCapabilities\DC20\n\
      \\DC4eager_workflow_start\CAN\SOH \SOH(\bR\DC2eagerWorkflowStart\DC2\US\n\
      \\vsync_update\CAN\STX \SOH(\bR\n\
      \syncUpdate\DC2!\n\
      \\fasync_update\CAN\ETX \SOH(\bR\vasyncUpdate\DC2+\n\
      \\DC1worker_heartbeats\CAN\EOT \SOH(\bR\DLEworkerHeartbeats\DC2K\n\
      \\"reported_problems_search_attribute\CAN\ENQ \SOH(\bR\USreportedProblemsSearchAttribute\DC2%\n\
      \\SOworkflow_pause\CAN\ACK \SOH(\bR\rworkflowPause\DC23\n\
      \\NAKstandalone_activities\CAN\a \SOH(\bR\DC4standaloneActivities\DC2F\n\
      \ worker_poll_complete_on_shutdown\CAN\b \SOH(\bR\FSworkerPollCompleteOnShutdown\DC2-\n\
      \\DC2poller_autoscaling\CAN\t \SOH(\bR\DC1pollerAutoscaling\DC2'\n\
      \\SIworker_commands\CAN\n\
      \ \SOH(\bR\SOworkerCommands\DC2<\n\
      \\SUBstandalone_nexus_operation\CAN\v \SOH(\bR\CANstandaloneNexusOperation\DC2:\n\
      \\EMworkflow_update_callbacks\CAN\f \SOH(\bR\ETBworkflowUpdateCallbacks\DC2C\n\
      \\RSpoller_autoscaling_auto_enroll\CAN\r \SOH(\bR\ESCpollerAutoscalingAutoEnroll\DC2M\n\
      \#workflow_task_completion_pagination\CAN\SO \SOH(\bR workflowTaskCompletionPagination\DC2E\n\
      \\USstandalone_activity_start_delay\CAN\SI \SOH(\bR\FSstandaloneActivityStartDelay\DC2O\n\
      \$standalone_activity_batch_operations\CAN\DLE \SOH(\bR!standaloneActivityBatchOperations\DC2Q\n\
      \%standalone_activity_operator_commands\CAN\DC1 \SOH(\bR\"standaloneActivityOperatorCommands"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        eagerWorkflowStart__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "eager_workflow_start"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"eagerWorkflowStart")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo'Capabilities
        syncUpdate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sync_update"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"syncUpdate")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo'Capabilities
        asyncUpdate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "async_update"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"asyncUpdate")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo'Capabilities
        workerHeartbeats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "worker_heartbeats"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workerHeartbeats")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo'Capabilities
        reportedProblemsSearchAttribute__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reported_problems_search_attribute"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"reportedProblemsSearchAttribute")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo'Capabilities
        workflowPause__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_pause"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workflowPause")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo'Capabilities
        standaloneActivities__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "standalone_activities"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"standaloneActivities")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo'Capabilities
        workerPollCompleteOnShutdown__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "worker_poll_complete_on_shutdown"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workerPollCompleteOnShutdown")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo'Capabilities
        pollerAutoscaling__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "poller_autoscaling"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"pollerAutoscaling")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo'Capabilities
        workerCommands__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "worker_commands"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workerCommands")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo'Capabilities
        standaloneNexusOperation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "standalone_nexus_operation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"standaloneNexusOperation")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo'Capabilities
        workflowUpdateCallbacks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_update_callbacks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workflowUpdateCallbacks")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo'Capabilities
        pollerAutoscalingAutoEnroll__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "poller_autoscaling_auto_enroll"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"pollerAutoscalingAutoEnroll")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo'Capabilities
        workflowTaskCompletionPagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_task_completion_pagination"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field
                    @"workflowTaskCompletionPagination")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo'Capabilities
        standaloneActivityStartDelay__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "standalone_activity_start_delay"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"standaloneActivityStartDelay")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo'Capabilities
        standaloneActivityBatchOperations__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "standalone_activity_batch_operations"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field
                    @"standaloneActivityBatchOperations")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo'Capabilities
        standaloneActivityOperatorCommands__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "standalone_activity_operator_commands"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field
                    @"standaloneActivityOperatorCommands")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo'Capabilities
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, eagerWorkflowStart__field_descriptor),
           (Data.ProtoLens.Tag 2, syncUpdate__field_descriptor),
           (Data.ProtoLens.Tag 3, asyncUpdate__field_descriptor),
           (Data.ProtoLens.Tag 4, workerHeartbeats__field_descriptor),
           (Data.ProtoLens.Tag 5, 
            reportedProblemsSearchAttribute__field_descriptor),
           (Data.ProtoLens.Tag 6, workflowPause__field_descriptor),
           (Data.ProtoLens.Tag 7, standaloneActivities__field_descriptor),
           (Data.ProtoLens.Tag 8, 
            workerPollCompleteOnShutdown__field_descriptor),
           (Data.ProtoLens.Tag 9, pollerAutoscaling__field_descriptor),
           (Data.ProtoLens.Tag 10, workerCommands__field_descriptor),
           (Data.ProtoLens.Tag 11, 
            standaloneNexusOperation__field_descriptor),
           (Data.ProtoLens.Tag 12, workflowUpdateCallbacks__field_descriptor),
           (Data.ProtoLens.Tag 13, 
            pollerAutoscalingAutoEnroll__field_descriptor),
           (Data.ProtoLens.Tag 14, 
            workflowTaskCompletionPagination__field_descriptor),
           (Data.ProtoLens.Tag 15, 
            standaloneActivityStartDelay__field_descriptor),
           (Data.ProtoLens.Tag 16, 
            standaloneActivityBatchOperations__field_descriptor),
           (Data.ProtoLens.Tag 17, 
            standaloneActivityOperatorCommands__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NamespaceInfo'Capabilities'_unknownFields
        (\ x__ y__
           -> x__ {_NamespaceInfo'Capabilities'_unknownFields = y__})
  defMessage
    = NamespaceInfo'Capabilities'_constructor
        {_NamespaceInfo'Capabilities'eagerWorkflowStart = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'Capabilities'syncUpdate = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'Capabilities'asyncUpdate = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'Capabilities'workerHeartbeats = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'Capabilities'reportedProblemsSearchAttribute = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'Capabilities'workflowPause = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'Capabilities'standaloneActivities = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'Capabilities'workerPollCompleteOnShutdown = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'Capabilities'pollerAutoscaling = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'Capabilities'workerCommands = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'Capabilities'standaloneNexusOperation = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'Capabilities'workflowUpdateCallbacks = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'Capabilities'pollerAutoscalingAutoEnroll = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'Capabilities'workflowTaskCompletionPagination = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'Capabilities'standaloneActivityStartDelay = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'Capabilities'standaloneActivityBatchOperations = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'Capabilities'standaloneActivityOperatorCommands = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'Capabilities'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NamespaceInfo'Capabilities
          -> Data.ProtoLens.Encoding.Bytes.Parser NamespaceInfo'Capabilities
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
                                       "eager_workflow_start"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"eagerWorkflowStart") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "sync_update"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"syncUpdate") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "async_update"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"asyncUpdate") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "worker_heartbeats"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workerHeartbeats") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "reported_problems_search_attribute"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"reportedProblemsSearchAttribute")
                                     y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "workflow_pause"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowPause") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "standalone_activities"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"standaloneActivities") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "worker_poll_complete_on_shutdown"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workerPollCompleteOnShutdown") y
                                     x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "poller_autoscaling"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"pollerAutoscaling") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "worker_commands"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workerCommands") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "standalone_nexus_operation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"standaloneNexusOperation") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "workflow_update_callbacks"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowUpdateCallbacks") y x)
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "poller_autoscaling_auto_enroll"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"pollerAutoscalingAutoEnroll") y
                                     x)
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "workflow_task_completion_pagination"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"workflowTaskCompletionPagination")
                                     y x)
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "standalone_activity_start_delay"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"standaloneActivityStartDelay") y
                                     x)
                        128
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "standalone_activity_batch_operations"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"standaloneActivityBatchOperations")
                                     y x)
                        136
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "standalone_activity_operator_commands"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"standaloneActivityOperatorCommands")
                                     y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Capabilities"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"eagerWorkflowStart") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"syncUpdate") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"asyncUpdate") _x
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
                               (Data.ProtoLens.Field.field @"workerHeartbeats") _x
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
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"reportedProblemsSearchAttribute") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (\ b -> if b then 1 else 0) _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"workflowPause") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (\ b -> if b then 1 else 0) _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"standaloneActivities") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (\ b -> if b then 1 else 0) _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field
                                              @"workerPollCompleteOnShutdown")
                                           _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (\ b -> if b then 1 else 0) _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"pollerAutoscaling") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (\ b -> if b then 1 else 0) _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"workerCommands") _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                 ((Prelude..)
                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (\ b -> if b then 1 else 0) _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field
                                                       @"standaloneNexusOperation")
                                                    _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                    ((Prelude..)
                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (\ b -> if b then 1 else 0) _v))
                                           ((Data.Monoid.<>)
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"workflowUpdateCallbacks")
                                                       _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                       ((Prelude..)
                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (\ b -> if b then 1 else 0) _v))
                                              ((Data.Monoid.<>)
                                                 (let
                                                    _v
                                                      = Lens.Family2.view
                                                          (Data.ProtoLens.Field.field
                                                             @"pollerAutoscalingAutoEnroll")
                                                          _x
                                                  in
                                                    if (Prelude.==)
                                                         _v Data.ProtoLens.fieldDefault then
                                                        Data.Monoid.mempty
                                                    else
                                                        (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             104)
                                                          ((Prelude..)
                                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (\ b -> if b then 1 else 0) _v))
                                                 ((Data.Monoid.<>)
                                                    (let
                                                       _v
                                                         = Lens.Family2.view
                                                             (Data.ProtoLens.Field.field
                                                                @"workflowTaskCompletionPagination")
                                                             _x
                                                     in
                                                       if (Prelude.==)
                                                            _v Data.ProtoLens.fieldDefault then
                                                           Data.Monoid.mempty
                                                       else
                                                           (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                112)
                                                             ((Prelude..)
                                                                Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (\ b -> if b then 1 else 0) _v))
                                                    ((Data.Monoid.<>)
                                                       (let
                                                          _v
                                                            = Lens.Family2.view
                                                                (Data.ProtoLens.Field.field
                                                                   @"standaloneActivityStartDelay")
                                                                _x
                                                        in
                                                          if (Prelude.==)
                                                               _v Data.ProtoLens.fieldDefault then
                                                              Data.Monoid.mempty
                                                          else
                                                              (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   120)
                                                                ((Prelude..)
                                                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (\ b -> if b then 1 else 0) _v))
                                                       ((Data.Monoid.<>)
                                                          (let
                                                             _v
                                                               = Lens.Family2.view
                                                                   (Data.ProtoLens.Field.field
                                                                      @"standaloneActivityBatchOperations")
                                                                   _x
                                                           in
                                                             if (Prelude.==)
                                                                  _v
                                                                  Data.ProtoLens.fieldDefault then
                                                                 Data.Monoid.mempty
                                                             else
                                                                 (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      128)
                                                                   ((Prelude..)
                                                                      Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      (\ b -> if b then 1 else 0)
                                                                      _v))
                                                          ((Data.Monoid.<>)
                                                             (let
                                                                _v
                                                                  = Lens.Family2.view
                                                                      (Data.ProtoLens.Field.field
                                                                         @"standaloneActivityOperatorCommands")
                                                                      _x
                                                              in
                                                                if (Prelude.==)
                                                                     _v
                                                                     Data.ProtoLens.fieldDefault then
                                                                    Data.Monoid.mempty
                                                                else
                                                                    (Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         136)
                                                                      ((Prelude..)
                                                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         (\ b -> if b then 1 else 0)
                                                                         _v))
                                                             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                (Lens.Family2.view
                                                                   Data.ProtoLens.unknownFields
                                                                   _x))))))))))))))))))
instance Control.DeepSeq.NFData NamespaceInfo'Capabilities where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NamespaceInfo'Capabilities'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NamespaceInfo'Capabilities'eagerWorkflowStart x__)
                (Control.DeepSeq.deepseq
                   (_NamespaceInfo'Capabilities'syncUpdate x__)
                   (Control.DeepSeq.deepseq
                      (_NamespaceInfo'Capabilities'asyncUpdate x__)
                      (Control.DeepSeq.deepseq
                         (_NamespaceInfo'Capabilities'workerHeartbeats x__)
                         (Control.DeepSeq.deepseq
                            (_NamespaceInfo'Capabilities'reportedProblemsSearchAttribute x__)
                            (Control.DeepSeq.deepseq
                               (_NamespaceInfo'Capabilities'workflowPause x__)
                               (Control.DeepSeq.deepseq
                                  (_NamespaceInfo'Capabilities'standaloneActivities x__)
                                  (Control.DeepSeq.deepseq
                                     (_NamespaceInfo'Capabilities'workerPollCompleteOnShutdown x__)
                                     (Control.DeepSeq.deepseq
                                        (_NamespaceInfo'Capabilities'pollerAutoscaling x__)
                                        (Control.DeepSeq.deepseq
                                           (_NamespaceInfo'Capabilities'workerCommands x__)
                                           (Control.DeepSeq.deepseq
                                              (_NamespaceInfo'Capabilities'standaloneNexusOperation
                                                 x__)
                                              (Control.DeepSeq.deepseq
                                                 (_NamespaceInfo'Capabilities'workflowUpdateCallbacks
                                                    x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_NamespaceInfo'Capabilities'pollerAutoscalingAutoEnroll
                                                       x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_NamespaceInfo'Capabilities'workflowTaskCompletionPagination
                                                          x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_NamespaceInfo'Capabilities'standaloneActivityStartDelay
                                                             x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_NamespaceInfo'Capabilities'standaloneActivityBatchOperations
                                                                x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_NamespaceInfo'Capabilities'standaloneActivityOperatorCommands
                                                                   x__)
                                                                ())))))))))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.key' @:: Lens' NamespaceInfo'DataEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.value' @:: Lens' NamespaceInfo'DataEntry Data.Text.Text@ -}
data NamespaceInfo'DataEntry
  = NamespaceInfo'DataEntry'_constructor {_NamespaceInfo'DataEntry'key :: !Data.Text.Text,
                                          _NamespaceInfo'DataEntry'value :: !Data.Text.Text,
                                          _NamespaceInfo'DataEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NamespaceInfo'DataEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NamespaceInfo'DataEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'DataEntry'key
           (\ x__ y__ -> x__ {_NamespaceInfo'DataEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo'DataEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'DataEntry'value
           (\ x__ y__ -> x__ {_NamespaceInfo'DataEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message NamespaceInfo'DataEntry where
  messageName _
    = Data.Text.pack
        "temporal.api.namespace.v1.NamespaceInfo.DataEntry"
  packedMessageDescriptor _
    = "\n\
      \\tDataEntry\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor NamespaceInfo'DataEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo'DataEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NamespaceInfo'DataEntry'_unknownFields
        (\ x__ y__ -> x__ {_NamespaceInfo'DataEntry'_unknownFields = y__})
  defMessage
    = NamespaceInfo'DataEntry'_constructor
        {_NamespaceInfo'DataEntry'key = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'DataEntry'value = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'DataEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NamespaceInfo'DataEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser NamespaceInfo'DataEntry
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
          (do loop Data.ProtoLens.defMessage) "DataEntry"
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
instance Control.DeepSeq.NFData NamespaceInfo'DataEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NamespaceInfo'DataEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NamespaceInfo'DataEntry'key x__)
                (Control.DeepSeq.deepseq (_NamespaceInfo'DataEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.blobSizeLimitError' @:: Lens' NamespaceInfo'Limits Data.Int.Int64@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.memoSizeLimitError' @:: Lens' NamespaceInfo'Limits Data.Int.Int64@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.workflowTaskCompletionSizeLimitError' @:: Lens' NamespaceInfo'Limits Data.Int.Int64@ -}
data NamespaceInfo'Limits
  = NamespaceInfo'Limits'_constructor {_NamespaceInfo'Limits'blobSizeLimitError :: !Data.Int.Int64,
                                       _NamespaceInfo'Limits'memoSizeLimitError :: !Data.Int.Int64,
                                       _NamespaceInfo'Limits'workflowTaskCompletionSizeLimitError :: !Data.Int.Int64,
                                       _NamespaceInfo'Limits'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NamespaceInfo'Limits where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NamespaceInfo'Limits "blobSizeLimitError" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'Limits'blobSizeLimitError
           (\ x__ y__
              -> x__ {_NamespaceInfo'Limits'blobSizeLimitError = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo'Limits "memoSizeLimitError" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'Limits'memoSizeLimitError
           (\ x__ y__
              -> x__ {_NamespaceInfo'Limits'memoSizeLimitError = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespaceInfo'Limits "workflowTaskCompletionSizeLimitError" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespaceInfo'Limits'workflowTaskCompletionSizeLimitError
           (\ x__ y__
              -> x__
                   {_NamespaceInfo'Limits'workflowTaskCompletionSizeLimitError = y__}))
        Prelude.id
instance Data.ProtoLens.Message NamespaceInfo'Limits where
  messageName _
    = Data.Text.pack "temporal.api.namespace.v1.NamespaceInfo.Limits"
  packedMessageDescriptor _
    = "\n\
      \\ACKLimits\DC21\n\
      \\NAKblob_size_limit_error\CAN\SOH \SOH(\ETXR\DC2blobSizeLimitError\DC21\n\
      \\NAKmemo_size_limit_error\CAN\STX \SOH(\ETXR\DC2memoSizeLimitError\DC2W\n\
      \)workflow_task_completion_size_limit_error\CAN\ETX \SOH(\ETXR$workflowTaskCompletionSizeLimitError"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        blobSizeLimitError__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "blob_size_limit_error"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"blobSizeLimitError")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo'Limits
        memoSizeLimitError__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "memo_size_limit_error"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"memoSizeLimitError")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo'Limits
        workflowTaskCompletionSizeLimitError__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_task_completion_size_limit_error"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field
                    @"workflowTaskCompletionSizeLimitError")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo'Limits
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, blobSizeLimitError__field_descriptor),
           (Data.ProtoLens.Tag 2, memoSizeLimitError__field_descriptor),
           (Data.ProtoLens.Tag 3, 
            workflowTaskCompletionSizeLimitError__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NamespaceInfo'Limits'_unknownFields
        (\ x__ y__ -> x__ {_NamespaceInfo'Limits'_unknownFields = y__})
  defMessage
    = NamespaceInfo'Limits'_constructor
        {_NamespaceInfo'Limits'blobSizeLimitError = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'Limits'memoSizeLimitError = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'Limits'workflowTaskCompletionSizeLimitError = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'Limits'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NamespaceInfo'Limits
          -> Data.ProtoLens.Encoding.Bytes.Parser NamespaceInfo'Limits
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
                                       "blob_size_limit_error"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"blobSizeLimitError") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "memo_size_limit_error"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"memoSizeLimitError") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "workflow_task_completion_size_limit_error"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"workflowTaskCompletionSizeLimitError")
                                     y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Limits"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"blobSizeLimitError") _x
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
                         (Data.ProtoLens.Field.field @"memoSizeLimitError") _x
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
                            (Data.ProtoLens.Field.field
                               @"workflowTaskCompletionSizeLimitError")
                            _x
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
instance Control.DeepSeq.NFData NamespaceInfo'Limits where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NamespaceInfo'Limits'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NamespaceInfo'Limits'blobSizeLimitError x__)
                (Control.DeepSeq.deepseq
                   (_NamespaceInfo'Limits'memoSizeLimitError x__)
                   (Control.DeepSeq.deepseq
                      (_NamespaceInfo'Limits'workflowTaskCompletionSizeLimitError x__)
                      ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.description' @:: Lens' UpdateNamespaceInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.ownerEmail' @:: Lens' UpdateNamespaceInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.data'' @:: Lens' UpdateNamespaceInfo (Data.Map.Map Data.Text.Text Data.Text.Text)@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.state' @:: Lens' UpdateNamespaceInfo Proto.Temporal.Api.Enums.V1.Namespace.NamespaceState@ -}
data UpdateNamespaceInfo
  = UpdateNamespaceInfo'_constructor {_UpdateNamespaceInfo'description :: !Data.Text.Text,
                                      _UpdateNamespaceInfo'ownerEmail :: !Data.Text.Text,
                                      _UpdateNamespaceInfo'data' :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                                      _UpdateNamespaceInfo'state :: !Proto.Temporal.Api.Enums.V1.Namespace.NamespaceState,
                                      _UpdateNamespaceInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpdateNamespaceInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UpdateNamespaceInfo "description" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateNamespaceInfo'description
           (\ x__ y__ -> x__ {_UpdateNamespaceInfo'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateNamespaceInfo "ownerEmail" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateNamespaceInfo'ownerEmail
           (\ x__ y__ -> x__ {_UpdateNamespaceInfo'ownerEmail = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateNamespaceInfo "data'" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateNamespaceInfo'data'
           (\ x__ y__ -> x__ {_UpdateNamespaceInfo'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateNamespaceInfo "state" Proto.Temporal.Api.Enums.V1.Namespace.NamespaceState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateNamespaceInfo'state
           (\ x__ y__ -> x__ {_UpdateNamespaceInfo'state = y__}))
        Prelude.id
instance Data.ProtoLens.Message UpdateNamespaceInfo where
  messageName _
    = Data.Text.pack "temporal.api.namespace.v1.UpdateNamespaceInfo"
  packedMessageDescriptor _
    = "\n\
      \\DC3UpdateNamespaceInfo\DC2 \n\
      \\vdescription\CAN\SOH \SOH(\tR\vdescription\DC2\US\n\
      \\vowner_email\CAN\STX \SOH(\tR\n\
      \ownerEmail\DC2L\n\
      \\EOTdata\CAN\ETX \ETX(\v28.temporal.api.namespace.v1.UpdateNamespaceInfo.DataEntryR\EOTdata\DC2;\n\
      \\ENQstate\CAN\EOT \SOH(\SO2%.temporal.api.enums.v1.NamespaceStateR\ENQstate\SUB7\n\
      \\tDataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"description")) ::
              Data.ProtoLens.FieldDescriptor UpdateNamespaceInfo
        ownerEmail__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner_email"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"ownerEmail")) ::
              Data.ProtoLens.FieldDescriptor UpdateNamespaceInfo
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UpdateNamespaceInfo'DataEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"data'")) ::
              Data.ProtoLens.FieldDescriptor UpdateNamespaceInfo
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Namespace.NamespaceState)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"state")) ::
              Data.ProtoLens.FieldDescriptor UpdateNamespaceInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, description__field_descriptor),
           (Data.ProtoLens.Tag 2, ownerEmail__field_descriptor),
           (Data.ProtoLens.Tag 3, data'__field_descriptor),
           (Data.ProtoLens.Tag 4, state__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpdateNamespaceInfo'_unknownFields
        (\ x__ y__ -> x__ {_UpdateNamespaceInfo'_unknownFields = y__})
  defMessage
    = UpdateNamespaceInfo'_constructor
        {_UpdateNamespaceInfo'description = Data.ProtoLens.fieldDefault,
         _UpdateNamespaceInfo'ownerEmail = Data.ProtoLens.fieldDefault,
         _UpdateNamespaceInfo'data' = Data.Map.empty,
         _UpdateNamespaceInfo'state = Data.ProtoLens.fieldDefault,
         _UpdateNamespaceInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UpdateNamespaceInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser UpdateNamespaceInfo
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
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "owner_email"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ownerEmail") y x)
                        26
                          -> do !(entry :: UpdateNamespaceInfo'DataEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                               (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                                                     (Prelude.fromIntegral
                                                                                        len)
                                                                                     Data.ProtoLens.parseMessage)
                                                                               "data"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"data'")
                                        (\ !t -> Data.Map.insert key value t) x))
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
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
          (do loop Data.ProtoLens.defMessage) "UpdateNamespaceInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"description") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"ownerEmail") _x
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
                   (Data.Monoid.mconcat
                      (Prelude.map
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                                             UpdateNamespaceInfo'DataEntry)))))
                         (Data.Map.toList
                            (Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x))))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"state") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                  Prelude.fromEnum _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData UpdateNamespaceInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UpdateNamespaceInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UpdateNamespaceInfo'description x__)
                (Control.DeepSeq.deepseq
                   (_UpdateNamespaceInfo'ownerEmail x__)
                   (Control.DeepSeq.deepseq
                      (_UpdateNamespaceInfo'data' x__)
                      (Control.DeepSeq.deepseq (_UpdateNamespaceInfo'state x__) ()))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.key' @:: Lens' UpdateNamespaceInfo'DataEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Namespace.V1.Message_Fields.value' @:: Lens' UpdateNamespaceInfo'DataEntry Data.Text.Text@ -}
data UpdateNamespaceInfo'DataEntry
  = UpdateNamespaceInfo'DataEntry'_constructor {_UpdateNamespaceInfo'DataEntry'key :: !Data.Text.Text,
                                                _UpdateNamespaceInfo'DataEntry'value :: !Data.Text.Text,
                                                _UpdateNamespaceInfo'DataEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpdateNamespaceInfo'DataEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UpdateNamespaceInfo'DataEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateNamespaceInfo'DataEntry'key
           (\ x__ y__ -> x__ {_UpdateNamespaceInfo'DataEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateNamespaceInfo'DataEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateNamespaceInfo'DataEntry'value
           (\ x__ y__ -> x__ {_UpdateNamespaceInfo'DataEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message UpdateNamespaceInfo'DataEntry where
  messageName _
    = Data.Text.pack
        "temporal.api.namespace.v1.UpdateNamespaceInfo.DataEntry"
  packedMessageDescriptor _
    = "\n\
      \\tDataEntry\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor UpdateNamespaceInfo'DataEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor UpdateNamespaceInfo'DataEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpdateNamespaceInfo'DataEntry'_unknownFields
        (\ x__ y__
           -> x__ {_UpdateNamespaceInfo'DataEntry'_unknownFields = y__})
  defMessage
    = UpdateNamespaceInfo'DataEntry'_constructor
        {_UpdateNamespaceInfo'DataEntry'key = Data.ProtoLens.fieldDefault,
         _UpdateNamespaceInfo'DataEntry'value = Data.ProtoLens.fieldDefault,
         _UpdateNamespaceInfo'DataEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UpdateNamespaceInfo'DataEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser UpdateNamespaceInfo'DataEntry
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
          (do loop Data.ProtoLens.defMessage) "DataEntry"
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
instance Control.DeepSeq.NFData UpdateNamespaceInfo'DataEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UpdateNamespaceInfo'DataEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UpdateNamespaceInfo'DataEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_UpdateNamespaceInfo'DataEntry'value x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \'temporal/api/namespace/v1/message.proto\DC2\EMtemporal.api.namespace.v1\SUB\RSgoogle/protobuf/duration.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB%temporal/api/enums/v1/namespace.proto\"\199\r\n\
    \\rNamespaceInfo\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2;\n\
    \\ENQstate\CAN\STX \SOH(\SO2%.temporal.api.enums.v1.NamespaceStateR\ENQstate\DC2 \n\
    \\vdescription\CAN\ETX \SOH(\tR\vdescription\DC2\US\n\
    \\vowner_email\CAN\EOT \SOH(\tR\n\
    \ownerEmail\DC2F\n\
    \\EOTdata\CAN\ENQ \ETX(\v22.temporal.api.namespace.v1.NamespaceInfo.DataEntryR\EOTdata\DC2\SO\n\
    \\STXid\CAN\ACK \SOH(\tR\STXid\DC2Y\n\
    \\fcapabilities\CAN\a \SOH(\v25.temporal.api.namespace.v1.NamespaceInfo.CapabilitiesR\fcapabilities\DC2G\n\
    \\ACKlimits\CAN\b \SOH(\v2/.temporal.api.namespace.v1.NamespaceInfo.LimitsR\ACKlimits\DC2-\n\
    \\DC2supports_schedules\CANd \SOH(\bR\DC1supportsSchedules\SUB7\n\
    \\tDataEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH\SUB\243\a\n\
    \\fCapabilities\DC20\n\
    \\DC4eager_workflow_start\CAN\SOH \SOH(\bR\DC2eagerWorkflowStart\DC2\US\n\
    \\vsync_update\CAN\STX \SOH(\bR\n\
    \syncUpdate\DC2!\n\
    \\fasync_update\CAN\ETX \SOH(\bR\vasyncUpdate\DC2+\n\
    \\DC1worker_heartbeats\CAN\EOT \SOH(\bR\DLEworkerHeartbeats\DC2K\n\
    \\"reported_problems_search_attribute\CAN\ENQ \SOH(\bR\USreportedProblemsSearchAttribute\DC2%\n\
    \\SOworkflow_pause\CAN\ACK \SOH(\bR\rworkflowPause\DC23\n\
    \\NAKstandalone_activities\CAN\a \SOH(\bR\DC4standaloneActivities\DC2F\n\
    \ worker_poll_complete_on_shutdown\CAN\b \SOH(\bR\FSworkerPollCompleteOnShutdown\DC2-\n\
    \\DC2poller_autoscaling\CAN\t \SOH(\bR\DC1pollerAutoscaling\DC2'\n\
    \\SIworker_commands\CAN\n\
    \ \SOH(\bR\SOworkerCommands\DC2<\n\
    \\SUBstandalone_nexus_operation\CAN\v \SOH(\bR\CANstandaloneNexusOperation\DC2:\n\
    \\EMworkflow_update_callbacks\CAN\f \SOH(\bR\ETBworkflowUpdateCallbacks\DC2C\n\
    \\RSpoller_autoscaling_auto_enroll\CAN\r \SOH(\bR\ESCpollerAutoscalingAutoEnroll\DC2M\n\
    \#workflow_task_completion_pagination\CAN\SO \SOH(\bR workflowTaskCompletionPagination\DC2E\n\
    \\USstandalone_activity_start_delay\CAN\SI \SOH(\bR\FSstandaloneActivityStartDelay\DC2O\n\
    \$standalone_activity_batch_operations\CAN\DLE \SOH(\bR!standaloneActivityBatchOperations\DC2Q\n\
    \%standalone_activity_operator_commands\CAN\DC1 \SOH(\bR\"standaloneActivityOperatorCommands\SUB\199\SOH\n\
    \\ACKLimits\DC21\n\
    \\NAKblob_size_limit_error\CAN\SOH \SOH(\ETXR\DC2blobSizeLimitError\DC21\n\
    \\NAKmemo_size_limit_error\CAN\STX \SOH(\ETXR\DC2memoSizeLimitError\DC2W\n\
    \)workflow_task_completion_size_limit_error\CAN\ETX \SOH(\ETXR$workflowTaskCompletionSizeLimitError\"\207\ENQ\n\
    \\SINamespaceConfig\DC2b\n\
    \ workflow_execution_retention_ttl\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\GSworkflowExecutionRetentionTtl\DC2I\n\
    \\fbad_binaries\CAN\STX \SOH(\v2&.temporal.api.namespace.v1.BadBinariesR\vbadBinaries\DC2Z\n\
    \\SYNhistory_archival_state\CAN\ETX \SOH(\SO2$.temporal.api.enums.v1.ArchivalStateR\DC4historyArchivalState\DC20\n\
    \\DC4history_archival_uri\CAN\EOT \SOH(\tR\DC2historyArchivalUri\DC2`\n\
    \\EMvisibility_archival_state\CAN\ENQ \SOH(\SO2$.temporal.api.enums.v1.ArchivalStateR\ETBvisibilityArchivalState\DC26\n\
    \\ETBvisibility_archival_uri\CAN\ACK \SOH(\tR\NAKvisibilityArchivalUri\DC2\147\SOH\n\
    \\UScustom_search_attribute_aliases\CAN\a \ETX(\v2L.temporal.api.namespace.v1.NamespaceConfig.CustomSearchAttributeAliasesEntryR\FScustomSearchAttributeAliases\SUBO\n\
    \!CustomSearchAttributeAliasesEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH\"\198\SOH\n\
    \\vBadBinaries\DC2P\n\
    \\bbinaries\CAN\SOH \ETX(\v24.temporal.api.namespace.v1.BadBinaries.BinariesEntryR\bbinaries\SUBe\n\
    \\rBinariesEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2>\n\
    \\ENQvalue\CAN\STX \SOH(\v2(.temporal.api.namespace.v1.BadBinaryInfoR\ENQvalue:\STX8\SOH\"\128\SOH\n\
    \\rBadBinaryInfo\DC2\SYN\n\
    \\ACKreason\CAN\SOH \SOH(\tR\ACKreason\DC2\SUB\n\
    \\boperator\CAN\STX \SOH(\tR\boperator\DC2;\n\
    \\vcreate_time\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \createTime\"\156\STX\n\
    \\DC3UpdateNamespaceInfo\DC2 \n\
    \\vdescription\CAN\SOH \SOH(\tR\vdescription\DC2\US\n\
    \\vowner_email\CAN\STX \SOH(\tR\n\
    \ownerEmail\DC2L\n\
    \\EOTdata\CAN\ETX \ETX(\v28.temporal.api.namespace.v1.UpdateNamespaceInfo.DataEntryR\EOTdata\DC2;\n\
    \\ENQstate\CAN\EOT \SOH(\SO2%.temporal.api.enums.v1.NamespaceStateR\ENQstate\SUB7\n\
    \\tDataEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH\":\n\
    \\SINamespaceFilter\DC2'\n\
    \\SIinclude_deleted\CAN\SOH \SOH(\bR\SOincludeDeletedB\152\SOH\n\
    \\FSio.temporal.api.namespace.v1B\fMessageProtoP\SOHZ)go.temporal.io/api/namespace/v1;namespace\170\STX\ESCTemporalio.Api.Namespace.V1\234\STX\RSTemporalio::Api::Namespace::V1J\149\&1\n\
    \\a\DC2\ENQ\NUL\NUL\133\SOH\SOH\n\
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
    \\SOH\b\DC2\ETX\a\NUL-\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\a\NUL-\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL7\n\
    \\t\n\
    \\STX\b-\DC2\ETX\b\NUL7\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL8\n\
    \\t\n\
    \\STX\b%\DC2\ETX\t\NUL8\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\v\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\f\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\SO\NUL/\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\DC1\NULX\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC1\b\NAK\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC2\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DC2\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC2\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC2\DC2\DC3\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC3\EOT3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\DC3\EOT(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC3).\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC312\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DC4\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\DC4\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DC4\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DC4\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\NAK\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\NAK\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\NAK\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\NAK\EM\SUB\n\
    \:\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\ETB\EOT!\SUB- A key-value map for any customized purpose.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\ETB\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\ETB\CAN\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\ETB\US \n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\CAN\EOT\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX\CAN\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\CAN\v\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\CAN\DLE\DC1\n\
    \7\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX\SUB\EOT\"\SUB* All capabilities the namespace supports.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETX\SUB\EOT\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\SUB\DC1\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\SUB !\n\
    \f\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOT\GS\EOTD\ENQ\SUBX Namespace capability details. Should contain what features are enabled in a namespace.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETX\GS\f\CAN\n\
    \E\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETX\US\b&\SUB6 True if the namespace supports eager workflow start.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ENQ\DC2\ETX\US\b\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETX\US\r!\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETX\US$%\n\
    \;\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\ETX!\b\GS\SUB, True if the namespace supports sync update\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ENQ\DC2\ETX!\b\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\ETX!\r\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\ETX!\ESC\FS\n\
    \<\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\STX\DC2\ETX#\b\RS\SUB- True if the namespace supports async update\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ENQ\DC2\ETX#\b\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\SOH\DC2\ETX#\r\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ETX\DC2\ETX#\FS\GS\n\
    \A\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\ETX\DC2\ETX%\b#\SUB2 True if the namespace supports worker heartbeats\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\ENQ\DC2\ETX%\b\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\SOH\DC2\ETX%\r\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\ETX\DC2\ETX%!\"\n\
    \R\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\EOT\DC2\ETX'\b4\SUBC True if the namespace supports reported problems search attribute\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\ENQ\DC2\ETX'\b\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\SOH\DC2\ETX'\r/\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\ETX\DC2\ETX'23\n\
    \A\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\ENQ\DC2\ETX)\b \SUB2 True if the namespace supports pausing workflows\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ENQ\ENQ\DC2\ETX)\b\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ENQ\SOH\DC2\ETX)\r\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ENQ\ETX\DC2\ETX)\RS\US\n\
    \E\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\ACK\DC2\ETX+\b'\SUB6 True if the namespace supports standalone activities\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ACK\ENQ\DC2\ETX+\b\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ACK\SOH\DC2\ETX+\r\"\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ACK\ETX\DC2\ETX+%&\n\
    \\189\ETX\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\a\DC2\ETX1\b2\SUB\173\ETX True if the namespace supports server-side completion of outstanding worker polls on shutdown.\n\
    \ When enabled, the server will complete polls for workers that send WorkerInstanceKey in their\n\
    \ poll requests and call ShutdownWorker with the same WorkerInstanceKey. The poll will return\n\
    \ an empty response. When this flag is true, workers should allow polls to return gracefully\n\
    \ rather than terminating any open polls on shutdown.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\a\ENQ\DC2\ETX1\b\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\a\SOH\DC2\ETX1\r-\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\a\ETX\DC2\ETX101\n\
    \B\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\b\DC2\ETX3\b$\SUB3 True if the namespace supports poller autoscaling\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\b\ENQ\DC2\ETX3\b\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\b\SOH\DC2\ETX3\r\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\b\ETX\DC2\ETX3\"#\n\
    \t\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\t\DC2\ETX5\b\"\SUBe True if the namespace supports worker commands (server-to-worker communication via control queues).\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\t\ENQ\DC2\ETX5\b\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\t\SOH\DC2\ETX5\r\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\t\ETX\DC2\ETX5\US!\n\
    \L\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\n\
    \\DC2\ETX7\b-\SUB= True if the namespace supports standalone Nexus operations.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\n\
    \\ENQ\DC2\ETX7\b\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\n\
    \\SOH\DC2\ETX7\r'\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\n\
    \\ETX\DC2\ETX7*,\n\
    \W\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\v\DC2\ETX9\b,\SUBH True if the namespace supports attaching callbacks on workflow updates\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\v\ENQ\DC2\ETX9\b\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\v\SOH\DC2\ETX9\r&\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\v\ETX\DC2\ETX9)+\n\
    \t\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\f\DC2\ETX;\b1\SUBe When true, workers should use poller autoscaling by default unless explicitly configured otherwise.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\f\ENQ\DC2\ETX;\b\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\f\SOH\DC2\ETX;\r+\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\f\ETX\DC2\ETX;.0\n\
    \e\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\r\DC2\ETX=\b6\SUBV True if the namespace supports pagination of `RespondWorkflowTaskCompleted` request.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\r\ENQ\DC2\ETX=\b\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\r\SOH\DC2\ETX=\r0\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\r\ETX\DC2\ETX=35\n\
    \V\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SO\DC2\ETX?\b2\SUBG True if the namespace supports start delay for standalone activities.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SO\ENQ\DC2\ETX?\b\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SO\SOH\DC2\ETX?\r,\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SO\ETX\DC2\ETX?/1\n\
    \[\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SI\DC2\ETXA\b7\SUBL True if the namespace supports batch operations for standalone activities.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SI\ENQ\DC2\ETXA\b\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SI\SOH\DC2\ETXA\r1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SI\ETX\DC2\ETXA46\n\
    \V\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\DLE\DC2\ETXC\b8\SUBG True if the namespace supports standalone activity operator commands.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\DLE\ENQ\DC2\ETXC\b\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\DLE\SOH\DC2\ETXC\r2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\DLE\ETX\DC2\ETXC57\n\
    \*\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETXG\EOT\SYN\SUB\GS Namespace configured limits\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\ETXG\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETXG\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETXG\DC4\NAK\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\STX\DC2\EOTH\EOTS\ENQ\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\STX\SOH\DC2\ETXH\f\DC2\n\
    \\234\SOH\n\
    \\ACK\EOT\NUL\ETX\STX\STX\NUL\DC2\ETXL\b(\SUB\218\SOH Maximum size in bytes for payload fields in workflow history events\n\
    \ (e.g., workflow/activity inputs and results, failure details, signal payloads).\n\
    \ When exceeded, the server will reject the operation with an error.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ENQ\DC2\ETXL\b\r\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\SOH\DC2\ETXL\SO#\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ETX\DC2\ETXL&'\n\
    \I\n\
    \\ACK\EOT\NUL\ETX\STX\STX\SOH\DC2\ETXN\b(\SUB: Maximum total memo size in bytes per workflow execution.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ENQ\DC2\ETXN\b\r\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\SOH\DC2\ETXN\SO#\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ETX\DC2\ETXN&'\n\
    \\222\SOH\n\
    \\ACK\EOT\NUL\ETX\STX\STX\STX\DC2\ETXR\b<\SUB\206\SOH Maximum total size in bytes of a single RespondWorkflowTaskCompleted request.\n\
    \ Requests exceeding this fail the workflow task with\n\
    \ WORKFLOW_TASK_FAILED_CAUSE_REQUEST_TOO_LARGE. 0 means no explicit limit.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ENQ\DC2\ETXR\b\r\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\SOH\DC2\ETXR\SO7\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ETX\DC2\ETXR:;\n\
    \\174\SOH\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETXW\EOT\"\SUB\160\SOH Whether scheduled workflows are supported on this namespace. This is only needed\n\
    \ temporarily while the feature is experimental, so we can give it a high tag.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\ETXW\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETXW\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETXW\RS!\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOTZ\NULe\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXZ\b\ETB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX[\EOTB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX[\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX[\GS=\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX[@A\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\\\EOT!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX\\\EOT\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\\\DLE\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\\\US \n\
    \e\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX^\EOTC\SUBX If unspecified (ARCHIVAL_STATE_UNSPECIFIED) then default server configuration is used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX^\EOT'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX^(>\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX^AB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX_\EOT$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX_\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX_\v\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX_\"#\n\
    \e\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETXa\EOTF\SUBX If unspecified (ARCHIVAL_STATE_UNSPECIFIED) then default server configuration is used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\ETXa\EOT'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETXa(A\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETXaDE\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETXb\EOT'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETXb\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETXb\v\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETXb%&\n\
    \,\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETXd\EOT<\SUB\US Map from field name to alias.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\ETXd\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETXd\CAN7\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETXd:;\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOTg\NULi\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXg\b\DC3\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXh\EOT,\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETXh\EOT\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXh\US'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXh*+\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOTk\NULo\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXk\b\NAK\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXl\EOT\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXl\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXl\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXl\DC4\NAK\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXm\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETXm\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXm\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXm\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETXn\EOT.\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\ETXn\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXn\RS)\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXn,-\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOTq\NUL~\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXq\b\ESC\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXr\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXr\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXr\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXr\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXs\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXs\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXs\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXs\EM\SUB\n\
    \\148\SOH\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXw\EOT!\SUB\134\SOH A key-value map for any customized purpose.\n\
    \ If data already exists on the namespace,\n\
    \ this will merge with the existing key values.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\ETXw\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXw\CAN\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXw\US \n\
    \\134\STX\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETX}\EOT3\SUB\248\SOH New namespace state, server will reject if transition is not allowed.\n\
    \ Allowed transitions are:\n\
    \  Registered -> [ Deleted | Deprecated | Handover ]\n\
    \  Handover -> [ Registered ]\n\
    \ Default is NAMESPACE_STATE_UNSPECIFIED which is do not change state.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ACK\DC2\ETX}\EOT(\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETX}).\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETX}12\n\
    \\f\n\
    \\STX\EOT\ENQ\DC2\ACK\128\SOH\NUL\133\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\128\SOH\b\ETB\n\
    \\156\STX\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\132\SOH\EOT\GS\SUB\141\STX By default namespaces in NAMESPACE_STATE_DELETED state are not included.\n\
    \ Setting include_deleted to true will include deleted namespaces.\n\
    \ Note: Namespace is in NAMESPACE_STATE_DELETED state when it was deleted from the system but associated data is not deleted yet.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\EOT\132\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\132\SOH\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\132\SOH\ESC\FSb\ACKproto3"