{- This file was auto-generated from temporal/api/common/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Common.V1.Message (
        ActivityType(), Callback(), Callback'Variant(..), _Callback'Nexus',
        _Callback'Internal', _Callback'NexusHandler', Callback'Internal(),
        Callback'Nexus(), Callback'Nexus'HeaderEntry(),
        Callback'NexusHandler(), DataBlob(), Execution(),
        FastForwardConfig(), Header(), Header'FieldsEntry(), Link(),
        Link'Variant(..), _Link'WorkflowEvent', _Link'BatchJob',
        _Link'Activity', _Link'NexusOperation', _Link'Workflow',
        _Link'Callback', Link'Activity(), Link'BatchJob(), Link'Callback(),
        Link'NexusOperation(), Link'Workflow(), Link'WorkflowEvent(),
        Link'WorkflowEvent'Reference(..), _Link'WorkflowEvent'EventRef,
        _Link'WorkflowEvent'RequestIdRef,
        Link'WorkflowEvent'EventReference(),
        Link'WorkflowEvent'RequestIdReference(), Memo(),
        Memo'FieldsEntry(), MeteringMetadata(), OnConflictOptions(),
        Payload(), Payload'ExternalPayloadDetails(),
        Payload'MetadataEntry(), Payloads(), Principal(), Priority(),
        ResetOptions(), ResetOptions'Target(..),
        _ResetOptions'FirstWorkflowTask, _ResetOptions'LastWorkflowTask,
        _ResetOptions'WorkflowTaskId, _ResetOptions'BuildId,
        ResolvedPrincipal(), RetryPolicy(), SearchAttributes(),
        SearchAttributes'IndexedFieldsEntry(), TimeSkippingConfig(),
        TimeSkippingFastForwardInfo(), TimeSkippingInfo(),
        TimeSkippingStatePropagation(), WorkerSelector(),
        WorkerSelector'Selector(..), _WorkerSelector'WorkerInstanceKey,
        WorkerVersionCapabilities(), WorkerVersionStamp(),
        WorkflowExecution(), WorkflowType()
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
import qualified Proto.Google.Protobuf.Empty
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Temporal.Api.Enums.V1.Common
import qualified Proto.Temporal.Api.Enums.V1.EventType
import qualified Proto.Temporal.Api.Enums.V1.Reset
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.name' @:: Lens' ActivityType Data.Text.Text@ -}
data ActivityType
  = ActivityType'_constructor {_ActivityType'name :: !Data.Text.Text,
                               _ActivityType'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ActivityType where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ActivityType "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityType'name (\ x__ y__ -> x__ {_ActivityType'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message ActivityType where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.ActivityType"
  packedMessageDescriptor _
    = "\n\
      \\fActivityType\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname"
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
              Data.ProtoLens.FieldDescriptor ActivityType
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ActivityType'_unknownFields
        (\ x__ y__ -> x__ {_ActivityType'_unknownFields = y__})
  defMessage
    = ActivityType'_constructor
        {_ActivityType'name = Data.ProtoLens.fieldDefault,
         _ActivityType'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ActivityType -> Data.ProtoLens.Encoding.Bytes.Parser ActivityType
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ActivityType"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ActivityType where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ActivityType'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ActivityType'name x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.links' @:: Lens' Callback [Link]@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.vec'links' @:: Lens' Callback (Data.Vector.Vector Link)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'variant' @:: Lens' Callback (Prelude.Maybe Callback'Variant)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'nexus' @:: Lens' Callback (Prelude.Maybe Callback'Nexus)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.nexus' @:: Lens' Callback Callback'Nexus@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'internal' @:: Lens' Callback (Prelude.Maybe Callback'Internal)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.internal' @:: Lens' Callback Callback'Internal@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'nexusHandler' @:: Lens' Callback (Prelude.Maybe Callback'NexusHandler)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.nexusHandler' @:: Lens' Callback Callback'NexusHandler@ -}
data Callback
  = Callback'_constructor {_Callback'links :: !(Data.Vector.Vector Link),
                           _Callback'variant :: !(Prelude.Maybe Callback'Variant),
                           _Callback'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Callback where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Callback'Variant
  = Callback'Nexus' !Callback'Nexus |
    Callback'Internal' !Callback'Internal |
    Callback'NexusHandler' !Callback'NexusHandler
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Callback "links" [Link] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callback'links (\ x__ y__ -> x__ {_Callback'links = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Callback "vec'links" (Data.Vector.Vector Link) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callback'links (\ x__ y__ -> x__ {_Callback'links = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Callback "maybe'variant" (Prelude.Maybe Callback'Variant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callback'variant (\ x__ y__ -> x__ {_Callback'variant = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Callback "maybe'nexus" (Prelude.Maybe Callback'Nexus) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callback'variant (\ x__ y__ -> x__ {_Callback'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Callback'Nexus' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Callback'Nexus' y__))
instance Data.ProtoLens.Field.HasField Callback "nexus" Callback'Nexus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callback'variant (\ x__ y__ -> x__ {_Callback'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Callback'Nexus' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Callback'Nexus' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Callback "maybe'internal" (Prelude.Maybe Callback'Internal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callback'variant (\ x__ y__ -> x__ {_Callback'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Callback'Internal' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Callback'Internal' y__))
instance Data.ProtoLens.Field.HasField Callback "internal" Callback'Internal where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callback'variant (\ x__ y__ -> x__ {_Callback'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Callback'Internal' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Callback'Internal' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Callback "maybe'nexusHandler" (Prelude.Maybe Callback'NexusHandler) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callback'variant (\ x__ y__ -> x__ {_Callback'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Callback'NexusHandler' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Callback'NexusHandler' y__))
instance Data.ProtoLens.Field.HasField Callback "nexusHandler" Callback'NexusHandler where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callback'variant (\ x__ y__ -> x__ {_Callback'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Callback'NexusHandler' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Callback'NexusHandler' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Callback where
  messageName _ = Data.Text.pack "temporal.api.common.v1.Callback"
  packedMessageDescriptor _
    = "\n\
      \\bCallback\DC2>\n\
      \\ENQnexus\CAN\STX \SOH(\v2&.temporal.api.common.v1.Callback.NexusH\NULR\ENQnexus\DC2G\n\
      \\binternal\CAN\ETX \SOH(\v2).temporal.api.common.v1.Callback.InternalH\NULR\binternal\DC2T\n\
      \\rnexus_handler\CAN\EOT \SOH(\v2-.temporal.api.common.v1.Callback.NexusHandlerH\NULR\fnexusHandler\DC22\n\
      \\ENQlinks\CANd \ETX(\v2\FS.temporal.api.common.v1.LinkR\ENQlinks\SUB\160\SOH\n\
      \\ENQNexus\DC2\DLE\n\
      \\ETXurl\CAN\SOH \SOH(\tR\ETXurl\DC2J\n\
      \\ACKheader\CAN\STX \ETX(\v22.temporal.api.common.v1.Callback.Nexus.HeaderEntryR\ACKheader\SUB9\n\
      \\vHeaderEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH\SUB\RS\n\
      \\bInternal\DC2\DC2\n\
      \\EOTdata\CAN\SOH \SOH(\fR\EOTdata\SUB\182\SOH\n\
      \\fNexusHandler\DC2&\n\
      \\SItask_queue_name\CAN\SOH \SOH(\tR\rtaskQueueName\DC2\CAN\n\
      \\aservice\CAN\STX \SOH(\tR\aservice\DC2\FS\n\
      \\toperation\CAN\ETX \SOH(\tR\toperation\DC2F\n\
      \\SOsource_context\CAN\EOT \SOH(\v2\US.temporal.api.common.v1.PayloadR\rsourceContextB\t\n\
      \\avariantJ\EOT\b\SOH\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        links__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "links"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Link)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"links")) ::
              Data.ProtoLens.FieldDescriptor Callback
        nexus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nexus"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Callback'Nexus)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nexus")) ::
              Data.ProtoLens.FieldDescriptor Callback
        internal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "internal"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Callback'Internal)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'internal")) ::
              Data.ProtoLens.FieldDescriptor Callback
        nexusHandler__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nexus_handler"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Callback'NexusHandler)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nexusHandler")) ::
              Data.ProtoLens.FieldDescriptor Callback
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 100, links__field_descriptor),
           (Data.ProtoLens.Tag 2, nexus__field_descriptor),
           (Data.ProtoLens.Tag 3, internal__field_descriptor),
           (Data.ProtoLens.Tag 4, nexusHandler__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Callback'_unknownFields
        (\ x__ y__ -> x__ {_Callback'_unknownFields = y__})
  defMessage
    = Callback'_constructor
        {_Callback'links = Data.Vector.Generic.empty,
         _Callback'variant = Prelude.Nothing, _Callback'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Callback
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Link
             -> Data.ProtoLens.Encoding.Bytes.Parser Callback
        loop x mutable'links
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'links <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
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
                              (Data.ProtoLens.Field.field @"vec'links") frozen'links x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        802
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "links"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'links y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "nexus"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nexus") y x)
                                  mutable'links
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "internal"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"internal") y x)
                                  mutable'links
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "nexus_handler"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"nexusHandler") y x)
                                  mutable'links
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'links
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'links <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'links)
          "Callback"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 802)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'links") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'variant") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (Callback'Nexus' v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage v)
                   (Prelude.Just (Callback'Internal' v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage v)
                   (Prelude.Just (Callback'NexusHandler' v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Callback where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Callback'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Callback'links x__)
                (Control.DeepSeq.deepseq (_Callback'variant x__) ()))
instance Control.DeepSeq.NFData Callback'Variant where
  rnf (Callback'Nexus' x__) = Control.DeepSeq.rnf x__
  rnf (Callback'Internal' x__) = Control.DeepSeq.rnf x__
  rnf (Callback'NexusHandler' x__) = Control.DeepSeq.rnf x__
_Callback'Nexus' ::
  Data.ProtoLens.Prism.Prism' Callback'Variant Callback'Nexus
_Callback'Nexus'
  = Data.ProtoLens.Prism.prism'
      Callback'Nexus'
      (\ p__
         -> case p__ of
              (Callback'Nexus' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Callback'Internal' ::
  Data.ProtoLens.Prism.Prism' Callback'Variant Callback'Internal
_Callback'Internal'
  = Data.ProtoLens.Prism.prism'
      Callback'Internal'
      (\ p__
         -> case p__ of
              (Callback'Internal' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Callback'NexusHandler' ::
  Data.ProtoLens.Prism.Prism' Callback'Variant Callback'NexusHandler
_Callback'NexusHandler'
  = Data.ProtoLens.Prism.prism'
      Callback'NexusHandler'
      (\ p__
         -> case p__ of
              (Callback'NexusHandler' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.data'' @:: Lens' Callback'Internal Data.ByteString.ByteString@ -}
data Callback'Internal
  = Callback'Internal'_constructor {_Callback'Internal'data' :: !Data.ByteString.ByteString,
                                    _Callback'Internal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Callback'Internal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Callback'Internal "data'" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callback'Internal'data'
           (\ x__ y__ -> x__ {_Callback'Internal'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Message Callback'Internal where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.Callback.Internal"
  packedMessageDescriptor _
    = "\n\
      \\bInternal\DC2\DC2\n\
      \\EOTdata\CAN\SOH \SOH(\fR\EOTdata"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"data'")) ::
              Data.ProtoLens.FieldDescriptor Callback'Internal
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, data'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Callback'Internal'_unknownFields
        (\ x__ y__ -> x__ {_Callback'Internal'_unknownFields = y__})
  defMessage
    = Callback'Internal'_constructor
        {_Callback'Internal'data' = Data.ProtoLens.fieldDefault,
         _Callback'Internal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Callback'Internal
          -> Data.ProtoLens.Encoding.Bytes.Parser Callback'Internal
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "data"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Internal"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Callback'Internal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Callback'Internal'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Callback'Internal'data' x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.url' @:: Lens' Callback'Nexus Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.header' @:: Lens' Callback'Nexus (Data.Map.Map Data.Text.Text Data.Text.Text)@ -}
data Callback'Nexus
  = Callback'Nexus'_constructor {_Callback'Nexus'url :: !Data.Text.Text,
                                 _Callback'Nexus'header :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                                 _Callback'Nexus'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Callback'Nexus where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Callback'Nexus "url" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callback'Nexus'url (\ x__ y__ -> x__ {_Callback'Nexus'url = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Callback'Nexus "header" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callback'Nexus'header
           (\ x__ y__ -> x__ {_Callback'Nexus'header = y__}))
        Prelude.id
instance Data.ProtoLens.Message Callback'Nexus where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.Callback.Nexus"
  packedMessageDescriptor _
    = "\n\
      \\ENQNexus\DC2\DLE\n\
      \\ETXurl\CAN\SOH \SOH(\tR\ETXurl\DC2J\n\
      \\ACKheader\CAN\STX \ETX(\v22.temporal.api.common.v1.Callback.Nexus.HeaderEntryR\ACKheader\SUB9\n\
      \\vHeaderEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        url__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"url")) ::
              Data.ProtoLens.FieldDescriptor Callback'Nexus
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Callback'Nexus'HeaderEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"header")) ::
              Data.ProtoLens.FieldDescriptor Callback'Nexus
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, url__field_descriptor),
           (Data.ProtoLens.Tag 2, header__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Callback'Nexus'_unknownFields
        (\ x__ y__ -> x__ {_Callback'Nexus'_unknownFields = y__})
  defMessage
    = Callback'Nexus'_constructor
        {_Callback'Nexus'url = Data.ProtoLens.fieldDefault,
         _Callback'Nexus'header = Data.Map.empty,
         _Callback'Nexus'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Callback'Nexus
          -> Data.ProtoLens.Encoding.Bytes.Parser Callback'Nexus
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
                                       "url"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"url") y x)
                        18
                          -> do !(entry :: Callback'Nexus'HeaderEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                            (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                Data.ProtoLens.Encoding.Bytes.isolate
                                                                                  (Prelude.fromIntegral
                                                                                     len)
                                                                                  Data.ProtoLens.parseMessage)
                                                                            "header"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"header")
                                        (\ !t -> Data.Map.insert key value t) x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Nexus"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"url") _x
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
                                       (Data.ProtoLens.defMessage :: Callback'Nexus'HeaderEntry)))))
                      (Data.Map.toList
                         (Lens.Family2.view (Data.ProtoLens.Field.field @"header") _x))))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Callback'Nexus where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Callback'Nexus'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Callback'Nexus'url x__)
                (Control.DeepSeq.deepseq (_Callback'Nexus'header x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.key' @:: Lens' Callback'Nexus'HeaderEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.value' @:: Lens' Callback'Nexus'HeaderEntry Data.Text.Text@ -}
data Callback'Nexus'HeaderEntry
  = Callback'Nexus'HeaderEntry'_constructor {_Callback'Nexus'HeaderEntry'key :: !Data.Text.Text,
                                             _Callback'Nexus'HeaderEntry'value :: !Data.Text.Text,
                                             _Callback'Nexus'HeaderEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Callback'Nexus'HeaderEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Callback'Nexus'HeaderEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callback'Nexus'HeaderEntry'key
           (\ x__ y__ -> x__ {_Callback'Nexus'HeaderEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Callback'Nexus'HeaderEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callback'Nexus'HeaderEntry'value
           (\ x__ y__ -> x__ {_Callback'Nexus'HeaderEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Callback'Nexus'HeaderEntry where
  messageName _
    = Data.Text.pack
        "temporal.api.common.v1.Callback.Nexus.HeaderEntry"
  packedMessageDescriptor _
    = "\n\
      \\vHeaderEntry\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor Callback'Nexus'HeaderEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor Callback'Nexus'HeaderEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Callback'Nexus'HeaderEntry'_unknownFields
        (\ x__ y__
           -> x__ {_Callback'Nexus'HeaderEntry'_unknownFields = y__})
  defMessage
    = Callback'Nexus'HeaderEntry'_constructor
        {_Callback'Nexus'HeaderEntry'key = Data.ProtoLens.fieldDefault,
         _Callback'Nexus'HeaderEntry'value = Data.ProtoLens.fieldDefault,
         _Callback'Nexus'HeaderEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Callback'Nexus'HeaderEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser Callback'Nexus'HeaderEntry
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
          (do loop Data.ProtoLens.defMessage) "HeaderEntry"
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
instance Control.DeepSeq.NFData Callback'Nexus'HeaderEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Callback'Nexus'HeaderEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Callback'Nexus'HeaderEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_Callback'Nexus'HeaderEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.taskQueueName' @:: Lens' Callback'NexusHandler Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.service' @:: Lens' Callback'NexusHandler Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.operation' @:: Lens' Callback'NexusHandler Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.sourceContext' @:: Lens' Callback'NexusHandler Payload@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'sourceContext' @:: Lens' Callback'NexusHandler (Prelude.Maybe Payload)@ -}
data Callback'NexusHandler
  = Callback'NexusHandler'_constructor {_Callback'NexusHandler'taskQueueName :: !Data.Text.Text,
                                        _Callback'NexusHandler'service :: !Data.Text.Text,
                                        _Callback'NexusHandler'operation :: !Data.Text.Text,
                                        _Callback'NexusHandler'sourceContext :: !(Prelude.Maybe Payload),
                                        _Callback'NexusHandler'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Callback'NexusHandler where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Callback'NexusHandler "taskQueueName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callback'NexusHandler'taskQueueName
           (\ x__ y__ -> x__ {_Callback'NexusHandler'taskQueueName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Callback'NexusHandler "service" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callback'NexusHandler'service
           (\ x__ y__ -> x__ {_Callback'NexusHandler'service = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Callback'NexusHandler "operation" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callback'NexusHandler'operation
           (\ x__ y__ -> x__ {_Callback'NexusHandler'operation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Callback'NexusHandler "sourceContext" Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callback'NexusHandler'sourceContext
           (\ x__ y__ -> x__ {_Callback'NexusHandler'sourceContext = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Callback'NexusHandler "maybe'sourceContext" (Prelude.Maybe Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callback'NexusHandler'sourceContext
           (\ x__ y__ -> x__ {_Callback'NexusHandler'sourceContext = y__}))
        Prelude.id
instance Data.ProtoLens.Message Callback'NexusHandler where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.Callback.NexusHandler"
  packedMessageDescriptor _
    = "\n\
      \\fNexusHandler\DC2&\n\
      \\SItask_queue_name\CAN\SOH \SOH(\tR\rtaskQueueName\DC2\CAN\n\
      \\aservice\CAN\STX \SOH(\tR\aservice\DC2\FS\n\
      \\toperation\CAN\ETX \SOH(\tR\toperation\DC2F\n\
      \\SOsource_context\CAN\EOT \SOH(\v2\US.temporal.api.common.v1.PayloadR\rsourceContext"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        taskQueueName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"taskQueueName")) ::
              Data.ProtoLens.FieldDescriptor Callback'NexusHandler
        service__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"service")) ::
              Data.ProtoLens.FieldDescriptor Callback'NexusHandler
        operation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operation")) ::
              Data.ProtoLens.FieldDescriptor Callback'NexusHandler
        sourceContext__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_context"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sourceContext")) ::
              Data.ProtoLens.FieldDescriptor Callback'NexusHandler
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, taskQueueName__field_descriptor),
           (Data.ProtoLens.Tag 2, service__field_descriptor),
           (Data.ProtoLens.Tag 3, operation__field_descriptor),
           (Data.ProtoLens.Tag 4, sourceContext__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Callback'NexusHandler'_unknownFields
        (\ x__ y__ -> x__ {_Callback'NexusHandler'_unknownFields = y__})
  defMessage
    = Callback'NexusHandler'_constructor
        {_Callback'NexusHandler'taskQueueName = Data.ProtoLens.fieldDefault,
         _Callback'NexusHandler'service = Data.ProtoLens.fieldDefault,
         _Callback'NexusHandler'operation = Data.ProtoLens.fieldDefault,
         _Callback'NexusHandler'sourceContext = Prelude.Nothing,
         _Callback'NexusHandler'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Callback'NexusHandler
          -> Data.ProtoLens.Encoding.Bytes.Parser Callback'NexusHandler
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
                                       "task_queue_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"taskQueueName") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "service"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"service") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operation") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "source_context"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sourceContext") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NexusHandler"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"taskQueueName") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"service") _x
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
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operation") _x
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
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'sourceContext") _x
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
instance Control.DeepSeq.NFData Callback'NexusHandler where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Callback'NexusHandler'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Callback'NexusHandler'taskQueueName x__)
                (Control.DeepSeq.deepseq
                   (_Callback'NexusHandler'service x__)
                   (Control.DeepSeq.deepseq
                      (_Callback'NexusHandler'operation x__)
                      (Control.DeepSeq.deepseq
                         (_Callback'NexusHandler'sourceContext x__) ()))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.encodingType' @:: Lens' DataBlob Proto.Temporal.Api.Enums.V1.Common.EncodingType@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.data'' @:: Lens' DataBlob Data.ByteString.ByteString@ -}
data DataBlob
  = DataBlob'_constructor {_DataBlob'encodingType :: !Proto.Temporal.Api.Enums.V1.Common.EncodingType,
                           _DataBlob'data' :: !Data.ByteString.ByteString,
                           _DataBlob'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DataBlob where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DataBlob "encodingType" Proto.Temporal.Api.Enums.V1.Common.EncodingType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DataBlob'encodingType
           (\ x__ y__ -> x__ {_DataBlob'encodingType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DataBlob "data'" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DataBlob'data' (\ x__ y__ -> x__ {_DataBlob'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Message DataBlob where
  messageName _ = Data.Text.pack "temporal.api.common.v1.DataBlob"
  packedMessageDescriptor _
    = "\n\
      \\bDataBlob\DC2H\n\
      \\rencoding_type\CAN\SOH \SOH(\SO2#.temporal.api.enums.v1.EncodingTypeR\fencodingType\DC2\DC2\n\
      \\EOTdata\CAN\STX \SOH(\fR\EOTdata"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        encodingType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "encoding_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Common.EncodingType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"encodingType")) ::
              Data.ProtoLens.FieldDescriptor DataBlob
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"data'")) ::
              Data.ProtoLens.FieldDescriptor DataBlob
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, encodingType__field_descriptor),
           (Data.ProtoLens.Tag 2, data'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DataBlob'_unknownFields
        (\ x__ y__ -> x__ {_DataBlob'_unknownFields = y__})
  defMessage
    = DataBlob'_constructor
        {_DataBlob'encodingType = Data.ProtoLens.fieldDefault,
         _DataBlob'data' = Data.ProtoLens.fieldDefault,
         _DataBlob'_unknownFields = []}
  parseMessage
    = let
        loop :: DataBlob -> Data.ProtoLens.Encoding.Bytes.Parser DataBlob
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
                                       "encoding_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"encodingType") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "data"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DataBlob"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"encodingType") _x
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
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData DataBlob where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DataBlob'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DataBlob'encodingType x__)
                (Control.DeepSeq.deepseq (_DataBlob'data' x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.type'' @:: Lens' Execution Proto.Temporal.Api.Enums.V1.Common.ExecutionType@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.businessId' @:: Lens' Execution Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.runId' @:: Lens' Execution Data.Text.Text@ -}
data Execution
  = Execution'_constructor {_Execution'type' :: !Proto.Temporal.Api.Enums.V1.Common.ExecutionType,
                            _Execution'businessId :: !Data.Text.Text,
                            _Execution'runId :: !Data.Text.Text,
                            _Execution'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Execution where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Execution "type'" Proto.Temporal.Api.Enums.V1.Common.ExecutionType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Execution'type' (\ x__ y__ -> x__ {_Execution'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Execution "businessId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Execution'businessId
           (\ x__ y__ -> x__ {_Execution'businessId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Execution "runId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Execution'runId (\ x__ y__ -> x__ {_Execution'runId = y__}))
        Prelude.id
instance Data.ProtoLens.Message Execution where
  messageName _ = Data.Text.pack "temporal.api.common.v1.Execution"
  packedMessageDescriptor _
    = "\n\
      \\tExecution\DC28\n\
      \\EOTtype\CAN\SOH \SOH(\SO2$.temporal.api.enums.v1.ExecutionTypeR\EOTtype\DC2\US\n\
      \\vbusiness_id\CAN\STX \SOH(\tR\n\
      \businessId\DC2\NAK\n\
      \\ACKrun_id\CAN\ETX \SOH(\tR\ENQrunId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Common.ExecutionType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor Execution
        businessId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "business_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"businessId")) ::
              Data.ProtoLens.FieldDescriptor Execution
        runId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "run_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"runId")) ::
              Data.ProtoLens.FieldDescriptor Execution
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, businessId__field_descriptor),
           (Data.ProtoLens.Tag 3, runId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Execution'_unknownFields
        (\ x__ y__ -> x__ {_Execution'_unknownFields = y__})
  defMessage
    = Execution'_constructor
        {_Execution'type' = Data.ProtoLens.fieldDefault,
         _Execution'businessId = Data.ProtoLens.fieldDefault,
         _Execution'runId = Data.ProtoLens.fieldDefault,
         _Execution'_unknownFields = []}
  parseMessage
    = let
        loop :: Execution -> Data.ProtoLens.Encoding.Bytes.Parser Execution
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
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "business_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"businessId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "run_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"runId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Execution"
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
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"businessId") _x
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
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"runId") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Execution where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Execution'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Execution'type' x__)
                (Control.DeepSeq.deepseq
                   (_Execution'businessId x__)
                   (Control.DeepSeq.deepseq (_Execution'runId x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.id' @:: Lens' FastForwardConfig Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.duration' @:: Lens' FastForwardConfig Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'duration' @:: Lens' FastForwardConfig (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data FastForwardConfig
  = FastForwardConfig'_constructor {_FastForwardConfig'id :: !Data.Text.Text,
                                    _FastForwardConfig'duration :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                    _FastForwardConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FastForwardConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FastForwardConfig "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FastForwardConfig'id
           (\ x__ y__ -> x__ {_FastForwardConfig'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FastForwardConfig "duration" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FastForwardConfig'duration
           (\ x__ y__ -> x__ {_FastForwardConfig'duration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FastForwardConfig "maybe'duration" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FastForwardConfig'duration
           (\ x__ y__ -> x__ {_FastForwardConfig'duration = y__}))
        Prelude.id
instance Data.ProtoLens.Message FastForwardConfig where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.FastForwardConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC1FastForwardConfig\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\tR\STXid\DC25\n\
      \\bduration\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\bduration"
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
              Data.ProtoLens.FieldDescriptor FastForwardConfig
        duration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "duration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'duration")) ::
              Data.ProtoLens.FieldDescriptor FastForwardConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, duration__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FastForwardConfig'_unknownFields
        (\ x__ y__ -> x__ {_FastForwardConfig'_unknownFields = y__})
  defMessage
    = FastForwardConfig'_constructor
        {_FastForwardConfig'id = Data.ProtoLens.fieldDefault,
         _FastForwardConfig'duration = Prelude.Nothing,
         _FastForwardConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FastForwardConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser FastForwardConfig
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
                                       "duration"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"duration") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FastForwardConfig"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'duration") _x
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
instance Control.DeepSeq.NFData FastForwardConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FastForwardConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FastForwardConfig'id x__)
                (Control.DeepSeq.deepseq (_FastForwardConfig'duration x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.fields' @:: Lens' Header (Data.Map.Map Data.Text.Text Payload)@ -}
data Header
  = Header'_constructor {_Header'fields :: !(Data.Map.Map Data.Text.Text Payload),
                         _Header'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Header where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Header "fields" (Data.Map.Map Data.Text.Text Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'fields (\ x__ y__ -> x__ {_Header'fields = y__}))
        Prelude.id
instance Data.ProtoLens.Message Header where
  messageName _ = Data.Text.pack "temporal.api.common.v1.Header"
  packedMessageDescriptor _
    = "\n\
      \\ACKHeader\DC2B\n\
      \\ACKfields\CAN\SOH \ETX(\v2*.temporal.api.common.v1.Header.FieldsEntryR\ACKfields\SUBZ\n\
      \\vFieldsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fields__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fields"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Header'FieldsEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"fields")) ::
              Data.ProtoLens.FieldDescriptor Header
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fields__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Header'_unknownFields
        (\ x__ y__ -> x__ {_Header'_unknownFields = y__})
  defMessage
    = Header'_constructor
        {_Header'fields = Data.Map.empty, _Header'_unknownFields = []}
  parseMessage
    = let
        loop :: Header -> Data.ProtoLens.Encoding.Bytes.Parser Header
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
                          -> do !(entry :: Header'FieldsEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                        Data.ProtoLens.Encoding.Bytes.isolate
                                                                          (Prelude.fromIntegral len)
                                                                          Data.ProtoLens.parseMessage)
                                                                    "fields"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"fields")
                                        (\ !t -> Data.Map.insert key value t) x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Header"
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
                                    (Data.ProtoLens.defMessage :: Header'FieldsEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"fields") _x))))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Header where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Header'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Header'fields x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.key' @:: Lens' Header'FieldsEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.value' @:: Lens' Header'FieldsEntry Payload@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'value' @:: Lens' Header'FieldsEntry (Prelude.Maybe Payload)@ -}
data Header'FieldsEntry
  = Header'FieldsEntry'_constructor {_Header'FieldsEntry'key :: !Data.Text.Text,
                                     _Header'FieldsEntry'value :: !(Prelude.Maybe Payload),
                                     _Header'FieldsEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Header'FieldsEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Header'FieldsEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'FieldsEntry'key
           (\ x__ y__ -> x__ {_Header'FieldsEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Header'FieldsEntry "value" Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'FieldsEntry'value
           (\ x__ y__ -> x__ {_Header'FieldsEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Header'FieldsEntry "maybe'value" (Prelude.Maybe Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'FieldsEntry'value
           (\ x__ y__ -> x__ {_Header'FieldsEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Header'FieldsEntry where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.Header.FieldsEntry"
  packedMessageDescriptor _
    = "\n\
      \\vFieldsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor Header'FieldsEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor Header'FieldsEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Header'FieldsEntry'_unknownFields
        (\ x__ y__ -> x__ {_Header'FieldsEntry'_unknownFields = y__})
  defMessage
    = Header'FieldsEntry'_constructor
        {_Header'FieldsEntry'key = Data.ProtoLens.fieldDefault,
         _Header'FieldsEntry'value = Prelude.Nothing,
         _Header'FieldsEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Header'FieldsEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser Header'FieldsEntry
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
          (do loop Data.ProtoLens.defMessage) "FieldsEntry"
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
instance Control.DeepSeq.NFData Header'FieldsEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Header'FieldsEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Header'FieldsEntry'key x__)
                (Control.DeepSeq.deepseq (_Header'FieldsEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'variant' @:: Lens' Link (Prelude.Maybe Link'Variant)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'workflowEvent' @:: Lens' Link (Prelude.Maybe Link'WorkflowEvent)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.workflowEvent' @:: Lens' Link Link'WorkflowEvent@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'batchJob' @:: Lens' Link (Prelude.Maybe Link'BatchJob)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.batchJob' @:: Lens' Link Link'BatchJob@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'activity' @:: Lens' Link (Prelude.Maybe Link'Activity)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.activity' @:: Lens' Link Link'Activity@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'nexusOperation' @:: Lens' Link (Prelude.Maybe Link'NexusOperation)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.nexusOperation' @:: Lens' Link Link'NexusOperation@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'workflow' @:: Lens' Link (Prelude.Maybe Link'Workflow)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.workflow' @:: Lens' Link Link'Workflow@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'callback' @:: Lens' Link (Prelude.Maybe Link'Callback)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.callback' @:: Lens' Link Link'Callback@ -}
data Link
  = Link'_constructor {_Link'variant :: !(Prelude.Maybe Link'Variant),
                       _Link'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Link where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Link'Variant
  = Link'WorkflowEvent' !Link'WorkflowEvent |
    Link'BatchJob' !Link'BatchJob |
    Link'Activity' !Link'Activity |
    Link'NexusOperation' !Link'NexusOperation |
    Link'Workflow' !Link'Workflow |
    Link'Callback' !Link'Callback
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Link "maybe'variant" (Prelude.Maybe Link'Variant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'variant (\ x__ y__ -> x__ {_Link'variant = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Link "maybe'workflowEvent" (Prelude.Maybe Link'WorkflowEvent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'variant (\ x__ y__ -> x__ {_Link'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Link'WorkflowEvent' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Link'WorkflowEvent' y__))
instance Data.ProtoLens.Field.HasField Link "workflowEvent" Link'WorkflowEvent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'variant (\ x__ y__ -> x__ {_Link'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Link'WorkflowEvent' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Link'WorkflowEvent' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Link "maybe'batchJob" (Prelude.Maybe Link'BatchJob) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'variant (\ x__ y__ -> x__ {_Link'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Link'BatchJob' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Link'BatchJob' y__))
instance Data.ProtoLens.Field.HasField Link "batchJob" Link'BatchJob where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'variant (\ x__ y__ -> x__ {_Link'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Link'BatchJob' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Link'BatchJob' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Link "maybe'activity" (Prelude.Maybe Link'Activity) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'variant (\ x__ y__ -> x__ {_Link'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Link'Activity' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Link'Activity' y__))
instance Data.ProtoLens.Field.HasField Link "activity" Link'Activity where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'variant (\ x__ y__ -> x__ {_Link'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Link'Activity' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Link'Activity' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Link "maybe'nexusOperation" (Prelude.Maybe Link'NexusOperation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'variant (\ x__ y__ -> x__ {_Link'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Link'NexusOperation' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Link'NexusOperation' y__))
instance Data.ProtoLens.Field.HasField Link "nexusOperation" Link'NexusOperation where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'variant (\ x__ y__ -> x__ {_Link'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Link'NexusOperation' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Link'NexusOperation' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Link "maybe'workflow" (Prelude.Maybe Link'Workflow) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'variant (\ x__ y__ -> x__ {_Link'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Link'Workflow' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Link'Workflow' y__))
instance Data.ProtoLens.Field.HasField Link "workflow" Link'Workflow where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'variant (\ x__ y__ -> x__ {_Link'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Link'Workflow' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Link'Workflow' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Link "maybe'callback" (Prelude.Maybe Link'Callback) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'variant (\ x__ y__ -> x__ {_Link'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Link'Callback' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Link'Callback' y__))
instance Data.ProtoLens.Field.HasField Link "callback" Link'Callback where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'variant (\ x__ y__ -> x__ {_Link'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Link'Callback' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Link'Callback' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Link where
  messageName _ = Data.Text.pack "temporal.api.common.v1.Link"
  packedMessageDescriptor _
    = "\n\
      \\EOTLink\DC2S\n\
      \\SOworkflow_event\CAN\SOH \SOH(\v2*.temporal.api.common.v1.Link.WorkflowEventH\NULR\rworkflowEvent\DC2D\n\
      \\tbatch_job\CAN\STX \SOH(\v2%.temporal.api.common.v1.Link.BatchJobH\NULR\bbatchJob\DC2C\n\
      \\bactivity\CAN\ETX \SOH(\v2%.temporal.api.common.v1.Link.ActivityH\NULR\bactivity\DC2V\n\
      \\SInexus_operation\CAN\EOT \SOH(\v2+.temporal.api.common.v1.Link.NexusOperationH\NULR\SOnexusOperation\DC2C\n\
      \\bworkflow\CAN\ENQ \SOH(\v2%.temporal.api.common.v1.Link.WorkflowH\NULR\bworkflow\DC2C\n\
      \\bcallback\CAN\ACK \SOH(\v2%.temporal.api.common.v1.Link.CallbackH\NULR\bcallback\SUB\151\EOT\n\
      \\rWorkflowEvent\DC2\FS\n\
      \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2\US\n\
      \\vworkflow_id\CAN\STX \SOH(\tR\n\
      \workflowId\DC2\NAK\n\
      \\ACKrun_id\CAN\ETX \SOH(\tR\ENQrunId\DC2X\n\
      \\tevent_ref\CANd \SOH(\v29.temporal.api.common.v1.Link.WorkflowEvent.EventReferenceH\NULR\beventRef\DC2e\n\
      \\SOrequest_id_ref\CANe \SOH(\v2=.temporal.api.common.v1.Link.WorkflowEvent.RequestIdReferenceH\NULR\frequestIdRef\SUBl\n\
      \\SOEventReference\DC2\EM\n\
      \\bevent_id\CAN\SOH \SOH(\ETXR\aeventId\DC2?\n\
      \\n\
      \event_type\CAN\STX \SOH(\SO2 .temporal.api.enums.v1.EventTypeR\teventType\SUBt\n\
      \\DC2RequestIdReference\DC2\GS\n\
      \\n\
      \request_id\CAN\SOH \SOH(\tR\trequestId\DC2?\n\
      \\n\
      \event_type\CAN\STX \SOH(\SO2 .temporal.api.enums.v1.EventTypeR\teventTypeB\v\n\
      \\treference\SUB!\n\
      \\bBatchJob\DC2\NAK\n\
      \\ACKjob_id\CAN\SOH \SOH(\tR\ENQjobId\SUB`\n\
      \\bActivity\DC2\FS\n\
      \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2\US\n\
      \\vactivity_id\CAN\STX \SOH(\tR\n\
      \activityId\DC2\NAK\n\
      \\ACKrun_id\CAN\ETX \SOH(\tR\ENQrunId\SUBh\n\
      \\SONexusOperation\DC2\FS\n\
      \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2!\n\
      \\foperation_id\CAN\STX \SOH(\tR\voperationId\DC2\NAK\n\
      \\ACKrun_id\CAN\ETX \SOH(\tR\ENQrunId\SUBx\n\
      \\bWorkflow\DC2\FS\n\
      \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2\US\n\
      \\vworkflow_id\CAN\STX \SOH(\tR\n\
      \workflowId\DC2\NAK\n\
      \\ACKrun_id\CAN\ETX \SOH(\tR\ENQrunId\DC2\SYN\n\
      \\ACKreason\CAN\EOT \SOH(\tR\ACKreason\SUB\175\SOH\n\
      \\bCallback\DC2\FS\n\
      \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2?\n\
      \\texecution\CAN\STX \SOH(\v2!.temporal.api.common.v1.ExecutionR\texecution\DC2%\n\
      \\SOcomponent_path\CAN\ETX \ETX(\tR\rcomponentPath\DC2\GS\n\
      \\n\
      \request_id\CAN\EOT \SOH(\tR\trequestIdB\t\n\
      \\avariant"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        workflowEvent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_event"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Link'WorkflowEvent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowEvent")) ::
              Data.ProtoLens.FieldDescriptor Link
        batchJob__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "batch_job"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Link'BatchJob)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'batchJob")) ::
              Data.ProtoLens.FieldDescriptor Link
        activity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Link'Activity)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'activity")) ::
              Data.ProtoLens.FieldDescriptor Link
        nexusOperation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nexus_operation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Link'NexusOperation)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nexusOperation")) ::
              Data.ProtoLens.FieldDescriptor Link
        workflow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Link'Workflow)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflow")) ::
              Data.ProtoLens.FieldDescriptor Link
        callback__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "callback"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Link'Callback)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'callback")) ::
              Data.ProtoLens.FieldDescriptor Link
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, workflowEvent__field_descriptor),
           (Data.ProtoLens.Tag 2, batchJob__field_descriptor),
           (Data.ProtoLens.Tag 3, activity__field_descriptor),
           (Data.ProtoLens.Tag 4, nexusOperation__field_descriptor),
           (Data.ProtoLens.Tag 5, workflow__field_descriptor),
           (Data.ProtoLens.Tag 6, callback__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Link'_unknownFields
        (\ x__ y__ -> x__ {_Link'_unknownFields = y__})
  defMessage
    = Link'_constructor
        {_Link'variant = Prelude.Nothing, _Link'_unknownFields = []}
  parseMessage
    = let
        loop :: Link -> Data.ProtoLens.Encoding.Bytes.Parser Link
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
                                       "workflow_event"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowEvent") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "batch_job"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"batchJob") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "activity"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"activity") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "nexus_operation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"nexusOperation") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"workflow") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "callback"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"callback") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Link"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'variant") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (Link'WorkflowEvent' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Link'BatchJob' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Link'Activity' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Link'NexusOperation' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Link'Workflow' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Link'Callback' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Link where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Link'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Link'variant x__) ())
instance Control.DeepSeq.NFData Link'Variant where
  rnf (Link'WorkflowEvent' x__) = Control.DeepSeq.rnf x__
  rnf (Link'BatchJob' x__) = Control.DeepSeq.rnf x__
  rnf (Link'Activity' x__) = Control.DeepSeq.rnf x__
  rnf (Link'NexusOperation' x__) = Control.DeepSeq.rnf x__
  rnf (Link'Workflow' x__) = Control.DeepSeq.rnf x__
  rnf (Link'Callback' x__) = Control.DeepSeq.rnf x__
_Link'WorkflowEvent' ::
  Data.ProtoLens.Prism.Prism' Link'Variant Link'WorkflowEvent
_Link'WorkflowEvent'
  = Data.ProtoLens.Prism.prism'
      Link'WorkflowEvent'
      (\ p__
         -> case p__ of
              (Link'WorkflowEvent' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Link'BatchJob' ::
  Data.ProtoLens.Prism.Prism' Link'Variant Link'BatchJob
_Link'BatchJob'
  = Data.ProtoLens.Prism.prism'
      Link'BatchJob'
      (\ p__
         -> case p__ of
              (Link'BatchJob' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Link'Activity' ::
  Data.ProtoLens.Prism.Prism' Link'Variant Link'Activity
_Link'Activity'
  = Data.ProtoLens.Prism.prism'
      Link'Activity'
      (\ p__
         -> case p__ of
              (Link'Activity' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Link'NexusOperation' ::
  Data.ProtoLens.Prism.Prism' Link'Variant Link'NexusOperation
_Link'NexusOperation'
  = Data.ProtoLens.Prism.prism'
      Link'NexusOperation'
      (\ p__
         -> case p__ of
              (Link'NexusOperation' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Link'Workflow' ::
  Data.ProtoLens.Prism.Prism' Link'Variant Link'Workflow
_Link'Workflow'
  = Data.ProtoLens.Prism.prism'
      Link'Workflow'
      (\ p__
         -> case p__ of
              (Link'Workflow' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Link'Callback' ::
  Data.ProtoLens.Prism.Prism' Link'Variant Link'Callback
_Link'Callback'
  = Data.ProtoLens.Prism.prism'
      Link'Callback'
      (\ p__
         -> case p__ of
              (Link'Callback' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.namespace' @:: Lens' Link'Activity Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.activityId' @:: Lens' Link'Activity Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.runId' @:: Lens' Link'Activity Data.Text.Text@ -}
data Link'Activity
  = Link'Activity'_constructor {_Link'Activity'namespace :: !Data.Text.Text,
                                _Link'Activity'activityId :: !Data.Text.Text,
                                _Link'Activity'runId :: !Data.Text.Text,
                                _Link'Activity'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Link'Activity where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Link'Activity "namespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'Activity'namespace
           (\ x__ y__ -> x__ {_Link'Activity'namespace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Link'Activity "activityId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'Activity'activityId
           (\ x__ y__ -> x__ {_Link'Activity'activityId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Link'Activity "runId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'Activity'runId
           (\ x__ y__ -> x__ {_Link'Activity'runId = y__}))
        Prelude.id
instance Data.ProtoLens.Message Link'Activity where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.Link.Activity"
  packedMessageDescriptor _
    = "\n\
      \\bActivity\DC2\FS\n\
      \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2\US\n\
      \\vactivity_id\CAN\STX \SOH(\tR\n\
      \activityId\DC2\NAK\n\
      \\ACKrun_id\CAN\ETX \SOH(\tR\ENQrunId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        namespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "namespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"namespace")) ::
              Data.ProtoLens.FieldDescriptor Link'Activity
        activityId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"activityId")) ::
              Data.ProtoLens.FieldDescriptor Link'Activity
        runId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "run_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"runId")) ::
              Data.ProtoLens.FieldDescriptor Link'Activity
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, namespace__field_descriptor),
           (Data.ProtoLens.Tag 2, activityId__field_descriptor),
           (Data.ProtoLens.Tag 3, runId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Link'Activity'_unknownFields
        (\ x__ y__ -> x__ {_Link'Activity'_unknownFields = y__})
  defMessage
    = Link'Activity'_constructor
        {_Link'Activity'namespace = Data.ProtoLens.fieldDefault,
         _Link'Activity'activityId = Data.ProtoLens.fieldDefault,
         _Link'Activity'runId = Data.ProtoLens.fieldDefault,
         _Link'Activity'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Link'Activity -> Data.ProtoLens.Encoding.Bytes.Parser Link'Activity
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
                                       "namespace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"namespace") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "activity_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"activityId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "run_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"runId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Activity"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"namespace") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"activityId") _x
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
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"runId") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Link'Activity where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Link'Activity'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Link'Activity'namespace x__)
                (Control.DeepSeq.deepseq
                   (_Link'Activity'activityId x__)
                   (Control.DeepSeq.deepseq (_Link'Activity'runId x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.jobId' @:: Lens' Link'BatchJob Data.Text.Text@ -}
data Link'BatchJob
  = Link'BatchJob'_constructor {_Link'BatchJob'jobId :: !Data.Text.Text,
                                _Link'BatchJob'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Link'BatchJob where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Link'BatchJob "jobId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'BatchJob'jobId
           (\ x__ y__ -> x__ {_Link'BatchJob'jobId = y__}))
        Prelude.id
instance Data.ProtoLens.Message Link'BatchJob where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.Link.BatchJob"
  packedMessageDescriptor _
    = "\n\
      \\bBatchJob\DC2\NAK\n\
      \\ACKjob_id\CAN\SOH \SOH(\tR\ENQjobId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        jobId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "job_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"jobId")) ::
              Data.ProtoLens.FieldDescriptor Link'BatchJob
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, jobId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Link'BatchJob'_unknownFields
        (\ x__ y__ -> x__ {_Link'BatchJob'_unknownFields = y__})
  defMessage
    = Link'BatchJob'_constructor
        {_Link'BatchJob'jobId = Data.ProtoLens.fieldDefault,
         _Link'BatchJob'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Link'BatchJob -> Data.ProtoLens.Encoding.Bytes.Parser Link'BatchJob
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
                                       "job_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"jobId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BatchJob"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"jobId") _x
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
instance Control.DeepSeq.NFData Link'BatchJob where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Link'BatchJob'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Link'BatchJob'jobId x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.namespace' @:: Lens' Link'Callback Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.execution' @:: Lens' Link'Callback Execution@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'execution' @:: Lens' Link'Callback (Prelude.Maybe Execution)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.componentPath' @:: Lens' Link'Callback [Data.Text.Text]@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.vec'componentPath' @:: Lens' Link'Callback (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.requestId' @:: Lens' Link'Callback Data.Text.Text@ -}
data Link'Callback
  = Link'Callback'_constructor {_Link'Callback'namespace :: !Data.Text.Text,
                                _Link'Callback'execution :: !(Prelude.Maybe Execution),
                                _Link'Callback'componentPath :: !(Data.Vector.Vector Data.Text.Text),
                                _Link'Callback'requestId :: !Data.Text.Text,
                                _Link'Callback'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Link'Callback where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Link'Callback "namespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'Callback'namespace
           (\ x__ y__ -> x__ {_Link'Callback'namespace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Link'Callback "execution" Execution where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'Callback'execution
           (\ x__ y__ -> x__ {_Link'Callback'execution = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Link'Callback "maybe'execution" (Prelude.Maybe Execution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'Callback'execution
           (\ x__ y__ -> x__ {_Link'Callback'execution = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Link'Callback "componentPath" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'Callback'componentPath
           (\ x__ y__ -> x__ {_Link'Callback'componentPath = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Link'Callback "vec'componentPath" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'Callback'componentPath
           (\ x__ y__ -> x__ {_Link'Callback'componentPath = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Link'Callback "requestId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'Callback'requestId
           (\ x__ y__ -> x__ {_Link'Callback'requestId = y__}))
        Prelude.id
instance Data.ProtoLens.Message Link'Callback where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.Link.Callback"
  packedMessageDescriptor _
    = "\n\
      \\bCallback\DC2\FS\n\
      \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2?\n\
      \\texecution\CAN\STX \SOH(\v2!.temporal.api.common.v1.ExecutionR\texecution\DC2%\n\
      \\SOcomponent_path\CAN\ETX \ETX(\tR\rcomponentPath\DC2\GS\n\
      \\n\
      \request_id\CAN\EOT \SOH(\tR\trequestId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        namespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "namespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"namespace")) ::
              Data.ProtoLens.FieldDescriptor Link'Callback
        execution__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "execution"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Execution)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'execution")) ::
              Data.ProtoLens.FieldDescriptor Link'Callback
        componentPath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "component_path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"componentPath")) ::
              Data.ProtoLens.FieldDescriptor Link'Callback
        requestId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestId")) ::
              Data.ProtoLens.FieldDescriptor Link'Callback
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, namespace__field_descriptor),
           (Data.ProtoLens.Tag 2, execution__field_descriptor),
           (Data.ProtoLens.Tag 3, componentPath__field_descriptor),
           (Data.ProtoLens.Tag 4, requestId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Link'Callback'_unknownFields
        (\ x__ y__ -> x__ {_Link'Callback'_unknownFields = y__})
  defMessage
    = Link'Callback'_constructor
        {_Link'Callback'namespace = Data.ProtoLens.fieldDefault,
         _Link'Callback'execution = Prelude.Nothing,
         _Link'Callback'componentPath = Data.Vector.Generic.empty,
         _Link'Callback'requestId = Data.ProtoLens.fieldDefault,
         _Link'Callback'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Link'Callback
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser Link'Callback
        loop x mutable'componentPath
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'componentPath <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'componentPath)
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
                              (Data.ProtoLens.Field.field @"vec'componentPath")
                              frozen'componentPath x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "namespace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"namespace") y x)
                                  mutable'componentPath
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "execution"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"execution") y x)
                                  mutable'componentPath
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getText
                                              (Prelude.fromIntegral len))
                                        "component_path"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'componentPath y)
                                loop x v
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "request_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"requestId") y x)
                                  mutable'componentPath
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'componentPath
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'componentPath <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'componentPath)
          "Callback"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"namespace") _x
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'execution") _x
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
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.Text.Encoding.encodeUtf8 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'componentPath") _x))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"requestId") _x
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
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData Link'Callback where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Link'Callback'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Link'Callback'namespace x__)
                (Control.DeepSeq.deepseq
                   (_Link'Callback'execution x__)
                   (Control.DeepSeq.deepseq
                      (_Link'Callback'componentPath x__)
                      (Control.DeepSeq.deepseq (_Link'Callback'requestId x__) ()))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.namespace' @:: Lens' Link'NexusOperation Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.operationId' @:: Lens' Link'NexusOperation Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.runId' @:: Lens' Link'NexusOperation Data.Text.Text@ -}
data Link'NexusOperation
  = Link'NexusOperation'_constructor {_Link'NexusOperation'namespace :: !Data.Text.Text,
                                      _Link'NexusOperation'operationId :: !Data.Text.Text,
                                      _Link'NexusOperation'runId :: !Data.Text.Text,
                                      _Link'NexusOperation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Link'NexusOperation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Link'NexusOperation "namespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'NexusOperation'namespace
           (\ x__ y__ -> x__ {_Link'NexusOperation'namespace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Link'NexusOperation "operationId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'NexusOperation'operationId
           (\ x__ y__ -> x__ {_Link'NexusOperation'operationId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Link'NexusOperation "runId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'NexusOperation'runId
           (\ x__ y__ -> x__ {_Link'NexusOperation'runId = y__}))
        Prelude.id
instance Data.ProtoLens.Message Link'NexusOperation where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.Link.NexusOperation"
  packedMessageDescriptor _
    = "\n\
      \\SONexusOperation\DC2\FS\n\
      \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2!\n\
      \\foperation_id\CAN\STX \SOH(\tR\voperationId\DC2\NAK\n\
      \\ACKrun_id\CAN\ETX \SOH(\tR\ENQrunId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        namespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "namespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"namespace")) ::
              Data.ProtoLens.FieldDescriptor Link'NexusOperation
        operationId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operationId")) ::
              Data.ProtoLens.FieldDescriptor Link'NexusOperation
        runId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "run_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"runId")) ::
              Data.ProtoLens.FieldDescriptor Link'NexusOperation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, namespace__field_descriptor),
           (Data.ProtoLens.Tag 2, operationId__field_descriptor),
           (Data.ProtoLens.Tag 3, runId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Link'NexusOperation'_unknownFields
        (\ x__ y__ -> x__ {_Link'NexusOperation'_unknownFields = y__})
  defMessage
    = Link'NexusOperation'_constructor
        {_Link'NexusOperation'namespace = Data.ProtoLens.fieldDefault,
         _Link'NexusOperation'operationId = Data.ProtoLens.fieldDefault,
         _Link'NexusOperation'runId = Data.ProtoLens.fieldDefault,
         _Link'NexusOperation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Link'NexusOperation
          -> Data.ProtoLens.Encoding.Bytes.Parser Link'NexusOperation
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
                                       "namespace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"namespace") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operationId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "run_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"runId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NexusOperation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"namespace") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"operationId") _x
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
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"runId") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Link'NexusOperation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Link'NexusOperation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Link'NexusOperation'namespace x__)
                (Control.DeepSeq.deepseq
                   (_Link'NexusOperation'operationId x__)
                   (Control.DeepSeq.deepseq (_Link'NexusOperation'runId x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.namespace' @:: Lens' Link'Workflow Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.workflowId' @:: Lens' Link'Workflow Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.runId' @:: Lens' Link'Workflow Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.reason' @:: Lens' Link'Workflow Data.Text.Text@ -}
data Link'Workflow
  = Link'Workflow'_constructor {_Link'Workflow'namespace :: !Data.Text.Text,
                                _Link'Workflow'workflowId :: !Data.Text.Text,
                                _Link'Workflow'runId :: !Data.Text.Text,
                                _Link'Workflow'reason :: !Data.Text.Text,
                                _Link'Workflow'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Link'Workflow where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Link'Workflow "namespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'Workflow'namespace
           (\ x__ y__ -> x__ {_Link'Workflow'namespace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Link'Workflow "workflowId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'Workflow'workflowId
           (\ x__ y__ -> x__ {_Link'Workflow'workflowId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Link'Workflow "runId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'Workflow'runId
           (\ x__ y__ -> x__ {_Link'Workflow'runId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Link'Workflow "reason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'Workflow'reason
           (\ x__ y__ -> x__ {_Link'Workflow'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Message Link'Workflow where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.Link.Workflow"
  packedMessageDescriptor _
    = "\n\
      \\bWorkflow\DC2\FS\n\
      \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2\US\n\
      \\vworkflow_id\CAN\STX \SOH(\tR\n\
      \workflowId\DC2\NAK\n\
      \\ACKrun_id\CAN\ETX \SOH(\tR\ENQrunId\DC2\SYN\n\
      \\ACKreason\CAN\EOT \SOH(\tR\ACKreason"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        namespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "namespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"namespace")) ::
              Data.ProtoLens.FieldDescriptor Link'Workflow
        workflowId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workflowId")) ::
              Data.ProtoLens.FieldDescriptor Link'Workflow
        runId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "run_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"runId")) ::
              Data.ProtoLens.FieldDescriptor Link'Workflow
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"reason")) ::
              Data.ProtoLens.FieldDescriptor Link'Workflow
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, namespace__field_descriptor),
           (Data.ProtoLens.Tag 2, workflowId__field_descriptor),
           (Data.ProtoLens.Tag 3, runId__field_descriptor),
           (Data.ProtoLens.Tag 4, reason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Link'Workflow'_unknownFields
        (\ x__ y__ -> x__ {_Link'Workflow'_unknownFields = y__})
  defMessage
    = Link'Workflow'_constructor
        {_Link'Workflow'namespace = Data.ProtoLens.fieldDefault,
         _Link'Workflow'workflowId = Data.ProtoLens.fieldDefault,
         _Link'Workflow'runId = Data.ProtoLens.fieldDefault,
         _Link'Workflow'reason = Data.ProtoLens.fieldDefault,
         _Link'Workflow'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Link'Workflow -> Data.ProtoLens.Encoding.Bytes.Parser Link'Workflow
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
                                       "namespace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"namespace") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "workflow_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"workflowId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "run_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"runId") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "reason"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reason") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Workflow"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"namespace") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"workflowId") _x
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
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"runId") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"reason") _x
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
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData Link'Workflow where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Link'Workflow'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Link'Workflow'namespace x__)
                (Control.DeepSeq.deepseq
                   (_Link'Workflow'workflowId x__)
                   (Control.DeepSeq.deepseq
                      (_Link'Workflow'runId x__)
                      (Control.DeepSeq.deepseq (_Link'Workflow'reason x__) ()))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.namespace' @:: Lens' Link'WorkflowEvent Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.workflowId' @:: Lens' Link'WorkflowEvent Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.runId' @:: Lens' Link'WorkflowEvent Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'reference' @:: Lens' Link'WorkflowEvent (Prelude.Maybe Link'WorkflowEvent'Reference)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'eventRef' @:: Lens' Link'WorkflowEvent (Prelude.Maybe Link'WorkflowEvent'EventReference)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.eventRef' @:: Lens' Link'WorkflowEvent Link'WorkflowEvent'EventReference@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'requestIdRef' @:: Lens' Link'WorkflowEvent (Prelude.Maybe Link'WorkflowEvent'RequestIdReference)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.requestIdRef' @:: Lens' Link'WorkflowEvent Link'WorkflowEvent'RequestIdReference@ -}
data Link'WorkflowEvent
  = Link'WorkflowEvent'_constructor {_Link'WorkflowEvent'namespace :: !Data.Text.Text,
                                     _Link'WorkflowEvent'workflowId :: !Data.Text.Text,
                                     _Link'WorkflowEvent'runId :: !Data.Text.Text,
                                     _Link'WorkflowEvent'reference :: !(Prelude.Maybe Link'WorkflowEvent'Reference),
                                     _Link'WorkflowEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Link'WorkflowEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Link'WorkflowEvent'Reference
  = Link'WorkflowEvent'EventRef !Link'WorkflowEvent'EventReference |
    Link'WorkflowEvent'RequestIdRef !Link'WorkflowEvent'RequestIdReference
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Link'WorkflowEvent "namespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'WorkflowEvent'namespace
           (\ x__ y__ -> x__ {_Link'WorkflowEvent'namespace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Link'WorkflowEvent "workflowId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'WorkflowEvent'workflowId
           (\ x__ y__ -> x__ {_Link'WorkflowEvent'workflowId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Link'WorkflowEvent "runId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'WorkflowEvent'runId
           (\ x__ y__ -> x__ {_Link'WorkflowEvent'runId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Link'WorkflowEvent "maybe'reference" (Prelude.Maybe Link'WorkflowEvent'Reference) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'WorkflowEvent'reference
           (\ x__ y__ -> x__ {_Link'WorkflowEvent'reference = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Link'WorkflowEvent "maybe'eventRef" (Prelude.Maybe Link'WorkflowEvent'EventReference) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'WorkflowEvent'reference
           (\ x__ y__ -> x__ {_Link'WorkflowEvent'reference = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Link'WorkflowEvent'EventRef x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Link'WorkflowEvent'EventRef y__))
instance Data.ProtoLens.Field.HasField Link'WorkflowEvent "eventRef" Link'WorkflowEvent'EventReference where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'WorkflowEvent'reference
           (\ x__ y__ -> x__ {_Link'WorkflowEvent'reference = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Link'WorkflowEvent'EventRef x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Link'WorkflowEvent'EventRef y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Link'WorkflowEvent "maybe'requestIdRef" (Prelude.Maybe Link'WorkflowEvent'RequestIdReference) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'WorkflowEvent'reference
           (\ x__ y__ -> x__ {_Link'WorkflowEvent'reference = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Link'WorkflowEvent'RequestIdRef x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Link'WorkflowEvent'RequestIdRef y__))
instance Data.ProtoLens.Field.HasField Link'WorkflowEvent "requestIdRef" Link'WorkflowEvent'RequestIdReference where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'WorkflowEvent'reference
           (\ x__ y__ -> x__ {_Link'WorkflowEvent'reference = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Link'WorkflowEvent'RequestIdRef x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Link'WorkflowEvent'RequestIdRef y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Link'WorkflowEvent where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.Link.WorkflowEvent"
  packedMessageDescriptor _
    = "\n\
      \\rWorkflowEvent\DC2\FS\n\
      \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2\US\n\
      \\vworkflow_id\CAN\STX \SOH(\tR\n\
      \workflowId\DC2\NAK\n\
      \\ACKrun_id\CAN\ETX \SOH(\tR\ENQrunId\DC2X\n\
      \\tevent_ref\CANd \SOH(\v29.temporal.api.common.v1.Link.WorkflowEvent.EventReferenceH\NULR\beventRef\DC2e\n\
      \\SOrequest_id_ref\CANe \SOH(\v2=.temporal.api.common.v1.Link.WorkflowEvent.RequestIdReferenceH\NULR\frequestIdRef\SUBl\n\
      \\SOEventReference\DC2\EM\n\
      \\bevent_id\CAN\SOH \SOH(\ETXR\aeventId\DC2?\n\
      \\n\
      \event_type\CAN\STX \SOH(\SO2 .temporal.api.enums.v1.EventTypeR\teventType\SUBt\n\
      \\DC2RequestIdReference\DC2\GS\n\
      \\n\
      \request_id\CAN\SOH \SOH(\tR\trequestId\DC2?\n\
      \\n\
      \event_type\CAN\STX \SOH(\SO2 .temporal.api.enums.v1.EventTypeR\teventTypeB\v\n\
      \\treference"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        namespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "namespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"namespace")) ::
              Data.ProtoLens.FieldDescriptor Link'WorkflowEvent
        workflowId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workflowId")) ::
              Data.ProtoLens.FieldDescriptor Link'WorkflowEvent
        runId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "run_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"runId")) ::
              Data.ProtoLens.FieldDescriptor Link'WorkflowEvent
        eventRef__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "event_ref"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Link'WorkflowEvent'EventReference)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'eventRef")) ::
              Data.ProtoLens.FieldDescriptor Link'WorkflowEvent
        requestIdRef__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_id_ref"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Link'WorkflowEvent'RequestIdReference)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestIdRef")) ::
              Data.ProtoLens.FieldDescriptor Link'WorkflowEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, namespace__field_descriptor),
           (Data.ProtoLens.Tag 2, workflowId__field_descriptor),
           (Data.ProtoLens.Tag 3, runId__field_descriptor),
           (Data.ProtoLens.Tag 100, eventRef__field_descriptor),
           (Data.ProtoLens.Tag 101, requestIdRef__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Link'WorkflowEvent'_unknownFields
        (\ x__ y__ -> x__ {_Link'WorkflowEvent'_unknownFields = y__})
  defMessage
    = Link'WorkflowEvent'_constructor
        {_Link'WorkflowEvent'namespace = Data.ProtoLens.fieldDefault,
         _Link'WorkflowEvent'workflowId = Data.ProtoLens.fieldDefault,
         _Link'WorkflowEvent'runId = Data.ProtoLens.fieldDefault,
         _Link'WorkflowEvent'reference = Prelude.Nothing,
         _Link'WorkflowEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Link'WorkflowEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser Link'WorkflowEvent
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
                                       "namespace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"namespace") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "workflow_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"workflowId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "run_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"runId") y x)
                        802
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "event_ref"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"eventRef") y x)
                        810
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_id_ref"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestIdRef") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WorkflowEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"namespace") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"workflowId") _x
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
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"runId") _x
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
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'reference") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just (Link'WorkflowEvent'EventRef v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 802)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (Link'WorkflowEvent'RequestIdRef v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 810)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData Link'WorkflowEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Link'WorkflowEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Link'WorkflowEvent'namespace x__)
                (Control.DeepSeq.deepseq
                   (_Link'WorkflowEvent'workflowId x__)
                   (Control.DeepSeq.deepseq
                      (_Link'WorkflowEvent'runId x__)
                      (Control.DeepSeq.deepseq (_Link'WorkflowEvent'reference x__) ()))))
instance Control.DeepSeq.NFData Link'WorkflowEvent'Reference where
  rnf (Link'WorkflowEvent'EventRef x__) = Control.DeepSeq.rnf x__
  rnf (Link'WorkflowEvent'RequestIdRef x__) = Control.DeepSeq.rnf x__
_Link'WorkflowEvent'EventRef ::
  Data.ProtoLens.Prism.Prism' Link'WorkflowEvent'Reference Link'WorkflowEvent'EventReference
_Link'WorkflowEvent'EventRef
  = Data.ProtoLens.Prism.prism'
      Link'WorkflowEvent'EventRef
      (\ p__
         -> case p__ of
              (Link'WorkflowEvent'EventRef p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Link'WorkflowEvent'RequestIdRef ::
  Data.ProtoLens.Prism.Prism' Link'WorkflowEvent'Reference Link'WorkflowEvent'RequestIdReference
_Link'WorkflowEvent'RequestIdRef
  = Data.ProtoLens.Prism.prism'
      Link'WorkflowEvent'RequestIdRef
      (\ p__
         -> case p__ of
              (Link'WorkflowEvent'RequestIdRef p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.eventId' @:: Lens' Link'WorkflowEvent'EventReference Data.Int.Int64@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.eventType' @:: Lens' Link'WorkflowEvent'EventReference Proto.Temporal.Api.Enums.V1.EventType.EventType@ -}
data Link'WorkflowEvent'EventReference
  = Link'WorkflowEvent'EventReference'_constructor {_Link'WorkflowEvent'EventReference'eventId :: !Data.Int.Int64,
                                                    _Link'WorkflowEvent'EventReference'eventType :: !Proto.Temporal.Api.Enums.V1.EventType.EventType,
                                                    _Link'WorkflowEvent'EventReference'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Link'WorkflowEvent'EventReference where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Link'WorkflowEvent'EventReference "eventId" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'WorkflowEvent'EventReference'eventId
           (\ x__ y__
              -> x__ {_Link'WorkflowEvent'EventReference'eventId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Link'WorkflowEvent'EventReference "eventType" Proto.Temporal.Api.Enums.V1.EventType.EventType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'WorkflowEvent'EventReference'eventType
           (\ x__ y__
              -> x__ {_Link'WorkflowEvent'EventReference'eventType = y__}))
        Prelude.id
instance Data.ProtoLens.Message Link'WorkflowEvent'EventReference where
  messageName _
    = Data.Text.pack
        "temporal.api.common.v1.Link.WorkflowEvent.EventReference"
  packedMessageDescriptor _
    = "\n\
      \\SOEventReference\DC2\EM\n\
      \\bevent_id\CAN\SOH \SOH(\ETXR\aeventId\DC2?\n\
      \\n\
      \event_type\CAN\STX \SOH(\SO2 .temporal.api.enums.v1.EventTypeR\teventType"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        eventId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "event_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"eventId")) ::
              Data.ProtoLens.FieldDescriptor Link'WorkflowEvent'EventReference
        eventType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "event_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.EventType.EventType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"eventType")) ::
              Data.ProtoLens.FieldDescriptor Link'WorkflowEvent'EventReference
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, eventId__field_descriptor),
           (Data.ProtoLens.Tag 2, eventType__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Link'WorkflowEvent'EventReference'_unknownFields
        (\ x__ y__
           -> x__ {_Link'WorkflowEvent'EventReference'_unknownFields = y__})
  defMessage
    = Link'WorkflowEvent'EventReference'_constructor
        {_Link'WorkflowEvent'EventReference'eventId = Data.ProtoLens.fieldDefault,
         _Link'WorkflowEvent'EventReference'eventType = Data.ProtoLens.fieldDefault,
         _Link'WorkflowEvent'EventReference'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Link'WorkflowEvent'EventReference
          -> Data.ProtoLens.Encoding.Bytes.Parser Link'WorkflowEvent'EventReference
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
                                       "event_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"eventId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "event_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"eventType") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventReference"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"eventId") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"eventType") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Link'WorkflowEvent'EventReference where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Link'WorkflowEvent'EventReference'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Link'WorkflowEvent'EventReference'eventId x__)
                (Control.DeepSeq.deepseq
                   (_Link'WorkflowEvent'EventReference'eventType x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.requestId' @:: Lens' Link'WorkflowEvent'RequestIdReference Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.eventType' @:: Lens' Link'WorkflowEvent'RequestIdReference Proto.Temporal.Api.Enums.V1.EventType.EventType@ -}
data Link'WorkflowEvent'RequestIdReference
  = Link'WorkflowEvent'RequestIdReference'_constructor {_Link'WorkflowEvent'RequestIdReference'requestId :: !Data.Text.Text,
                                                        _Link'WorkflowEvent'RequestIdReference'eventType :: !Proto.Temporal.Api.Enums.V1.EventType.EventType,
                                                        _Link'WorkflowEvent'RequestIdReference'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Link'WorkflowEvent'RequestIdReference where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Link'WorkflowEvent'RequestIdReference "requestId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'WorkflowEvent'RequestIdReference'requestId
           (\ x__ y__
              -> x__ {_Link'WorkflowEvent'RequestIdReference'requestId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Link'WorkflowEvent'RequestIdReference "eventType" Proto.Temporal.Api.Enums.V1.EventType.EventType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'WorkflowEvent'RequestIdReference'eventType
           (\ x__ y__
              -> x__ {_Link'WorkflowEvent'RequestIdReference'eventType = y__}))
        Prelude.id
instance Data.ProtoLens.Message Link'WorkflowEvent'RequestIdReference where
  messageName _
    = Data.Text.pack
        "temporal.api.common.v1.Link.WorkflowEvent.RequestIdReference"
  packedMessageDescriptor _
    = "\n\
      \\DC2RequestIdReference\DC2\GS\n\
      \\n\
      \request_id\CAN\SOH \SOH(\tR\trequestId\DC2?\n\
      \\n\
      \event_type\CAN\STX \SOH(\SO2 .temporal.api.enums.v1.EventTypeR\teventType"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        requestId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestId")) ::
              Data.ProtoLens.FieldDescriptor Link'WorkflowEvent'RequestIdReference
        eventType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "event_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.EventType.EventType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"eventType")) ::
              Data.ProtoLens.FieldDescriptor Link'WorkflowEvent'RequestIdReference
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, requestId__field_descriptor),
           (Data.ProtoLens.Tag 2, eventType__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Link'WorkflowEvent'RequestIdReference'_unknownFields
        (\ x__ y__
           -> x__
                {_Link'WorkflowEvent'RequestIdReference'_unknownFields = y__})
  defMessage
    = Link'WorkflowEvent'RequestIdReference'_constructor
        {_Link'WorkflowEvent'RequestIdReference'requestId = Data.ProtoLens.fieldDefault,
         _Link'WorkflowEvent'RequestIdReference'eventType = Data.ProtoLens.fieldDefault,
         _Link'WorkflowEvent'RequestIdReference'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Link'WorkflowEvent'RequestIdReference
          -> Data.ProtoLens.Encoding.Bytes.Parser Link'WorkflowEvent'RequestIdReference
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
                                       "request_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"requestId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "event_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"eventType") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RequestIdReference"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"requestId") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"eventType") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Link'WorkflowEvent'RequestIdReference where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Link'WorkflowEvent'RequestIdReference'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Link'WorkflowEvent'RequestIdReference'requestId x__)
                (Control.DeepSeq.deepseq
                   (_Link'WorkflowEvent'RequestIdReference'eventType x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.fields' @:: Lens' Memo (Data.Map.Map Data.Text.Text Payload)@ -}
data Memo
  = Memo'_constructor {_Memo'fields :: !(Data.Map.Map Data.Text.Text Payload),
                       _Memo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Memo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Memo "fields" (Data.Map.Map Data.Text.Text Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Memo'fields (\ x__ y__ -> x__ {_Memo'fields = y__}))
        Prelude.id
instance Data.ProtoLens.Message Memo where
  messageName _ = Data.Text.pack "temporal.api.common.v1.Memo"
  packedMessageDescriptor _
    = "\n\
      \\EOTMemo\DC2@\n\
      \\ACKfields\CAN\SOH \ETX(\v2(.temporal.api.common.v1.Memo.FieldsEntryR\ACKfields\SUBZ\n\
      \\vFieldsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fields__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fields"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Memo'FieldsEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"fields")) ::
              Data.ProtoLens.FieldDescriptor Memo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fields__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Memo'_unknownFields
        (\ x__ y__ -> x__ {_Memo'_unknownFields = y__})
  defMessage
    = Memo'_constructor
        {_Memo'fields = Data.Map.empty, _Memo'_unknownFields = []}
  parseMessage
    = let
        loop :: Memo -> Data.ProtoLens.Encoding.Bytes.Parser Memo
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
                          -> do !(entry :: Memo'FieldsEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                  (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                      Data.ProtoLens.Encoding.Bytes.isolate
                                                                        (Prelude.fromIntegral len)
                                                                        Data.ProtoLens.parseMessage)
                                                                  "fields"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"fields")
                                        (\ !t -> Data.Map.insert key value t) x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Memo"
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
                                    (Data.ProtoLens.defMessage :: Memo'FieldsEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"fields") _x))))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Memo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Memo'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Memo'fields x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.key' @:: Lens' Memo'FieldsEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.value' @:: Lens' Memo'FieldsEntry Payload@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'value' @:: Lens' Memo'FieldsEntry (Prelude.Maybe Payload)@ -}
data Memo'FieldsEntry
  = Memo'FieldsEntry'_constructor {_Memo'FieldsEntry'key :: !Data.Text.Text,
                                   _Memo'FieldsEntry'value :: !(Prelude.Maybe Payload),
                                   _Memo'FieldsEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Memo'FieldsEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Memo'FieldsEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Memo'FieldsEntry'key
           (\ x__ y__ -> x__ {_Memo'FieldsEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Memo'FieldsEntry "value" Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Memo'FieldsEntry'value
           (\ x__ y__ -> x__ {_Memo'FieldsEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Memo'FieldsEntry "maybe'value" (Prelude.Maybe Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Memo'FieldsEntry'value
           (\ x__ y__ -> x__ {_Memo'FieldsEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Memo'FieldsEntry where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.Memo.FieldsEntry"
  packedMessageDescriptor _
    = "\n\
      \\vFieldsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor Memo'FieldsEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor Memo'FieldsEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Memo'FieldsEntry'_unknownFields
        (\ x__ y__ -> x__ {_Memo'FieldsEntry'_unknownFields = y__})
  defMessage
    = Memo'FieldsEntry'_constructor
        {_Memo'FieldsEntry'key = Data.ProtoLens.fieldDefault,
         _Memo'FieldsEntry'value = Prelude.Nothing,
         _Memo'FieldsEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Memo'FieldsEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser Memo'FieldsEntry
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
          (do loop Data.ProtoLens.defMessage) "FieldsEntry"
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
instance Control.DeepSeq.NFData Memo'FieldsEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Memo'FieldsEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Memo'FieldsEntry'key x__)
                (Control.DeepSeq.deepseq (_Memo'FieldsEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.nonfirstLocalActivityExecutionAttempts' @:: Lens' MeteringMetadata Data.Word.Word32@ -}
data MeteringMetadata
  = MeteringMetadata'_constructor {_MeteringMetadata'nonfirstLocalActivityExecutionAttempts :: !Data.Word.Word32,
                                   _MeteringMetadata'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MeteringMetadata where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MeteringMetadata "nonfirstLocalActivityExecutionAttempts" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MeteringMetadata'nonfirstLocalActivityExecutionAttempts
           (\ x__ y__
              -> x__
                   {_MeteringMetadata'nonfirstLocalActivityExecutionAttempts = y__}))
        Prelude.id
instance Data.ProtoLens.Message MeteringMetadata where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.MeteringMetadata"
  packedMessageDescriptor _
    = "\n\
      \\DLEMeteringMetadata\DC2Z\n\
      \*nonfirst_local_activity_execution_attempts\CAN\r \SOH(\rR&nonfirstLocalActivityExecutionAttempts"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nonfirstLocalActivityExecutionAttempts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nonfirst_local_activity_execution_attempts"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field
                    @"nonfirstLocalActivityExecutionAttempts")) ::
              Data.ProtoLens.FieldDescriptor MeteringMetadata
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 13, 
            nonfirstLocalActivityExecutionAttempts__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MeteringMetadata'_unknownFields
        (\ x__ y__ -> x__ {_MeteringMetadata'_unknownFields = y__})
  defMessage
    = MeteringMetadata'_constructor
        {_MeteringMetadata'nonfirstLocalActivityExecutionAttempts = Data.ProtoLens.fieldDefault,
         _MeteringMetadata'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MeteringMetadata
          -> Data.ProtoLens.Encoding.Bytes.Parser MeteringMetadata
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
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nonfirst_local_activity_execution_attempts"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"nonfirstLocalActivityExecutionAttempts")
                                     y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MeteringMetadata"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field
                         @"nonfirstLocalActivityExecutionAttempts")
                      _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 104)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MeteringMetadata where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MeteringMetadata'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MeteringMetadata'nonfirstLocalActivityExecutionAttempts x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.attachRequestId' @:: Lens' OnConflictOptions Prelude.Bool@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.attachCompletionCallbacks' @:: Lens' OnConflictOptions Prelude.Bool@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.attachLinks' @:: Lens' OnConflictOptions Prelude.Bool@ -}
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
    = Data.Text.pack "temporal.api.common.v1.OnConflictOptions"
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
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.metadata' @:: Lens' Payload (Data.Map.Map Data.Text.Text Data.ByteString.ByteString)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.data'' @:: Lens' Payload Data.ByteString.ByteString@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.externalPayloads' @:: Lens' Payload [Payload'ExternalPayloadDetails]@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.vec'externalPayloads' @:: Lens' Payload (Data.Vector.Vector Payload'ExternalPayloadDetails)@ -}
data Payload
  = Payload'_constructor {_Payload'metadata :: !(Data.Map.Map Data.Text.Text Data.ByteString.ByteString),
                          _Payload'data' :: !Data.ByteString.ByteString,
                          _Payload'externalPayloads :: !(Data.Vector.Vector Payload'ExternalPayloadDetails),
                          _Payload'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Payload where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Payload "metadata" (Data.Map.Map Data.Text.Text Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Payload'metadata (\ x__ y__ -> x__ {_Payload'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Payload "data'" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Payload'data' (\ x__ y__ -> x__ {_Payload'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Payload "externalPayloads" [Payload'ExternalPayloadDetails] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Payload'externalPayloads
           (\ x__ y__ -> x__ {_Payload'externalPayloads = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Payload "vec'externalPayloads" (Data.Vector.Vector Payload'ExternalPayloadDetails) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Payload'externalPayloads
           (\ x__ y__ -> x__ {_Payload'externalPayloads = y__}))
        Prelude.id
instance Data.ProtoLens.Message Payload where
  messageName _ = Data.Text.pack "temporal.api.common.v1.Payload"
  packedMessageDescriptor _
    = "\n\
      \\aPayload\DC2I\n\
      \\bmetadata\CAN\SOH \ETX(\v2-.temporal.api.common.v1.Payload.MetadataEntryR\bmetadata\DC2\DC2\n\
      \\EOTdata\CAN\STX \SOH(\fR\EOTdata\DC2c\n\
      \\DC1external_payloads\CAN\ETX \ETX(\v26.temporal.api.common.v1.Payload.ExternalPayloadDetailsR\DLEexternalPayloads\SUB;\n\
      \\rMetadataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\fR\ENQvalue:\STX8\SOH\SUB7\n\
      \\SYNExternalPayloadDetails\DC2\GS\n\
      \\n\
      \size_bytes\CAN\SOH \SOH(\ETXR\tsizeBytes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Payload'MetadataEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor Payload
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"data'")) ::
              Data.ProtoLens.FieldDescriptor Payload
        externalPayloads__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "external_payloads"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Payload'ExternalPayloadDetails)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"externalPayloads")) ::
              Data.ProtoLens.FieldDescriptor Payload
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, metadata__field_descriptor),
           (Data.ProtoLens.Tag 2, data'__field_descriptor),
           (Data.ProtoLens.Tag 3, externalPayloads__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Payload'_unknownFields
        (\ x__ y__ -> x__ {_Payload'_unknownFields = y__})
  defMessage
    = Payload'_constructor
        {_Payload'metadata = Data.Map.empty,
         _Payload'data' = Data.ProtoLens.fieldDefault,
         _Payload'externalPayloads = Data.Vector.Generic.empty,
         _Payload'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Payload
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Payload'ExternalPayloadDetails
             -> Data.ProtoLens.Encoding.Bytes.Parser Payload
        loop x mutable'externalPayloads
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'externalPayloads <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'externalPayloads)
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
                              (Data.ProtoLens.Field.field @"vec'externalPayloads")
                              frozen'externalPayloads x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !(entry :: Payload'MetadataEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                           Data.ProtoLens.Encoding.Bytes.isolate
                                                                             (Prelude.fromIntegral
                                                                                len)
                                                                             Data.ProtoLens.parseMessage)
                                                                       "metadata"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"metadata")
                                        (\ !t -> Data.Map.insert key value t) x)
                                     mutable'externalPayloads)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "data"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
                                  mutable'externalPayloads
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "external_payloads"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'externalPayloads y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'externalPayloads
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'externalPayloads <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'externalPayloads)
          "Payload"
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
                                    (Data.ProtoLens.defMessage :: Payload'MetadataEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"metadata") _x))))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'externalPayloads") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Payload where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Payload'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Payload'metadata x__)
                (Control.DeepSeq.deepseq
                   (_Payload'data' x__)
                   (Control.DeepSeq.deepseq (_Payload'externalPayloads x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.sizeBytes' @:: Lens' Payload'ExternalPayloadDetails Data.Int.Int64@ -}
data Payload'ExternalPayloadDetails
  = Payload'ExternalPayloadDetails'_constructor {_Payload'ExternalPayloadDetails'sizeBytes :: !Data.Int.Int64,
                                                 _Payload'ExternalPayloadDetails'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Payload'ExternalPayloadDetails where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Payload'ExternalPayloadDetails "sizeBytes" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Payload'ExternalPayloadDetails'sizeBytes
           (\ x__ y__
              -> x__ {_Payload'ExternalPayloadDetails'sizeBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Message Payload'ExternalPayloadDetails where
  messageName _
    = Data.Text.pack
        "temporal.api.common.v1.Payload.ExternalPayloadDetails"
  packedMessageDescriptor _
    = "\n\
      \\SYNExternalPayloadDetails\DC2\GS\n\
      \\n\
      \size_bytes\CAN\SOH \SOH(\ETXR\tsizeBytes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sizeBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "size_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sizeBytes")) ::
              Data.ProtoLens.FieldDescriptor Payload'ExternalPayloadDetails
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, sizeBytes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Payload'ExternalPayloadDetails'_unknownFields
        (\ x__ y__
           -> x__ {_Payload'ExternalPayloadDetails'_unknownFields = y__})
  defMessage
    = Payload'ExternalPayloadDetails'_constructor
        {_Payload'ExternalPayloadDetails'sizeBytes = Data.ProtoLens.fieldDefault,
         _Payload'ExternalPayloadDetails'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Payload'ExternalPayloadDetails
          -> Data.ProtoLens.Encoding.Bytes.Parser Payload'ExternalPayloadDetails
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
                                       "size_bytes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sizeBytes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ExternalPayloadDetails"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sizeBytes") _x
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
instance Control.DeepSeq.NFData Payload'ExternalPayloadDetails where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Payload'ExternalPayloadDetails'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Payload'ExternalPayloadDetails'sizeBytes x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.key' @:: Lens' Payload'MetadataEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.value' @:: Lens' Payload'MetadataEntry Data.ByteString.ByteString@ -}
data Payload'MetadataEntry
  = Payload'MetadataEntry'_constructor {_Payload'MetadataEntry'key :: !Data.Text.Text,
                                        _Payload'MetadataEntry'value :: !Data.ByteString.ByteString,
                                        _Payload'MetadataEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Payload'MetadataEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Payload'MetadataEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Payload'MetadataEntry'key
           (\ x__ y__ -> x__ {_Payload'MetadataEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Payload'MetadataEntry "value" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Payload'MetadataEntry'value
           (\ x__ y__ -> x__ {_Payload'MetadataEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Payload'MetadataEntry where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.Payload.MetadataEntry"
  packedMessageDescriptor _
    = "\n\
      \\rMetadataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\fR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor Payload'MetadataEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor Payload'MetadataEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Payload'MetadataEntry'_unknownFields
        (\ x__ y__ -> x__ {_Payload'MetadataEntry'_unknownFields = y__})
  defMessage
    = Payload'MetadataEntry'_constructor
        {_Payload'MetadataEntry'key = Data.ProtoLens.fieldDefault,
         _Payload'MetadataEntry'value = Data.ProtoLens.fieldDefault,
         _Payload'MetadataEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Payload'MetadataEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser Payload'MetadataEntry
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
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
          (do loop Data.ProtoLens.defMessage) "MetadataEntry"
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
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Payload'MetadataEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Payload'MetadataEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Payload'MetadataEntry'key x__)
                (Control.DeepSeq.deepseq (_Payload'MetadataEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.payloads' @:: Lens' Payloads [Payload]@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.vec'payloads' @:: Lens' Payloads (Data.Vector.Vector Payload)@ -}
data Payloads
  = Payloads'_constructor {_Payloads'payloads :: !(Data.Vector.Vector Payload),
                           _Payloads'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Payloads where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Payloads "payloads" [Payload] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Payloads'payloads (\ x__ y__ -> x__ {_Payloads'payloads = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Payloads "vec'payloads" (Data.Vector.Vector Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Payloads'payloads (\ x__ y__ -> x__ {_Payloads'payloads = y__}))
        Prelude.id
instance Data.ProtoLens.Message Payloads where
  messageName _ = Data.Text.pack "temporal.api.common.v1.Payloads"
  packedMessageDescriptor _
    = "\n\
      \\bPayloads\DC2;\n\
      \\bpayloads\CAN\SOH \ETX(\v2\US.temporal.api.common.v1.PayloadR\bpayloads"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        payloads__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payloads"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Payload)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"payloads")) ::
              Data.ProtoLens.FieldDescriptor Payloads
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, payloads__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Payloads'_unknownFields
        (\ x__ y__ -> x__ {_Payloads'_unknownFields = y__})
  defMessage
    = Payloads'_constructor
        {_Payloads'payloads = Data.Vector.Generic.empty,
         _Payloads'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Payloads
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Payload
             -> Data.ProtoLens.Encoding.Bytes.Parser Payloads
        loop x mutable'payloads
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'payloads <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'payloads)
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
                              (Data.ProtoLens.Field.field @"vec'payloads") frozen'payloads x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "payloads"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'payloads y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'payloads
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'payloads <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'payloads)
          "Payloads"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'payloads") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Payloads where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Payloads'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Payloads'payloads x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.type'' @:: Lens' Principal Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.name' @:: Lens' Principal Data.Text.Text@ -}
data Principal
  = Principal'_constructor {_Principal'type' :: !Data.Text.Text,
                            _Principal'name :: !Data.Text.Text,
                            _Principal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Principal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Principal "type'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'type' (\ x__ y__ -> x__ {_Principal'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Principal "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'name (\ x__ y__ -> x__ {_Principal'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message Principal where
  messageName _ = Data.Text.pack "temporal.api.common.v1.Principal"
  packedMessageDescriptor _
    = "\n\
      \\tPrincipal\DC2\DC2\n\
      \\EOTtype\CAN\SOH \SOH(\tR\EOTtype\DC2\DC2\n\
      \\EOTname\CAN\STX \SOH(\tR\EOTname"
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
              Data.ProtoLens.FieldDescriptor Principal
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor Principal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Principal'_unknownFields
        (\ x__ y__ -> x__ {_Principal'_unknownFields = y__})
  defMessage
    = Principal'_constructor
        {_Principal'type' = Data.ProtoLens.fieldDefault,
         _Principal'name = Data.ProtoLens.fieldDefault,
         _Principal'_unknownFields = []}
  parseMessage
    = let
        loop :: Principal -> Data.ProtoLens.Encoding.Bytes.Parser Principal
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
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Principal"
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Principal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Principal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Principal'type' x__)
                (Control.DeepSeq.deepseq (_Principal'name x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.priorityKey' @:: Lens' Priority Data.Int.Int32@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.fairnessKey' @:: Lens' Priority Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.fairnessWeight' @:: Lens' Priority Prelude.Float@ -}
data Priority
  = Priority'_constructor {_Priority'priorityKey :: !Data.Int.Int32,
                           _Priority'fairnessKey :: !Data.Text.Text,
                           _Priority'fairnessWeight :: !Prelude.Float,
                           _Priority'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Priority where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Priority "priorityKey" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Priority'priorityKey
           (\ x__ y__ -> x__ {_Priority'priorityKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Priority "fairnessKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Priority'fairnessKey
           (\ x__ y__ -> x__ {_Priority'fairnessKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Priority "fairnessWeight" Prelude.Float where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Priority'fairnessWeight
           (\ x__ y__ -> x__ {_Priority'fairnessWeight = y__}))
        Prelude.id
instance Data.ProtoLens.Message Priority where
  messageName _ = Data.Text.pack "temporal.api.common.v1.Priority"
  packedMessageDescriptor _
    = "\n\
      \\bPriority\DC2!\n\
      \\fpriority_key\CAN\SOH \SOH(\ENQR\vpriorityKey\DC2!\n\
      \\ffairness_key\CAN\STX \SOH(\tR\vfairnessKey\DC2'\n\
      \\SIfairness_weight\CAN\ETX \SOH(\STXR\SOfairnessWeight"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        priorityKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "priority_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"priorityKey")) ::
              Data.ProtoLens.FieldDescriptor Priority
        fairnessKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fairness_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fairnessKey")) ::
              Data.ProtoLens.FieldDescriptor Priority
        fairnessWeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fairness_weight"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fairnessWeight")) ::
              Data.ProtoLens.FieldDescriptor Priority
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, priorityKey__field_descriptor),
           (Data.ProtoLens.Tag 2, fairnessKey__field_descriptor),
           (Data.ProtoLens.Tag 3, fairnessWeight__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Priority'_unknownFields
        (\ x__ y__ -> x__ {_Priority'_unknownFields = y__})
  defMessage
    = Priority'_constructor
        {_Priority'priorityKey = Data.ProtoLens.fieldDefault,
         _Priority'fairnessKey = Data.ProtoLens.fieldDefault,
         _Priority'fairnessWeight = Data.ProtoLens.fieldDefault,
         _Priority'_unknownFields = []}
  parseMessage
    = let
        loop :: Priority -> Data.ProtoLens.Encoding.Bytes.Parser Priority
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
                                       "priority_key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"priorityKey") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "fairness_key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fairnessKey") y x)
                        29
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToFloat
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "fairness_weight"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"fairnessWeight") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Priority"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"priorityKey") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"fairnessKey") _x
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
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"fairnessWeight") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 29)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putFixed32
                               Data.ProtoLens.Encoding.Bytes.floatToWord _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Priority where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Priority'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Priority'priorityKey x__)
                (Control.DeepSeq.deepseq
                   (_Priority'fairnessKey x__)
                   (Control.DeepSeq.deepseq (_Priority'fairnessWeight x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.resetReapplyType' @:: Lens' ResetOptions Proto.Temporal.Api.Enums.V1.Reset.ResetReapplyType@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.currentRunOnly' @:: Lens' ResetOptions Prelude.Bool@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.resetReapplyExcludeTypes' @:: Lens' ResetOptions [Proto.Temporal.Api.Enums.V1.Reset.ResetReapplyExcludeType]@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.vec'resetReapplyExcludeTypes' @:: Lens' ResetOptions (Data.Vector.Vector Proto.Temporal.Api.Enums.V1.Reset.ResetReapplyExcludeType)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'target' @:: Lens' ResetOptions (Prelude.Maybe ResetOptions'Target)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'firstWorkflowTask' @:: Lens' ResetOptions (Prelude.Maybe Proto.Google.Protobuf.Empty.Empty)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.firstWorkflowTask' @:: Lens' ResetOptions Proto.Google.Protobuf.Empty.Empty@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'lastWorkflowTask' @:: Lens' ResetOptions (Prelude.Maybe Proto.Google.Protobuf.Empty.Empty)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.lastWorkflowTask' @:: Lens' ResetOptions Proto.Google.Protobuf.Empty.Empty@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'workflowTaskId' @:: Lens' ResetOptions (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.workflowTaskId' @:: Lens' ResetOptions Data.Int.Int64@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'buildId' @:: Lens' ResetOptions (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.buildId' @:: Lens' ResetOptions Data.Text.Text@ -}
data ResetOptions
  = ResetOptions'_constructor {_ResetOptions'resetReapplyType :: !Proto.Temporal.Api.Enums.V1.Reset.ResetReapplyType,
                               _ResetOptions'currentRunOnly :: !Prelude.Bool,
                               _ResetOptions'resetReapplyExcludeTypes :: !(Data.Vector.Vector Proto.Temporal.Api.Enums.V1.Reset.ResetReapplyExcludeType),
                               _ResetOptions'target :: !(Prelude.Maybe ResetOptions'Target),
                               _ResetOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResetOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ResetOptions'Target
  = ResetOptions'FirstWorkflowTask !Proto.Google.Protobuf.Empty.Empty |
    ResetOptions'LastWorkflowTask !Proto.Google.Protobuf.Empty.Empty |
    ResetOptions'WorkflowTaskId !Data.Int.Int64 |
    ResetOptions'BuildId !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ResetOptions "resetReapplyType" Proto.Temporal.Api.Enums.V1.Reset.ResetReapplyType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResetOptions'resetReapplyType
           (\ x__ y__ -> x__ {_ResetOptions'resetReapplyType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResetOptions "currentRunOnly" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResetOptions'currentRunOnly
           (\ x__ y__ -> x__ {_ResetOptions'currentRunOnly = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResetOptions "resetReapplyExcludeTypes" [Proto.Temporal.Api.Enums.V1.Reset.ResetReapplyExcludeType] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResetOptions'resetReapplyExcludeTypes
           (\ x__ y__ -> x__ {_ResetOptions'resetReapplyExcludeTypes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ResetOptions "vec'resetReapplyExcludeTypes" (Data.Vector.Vector Proto.Temporal.Api.Enums.V1.Reset.ResetReapplyExcludeType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResetOptions'resetReapplyExcludeTypes
           (\ x__ y__ -> x__ {_ResetOptions'resetReapplyExcludeTypes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResetOptions "maybe'target" (Prelude.Maybe ResetOptions'Target) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResetOptions'target
           (\ x__ y__ -> x__ {_ResetOptions'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResetOptions "maybe'firstWorkflowTask" (Prelude.Maybe Proto.Google.Protobuf.Empty.Empty) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResetOptions'target
           (\ x__ y__ -> x__ {_ResetOptions'target = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ResetOptions'FirstWorkflowTask x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ResetOptions'FirstWorkflowTask y__))
instance Data.ProtoLens.Field.HasField ResetOptions "firstWorkflowTask" Proto.Google.Protobuf.Empty.Empty where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResetOptions'target
           (\ x__ y__ -> x__ {_ResetOptions'target = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ResetOptions'FirstWorkflowTask x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ResetOptions'FirstWorkflowTask y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ResetOptions "maybe'lastWorkflowTask" (Prelude.Maybe Proto.Google.Protobuf.Empty.Empty) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResetOptions'target
           (\ x__ y__ -> x__ {_ResetOptions'target = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ResetOptions'LastWorkflowTask x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ResetOptions'LastWorkflowTask y__))
instance Data.ProtoLens.Field.HasField ResetOptions "lastWorkflowTask" Proto.Google.Protobuf.Empty.Empty where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResetOptions'target
           (\ x__ y__ -> x__ {_ResetOptions'target = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ResetOptions'LastWorkflowTask x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ResetOptions'LastWorkflowTask y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ResetOptions "maybe'workflowTaskId" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResetOptions'target
           (\ x__ y__ -> x__ {_ResetOptions'target = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ResetOptions'WorkflowTaskId x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ResetOptions'WorkflowTaskId y__))
instance Data.ProtoLens.Field.HasField ResetOptions "workflowTaskId" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResetOptions'target
           (\ x__ y__ -> x__ {_ResetOptions'target = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ResetOptions'WorkflowTaskId x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ResetOptions'WorkflowTaskId y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField ResetOptions "maybe'buildId" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResetOptions'target
           (\ x__ y__ -> x__ {_ResetOptions'target = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ResetOptions'BuildId x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ResetOptions'BuildId y__))
instance Data.ProtoLens.Field.HasField ResetOptions "buildId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResetOptions'target
           (\ x__ y__ -> x__ {_ResetOptions'target = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ResetOptions'BuildId x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ResetOptions'BuildId y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message ResetOptions where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.ResetOptions"
  packedMessageDescriptor _
    = "\n\
      \\fResetOptions\DC2H\n\
      \\DC3first_workflow_task\CAN\SOH \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\DC1firstWorkflowTask\DC2F\n\
      \\DC2last_workflow_task\CAN\STX \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\DLElastWorkflowTask\DC2*\n\
      \\DLEworkflow_task_id\CAN\ETX \SOH(\ETXH\NULR\SOworkflowTaskId\DC2\ESC\n\
      \\bbuild_id\CAN\EOT \SOH(\tH\NULR\abuildId\DC2Y\n\
      \\DC2reset_reapply_type\CAN\n\
      \ \SOH(\SO2'.temporal.api.enums.v1.ResetReapplyTypeR\DLEresetReapplyTypeB\STX\CAN\SOH\DC2(\n\
      \\DLEcurrent_run_only\CAN\v \SOH(\bR\SOcurrentRunOnly\DC2m\n\
      \\ESCreset_reapply_exclude_types\CAN\f \ETX(\SO2..temporal.api.enums.v1.ResetReapplyExcludeTypeR\CANresetReapplyExcludeTypesB\b\n\
      \\ACKtarget"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        resetReapplyType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reset_reapply_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Reset.ResetReapplyType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resetReapplyType")) ::
              Data.ProtoLens.FieldDescriptor ResetOptions
        currentRunOnly__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_run_only"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"currentRunOnly")) ::
              Data.ProtoLens.FieldDescriptor ResetOptions
        resetReapplyExcludeTypes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reset_reapply_exclude_types"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Reset.ResetReapplyExcludeType)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"resetReapplyExcludeTypes")) ::
              Data.ProtoLens.FieldDescriptor ResetOptions
        firstWorkflowTask__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "first_workflow_task"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Empty.Empty)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'firstWorkflowTask")) ::
              Data.ProtoLens.FieldDescriptor ResetOptions
        lastWorkflowTask__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_workflow_task"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Empty.Empty)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastWorkflowTask")) ::
              Data.ProtoLens.FieldDescriptor ResetOptions
        workflowTaskId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_task_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowTaskId")) ::
              Data.ProtoLens.FieldDescriptor ResetOptions
        buildId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "build_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'buildId")) ::
              Data.ProtoLens.FieldDescriptor ResetOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 10, resetReapplyType__field_descriptor),
           (Data.ProtoLens.Tag 11, currentRunOnly__field_descriptor),
           (Data.ProtoLens.Tag 12, 
            resetReapplyExcludeTypes__field_descriptor),
           (Data.ProtoLens.Tag 1, firstWorkflowTask__field_descriptor),
           (Data.ProtoLens.Tag 2, lastWorkflowTask__field_descriptor),
           (Data.ProtoLens.Tag 3, workflowTaskId__field_descriptor),
           (Data.ProtoLens.Tag 4, buildId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResetOptions'_unknownFields
        (\ x__ y__ -> x__ {_ResetOptions'_unknownFields = y__})
  defMessage
    = ResetOptions'_constructor
        {_ResetOptions'resetReapplyType = Data.ProtoLens.fieldDefault,
         _ResetOptions'currentRunOnly = Data.ProtoLens.fieldDefault,
         _ResetOptions'resetReapplyExcludeTypes = Data.Vector.Generic.empty,
         _ResetOptions'target = Prelude.Nothing,
         _ResetOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResetOptions
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Enums.V1.Reset.ResetReapplyExcludeType
             -> Data.ProtoLens.Encoding.Bytes.Parser ResetOptions
        loop x mutable'resetReapplyExcludeTypes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'resetReapplyExcludeTypes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                              mutable'resetReapplyExcludeTypes)
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
                              (Data.ProtoLens.Field.field @"vec'resetReapplyExcludeTypes")
                              frozen'resetReapplyExcludeTypes x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "reset_reapply_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"resetReapplyType") y x)
                                  mutable'resetReapplyExcludeTypes
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "current_run_only"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"currentRunOnly") y x)
                                  mutable'resetReapplyExcludeTypes
                        96
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.toEnum
                                           (Prelude.fmap
                                              Prelude.fromIntegral
                                              Data.ProtoLens.Encoding.Bytes.getVarInt))
                                        "reset_reapply_exclude_types"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'resetReapplyExcludeTypes y)
                                loop x v
                        98
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.toEnum
                                                                       (Prelude.fmap
                                                                          Prelude.fromIntegral
                                                                          Data.ProtoLens.Encoding.Bytes.getVarInt))
                                                                    "reset_reapply_exclude_types"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'resetReapplyExcludeTypes)
                                loop x y
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "first_workflow_task"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"firstWorkflowTask") y x)
                                  mutable'resetReapplyExcludeTypes
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_workflow_task"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastWorkflowTask") y x)
                                  mutable'resetReapplyExcludeTypes
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "workflow_task_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowTaskId") y x)
                                  mutable'resetReapplyExcludeTypes
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "build_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"buildId") y x)
                                  mutable'resetReapplyExcludeTypes
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'resetReapplyExcludeTypes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'resetReapplyExcludeTypes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'resetReapplyExcludeTypes)
          "ResetOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"resetReapplyType") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"currentRunOnly") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                            _v))
                ((Data.Monoid.<>)
                   (let
                      p = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'resetReapplyExcludeTypes") _x
                    in
                      if Data.Vector.Generic.null p then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                            ((\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               (Data.ProtoLens.Encoding.Bytes.runBuilder
                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                     ((Prelude..)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           Prelude.fromIntegral)
                                        Prelude.fromEnum)
                                     p))))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just (ResetOptions'FirstWorkflowTask v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (ResetOptions'LastWorkflowTask v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (ResetOptions'WorkflowTaskId v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral v)
                         (Prelude.Just (ResetOptions'BuildId v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.Text.Encoding.encodeUtf8 v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ResetOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResetOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResetOptions'resetReapplyType x__)
                (Control.DeepSeq.deepseq
                   (_ResetOptions'currentRunOnly x__)
                   (Control.DeepSeq.deepseq
                      (_ResetOptions'resetReapplyExcludeTypes x__)
                      (Control.DeepSeq.deepseq (_ResetOptions'target x__) ()))))
instance Control.DeepSeq.NFData ResetOptions'Target where
  rnf (ResetOptions'FirstWorkflowTask x__) = Control.DeepSeq.rnf x__
  rnf (ResetOptions'LastWorkflowTask x__) = Control.DeepSeq.rnf x__
  rnf (ResetOptions'WorkflowTaskId x__) = Control.DeepSeq.rnf x__
  rnf (ResetOptions'BuildId x__) = Control.DeepSeq.rnf x__
_ResetOptions'FirstWorkflowTask ::
  Data.ProtoLens.Prism.Prism' ResetOptions'Target Proto.Google.Protobuf.Empty.Empty
_ResetOptions'FirstWorkflowTask
  = Data.ProtoLens.Prism.prism'
      ResetOptions'FirstWorkflowTask
      (\ p__
         -> case p__ of
              (ResetOptions'FirstWorkflowTask p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ResetOptions'LastWorkflowTask ::
  Data.ProtoLens.Prism.Prism' ResetOptions'Target Proto.Google.Protobuf.Empty.Empty
_ResetOptions'LastWorkflowTask
  = Data.ProtoLens.Prism.prism'
      ResetOptions'LastWorkflowTask
      (\ p__
         -> case p__ of
              (ResetOptions'LastWorkflowTask p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ResetOptions'WorkflowTaskId ::
  Data.ProtoLens.Prism.Prism' ResetOptions'Target Data.Int.Int64
_ResetOptions'WorkflowTaskId
  = Data.ProtoLens.Prism.prism'
      ResetOptions'WorkflowTaskId
      (\ p__
         -> case p__ of
              (ResetOptions'WorkflowTaskId p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ResetOptions'BuildId ::
  Data.ProtoLens.Prism.Prism' ResetOptions'Target Data.Text.Text
_ResetOptions'BuildId
  = Data.ProtoLens.Prism.prism'
      ResetOptions'BuildId
      (\ p__
         -> case p__ of
              (ResetOptions'BuildId p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.type'' @:: Lens' ResolvedPrincipal Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.nameAtWriteTime' @:: Lens' ResolvedPrincipal Data.Text.Text@ -}
data ResolvedPrincipal
  = ResolvedPrincipal'_constructor {_ResolvedPrincipal'type' :: !Data.Text.Text,
                                    _ResolvedPrincipal'nameAtWriteTime :: !Data.Text.Text,
                                    _ResolvedPrincipal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResolvedPrincipal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResolvedPrincipal "type'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolvedPrincipal'type'
           (\ x__ y__ -> x__ {_ResolvedPrincipal'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResolvedPrincipal "nameAtWriteTime" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolvedPrincipal'nameAtWriteTime
           (\ x__ y__ -> x__ {_ResolvedPrincipal'nameAtWriteTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResolvedPrincipal where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.ResolvedPrincipal"
  packedMessageDescriptor _
    = "\n\
      \\DC1ResolvedPrincipal\DC2\DC2\n\
      \\EOTtype\CAN\SOH \SOH(\tR\EOTtype\DC2+\n\
      \\DC2name_at_write_time\CAN\STX \SOH(\tR\SInameAtWriteTime"
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
              Data.ProtoLens.FieldDescriptor ResolvedPrincipal
        nameAtWriteTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name_at_write_time"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"nameAtWriteTime")) ::
              Data.ProtoLens.FieldDescriptor ResolvedPrincipal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, nameAtWriteTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResolvedPrincipal'_unknownFields
        (\ x__ y__ -> x__ {_ResolvedPrincipal'_unknownFields = y__})
  defMessage
    = ResolvedPrincipal'_constructor
        {_ResolvedPrincipal'type' = Data.ProtoLens.fieldDefault,
         _ResolvedPrincipal'nameAtWriteTime = Data.ProtoLens.fieldDefault,
         _ResolvedPrincipal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResolvedPrincipal
          -> Data.ProtoLens.Encoding.Bytes.Parser ResolvedPrincipal
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
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "name_at_write_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"nameAtWriteTime") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ResolvedPrincipal"
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
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"nameAtWriteTime") _x
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
instance Control.DeepSeq.NFData ResolvedPrincipal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResolvedPrincipal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResolvedPrincipal'type' x__)
                (Control.DeepSeq.deepseq
                   (_ResolvedPrincipal'nameAtWriteTime x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.initialInterval' @:: Lens' RetryPolicy Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'initialInterval' @:: Lens' RetryPolicy (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.backoffCoefficient' @:: Lens' RetryPolicy Prelude.Double@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maximumInterval' @:: Lens' RetryPolicy Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'maximumInterval' @:: Lens' RetryPolicy (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maximumAttempts' @:: Lens' RetryPolicy Data.Int.Int32@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.nonRetryableErrorTypes' @:: Lens' RetryPolicy [Data.Text.Text]@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.vec'nonRetryableErrorTypes' @:: Lens' RetryPolicy (Data.Vector.Vector Data.Text.Text)@ -}
data RetryPolicy
  = RetryPolicy'_constructor {_RetryPolicy'initialInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                              _RetryPolicy'backoffCoefficient :: !Prelude.Double,
                              _RetryPolicy'maximumInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                              _RetryPolicy'maximumAttempts :: !Data.Int.Int32,
                              _RetryPolicy'nonRetryableErrorTypes :: !(Data.Vector.Vector Data.Text.Text),
                              _RetryPolicy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RetryPolicy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RetryPolicy "initialInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RetryPolicy'initialInterval
           (\ x__ y__ -> x__ {_RetryPolicy'initialInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RetryPolicy "maybe'initialInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RetryPolicy'initialInterval
           (\ x__ y__ -> x__ {_RetryPolicy'initialInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RetryPolicy "backoffCoefficient" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RetryPolicy'backoffCoefficient
           (\ x__ y__ -> x__ {_RetryPolicy'backoffCoefficient = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RetryPolicy "maximumInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RetryPolicy'maximumInterval
           (\ x__ y__ -> x__ {_RetryPolicy'maximumInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RetryPolicy "maybe'maximumInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RetryPolicy'maximumInterval
           (\ x__ y__ -> x__ {_RetryPolicy'maximumInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RetryPolicy "maximumAttempts" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RetryPolicy'maximumAttempts
           (\ x__ y__ -> x__ {_RetryPolicy'maximumAttempts = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RetryPolicy "nonRetryableErrorTypes" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RetryPolicy'nonRetryableErrorTypes
           (\ x__ y__ -> x__ {_RetryPolicy'nonRetryableErrorTypes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RetryPolicy "vec'nonRetryableErrorTypes" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RetryPolicy'nonRetryableErrorTypes
           (\ x__ y__ -> x__ {_RetryPolicy'nonRetryableErrorTypes = y__}))
        Prelude.id
instance Data.ProtoLens.Message RetryPolicy where
  messageName _ = Data.Text.pack "temporal.api.common.v1.RetryPolicy"
  packedMessageDescriptor _
    = "\n\
      \\vRetryPolicy\DC2D\n\
      \\DLEinitial_interval\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\SIinitialInterval\DC2/\n\
      \\DC3backoff_coefficient\CAN\STX \SOH(\SOHR\DC2backoffCoefficient\DC2D\n\
      \\DLEmaximum_interval\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\SImaximumInterval\DC2)\n\
      \\DLEmaximum_attempts\CAN\EOT \SOH(\ENQR\SImaximumAttempts\DC29\n\
      \\EMnon_retryable_error_types\CAN\ENQ \ETX(\tR\SYNnonRetryableErrorTypes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        initialInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "initial_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'initialInterval")) ::
              Data.ProtoLens.FieldDescriptor RetryPolicy
        backoffCoefficient__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "backoff_coefficient"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"backoffCoefficient")) ::
              Data.ProtoLens.FieldDescriptor RetryPolicy
        maximumInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "maximum_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maximumInterval")) ::
              Data.ProtoLens.FieldDescriptor RetryPolicy
        maximumAttempts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "maximum_attempts"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maximumAttempts")) ::
              Data.ProtoLens.FieldDescriptor RetryPolicy
        nonRetryableErrorTypes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "non_retryable_error_types"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"nonRetryableErrorTypes")) ::
              Data.ProtoLens.FieldDescriptor RetryPolicy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, initialInterval__field_descriptor),
           (Data.ProtoLens.Tag 2, backoffCoefficient__field_descriptor),
           (Data.ProtoLens.Tag 3, maximumInterval__field_descriptor),
           (Data.ProtoLens.Tag 4, maximumAttempts__field_descriptor),
           (Data.ProtoLens.Tag 5, nonRetryableErrorTypes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RetryPolicy'_unknownFields
        (\ x__ y__ -> x__ {_RetryPolicy'_unknownFields = y__})
  defMessage
    = RetryPolicy'_constructor
        {_RetryPolicy'initialInterval = Prelude.Nothing,
         _RetryPolicy'backoffCoefficient = Data.ProtoLens.fieldDefault,
         _RetryPolicy'maximumInterval = Prelude.Nothing,
         _RetryPolicy'maximumAttempts = Data.ProtoLens.fieldDefault,
         _RetryPolicy'nonRetryableErrorTypes = Data.Vector.Generic.empty,
         _RetryPolicy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RetryPolicy
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser RetryPolicy
        loop x mutable'nonRetryableErrorTypes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'nonRetryableErrorTypes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                            mutable'nonRetryableErrorTypes)
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
                              (Data.ProtoLens.Field.field @"vec'nonRetryableErrorTypes")
                              frozen'nonRetryableErrorTypes x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "initial_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"initialInterval") y x)
                                  mutable'nonRetryableErrorTypes
                        17
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "backoff_coefficient"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"backoffCoefficient") y x)
                                  mutable'nonRetryableErrorTypes
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "maximum_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maximumInterval") y x)
                                  mutable'nonRetryableErrorTypes
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "maximum_attempts"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maximumAttempts") y x)
                                  mutable'nonRetryableErrorTypes
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getText
                                              (Prelude.fromIntegral len))
                                        "non_retryable_error_types"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'nonRetryableErrorTypes y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'nonRetryableErrorTypes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'nonRetryableErrorTypes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'nonRetryableErrorTypes)
          "RetryPolicy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'initialInterval") _x
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
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"backoffCoefficient") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 17)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putFixed64
                            Data.ProtoLens.Encoding.Bytes.doubleToWord _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'maximumInterval") _x
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
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"maximumAttempts") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
                                       Data.Text.Encoding.encodeUtf8 _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'nonRetryableErrorTypes") _x))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData RetryPolicy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RetryPolicy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RetryPolicy'initialInterval x__)
                (Control.DeepSeq.deepseq
                   (_RetryPolicy'backoffCoefficient x__)
                   (Control.DeepSeq.deepseq
                      (_RetryPolicy'maximumInterval x__)
                      (Control.DeepSeq.deepseq
                         (_RetryPolicy'maximumAttempts x__)
                         (Control.DeepSeq.deepseq
                            (_RetryPolicy'nonRetryableErrorTypes x__) ())))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.indexedFields' @:: Lens' SearchAttributes (Data.Map.Map Data.Text.Text Payload)@ -}
data SearchAttributes
  = SearchAttributes'_constructor {_SearchAttributes'indexedFields :: !(Data.Map.Map Data.Text.Text Payload),
                                   _SearchAttributes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SearchAttributes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SearchAttributes "indexedFields" (Data.Map.Map Data.Text.Text Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SearchAttributes'indexedFields
           (\ x__ y__ -> x__ {_SearchAttributes'indexedFields = y__}))
        Prelude.id
instance Data.ProtoLens.Message SearchAttributes where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.SearchAttributes"
  packedMessageDescriptor _
    = "\n\
      \\DLESearchAttributes\DC2b\n\
      \\SOindexed_fields\CAN\SOH \ETX(\v2;.temporal.api.common.v1.SearchAttributes.IndexedFieldsEntryR\rindexedFields\SUBa\n\
      \\DC2IndexedFieldsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        indexedFields__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "indexed_fields"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SearchAttributes'IndexedFieldsEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"indexedFields")) ::
              Data.ProtoLens.FieldDescriptor SearchAttributes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, indexedFields__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SearchAttributes'_unknownFields
        (\ x__ y__ -> x__ {_SearchAttributes'_unknownFields = y__})
  defMessage
    = SearchAttributes'_constructor
        {_SearchAttributes'indexedFields = Data.Map.empty,
         _SearchAttributes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SearchAttributes
          -> Data.ProtoLens.Encoding.Bytes.Parser SearchAttributes
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
                          -> do !(entry :: SearchAttributes'IndexedFieldsEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                     (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                         Data.ProtoLens.Encoding.Bytes.isolate
                                                                                           (Prelude.fromIntegral
                                                                                              len)
                                                                                           Data.ProtoLens.parseMessage)
                                                                                     "indexed_fields"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"indexedFields")
                                        (\ !t -> Data.Map.insert key value t) x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SearchAttributes"
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
                                    (Data.ProtoLens.defMessage ::
                                       SearchAttributes'IndexedFieldsEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"indexedFields") _x))))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SearchAttributes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SearchAttributes'_unknownFields x__)
             (Control.DeepSeq.deepseq (_SearchAttributes'indexedFields x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.key' @:: Lens' SearchAttributes'IndexedFieldsEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.value' @:: Lens' SearchAttributes'IndexedFieldsEntry Payload@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'value' @:: Lens' SearchAttributes'IndexedFieldsEntry (Prelude.Maybe Payload)@ -}
data SearchAttributes'IndexedFieldsEntry
  = SearchAttributes'IndexedFieldsEntry'_constructor {_SearchAttributes'IndexedFieldsEntry'key :: !Data.Text.Text,
                                                      _SearchAttributes'IndexedFieldsEntry'value :: !(Prelude.Maybe Payload),
                                                      _SearchAttributes'IndexedFieldsEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SearchAttributes'IndexedFieldsEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SearchAttributes'IndexedFieldsEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SearchAttributes'IndexedFieldsEntry'key
           (\ x__ y__
              -> x__ {_SearchAttributes'IndexedFieldsEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SearchAttributes'IndexedFieldsEntry "value" Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SearchAttributes'IndexedFieldsEntry'value
           (\ x__ y__
              -> x__ {_SearchAttributes'IndexedFieldsEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SearchAttributes'IndexedFieldsEntry "maybe'value" (Prelude.Maybe Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SearchAttributes'IndexedFieldsEntry'value
           (\ x__ y__
              -> x__ {_SearchAttributes'IndexedFieldsEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message SearchAttributes'IndexedFieldsEntry where
  messageName _
    = Data.Text.pack
        "temporal.api.common.v1.SearchAttributes.IndexedFieldsEntry"
  packedMessageDescriptor _
    = "\n\
      \\DC2IndexedFieldsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor SearchAttributes'IndexedFieldsEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor SearchAttributes'IndexedFieldsEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SearchAttributes'IndexedFieldsEntry'_unknownFields
        (\ x__ y__
           -> x__ {_SearchAttributes'IndexedFieldsEntry'_unknownFields = y__})
  defMessage
    = SearchAttributes'IndexedFieldsEntry'_constructor
        {_SearchAttributes'IndexedFieldsEntry'key = Data.ProtoLens.fieldDefault,
         _SearchAttributes'IndexedFieldsEntry'value = Prelude.Nothing,
         _SearchAttributes'IndexedFieldsEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SearchAttributes'IndexedFieldsEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser SearchAttributes'IndexedFieldsEntry
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
          (do loop Data.ProtoLens.defMessage) "IndexedFieldsEntry"
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
instance Control.DeepSeq.NFData SearchAttributes'IndexedFieldsEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SearchAttributes'IndexedFieldsEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SearchAttributes'IndexedFieldsEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_SearchAttributes'IndexedFieldsEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.enabled' @:: Lens' TimeSkippingConfig Prelude.Bool@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.fastForwardConfig' @:: Lens' TimeSkippingConfig FastForwardConfig@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'fastForwardConfig' @:: Lens' TimeSkippingConfig (Prelude.Maybe FastForwardConfig)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.disablePropagation' @:: Lens' TimeSkippingConfig Prelude.Bool@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maxSessionSkipCount' @:: Lens' TimeSkippingConfig Data.Int.Int32@ -}
data TimeSkippingConfig
  = TimeSkippingConfig'_constructor {_TimeSkippingConfig'enabled :: !Prelude.Bool,
                                     _TimeSkippingConfig'fastForwardConfig :: !(Prelude.Maybe FastForwardConfig),
                                     _TimeSkippingConfig'disablePropagation :: !Prelude.Bool,
                                     _TimeSkippingConfig'maxSessionSkipCount :: !Data.Int.Int32,
                                     _TimeSkippingConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TimeSkippingConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TimeSkippingConfig "enabled" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingConfig'enabled
           (\ x__ y__ -> x__ {_TimeSkippingConfig'enabled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimeSkippingConfig "fastForwardConfig" FastForwardConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingConfig'fastForwardConfig
           (\ x__ y__ -> x__ {_TimeSkippingConfig'fastForwardConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TimeSkippingConfig "maybe'fastForwardConfig" (Prelude.Maybe FastForwardConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingConfig'fastForwardConfig
           (\ x__ y__ -> x__ {_TimeSkippingConfig'fastForwardConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimeSkippingConfig "disablePropagation" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingConfig'disablePropagation
           (\ x__ y__ -> x__ {_TimeSkippingConfig'disablePropagation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimeSkippingConfig "maxSessionSkipCount" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingConfig'maxSessionSkipCount
           (\ x__ y__ -> x__ {_TimeSkippingConfig'maxSessionSkipCount = y__}))
        Prelude.id
instance Data.ProtoLens.Message TimeSkippingConfig where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.TimeSkippingConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC2TimeSkippingConfig\DC2\CAN\n\
      \\aenabled\CAN\SOH \SOH(\bR\aenabled\DC2Y\n\
      \\DC3fast_forward_config\CAN\STX \SOH(\v2).temporal.api.common.v1.FastForwardConfigR\DC1fastForwardConfig\DC2/\n\
      \\DC3disable_propagation\CAN\ETX \SOH(\bR\DC2disablePropagation\DC23\n\
      \\SYNmax_session_skip_count\CAN\EOT \SOH(\ENQR\DC3maxSessionSkipCount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        enabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enabled"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"enabled")) ::
              Data.ProtoLens.FieldDescriptor TimeSkippingConfig
        fastForwardConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fast_forward_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FastForwardConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fastForwardConfig")) ::
              Data.ProtoLens.FieldDescriptor TimeSkippingConfig
        disablePropagation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disable_propagation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"disablePropagation")) ::
              Data.ProtoLens.FieldDescriptor TimeSkippingConfig
        maxSessionSkipCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_session_skip_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxSessionSkipCount")) ::
              Data.ProtoLens.FieldDescriptor TimeSkippingConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, enabled__field_descriptor),
           (Data.ProtoLens.Tag 2, fastForwardConfig__field_descriptor),
           (Data.ProtoLens.Tag 3, disablePropagation__field_descriptor),
           (Data.ProtoLens.Tag 4, maxSessionSkipCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TimeSkippingConfig'_unknownFields
        (\ x__ y__ -> x__ {_TimeSkippingConfig'_unknownFields = y__})
  defMessage
    = TimeSkippingConfig'_constructor
        {_TimeSkippingConfig'enabled = Data.ProtoLens.fieldDefault,
         _TimeSkippingConfig'fastForwardConfig = Prelude.Nothing,
         _TimeSkippingConfig'disablePropagation = Data.ProtoLens.fieldDefault,
         _TimeSkippingConfig'maxSessionSkipCount = Data.ProtoLens.fieldDefault,
         _TimeSkippingConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TimeSkippingConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser TimeSkippingConfig
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
                                       "enabled"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"enabled") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "fast_forward_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"fastForwardConfig") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "disable_propagation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"disablePropagation") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max_session_skip_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxSessionSkipCount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TimeSkippingConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"enabled") _x
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'fastForwardConfig") _x
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
                            (Data.ProtoLens.Field.field @"disablePropagation") _x
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
                               (Data.ProtoLens.Field.field @"maxSessionSkipCount") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData TimeSkippingConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TimeSkippingConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TimeSkippingConfig'enabled x__)
                (Control.DeepSeq.deepseq
                   (_TimeSkippingConfig'fastForwardConfig x__)
                   (Control.DeepSeq.deepseq
                      (_TimeSkippingConfig'disablePropagation x__)
                      (Control.DeepSeq.deepseq
                         (_TimeSkippingConfig'maxSessionSkipCount x__) ()))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.fastForwardDuration' @:: Lens' TimeSkippingFastForwardInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'fastForwardDuration' @:: Lens' TimeSkippingFastForwardInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.fastForwardId' @:: Lens' TimeSkippingFastForwardInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.targetTime' @:: Lens' TimeSkippingFastForwardInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'targetTime' @:: Lens' TimeSkippingFastForwardInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.hasCompleted' @:: Lens' TimeSkippingFastForwardInfo Prelude.Bool@ -}
data TimeSkippingFastForwardInfo
  = TimeSkippingFastForwardInfo'_constructor {_TimeSkippingFastForwardInfo'fastForwardDuration :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                              _TimeSkippingFastForwardInfo'fastForwardId :: !Data.Text.Text,
                                              _TimeSkippingFastForwardInfo'targetTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                              _TimeSkippingFastForwardInfo'hasCompleted :: !Prelude.Bool,
                                              _TimeSkippingFastForwardInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TimeSkippingFastForwardInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TimeSkippingFastForwardInfo "fastForwardDuration" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingFastForwardInfo'fastForwardDuration
           (\ x__ y__
              -> x__ {_TimeSkippingFastForwardInfo'fastForwardDuration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TimeSkippingFastForwardInfo "maybe'fastForwardDuration" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingFastForwardInfo'fastForwardDuration
           (\ x__ y__
              -> x__ {_TimeSkippingFastForwardInfo'fastForwardDuration = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimeSkippingFastForwardInfo "fastForwardId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingFastForwardInfo'fastForwardId
           (\ x__ y__
              -> x__ {_TimeSkippingFastForwardInfo'fastForwardId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimeSkippingFastForwardInfo "targetTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingFastForwardInfo'targetTime
           (\ x__ y__ -> x__ {_TimeSkippingFastForwardInfo'targetTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TimeSkippingFastForwardInfo "maybe'targetTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingFastForwardInfo'targetTime
           (\ x__ y__ -> x__ {_TimeSkippingFastForwardInfo'targetTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimeSkippingFastForwardInfo "hasCompleted" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingFastForwardInfo'hasCompleted
           (\ x__ y__
              -> x__ {_TimeSkippingFastForwardInfo'hasCompleted = y__}))
        Prelude.id
instance Data.ProtoLens.Message TimeSkippingFastForwardInfo where
  messageName _
    = Data.Text.pack
        "temporal.api.common.v1.TimeSkippingFastForwardInfo"
  packedMessageDescriptor _
    = "\n\
      \\ESCTimeSkippingFastForwardInfo\DC2M\n\
      \\NAKfast_forward_duration\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\DC3fastForwardDuration\DC2&\n\
      \\SIfast_forward_id\CAN\STX \SOH(\tR\rfastForwardId\DC2;\n\
      \\vtarget_time\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \targetTime\DC2#\n\
      \\rhas_completed\CAN\EOT \SOH(\bR\fhasCompleted"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fastForwardDuration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fast_forward_duration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fastForwardDuration")) ::
              Data.ProtoLens.FieldDescriptor TimeSkippingFastForwardInfo
        fastForwardId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fast_forward_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fastForwardId")) ::
              Data.ProtoLens.FieldDescriptor TimeSkippingFastForwardInfo
        targetTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'targetTime")) ::
              Data.ProtoLens.FieldDescriptor TimeSkippingFastForwardInfo
        hasCompleted__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "has_completed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"hasCompleted")) ::
              Data.ProtoLens.FieldDescriptor TimeSkippingFastForwardInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fastForwardDuration__field_descriptor),
           (Data.ProtoLens.Tag 2, fastForwardId__field_descriptor),
           (Data.ProtoLens.Tag 3, targetTime__field_descriptor),
           (Data.ProtoLens.Tag 4, hasCompleted__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TimeSkippingFastForwardInfo'_unknownFields
        (\ x__ y__
           -> x__ {_TimeSkippingFastForwardInfo'_unknownFields = y__})
  defMessage
    = TimeSkippingFastForwardInfo'_constructor
        {_TimeSkippingFastForwardInfo'fastForwardDuration = Prelude.Nothing,
         _TimeSkippingFastForwardInfo'fastForwardId = Data.ProtoLens.fieldDefault,
         _TimeSkippingFastForwardInfo'targetTime = Prelude.Nothing,
         _TimeSkippingFastForwardInfo'hasCompleted = Data.ProtoLens.fieldDefault,
         _TimeSkippingFastForwardInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TimeSkippingFastForwardInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser TimeSkippingFastForwardInfo
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
                                       "fast_forward_duration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"fastForwardDuration") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "fast_forward_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"fastForwardId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "target_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"targetTime") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "has_completed"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"hasCompleted") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TimeSkippingFastForwardInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'fastForwardDuration") _x
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
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"fastForwardId") _x
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
                          (Data.ProtoLens.Field.field @"maybe'targetTime") _x
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
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"hasCompleted") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0) _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData TimeSkippingFastForwardInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TimeSkippingFastForwardInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TimeSkippingFastForwardInfo'fastForwardDuration x__)
                (Control.DeepSeq.deepseq
                   (_TimeSkippingFastForwardInfo'fastForwardId x__)
                   (Control.DeepSeq.deepseq
                      (_TimeSkippingFastForwardInfo'targetTime x__)
                      (Control.DeepSeq.deepseq
                         (_TimeSkippingFastForwardInfo'hasCompleted x__) ()))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.currentTime' @:: Lens' TimeSkippingInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'currentTime' @:: Lens' TimeSkippingInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.effectiveConfig' @:: Lens' TimeSkippingInfo TimeSkippingConfig@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'effectiveConfig' @:: Lens' TimeSkippingInfo (Prelude.Maybe TimeSkippingConfig)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.fastForwardInfo' @:: Lens' TimeSkippingInfo TimeSkippingFastForwardInfo@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'fastForwardInfo' @:: Lens' TimeSkippingInfo (Prelude.Maybe TimeSkippingFastForwardInfo)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.currentSessionSkipCount' @:: Lens' TimeSkippingInfo Data.Int.Int32@ -}
data TimeSkippingInfo
  = TimeSkippingInfo'_constructor {_TimeSkippingInfo'currentTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                   _TimeSkippingInfo'effectiveConfig :: !(Prelude.Maybe TimeSkippingConfig),
                                   _TimeSkippingInfo'fastForwardInfo :: !(Prelude.Maybe TimeSkippingFastForwardInfo),
                                   _TimeSkippingInfo'currentSessionSkipCount :: !Data.Int.Int32,
                                   _TimeSkippingInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TimeSkippingInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TimeSkippingInfo "currentTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingInfo'currentTime
           (\ x__ y__ -> x__ {_TimeSkippingInfo'currentTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TimeSkippingInfo "maybe'currentTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingInfo'currentTime
           (\ x__ y__ -> x__ {_TimeSkippingInfo'currentTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimeSkippingInfo "effectiveConfig" TimeSkippingConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingInfo'effectiveConfig
           (\ x__ y__ -> x__ {_TimeSkippingInfo'effectiveConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TimeSkippingInfo "maybe'effectiveConfig" (Prelude.Maybe TimeSkippingConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingInfo'effectiveConfig
           (\ x__ y__ -> x__ {_TimeSkippingInfo'effectiveConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimeSkippingInfo "fastForwardInfo" TimeSkippingFastForwardInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingInfo'fastForwardInfo
           (\ x__ y__ -> x__ {_TimeSkippingInfo'fastForwardInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TimeSkippingInfo "maybe'fastForwardInfo" (Prelude.Maybe TimeSkippingFastForwardInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingInfo'fastForwardInfo
           (\ x__ y__ -> x__ {_TimeSkippingInfo'fastForwardInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimeSkippingInfo "currentSessionSkipCount" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingInfo'currentSessionSkipCount
           (\ x__ y__
              -> x__ {_TimeSkippingInfo'currentSessionSkipCount = y__}))
        Prelude.id
instance Data.ProtoLens.Message TimeSkippingInfo where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.TimeSkippingInfo"
  packedMessageDescriptor _
    = "\n\
      \\DLETimeSkippingInfo\DC2=\n\
      \\fcurrent_time\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\vcurrentTime\DC2U\n\
      \\DLEeffective_config\CAN\STX \SOH(\v2*.temporal.api.common.v1.TimeSkippingConfigR\SIeffectiveConfig\DC2_\n\
      \\DC1fast_forward_info\CAN\EOT \SOH(\v23.temporal.api.common.v1.TimeSkippingFastForwardInfoR\SIfastForwardInfo\DC2;\n\
      \\SUBcurrent_session_skip_count\CAN\ACK \SOH(\ENQR\ETBcurrentSessionSkipCount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        currentTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'currentTime")) ::
              Data.ProtoLens.FieldDescriptor TimeSkippingInfo
        effectiveConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "effective_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TimeSkippingConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'effectiveConfig")) ::
              Data.ProtoLens.FieldDescriptor TimeSkippingInfo
        fastForwardInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fast_forward_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TimeSkippingFastForwardInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fastForwardInfo")) ::
              Data.ProtoLens.FieldDescriptor TimeSkippingInfo
        currentSessionSkipCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_session_skip_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"currentSessionSkipCount")) ::
              Data.ProtoLens.FieldDescriptor TimeSkippingInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, currentTime__field_descriptor),
           (Data.ProtoLens.Tag 2, effectiveConfig__field_descriptor),
           (Data.ProtoLens.Tag 4, fastForwardInfo__field_descriptor),
           (Data.ProtoLens.Tag 6, currentSessionSkipCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TimeSkippingInfo'_unknownFields
        (\ x__ y__ -> x__ {_TimeSkippingInfo'_unknownFields = y__})
  defMessage
    = TimeSkippingInfo'_constructor
        {_TimeSkippingInfo'currentTime = Prelude.Nothing,
         _TimeSkippingInfo'effectiveConfig = Prelude.Nothing,
         _TimeSkippingInfo'fastForwardInfo = Prelude.Nothing,
         _TimeSkippingInfo'currentSessionSkipCount = Data.ProtoLens.fieldDefault,
         _TimeSkippingInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TimeSkippingInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser TimeSkippingInfo
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
                                       "current_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"currentTime") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "effective_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"effectiveConfig") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "fast_forward_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"fastForwardInfo") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "current_session_skip_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"currentSessionSkipCount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TimeSkippingInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'currentTime") _x
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
                       (Data.ProtoLens.Field.field @"maybe'effectiveConfig") _x
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'fastForwardInfo") _x
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
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"currentSessionSkipCount") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData TimeSkippingInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TimeSkippingInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TimeSkippingInfo'currentTime x__)
                (Control.DeepSeq.deepseq
                   (_TimeSkippingInfo'effectiveConfig x__)
                   (Control.DeepSeq.deepseq
                      (_TimeSkippingInfo'fastForwardInfo x__)
                      (Control.DeepSeq.deepseq
                         (_TimeSkippingInfo'currentSessionSkipCount x__) ()))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.initialSkippedDuration' @:: Lens' TimeSkippingStatePropagation Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'initialSkippedDuration' @:: Lens' TimeSkippingStatePropagation (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.fastForwardTargetTime' @:: Lens' TimeSkippingStatePropagation Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'fastForwardTargetTime' @:: Lens' TimeSkippingStatePropagation (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.initialSkipCount' @:: Lens' TimeSkippingStatePropagation Data.Int.Int32@ -}
data TimeSkippingStatePropagation
  = TimeSkippingStatePropagation'_constructor {_TimeSkippingStatePropagation'initialSkippedDuration :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                               _TimeSkippingStatePropagation'fastForwardTargetTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                               _TimeSkippingStatePropagation'initialSkipCount :: !Data.Int.Int32,
                                               _TimeSkippingStatePropagation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TimeSkippingStatePropagation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TimeSkippingStatePropagation "initialSkippedDuration" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingStatePropagation'initialSkippedDuration
           (\ x__ y__
              -> x__
                   {_TimeSkippingStatePropagation'initialSkippedDuration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TimeSkippingStatePropagation "maybe'initialSkippedDuration" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingStatePropagation'initialSkippedDuration
           (\ x__ y__
              -> x__
                   {_TimeSkippingStatePropagation'initialSkippedDuration = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimeSkippingStatePropagation "fastForwardTargetTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingStatePropagation'fastForwardTargetTime
           (\ x__ y__
              -> x__
                   {_TimeSkippingStatePropagation'fastForwardTargetTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TimeSkippingStatePropagation "maybe'fastForwardTargetTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingStatePropagation'fastForwardTargetTime
           (\ x__ y__
              -> x__
                   {_TimeSkippingStatePropagation'fastForwardTargetTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimeSkippingStatePropagation "initialSkipCount" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeSkippingStatePropagation'initialSkipCount
           (\ x__ y__
              -> x__ {_TimeSkippingStatePropagation'initialSkipCount = y__}))
        Prelude.id
instance Data.ProtoLens.Message TimeSkippingStatePropagation where
  messageName _
    = Data.Text.pack
        "temporal.api.common.v1.TimeSkippingStatePropagation"
  packedMessageDescriptor _
    = "\n\
      \\FSTimeSkippingStatePropagation\DC2S\n\
      \\CANinitial_skipped_duration\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\SYNinitialSkippedDuration\DC2S\n\
      \\CANfast_forward_target_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\NAKfastForwardTargetTime\DC2,\n\
      \\DC2initial_skip_count\CAN\ETX \SOH(\ENQR\DLEinitialSkipCount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        initialSkippedDuration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "initial_skipped_duration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'initialSkippedDuration")) ::
              Data.ProtoLens.FieldDescriptor TimeSkippingStatePropagation
        fastForwardTargetTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fast_forward_target_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fastForwardTargetTime")) ::
              Data.ProtoLens.FieldDescriptor TimeSkippingStatePropagation
        initialSkipCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "initial_skip_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"initialSkipCount")) ::
              Data.ProtoLens.FieldDescriptor TimeSkippingStatePropagation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, initialSkippedDuration__field_descriptor),
           (Data.ProtoLens.Tag 2, fastForwardTargetTime__field_descriptor),
           (Data.ProtoLens.Tag 3, initialSkipCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TimeSkippingStatePropagation'_unknownFields
        (\ x__ y__
           -> x__ {_TimeSkippingStatePropagation'_unknownFields = y__})
  defMessage
    = TimeSkippingStatePropagation'_constructor
        {_TimeSkippingStatePropagation'initialSkippedDuration = Prelude.Nothing,
         _TimeSkippingStatePropagation'fastForwardTargetTime = Prelude.Nothing,
         _TimeSkippingStatePropagation'initialSkipCount = Data.ProtoLens.fieldDefault,
         _TimeSkippingStatePropagation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TimeSkippingStatePropagation
          -> Data.ProtoLens.Encoding.Bytes.Parser TimeSkippingStatePropagation
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
                                       "initial_skipped_duration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"initialSkippedDuration") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "fast_forward_target_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"fastForwardTargetTime") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "initial_skip_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"initialSkipCount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TimeSkippingStatePropagation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'initialSkippedDuration") _x
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
                       (Data.ProtoLens.Field.field @"maybe'fastForwardTargetTime") _x
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
                            (Data.ProtoLens.Field.field @"initialSkipCount") _x
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
instance Control.DeepSeq.NFData TimeSkippingStatePropagation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TimeSkippingStatePropagation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TimeSkippingStatePropagation'initialSkippedDuration x__)
                (Control.DeepSeq.deepseq
                   (_TimeSkippingStatePropagation'fastForwardTargetTime x__)
                   (Control.DeepSeq.deepseq
                      (_TimeSkippingStatePropagation'initialSkipCount x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'selector' @:: Lens' WorkerSelector (Prelude.Maybe WorkerSelector'Selector)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.maybe'workerInstanceKey' @:: Lens' WorkerSelector (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.workerInstanceKey' @:: Lens' WorkerSelector Data.Text.Text@ -}
data WorkerSelector
  = WorkerSelector'_constructor {_WorkerSelector'selector :: !(Prelude.Maybe WorkerSelector'Selector),
                                 _WorkerSelector'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkerSelector where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data WorkerSelector'Selector
  = WorkerSelector'WorkerInstanceKey !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField WorkerSelector "maybe'selector" (Prelude.Maybe WorkerSelector'Selector) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerSelector'selector
           (\ x__ y__ -> x__ {_WorkerSelector'selector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerSelector "maybe'workerInstanceKey" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerSelector'selector
           (\ x__ y__ -> x__ {_WorkerSelector'selector = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkerSelector'WorkerInstanceKey x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap WorkerSelector'WorkerInstanceKey y__))
instance Data.ProtoLens.Field.HasField WorkerSelector "workerInstanceKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerSelector'selector
           (\ x__ y__ -> x__ {_WorkerSelector'selector = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkerSelector'WorkerInstanceKey x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap WorkerSelector'WorkerInstanceKey y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message WorkerSelector where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.WorkerSelector"
  packedMessageDescriptor _
    = "\n\
      \\SOWorkerSelector\DC20\n\
      \\DC3worker_instance_key\CAN\SOH \SOH(\tH\NULR\DC1workerInstanceKeyB\n\
      \\n\
      \\bselector"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        workerInstanceKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "worker_instance_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workerInstanceKey")) ::
              Data.ProtoLens.FieldDescriptor WorkerSelector
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, workerInstanceKey__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkerSelector'_unknownFields
        (\ x__ y__ -> x__ {_WorkerSelector'_unknownFields = y__})
  defMessage
    = WorkerSelector'_constructor
        {_WorkerSelector'selector = Prelude.Nothing,
         _WorkerSelector'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkerSelector
          -> Data.ProtoLens.Encoding.Bytes.Parser WorkerSelector
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
                                       "worker_instance_key"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workerInstanceKey") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WorkerSelector"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'selector") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (WorkerSelector'WorkerInstanceKey v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8 v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData WorkerSelector where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkerSelector'_unknownFields x__)
             (Control.DeepSeq.deepseq (_WorkerSelector'selector x__) ())
instance Control.DeepSeq.NFData WorkerSelector'Selector where
  rnf (WorkerSelector'WorkerInstanceKey x__)
    = Control.DeepSeq.rnf x__
_WorkerSelector'WorkerInstanceKey ::
  Data.ProtoLens.Prism.Prism' WorkerSelector'Selector Data.Text.Text
_WorkerSelector'WorkerInstanceKey
  = Data.ProtoLens.Prism.prism'
      WorkerSelector'WorkerInstanceKey
      (\ p__
         -> case p__ of
              (WorkerSelector'WorkerInstanceKey p__val) -> Prelude.Just p__val)
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.buildId' @:: Lens' WorkerVersionCapabilities Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.useVersioning' @:: Lens' WorkerVersionCapabilities Prelude.Bool@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.deploymentSeriesName' @:: Lens' WorkerVersionCapabilities Data.Text.Text@ -}
data WorkerVersionCapabilities
  = WorkerVersionCapabilities'_constructor {_WorkerVersionCapabilities'buildId :: !Data.Text.Text,
                                            _WorkerVersionCapabilities'useVersioning :: !Prelude.Bool,
                                            _WorkerVersionCapabilities'deploymentSeriesName :: !Data.Text.Text,
                                            _WorkerVersionCapabilities'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkerVersionCapabilities where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkerVersionCapabilities "buildId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerVersionCapabilities'buildId
           (\ x__ y__ -> x__ {_WorkerVersionCapabilities'buildId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerVersionCapabilities "useVersioning" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerVersionCapabilities'useVersioning
           (\ x__ y__
              -> x__ {_WorkerVersionCapabilities'useVersioning = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerVersionCapabilities "deploymentSeriesName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerVersionCapabilities'deploymentSeriesName
           (\ x__ y__
              -> x__ {_WorkerVersionCapabilities'deploymentSeriesName = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkerVersionCapabilities where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.WorkerVersionCapabilities"
  packedMessageDescriptor _
    = "\n\
      \\EMWorkerVersionCapabilities\DC2\EM\n\
      \\bbuild_id\CAN\SOH \SOH(\tR\abuildId\DC2%\n\
      \\SOuse_versioning\CAN\STX \SOH(\bR\ruseVersioning\DC24\n\
      \\SYNdeployment_series_name\CAN\EOT \SOH(\tR\DC4deploymentSeriesName"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        buildId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "build_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"buildId")) ::
              Data.ProtoLens.FieldDescriptor WorkerVersionCapabilities
        useVersioning__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_versioning"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"useVersioning")) ::
              Data.ProtoLens.FieldDescriptor WorkerVersionCapabilities
        deploymentSeriesName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deployment_series_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"deploymentSeriesName")) ::
              Data.ProtoLens.FieldDescriptor WorkerVersionCapabilities
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, buildId__field_descriptor),
           (Data.ProtoLens.Tag 2, useVersioning__field_descriptor),
           (Data.ProtoLens.Tag 4, deploymentSeriesName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkerVersionCapabilities'_unknownFields
        (\ x__ y__
           -> x__ {_WorkerVersionCapabilities'_unknownFields = y__})
  defMessage
    = WorkerVersionCapabilities'_constructor
        {_WorkerVersionCapabilities'buildId = Data.ProtoLens.fieldDefault,
         _WorkerVersionCapabilities'useVersioning = Data.ProtoLens.fieldDefault,
         _WorkerVersionCapabilities'deploymentSeriesName = Data.ProtoLens.fieldDefault,
         _WorkerVersionCapabilities'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkerVersionCapabilities
          -> Data.ProtoLens.Encoding.Bytes.Parser WorkerVersionCapabilities
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
                                       "build_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"buildId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "use_versioning"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"useVersioning") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "deployment_series_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"deploymentSeriesName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WorkerVersionCapabilities"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"buildId") _x
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
                         (Data.ProtoLens.Field.field @"useVersioning") _x
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
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"deploymentSeriesName") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData WorkerVersionCapabilities where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkerVersionCapabilities'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WorkerVersionCapabilities'buildId x__)
                (Control.DeepSeq.deepseq
                   (_WorkerVersionCapabilities'useVersioning x__)
                   (Control.DeepSeq.deepseq
                      (_WorkerVersionCapabilities'deploymentSeriesName x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.buildId' @:: Lens' WorkerVersionStamp Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.useVersioning' @:: Lens' WorkerVersionStamp Prelude.Bool@ -}
data WorkerVersionStamp
  = WorkerVersionStamp'_constructor {_WorkerVersionStamp'buildId :: !Data.Text.Text,
                                     _WorkerVersionStamp'useVersioning :: !Prelude.Bool,
                                     _WorkerVersionStamp'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkerVersionStamp where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkerVersionStamp "buildId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerVersionStamp'buildId
           (\ x__ y__ -> x__ {_WorkerVersionStamp'buildId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerVersionStamp "useVersioning" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerVersionStamp'useVersioning
           (\ x__ y__ -> x__ {_WorkerVersionStamp'useVersioning = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkerVersionStamp where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.WorkerVersionStamp"
  packedMessageDescriptor _
    = "\n\
      \\DC2WorkerVersionStamp\DC2\EM\n\
      \\bbuild_id\CAN\SOH \SOH(\tR\abuildId\DC2%\n\
      \\SOuse_versioning\CAN\ETX \SOH(\bR\ruseVersioning"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        buildId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "build_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"buildId")) ::
              Data.ProtoLens.FieldDescriptor WorkerVersionStamp
        useVersioning__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_versioning"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"useVersioning")) ::
              Data.ProtoLens.FieldDescriptor WorkerVersionStamp
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, buildId__field_descriptor),
           (Data.ProtoLens.Tag 3, useVersioning__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkerVersionStamp'_unknownFields
        (\ x__ y__ -> x__ {_WorkerVersionStamp'_unknownFields = y__})
  defMessage
    = WorkerVersionStamp'_constructor
        {_WorkerVersionStamp'buildId = Data.ProtoLens.fieldDefault,
         _WorkerVersionStamp'useVersioning = Data.ProtoLens.fieldDefault,
         _WorkerVersionStamp'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkerVersionStamp
          -> Data.ProtoLens.Encoding.Bytes.Parser WorkerVersionStamp
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
                                       "build_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"buildId") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "use_versioning"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"useVersioning") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WorkerVersionStamp"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"buildId") _x
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
                         (Data.ProtoLens.Field.field @"useVersioning") _x
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
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData WorkerVersionStamp where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkerVersionStamp'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WorkerVersionStamp'buildId x__)
                (Control.DeepSeq.deepseq
                   (_WorkerVersionStamp'useVersioning x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.workflowId' @:: Lens' WorkflowExecution Data.Text.Text@
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.runId' @:: Lens' WorkflowExecution Data.Text.Text@ -}
data WorkflowExecution
  = WorkflowExecution'_constructor {_WorkflowExecution'workflowId :: !Data.Text.Text,
                                    _WorkflowExecution'runId :: !Data.Text.Text,
                                    _WorkflowExecution'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkflowExecution where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkflowExecution "workflowId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowExecution'workflowId
           (\ x__ y__ -> x__ {_WorkflowExecution'workflowId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowExecution "runId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowExecution'runId
           (\ x__ y__ -> x__ {_WorkflowExecution'runId = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkflowExecution where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.WorkflowExecution"
  packedMessageDescriptor _
    = "\n\
      \\DC1WorkflowExecution\DC2\US\n\
      \\vworkflow_id\CAN\SOH \SOH(\tR\n\
      \workflowId\DC2\NAK\n\
      \\ACKrun_id\CAN\STX \SOH(\tR\ENQrunId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        workflowId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workflowId")) ::
              Data.ProtoLens.FieldDescriptor WorkflowExecution
        runId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "run_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"runId")) ::
              Data.ProtoLens.FieldDescriptor WorkflowExecution
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, workflowId__field_descriptor),
           (Data.ProtoLens.Tag 2, runId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkflowExecution'_unknownFields
        (\ x__ y__ -> x__ {_WorkflowExecution'_unknownFields = y__})
  defMessage
    = WorkflowExecution'_constructor
        {_WorkflowExecution'workflowId = Data.ProtoLens.fieldDefault,
         _WorkflowExecution'runId = Data.ProtoLens.fieldDefault,
         _WorkflowExecution'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkflowExecution
          -> Data.ProtoLens.Encoding.Bytes.Parser WorkflowExecution
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
                                       "workflow_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"workflowId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "run_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"runId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WorkflowExecution"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"workflowId") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"runId") _x
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
instance Control.DeepSeq.NFData WorkflowExecution where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkflowExecution'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WorkflowExecution'workflowId x__)
                (Control.DeepSeq.deepseq (_WorkflowExecution'runId x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Common.V1.Message_Fields.name' @:: Lens' WorkflowType Data.Text.Text@ -}
data WorkflowType
  = WorkflowType'_constructor {_WorkflowType'name :: !Data.Text.Text,
                               _WorkflowType'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkflowType where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkflowType "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowType'name (\ x__ y__ -> x__ {_WorkflowType'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkflowType where
  messageName _
    = Data.Text.pack "temporal.api.common.v1.WorkflowType"
  packedMessageDescriptor _
    = "\n\
      \\fWorkflowType\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname"
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
              Data.ProtoLens.FieldDescriptor WorkflowType
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkflowType'_unknownFields
        (\ x__ y__ -> x__ {_WorkflowType'_unknownFields = y__})
  defMessage
    = WorkflowType'_constructor
        {_WorkflowType'name = Data.ProtoLens.fieldDefault,
         _WorkflowType'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkflowType -> Data.ProtoLens.Encoding.Bytes.Parser WorkflowType
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WorkflowType"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData WorkflowType where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkflowType'_unknownFields x__)
             (Control.DeepSeq.deepseq (_WorkflowType'name x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \$temporal/api/common/v1/message.proto\DC2\SYNtemporal.api.common.v1\SUB\RSgoogle/protobuf/duration.proto\SUB\ESCgoogle/protobuf/empty.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\"temporal/api/enums/v1/common.proto\SUB&temporal/api/enums/v1/event_type.proto\SUB!temporal/api/enums/v1/reset.proto\"h\n\
    \\bDataBlob\DC2H\n\
    \\rencoding_type\CAN\SOH \SOH(\SO2#.temporal.api.enums.v1.EncodingTypeR\fencodingType\DC2\DC2\n\
    \\EOTdata\CAN\STX \SOH(\fR\EOTdata\"G\n\
    \\bPayloads\DC2;\n\
    \\bpayloads\CAN\SOH \ETX(\v2\US.temporal.api.common.v1.PayloadR\bpayloads\"\195\STX\n\
    \\aPayload\DC2I\n\
    \\bmetadata\CAN\SOH \ETX(\v2-.temporal.api.common.v1.Payload.MetadataEntryR\bmetadata\DC2\DC2\n\
    \\EOTdata\CAN\STX \SOH(\fR\EOTdata\DC2c\n\
    \\DC1external_payloads\CAN\ETX \ETX(\v26.temporal.api.common.v1.Payload.ExternalPayloadDetailsR\DLEexternalPayloads\SUB;\n\
    \\rMetadataEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\fR\ENQvalue:\STX8\SOH\SUB7\n\
    \\SYNExternalPayloadDetails\DC2\GS\n\
    \\n\
    \size_bytes\CAN\SOH \SOH(\ETXR\tsizeBytes\"\217\SOH\n\
    \\DLESearchAttributes\DC2b\n\
    \\SOindexed_fields\CAN\SOH \ETX(\v2;.temporal.api.common.v1.SearchAttributes.IndexedFieldsEntryR\rindexedFields\SUBa\n\
    \\DC2IndexedFieldsEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
    \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH\"\164\SOH\n\
    \\EOTMemo\DC2@\n\
    \\ACKfields\CAN\SOH \ETX(\v2(.temporal.api.common.v1.Memo.FieldsEntryR\ACKfields\SUBZ\n\
    \\vFieldsEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
    \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH\"\168\SOH\n\
    \\ACKHeader\DC2B\n\
    \\ACKfields\CAN\SOH \ETX(\v2*.temporal.api.common.v1.Header.FieldsEntryR\ACKfields\SUBZ\n\
    \\vFieldsEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
    \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH\"K\n\
    \\DC1WorkflowExecution\DC2\US\n\
    \\vworkflow_id\CAN\SOH \SOH(\tR\n\
    \workflowId\DC2\NAK\n\
    \\ACKrun_id\CAN\STX \SOH(\tR\ENQrunId\"}\n\
    \\tExecution\DC28\n\
    \\EOTtype\CAN\SOH \SOH(\SO2$.temporal.api.enums.v1.ExecutionTypeR\EOTtype\DC2\US\n\
    \\vbusiness_id\CAN\STX \SOH(\tR\n\
    \businessId\DC2\NAK\n\
    \\ACKrun_id\CAN\ETX \SOH(\tR\ENQrunId\"\"\n\
    \\fWorkflowType\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\"\"\n\
    \\fActivityType\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\"\176\STX\n\
    \\vRetryPolicy\DC2D\n\
    \\DLEinitial_interval\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\SIinitialInterval\DC2/\n\
    \\DC3backoff_coefficient\CAN\STX \SOH(\SOHR\DC2backoffCoefficient\DC2D\n\
    \\DLEmaximum_interval\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\SImaximumInterval\DC2)\n\
    \\DLEmaximum_attempts\CAN\EOT \SOH(\ENQR\SImaximumAttempts\DC29\n\
    \\EMnon_retryable_error_types\CAN\ENQ \ETX(\tR\SYNnonRetryableErrorTypes\"n\n\
    \\DLEMeteringMetadata\DC2Z\n\
    \*nonfirst_local_activity_execution_attempts\CAN\r \SOH(\rR&nonfirstLocalActivityExecutionAttempts\"V\n\
    \\DC2WorkerVersionStamp\DC2\EM\n\
    \\bbuild_id\CAN\SOH \SOH(\tR\abuildId\DC2%\n\
    \\SOuse_versioning\CAN\ETX \SOH(\bR\ruseVersioning\"\147\SOH\n\
    \\EMWorkerVersionCapabilities\DC2\EM\n\
    \\bbuild_id\CAN\SOH \SOH(\tR\abuildId\DC2%\n\
    \\SOuse_versioning\CAN\STX \SOH(\bR\ruseVersioning\DC24\n\
    \\SYNdeployment_series_name\CAN\EOT \SOH(\tR\DC4deploymentSeriesName\"\231\ETX\n\
    \\fResetOptions\DC2H\n\
    \\DC3first_workflow_task\CAN\SOH \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\DC1firstWorkflowTask\DC2F\n\
    \\DC2last_workflow_task\CAN\STX \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\DLElastWorkflowTask\DC2*\n\
    \\DLEworkflow_task_id\CAN\ETX \SOH(\ETXH\NULR\SOworkflowTaskId\DC2\ESC\n\
    \\bbuild_id\CAN\EOT \SOH(\tH\NULR\abuildId\DC2Y\n\
    \\DC2reset_reapply_type\CAN\n\
    \ \SOH(\SO2'.temporal.api.enums.v1.ResetReapplyTypeR\DLEresetReapplyTypeB\STX\CAN\SOH\DC2(\n\
    \\DLEcurrent_run_only\CAN\v \SOH(\bR\SOcurrentRunOnly\DC2m\n\
    \\ESCreset_reapply_exclude_types\CAN\f \ETX(\SO2..temporal.api.enums.v1.ResetReapplyExcludeTypeR\CANresetReapplyExcludeTypesB\b\n\
    \\ACKtarget\"\170\ENQ\n\
    \\bCallback\DC2>\n\
    \\ENQnexus\CAN\STX \SOH(\v2&.temporal.api.common.v1.Callback.NexusH\NULR\ENQnexus\DC2G\n\
    \\binternal\CAN\ETX \SOH(\v2).temporal.api.common.v1.Callback.InternalH\NULR\binternal\DC2T\n\
    \\rnexus_handler\CAN\EOT \SOH(\v2-.temporal.api.common.v1.Callback.NexusHandlerH\NULR\fnexusHandler\DC22\n\
    \\ENQlinks\CANd \ETX(\v2\FS.temporal.api.common.v1.LinkR\ENQlinks\SUB\160\SOH\n\
    \\ENQNexus\DC2\DLE\n\
    \\ETXurl\CAN\SOH \SOH(\tR\ETXurl\DC2J\n\
    \\ACKheader\CAN\STX \ETX(\v22.temporal.api.common.v1.Callback.Nexus.HeaderEntryR\ACKheader\SUB9\n\
    \\vHeaderEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH\SUB\RS\n\
    \\bInternal\DC2\DC2\n\
    \\EOTdata\CAN\SOH \SOH(\fR\EOTdata\SUB\182\SOH\n\
    \\fNexusHandler\DC2&\n\
    \\SItask_queue_name\CAN\SOH \SOH(\tR\rtaskQueueName\DC2\CAN\n\
    \\aservice\CAN\STX \SOH(\tR\aservice\DC2\FS\n\
    \\toperation\CAN\ETX \SOH(\tR\toperation\DC2F\n\
    \\SOsource_context\CAN\EOT \SOH(\v2\US.temporal.api.common.v1.PayloadR\rsourceContextB\t\n\
    \\avariantJ\EOT\b\SOH\DLE\STX\"\136\f\n\
    \\EOTLink\DC2S\n\
    \\SOworkflow_event\CAN\SOH \SOH(\v2*.temporal.api.common.v1.Link.WorkflowEventH\NULR\rworkflowEvent\DC2D\n\
    \\tbatch_job\CAN\STX \SOH(\v2%.temporal.api.common.v1.Link.BatchJobH\NULR\bbatchJob\DC2C\n\
    \\bactivity\CAN\ETX \SOH(\v2%.temporal.api.common.v1.Link.ActivityH\NULR\bactivity\DC2V\n\
    \\SInexus_operation\CAN\EOT \SOH(\v2+.temporal.api.common.v1.Link.NexusOperationH\NULR\SOnexusOperation\DC2C\n\
    \\bworkflow\CAN\ENQ \SOH(\v2%.temporal.api.common.v1.Link.WorkflowH\NULR\bworkflow\DC2C\n\
    \\bcallback\CAN\ACK \SOH(\v2%.temporal.api.common.v1.Link.CallbackH\NULR\bcallback\SUB\151\EOT\n\
    \\rWorkflowEvent\DC2\FS\n\
    \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2\US\n\
    \\vworkflow_id\CAN\STX \SOH(\tR\n\
    \workflowId\DC2\NAK\n\
    \\ACKrun_id\CAN\ETX \SOH(\tR\ENQrunId\DC2X\n\
    \\tevent_ref\CANd \SOH(\v29.temporal.api.common.v1.Link.WorkflowEvent.EventReferenceH\NULR\beventRef\DC2e\n\
    \\SOrequest_id_ref\CANe \SOH(\v2=.temporal.api.common.v1.Link.WorkflowEvent.RequestIdReferenceH\NULR\frequestIdRef\SUBl\n\
    \\SOEventReference\DC2\EM\n\
    \\bevent_id\CAN\SOH \SOH(\ETXR\aeventId\DC2?\n\
    \\n\
    \event_type\CAN\STX \SOH(\SO2 .temporal.api.enums.v1.EventTypeR\teventType\SUBt\n\
    \\DC2RequestIdReference\DC2\GS\n\
    \\n\
    \request_id\CAN\SOH \SOH(\tR\trequestId\DC2?\n\
    \\n\
    \event_type\CAN\STX \SOH(\SO2 .temporal.api.enums.v1.EventTypeR\teventTypeB\v\n\
    \\treference\SUB!\n\
    \\bBatchJob\DC2\NAK\n\
    \\ACKjob_id\CAN\SOH \SOH(\tR\ENQjobId\SUB`\n\
    \\bActivity\DC2\FS\n\
    \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2\US\n\
    \\vactivity_id\CAN\STX \SOH(\tR\n\
    \activityId\DC2\NAK\n\
    \\ACKrun_id\CAN\ETX \SOH(\tR\ENQrunId\SUBh\n\
    \\SONexusOperation\DC2\FS\n\
    \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2!\n\
    \\foperation_id\CAN\STX \SOH(\tR\voperationId\DC2\NAK\n\
    \\ACKrun_id\CAN\ETX \SOH(\tR\ENQrunId\SUBx\n\
    \\bWorkflow\DC2\FS\n\
    \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2\US\n\
    \\vworkflow_id\CAN\STX \SOH(\tR\n\
    \workflowId\DC2\NAK\n\
    \\ACKrun_id\CAN\ETX \SOH(\tR\ENQrunId\DC2\SYN\n\
    \\ACKreason\CAN\EOT \SOH(\tR\ACKreason\SUB\175\SOH\n\
    \\bCallback\DC2\FS\n\
    \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2?\n\
    \\texecution\CAN\STX \SOH(\v2!.temporal.api.common.v1.ExecutionR\texecution\DC2%\n\
    \\SOcomponent_path\CAN\ETX \ETX(\tR\rcomponentPath\DC2\GS\n\
    \\n\
    \request_id\CAN\EOT \SOH(\tR\trequestIdB\t\n\
    \\avariant\"3\n\
    \\tPrincipal\DC2\DC2\n\
    \\EOTtype\CAN\SOH \SOH(\tR\EOTtype\DC2\DC2\n\
    \\EOTname\CAN\STX \SOH(\tR\EOTname\"T\n\
    \\DC1ResolvedPrincipal\DC2\DC2\n\
    \\EOTtype\CAN\SOH \SOH(\tR\EOTtype\DC2+\n\
    \\DC2name_at_write_time\CAN\STX \SOH(\tR\SInameAtWriteTime\"y\n\
    \\bPriority\DC2!\n\
    \\fpriority_key\CAN\SOH \SOH(\ENQR\vpriorityKey\DC2!\n\
    \\ffairness_key\CAN\STX \SOH(\tR\vfairnessKey\DC2'\n\
    \\SIfairness_weight\CAN\ETX \SOH(\STXR\SOfairnessWeight\"N\n\
    \\SOWorkerSelector\DC20\n\
    \\DC3worker_instance_key\CAN\SOH \SOH(\tH\NULR\DC1workerInstanceKeyB\n\
    \\n\
    \\bselector\"\162\SOH\n\
    \\DC1OnConflictOptions\DC2*\n\
    \\DC1attach_request_id\CAN\SOH \SOH(\bR\SIattachRequestId\DC2>\n\
    \\ESCattach_completion_callbacks\CAN\STX \SOH(\bR\EMattachCompletionCallbacks\DC2!\n\
    \\fattach_links\CAN\ETX \SOH(\bR\vattachLinks\"\239\SOH\n\
    \\DC2TimeSkippingConfig\DC2\CAN\n\
    \\aenabled\CAN\SOH \SOH(\bR\aenabled\DC2Y\n\
    \\DC3fast_forward_config\CAN\STX \SOH(\v2).temporal.api.common.v1.FastForwardConfigR\DC1fastForwardConfig\DC2/\n\
    \\DC3disable_propagation\CAN\ETX \SOH(\bR\DC2disablePropagation\DC23\n\
    \\SYNmax_session_skip_count\CAN\EOT \SOH(\ENQR\DC3maxSessionSkipCount\"Z\n\
    \\DC1FastForwardConfig\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\tR\STXid\DC25\n\
    \\bduration\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\bduration\"\246\SOH\n\
    \\FSTimeSkippingStatePropagation\DC2S\n\
    \\CANinitial_skipped_duration\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\SYNinitialSkippedDuration\DC2S\n\
    \\CANfast_forward_target_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\NAKfastForwardTargetTime\DC2,\n\
    \\DC2initial_skip_count\CAN\ETX \SOH(\ENQR\DLEinitialSkipCount\"\198\STX\n\
    \\DLETimeSkippingInfo\DC2=\n\
    \\fcurrent_time\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\vcurrentTime\DC2U\n\
    \\DLEeffective_config\CAN\STX \SOH(\v2*.temporal.api.common.v1.TimeSkippingConfigR\SIeffectiveConfig\DC2_\n\
    \\DC1fast_forward_info\CAN\EOT \SOH(\v23.temporal.api.common.v1.TimeSkippingFastForwardInfoR\SIfastForwardInfo\DC2;\n\
    \\SUBcurrent_session_skip_count\CAN\ACK \SOH(\ENQR\ETBcurrentSessionSkipCount\"\246\SOH\n\
    \\ESCTimeSkippingFastForwardInfo\DC2M\n\
    \\NAKfast_forward_duration\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\DC3fastForwardDuration\DC2&\n\
    \\SIfast_forward_id\CAN\STX \SOH(\tR\rfastForwardId\DC2;\n\
    \\vtarget_time\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \targetTime\DC2#\n\
    \\rhas_completed\CAN\EOT \SOH(\bR\fhasCompletedB\137\SOH\n\
    \\EMio.temporal.api.common.v1B\fMessageProtoP\SOHZ#go.temporal.io/api/common/v1;common\170\STX\CANTemporalio.Api.Common.V1\234\STX\ESCTemporalio::Api::Common::V1J\130\217\SOH\n\
    \\a\DC2\ENQ\NUL\NUL\196\EOT\SOH\n\
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
    \\STX\ETX\NUL\DC2\ETX\v\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\f\NUL%\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\r\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\SI\NUL,\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\DLE\NUL0\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\DC1\NUL+\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL\SYN\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\DLE\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC4\EOT9\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\DC4\EOT&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC4'4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC478\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\NAK\EOT\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\NAK\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\NAK\n\
    \\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\NAK\DC1\DC2\n\
    \\ESC\n\
    \\STX\EOT\SOH\DC2\EOT\EM\NUL\ESC\SOH\SUB\SI See `Payload`\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\EM\b\DLE\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SUB\EOT\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\SUB\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\SUB\r\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SUB\NAK\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SUB !\n\
    \\239\SOH\n\
    \\STX\EOT\STX\DC2\EOT \NUL+\SOH\SUB\226\SOH Represents some binary (byte array) data (ex: activity input parameters or workflow result) with\n\
    \ metadata which describes this binary data (format, encoding, encryption, etc). Serialization\n\
    \ of the data may be user-defined.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX \b\SI\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX!\EOT#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX!\EOT\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX!\SYN\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX!!\"\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\"\EOT\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\"\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\"\n\
    \\SO\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\"\DC1\DC2\n\
    \U\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX$\EOT:\SUBH Details about externally stored payloads associated with this payload.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX$\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETX$\r#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX$$5\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX$89\n\
    \Q\n\
    \\EOT\EOT\STX\ETX\SOH\DC2\EOT'\EOT*\ENQ\SUBC Describes an externally stored object referenced by this payload.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\ETX\SOH\SOH\DC2\ETX'\f\"\n\
    \?\n\
    \\ACK\EOT\STX\ETX\SOH\STX\NUL\DC2\ETX)\b\GS\SUB0 Size in bytes of the externally stored payload\n\
    \\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\NUL\ENQ\DC2\ETX)\b\r\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\NUL\SOH\DC2\ETX)\SO\CAN\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\NUL\ETX\DC2\ETX)\ESC\FS\n\
    \\163\SOH\n\
    \\STX\EOT\ETX\DC2\EOT/\NUL1\SOH\SUB\150\SOH A user-defined set of *indexed* fields that are used/exposed when listing/searching workflows.\n\
    \ The payload is not serialized in a user-defined way.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX/\b\CAN\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX0\EOT,\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETX0\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX0\EM'\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX0*+\n\
    \h\n\
    \\STX\EOT\EOT\DC2\EOT4\NUL6\SOH\SUB\\ A user-defined set of *unindexed* fields that are exposed when listing/searching workflows\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX4\b\f\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX5\EOT$\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETX5\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX5\EM\US\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX5\"#\n\
    \\176\SOH\n\
    \\STX\EOT\ENQ\DC2\EOT:\NUL<\SOH\SUB\163\SOH Contains metadata that can be attached to a variety of requests, like starting a workflow, and\n\
    \ can be propagated between, for example, workflows and activities.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX:\b\SO\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX;\EOT$\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETX;\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX;\EM\US\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX;\"#\n\
    \\145\STX\n\
    \\STX\EOT\ACK\DC2\EOTA\NULD\SOH\SUB\132\STX Identifies a specific workflow within a namespace. Practically speaking, because run_id is a\n\
    \ uuid, a workflow execution is globally unique. Note that many commands allow specifying an empty\n\
    \ run id as a way of saying \"target the latest run of the workflow\".\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXA\b\EM\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXB\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXB\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXB\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXB\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETXC\EOT\SYN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETXC\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXC\DC4\NAK\n\
    \A\n\
    \\STX\EOT\a\DC2\EOTG\NULK\SOH\SUB5 Identifies a specific execution within a namespace.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXG\b\DC1\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETXH\EOT1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\ETXH\EOT'\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETXH(,\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETXH/0\n\
    \\v\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETXI\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\ETXI\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETXI\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETXI\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\a\STX\STX\DC2\ETXJ\EOT\SYN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\ETXJ\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\ETXJ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\ETXJ\DC4\NAK\n\
    \\181\SOH\n\
    \\STX\EOT\b\DC2\EOTO\NULQ\SOH\SUB\168\SOH Represents the identifier used by a workflow author to define the workflow. Typically, the\n\
    \ name of a function. This is sometimes referred to as the workflow's \"name\"\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXO\b\DC4\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETXP\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETXP\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETXP\v\SI\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETXP\DC2\DC3\n\
    \\181\SOH\n\
    \\STX\EOT\t\DC2\EOTU\NULW\SOH\SUB\168\SOH Represents the identifier used by a activity author to define the activity. Typically, the\n\
    \ name of a function. This is sometimes referred to as the activity's \"name\"\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETXU\b\DC4\n\
    \\v\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETXV\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\ETXV\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETXV\v\SI\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETXV\DC2\DC3\n\
    \V\n\
    \\STX\EOT\n\
    \\DC2\EOTZ\NULj\SOH\SUBJ How retries ought to be handled, usable by both workflows and activities\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\n\
    \\SOH\DC2\ETXZ\b\DC3\n\
    \n\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\ETX\\\EOT2\SUBa Interval of the first retry. If retryBackoffCoefficient is 1.0 then it is used for all retries.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ACK\DC2\ETX\\\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\ETX\\\GS-\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\ETX\\01\n\
    \\169\SOH\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\ETX`\EOT#\SUB\155\SOH Coefficient used to calculate the next retry interval.\n\
    \ The next retry interval is previous interval multiplied by the coefficient.\n\
    \ Must be 1 or larger.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\ETX`\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\ETX`\v\RS\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\ETX`!\"\n\
    \\178\SOH\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\ETXc\EOT2\SUB\164\SOH Maximum interval between retries. Exponential backoff leads to interval increase.\n\
    \ This value is the cap of the increase. Default is 100x of the initial interval.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ACK\DC2\ETXc\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\ETXc\GS-\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\ETXc01\n\
    \\159\SOH\n\
    \\EOT\EOT\n\
    \\STX\ETX\DC2\ETXf\EOT\US\SUB\145\SOH Maximum number of attempts. When exceeded the retries stop even if not expired yet.\n\
    \ 1 disables retries. 0 means unlimited (up to the timeouts)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ENQ\DC2\ETXf\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\SOH\DC2\ETXf\n\
    \\SUB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ETX\DC2\ETXf\GS\RS\n\
    \\192\SOH\n\
    \\EOT\EOT\n\
    \\STX\EOT\DC2\ETXi\EOT2\SUB\178\SOH Non-Retryable errors types. Will stop retrying if the error type matches this list. Note that\n\
    \ this is not a substring match, the error *type* (not message) must match exactly.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\EOT\DC2\ETXi\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ENQ\DC2\ETXi\r\DC3\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\SOH\DC2\ETXi\DC4-\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ETX\DC2\ETXi01\n\
    \5\n\
    \\STX\EOT\v\DC2\EOTm\NULu\SOH\SUB) Metadata relevant for metering purposes\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\v\SOH\DC2\ETXm\b\CAN\n\
    \\239\STX\n\
    \\EOT\EOT\v\STX\NUL\DC2\ETXt\EOT;\SUB\225\STX Count of local activities which have begun an execution attempt during this workflow task,\n\
    \ and whose first attempt occurred in some previous task. This is used for metering\n\
    \ purposes, and does not affect workflow state.\n\
    \\n\
    \ (-- api-linter: core::0141::forbidden-types=disabled\n\
    \     aip.dev/not-precedent: Negative values make no sense to represent. --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\ETXt\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\ETXt\v5\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\ETXt8:\n\
    \\157\SOH\n\
    \\STX\EOT\f\DC2\ENQy\NUL\131\SOH\SOH\SUB\143\SOH Deprecated. This message is replaced with `Deployment` and `VersioningBehavior`.\n\
    \ Identifies the version(s) of a worker that processed a task\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\f\SOH\DC2\ETXy\b\SUB\n\
    \\169\SOH\n\
    \\EOT\EOT\f\STX\NUL\DC2\ETX|\EOT\CAN\SUB\155\SOH An opaque whole-worker identifier. Replaces the deprecated `binary_checksum` field when this\n\
    \ message is included in requests which previously used that.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\ETX|\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\ETX|\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\ETX|\SYN\ETB\n\
    \\173\SOH\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\128\SOH\EOT\FS\SUB\158\SOH If set, the worker is opting in to worker versioning. Otherwise, this is used only as a\n\
    \ marker for workflow reset points and the BuildIDs search attribute.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\EOT\128\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\128\SOH\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\128\SOH\SUB\ESC\n\
    \\198\STX\n\
    \\STX\EOT\r\DC2\ACK\137\SOH\NUL\149\SOH\SOH\SUB\183\STX Identifies the version that a worker is compatible with when polling or identifying itself,\n\
    \ and whether or not this worker is opting into the build-id based versioning feature. This is\n\
    \ used by matching to determine which workers ought to receive what tasks.\n\
    \ Deprecated. Use WorkerDeploymentOptions instead.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\137\SOH\b!\n\
    \1\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\139\SOH\EOT\CAN\SUB# An opaque whole-worker identifier\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\EOT\139\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\139\SOH\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\139\SOH\SYN\ETB\n\
    \t\n\
    \\EOT\EOT\r\STX\SOH\DC2\EOT\143\SOH\EOT\FS\SUBf If set, the worker is opting in to worker versioning, and wishes to only receive appropriate\n\
    \ tasks.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ENQ\DC2\EOT\143\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\EOT\143\SOH\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\EOT\143\SOH\SUB\ESC\n\
    \U\n\
    \\EOT\EOT\r\STX\STX\DC2\EOT\146\SOH\EOT&\SUBG Must be sent if user has set a deployment series name (versioning-3).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ENQ\DC2\EOT\146\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\SOH\DC2\EOT\146\SOH\v!\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ETX\DC2\EOT\146\SOH$%\n\
    \\141\SOH\n\
    \\STX\EOT\SO\DC2\ACK\153\SOH\NUL\182\SOH\SOH\SUB\DEL Describes where and how to reset a workflow, used for batch reset currently\n\
    \ and may be used for single-workflow reset later.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\153\SOH\b\DC4\n\
    \2\n\
    \\EOT\EOT\SO\b\NUL\DC2\ACK\155\SOH\EOT\170\SOH\ENQ\SUB\" Which workflow task to reset to.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\b\NUL\SOH\DC2\EOT\155\SOH\n\
    \\DLE\n\
    \M\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\157\SOH\b6\SUB? Resets to the first workflow task completed or started event.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ACK\DC2\EOT\157\SOH\b\GS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\157\SOH\RS1\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\157\SOH45\n\
    \L\n\
    \\EOT\EOT\SO\STX\SOH\DC2\EOT\159\SOH\b5\SUB> Resets to the last workflow task completed or started event.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ACK\DC2\EOT\159\SOH\b\GS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\EOT\159\SOH\RS0\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\EOT\159\SOH34\n\
    \\241\SOH\n\
    \\EOT\EOT\SO\STX\STX\DC2\EOT\163\SOH\b#\SUB\226\SOH The id of a specific `WORKFLOW_TASK_COMPLETED`,`WORKFLOW_TASK_TIMED_OUT`, `WORKFLOW_TASK_FAILED`, or\n\
    \ `WORKFLOW_TASK_STARTED` event to reset to.\n\
    \ Note that this option doesn't make sense when used as part of a batch request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ENQ\DC2\EOT\163\SOH\b\r\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\SOH\DC2\EOT\163\SOH\SO\RS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ETX\DC2\EOT\163\SOH!\"\n\
    \\171\STX\n\
    \\EOT\EOT\SO\STX\ETX\DC2\EOT\169\SOH\b\FS\SUB\156\STX Resets to the first workflow task processed by this build id.\n\
    \ If the workflow was not processed by the build id, or the workflow task can't be\n\
    \ determined, no reset will be performed.\n\
    \ Note that by default, this reset is allowed to be to a prior run in a chain of\n\
    \ continue-as-new.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\ENQ\DC2\EOT\169\SOH\b\SO\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\SOH\DC2\EOT\169\SOH\SI\ETB\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\ETX\DC2\EOT\169\SOH\SUB\ESC\n\
    \N\n\
    \\EOT\EOT\SO\STX\EOT\DC2\EOT\174\SOH\EOTW\SUB@ Deprecated. Use `options`.\n\
    \ Default: RESET_REAPPLY_TYPE_SIGNAL\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EOT\ACK\DC2\EOT\174\SOH\EOT*\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EOT\SOH\DC2\EOT\174\SOH+=\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EOT\ETX\DC2\EOT\174\SOH@B\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EOT\b\DC2\EOT\174\SOHCV\n\
    \\SO\n\
    \\ACK\EOT\SO\STX\EOT\b\ETX\DC2\EOT\174\SOHDU\n\
    \\138\SOH\n\
    \\EOT\EOT\SO\STX\ENQ\DC2\EOT\178\SOH\EOT\US\SUB| If true, limit the reset to only within the current run. (Applies to build_id targets and\n\
    \ possibly others in the future.)\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ENQ\ENQ\DC2\EOT\178\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ENQ\SOH\DC2\EOT\178\SOH\t\EM\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ENQ\ETX\DC2\EOT\178\SOH\FS\RS\n\
    \/\n\
    \\EOT\EOT\SO\STX\ACK\DC2\EOT\181\SOH\EOT\\\SUB! Event types not to be reapplied\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ACK\EOT\DC2\EOT\181\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ACK\ACK\DC2\EOT\181\SOH\r:\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ACK\SOH\DC2\EOT\181\SOH;V\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ACK\ETX\DC2\EOT\181\SOHY[\n\
    \a\n\
    \\STX\EOT\SI\DC2\ACK\185\SOH\NUL\246\SOH\SOH\SUBS Callback to attach to various events in the system, e.g. workflow run completion.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\185\SOH\b\DLE\n\
    \\185\SOH\n\
    \\EOT\EOT\SI\ETX\NUL\DC2\ACK\188\SOH\EOT\193\SOH\ENQ\SUB\168\SOH Nexus callbacks are used to delivery Nexus operation completions, as defined in the Nexus RPC spec: \n\
    \ https://github.com/nexus-rpc/api/blob/main/SPEC.md#callback-urls\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\ETX\NUL\SOH\DC2\EOT\188\SOH\f\DC1\n\
    \\US\n\
    \\ACK\EOT\SI\ETX\NUL\STX\NUL\DC2\EOT\190\SOH\b\ETB\SUB\SI Callback URL.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SI\ETX\NUL\STX\NUL\ENQ\DC2\EOT\190\SOH\b\SO\n\
    \\SI\n\
    \\a\EOT\SI\ETX\NUL\STX\NUL\SOH\DC2\EOT\190\SOH\SI\DC2\n\
    \\SI\n\
    \\a\EOT\SI\ETX\NUL\STX\NUL\ETX\DC2\EOT\190\SOH\NAK\SYN\n\
    \7\n\
    \\ACK\EOT\SI\ETX\NUL\STX\SOH\DC2\EOT\192\SOH\b'\SUB' Header to attach to callback request.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SI\ETX\NUL\STX\SOH\ACK\DC2\EOT\192\SOH\b\ESC\n\
    \\SI\n\
    \\a\EOT\SI\ETX\NUL\STX\SOH\SOH\DC2\EOT\192\SOH\FS\"\n\
    \\SI\n\
    \\a\EOT\SI\ETX\NUL\STX\SOH\ETX\DC2\EOT\192\SOH%&\n\
    \\222\STX\n\
    \\EOT\EOT\SI\ETX\SOH\DC2\ACK\199\SOH\EOT\202\SOH\ENQ\SUB\205\STX Callbacks to be delivered internally within the system.\n\
    \ This variant is not settable in the API and will be rejected by the service with an INVALID_ARGUMENT error.\n\
    \ The only reason that this is exposed is because callbacks are replicated across clusters via the\n\
    \ WorkflowExecutionStarted event, which is defined in the public API.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\ETX\SOH\SOH\DC2\EOT\199\SOH\f\DC4\n\
    \'\n\
    \\ACK\EOT\SI\ETX\SOH\STX\NUL\DC2\EOT\201\SOH\b\ETB\SUB\ETB Opaque internal data.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SI\ETX\SOH\STX\NUL\ENQ\DC2\EOT\201\SOH\b\r\n\
    \\SI\n\
    \\a\EOT\SI\ETX\SOH\STX\NUL\SOH\DC2\EOT\201\SOH\SO\DC2\n\
    \\SI\n\
    \\a\EOT\SI\ETX\SOH\STX\NUL\ETX\DC2\EOT\201\SOH\NAK\SYN\n\
    \\139\ACK\n\
    \\EOT\EOT\SI\ETX\STX\DC2\ACK\216\SOH\EOT\234\SOH\ENQ\SUB\250\ENQ NexusHandler callbacks are requests to invoke a specific shape of Nexus operation on a Temporal worker.\n\
    \ The specified Nexus operation must have the following:\n\
    \ - Input:  temporal.api.notificationservice.v1.OnCompleteRequest\n\
    \ - Output: temporal.api.notificationservice.v1.OnCompleteResponse\n\
    \\n\
    \ The targeted Nexus service must be registered within the same namespace as the source operation\n\
    \ the callback is attached to. (While Nexus allows for cross-namespace operations, NexusHandler callbacks\n\
    \ are strictly caller-side.)\n\
    \\n\
    \ NexusHandler callbacks are only supported for certain types of operations, e.g. standalone Nexus operations.\n\
    \ Attempting to attach a Worker callback for an unsupported operation will result in an INVALID_ARGUMENT\n\
    \ error from the server.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\ETX\STX\SOH\DC2\EOT\216\SOH\f\CAN\n\
    \\162\SOH\n\
    \\ACK\EOT\SI\ETX\STX\STX\NUL\DC2\EOT\220\SOH\b#\SUB\145\SOH Nexus task queue the Temporal worker is listening on.\n\
    \\n\
    \ NOTE: This is not a temporal.api.taskqueue.v1.TaskQueue to avoid a circular dependency.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SI\ETX\STX\STX\NUL\ENQ\DC2\EOT\220\SOH\b\SO\n\
    \\SI\n\
    \\a\EOT\SI\ETX\STX\STX\NUL\SOH\DC2\EOT\220\SOH\SI\RS\n\
    \\SI\n\
    \\a\EOT\SI\ETX\STX\STX\NUL\ETX\DC2\EOT\220\SOH!\"\n\
    \;\n\
    \\ACK\EOT\SI\ETX\STX\STX\SOH\DC2\EOT\223\SOH\b\ESC\SUB+ Target Nexus service, e.g. \"HTTPAdapter\".\n\
    \\n\
    \\SI\n\
    \\a\EOT\SI\ETX\STX\STX\SOH\ENQ\DC2\EOT\223\SOH\b\SO\n\
    \\SI\n\
    \\a\EOT\SI\ETX\STX\STX\SOH\SOH\DC2\EOT\223\SOH\SI\SYN\n\
    \\SI\n\
    \\a\EOT\SI\ETX\STX\STX\SOH\ETX\DC2\EOT\223\SOH\EM\SUB\n\
    \<\n\
    \\ACK\EOT\SI\ETX\STX\STX\STX\DC2\EOT\225\SOH\b\GS\SUB, Target operation, e.g. \"DeliverAsWebhook\".\n\
    \\n\
    \\SI\n\
    \\a\EOT\SI\ETX\STX\STX\STX\ENQ\DC2\EOT\225\SOH\b\SO\n\
    \\SI\n\
    \\a\EOT\SI\ETX\STX\STX\STX\SOH\DC2\EOT\225\SOH\SI\CAN\n\
    \\SI\n\
    \\a\EOT\SI\ETX\STX\STX\STX\ETX\DC2\EOT\225\SOH\ESC\FS\n\
    \\193\ETX\n\
    \\ACK\EOT\SI\ETX\STX\STX\ETX\DC2\EOT\233\SOH\b:\SUB\176\ETX Arbitrary user-supplied data from the source operation's callsite. (As applicable, not all operations\n\
    \ support attaching context data.)\n\
    \\n\
    \ There are restrictions on the maxium payload size a single callback can carry, as well as the\n\
    \ total sum of all source context payloads attached to an execution. See dynamic configuration:\n\
    \ \"callback.nexusHandler.sourceContext.maxSize\", \"callback.nexusHandler.sourceContext.aggregateMaxSize\".\n\
    \\n\
    \\SI\n\
    \\a\EOT\SI\ETX\STX\STX\ETX\ACK\DC2\EOT\233\SOH\b&\n\
    \\SI\n\
    \\a\EOT\SI\ETX\STX\STX\ETX\SOH\DC2\EOT\233\SOH'5\n\
    \\SI\n\
    \\a\EOT\SI\ETX\STX\STX\ETX\ETX\DC2\EOT\233\SOH89\n\
    \B\n\
    \\ETX\EOT\SI\t\DC2\EOT\236\SOH\EOT\SI\"5 For a generic callback mechanism to be added later.\n\
    \\n\
    \\f\n\
    \\EOT\EOT\SI\t\NUL\DC2\EOT\236\SOH\r\SO\n\
    \\r\n\
    \\ENQ\EOT\SI\t\NUL\SOH\DC2\EOT\236\SOH\r\SO\n\
    \\r\n\
    \\ENQ\EOT\SI\t\NUL\STX\DC2\EOT\236\SOH\r\SO\n\
    \\SO\n\
    \\EOT\EOT\SI\b\NUL\DC2\ACK\237\SOH\EOT\241\SOH\ENQ\n\
    \\r\n\
    \\ENQ\EOT\SI\b\NUL\SOH\DC2\EOT\237\SOH\n\
    \\DC1\n\
    \\f\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\238\SOH\b\CAN\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ACK\DC2\EOT\238\SOH\b\r\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\238\SOH\SO\DC3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\238\SOH\SYN\ETB\n\
    \\f\n\
    \\EOT\EOT\SI\STX\SOH\DC2\EOT\239\SOH\b\RS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ACK\DC2\EOT\239\SOH\b\DLE\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\EOT\239\SOH\DC1\EM\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\EOT\239\SOH\FS\GS\n\
    \\f\n\
    \\EOT\EOT\SI\STX\STX\DC2\EOT\240\SOH\b'\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ACK\DC2\EOT\240\SOH\b\DC4\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\SOH\DC2\EOT\240\SOH\NAK\"\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ETX\DC2\EOT\240\SOH%&\n\
    \t\n\
    \\EOT\EOT\SI\STX\ETX\DC2\EOT\245\SOH\EOT\RS\SUBf Links associated with the callback. It can be used to link to underlying resources of the\n\
    \ callback.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\EOT\DC2\EOT\245\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ACK\DC2\EOT\245\SOH\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\SOH\DC2\EOT\245\SOH\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ETX\DC2\EOT\245\SOH\SUB\GS\n\
    \\212\STX\n\
    \\STX\EOT\DLE\DC2\ACK\252\SOH\NUL\203\STX\SOH\SUB\197\STX Link can be associated with history events. It might contain information about an external entity\n\
    \ related to the history event. For example, workflow A makes a Nexus call that starts workflow B:\n\
    \ in this case, a history event in workflow A could contain a Link to the workflow started event in\n\
    \ workflow B, and vice-versa.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\252\SOH\b\f\n\
    \\SO\n\
    \\EOT\EOT\DLE\ETX\NUL\DC2\ACK\253\SOH\EOT\148\STX\ENQ\n\
    \\r\n\
    \\ENQ\EOT\DLE\ETX\NUL\SOH\DC2\EOT\253\SOH\f\EM\n\
    \a\n\
    \\ACK\EOT\DLE\ETX\NUL\ETX\NUL\DC2\ACK\255\SOH\b\130\STX\t\SUBO EventReference is a direct reference to a history event through the event ID.\n\
    \\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\NUL\ETX\NUL\SOH\DC2\EOT\255\SOH\DLE\RS\n\
    \\DLE\n\
    \\b\EOT\DLE\ETX\NUL\ETX\NUL\STX\NUL\DC2\EOT\128\STX\f\US\n\
    \\DC1\n\
    \\t\EOT\DLE\ETX\NUL\ETX\NUL\STX\NUL\ENQ\DC2\EOT\128\STX\f\DC1\n\
    \\DC1\n\
    \\t\EOT\DLE\ETX\NUL\ETX\NUL\STX\NUL\SOH\DC2\EOT\128\STX\DC2\SUB\n\
    \\DC1\n\
    \\t\EOT\DLE\ETX\NUL\ETX\NUL\STX\NUL\ETX\DC2\EOT\128\STX\GS\RS\n\
    \\DLE\n\
    \\b\EOT\DLE\ETX\NUL\ETX\NUL\STX\SOH\DC2\EOT\129\STX\f;\n\
    \\DC1\n\
    \\t\EOT\DLE\ETX\NUL\ETX\NUL\STX\SOH\ACK\DC2\EOT\129\STX\f+\n\
    \\DC1\n\
    \\t\EOT\DLE\ETX\NUL\ETX\NUL\STX\SOH\SOH\DC2\EOT\129\STX,6\n\
    \\DC1\n\
    \\t\EOT\DLE\ETX\NUL\ETX\NUL\STX\SOH\ETX\DC2\EOT\129\STX9:\n\
    \i\n\
    \\ACK\EOT\DLE\ETX\NUL\ETX\SOH\DC2\ACK\133\STX\b\136\STX\t\SUBW RequestIdReference is a indirect reference to a history event through the request ID.\n\
    \\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\NUL\ETX\SOH\SOH\DC2\EOT\133\STX\DLE\"\n\
    \\DLE\n\
    \\b\EOT\DLE\ETX\NUL\ETX\SOH\STX\NUL\DC2\EOT\134\STX\f\"\n\
    \\DC1\n\
    \\t\EOT\DLE\ETX\NUL\ETX\SOH\STX\NUL\ENQ\DC2\EOT\134\STX\f\DC2\n\
    \\DC1\n\
    \\t\EOT\DLE\ETX\NUL\ETX\SOH\STX\NUL\SOH\DC2\EOT\134\STX\DC3\GS\n\
    \\DC1\n\
    \\t\EOT\DLE\ETX\NUL\ETX\SOH\STX\NUL\ETX\DC2\EOT\134\STX !\n\
    \\DLE\n\
    \\b\EOT\DLE\ETX\NUL\ETX\SOH\STX\SOH\DC2\EOT\135\STX\f;\n\
    \\DC1\n\
    \\t\EOT\DLE\ETX\NUL\ETX\SOH\STX\SOH\ACK\DC2\EOT\135\STX\f+\n\
    \\DC1\n\
    \\t\EOT\DLE\ETX\NUL\ETX\SOH\STX\SOH\SOH\DC2\EOT\135\STX,6\n\
    \\DC1\n\
    \\t\EOT\DLE\ETX\NUL\ETX\SOH\STX\SOH\ETX\DC2\EOT\135\STX9:\n\
    \\SO\n\
    \\ACK\EOT\DLE\ETX\NUL\STX\NUL\DC2\EOT\138\STX\b\GS\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\NUL\STX\NUL\ENQ\DC2\EOT\138\STX\b\SO\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\NUL\STX\NUL\SOH\DC2\EOT\138\STX\SI\CAN\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\NUL\STX\NUL\ETX\DC2\EOT\138\STX\ESC\FS\n\
    \\SO\n\
    \\ACK\EOT\DLE\ETX\NUL\STX\SOH\DC2\EOT\139\STX\b\US\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\NUL\STX\SOH\ENQ\DC2\EOT\139\STX\b\SO\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\NUL\STX\SOH\SOH\DC2\EOT\139\STX\SI\SUB\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\NUL\STX\SOH\ETX\DC2\EOT\139\STX\GS\RS\n\
    \\SO\n\
    \\ACK\EOT\DLE\ETX\NUL\STX\STX\DC2\EOT\140\STX\b\SUB\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\NUL\STX\STX\ENQ\DC2\EOT\140\STX\b\SO\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\NUL\STX\STX\SOH\DC2\EOT\140\STX\SI\NAK\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\NUL\STX\STX\ETX\DC2\EOT\140\STX\CAN\EM\n\
    \\155\SOH\n\
    \\ACK\EOT\DLE\ETX\NUL\b\NUL\DC2\ACK\144\STX\b\147\STX\t\SUB\136\SOH Additional information about the workflow event.\n\
    \ Eg: the caller workflow can send the history event details that made the Nexus call.\n\
    \\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\NUL\b\NUL\SOH\DC2\EOT\144\STX\SO\ETB\n\
    \\SO\n\
    \\ACK\EOT\DLE\ETX\NUL\STX\ETX\DC2\EOT\145\STX\f+\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\NUL\STX\ETX\ACK\DC2\EOT\145\STX\f\SUB\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\NUL\STX\ETX\SOH\DC2\EOT\145\STX\ESC$\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\NUL\STX\ETX\ETX\DC2\EOT\145\STX'*\n\
    \\SO\n\
    \\ACK\EOT\DLE\ETX\NUL\STX\EOT\DC2\EOT\146\STX\f4\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\NUL\STX\EOT\ACK\DC2\EOT\146\STX\f\RS\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\NUL\STX\EOT\SOH\DC2\EOT\146\STX\US-\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\NUL\STX\EOT\ETX\DC2\EOT\146\STX03\n\
    \\249\SOH\n\
    \\EOT\EOT\DLE\ETX\SOH\DC2\ACK\153\STX\EOT\155\STX\ENQ\SUB\232\SOH A link to a built-in batch job.\n\
    \ Batch jobs can be used to perform operations on a set of workflows (e.g. terminate, signal, cancel, etc).\n\
    \ This link can be put on workflow history events generated by actions taken by a batch job.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\ETX\SOH\SOH\DC2\EOT\153\STX\f\DC4\n\
    \\SO\n\
    \\ACK\EOT\DLE\ETX\SOH\STX\NUL\DC2\EOT\154\STX\b\SUB\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\SOH\STX\NUL\ENQ\DC2\EOT\154\STX\b\SO\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\SOH\STX\NUL\SOH\DC2\EOT\154\STX\SI\NAK\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\SOH\STX\NUL\ETX\DC2\EOT\154\STX\CAN\EM\n\
    \(\n\
    \\EOT\EOT\DLE\ETX\STX\DC2\ACK\158\STX\EOT\162\STX\ENQ\SUB\CAN A link to an activity.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\ETX\STX\SOH\DC2\EOT\158\STX\f\DC4\n\
    \\SO\n\
    \\ACK\EOT\DLE\ETX\STX\STX\NUL\DC2\EOT\159\STX\b\GS\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\STX\STX\NUL\ENQ\DC2\EOT\159\STX\b\SO\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\STX\STX\NUL\SOH\DC2\EOT\159\STX\SI\CAN\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\STX\STX\NUL\ETX\DC2\EOT\159\STX\ESC\FS\n\
    \\SO\n\
    \\ACK\EOT\DLE\ETX\STX\STX\SOH\DC2\EOT\160\STX\b\US\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\STX\STX\SOH\ENQ\DC2\EOT\160\STX\b\SO\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\STX\STX\SOH\SOH\DC2\EOT\160\STX\SI\SUB\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\STX\STX\SOH\ETX\DC2\EOT\160\STX\GS\RS\n\
    \\SO\n\
    \\ACK\EOT\DLE\ETX\STX\STX\STX\DC2\EOT\161\STX\b\SUB\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\STX\STX\STX\ENQ\DC2\EOT\161\STX\b\SO\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\STX\STX\STX\SOH\DC2\EOT\161\STX\SI\NAK\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\STX\STX\STX\ETX\DC2\EOT\161\STX\CAN\EM\n\
    \9\n\
    \\EOT\EOT\DLE\ETX\ETX\DC2\ACK\165\STX\EOT\169\STX\ENQ\SUB) A link to a standalone Nexus operation.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\ETX\ETX\SOH\DC2\EOT\165\STX\f\SUB\n\
    \\SO\n\
    \\ACK\EOT\DLE\ETX\ETX\STX\NUL\DC2\EOT\166\STX\b\GS\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ETX\STX\NUL\ENQ\DC2\EOT\166\STX\b\SO\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ETX\STX\NUL\SOH\DC2\EOT\166\STX\SI\CAN\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ETX\STX\NUL\ETX\DC2\EOT\166\STX\ESC\FS\n\
    \\SO\n\
    \\ACK\EOT\DLE\ETX\ETX\STX\SOH\DC2\EOT\167\STX\b \n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ETX\STX\SOH\ENQ\DC2\EOT\167\STX\b\SO\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ETX\STX\SOH\SOH\DC2\EOT\167\STX\SI\ESC\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ETX\STX\SOH\ETX\DC2\EOT\167\STX\RS\US\n\
    \\SO\n\
    \\ACK\EOT\DLE\ETX\ETX\STX\STX\DC2\EOT\168\STX\b\SUB\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ETX\STX\STX\ENQ\DC2\EOT\168\STX\b\SO\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ETX\STX\STX\SOH\DC2\EOT\168\STX\SI\NAK\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ETX\STX\STX\ETX\DC2\EOT\168\STX\CAN\EM\n\
    \\160\STX\n\
    \\EOT\EOT\DLE\ETX\EOT\DC2\ACK\174\STX\EOT\179\STX\ENQ\SUB\143\STX A link to a workflow execution. This is a more general version of WorkflowEvent that doesn't specify a \n\
    \ particular event within the workflow, useful when you want to link to a workflow but there is no particular event to link to,\n\
    \ such as a Query or a Rejected Update.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\ETX\EOT\SOH\DC2\EOT\174\STX\f\DC4\n\
    \\SO\n\
    \\ACK\EOT\DLE\ETX\EOT\STX\NUL\DC2\EOT\175\STX\b\GS\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\EOT\STX\NUL\ENQ\DC2\EOT\175\STX\b\SO\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\EOT\STX\NUL\SOH\DC2\EOT\175\STX\SI\CAN\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\EOT\STX\NUL\ETX\DC2\EOT\175\STX\ESC\FS\n\
    \\SO\n\
    \\ACK\EOT\DLE\ETX\EOT\STX\SOH\DC2\EOT\176\STX\b\US\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\EOT\STX\SOH\ENQ\DC2\EOT\176\STX\b\SO\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\EOT\STX\SOH\SOH\DC2\EOT\176\STX\SI\SUB\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\EOT\STX\SOH\ETX\DC2\EOT\176\STX\GS\RS\n\
    \\SO\n\
    \\ACK\EOT\DLE\ETX\EOT\STX\STX\DC2\EOT\177\STX\b\SUB\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\EOT\STX\STX\ENQ\DC2\EOT\177\STX\b\SO\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\EOT\STX\STX\SOH\DC2\EOT\177\STX\SI\NAK\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\EOT\STX\STX\ETX\DC2\EOT\177\STX\CAN\EM\n\
    \\SO\n\
    \\ACK\EOT\DLE\ETX\EOT\STX\ETX\DC2\EOT\178\STX\b\SUB\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\EOT\STX\ETX\ENQ\DC2\EOT\178\STX\b\SO\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\EOT\STX\ETX\SOH\DC2\EOT\178\STX\SI\NAK\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\EOT\STX\ETX\ETX\DC2\EOT\178\STX\CAN\EM\n\
    \\238\SOH\n\
    \\EOT\EOT\DLE\ETX\ENQ\DC2\ACK\183\STX\EOT\193\STX\ENQ\SUB\221\SOH A link to a worker callback attached to an execution. An execution (e.g. standalone Nexus operation) can have\n\
    \ multiple callbacks attached, and will be differentiated by the request_id used when the callback is invoked.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\ETX\ENQ\SOH\DC2\EOT\183\STX\f\DC4\n\
    \\SO\n\
    \\ACK\EOT\DLE\ETX\ENQ\STX\NUL\DC2\EOT\184\STX\b\GS\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ENQ\STX\NUL\ENQ\DC2\EOT\184\STX\b\SO\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ENQ\STX\NUL\SOH\DC2\EOT\184\STX\SI\CAN\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ENQ\STX\NUL\ETX\DC2\EOT\184\STX\ESC\FS\n\
    \\SO\n\
    \\ACK\EOT\DLE\ETX\ENQ\STX\SOH\DC2\EOT\185\STX\b \n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ENQ\STX\SOH\ACK\DC2\EOT\185\STX\b\DC1\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ENQ\STX\SOH\SOH\DC2\EOT\185\STX\DC2\ESC\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ENQ\STX\SOH\ETX\DC2\EOT\185\STX\RS\US\n\
    \\212\STX\n\
    \\ACK\EOT\DLE\ETX\ENQ\STX\STX\DC2\EOT\189\STX\b+\SUB\195\STX In most cases, the Execution is sufficient to identify the callback's source. But the callback could have\n\
    \ been attached some child component of that execution. e.g. a workflow update. The component path describes\n\
    \ the unique component as applicable, typically ending with a unique ID. e.g. [\"Update\", $workflowUpdateId ]\n\
    \\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ENQ\STX\STX\EOT\DC2\EOT\189\STX\b\DLE\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ENQ\STX\STX\ENQ\DC2\EOT\189\STX\DC1\ETB\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ENQ\STX\STX\SOH\DC2\EOT\189\STX\CAN&\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ENQ\STX\STX\ETX\DC2\EOT\189\STX)*\n\
    \S\n\
    \\ACK\EOT\DLE\ETX\ENQ\STX\ETX\DC2\EOT\192\STX\b\US\SUBC Server-generate request ID sent when the callback was dispatched.\n\
    \\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ENQ\STX\ETX\ENQ\DC2\EOT\192\STX\b\SO\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ENQ\STX\ETX\SOH\DC2\EOT\192\STX\SI\EM\n\
    \\SI\n\
    \\a\EOT\DLE\ETX\ENQ\STX\ETX\ETX\DC2\EOT\192\STX\GS\RS\n\
    \\SO\n\
    \\EOT\EOT\DLE\b\NUL\DC2\ACK\195\STX\EOT\202\STX\ENQ\n\
    \\r\n\
    \\ENQ\EOT\DLE\b\NUL\SOH\DC2\EOT\195\STX\n\
    \\DC1\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\196\STX\b)\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ACK\DC2\EOT\196\STX\b\NAK\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\196\STX\SYN$\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\196\STX'(\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\SOH\DC2\EOT\197\STX\b\US\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ACK\DC2\EOT\197\STX\b\DLE\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\EOT\197\STX\DC1\SUB\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\EOT\197\STX\GS\RS\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\STX\DC2\EOT\198\STX\b\RS\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ACK\DC2\EOT\198\STX\b\DLE\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\SOH\DC2\EOT\198\STX\DC1\EM\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ETX\DC2\EOT\198\STX\FS\GS\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\ETX\DC2\EOT\199\STX\b+\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\ACK\DC2\EOT\199\STX\b\SYN\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\SOH\DC2\EOT\199\STX\ETB&\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\ETX\DC2\EOT\199\STX)*\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\EOT\DC2\EOT\200\STX\b\RS\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\EOT\ACK\DC2\EOT\200\STX\b\DLE\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\EOT\SOH\DC2\EOT\200\STX\DC1\EM\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\EOT\ETX\DC2\EOT\200\STX\FS\GS\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\ENQ\DC2\EOT\201\STX\b\RS\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ENQ\ACK\DC2\EOT\201\STX\b\DLE\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ENQ\SOH\DC2\EOT\201\STX\DC1\EM\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ENQ\ETX\DC2\EOT\201\STX\FS\GS\n\
    \z\n\
    \\STX\EOT\DC1\DC2\ACK\207\STX\NUL\212\STX\SOH\SUBl Principal is an authenticated caller identity computed by the server from trusted\n\
    \ authentication context.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\207\STX\b\DC1\n\
    \Q\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\209\STX\EOT\DC4\SUBC Low-cardinality category of the principal (e.g., \"jwt\", \"users\").\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ENQ\DC2\EOT\209\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\209\STX\v\SI\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\209\STX\DC2\DC3\n\
    \U\n\
    \\EOT\EOT\DC1\STX\SOH\DC2\EOT\211\STX\EOT\DC4\SUBG Identifier within that category (e.g., sub JWT claim, email address).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ENQ\DC2\EOT\211\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\SOH\DC2\EOT\211\STX\v\SI\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ETX\DC2\EOT\211\STX\DC2\DC3\n\
    \K\n\
    \\STX\EOT\DC2\DC2\ACK\215\STX\NUL\225\STX\SOH\SUB= ResolvedPrincipal is a principal returned to an API caller.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\215\STX\b\EM\n\
    \Q\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\217\STX\EOT\DC4\SUBC Low-cardinality category of the principal (e.g., \"jwt\", \"users\").\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ENQ\DC2\EOT\217\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\217\STX\v\SI\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\217\STX\DC2\DC3\n\
    \\250\STX\n\
    \\EOT\EOT\DC2\STX\SOH\DC2\EOT\224\STX\EOT\"\SUB\235\STX Identifier within that category (e.g., sub JWT claim, email address).\n\
    \\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: Identifies the principal name snapshot used for this response. --)\n\
    \ (-- api-linter: core::0142::time-field-type=disabled\n\
    \     aip.dev/not-precedent: This string is a principal name snapshot, not a timestamp. --)\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ENQ\DC2\EOT\224\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\SOH\DC2\EOT\224\STX\v\GS\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ETX\DC2\EOT\224\STX !\n\
    \\230\f\n\
    \\STX\EOT\DC3\DC2\ACK\131\ETX\NUL\180\ETX\SOH\SUB\215\f Priority contains metadata that controls relative ordering of task processing\n\
    \ when tasks are backed up in a queue. Initially, Priority will be used in\n\
    \ matching (workflow and activity) task queues. Later it may be used in history\n\
    \ task queues and in rate limiting decisions.\n\
    \\n\
    \ Priority is attached to workflows and activities. By default, activities\n\
    \ inherit Priority from the workflow that created them, but may override fields\n\
    \ when an activity is started or modified.\n\
    \\n\
    \ Despite being named \"Priority\", this message also contains fields that\n\
    \ control \"fairness\" mechanisms.\n\
    \\n\
    \ For all fields, the field not present or equal to zero/empty string means to\n\
    \ inherit the value from the calling workflow, or if there is no calling\n\
    \ workflow, then use the default value.\n\
    \\n\
    \ For all fields other than fairness_key, the zero value isn't meaningful so\n\
    \ there's no confusion between inherit/default and a meaningful value. For\n\
    \ fairness_key, the empty string will be interpreted as \"inherit\". This means\n\
    \ that if a workflow has a non-empty fairness key, you can't override the\n\
    \ fairness key of its activity to the empty string.\n\
    \\n\
    \ The overall semantics of Priority are:\n\
    \ 1. First, consider \"priority\": higher priority (lower number) goes first.\n\
    \ 2. Then, consider fairness: try to dispatch tasks for different fairness keys\n\
    \    in proportion to their weight.\n\
    \\n\
    \ Applications may use any subset of mechanisms that are useful to them and\n\
    \ leave the other fields to use default values.\n\
    \\n\
    \ Not all queues in the system may support the \"full\" semantics of all priority\n\
    \ fields. (Currently only support in matching task queues is planned.)\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\131\ETX\b\DLE\n\
    \\180\EOT\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\EOT\143\ETX\EOT\ESC\SUB\165\EOT Priority key is a positive integer from 1 to n, where smaller integers\n\
    \ correspond to higher priorities (tasks run sooner). In general, tasks in\n\
    \ a queue should be processed in close to priority order, although small\n\
    \ deviations are possible.\n\
    \\n\
    \ The maximum priority value (minimum priority) is determined by server\n\
    \ configuration, and defaults to 5.\n\
    \\n\
    \ If priority is not present (or zero), then the effective priority will be\n\
    \ the default priority, which is calculated by (min+max)/2. With the\n\
    \ default max of 5, and min of 1, that comes out to 3.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ENQ\DC2\EOT\143\ETX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\143\ETX\n\
    \\SYN\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\143\ETX\EM\SUB\n\
    \\146\t\n\
    \\EOT\EOT\DC3\STX\SOH\DC2\EOT\169\ETX\EOT\FS\SUB\131\t Fairness key is a short string that's used as a key for a fairness\n\
    \ balancing mechanism. It may correspond to a tenant id, or to a fixed\n\
    \ string like \"high\" or \"low\". The default is the empty string.\n\
    \\n\
    \ The fairness mechanism attempts to dispatch tasks for a given key in\n\
    \ proportion to its weight. For example, using a thousand distinct tenant\n\
    \ ids, each with a weight of 1.0 (the default) will result in each tenant\n\
    \ getting a roughly equal share of task dispatch throughput.\n\
    \\n\
    \ (Note: this does not imply equal share of worker capacity! Fairness\n\
    \ decisions are made based on queue statistics, not\n\
    \ current worker load.)\n\
    \\n\
    \ As another example, using keys \"high\" and \"low\" with weight 9.0 and 1.0\n\
    \ respectively will prefer dispatching \"high\" tasks over \"low\" tasks at a\n\
    \ 9:1 ratio, while allowing either key to use all worker capacity if the\n\
    \ other is not present.\n\
    \\n\
    \ All fairness mechanisms, including rate limits, are best-effort and\n\
    \ probabilistic. The results may not match what a \"perfect\" algorithm with\n\
    \ infinite resources would produce. The more unique keys are used, the less\n\
    \ accurate the results will be.\n\
    \\n\
    \ Fairness keys are limited to 64 bytes.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ENQ\DC2\EOT\169\ETX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\SOH\DC2\EOT\169\ETX\v\ETB\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ETX\DC2\EOT\169\ETX\SUB\ESC\n\
    \\133\ETX\n\
    \\EOT\EOT\DC3\STX\STX\DC2\EOT\179\ETX\EOT\RS\SUB\246\STX Fairness weight for a task can come from multiple sources for\n\
    \ flexibility. From highest to lowest precedence:\n\
    \ 1. Weights for a small set of keys can be overridden in task queue\n\
    \    configuration with an API.\n\
    \ 2. It can be attached to the workflow/activity in this field.\n\
    \ 3. The default weight of 1.0 will be used.\n\
    \\n\
    \ Weight values are clamped to the range [0.001, 1000].\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\ENQ\DC2\EOT\179\ETX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\SOH\DC2\EOT\179\ETX\n\
    \\EM\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\ETX\DC2\EOT\179\ETX\FS\GS\n\
    \\227\SOH\n\
    \\STX\EOT\DC4\DC2\ACK\185\ETX\NUL\198\ETX\SOH\SUB\212\SOH This is used to send commands to a specific worker or a group of workers.\n\
    \ Right now, it is used to send commands to a specific worker instance.\n\
    \ Will be extended to be able to send command to multiple workers.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC4\SOH\DC2\EOT\185\ETX\b\SYN\n\
    \\220\STX\n\
    \\EOT\EOT\DC4\b\NUL\DC2\ACK\194\ETX\EOT\197\ETX\ENQ\SUB\203\STX Options are:\n\
    \ - query (will be used as query to ListWorkers, same format as in ListWorkersRequest.query)\n\
    \ - task queue (just a shortcut. Same as query=' \"TaskQueue\"=\"my-task-queue\" ')\n\
    \ - etc.\n\
    \   All but 'query' are shortcuts, can be replaced with a query, but it is not convenient.\n\
    \ string query = 5;\n\
    \ string task_queue = 6;\n\
    \ ...\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\b\NUL\SOH\DC2\EOT\194\ETX\n\
    \\DC2\n\
    \H\n\
    \\EOT\EOT\DC4\STX\NUL\DC2\EOT\196\ETX\b'\SUB: Worker instance key to which the command should be sent.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ENQ\DC2\EOT\196\ETX\b\SO\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\SOH\DC2\EOT\196\ETX\SI\"\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ETX\DC2\EOT\196\ETX%&\n\
    \\232\SOH\n\
    \\STX\EOT\NAK\DC2\ACK\202\ETX\NUL\209\ETX\SOH\SUB\217\SOH When starting an execution with a conflict policy that uses an existing execution and there is already an existing\n\
    \ running execution, OnConflictOptions defines actions to be taken on the existing running execution.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\NAK\SOH\DC2\EOT\202\ETX\b\EM\n\
    \A\n\
    \\EOT\EOT\NAK\STX\NUL\DC2\EOT\204\ETX\EOT\US\SUB3 Attaches the request ID to the running execution.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ENQ\DC2\EOT\204\ETX\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\SOH\DC2\EOT\204\ETX\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ETX\DC2\EOT\204\ETX\GS\RS\n\
    \K\n\
    \\EOT\EOT\NAK\STX\SOH\DC2\EOT\206\ETX\EOT)\SUB= Attaches the completion callbacks to the running execution.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ENQ\DC2\EOT\206\ETX\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\SOH\DC2\EOT\206\ETX\t$\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ETX\DC2\EOT\206\ETX'(\n\
    \<\n\
    \\EOT\EOT\NAK\STX\STX\DC2\EOT\208\ETX\EOT\SUB\SUB. Attaches the links to the running execution.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\ENQ\DC2\EOT\208\ETX\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\SOH\DC2\EOT\208\ETX\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\ETX\DC2\EOT\208\ETX\CAN\EM\n\
    \\139\v\n\
    \\STX\EOT\SYN\DC2\ACK\227\ETX\NUL\252\ETX\SOH\SUB\252\n\
    \ The configuration for time skipping of an execution.\n\
    \ When time skipping is enabled, virtual time advances automatically whenever there is no in-flight work.\n\
    \ Options like fast_forward, disable_propagation, and max_session_skip_count are provided for granular\n\
    \ control of the execution's time skipping behavior. See each field's comment for a detailed explanation.\n\
    \\n\
    \ An example of workflows with time skipping:\n\
    \ For workflows, an execution is a chain of runs including retries, cron, and continue-as-new.\n\
    \ In-flight work includes activities, child workflows, Nexus operations, signal/cancel external workflow operations, etc.\n\
    \ User timers are not classified as in-flight work and will be skipped over; the virtual clock may also skip to the\n\
    \ time point of the registered fast-forward when there is no in-flight work.\n\
    \ Whenever time is skipped, the skip count is incremented by one; max_session_skip_count bounds the number of skips allowed within a single time-skipping session.\n\
    \ For child workflows, by default, if the parent execution is skipping time, the child execution will also skip time,\n\
    \ but a parent's fast_forward won't affect its child's execution. A flag is provided to disable propagation of the\n\
    \ \"enabled\" flag to child workflows; regardless of that flag, a child workflow inherits the virtual time from the\n\
    \ parent execution as its start time.\n\
    \ Experimental. Might change in the future.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SYN\SOH\DC2\EOT\227\ETX\b\SUB\n\
    \N\n\
    \\EOT\EOT\SYN\STX\NUL\DC2\EOT\230\ETX\EOT\NAK\SUB@ Enables or disables time skipping for this workflow execution.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ENQ\DC2\EOT\230\ETX\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\SOH\DC2\EOT\230\ETX\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ETX\DC2\EOT\230\ETX\DC3\DC4\n\
    \z\n\
    \\EOT\EOT\SYN\STX\SOH\DC2\EOT\233\ETX\EOT.\SUBl An optional opt-in to control time-skipping behavior through fast-forward; see its definition for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ACK\DC2\EOT\233\ETX\EOT\NAK\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\SOH\DC2\EOT\233\ETX\SYN)\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ETX\DC2\EOT\233\ETX,-\n\
    \\132\STX\n\
    \\EOT\EOT\SYN\STX\STX\DC2\EOT\238\ETX\EOT!\SUB\245\SOH By default, executions started by another execution (e.g. a child workflow of a parent workflow or\n\
    \ a schedule with the time-skipping policy enabled) inherit the \"enabled\" flag and skip time when possible.\n\
    \ This flag disables that inheritance.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\ENQ\DC2\EOT\238\ETX\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\SOH\DC2\EOT\238\ETX\t\FS\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\ETX\DC2\EOT\238\ETX\US \n\
    \\236\ENQ\n\
    \\EOT\EOT\SYN\STX\ETX\DC2\EOT\251\ETX\EOT%\SUB\221\ENQ The maximum number of skips allowed every time this field is updated. It protects the execution from\n\
    \ situations like unlimited retries when backoff is skipped.\n\
    \\n\
    \ Every time the execution skips time, the skip count is incremented by one, and when it reaches\n\
    \ max_session_skip_count, time skipping stops. Whenever this config field is updated, the accumulated\n\
    \ skip count is cleared, marking the start of a new session.\n\
    \ For an execution with a chain of runs (retry, cron, continue-as-new), the count is accumulated\n\
    \ across all runs within the same session.\n\
    \\n\
    \ If this field is not set, the server applies a large default value (e.g. 100). The default can\n\
    \ be changed through dynamic config, and is overridden by this field when set.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\ENQ\DC2\EOT\251\ETX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\SOH\DC2\EOT\251\ETX\n\
    \ \n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\ETX\DC2\EOT\251\ETX#$\n\
    \r\n\
    \\STX\EOT\ETB\DC2\ACK\128\EOT\NUL\144\EOT\SOH\SUBd Controls a time-skipping fast-forward for an execution.\n\
    \ Experimental. Might change in the future.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETB\SOH\DC2\EOT\128\EOT\b\EM\n\
    \\136\STX\n\
    \\EOT\EOT\ETB\STX\NUL\DC2\EOT\132\EOT\EOT\DC2\SUB\249\SOH A client-supplied ID, required field, set alongside `duration`. It is used to poll for\n\
    \ fast-forward completion via PollWorkflowExecutionTimeSkipping.\n\
    \ The server performs no idempotency check on this ID; the client is responsible for managing it.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ENQ\DC2\EOT\132\EOT\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\SOH\DC2\EOT\132\EOT\v\r\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ETX\DC2\EOT\132\EOT\DLE\DC1\n\
    \\219\ENQ\n\
    \\EOT\EOT\ETB\STX\SOH\DC2\EOT\143\EOT\EOT*\SUB\204\ENQ Fast-forward the current execution by this duration ahead of the current execution time; required field.\n\
    \ The duration yields a target time (current execution time + duration), surfaced as `target_time` in\n\
    \ TimeSkippingFastForwardInfo. Once virtual time reaches that target, the fast-forward completes, time\n\
    \ skipping is disabled, and no further time is skipped. Time skipping can be resumed either\n\
    \ by updating the TimeSkippingConfig with a new FastForwardConfig, or by clearing the FastForwardConfig\n\
    \ to skip through to the end of the execution.\n\
    \\n\
    \ If this duration exceeds the remaining execution timeout, time will not pass beyond the end\n\
    \ of the execution, and the fast-forward won't have a chance to complete.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\ACK\DC2\EOT\143\EOT\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\SOH\DC2\EOT\143\EOT\GS%\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\ETX\DC2\EOT\143\EOT()\n\
    \\197\SOH\n\
    \\STX\EOT\CAN\DC2\ACK\149\EOT\NUL\160\EOT\SOH\SUB\182\SOH The time-skipping state that needs to be propagated from one execution to another, or through a chain of runs\n\
    \ within the same execution.\n\
    \ Experimental. Might change in the future.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\CAN\SOH\DC2\EOT\149\EOT\b$\n\
    \\172\SOH\n\
    \\EOT\EOT\CAN\STX\NUL\DC2\EOT\153\EOT\EOT:\SUB\157\SOH The time skipped by the previous run. It is propagated both to executions started by the\n\
    \ current execution and through a chain of runs (CaN, cron, retry).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ACK\DC2\EOT\153\EOT\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\SOH\DC2\EOT\153\EOT\GS5\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ETX\DC2\EOT\153\EOT89\n\
    \r\n\
    \\EOT\EOT\CAN\STX\SOH\DC2\EOT\156\EOT\EOT;\SUBd The fast-forward target time. It only propagates across a chain of runs within the same execution.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\ACK\DC2\EOT\156\EOT\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\SOH\DC2\EOT\156\EOT\RS6\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\ETX\DC2\EOT\156\EOT9:\n\
    \l\n\
    \\EOT\EOT\CAN\STX\STX\DC2\EOT\159\EOT\EOT!\SUB^ The initial skip count. It only propagates across a chain of runs within the same execution.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\STX\ENQ\DC2\EOT\159\EOT\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\STX\SOH\DC2\EOT\159\EOT\n\
    \\FS\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\STX\ETX\DC2\EOT\159\EOT\US \n\
    \}\n\
    \\STX\EOT\EM\DC2\ACK\165\EOT\NUL\182\EOT\SOH\SUBo Describes the current time-skipping state of a workflow execution.\n\
    \ Experimental. Might change in the future.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EM\SOH\DC2\EOT\165\EOT\b\CAN\n\
    \\141\SOH\n\
    \\EOT\EOT\EM\STX\NUL\DC2\EOT\168\EOT\EOT/\SUB\DEL Current virtual time of the execution. If the execution hasn't skipped\n\
    \ any time yet, it will be the same as wall clock time.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ACK\DC2\EOT\168\EOT\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\SOH\DC2\EOT\168\EOT\RS*\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ETX\DC2\EOT\168\EOT-.\n\
    \\237\STX\n\
    \\EOT\EOT\EM\STX\SOH\DC2\EOT\174\EOT\EOT,\SUB\222\STX The current effective time-skipping config, which can differ from the config the user last set:\n\
    \ internally-defaulted fields are populated, and `enabled` reflects whether the execution is still\n\
    \ skipping time \226\128\148 e.g. it is set to false once `max_session_skip_count` is reached, the fast-forward\n\
    \ completes, or a client call disables time skipping.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\ACK\DC2\EOT\174\EOT\EOT\SYN\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\SOH\DC2\EOT\174\EOT\ETB'\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\ETX\DC2\EOT\174\EOT*+\n\
    \w\n\
    \\EOT\EOT\EM\STX\STX\DC2\EOT\177\EOT\EOT6\SUBi The execution's current fast-forward, if any. Unset if time skipping is enabled without a fast-forward.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\STX\ACK\DC2\EOT\177\EOT\EOT\US\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\STX\SOH\DC2\EOT\177\EOT 1\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\STX\ETX\DC2\EOT\177\EOT45\n\
    \\207\SOH\n\
    \\EOT\EOT\EM\STX\ETX\DC2\EOT\181\EOT\EOT)\SUB\192\SOH The number of skips accumulated in the current session, bounded by `max_session_skip_count`.\n\
    \ A new session begins \226\128\148 and this resets to 0 \226\128\148 each time `max_session_skip_count` is updated.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\ETX\ENQ\DC2\EOT\181\EOT\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\ETX\SOH\DC2\EOT\181\EOT\n\
    \$\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\ETX\ETX\DC2\EOT\181\EOT'(\n\
    \\153\SOH\n\
    \\STX\EOT\SUB\DC2\ACK\187\EOT\NUL\196\EOT\SOH\SUB\138\SOH TimeSkippingFastForwardInfo describes the current time-skipping fast-forward on an execution.\n\
    \ Experimental. Might change in the future.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SUB\SOH\DC2\EOT\187\EOT\b#\n\
    \<\n\
    \\EOT\EOT\SUB\STX\NUL\DC2\EOT\189\EOT\EOT7\SUB. The client-supplied `fast_forward` duration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ACK\DC2\EOT\189\EOT\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\SOH\DC2\EOT\189\EOT\GS2\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ETX\DC2\EOT\189\EOT56\n\
    \M\n\
    \\EOT\EOT\SUB\STX\SOH\DC2\EOT\191\EOT\EOT\US\SUB? The client-supplied ID set alongside `fast_forward` duration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\ENQ\DC2\EOT\191\EOT\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\SOH\DC2\EOT\191\EOT\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\ETX\DC2\EOT\191\EOT\GS\RS\n\
    \L\n\
    \\EOT\EOT\SUB\STX\STX\DC2\EOT\193\EOT\EOT.\SUB> The target virtual time at which the fast-forward completes.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\STX\ACK\DC2\EOT\193\EOT\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\STX\SOH\DC2\EOT\193\EOT\RS)\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\STX\ETX\DC2\EOT\193\EOT,-\n\
    \9\n\
    \\EOT\EOT\SUB\STX\ETX\DC2\EOT\195\EOT\EOT\ESC\SUB+ True once `target_time` has been reached.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\ETX\ENQ\DC2\EOT\195\EOT\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\ETX\SOH\DC2\EOT\195\EOT\t\SYN\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\ETX\ETX\DC2\EOT\195\EOT\EM\SUBb\ACKproto3"