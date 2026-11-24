{- This file was auto-generated from nexusannotations/v1/options.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Nexusannotations.V1.Options (
        OperationOptions(), ServiceOptions()
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
     
         * 'Proto.Nexusannotations.V1.Options_Fields.name' @:: Lens' OperationOptions Data.Text.Text@
         * 'Proto.Nexusannotations.V1.Options_Fields.tags' @:: Lens' OperationOptions [Data.Text.Text]@
         * 'Proto.Nexusannotations.V1.Options_Fields.vec'tags' @:: Lens' OperationOptions (Data.Vector.Vector Data.Text.Text)@ -}
data OperationOptions
  = OperationOptions'_constructor {_OperationOptions'name :: !Data.Text.Text,
                                   _OperationOptions'tags :: !(Data.Vector.Vector Data.Text.Text),
                                   _OperationOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OperationOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField OperationOptions "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OperationOptions'name
           (\ x__ y__ -> x__ {_OperationOptions'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OperationOptions "tags" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OperationOptions'tags
           (\ x__ y__ -> x__ {_OperationOptions'tags = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField OperationOptions "vec'tags" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OperationOptions'tags
           (\ x__ y__ -> x__ {_OperationOptions'tags = y__}))
        Prelude.id
instance Data.ProtoLens.Message OperationOptions where
  messageName _
    = Data.Text.pack "nexusannotations.v1.OperationOptions"
  packedMessageDescriptor _
    = "\n\
      \\DLEOperationOptions\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DC2\n\
      \\EOTtags\CAN\STX \ETX(\tR\EOTtags"
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
              Data.ProtoLens.FieldDescriptor OperationOptions
        tags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"tags")) ::
              Data.ProtoLens.FieldDescriptor OperationOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, tags__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OperationOptions'_unknownFields
        (\ x__ y__ -> x__ {_OperationOptions'_unknownFields = y__})
  defMessage
    = OperationOptions'_constructor
        {_OperationOptions'name = Data.ProtoLens.fieldDefault,
         _OperationOptions'tags = Data.Vector.Generic.empty,
         _OperationOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OperationOptions
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser OperationOptions
        loop x mutable'tags
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'tags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'tags)
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
                              (Data.ProtoLens.Field.field @"vec'tags") frozen'tags x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'tags
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getText
                                              (Prelude.fromIntegral len))
                                        "tags"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'tags y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'tags
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'tags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'tags)
          "OperationOptions"
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
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.Text.Encoding.encodeUtf8 _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'tags") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData OperationOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OperationOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_OperationOptions'name x__)
                (Control.DeepSeq.deepseq (_OperationOptions'tags x__) ()))
{- | Fields :
     
         * 'Proto.Nexusannotations.V1.Options_Fields.name' @:: Lens' ServiceOptions Data.Text.Text@
         * 'Proto.Nexusannotations.V1.Options_Fields.tags' @:: Lens' ServiceOptions [Data.Text.Text]@
         * 'Proto.Nexusannotations.V1.Options_Fields.vec'tags' @:: Lens' ServiceOptions (Data.Vector.Vector Data.Text.Text)@ -}
data ServiceOptions
  = ServiceOptions'_constructor {_ServiceOptions'name :: !Data.Text.Text,
                                 _ServiceOptions'tags :: !(Data.Vector.Vector Data.Text.Text),
                                 _ServiceOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ServiceOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ServiceOptions "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServiceOptions'name
           (\ x__ y__ -> x__ {_ServiceOptions'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ServiceOptions "tags" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServiceOptions'tags
           (\ x__ y__ -> x__ {_ServiceOptions'tags = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ServiceOptions "vec'tags" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServiceOptions'tags
           (\ x__ y__ -> x__ {_ServiceOptions'tags = y__}))
        Prelude.id
instance Data.ProtoLens.Message ServiceOptions where
  messageName _ = Data.Text.pack "nexusannotations.v1.ServiceOptions"
  packedMessageDescriptor _
    = "\n\
      \\SOServiceOptions\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DC2\n\
      \\EOTtags\CAN\STX \ETX(\tR\EOTtags"
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
              Data.ProtoLens.FieldDescriptor ServiceOptions
        tags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"tags")) ::
              Data.ProtoLens.FieldDescriptor ServiceOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, tags__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ServiceOptions'_unknownFields
        (\ x__ y__ -> x__ {_ServiceOptions'_unknownFields = y__})
  defMessage
    = ServiceOptions'_constructor
        {_ServiceOptions'name = Data.ProtoLens.fieldDefault,
         _ServiceOptions'tags = Data.Vector.Generic.empty,
         _ServiceOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ServiceOptions
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser ServiceOptions
        loop x mutable'tags
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'tags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'tags)
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
                              (Data.ProtoLens.Field.field @"vec'tags") frozen'tags x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'tags
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getText
                                              (Prelude.fromIntegral len))
                                        "tags"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'tags y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'tags
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'tags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'tags)
          "ServiceOptions"
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
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.Text.Encoding.encodeUtf8 _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'tags") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ServiceOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ServiceOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ServiceOptions'name x__)
                (Control.DeepSeq.deepseq (_ServiceOptions'tags x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \!nexusannotations/v1/options.proto\DC2\DC3nexusannotations.v1\SUB google/protobuf/descriptor.proto\":\n\
    \\DLEOperationOptions\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DC2\n\
    \\EOTtags\CAN\STX \ETX(\tR\EOTtags\"8\n\
    \\SOServiceOptions\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DC2\n\
    \\EOTtags\CAN\STX \ETX(\tR\EOTtags:b\n\
    \\aservice\CAN\169@ \SOH(\v2#.nexusannotations.v1.ServiceOptions\DC2\US.google.protobuf.ServiceOptionsR\aservice\136\SOH\SOH:g\n\
    \\toperation\CAN\170@ \SOH(\v2%.nexusannotations.v1.OperationOptions\DC2\RS.google.protobuf.MethodOptionsR\toperation\136\SOH\SOHBEZCgithub.com/nexus-rpc/nexus-proto-annotations/go/nexusannotations/v1J\184\ACK\n\
    \\ACK\DC2\EOT\NUL\NUL\FS\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\FS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NULZ\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ACK\NULZ\n\
    \\t\n\
    \\SOH\a\DC2\EOT\b\NUL\n\
    \\SOH\n\
    \\t\n\
    \\STX\a\NUL\DC2\ETX\t\STX)\n\
    \\n\
    \\n\
    \\ETX\a\NUL\STX\DC2\ETX\b\a%\n\
    \\n\
    \\n\
    \\ETX\a\NUL\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ACK\DC2\ETX\t\v\EM\n\
    \\n\
    \\n\
    \\ETX\a\NUL\SOH\DC2\ETX\t\SUB!\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ETX\DC2\ETX\t$(\n\
    \\t\n\
    \\SOH\a\DC2\EOT\f\NUL\SO\SOH\n\
    \\t\n\
    \\STX\a\SOH\DC2\ETX\r\STX-\n\
    \\n\
    \\n\
    \\ETX\a\SOH\STX\DC2\ETX\f\a$\n\
    \\n\
    \\n\
    \\ETX\a\SOH\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\n\
    \\n\
    \\ETX\a\SOH\ACK\DC2\ETX\r\v\ESC\n\
    \\n\
    \\n\
    \\ETX\a\SOH\SOH\DC2\ETX\r\FS%\n\
    \\n\
    \\n\
    \\ETX\a\SOH\ETX\DC2\ETX\r(,\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\DLE\NUL\NAK\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DLE\b\CAN\n\
    \D\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC2\STX\DC2\SUB7 Nexus operation name (defaults to proto method name).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DC2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC2\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC2\DLE\DC1\n\
    \j\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC4\STX\ESC\SUB] Tags to attach to the operation. Used by code generators to include and exclude operations.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\DC4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC4\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC4\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\ETB\NUL\FS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\ETB\b\SYN\n\
    \H\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\EM\STX\DC2\SUB; Nexus service name (defaults to proto service full name).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\EM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\EM\t\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\EM\DLE\DC1\n\
    \f\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\ESC\STX\ESC\SUBY Tags to attach to the service. Used by code generators to include and exclude services.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\ESC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\ESC\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\ESC\EM\SUBb\ACKproto3"