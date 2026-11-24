{- This file was auto-generated from temporal/sdk/core/common/common.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Sdk.Core.Common.Common (
        ExternalStorageMetrics(), NamespacedWorkflowExecution(),
        VersioningIntent(..), VersioningIntent(),
        VersioningIntent'UnrecognizedValue, WorkerDeploymentVersion()
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
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.Common.Common_Fields.payloadCount' @:: Lens' ExternalStorageMetrics Data.Word.Word64@
         * 'Proto.Temporal.Sdk.Core.Common.Common_Fields.totalSizeBytes' @:: Lens' ExternalStorageMetrics Data.Word.Word64@
         * 'Proto.Temporal.Sdk.Core.Common.Common_Fields.totalDuration' @:: Lens' ExternalStorageMetrics Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.Common.Common_Fields.maybe'totalDuration' @:: Lens' ExternalStorageMetrics (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.Common.Common_Fields.driverNames' @:: Lens' ExternalStorageMetrics [Data.Text.Text]@
         * 'Proto.Temporal.Sdk.Core.Common.Common_Fields.vec'driverNames' @:: Lens' ExternalStorageMetrics (Data.Vector.Vector Data.Text.Text)@ -}
data ExternalStorageMetrics
  = ExternalStorageMetrics'_constructor {_ExternalStorageMetrics'payloadCount :: !Data.Word.Word64,
                                         _ExternalStorageMetrics'totalSizeBytes :: !Data.Word.Word64,
                                         _ExternalStorageMetrics'totalDuration :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                         _ExternalStorageMetrics'driverNames :: !(Data.Vector.Vector Data.Text.Text),
                                         _ExternalStorageMetrics'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExternalStorageMetrics where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ExternalStorageMetrics "payloadCount" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalStorageMetrics'payloadCount
           (\ x__ y__ -> x__ {_ExternalStorageMetrics'payloadCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExternalStorageMetrics "totalSizeBytes" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalStorageMetrics'totalSizeBytes
           (\ x__ y__ -> x__ {_ExternalStorageMetrics'totalSizeBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExternalStorageMetrics "totalDuration" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalStorageMetrics'totalDuration
           (\ x__ y__ -> x__ {_ExternalStorageMetrics'totalDuration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ExternalStorageMetrics "maybe'totalDuration" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalStorageMetrics'totalDuration
           (\ x__ y__ -> x__ {_ExternalStorageMetrics'totalDuration = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExternalStorageMetrics "driverNames" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalStorageMetrics'driverNames
           (\ x__ y__ -> x__ {_ExternalStorageMetrics'driverNames = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ExternalStorageMetrics "vec'driverNames" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExternalStorageMetrics'driverNames
           (\ x__ y__ -> x__ {_ExternalStorageMetrics'driverNames = y__}))
        Prelude.id
instance Data.ProtoLens.Message ExternalStorageMetrics where
  messageName _
    = Data.Text.pack "coresdk.common.ExternalStorageMetrics"
  packedMessageDescriptor _
    = "\n\
      \\SYNExternalStorageMetrics\DC2#\n\
      \\rpayload_count\CAN\SOH \SOH(\EOTR\fpayloadCount\DC2(\n\
      \\DLEtotal_size_bytes\CAN\STX \SOH(\EOTR\SOtotalSizeBytes\DC2@\n\
      \\SOtotal_duration\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\rtotalDuration\DC2!\n\
      \\fdriver_names\CAN\EOT \ETX(\tR\vdriverNames"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        payloadCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payload_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"payloadCount")) ::
              Data.ProtoLens.FieldDescriptor ExternalStorageMetrics
        totalSizeBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_size_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalSizeBytes")) ::
              Data.ProtoLens.FieldDescriptor ExternalStorageMetrics
        totalDuration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_duration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'totalDuration")) ::
              Data.ProtoLens.FieldDescriptor ExternalStorageMetrics
        driverNames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "driver_names"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"driverNames")) ::
              Data.ProtoLens.FieldDescriptor ExternalStorageMetrics
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, payloadCount__field_descriptor),
           (Data.ProtoLens.Tag 2, totalSizeBytes__field_descriptor),
           (Data.ProtoLens.Tag 3, totalDuration__field_descriptor),
           (Data.ProtoLens.Tag 4, driverNames__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExternalStorageMetrics'_unknownFields
        (\ x__ y__ -> x__ {_ExternalStorageMetrics'_unknownFields = y__})
  defMessage
    = ExternalStorageMetrics'_constructor
        {_ExternalStorageMetrics'payloadCount = Data.ProtoLens.fieldDefault,
         _ExternalStorageMetrics'totalSizeBytes = Data.ProtoLens.fieldDefault,
         _ExternalStorageMetrics'totalDuration = Prelude.Nothing,
         _ExternalStorageMetrics'driverNames = Data.Vector.Generic.empty,
         _ExternalStorageMetrics'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ExternalStorageMetrics
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser ExternalStorageMetrics
        loop x mutable'driverNames
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'driverNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'driverNames)
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
                              (Data.ProtoLens.Field.field @"vec'driverNames") frozen'driverNames
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "payload_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"payloadCount") y x)
                                  mutable'driverNames
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "total_size_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalSizeBytes") y x)
                                  mutable'driverNames
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "total_duration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalDuration") y x)
                                  mutable'driverNames
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getText
                                              (Prelude.fromIntegral len))
                                        "driver_names"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'driverNames y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'driverNames
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'driverNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'driverNames)
          "ExternalStorageMetrics"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"payloadCount") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"totalSizeBytes") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'totalDuration") _x
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
                                    Data.Text.Encoding.encodeUtf8 _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'driverNames") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ExternalStorageMetrics where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExternalStorageMetrics'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ExternalStorageMetrics'payloadCount x__)
                (Control.DeepSeq.deepseq
                   (_ExternalStorageMetrics'totalSizeBytes x__)
                   (Control.DeepSeq.deepseq
                      (_ExternalStorageMetrics'totalDuration x__)
                      (Control.DeepSeq.deepseq
                         (_ExternalStorageMetrics'driverNames x__) ()))))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.Common.Common_Fields.namespace' @:: Lens' NamespacedWorkflowExecution Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.Common.Common_Fields.workflowId' @:: Lens' NamespacedWorkflowExecution Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.Common.Common_Fields.runId' @:: Lens' NamespacedWorkflowExecution Data.Text.Text@ -}
data NamespacedWorkflowExecution
  = NamespacedWorkflowExecution'_constructor {_NamespacedWorkflowExecution'namespace :: !Data.Text.Text,
                                              _NamespacedWorkflowExecution'workflowId :: !Data.Text.Text,
                                              _NamespacedWorkflowExecution'runId :: !Data.Text.Text,
                                              _NamespacedWorkflowExecution'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NamespacedWorkflowExecution where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NamespacedWorkflowExecution "namespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespacedWorkflowExecution'namespace
           (\ x__ y__ -> x__ {_NamespacedWorkflowExecution'namespace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespacedWorkflowExecution "workflowId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespacedWorkflowExecution'workflowId
           (\ x__ y__ -> x__ {_NamespacedWorkflowExecution'workflowId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NamespacedWorkflowExecution "runId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NamespacedWorkflowExecution'runId
           (\ x__ y__ -> x__ {_NamespacedWorkflowExecution'runId = y__}))
        Prelude.id
instance Data.ProtoLens.Message NamespacedWorkflowExecution where
  messageName _
    = Data.Text.pack "coresdk.common.NamespacedWorkflowExecution"
  packedMessageDescriptor _
    = "\n\
      \\ESCNamespacedWorkflowExecution\DC2\FS\n\
      \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2\US\n\
      \\vworkflow_id\CAN\STX \SOH(\tR\n\
      \workflowId\DC2\NAK\n\
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
              Data.ProtoLens.FieldDescriptor NamespacedWorkflowExecution
        workflowId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workflowId")) ::
              Data.ProtoLens.FieldDescriptor NamespacedWorkflowExecution
        runId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "run_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"runId")) ::
              Data.ProtoLens.FieldDescriptor NamespacedWorkflowExecution
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, namespace__field_descriptor),
           (Data.ProtoLens.Tag 2, workflowId__field_descriptor),
           (Data.ProtoLens.Tag 3, runId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NamespacedWorkflowExecution'_unknownFields
        (\ x__ y__
           -> x__ {_NamespacedWorkflowExecution'_unknownFields = y__})
  defMessage
    = NamespacedWorkflowExecution'_constructor
        {_NamespacedWorkflowExecution'namespace = Data.ProtoLens.fieldDefault,
         _NamespacedWorkflowExecution'workflowId = Data.ProtoLens.fieldDefault,
         _NamespacedWorkflowExecution'runId = Data.ProtoLens.fieldDefault,
         _NamespacedWorkflowExecution'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NamespacedWorkflowExecution
          -> Data.ProtoLens.Encoding.Bytes.Parser NamespacedWorkflowExecution
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NamespacedWorkflowExecution"
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData NamespacedWorkflowExecution where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NamespacedWorkflowExecution'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NamespacedWorkflowExecution'namespace x__)
                (Control.DeepSeq.deepseq
                   (_NamespacedWorkflowExecution'workflowId x__)
                   (Control.DeepSeq.deepseq
                      (_NamespacedWorkflowExecution'runId x__) ())))
newtype VersioningIntent'UnrecognizedValue
  = VersioningIntent'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data VersioningIntent
  = UNSPECIFIED |
    COMPATIBLE |
    DEFAULT |
    VersioningIntent'Unrecognized !VersioningIntent'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum VersioningIntent where
  maybeToEnum 0 = Prelude.Just UNSPECIFIED
  maybeToEnum 1 = Prelude.Just COMPATIBLE
  maybeToEnum 2 = Prelude.Just DEFAULT
  maybeToEnum k
    = Prelude.Just
        (VersioningIntent'Unrecognized
           (VersioningIntent'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum UNSPECIFIED = "UNSPECIFIED"
  showEnum COMPATIBLE = "COMPATIBLE"
  showEnum DEFAULT = "DEFAULT"
  showEnum
    (VersioningIntent'Unrecognized (VersioningIntent'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "UNSPECIFIED" = Prelude.Just UNSPECIFIED
    | (Prelude.==) k "COMPATIBLE" = Prelude.Just COMPATIBLE
    | (Prelude.==) k "DEFAULT" = Prelude.Just DEFAULT
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded VersioningIntent where
  minBound = UNSPECIFIED
  maxBound = DEFAULT
instance Prelude.Enum VersioningIntent where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum VersioningIntent: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum UNSPECIFIED = 0
  fromEnum COMPATIBLE = 1
  fromEnum DEFAULT = 2
  fromEnum
    (VersioningIntent'Unrecognized (VersioningIntent'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ DEFAULT
    = Prelude.error
        "VersioningIntent.succ: bad argument DEFAULT. This value would be out of bounds."
  succ UNSPECIFIED = COMPATIBLE
  succ COMPATIBLE = DEFAULT
  succ (VersioningIntent'Unrecognized _)
    = Prelude.error
        "VersioningIntent.succ: bad argument: unrecognized value"
  pred UNSPECIFIED
    = Prelude.error
        "VersioningIntent.pred: bad argument UNSPECIFIED. This value would be out of bounds."
  pred COMPATIBLE = UNSPECIFIED
  pred DEFAULT = COMPATIBLE
  pred (VersioningIntent'Unrecognized _)
    = Prelude.error
        "VersioningIntent.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault VersioningIntent where
  fieldDefault = UNSPECIFIED
instance Control.DeepSeq.NFData VersioningIntent where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.Common.Common_Fields.deploymentName' @:: Lens' WorkerDeploymentVersion Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.Common.Common_Fields.buildId' @:: Lens' WorkerDeploymentVersion Data.Text.Text@ -}
data WorkerDeploymentVersion
  = WorkerDeploymentVersion'_constructor {_WorkerDeploymentVersion'deploymentName :: !Data.Text.Text,
                                          _WorkerDeploymentVersion'buildId :: !Data.Text.Text,
                                          _WorkerDeploymentVersion'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkerDeploymentVersion where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersion "deploymentName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersion'deploymentName
           (\ x__ y__ -> x__ {_WorkerDeploymentVersion'deploymentName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersion "buildId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersion'buildId
           (\ x__ y__ -> x__ {_WorkerDeploymentVersion'buildId = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkerDeploymentVersion where
  messageName _
    = Data.Text.pack "coresdk.common.WorkerDeploymentVersion"
  packedMessageDescriptor _
    = "\n\
      \\ETBWorkerDeploymentVersion\DC2'\n\
      \\SIdeployment_name\CAN\SOH \SOH(\tR\SOdeploymentName\DC2\EM\n\
      \\bbuild_id\CAN\STX \SOH(\tR\abuildId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        deploymentName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deployment_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"deploymentName")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersion
        buildId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "build_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"buildId")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersion
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, deploymentName__field_descriptor),
           (Data.ProtoLens.Tag 2, buildId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkerDeploymentVersion'_unknownFields
        (\ x__ y__ -> x__ {_WorkerDeploymentVersion'_unknownFields = y__})
  defMessage
    = WorkerDeploymentVersion'_constructor
        {_WorkerDeploymentVersion'deploymentName = Data.ProtoLens.fieldDefault,
         _WorkerDeploymentVersion'buildId = Data.ProtoLens.fieldDefault,
         _WorkerDeploymentVersion'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkerDeploymentVersion
          -> Data.ProtoLens.Encoding.Bytes.Parser WorkerDeploymentVersion
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
                                       "deployment_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"deploymentName") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "build_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"buildId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WorkerDeploymentVersion"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"deploymentName") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"buildId") _x
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
instance Control.DeepSeq.NFData WorkerDeploymentVersion where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkerDeploymentVersion'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WorkerDeploymentVersion'deploymentName x__)
                (Control.DeepSeq.deepseq
                   (_WorkerDeploymentVersion'buildId x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \%temporal/sdk/core/common/common.proto\DC2\SOcoresdk.common\SUB\RSgoogle/protobuf/duration.proto\"s\n\
    \\ESCNamespacedWorkflowExecution\DC2\FS\n\
    \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2\US\n\
    \\vworkflow_id\CAN\STX \SOH(\tR\n\
    \workflowId\DC2\NAK\n\
    \\ACKrun_id\CAN\ETX \SOH(\tR\ENQrunId\"]\n\
    \\ETBWorkerDeploymentVersion\DC2'\n\
    \\SIdeployment_name\CAN\SOH \SOH(\tR\SOdeploymentName\DC2\EM\n\
    \\bbuild_id\CAN\STX \SOH(\tR\abuildId\"\204\SOH\n\
    \\SYNExternalStorageMetrics\DC2#\n\
    \\rpayload_count\CAN\SOH \SOH(\EOTR\fpayloadCount\DC2(\n\
    \\DLEtotal_size_bytes\CAN\STX \SOH(\EOTR\SOtotalSizeBytes\DC2@\n\
    \\SOtotal_duration\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\rtotalDuration\DC2!\n\
    \\fdriver_names\CAN\EOT \ETX(\tR\vdriverNames*@\n\
    \\DLEVersioningIntent\DC2\SI\n\
    \\vUNSPECIFIED\DLE\NUL\DC2\SO\n\
    \\n\
    \COMPATIBLE\DLE\SOH\DC2\v\n\
    \\aDEFAULT\DLE\STXB,\234\STX)Temporalio::Internal::Bridge::Api::CommonJ\151\DLE\n\
    \\ACK\DC2\EOT\NUL\NUL1\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\ETB\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NULB\n\
    \\t\n\
    \\STX\b-\DC2\ETX\ETX\NULB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL(\n\
    \`\n\
    \\STX\EOT\NUL\DC2\EOT\b\NUL\SI\SOH\SUBT Identifying information about a particular workflow execution, including namespace\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\b\b#\n\
    \7\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\n\
    \\EOT\EM\SUB* Namespace the workflow run is located in\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\n\
    \\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\n\
    \\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\n\
    \\ETB\CAN\n\
    \!\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\f\EOT\ESC\SUB\DC4 Can never be empty\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\f\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\f\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\f\EM\SUB\n\
    \f\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\SO\EOT\SYN\SUBY May be empty if the most recent run of the workflow with the given ID is being targeted\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\SO\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\SO\DC4\NAK\n\
    \\128\SOH\n\
    \\STX\ENQ\NUL\DC2\EOT\DC3\NUL\US\SOH\SUBt An indication of user's intent concerning what Build ID versioning approach should be used for\n\
    \ a specific command\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\DC3\ENQ\NAK\n\
    \\204\SOH\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\ETB\EOT\DC4\SUB\190\SOH Indicates that core should choose the most sensible default behavior for the type of\n\
    \ command, accounting for whether the command will be run on the same task queue as the current\n\
    \ worker.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\ETB\EOT\SI\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\ETB\DC2\DC3\n\
    \\215\SOH\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\ESC\EOT\DC3\SUB\201\SOH Indicates that the command should run on a worker with compatible version if possible. It may\n\
    \ not be possible if the target task queue does not also have knowledge of the current worker's\n\
    \ build ID.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\ESC\EOT\SO\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\ESC\DC1\DC2\n\
    \r\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX\RS\EOT\DLE\SUBe Indicates that the command should run on the target task queue's current overall-default\n\
    \ build ID.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX\RS\EOT\v\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX\RS\SO\SI\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT!\NUL$\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX!\b\US\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\"\EOT\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\"\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\"\v\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\"\GS\RS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX#\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX#\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX#\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX#\SYN\ETB\n\
    \\181\SOH\n\
    \\STX\EOT\STX\DC2\EOT(\NUL1\SOH\SUB\168\SOH Metrics for a set of external payload storage operations (all uploads and downloads)\n\
    \ performed while processing a task, so core can emit unified logging and metrics.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX(\b\RS\n\
    \A\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX*\EOT\GS\SUB4 Number of payloads stored or retrieved externally.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX*\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX*\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX*\ESC\FS\n\
    \R\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX,\EOT \SUBE Total size in bytes of the externally stored or retrieved payloads.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX,\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX,\v\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX,\RS\US\n\
    \H\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX.\EOT0\SUB; Wall-clock time spent on the external storage operations.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETX.\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX.\GS+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX../\n\
    \H\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX0\EOT%\SUB; Names of the drivers that participated in the operations.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\ETX0\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX0\r\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX0\DC4 \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX0#$b\ACKproto3"