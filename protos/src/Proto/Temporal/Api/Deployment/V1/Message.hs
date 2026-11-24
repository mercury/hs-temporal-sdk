{- This file was auto-generated from temporal/api/deployment/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Deployment.V1.Message (
        ComputeStatus(), ComputeStatus'ProviderValidationStatus(),
        Deployment(), DeploymentInfo(), DeploymentInfo'MetadataEntry(),
        DeploymentInfo'TaskQueueInfo(), DeploymentListInfo(),
        InheritedAutoUpgradeInfo(), RoutingConfig(),
        UpdateDeploymentMetadata(),
        UpdateDeploymentMetadata'UpsertEntriesEntry(),
        VersionDrainageInfo(), VersionMetadata(),
        VersionMetadata'EntriesEntry(), WorkerDeploymentInfo(),
        WorkerDeploymentInfo'WorkerDeploymentVersionSummary(),
        WorkerDeploymentOptions(), WorkerDeploymentVersion(),
        WorkerDeploymentVersionInfo(),
        WorkerDeploymentVersionInfo'VersionTaskQueueInfo()
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
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Temporal.Api.Common.V1.Message
import qualified Proto.Temporal.Api.Compute.V1.Config
import qualified Proto.Temporal.Api.Enums.V1.Deployment
import qualified Proto.Temporal.Api.Enums.V1.TaskQueue
import qualified Proto.Temporal.Api.Enums.V1.Workflow
{- | Fields :
     
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.providerValidation' @:: Lens' ComputeStatus ComputeStatus'ProviderValidationStatus@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'providerValidation' @:: Lens' ComputeStatus (Prelude.Maybe ComputeStatus'ProviderValidationStatus)@ -}
data ComputeStatus
  = ComputeStatus'_constructor {_ComputeStatus'providerValidation :: !(Prelude.Maybe ComputeStatus'ProviderValidationStatus),
                                _ComputeStatus'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ComputeStatus where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ComputeStatus "providerValidation" ComputeStatus'ProviderValidationStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeStatus'providerValidation
           (\ x__ y__ -> x__ {_ComputeStatus'providerValidation = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ComputeStatus "maybe'providerValidation" (Prelude.Maybe ComputeStatus'ProviderValidationStatus) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeStatus'providerValidation
           (\ x__ y__ -> x__ {_ComputeStatus'providerValidation = y__}))
        Prelude.id
instance Data.ProtoLens.Message ComputeStatus where
  messageName _
    = Data.Text.pack "temporal.api.deployment.v1.ComputeStatus"
  packedMessageDescriptor _
    = "\n\
      \\rComputeStatus\DC2s\n\
      \\DC3provider_validation\CAN\SOH \SOH(\v2B.temporal.api.deployment.v1.ComputeStatus.ProviderValidationStatusR\DC2providerValidation\SUB\131\SOH\n\
      \\CANProviderValidationStatus\DC2#\n\
      \\rerror_message\CAN\SOH \SOH(\tR\ferrorMessage\DC2B\n\
      \\SIlast_check_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\rlastCheckTime"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        providerValidation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "provider_validation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ComputeStatus'ProviderValidationStatus)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'providerValidation")) ::
              Data.ProtoLens.FieldDescriptor ComputeStatus
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, providerValidation__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ComputeStatus'_unknownFields
        (\ x__ y__ -> x__ {_ComputeStatus'_unknownFields = y__})
  defMessage
    = ComputeStatus'_constructor
        {_ComputeStatus'providerValidation = Prelude.Nothing,
         _ComputeStatus'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ComputeStatus -> Data.ProtoLens.Encoding.Bytes.Parser ComputeStatus
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
                                       "provider_validation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"providerValidation") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ComputeStatus"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'providerValidation") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ComputeStatus where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ComputeStatus'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ComputeStatus'providerValidation x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.errorMessage' @:: Lens' ComputeStatus'ProviderValidationStatus Data.Text.Text@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.lastCheckTime' @:: Lens' ComputeStatus'ProviderValidationStatus Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'lastCheckTime' @:: Lens' ComputeStatus'ProviderValidationStatus (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data ComputeStatus'ProviderValidationStatus
  = ComputeStatus'ProviderValidationStatus'_constructor {_ComputeStatus'ProviderValidationStatus'errorMessage :: !Data.Text.Text,
                                                         _ComputeStatus'ProviderValidationStatus'lastCheckTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                         _ComputeStatus'ProviderValidationStatus'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ComputeStatus'ProviderValidationStatus where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ComputeStatus'ProviderValidationStatus "errorMessage" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeStatus'ProviderValidationStatus'errorMessage
           (\ x__ y__
              -> x__
                   {_ComputeStatus'ProviderValidationStatus'errorMessage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ComputeStatus'ProviderValidationStatus "lastCheckTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeStatus'ProviderValidationStatus'lastCheckTime
           (\ x__ y__
              -> x__
                   {_ComputeStatus'ProviderValidationStatus'lastCheckTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ComputeStatus'ProviderValidationStatus "maybe'lastCheckTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeStatus'ProviderValidationStatus'lastCheckTime
           (\ x__ y__
              -> x__
                   {_ComputeStatus'ProviderValidationStatus'lastCheckTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message ComputeStatus'ProviderValidationStatus where
  messageName _
    = Data.Text.pack
        "temporal.api.deployment.v1.ComputeStatus.ProviderValidationStatus"
  packedMessageDescriptor _
    = "\n\
      \\CANProviderValidationStatus\DC2#\n\
      \\rerror_message\CAN\SOH \SOH(\tR\ferrorMessage\DC2B\n\
      \\SIlast_check_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\rlastCheckTime"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        errorMessage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error_message"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"errorMessage")) ::
              Data.ProtoLens.FieldDescriptor ComputeStatus'ProviderValidationStatus
        lastCheckTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_check_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastCheckTime")) ::
              Data.ProtoLens.FieldDescriptor ComputeStatus'ProviderValidationStatus
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, errorMessage__field_descriptor),
           (Data.ProtoLens.Tag 2, lastCheckTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ComputeStatus'ProviderValidationStatus'_unknownFields
        (\ x__ y__
           -> x__
                {_ComputeStatus'ProviderValidationStatus'_unknownFields = y__})
  defMessage
    = ComputeStatus'ProviderValidationStatus'_constructor
        {_ComputeStatus'ProviderValidationStatus'errorMessage = Data.ProtoLens.fieldDefault,
         _ComputeStatus'ProviderValidationStatus'lastCheckTime = Prelude.Nothing,
         _ComputeStatus'ProviderValidationStatus'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ComputeStatus'ProviderValidationStatus
          -> Data.ProtoLens.Encoding.Bytes.Parser ComputeStatus'ProviderValidationStatus
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
                                       "error_message"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"errorMessage") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_check_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastCheckTime") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ProviderValidationStatus"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"errorMessage") _x
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
                       (Data.ProtoLens.Field.field @"maybe'lastCheckTime") _x
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
instance Control.DeepSeq.NFData ComputeStatus'ProviderValidationStatus where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ComputeStatus'ProviderValidationStatus'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ComputeStatus'ProviderValidationStatus'errorMessage x__)
                (Control.DeepSeq.deepseq
                   (_ComputeStatus'ProviderValidationStatus'lastCheckTime x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.seriesName' @:: Lens' Deployment Data.Text.Text@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.buildId' @:: Lens' Deployment Data.Text.Text@ -}
data Deployment
  = Deployment'_constructor {_Deployment'seriesName :: !Data.Text.Text,
                             _Deployment'buildId :: !Data.Text.Text,
                             _Deployment'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Deployment where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Deployment "seriesName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Deployment'seriesName
           (\ x__ y__ -> x__ {_Deployment'seriesName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Deployment "buildId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Deployment'buildId (\ x__ y__ -> x__ {_Deployment'buildId = y__}))
        Prelude.id
instance Data.ProtoLens.Message Deployment where
  messageName _
    = Data.Text.pack "temporal.api.deployment.v1.Deployment"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Deployment\DC2\US\n\
      \\vseries_name\CAN\SOH \SOH(\tR\n\
      \seriesName\DC2\EM\n\
      \\bbuild_id\CAN\STX \SOH(\tR\abuildId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        seriesName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "series_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"seriesName")) ::
              Data.ProtoLens.FieldDescriptor Deployment
        buildId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "build_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"buildId")) ::
              Data.ProtoLens.FieldDescriptor Deployment
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, seriesName__field_descriptor),
           (Data.ProtoLens.Tag 2, buildId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Deployment'_unknownFields
        (\ x__ y__ -> x__ {_Deployment'_unknownFields = y__})
  defMessage
    = Deployment'_constructor
        {_Deployment'seriesName = Data.ProtoLens.fieldDefault,
         _Deployment'buildId = Data.ProtoLens.fieldDefault,
         _Deployment'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Deployment -> Data.ProtoLens.Encoding.Bytes.Parser Deployment
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
                                       "series_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"seriesName") y x)
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
          (do loop Data.ProtoLens.defMessage) "Deployment"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"seriesName") _x
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
instance Control.DeepSeq.NFData Deployment where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Deployment'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Deployment'seriesName x__)
                (Control.DeepSeq.deepseq (_Deployment'buildId x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.deployment' @:: Lens' DeploymentInfo Deployment@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'deployment' @:: Lens' DeploymentInfo (Prelude.Maybe Deployment)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.createTime' @:: Lens' DeploymentInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'createTime' @:: Lens' DeploymentInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.taskQueueInfos' @:: Lens' DeploymentInfo [DeploymentInfo'TaskQueueInfo]@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.vec'taskQueueInfos' @:: Lens' DeploymentInfo (Data.Vector.Vector DeploymentInfo'TaskQueueInfo)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.metadata' @:: Lens' DeploymentInfo (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.isCurrent' @:: Lens' DeploymentInfo Prelude.Bool@ -}
data DeploymentInfo
  = DeploymentInfo'_constructor {_DeploymentInfo'deployment :: !(Prelude.Maybe Deployment),
                                 _DeploymentInfo'createTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                 _DeploymentInfo'taskQueueInfos :: !(Data.Vector.Vector DeploymentInfo'TaskQueueInfo),
                                 _DeploymentInfo'metadata :: !(Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload),
                                 _DeploymentInfo'isCurrent :: !Prelude.Bool,
                                 _DeploymentInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DeploymentInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DeploymentInfo "deployment" Deployment where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeploymentInfo'deployment
           (\ x__ y__ -> x__ {_DeploymentInfo'deployment = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DeploymentInfo "maybe'deployment" (Prelude.Maybe Deployment) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeploymentInfo'deployment
           (\ x__ y__ -> x__ {_DeploymentInfo'deployment = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeploymentInfo "createTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeploymentInfo'createTime
           (\ x__ y__ -> x__ {_DeploymentInfo'createTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DeploymentInfo "maybe'createTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeploymentInfo'createTime
           (\ x__ y__ -> x__ {_DeploymentInfo'createTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeploymentInfo "taskQueueInfos" [DeploymentInfo'TaskQueueInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeploymentInfo'taskQueueInfos
           (\ x__ y__ -> x__ {_DeploymentInfo'taskQueueInfos = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DeploymentInfo "vec'taskQueueInfos" (Data.Vector.Vector DeploymentInfo'TaskQueueInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeploymentInfo'taskQueueInfos
           (\ x__ y__ -> x__ {_DeploymentInfo'taskQueueInfos = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeploymentInfo "metadata" (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeploymentInfo'metadata
           (\ x__ y__ -> x__ {_DeploymentInfo'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeploymentInfo "isCurrent" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeploymentInfo'isCurrent
           (\ x__ y__ -> x__ {_DeploymentInfo'isCurrent = y__}))
        Prelude.id
instance Data.ProtoLens.Message DeploymentInfo where
  messageName _
    = Data.Text.pack "temporal.api.deployment.v1.DeploymentInfo"
  packedMessageDescriptor _
    = "\n\
      \\SODeploymentInfo\DC2F\n\
      \\n\
      \deployment\CAN\SOH \SOH(\v2&.temporal.api.deployment.v1.DeploymentR\n\
      \deployment\DC2;\n\
      \\vcreate_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \createTime\DC2b\n\
      \\DLEtask_queue_infos\CAN\ETX \ETX(\v28.temporal.api.deployment.v1.DeploymentInfo.TaskQueueInfoR\SOtaskQueueInfos\DC2T\n\
      \\bmetadata\CAN\EOT \ETX(\v28.temporal.api.deployment.v1.DeploymentInfo.MetadataEntryR\bmetadata\DC2\GS\n\
      \\n\
      \is_current\CAN\ENQ \SOH(\bR\tisCurrent\SUB\\\n\
      \\rMetadataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH\SUB\165\SOH\n\
      \\rTaskQueueInfo\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC28\n\
      \\EOTtype\CAN\STX \SOH(\SO2$.temporal.api.enums.v1.TaskQueueTypeR\EOTtype\DC2F\n\
      \\DC1first_poller_time\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\SIfirstPollerTime"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        deployment__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deployment"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Deployment)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'deployment")) ::
              Data.ProtoLens.FieldDescriptor DeploymentInfo
        createTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "create_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'createTime")) ::
              Data.ProtoLens.FieldDescriptor DeploymentInfo
        taskQueueInfos__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue_infos"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DeploymentInfo'TaskQueueInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"taskQueueInfos")) ::
              Data.ProtoLens.FieldDescriptor DeploymentInfo
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DeploymentInfo'MetadataEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor DeploymentInfo
        isCurrent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_current"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"isCurrent")) ::
              Data.ProtoLens.FieldDescriptor DeploymentInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, deployment__field_descriptor),
           (Data.ProtoLens.Tag 2, createTime__field_descriptor),
           (Data.ProtoLens.Tag 3, taskQueueInfos__field_descriptor),
           (Data.ProtoLens.Tag 4, metadata__field_descriptor),
           (Data.ProtoLens.Tag 5, isCurrent__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DeploymentInfo'_unknownFields
        (\ x__ y__ -> x__ {_DeploymentInfo'_unknownFields = y__})
  defMessage
    = DeploymentInfo'_constructor
        {_DeploymentInfo'deployment = Prelude.Nothing,
         _DeploymentInfo'createTime = Prelude.Nothing,
         _DeploymentInfo'taskQueueInfos = Data.Vector.Generic.empty,
         _DeploymentInfo'metadata = Data.Map.empty,
         _DeploymentInfo'isCurrent = Data.ProtoLens.fieldDefault,
         _DeploymentInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DeploymentInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DeploymentInfo'TaskQueueInfo
             -> Data.ProtoLens.Encoding.Bytes.Parser DeploymentInfo
        loop x mutable'taskQueueInfos
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'taskQueueInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'taskQueueInfos)
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
                              (Data.ProtoLens.Field.field @"vec'taskQueueInfos")
                              frozen'taskQueueInfos x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "deployment"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"deployment") y x)
                                  mutable'taskQueueInfos
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "create_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"createTime") y x)
                                  mutable'taskQueueInfos
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "task_queue_infos"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'taskQueueInfos y)
                                loop x v
                        34
                          -> do !(entry :: DeploymentInfo'MetadataEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
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
                                     mutable'taskQueueInfos)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_current"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"isCurrent") y x)
                                  mutable'taskQueueInfos
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'taskQueueInfos
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'taskQueueInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'taskQueueInfos)
          "DeploymentInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'deployment") _x
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
                       (Data.ProtoLens.Field.field @"maybe'createTime") _x
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
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'taskQueueInfos") _x))
                   ((Data.Monoid.<>)
                      (Data.Monoid.mconcat
                         (Prelude.map
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
                                             (Data.ProtoLens.Field.field @"value") (Prelude.snd _v)
                                             (Data.ProtoLens.defMessage ::
                                                DeploymentInfo'MetadataEntry)))))
                            (Data.Map.toList
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"metadata") _x))))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"isCurrent") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (\ b -> if b then 1 else 0) _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData DeploymentInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DeploymentInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DeploymentInfo'deployment x__)
                (Control.DeepSeq.deepseq
                   (_DeploymentInfo'createTime x__)
                   (Control.DeepSeq.deepseq
                      (_DeploymentInfo'taskQueueInfos x__)
                      (Control.DeepSeq.deepseq
                         (_DeploymentInfo'metadata x__)
                         (Control.DeepSeq.deepseq (_DeploymentInfo'isCurrent x__) ())))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.key' @:: Lens' DeploymentInfo'MetadataEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.value' @:: Lens' DeploymentInfo'MetadataEntry Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'value' @:: Lens' DeploymentInfo'MetadataEntry (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data DeploymentInfo'MetadataEntry
  = DeploymentInfo'MetadataEntry'_constructor {_DeploymentInfo'MetadataEntry'key :: !Data.Text.Text,
                                               _DeploymentInfo'MetadataEntry'value :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                               _DeploymentInfo'MetadataEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DeploymentInfo'MetadataEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DeploymentInfo'MetadataEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeploymentInfo'MetadataEntry'key
           (\ x__ y__ -> x__ {_DeploymentInfo'MetadataEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeploymentInfo'MetadataEntry "value" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeploymentInfo'MetadataEntry'value
           (\ x__ y__ -> x__ {_DeploymentInfo'MetadataEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DeploymentInfo'MetadataEntry "maybe'value" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeploymentInfo'MetadataEntry'value
           (\ x__ y__ -> x__ {_DeploymentInfo'MetadataEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message DeploymentInfo'MetadataEntry where
  messageName _
    = Data.Text.pack
        "temporal.api.deployment.v1.DeploymentInfo.MetadataEntry"
  packedMessageDescriptor _
    = "\n\
      \\rMetadataEntry\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor DeploymentInfo'MetadataEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor DeploymentInfo'MetadataEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DeploymentInfo'MetadataEntry'_unknownFields
        (\ x__ y__
           -> x__ {_DeploymentInfo'MetadataEntry'_unknownFields = y__})
  defMessage
    = DeploymentInfo'MetadataEntry'_constructor
        {_DeploymentInfo'MetadataEntry'key = Data.ProtoLens.fieldDefault,
         _DeploymentInfo'MetadataEntry'value = Prelude.Nothing,
         _DeploymentInfo'MetadataEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DeploymentInfo'MetadataEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser DeploymentInfo'MetadataEntry
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
instance Control.DeepSeq.NFData DeploymentInfo'MetadataEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DeploymentInfo'MetadataEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DeploymentInfo'MetadataEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_DeploymentInfo'MetadataEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.name' @:: Lens' DeploymentInfo'TaskQueueInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.type'' @:: Lens' DeploymentInfo'TaskQueueInfo Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.firstPollerTime' @:: Lens' DeploymentInfo'TaskQueueInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'firstPollerTime' @:: Lens' DeploymentInfo'TaskQueueInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data DeploymentInfo'TaskQueueInfo
  = DeploymentInfo'TaskQueueInfo'_constructor {_DeploymentInfo'TaskQueueInfo'name :: !Data.Text.Text,
                                               _DeploymentInfo'TaskQueueInfo'type' :: !Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType,
                                               _DeploymentInfo'TaskQueueInfo'firstPollerTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                               _DeploymentInfo'TaskQueueInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DeploymentInfo'TaskQueueInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DeploymentInfo'TaskQueueInfo "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeploymentInfo'TaskQueueInfo'name
           (\ x__ y__ -> x__ {_DeploymentInfo'TaskQueueInfo'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeploymentInfo'TaskQueueInfo "type'" Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeploymentInfo'TaskQueueInfo'type'
           (\ x__ y__ -> x__ {_DeploymentInfo'TaskQueueInfo'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeploymentInfo'TaskQueueInfo "firstPollerTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeploymentInfo'TaskQueueInfo'firstPollerTime
           (\ x__ y__
              -> x__ {_DeploymentInfo'TaskQueueInfo'firstPollerTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DeploymentInfo'TaskQueueInfo "maybe'firstPollerTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeploymentInfo'TaskQueueInfo'firstPollerTime
           (\ x__ y__
              -> x__ {_DeploymentInfo'TaskQueueInfo'firstPollerTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message DeploymentInfo'TaskQueueInfo where
  messageName _
    = Data.Text.pack
        "temporal.api.deployment.v1.DeploymentInfo.TaskQueueInfo"
  packedMessageDescriptor _
    = "\n\
      \\rTaskQueueInfo\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC28\n\
      \\EOTtype\CAN\STX \SOH(\SO2$.temporal.api.enums.v1.TaskQueueTypeR\EOTtype\DC2F\n\
      \\DC1first_poller_time\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\SIfirstPollerTime"
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
              Data.ProtoLens.FieldDescriptor DeploymentInfo'TaskQueueInfo
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor DeploymentInfo'TaskQueueInfo
        firstPollerTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "first_poller_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'firstPollerTime")) ::
              Data.ProtoLens.FieldDescriptor DeploymentInfo'TaskQueueInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, type'__field_descriptor),
           (Data.ProtoLens.Tag 3, firstPollerTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DeploymentInfo'TaskQueueInfo'_unknownFields
        (\ x__ y__
           -> x__ {_DeploymentInfo'TaskQueueInfo'_unknownFields = y__})
  defMessage
    = DeploymentInfo'TaskQueueInfo'_constructor
        {_DeploymentInfo'TaskQueueInfo'name = Data.ProtoLens.fieldDefault,
         _DeploymentInfo'TaskQueueInfo'type' = Data.ProtoLens.fieldDefault,
         _DeploymentInfo'TaskQueueInfo'firstPollerTime = Prelude.Nothing,
         _DeploymentInfo'TaskQueueInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DeploymentInfo'TaskQueueInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser DeploymentInfo'TaskQueueInfo
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
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "first_poller_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"firstPollerTime") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TaskQueueInfo"
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'firstPollerTime") _x
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
instance Control.DeepSeq.NFData DeploymentInfo'TaskQueueInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DeploymentInfo'TaskQueueInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DeploymentInfo'TaskQueueInfo'name x__)
                (Control.DeepSeq.deepseq
                   (_DeploymentInfo'TaskQueueInfo'type' x__)
                   (Control.DeepSeq.deepseq
                      (_DeploymentInfo'TaskQueueInfo'firstPollerTime x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.deployment' @:: Lens' DeploymentListInfo Deployment@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'deployment' @:: Lens' DeploymentListInfo (Prelude.Maybe Deployment)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.createTime' @:: Lens' DeploymentListInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'createTime' @:: Lens' DeploymentListInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.isCurrent' @:: Lens' DeploymentListInfo Prelude.Bool@ -}
data DeploymentListInfo
  = DeploymentListInfo'_constructor {_DeploymentListInfo'deployment :: !(Prelude.Maybe Deployment),
                                     _DeploymentListInfo'createTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                     _DeploymentListInfo'isCurrent :: !Prelude.Bool,
                                     _DeploymentListInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DeploymentListInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DeploymentListInfo "deployment" Deployment where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeploymentListInfo'deployment
           (\ x__ y__ -> x__ {_DeploymentListInfo'deployment = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DeploymentListInfo "maybe'deployment" (Prelude.Maybe Deployment) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeploymentListInfo'deployment
           (\ x__ y__ -> x__ {_DeploymentListInfo'deployment = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeploymentListInfo "createTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeploymentListInfo'createTime
           (\ x__ y__ -> x__ {_DeploymentListInfo'createTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DeploymentListInfo "maybe'createTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeploymentListInfo'createTime
           (\ x__ y__ -> x__ {_DeploymentListInfo'createTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeploymentListInfo "isCurrent" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeploymentListInfo'isCurrent
           (\ x__ y__ -> x__ {_DeploymentListInfo'isCurrent = y__}))
        Prelude.id
instance Data.ProtoLens.Message DeploymentListInfo where
  messageName _
    = Data.Text.pack "temporal.api.deployment.v1.DeploymentListInfo"
  packedMessageDescriptor _
    = "\n\
      \\DC2DeploymentListInfo\DC2F\n\
      \\n\
      \deployment\CAN\SOH \SOH(\v2&.temporal.api.deployment.v1.DeploymentR\n\
      \deployment\DC2;\n\
      \\vcreate_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \createTime\DC2\GS\n\
      \\n\
      \is_current\CAN\ETX \SOH(\bR\tisCurrent"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        deployment__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deployment"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Deployment)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'deployment")) ::
              Data.ProtoLens.FieldDescriptor DeploymentListInfo
        createTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "create_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'createTime")) ::
              Data.ProtoLens.FieldDescriptor DeploymentListInfo
        isCurrent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_current"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"isCurrent")) ::
              Data.ProtoLens.FieldDescriptor DeploymentListInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, deployment__field_descriptor),
           (Data.ProtoLens.Tag 2, createTime__field_descriptor),
           (Data.ProtoLens.Tag 3, isCurrent__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DeploymentListInfo'_unknownFields
        (\ x__ y__ -> x__ {_DeploymentListInfo'_unknownFields = y__})
  defMessage
    = DeploymentListInfo'_constructor
        {_DeploymentListInfo'deployment = Prelude.Nothing,
         _DeploymentListInfo'createTime = Prelude.Nothing,
         _DeploymentListInfo'isCurrent = Data.ProtoLens.fieldDefault,
         _DeploymentListInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DeploymentListInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser DeploymentListInfo
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
                                       "deployment"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"deployment") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "create_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"createTime") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_current"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"isCurrent") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DeploymentListInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'deployment") _x
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
                       (Data.ProtoLens.Field.field @"maybe'createTime") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"isCurrent") _x
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
instance Control.DeepSeq.NFData DeploymentListInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DeploymentListInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DeploymentListInfo'deployment x__)
                (Control.DeepSeq.deepseq
                   (_DeploymentListInfo'createTime x__)
                   (Control.DeepSeq.deepseq (_DeploymentListInfo'isCurrent x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.sourceDeploymentVersion' @:: Lens' InheritedAutoUpgradeInfo WorkerDeploymentVersion@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'sourceDeploymentVersion' @:: Lens' InheritedAutoUpgradeInfo (Prelude.Maybe WorkerDeploymentVersion)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.sourceDeploymentRevisionNumber' @:: Lens' InheritedAutoUpgradeInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.continueAsNewInitialVersioningBehavior' @:: Lens' InheritedAutoUpgradeInfo Proto.Temporal.Api.Enums.V1.Workflow.ContinueAsNewVersioningBehavior@ -}
data InheritedAutoUpgradeInfo
  = InheritedAutoUpgradeInfo'_constructor {_InheritedAutoUpgradeInfo'sourceDeploymentVersion :: !(Prelude.Maybe WorkerDeploymentVersion),
                                           _InheritedAutoUpgradeInfo'sourceDeploymentRevisionNumber :: !Data.Int.Int64,
                                           _InheritedAutoUpgradeInfo'continueAsNewInitialVersioningBehavior :: !Proto.Temporal.Api.Enums.V1.Workflow.ContinueAsNewVersioningBehavior,
                                           _InheritedAutoUpgradeInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show InheritedAutoUpgradeInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField InheritedAutoUpgradeInfo "sourceDeploymentVersion" WorkerDeploymentVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InheritedAutoUpgradeInfo'sourceDeploymentVersion
           (\ x__ y__
              -> x__ {_InheritedAutoUpgradeInfo'sourceDeploymentVersion = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField InheritedAutoUpgradeInfo "maybe'sourceDeploymentVersion" (Prelude.Maybe WorkerDeploymentVersion) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InheritedAutoUpgradeInfo'sourceDeploymentVersion
           (\ x__ y__
              -> x__ {_InheritedAutoUpgradeInfo'sourceDeploymentVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InheritedAutoUpgradeInfo "sourceDeploymentRevisionNumber" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InheritedAutoUpgradeInfo'sourceDeploymentRevisionNumber
           (\ x__ y__
              -> x__
                   {_InheritedAutoUpgradeInfo'sourceDeploymentRevisionNumber = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InheritedAutoUpgradeInfo "continueAsNewInitialVersioningBehavior" Proto.Temporal.Api.Enums.V1.Workflow.ContinueAsNewVersioningBehavior where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InheritedAutoUpgradeInfo'continueAsNewInitialVersioningBehavior
           (\ x__ y__
              -> x__
                   {_InheritedAutoUpgradeInfo'continueAsNewInitialVersioningBehavior = y__}))
        Prelude.id
instance Data.ProtoLens.Message InheritedAutoUpgradeInfo where
  messageName _
    = Data.Text.pack
        "temporal.api.deployment.v1.InheritedAutoUpgradeInfo"
  packedMessageDescriptor _
    = "\n\
      \\CANInheritedAutoUpgradeInfo\DC2o\n\
      \\EMsource_deployment_version\CAN\SOH \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\ETBsourceDeploymentVersion\DC2I\n\
      \!source_deployment_revision_number\CAN\STX \SOH(\ETXR\RSsourceDeploymentRevisionNumber\DC2\147\SOH\n\
      \+continue_as_new_initial_versioning_behavior\CAN\ETX \SOH(\SO26.temporal.api.enums.v1.ContinueAsNewVersioningBehaviorR&continueAsNewInitialVersioningBehavior"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sourceDeploymentVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_deployment_version"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WorkerDeploymentVersion)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sourceDeploymentVersion")) ::
              Data.ProtoLens.FieldDescriptor InheritedAutoUpgradeInfo
        sourceDeploymentRevisionNumber__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_deployment_revision_number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sourceDeploymentRevisionNumber")) ::
              Data.ProtoLens.FieldDescriptor InheritedAutoUpgradeInfo
        continueAsNewInitialVersioningBehavior__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "continue_as_new_initial_versioning_behavior"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Workflow.ContinueAsNewVersioningBehavior)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field
                    @"continueAsNewInitialVersioningBehavior")) ::
              Data.ProtoLens.FieldDescriptor InheritedAutoUpgradeInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, sourceDeploymentVersion__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            sourceDeploymentRevisionNumber__field_descriptor),
           (Data.ProtoLens.Tag 3, 
            continueAsNewInitialVersioningBehavior__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _InheritedAutoUpgradeInfo'_unknownFields
        (\ x__ y__ -> x__ {_InheritedAutoUpgradeInfo'_unknownFields = y__})
  defMessage
    = InheritedAutoUpgradeInfo'_constructor
        {_InheritedAutoUpgradeInfo'sourceDeploymentVersion = Prelude.Nothing,
         _InheritedAutoUpgradeInfo'sourceDeploymentRevisionNumber = Data.ProtoLens.fieldDefault,
         _InheritedAutoUpgradeInfo'continueAsNewInitialVersioningBehavior = Data.ProtoLens.fieldDefault,
         _InheritedAutoUpgradeInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          InheritedAutoUpgradeInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser InheritedAutoUpgradeInfo
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
                                       "source_deployment_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sourceDeploymentVersion") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "source_deployment_revision_number"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sourceDeploymentRevisionNumber")
                                     y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "continue_as_new_initial_versioning_behavior"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"continueAsNewInitialVersioningBehavior")
                                     y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "InheritedAutoUpgradeInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'sourceDeploymentVersion") _x
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
                         (Data.ProtoLens.Field.field @"sourceDeploymentRevisionNumber") _x
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
                               @"continueAsNewInitialVersioningBehavior")
                            _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData InheritedAutoUpgradeInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_InheritedAutoUpgradeInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_InheritedAutoUpgradeInfo'sourceDeploymentVersion x__)
                (Control.DeepSeq.deepseq
                   (_InheritedAutoUpgradeInfo'sourceDeploymentRevisionNumber x__)
                   (Control.DeepSeq.deepseq
                      (_InheritedAutoUpgradeInfo'continueAsNewInitialVersioningBehavior
                         x__)
                      ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.currentDeploymentVersion' @:: Lens' RoutingConfig WorkerDeploymentVersion@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'currentDeploymentVersion' @:: Lens' RoutingConfig (Prelude.Maybe WorkerDeploymentVersion)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.currentVersion' @:: Lens' RoutingConfig Data.Text.Text@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.rampingDeploymentVersion' @:: Lens' RoutingConfig WorkerDeploymentVersion@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'rampingDeploymentVersion' @:: Lens' RoutingConfig (Prelude.Maybe WorkerDeploymentVersion)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.rampingVersion' @:: Lens' RoutingConfig Data.Text.Text@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.rampingVersionPercentage' @:: Lens' RoutingConfig Prelude.Float@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.currentVersionChangedTime' @:: Lens' RoutingConfig Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'currentVersionChangedTime' @:: Lens' RoutingConfig (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.rampingVersionChangedTime' @:: Lens' RoutingConfig Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'rampingVersionChangedTime' @:: Lens' RoutingConfig (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.rampingVersionPercentageChangedTime' @:: Lens' RoutingConfig Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'rampingVersionPercentageChangedTime' @:: Lens' RoutingConfig (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.revisionNumber' @:: Lens' RoutingConfig Data.Int.Int64@ -}
data RoutingConfig
  = RoutingConfig'_constructor {_RoutingConfig'currentDeploymentVersion :: !(Prelude.Maybe WorkerDeploymentVersion),
                                _RoutingConfig'currentVersion :: !Data.Text.Text,
                                _RoutingConfig'rampingDeploymentVersion :: !(Prelude.Maybe WorkerDeploymentVersion),
                                _RoutingConfig'rampingVersion :: !Data.Text.Text,
                                _RoutingConfig'rampingVersionPercentage :: !Prelude.Float,
                                _RoutingConfig'currentVersionChangedTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                _RoutingConfig'rampingVersionChangedTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                _RoutingConfig'rampingVersionPercentageChangedTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                _RoutingConfig'revisionNumber :: !Data.Int.Int64,
                                _RoutingConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RoutingConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RoutingConfig "currentDeploymentVersion" WorkerDeploymentVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutingConfig'currentDeploymentVersion
           (\ x__ y__ -> x__ {_RoutingConfig'currentDeploymentVersion = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RoutingConfig "maybe'currentDeploymentVersion" (Prelude.Maybe WorkerDeploymentVersion) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutingConfig'currentDeploymentVersion
           (\ x__ y__ -> x__ {_RoutingConfig'currentDeploymentVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RoutingConfig "currentVersion" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutingConfig'currentVersion
           (\ x__ y__ -> x__ {_RoutingConfig'currentVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RoutingConfig "rampingDeploymentVersion" WorkerDeploymentVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutingConfig'rampingDeploymentVersion
           (\ x__ y__ -> x__ {_RoutingConfig'rampingDeploymentVersion = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RoutingConfig "maybe'rampingDeploymentVersion" (Prelude.Maybe WorkerDeploymentVersion) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutingConfig'rampingDeploymentVersion
           (\ x__ y__ -> x__ {_RoutingConfig'rampingDeploymentVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RoutingConfig "rampingVersion" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutingConfig'rampingVersion
           (\ x__ y__ -> x__ {_RoutingConfig'rampingVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RoutingConfig "rampingVersionPercentage" Prelude.Float where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutingConfig'rampingVersionPercentage
           (\ x__ y__ -> x__ {_RoutingConfig'rampingVersionPercentage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RoutingConfig "currentVersionChangedTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutingConfig'currentVersionChangedTime
           (\ x__ y__
              -> x__ {_RoutingConfig'currentVersionChangedTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RoutingConfig "maybe'currentVersionChangedTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutingConfig'currentVersionChangedTime
           (\ x__ y__
              -> x__ {_RoutingConfig'currentVersionChangedTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RoutingConfig "rampingVersionChangedTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutingConfig'rampingVersionChangedTime
           (\ x__ y__
              -> x__ {_RoutingConfig'rampingVersionChangedTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RoutingConfig "maybe'rampingVersionChangedTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutingConfig'rampingVersionChangedTime
           (\ x__ y__
              -> x__ {_RoutingConfig'rampingVersionChangedTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RoutingConfig "rampingVersionPercentageChangedTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutingConfig'rampingVersionPercentageChangedTime
           (\ x__ y__
              -> x__ {_RoutingConfig'rampingVersionPercentageChangedTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RoutingConfig "maybe'rampingVersionPercentageChangedTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutingConfig'rampingVersionPercentageChangedTime
           (\ x__ y__
              -> x__ {_RoutingConfig'rampingVersionPercentageChangedTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RoutingConfig "revisionNumber" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RoutingConfig'revisionNumber
           (\ x__ y__ -> x__ {_RoutingConfig'revisionNumber = y__}))
        Prelude.id
instance Data.ProtoLens.Message RoutingConfig where
  messageName _
    = Data.Text.pack "temporal.api.deployment.v1.RoutingConfig"
  packedMessageDescriptor _
    = "\n\
      \\rRoutingConfig\DC2q\n\
      \\SUBcurrent_deployment_version\CAN\a \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\CANcurrentDeploymentVersion\DC2+\n\
      \\SIcurrent_version\CAN\SOH \SOH(\tR\SOcurrentVersionB\STX\CAN\SOH\DC2q\n\
      \\SUBramping_deployment_version\CAN\t \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\CANrampingDeploymentVersion\DC2+\n\
      \\SIramping_version\CAN\STX \SOH(\tR\SOrampingVersionB\STX\CAN\SOH\DC2<\n\
      \\SUBramping_version_percentage\CAN\ETX \SOH(\STXR\CANrampingVersionPercentage\DC2[\n\
      \\FScurrent_version_changed_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\EMcurrentVersionChangedTime\DC2[\n\
      \\FSramping_version_changed_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\EMrampingVersionChangedTime\DC2p\n\
      \'ramping_version_percentage_changed_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR#rampingVersionPercentageChangedTime\DC2'\n\
      \\SIrevision_number\CAN\n\
      \ \SOH(\ETXR\SOrevisionNumber"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        currentDeploymentVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_deployment_version"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WorkerDeploymentVersion)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'currentDeploymentVersion")) ::
              Data.ProtoLens.FieldDescriptor RoutingConfig
        currentVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"currentVersion")) ::
              Data.ProtoLens.FieldDescriptor RoutingConfig
        rampingDeploymentVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ramping_deployment_version"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WorkerDeploymentVersion)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rampingDeploymentVersion")) ::
              Data.ProtoLens.FieldDescriptor RoutingConfig
        rampingVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ramping_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rampingVersion")) ::
              Data.ProtoLens.FieldDescriptor RoutingConfig
        rampingVersionPercentage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ramping_version_percentage"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rampingVersionPercentage")) ::
              Data.ProtoLens.FieldDescriptor RoutingConfig
        currentVersionChangedTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_version_changed_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'currentVersionChangedTime")) ::
              Data.ProtoLens.FieldDescriptor RoutingConfig
        rampingVersionChangedTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ramping_version_changed_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rampingVersionChangedTime")) ::
              Data.ProtoLens.FieldDescriptor RoutingConfig
        rampingVersionPercentageChangedTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ramping_version_percentage_changed_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'rampingVersionPercentageChangedTime")) ::
              Data.ProtoLens.FieldDescriptor RoutingConfig
        revisionNumber__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "revision_number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"revisionNumber")) ::
              Data.ProtoLens.FieldDescriptor RoutingConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 7, 
            currentDeploymentVersion__field_descriptor),
           (Data.ProtoLens.Tag 1, currentVersion__field_descriptor),
           (Data.ProtoLens.Tag 9, rampingDeploymentVersion__field_descriptor),
           (Data.ProtoLens.Tag 2, rampingVersion__field_descriptor),
           (Data.ProtoLens.Tag 3, rampingVersionPercentage__field_descriptor),
           (Data.ProtoLens.Tag 4, 
            currentVersionChangedTime__field_descriptor),
           (Data.ProtoLens.Tag 5, 
            rampingVersionChangedTime__field_descriptor),
           (Data.ProtoLens.Tag 6, 
            rampingVersionPercentageChangedTime__field_descriptor),
           (Data.ProtoLens.Tag 10, revisionNumber__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RoutingConfig'_unknownFields
        (\ x__ y__ -> x__ {_RoutingConfig'_unknownFields = y__})
  defMessage
    = RoutingConfig'_constructor
        {_RoutingConfig'currentDeploymentVersion = Prelude.Nothing,
         _RoutingConfig'currentVersion = Data.ProtoLens.fieldDefault,
         _RoutingConfig'rampingDeploymentVersion = Prelude.Nothing,
         _RoutingConfig'rampingVersion = Data.ProtoLens.fieldDefault,
         _RoutingConfig'rampingVersionPercentage = Data.ProtoLens.fieldDefault,
         _RoutingConfig'currentVersionChangedTime = Prelude.Nothing,
         _RoutingConfig'rampingVersionChangedTime = Prelude.Nothing,
         _RoutingConfig'rampingVersionPercentageChangedTime = Prelude.Nothing,
         _RoutingConfig'revisionNumber = Data.ProtoLens.fieldDefault,
         _RoutingConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RoutingConfig -> Data.ProtoLens.Encoding.Bytes.Parser RoutingConfig
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
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "current_deployment_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"currentDeploymentVersion") y x)
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "current_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"currentVersion") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ramping_deployment_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rampingDeploymentVersion") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "ramping_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rampingVersion") y x)
                        29
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToFloat
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "ramping_version_percentage"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rampingVersionPercentage") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "current_version_changed_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"currentVersionChangedTime") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ramping_version_changed_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rampingVersionChangedTime") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ramping_version_percentage_changed_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"rampingVersionPercentageChangedTime")
                                     y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "revision_number"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"revisionNumber") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RoutingConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'currentDeploymentVersion") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
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
                         (Data.ProtoLens.Field.field @"currentVersion") _x
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
                          (Data.ProtoLens.Field.field @"maybe'rampingDeploymentVersion") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
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
                               (Data.ProtoLens.Field.field @"rampingVersion") _x
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
                                  (Data.ProtoLens.Field.field @"rampingVersionPercentage") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 29)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putFixed32
                                     Data.ProtoLens.Encoding.Bytes.floatToWord _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'currentVersionChangedTime")
                                   _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
                                      (Data.ProtoLens.Field.field
                                         @"maybe'rampingVersionChangedTime")
                                      _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                                         (Data.ProtoLens.Field.field
                                            @"maybe'rampingVersionPercentageChangedTime")
                                         _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
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
                                              (Data.ProtoLens.Field.field @"revisionNumber") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 Prelude.fromIntegral _v))
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData RoutingConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RoutingConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RoutingConfig'currentDeploymentVersion x__)
                (Control.DeepSeq.deepseq
                   (_RoutingConfig'currentVersion x__)
                   (Control.DeepSeq.deepseq
                      (_RoutingConfig'rampingDeploymentVersion x__)
                      (Control.DeepSeq.deepseq
                         (_RoutingConfig'rampingVersion x__)
                         (Control.DeepSeq.deepseq
                            (_RoutingConfig'rampingVersionPercentage x__)
                            (Control.DeepSeq.deepseq
                               (_RoutingConfig'currentVersionChangedTime x__)
                               (Control.DeepSeq.deepseq
                                  (_RoutingConfig'rampingVersionChangedTime x__)
                                  (Control.DeepSeq.deepseq
                                     (_RoutingConfig'rampingVersionPercentageChangedTime x__)
                                     (Control.DeepSeq.deepseq
                                        (_RoutingConfig'revisionNumber x__) ())))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.upsertEntries' @:: Lens' UpdateDeploymentMetadata (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.removeEntries' @:: Lens' UpdateDeploymentMetadata [Data.Text.Text]@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.vec'removeEntries' @:: Lens' UpdateDeploymentMetadata (Data.Vector.Vector Data.Text.Text)@ -}
data UpdateDeploymentMetadata
  = UpdateDeploymentMetadata'_constructor {_UpdateDeploymentMetadata'upsertEntries :: !(Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload),
                                           _UpdateDeploymentMetadata'removeEntries :: !(Data.Vector.Vector Data.Text.Text),
                                           _UpdateDeploymentMetadata'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpdateDeploymentMetadata where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UpdateDeploymentMetadata "upsertEntries" (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateDeploymentMetadata'upsertEntries
           (\ x__ y__ -> x__ {_UpdateDeploymentMetadata'upsertEntries = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateDeploymentMetadata "removeEntries" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateDeploymentMetadata'removeEntries
           (\ x__ y__ -> x__ {_UpdateDeploymentMetadata'removeEntries = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField UpdateDeploymentMetadata "vec'removeEntries" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateDeploymentMetadata'removeEntries
           (\ x__ y__ -> x__ {_UpdateDeploymentMetadata'removeEntries = y__}))
        Prelude.id
instance Data.ProtoLens.Message UpdateDeploymentMetadata where
  messageName _
    = Data.Text.pack
        "temporal.api.deployment.v1.UpdateDeploymentMetadata"
  packedMessageDescriptor _
    = "\n\
      \\CANUpdateDeploymentMetadata\DC2n\n\
      \\SOupsert_entries\CAN\SOH \ETX(\v2G.temporal.api.deployment.v1.UpdateDeploymentMetadata.UpsertEntriesEntryR\rupsertEntries\DC2%\n\
      \\SOremove_entries\CAN\STX \ETX(\tR\rremoveEntries\SUBa\n\
      \\DC2UpsertEntriesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        upsertEntries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upsert_entries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UpdateDeploymentMetadata'UpsertEntriesEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"upsertEntries")) ::
              Data.ProtoLens.FieldDescriptor UpdateDeploymentMetadata
        removeEntries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "remove_entries"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"removeEntries")) ::
              Data.ProtoLens.FieldDescriptor UpdateDeploymentMetadata
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, upsertEntries__field_descriptor),
           (Data.ProtoLens.Tag 2, removeEntries__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpdateDeploymentMetadata'_unknownFields
        (\ x__ y__ -> x__ {_UpdateDeploymentMetadata'_unknownFields = y__})
  defMessage
    = UpdateDeploymentMetadata'_constructor
        {_UpdateDeploymentMetadata'upsertEntries = Data.Map.empty,
         _UpdateDeploymentMetadata'removeEntries = Data.Vector.Generic.empty,
         _UpdateDeploymentMetadata'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UpdateDeploymentMetadata
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser UpdateDeploymentMetadata
        loop x mutable'removeEntries
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'removeEntries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'removeEntries)
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
                              (Data.ProtoLens.Field.field @"vec'removeEntries")
                              frozen'removeEntries x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !(entry :: UpdateDeploymentMetadata'UpsertEntriesEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                             (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                                 Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                   (Prelude.fromIntegral
                                                                                                      len)
                                                                                                   Data.ProtoLens.parseMessage)
                                                                                             "upsert_entries"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"upsertEntries")
                                        (\ !t -> Data.Map.insert key value t) x)
                                     mutable'removeEntries)
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getText
                                              (Prelude.fromIntegral len))
                                        "remove_entries"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'removeEntries y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'removeEntries
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'removeEntries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'removeEntries)
          "UpdateDeploymentMetadata"
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
                                       UpdateDeploymentMetadata'UpsertEntriesEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"upsertEntries") _x))))
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
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'removeEntries") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData UpdateDeploymentMetadata where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UpdateDeploymentMetadata'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UpdateDeploymentMetadata'upsertEntries x__)
                (Control.DeepSeq.deepseq
                   (_UpdateDeploymentMetadata'removeEntries x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.key' @:: Lens' UpdateDeploymentMetadata'UpsertEntriesEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.value' @:: Lens' UpdateDeploymentMetadata'UpsertEntriesEntry Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'value' @:: Lens' UpdateDeploymentMetadata'UpsertEntriesEntry (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data UpdateDeploymentMetadata'UpsertEntriesEntry
  = UpdateDeploymentMetadata'UpsertEntriesEntry'_constructor {_UpdateDeploymentMetadata'UpsertEntriesEntry'key :: !Data.Text.Text,
                                                              _UpdateDeploymentMetadata'UpsertEntriesEntry'value :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                                              _UpdateDeploymentMetadata'UpsertEntriesEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpdateDeploymentMetadata'UpsertEntriesEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UpdateDeploymentMetadata'UpsertEntriesEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateDeploymentMetadata'UpsertEntriesEntry'key
           (\ x__ y__
              -> x__ {_UpdateDeploymentMetadata'UpsertEntriesEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateDeploymentMetadata'UpsertEntriesEntry "value" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateDeploymentMetadata'UpsertEntriesEntry'value
           (\ x__ y__
              -> x__ {_UpdateDeploymentMetadata'UpsertEntriesEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpdateDeploymentMetadata'UpsertEntriesEntry "maybe'value" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateDeploymentMetadata'UpsertEntriesEntry'value
           (\ x__ y__
              -> x__ {_UpdateDeploymentMetadata'UpsertEntriesEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message UpdateDeploymentMetadata'UpsertEntriesEntry where
  messageName _
    = Data.Text.pack
        "temporal.api.deployment.v1.UpdateDeploymentMetadata.UpsertEntriesEntry"
  packedMessageDescriptor _
    = "\n\
      \\DC2UpsertEntriesEntry\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor UpdateDeploymentMetadata'UpsertEntriesEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor UpdateDeploymentMetadata'UpsertEntriesEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpdateDeploymentMetadata'UpsertEntriesEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_UpdateDeploymentMetadata'UpsertEntriesEntry'_unknownFields = y__})
  defMessage
    = UpdateDeploymentMetadata'UpsertEntriesEntry'_constructor
        {_UpdateDeploymentMetadata'UpsertEntriesEntry'key = Data.ProtoLens.fieldDefault,
         _UpdateDeploymentMetadata'UpsertEntriesEntry'value = Prelude.Nothing,
         _UpdateDeploymentMetadata'UpsertEntriesEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UpdateDeploymentMetadata'UpsertEntriesEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser UpdateDeploymentMetadata'UpsertEntriesEntry
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
          (do loop Data.ProtoLens.defMessage) "UpsertEntriesEntry"
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
instance Control.DeepSeq.NFData UpdateDeploymentMetadata'UpsertEntriesEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UpdateDeploymentMetadata'UpsertEntriesEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UpdateDeploymentMetadata'UpsertEntriesEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_UpdateDeploymentMetadata'UpsertEntriesEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.status' @:: Lens' VersionDrainageInfo Proto.Temporal.Api.Enums.V1.Deployment.VersionDrainageStatus@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.lastChangedTime' @:: Lens' VersionDrainageInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'lastChangedTime' @:: Lens' VersionDrainageInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.lastCheckedTime' @:: Lens' VersionDrainageInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'lastCheckedTime' @:: Lens' VersionDrainageInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data VersionDrainageInfo
  = VersionDrainageInfo'_constructor {_VersionDrainageInfo'status :: !Proto.Temporal.Api.Enums.V1.Deployment.VersionDrainageStatus,
                                      _VersionDrainageInfo'lastChangedTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                      _VersionDrainageInfo'lastCheckedTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                      _VersionDrainageInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show VersionDrainageInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField VersionDrainageInfo "status" Proto.Temporal.Api.Enums.V1.Deployment.VersionDrainageStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionDrainageInfo'status
           (\ x__ y__ -> x__ {_VersionDrainageInfo'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VersionDrainageInfo "lastChangedTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionDrainageInfo'lastChangedTime
           (\ x__ y__ -> x__ {_VersionDrainageInfo'lastChangedTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField VersionDrainageInfo "maybe'lastChangedTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionDrainageInfo'lastChangedTime
           (\ x__ y__ -> x__ {_VersionDrainageInfo'lastChangedTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VersionDrainageInfo "lastCheckedTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionDrainageInfo'lastCheckedTime
           (\ x__ y__ -> x__ {_VersionDrainageInfo'lastCheckedTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField VersionDrainageInfo "maybe'lastCheckedTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionDrainageInfo'lastCheckedTime
           (\ x__ y__ -> x__ {_VersionDrainageInfo'lastCheckedTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message VersionDrainageInfo where
  messageName _
    = Data.Text.pack "temporal.api.deployment.v1.VersionDrainageInfo"
  packedMessageDescriptor _
    = "\n\
      \\DC3VersionDrainageInfo\DC2D\n\
      \\ACKstatus\CAN\SOH \SOH(\SO2,.temporal.api.enums.v1.VersionDrainageStatusR\ACKstatus\DC2F\n\
      \\DC1last_changed_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\SIlastChangedTime\DC2F\n\
      \\DC1last_checked_time\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\SIlastCheckedTime"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Deployment.VersionDrainageStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor VersionDrainageInfo
        lastChangedTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_changed_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastChangedTime")) ::
              Data.ProtoLens.FieldDescriptor VersionDrainageInfo
        lastCheckedTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_checked_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastCheckedTime")) ::
              Data.ProtoLens.FieldDescriptor VersionDrainageInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, status__field_descriptor),
           (Data.ProtoLens.Tag 2, lastChangedTime__field_descriptor),
           (Data.ProtoLens.Tag 3, lastCheckedTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _VersionDrainageInfo'_unknownFields
        (\ x__ y__ -> x__ {_VersionDrainageInfo'_unknownFields = y__})
  defMessage
    = VersionDrainageInfo'_constructor
        {_VersionDrainageInfo'status = Data.ProtoLens.fieldDefault,
         _VersionDrainageInfo'lastChangedTime = Prelude.Nothing,
         _VersionDrainageInfo'lastCheckedTime = Prelude.Nothing,
         _VersionDrainageInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          VersionDrainageInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser VersionDrainageInfo
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
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_changed_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastChangedTime") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_checked_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastCheckedTime") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "VersionDrainageInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'lastChangedTime") _x
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
                          (Data.ProtoLens.Field.field @"maybe'lastCheckedTime") _x
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
instance Control.DeepSeq.NFData VersionDrainageInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_VersionDrainageInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_VersionDrainageInfo'status x__)
                (Control.DeepSeq.deepseq
                   (_VersionDrainageInfo'lastChangedTime x__)
                   (Control.DeepSeq.deepseq
                      (_VersionDrainageInfo'lastCheckedTime x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.entries' @:: Lens' VersionMetadata (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data VersionMetadata
  = VersionMetadata'_constructor {_VersionMetadata'entries :: !(Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload),
                                  _VersionMetadata'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show VersionMetadata where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField VersionMetadata "entries" (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionMetadata'entries
           (\ x__ y__ -> x__ {_VersionMetadata'entries = y__}))
        Prelude.id
instance Data.ProtoLens.Message VersionMetadata where
  messageName _
    = Data.Text.pack "temporal.api.deployment.v1.VersionMetadata"
  packedMessageDescriptor _
    = "\n\
      \\SIVersionMetadata\DC2R\n\
      \\aentries\CAN\SOH \ETX(\v28.temporal.api.deployment.v1.VersionMetadata.EntriesEntryR\aentries\SUB[\n\
      \\fEntriesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        entries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "entries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor VersionMetadata'EntriesEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"entries")) ::
              Data.ProtoLens.FieldDescriptor VersionMetadata
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, entries__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _VersionMetadata'_unknownFields
        (\ x__ y__ -> x__ {_VersionMetadata'_unknownFields = y__})
  defMessage
    = VersionMetadata'_constructor
        {_VersionMetadata'entries = Data.Map.empty,
         _VersionMetadata'_unknownFields = []}
  parseMessage
    = let
        loop ::
          VersionMetadata
          -> Data.ProtoLens.Encoding.Bytes.Parser VersionMetadata
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
                          -> do !(entry :: VersionMetadata'EntriesEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                              (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                                                    (Prelude.fromIntegral
                                                                                       len)
                                                                                    Data.ProtoLens.parseMessage)
                                                                              "entries"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"entries")
                                        (\ !t -> Data.Map.insert key value t) x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "VersionMetadata"
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
                                    (Data.ProtoLens.defMessage :: VersionMetadata'EntriesEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"entries") _x))))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData VersionMetadata where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_VersionMetadata'_unknownFields x__)
             (Control.DeepSeq.deepseq (_VersionMetadata'entries x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.key' @:: Lens' VersionMetadata'EntriesEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.value' @:: Lens' VersionMetadata'EntriesEntry Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'value' @:: Lens' VersionMetadata'EntriesEntry (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data VersionMetadata'EntriesEntry
  = VersionMetadata'EntriesEntry'_constructor {_VersionMetadata'EntriesEntry'key :: !Data.Text.Text,
                                               _VersionMetadata'EntriesEntry'value :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                               _VersionMetadata'EntriesEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show VersionMetadata'EntriesEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField VersionMetadata'EntriesEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionMetadata'EntriesEntry'key
           (\ x__ y__ -> x__ {_VersionMetadata'EntriesEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VersionMetadata'EntriesEntry "value" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionMetadata'EntriesEntry'value
           (\ x__ y__ -> x__ {_VersionMetadata'EntriesEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField VersionMetadata'EntriesEntry "maybe'value" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionMetadata'EntriesEntry'value
           (\ x__ y__ -> x__ {_VersionMetadata'EntriesEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message VersionMetadata'EntriesEntry where
  messageName _
    = Data.Text.pack
        "temporal.api.deployment.v1.VersionMetadata.EntriesEntry"
  packedMessageDescriptor _
    = "\n\
      \\fEntriesEntry\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor VersionMetadata'EntriesEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor VersionMetadata'EntriesEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _VersionMetadata'EntriesEntry'_unknownFields
        (\ x__ y__
           -> x__ {_VersionMetadata'EntriesEntry'_unknownFields = y__})
  defMessage
    = VersionMetadata'EntriesEntry'_constructor
        {_VersionMetadata'EntriesEntry'key = Data.ProtoLens.fieldDefault,
         _VersionMetadata'EntriesEntry'value = Prelude.Nothing,
         _VersionMetadata'EntriesEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          VersionMetadata'EntriesEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser VersionMetadata'EntriesEntry
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
          (do loop Data.ProtoLens.defMessage) "EntriesEntry"
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
instance Control.DeepSeq.NFData VersionMetadata'EntriesEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_VersionMetadata'EntriesEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_VersionMetadata'EntriesEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_VersionMetadata'EntriesEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.name' @:: Lens' WorkerDeploymentInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.versionSummaries' @:: Lens' WorkerDeploymentInfo [WorkerDeploymentInfo'WorkerDeploymentVersionSummary]@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.vec'versionSummaries' @:: Lens' WorkerDeploymentInfo (Data.Vector.Vector WorkerDeploymentInfo'WorkerDeploymentVersionSummary)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.createTime' @:: Lens' WorkerDeploymentInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'createTime' @:: Lens' WorkerDeploymentInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.routingConfig' @:: Lens' WorkerDeploymentInfo RoutingConfig@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'routingConfig' @:: Lens' WorkerDeploymentInfo (Prelude.Maybe RoutingConfig)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.lastModifierIdentity' @:: Lens' WorkerDeploymentInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.managerIdentity' @:: Lens' WorkerDeploymentInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.routingConfigUpdateState' @:: Lens' WorkerDeploymentInfo Proto.Temporal.Api.Enums.V1.TaskQueue.RoutingConfigUpdateState@ -}
data WorkerDeploymentInfo
  = WorkerDeploymentInfo'_constructor {_WorkerDeploymentInfo'name :: !Data.Text.Text,
                                       _WorkerDeploymentInfo'versionSummaries :: !(Data.Vector.Vector WorkerDeploymentInfo'WorkerDeploymentVersionSummary),
                                       _WorkerDeploymentInfo'createTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                       _WorkerDeploymentInfo'routingConfig :: !(Prelude.Maybe RoutingConfig),
                                       _WorkerDeploymentInfo'lastModifierIdentity :: !Data.Text.Text,
                                       _WorkerDeploymentInfo'managerIdentity :: !Data.Text.Text,
                                       _WorkerDeploymentInfo'routingConfigUpdateState :: !Proto.Temporal.Api.Enums.V1.TaskQueue.RoutingConfigUpdateState,
                                       _WorkerDeploymentInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkerDeploymentInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'name
           (\ x__ y__ -> x__ {_WorkerDeploymentInfo'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo "versionSummaries" [WorkerDeploymentInfo'WorkerDeploymentVersionSummary] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'versionSummaries
           (\ x__ y__ -> x__ {_WorkerDeploymentInfo'versionSummaries = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo "vec'versionSummaries" (Data.Vector.Vector WorkerDeploymentInfo'WorkerDeploymentVersionSummary) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'versionSummaries
           (\ x__ y__ -> x__ {_WorkerDeploymentInfo'versionSummaries = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo "createTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'createTime
           (\ x__ y__ -> x__ {_WorkerDeploymentInfo'createTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo "maybe'createTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'createTime
           (\ x__ y__ -> x__ {_WorkerDeploymentInfo'createTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo "routingConfig" RoutingConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'routingConfig
           (\ x__ y__ -> x__ {_WorkerDeploymentInfo'routingConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo "maybe'routingConfig" (Prelude.Maybe RoutingConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'routingConfig
           (\ x__ y__ -> x__ {_WorkerDeploymentInfo'routingConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo "lastModifierIdentity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'lastModifierIdentity
           (\ x__ y__
              -> x__ {_WorkerDeploymentInfo'lastModifierIdentity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo "managerIdentity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'managerIdentity
           (\ x__ y__ -> x__ {_WorkerDeploymentInfo'managerIdentity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo "routingConfigUpdateState" Proto.Temporal.Api.Enums.V1.TaskQueue.RoutingConfigUpdateState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'routingConfigUpdateState
           (\ x__ y__
              -> x__ {_WorkerDeploymentInfo'routingConfigUpdateState = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkerDeploymentInfo where
  messageName _
    = Data.Text.pack "temporal.api.deployment.v1.WorkerDeploymentInfo"
  packedMessageDescriptor _
    = "\n\
      \\DC4WorkerDeploymentInfo\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2|\n\
      \\DC1version_summaries\CAN\STX \ETX(\v2O.temporal.api.deployment.v1.WorkerDeploymentInfo.WorkerDeploymentVersionSummaryR\DLEversionSummaries\DC2;\n\
      \\vcreate_time\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \createTime\DC2P\n\
      \\SOrouting_config\CAN\EOT \SOH(\v2).temporal.api.deployment.v1.RoutingConfigR\rroutingConfig\DC24\n\
      \\SYNlast_modifier_identity\CAN\ENQ \SOH(\tR\DC4lastModifierIdentity\DC2)\n\
      \\DLEmanager_identity\CAN\ACK \SOH(\tR\SImanagerIdentity\DC2n\n\
      \\ESCrouting_config_update_state\CAN\a \SOH(\SO2/.temporal.api.enums.v1.RoutingConfigUpdateStateR\CANroutingConfigUpdateState\SUB\204\b\n\
      \\RSWorkerDeploymentVersionSummary\DC2\FS\n\
      \\aversion\CAN\SOH \SOH(\tR\aversionB\STX\CAN\SOH\DC2L\n\
      \\ACKstatus\CAN\v \SOH(\SO24.temporal.api.enums.v1.WorkerDeploymentVersionStatusR\ACKstatus\DC2b\n\
      \\DC2deployment_version\CAN\EOT \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\DC1deploymentVersion\DC2;\n\
      \\vcreate_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \createTime\DC2U\n\
      \\SIdrainage_status\CAN\ETX \SOH(\SO2,.temporal.api.enums.v1.VersionDrainageStatusR\SOdrainageStatus\DC2T\n\
      \\rdrainage_info\CAN\ENQ \SOH(\v2/.temporal.api.deployment.v1.VersionDrainageInfoR\fdrainageInfo\DC2H\n\
      \\DC2current_since_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\DLEcurrentSinceTime\DC2H\n\
      \\DC2ramping_since_time\CAN\a \SOH(\v2\SUB.google.protobuf.TimestampR\DLErampingSinceTime\DC2J\n\
      \\DC3routing_update_time\CAN\b \SOH(\v2\SUB.google.protobuf.TimestampR\DC1routingUpdateTime\DC2N\n\
      \\NAKfirst_activation_time\CAN\t \SOH(\v2\SUB.google.protobuf.TimestampR\DC3firstActivationTime\DC2F\n\
      \\DC1last_current_time\CAN\f \SOH(\v2\SUB.google.protobuf.TimestampR\SIlastCurrentTime\DC2P\n\
      \\SYNlast_deactivation_time\CAN\n\
      \ \SOH(\v2\SUB.google.protobuf.TimestampR\DC4lastDeactivationTime\DC2T\n\
      \\SOcompute_config\CAN\r \SOH(\v2-.temporal.api.compute.v1.ComputeConfigSummaryR\rcomputeConfig\DC2P\n\
      \\SOcompute_status\CAN\SO \SOH(\v2).temporal.api.deployment.v1.ComputeStatusR\rcomputeStatus"
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
              Data.ProtoLens.FieldDescriptor WorkerDeploymentInfo
        versionSummaries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version_summaries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WorkerDeploymentInfo'WorkerDeploymentVersionSummary)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"versionSummaries")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentInfo
        createTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "create_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'createTime")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentInfo
        routingConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "routing_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RoutingConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'routingConfig")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentInfo
        lastModifierIdentity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_modifier_identity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lastModifierIdentity")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentInfo
        managerIdentity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "manager_identity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"managerIdentity")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentInfo
        routingConfigUpdateState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "routing_config_update_state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.TaskQueue.RoutingConfigUpdateState)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"routingConfigUpdateState")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, versionSummaries__field_descriptor),
           (Data.ProtoLens.Tag 3, createTime__field_descriptor),
           (Data.ProtoLens.Tag 4, routingConfig__field_descriptor),
           (Data.ProtoLens.Tag 5, lastModifierIdentity__field_descriptor),
           (Data.ProtoLens.Tag 6, managerIdentity__field_descriptor),
           (Data.ProtoLens.Tag 7, routingConfigUpdateState__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkerDeploymentInfo'_unknownFields
        (\ x__ y__ -> x__ {_WorkerDeploymentInfo'_unknownFields = y__})
  defMessage
    = WorkerDeploymentInfo'_constructor
        {_WorkerDeploymentInfo'name = Data.ProtoLens.fieldDefault,
         _WorkerDeploymentInfo'versionSummaries = Data.Vector.Generic.empty,
         _WorkerDeploymentInfo'createTime = Prelude.Nothing,
         _WorkerDeploymentInfo'routingConfig = Prelude.Nothing,
         _WorkerDeploymentInfo'lastModifierIdentity = Data.ProtoLens.fieldDefault,
         _WorkerDeploymentInfo'managerIdentity = Data.ProtoLens.fieldDefault,
         _WorkerDeploymentInfo'routingConfigUpdateState = Data.ProtoLens.fieldDefault,
         _WorkerDeploymentInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkerDeploymentInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld WorkerDeploymentInfo'WorkerDeploymentVersionSummary
             -> Data.ProtoLens.Encoding.Bytes.Parser WorkerDeploymentInfo
        loop x mutable'versionSummaries
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'versionSummaries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'versionSummaries)
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
                              (Data.ProtoLens.Field.field @"vec'versionSummaries")
                              frozen'versionSummaries x))
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
                                  mutable'versionSummaries
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "version_summaries"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'versionSummaries y)
                                loop x v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "create_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"createTime") y x)
                                  mutable'versionSummaries
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "routing_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"routingConfig") y x)
                                  mutable'versionSummaries
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "last_modifier_identity"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastModifierIdentity") y x)
                                  mutable'versionSummaries
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "manager_identity"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"managerIdentity") y x)
                                  mutable'versionSummaries
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "routing_config_update_state"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"routingConfigUpdateState") y x)
                                  mutable'versionSummaries
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'versionSummaries
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'versionSummaries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'versionSummaries)
          "WorkerDeploymentInfo"
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
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'versionSummaries") _x))
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
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'routingConfig") _x
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
                                  (Data.ProtoLens.Field.field @"lastModifierIdentity") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                                     (Data.ProtoLens.Field.field @"managerIdentity") _x
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
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"routingConfigUpdateState") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        ((Prelude..)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              Prelude.fromIntegral)
                                           Prelude.fromEnum _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData WorkerDeploymentInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkerDeploymentInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WorkerDeploymentInfo'name x__)
                (Control.DeepSeq.deepseq
                   (_WorkerDeploymentInfo'versionSummaries x__)
                   (Control.DeepSeq.deepseq
                      (_WorkerDeploymentInfo'createTime x__)
                      (Control.DeepSeq.deepseq
                         (_WorkerDeploymentInfo'routingConfig x__)
                         (Control.DeepSeq.deepseq
                            (_WorkerDeploymentInfo'lastModifierIdentity x__)
                            (Control.DeepSeq.deepseq
                               (_WorkerDeploymentInfo'managerIdentity x__)
                               (Control.DeepSeq.deepseq
                                  (_WorkerDeploymentInfo'routingConfigUpdateState x__) ())))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.version' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary Data.Text.Text@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.status' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary Proto.Temporal.Api.Enums.V1.Deployment.WorkerDeploymentVersionStatus@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.deploymentVersion' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary WorkerDeploymentVersion@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'deploymentVersion' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary (Prelude.Maybe WorkerDeploymentVersion)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.createTime' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'createTime' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.drainageStatus' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary Proto.Temporal.Api.Enums.V1.Deployment.VersionDrainageStatus@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.drainageInfo' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary VersionDrainageInfo@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'drainageInfo' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary (Prelude.Maybe VersionDrainageInfo)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.currentSinceTime' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'currentSinceTime' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.rampingSinceTime' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'rampingSinceTime' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.routingUpdateTime' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'routingUpdateTime' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.firstActivationTime' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'firstActivationTime' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.lastCurrentTime' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'lastCurrentTime' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.lastDeactivationTime' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'lastDeactivationTime' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.computeConfig' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary Proto.Temporal.Api.Compute.V1.Config.ComputeConfigSummary@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'computeConfig' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary (Prelude.Maybe Proto.Temporal.Api.Compute.V1.Config.ComputeConfigSummary)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.computeStatus' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary ComputeStatus@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'computeStatus' @:: Lens' WorkerDeploymentInfo'WorkerDeploymentVersionSummary (Prelude.Maybe ComputeStatus)@ -}
data WorkerDeploymentInfo'WorkerDeploymentVersionSummary
  = WorkerDeploymentInfo'WorkerDeploymentVersionSummary'_constructor {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'version :: !Data.Text.Text,
                                                                      _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'status :: !Proto.Temporal.Api.Enums.V1.Deployment.WorkerDeploymentVersionStatus,
                                                                      _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'deploymentVersion :: !(Prelude.Maybe WorkerDeploymentVersion),
                                                                      _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'createTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                                      _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'drainageStatus :: !Proto.Temporal.Api.Enums.V1.Deployment.VersionDrainageStatus,
                                                                      _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'drainageInfo :: !(Prelude.Maybe VersionDrainageInfo),
                                                                      _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'currentSinceTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                                      _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'rampingSinceTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                                      _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'routingUpdateTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                                      _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'firstActivationTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                                      _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'lastCurrentTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                                      _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'lastDeactivationTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                                      _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'computeConfig :: !(Prelude.Maybe Proto.Temporal.Api.Compute.V1.Config.ComputeConfigSummary),
                                                                      _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'computeStatus :: !(Prelude.Maybe ComputeStatus),
                                                                      _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkerDeploymentInfo'WorkerDeploymentVersionSummary where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "version" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'version
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "status" Proto.Temporal.Api.Enums.V1.Deployment.WorkerDeploymentVersionStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'status
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "deploymentVersion" WorkerDeploymentVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'deploymentVersion
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'deploymentVersion = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "maybe'deploymentVersion" (Prelude.Maybe WorkerDeploymentVersion) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'deploymentVersion
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'deploymentVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "createTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'createTime
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'createTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "maybe'createTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'createTime
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'createTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "drainageStatus" Proto.Temporal.Api.Enums.V1.Deployment.VersionDrainageStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'drainageStatus
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'drainageStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "drainageInfo" VersionDrainageInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'drainageInfo
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'drainageInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "maybe'drainageInfo" (Prelude.Maybe VersionDrainageInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'drainageInfo
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'drainageInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "currentSinceTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'currentSinceTime
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'currentSinceTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "maybe'currentSinceTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'currentSinceTime
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'currentSinceTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "rampingSinceTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'rampingSinceTime
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'rampingSinceTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "maybe'rampingSinceTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'rampingSinceTime
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'rampingSinceTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "routingUpdateTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'routingUpdateTime
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'routingUpdateTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "maybe'routingUpdateTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'routingUpdateTime
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'routingUpdateTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "firstActivationTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'firstActivationTime
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'firstActivationTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "maybe'firstActivationTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'firstActivationTime
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'firstActivationTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "lastCurrentTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'lastCurrentTime
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'lastCurrentTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "maybe'lastCurrentTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'lastCurrentTime
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'lastCurrentTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "lastDeactivationTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'lastDeactivationTime
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'lastDeactivationTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "maybe'lastDeactivationTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'lastDeactivationTime
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'lastDeactivationTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "computeConfig" Proto.Temporal.Api.Compute.V1.Config.ComputeConfigSummary where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'computeConfig
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'computeConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "maybe'computeConfig" (Prelude.Maybe Proto.Temporal.Api.Compute.V1.Config.ComputeConfigSummary) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'computeConfig
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'computeConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "computeStatus" ComputeStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'computeStatus
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'computeStatus = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentInfo'WorkerDeploymentVersionSummary "maybe'computeStatus" (Prelude.Maybe ComputeStatus) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'computeStatus
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'computeStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkerDeploymentInfo'WorkerDeploymentVersionSummary where
  messageName _
    = Data.Text.pack
        "temporal.api.deployment.v1.WorkerDeploymentInfo.WorkerDeploymentVersionSummary"
  packedMessageDescriptor _
    = "\n\
      \\RSWorkerDeploymentVersionSummary\DC2\FS\n\
      \\aversion\CAN\SOH \SOH(\tR\aversionB\STX\CAN\SOH\DC2L\n\
      \\ACKstatus\CAN\v \SOH(\SO24.temporal.api.enums.v1.WorkerDeploymentVersionStatusR\ACKstatus\DC2b\n\
      \\DC2deployment_version\CAN\EOT \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\DC1deploymentVersion\DC2;\n\
      \\vcreate_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \createTime\DC2U\n\
      \\SIdrainage_status\CAN\ETX \SOH(\SO2,.temporal.api.enums.v1.VersionDrainageStatusR\SOdrainageStatus\DC2T\n\
      \\rdrainage_info\CAN\ENQ \SOH(\v2/.temporal.api.deployment.v1.VersionDrainageInfoR\fdrainageInfo\DC2H\n\
      \\DC2current_since_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\DLEcurrentSinceTime\DC2H\n\
      \\DC2ramping_since_time\CAN\a \SOH(\v2\SUB.google.protobuf.TimestampR\DLErampingSinceTime\DC2J\n\
      \\DC3routing_update_time\CAN\b \SOH(\v2\SUB.google.protobuf.TimestampR\DC1routingUpdateTime\DC2N\n\
      \\NAKfirst_activation_time\CAN\t \SOH(\v2\SUB.google.protobuf.TimestampR\DC3firstActivationTime\DC2F\n\
      \\DC1last_current_time\CAN\f \SOH(\v2\SUB.google.protobuf.TimestampR\SIlastCurrentTime\DC2P\n\
      \\SYNlast_deactivation_time\CAN\n\
      \ \SOH(\v2\SUB.google.protobuf.TimestampR\DC4lastDeactivationTime\DC2T\n\
      \\SOcompute_config\CAN\r \SOH(\v2-.temporal.api.compute.v1.ComputeConfigSummaryR\rcomputeConfig\DC2P\n\
      \\SOcompute_status\CAN\SO \SOH(\v2).temporal.api.deployment.v1.ComputeStatusR\rcomputeStatus"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentInfo'WorkerDeploymentVersionSummary
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Deployment.WorkerDeploymentVersionStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentInfo'WorkerDeploymentVersionSummary
        deploymentVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deployment_version"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WorkerDeploymentVersion)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'deploymentVersion")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentInfo'WorkerDeploymentVersionSummary
        createTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "create_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'createTime")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentInfo'WorkerDeploymentVersionSummary
        drainageStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "drainage_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Deployment.VersionDrainageStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"drainageStatus")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentInfo'WorkerDeploymentVersionSummary
        drainageInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "drainage_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor VersionDrainageInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'drainageInfo")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentInfo'WorkerDeploymentVersionSummary
        currentSinceTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_since_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'currentSinceTime")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentInfo'WorkerDeploymentVersionSummary
        rampingSinceTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ramping_since_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rampingSinceTime")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentInfo'WorkerDeploymentVersionSummary
        routingUpdateTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "routing_update_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'routingUpdateTime")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentInfo'WorkerDeploymentVersionSummary
        firstActivationTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "first_activation_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'firstActivationTime")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentInfo'WorkerDeploymentVersionSummary
        lastCurrentTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_current_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastCurrentTime")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentInfo'WorkerDeploymentVersionSummary
        lastDeactivationTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_deactivation_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastDeactivationTime")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentInfo'WorkerDeploymentVersionSummary
        computeConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "compute_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Compute.V1.Config.ComputeConfigSummary)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'computeConfig")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentInfo'WorkerDeploymentVersionSummary
        computeStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "compute_status"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ComputeStatus)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'computeStatus")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentInfo'WorkerDeploymentVersionSummary
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, version__field_descriptor),
           (Data.ProtoLens.Tag 11, status__field_descriptor),
           (Data.ProtoLens.Tag 4, deploymentVersion__field_descriptor),
           (Data.ProtoLens.Tag 2, createTime__field_descriptor),
           (Data.ProtoLens.Tag 3, drainageStatus__field_descriptor),
           (Data.ProtoLens.Tag 5, drainageInfo__field_descriptor),
           (Data.ProtoLens.Tag 6, currentSinceTime__field_descriptor),
           (Data.ProtoLens.Tag 7, rampingSinceTime__field_descriptor),
           (Data.ProtoLens.Tag 8, routingUpdateTime__field_descriptor),
           (Data.ProtoLens.Tag 9, firstActivationTime__field_descriptor),
           (Data.ProtoLens.Tag 12, lastCurrentTime__field_descriptor),
           (Data.ProtoLens.Tag 10, lastDeactivationTime__field_descriptor),
           (Data.ProtoLens.Tag 13, computeConfig__field_descriptor),
           (Data.ProtoLens.Tag 14, computeStatus__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'_unknownFields
        (\ x__ y__
           -> x__
                {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'_unknownFields = y__})
  defMessage
    = WorkerDeploymentInfo'WorkerDeploymentVersionSummary'_constructor
        {_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'version = Data.ProtoLens.fieldDefault,
         _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'status = Data.ProtoLens.fieldDefault,
         _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'deploymentVersion = Prelude.Nothing,
         _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'createTime = Prelude.Nothing,
         _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'drainageStatus = Data.ProtoLens.fieldDefault,
         _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'drainageInfo = Prelude.Nothing,
         _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'currentSinceTime = Prelude.Nothing,
         _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'rampingSinceTime = Prelude.Nothing,
         _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'routingUpdateTime = Prelude.Nothing,
         _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'firstActivationTime = Prelude.Nothing,
         _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'lastCurrentTime = Prelude.Nothing,
         _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'lastDeactivationTime = Prelude.Nothing,
         _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'computeConfig = Prelude.Nothing,
         _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'computeStatus = Prelude.Nothing,
         _WorkerDeploymentInfo'WorkerDeploymentVersionSummary'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkerDeploymentInfo'WorkerDeploymentVersionSummary
          -> Data.ProtoLens.Encoding.Bytes.Parser WorkerDeploymentInfo'WorkerDeploymentVersionSummary
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
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "deployment_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"deploymentVersion") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "create_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"createTime") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "drainage_status"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"drainageStatus") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "drainage_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"drainageInfo") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "current_since_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"currentSinceTime") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ramping_since_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rampingSinceTime") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "routing_update_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"routingUpdateTime") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "first_activation_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"firstActivationTime") y x)
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_current_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastCurrentTime") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_deactivation_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastDeactivationTime") y x)
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "compute_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"computeConfig") y x)
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "compute_status"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"computeStatus") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "WorkerDeploymentVersionSummary"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'deploymentVersion") _x
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
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'createTime") _x
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
                                  (Data.ProtoLens.Field.field @"drainageStatus") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                                  ((Prelude..)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral)
                                     Prelude.fromEnum _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'drainageInfo") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                                      (Data.ProtoLens.Field.field @"maybe'currentSinceTime") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
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
                                         (Data.ProtoLens.Field.field @"maybe'rampingSinceTime") _x
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
                                            (Data.ProtoLens.Field.field @"maybe'routingUpdateTime")
                                            _x
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
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field
                                                  @"maybe'firstActivationTime")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'lastCurrentTime")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                                     ((Prelude..)
                                                        (\ bs
                                                           -> (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                        Data.ProtoLens.encodeMessage _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'lastDeactivationTime")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                        ((Prelude..)
                                                           (\ bs
                                                              -> (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      (Prelude.fromIntegral
                                                                         (Data.ByteString.length
                                                                            bs)))
                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                      bs))
                                                           Data.ProtoLens.encodeMessage _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'computeConfig")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              106)
                                                           ((Prelude..)
                                                              (\ bs
                                                                 -> (Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         (Prelude.fromIntegral
                                                                            (Data.ByteString.length
                                                                               bs)))
                                                                      (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                         bs))
                                                              Data.ProtoLens.encodeMessage _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'computeStatus")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 114)
                                                              ((Prelude..)
                                                                 (\ bs
                                                                    -> (Data.Monoid.<>)
                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                            (Prelude.fromIntegral
                                                                               (Data.ByteString.length
                                                                                  bs)))
                                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                            bs))
                                                                 Data.ProtoLens.encodeMessage _v))
                                                    (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                       (Lens.Family2.view
                                                          Data.ProtoLens.unknownFields
                                                          _x)))))))))))))))
instance Control.DeepSeq.NFData WorkerDeploymentInfo'WorkerDeploymentVersionSummary where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'version x__)
                (Control.DeepSeq.deepseq
                   (_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'status x__)
                   (Control.DeepSeq.deepseq
                      (_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'deploymentVersion
                         x__)
                      (Control.DeepSeq.deepseq
                         (_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'createTime
                            x__)
                         (Control.DeepSeq.deepseq
                            (_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'drainageStatus
                               x__)
                            (Control.DeepSeq.deepseq
                               (_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'drainageInfo
                                  x__)
                               (Control.DeepSeq.deepseq
                                  (_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'currentSinceTime
                                     x__)
                                  (Control.DeepSeq.deepseq
                                     (_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'rampingSinceTime
                                        x__)
                                     (Control.DeepSeq.deepseq
                                        (_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'routingUpdateTime
                                           x__)
                                        (Control.DeepSeq.deepseq
                                           (_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'firstActivationTime
                                              x__)
                                           (Control.DeepSeq.deepseq
                                              (_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'lastCurrentTime
                                                 x__)
                                              (Control.DeepSeq.deepseq
                                                 (_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'lastDeactivationTime
                                                    x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'computeConfig
                                                       x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_WorkerDeploymentInfo'WorkerDeploymentVersionSummary'computeStatus
                                                          x__)
                                                       ()))))))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.deploymentName' @:: Lens' WorkerDeploymentOptions Data.Text.Text@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.buildId' @:: Lens' WorkerDeploymentOptions Data.Text.Text@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.workerVersioningMode' @:: Lens' WorkerDeploymentOptions Proto.Temporal.Api.Enums.V1.Deployment.WorkerVersioningMode@ -}
data WorkerDeploymentOptions
  = WorkerDeploymentOptions'_constructor {_WorkerDeploymentOptions'deploymentName :: !Data.Text.Text,
                                          _WorkerDeploymentOptions'buildId :: !Data.Text.Text,
                                          _WorkerDeploymentOptions'workerVersioningMode :: !Proto.Temporal.Api.Enums.V1.Deployment.WorkerVersioningMode,
                                          _WorkerDeploymentOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkerDeploymentOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkerDeploymentOptions "deploymentName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentOptions'deploymentName
           (\ x__ y__ -> x__ {_WorkerDeploymentOptions'deploymentName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentOptions "buildId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentOptions'buildId
           (\ x__ y__ -> x__ {_WorkerDeploymentOptions'buildId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentOptions "workerVersioningMode" Proto.Temporal.Api.Enums.V1.Deployment.WorkerVersioningMode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentOptions'workerVersioningMode
           (\ x__ y__
              -> x__ {_WorkerDeploymentOptions'workerVersioningMode = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkerDeploymentOptions where
  messageName _
    = Data.Text.pack
        "temporal.api.deployment.v1.WorkerDeploymentOptions"
  packedMessageDescriptor _
    = "\n\
      \\ETBWorkerDeploymentOptions\DC2'\n\
      \\SIdeployment_name\CAN\SOH \SOH(\tR\SOdeploymentName\DC2\EM\n\
      \\bbuild_id\CAN\STX \SOH(\tR\abuildId\DC2a\n\
      \\SYNworker_versioning_mode\CAN\ETX \SOH(\SO2+.temporal.api.enums.v1.WorkerVersioningModeR\DC4workerVersioningMode"
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
              Data.ProtoLens.FieldDescriptor WorkerDeploymentOptions
        buildId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "build_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"buildId")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentOptions
        workerVersioningMode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "worker_versioning_mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Deployment.WorkerVersioningMode)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workerVersioningMode")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, deploymentName__field_descriptor),
           (Data.ProtoLens.Tag 2, buildId__field_descriptor),
           (Data.ProtoLens.Tag 3, workerVersioningMode__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkerDeploymentOptions'_unknownFields
        (\ x__ y__ -> x__ {_WorkerDeploymentOptions'_unknownFields = y__})
  defMessage
    = WorkerDeploymentOptions'_constructor
        {_WorkerDeploymentOptions'deploymentName = Data.ProtoLens.fieldDefault,
         _WorkerDeploymentOptions'buildId = Data.ProtoLens.fieldDefault,
         _WorkerDeploymentOptions'workerVersioningMode = Data.ProtoLens.fieldDefault,
         _WorkerDeploymentOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkerDeploymentOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser WorkerDeploymentOptions
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
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "worker_versioning_mode"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workerVersioningMode") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WorkerDeploymentOptions"
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
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"workerVersioningMode") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData WorkerDeploymentOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkerDeploymentOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WorkerDeploymentOptions'deploymentName x__)
                (Control.DeepSeq.deepseq
                   (_WorkerDeploymentOptions'buildId x__)
                   (Control.DeepSeq.deepseq
                      (_WorkerDeploymentOptions'workerVersioningMode x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.buildId' @:: Lens' WorkerDeploymentVersion Data.Text.Text@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.deploymentName' @:: Lens' WorkerDeploymentVersion Data.Text.Text@ -}
data WorkerDeploymentVersion
  = WorkerDeploymentVersion'_constructor {_WorkerDeploymentVersion'buildId :: !Data.Text.Text,
                                          _WorkerDeploymentVersion'deploymentName :: !Data.Text.Text,
                                          _WorkerDeploymentVersion'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkerDeploymentVersion where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersion "buildId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersion'buildId
           (\ x__ y__ -> x__ {_WorkerDeploymentVersion'buildId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersion "deploymentName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersion'deploymentName
           (\ x__ y__ -> x__ {_WorkerDeploymentVersion'deploymentName = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkerDeploymentVersion where
  messageName _
    = Data.Text.pack
        "temporal.api.deployment.v1.WorkerDeploymentVersion"
  packedMessageDescriptor _
    = "\n\
      \\ETBWorkerDeploymentVersion\DC2\EM\n\
      \\bbuild_id\CAN\SOH \SOH(\tR\abuildId\DC2'\n\
      \\SIdeployment_name\CAN\STX \SOH(\tR\SOdeploymentName"
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
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersion
        deploymentName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deployment_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"deploymentName")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersion
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, buildId__field_descriptor),
           (Data.ProtoLens.Tag 2, deploymentName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkerDeploymentVersion'_unknownFields
        (\ x__ y__ -> x__ {_WorkerDeploymentVersion'_unknownFields = y__})
  defMessage
    = WorkerDeploymentVersion'_constructor
        {_WorkerDeploymentVersion'buildId = Data.ProtoLens.fieldDefault,
         _WorkerDeploymentVersion'deploymentName = Data.ProtoLens.fieldDefault,
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
                                       "build_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"buildId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "deployment_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"deploymentName") y x)
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
                         (Data.ProtoLens.Field.field @"deploymentName") _x
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
                (_WorkerDeploymentVersion'buildId x__)
                (Control.DeepSeq.deepseq
                   (_WorkerDeploymentVersion'deploymentName x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.version' @:: Lens' WorkerDeploymentVersionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.status' @:: Lens' WorkerDeploymentVersionInfo Proto.Temporal.Api.Enums.V1.Deployment.WorkerDeploymentVersionStatus@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.deploymentVersion' @:: Lens' WorkerDeploymentVersionInfo WorkerDeploymentVersion@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'deploymentVersion' @:: Lens' WorkerDeploymentVersionInfo (Prelude.Maybe WorkerDeploymentVersion)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.deploymentName' @:: Lens' WorkerDeploymentVersionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.createTime' @:: Lens' WorkerDeploymentVersionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'createTime' @:: Lens' WorkerDeploymentVersionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.routingChangedTime' @:: Lens' WorkerDeploymentVersionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'routingChangedTime' @:: Lens' WorkerDeploymentVersionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.currentSinceTime' @:: Lens' WorkerDeploymentVersionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'currentSinceTime' @:: Lens' WorkerDeploymentVersionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.rampingSinceTime' @:: Lens' WorkerDeploymentVersionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'rampingSinceTime' @:: Lens' WorkerDeploymentVersionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.firstActivationTime' @:: Lens' WorkerDeploymentVersionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'firstActivationTime' @:: Lens' WorkerDeploymentVersionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.lastCurrentTime' @:: Lens' WorkerDeploymentVersionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'lastCurrentTime' @:: Lens' WorkerDeploymentVersionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.lastDeactivationTime' @:: Lens' WorkerDeploymentVersionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'lastDeactivationTime' @:: Lens' WorkerDeploymentVersionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.rampPercentage' @:: Lens' WorkerDeploymentVersionInfo Prelude.Float@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.taskQueueInfos' @:: Lens' WorkerDeploymentVersionInfo [WorkerDeploymentVersionInfo'VersionTaskQueueInfo]@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.vec'taskQueueInfos' @:: Lens' WorkerDeploymentVersionInfo (Data.Vector.Vector WorkerDeploymentVersionInfo'VersionTaskQueueInfo)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.drainageInfo' @:: Lens' WorkerDeploymentVersionInfo VersionDrainageInfo@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'drainageInfo' @:: Lens' WorkerDeploymentVersionInfo (Prelude.Maybe VersionDrainageInfo)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.metadata' @:: Lens' WorkerDeploymentVersionInfo VersionMetadata@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'metadata' @:: Lens' WorkerDeploymentVersionInfo (Prelude.Maybe VersionMetadata)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.computeConfig' @:: Lens' WorkerDeploymentVersionInfo Proto.Temporal.Api.Compute.V1.Config.ComputeConfig@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.maybe'computeConfig' @:: Lens' WorkerDeploymentVersionInfo (Prelude.Maybe Proto.Temporal.Api.Compute.V1.Config.ComputeConfig)@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.lastModifierIdentity' @:: Lens' WorkerDeploymentVersionInfo Data.Text.Text@ -}
data WorkerDeploymentVersionInfo
  = WorkerDeploymentVersionInfo'_constructor {_WorkerDeploymentVersionInfo'version :: !Data.Text.Text,
                                              _WorkerDeploymentVersionInfo'status :: !Proto.Temporal.Api.Enums.V1.Deployment.WorkerDeploymentVersionStatus,
                                              _WorkerDeploymentVersionInfo'deploymentVersion :: !(Prelude.Maybe WorkerDeploymentVersion),
                                              _WorkerDeploymentVersionInfo'deploymentName :: !Data.Text.Text,
                                              _WorkerDeploymentVersionInfo'createTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                              _WorkerDeploymentVersionInfo'routingChangedTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                              _WorkerDeploymentVersionInfo'currentSinceTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                              _WorkerDeploymentVersionInfo'rampingSinceTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                              _WorkerDeploymentVersionInfo'firstActivationTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                              _WorkerDeploymentVersionInfo'lastCurrentTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                              _WorkerDeploymentVersionInfo'lastDeactivationTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                              _WorkerDeploymentVersionInfo'rampPercentage :: !Prelude.Float,
                                              _WorkerDeploymentVersionInfo'taskQueueInfos :: !(Data.Vector.Vector WorkerDeploymentVersionInfo'VersionTaskQueueInfo),
                                              _WorkerDeploymentVersionInfo'drainageInfo :: !(Prelude.Maybe VersionDrainageInfo),
                                              _WorkerDeploymentVersionInfo'metadata :: !(Prelude.Maybe VersionMetadata),
                                              _WorkerDeploymentVersionInfo'computeConfig :: !(Prelude.Maybe Proto.Temporal.Api.Compute.V1.Config.ComputeConfig),
                                              _WorkerDeploymentVersionInfo'lastModifierIdentity :: !Data.Text.Text,
                                              _WorkerDeploymentVersionInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkerDeploymentVersionInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "version" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'version
           (\ x__ y__ -> x__ {_WorkerDeploymentVersionInfo'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "status" Proto.Temporal.Api.Enums.V1.Deployment.WorkerDeploymentVersionStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'status
           (\ x__ y__ -> x__ {_WorkerDeploymentVersionInfo'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "deploymentVersion" WorkerDeploymentVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'deploymentVersion
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'deploymentVersion = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "maybe'deploymentVersion" (Prelude.Maybe WorkerDeploymentVersion) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'deploymentVersion
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'deploymentVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "deploymentName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'deploymentName
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'deploymentName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "createTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'createTime
           (\ x__ y__ -> x__ {_WorkerDeploymentVersionInfo'createTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "maybe'createTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'createTime
           (\ x__ y__ -> x__ {_WorkerDeploymentVersionInfo'createTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "routingChangedTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'routingChangedTime
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'routingChangedTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "maybe'routingChangedTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'routingChangedTime
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'routingChangedTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "currentSinceTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'currentSinceTime
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'currentSinceTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "maybe'currentSinceTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'currentSinceTime
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'currentSinceTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "rampingSinceTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'rampingSinceTime
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'rampingSinceTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "maybe'rampingSinceTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'rampingSinceTime
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'rampingSinceTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "firstActivationTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'firstActivationTime
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'firstActivationTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "maybe'firstActivationTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'firstActivationTime
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'firstActivationTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "lastCurrentTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'lastCurrentTime
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'lastCurrentTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "maybe'lastCurrentTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'lastCurrentTime
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'lastCurrentTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "lastDeactivationTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'lastDeactivationTime
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'lastDeactivationTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "maybe'lastDeactivationTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'lastDeactivationTime
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'lastDeactivationTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "rampPercentage" Prelude.Float where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'rampPercentage
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'rampPercentage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "taskQueueInfos" [WorkerDeploymentVersionInfo'VersionTaskQueueInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'taskQueueInfos
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'taskQueueInfos = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "vec'taskQueueInfos" (Data.Vector.Vector WorkerDeploymentVersionInfo'VersionTaskQueueInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'taskQueueInfos
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'taskQueueInfos = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "drainageInfo" VersionDrainageInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'drainageInfo
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'drainageInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "maybe'drainageInfo" (Prelude.Maybe VersionDrainageInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'drainageInfo
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'drainageInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "metadata" VersionMetadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'metadata
           (\ x__ y__ -> x__ {_WorkerDeploymentVersionInfo'metadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "maybe'metadata" (Prelude.Maybe VersionMetadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'metadata
           (\ x__ y__ -> x__ {_WorkerDeploymentVersionInfo'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "computeConfig" Proto.Temporal.Api.Compute.V1.Config.ComputeConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'computeConfig
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'computeConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "maybe'computeConfig" (Prelude.Maybe Proto.Temporal.Api.Compute.V1.Config.ComputeConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'computeConfig
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'computeConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo "lastModifierIdentity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'lastModifierIdentity
           (\ x__ y__
              -> x__ {_WorkerDeploymentVersionInfo'lastModifierIdentity = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkerDeploymentVersionInfo where
  messageName _
    = Data.Text.pack
        "temporal.api.deployment.v1.WorkerDeploymentVersionInfo"
  packedMessageDescriptor _
    = "\n\
      \\ESCWorkerDeploymentVersionInfo\DC2\FS\n\
      \\aversion\CAN\SOH \SOH(\tR\aversionB\STX\CAN\SOH\DC2L\n\
      \\ACKstatus\CAN\SO \SOH(\SO24.temporal.api.enums.v1.WorkerDeploymentVersionStatusR\ACKstatus\DC2b\n\
      \\DC2deployment_version\CAN\v \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\DC1deploymentVersion\DC2'\n\
      \\SIdeployment_name\CAN\STX \SOH(\tR\SOdeploymentName\DC2;\n\
      \\vcreate_time\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \createTime\DC2L\n\
      \\DC4routing_changed_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\DC2routingChangedTime\DC2H\n\
      \\DC2current_since_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\DLEcurrentSinceTime\DC2H\n\
      \\DC2ramping_since_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\DLErampingSinceTime\DC2N\n\
      \\NAKfirst_activation_time\CAN\f \SOH(\v2\SUB.google.protobuf.TimestampR\DC3firstActivationTime\DC2F\n\
      \\DC1last_current_time\CAN\SI \SOH(\v2\SUB.google.protobuf.TimestampR\SIlastCurrentTime\DC2P\n\
      \\SYNlast_deactivation_time\CAN\r \SOH(\v2\SUB.google.protobuf.TimestampR\DC4lastDeactivationTime\DC2'\n\
      \\SIramp_percentage\CAN\a \SOH(\STXR\SOrampPercentage\DC2v\n\
      \\DLEtask_queue_infos\CAN\b \ETX(\v2L.temporal.api.deployment.v1.WorkerDeploymentVersionInfo.VersionTaskQueueInfoR\SOtaskQueueInfos\DC2T\n\
      \\rdrainage_info\CAN\t \SOH(\v2/.temporal.api.deployment.v1.VersionDrainageInfoR\fdrainageInfo\DC2G\n\
      \\bmetadata\CAN\n\
      \ \SOH(\v2+.temporal.api.deployment.v1.VersionMetadataR\bmetadata\DC2M\n\
      \\SOcompute_config\CAN\DLE \SOH(\v2&.temporal.api.compute.v1.ComputeConfigR\rcomputeConfig\DC24\n\
      \\SYNlast_modifier_identity\CAN\DC1 \SOH(\tR\DC4lastModifierIdentity\SUBd\n\
      \\DC4VersionTaskQueueInfo\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC28\n\
      \\EOTtype\CAN\STX \SOH(\SO2$.temporal.api.enums.v1.TaskQueueTypeR\EOTtype"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersionInfo
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Deployment.WorkerDeploymentVersionStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersionInfo
        deploymentVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deployment_version"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WorkerDeploymentVersion)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'deploymentVersion")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersionInfo
        deploymentName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deployment_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"deploymentName")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersionInfo
        createTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "create_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'createTime")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersionInfo
        routingChangedTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "routing_changed_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'routingChangedTime")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersionInfo
        currentSinceTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_since_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'currentSinceTime")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersionInfo
        rampingSinceTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ramping_since_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rampingSinceTime")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersionInfo
        firstActivationTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "first_activation_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'firstActivationTime")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersionInfo
        lastCurrentTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_current_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastCurrentTime")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersionInfo
        lastDeactivationTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_deactivation_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastDeactivationTime")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersionInfo
        rampPercentage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ramp_percentage"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rampPercentage")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersionInfo
        taskQueueInfos__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue_infos"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WorkerDeploymentVersionInfo'VersionTaskQueueInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"taskQueueInfos")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersionInfo
        drainageInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "drainage_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor VersionDrainageInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'drainageInfo")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersionInfo
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor VersionMetadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadata")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersionInfo
        computeConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "compute_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Compute.V1.Config.ComputeConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'computeConfig")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersionInfo
        lastModifierIdentity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_modifier_identity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lastModifierIdentity")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersionInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, version__field_descriptor),
           (Data.ProtoLens.Tag 14, status__field_descriptor),
           (Data.ProtoLens.Tag 11, deploymentVersion__field_descriptor),
           (Data.ProtoLens.Tag 2, deploymentName__field_descriptor),
           (Data.ProtoLens.Tag 3, createTime__field_descriptor),
           (Data.ProtoLens.Tag 4, routingChangedTime__field_descriptor),
           (Data.ProtoLens.Tag 5, currentSinceTime__field_descriptor),
           (Data.ProtoLens.Tag 6, rampingSinceTime__field_descriptor),
           (Data.ProtoLens.Tag 12, firstActivationTime__field_descriptor),
           (Data.ProtoLens.Tag 15, lastCurrentTime__field_descriptor),
           (Data.ProtoLens.Tag 13, lastDeactivationTime__field_descriptor),
           (Data.ProtoLens.Tag 7, rampPercentage__field_descriptor),
           (Data.ProtoLens.Tag 8, taskQueueInfos__field_descriptor),
           (Data.ProtoLens.Tag 9, drainageInfo__field_descriptor),
           (Data.ProtoLens.Tag 10, metadata__field_descriptor),
           (Data.ProtoLens.Tag 16, computeConfig__field_descriptor),
           (Data.ProtoLens.Tag 17, lastModifierIdentity__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkerDeploymentVersionInfo'_unknownFields
        (\ x__ y__
           -> x__ {_WorkerDeploymentVersionInfo'_unknownFields = y__})
  defMessage
    = WorkerDeploymentVersionInfo'_constructor
        {_WorkerDeploymentVersionInfo'version = Data.ProtoLens.fieldDefault,
         _WorkerDeploymentVersionInfo'status = Data.ProtoLens.fieldDefault,
         _WorkerDeploymentVersionInfo'deploymentVersion = Prelude.Nothing,
         _WorkerDeploymentVersionInfo'deploymentName = Data.ProtoLens.fieldDefault,
         _WorkerDeploymentVersionInfo'createTime = Prelude.Nothing,
         _WorkerDeploymentVersionInfo'routingChangedTime = Prelude.Nothing,
         _WorkerDeploymentVersionInfo'currentSinceTime = Prelude.Nothing,
         _WorkerDeploymentVersionInfo'rampingSinceTime = Prelude.Nothing,
         _WorkerDeploymentVersionInfo'firstActivationTime = Prelude.Nothing,
         _WorkerDeploymentVersionInfo'lastCurrentTime = Prelude.Nothing,
         _WorkerDeploymentVersionInfo'lastDeactivationTime = Prelude.Nothing,
         _WorkerDeploymentVersionInfo'rampPercentage = Data.ProtoLens.fieldDefault,
         _WorkerDeploymentVersionInfo'taskQueueInfos = Data.Vector.Generic.empty,
         _WorkerDeploymentVersionInfo'drainageInfo = Prelude.Nothing,
         _WorkerDeploymentVersionInfo'metadata = Prelude.Nothing,
         _WorkerDeploymentVersionInfo'computeConfig = Prelude.Nothing,
         _WorkerDeploymentVersionInfo'lastModifierIdentity = Data.ProtoLens.fieldDefault,
         _WorkerDeploymentVersionInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkerDeploymentVersionInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld WorkerDeploymentVersionInfo'VersionTaskQueueInfo
             -> Data.ProtoLens.Encoding.Bytes.Parser WorkerDeploymentVersionInfo
        loop x mutable'taskQueueInfos
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'taskQueueInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'taskQueueInfos)
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
                              (Data.ProtoLens.Field.field @"vec'taskQueueInfos")
                              frozen'taskQueueInfos x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "version"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                                  mutable'taskQueueInfos
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                                  mutable'taskQueueInfos
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "deployment_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"deploymentVersion") y x)
                                  mutable'taskQueueInfos
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "deployment_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"deploymentName") y x)
                                  mutable'taskQueueInfos
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "create_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"createTime") y x)
                                  mutable'taskQueueInfos
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "routing_changed_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"routingChangedTime") y x)
                                  mutable'taskQueueInfos
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "current_since_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"currentSinceTime") y x)
                                  mutable'taskQueueInfos
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ramping_since_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rampingSinceTime") y x)
                                  mutable'taskQueueInfos
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "first_activation_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"firstActivationTime") y x)
                                  mutable'taskQueueInfos
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_current_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastCurrentTime") y x)
                                  mutable'taskQueueInfos
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_deactivation_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastDeactivationTime") y x)
                                  mutable'taskQueueInfos
                        61
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToFloat
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "ramp_percentage"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rampPercentage") y x)
                                  mutable'taskQueueInfos
                        66
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "task_queue_infos"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'taskQueueInfos y)
                                loop x v
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "drainage_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"drainageInfo") y x)
                                  mutable'taskQueueInfos
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                                  mutable'taskQueueInfos
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "compute_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"computeConfig") y x)
                                  mutable'taskQueueInfos
                        138
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "last_modifier_identity"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastModifierIdentity") y x)
                                  mutable'taskQueueInfos
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'taskQueueInfos
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'taskQueueInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'taskQueueInfos)
          "WorkerDeploymentVersionInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 112)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'deploymentVersion") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
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
                               (Data.ProtoLens.Field.field @"deploymentName") _x
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
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'routingChangedTime") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
                                      (Data.ProtoLens.Field.field @"maybe'currentSinceTime") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                                         (Data.ProtoLens.Field.field @"maybe'rampingSinceTime") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
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
                                            (Data.ProtoLens.Field.field
                                               @"maybe'firstActivationTime")
                                            _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'lastCurrentTime")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 122)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'lastDeactivationTime")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 106)
                                                     ((Prelude..)
                                                        (\ bs
                                                           -> (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                        Data.ProtoLens.encodeMessage _v))
                                           ((Data.Monoid.<>)
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"rampPercentage")
                                                       _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 61)
                                                       ((Prelude..)
                                                          Data.ProtoLens.Encoding.Bytes.putFixed32
                                                          Data.ProtoLens.Encoding.Bytes.floatToWord
                                                          _v))
                                              ((Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                    (\ _v
                                                       -> (Data.Monoid.<>)
                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                               66)
                                                            ((Prelude..)
                                                               (\ bs
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          (Prelude.fromIntegral
                                                                             (Data.ByteString.length
                                                                                bs)))
                                                                       (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                          bs))
                                                               Data.ProtoLens.encodeMessage _v))
                                                    (Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"vec'taskQueueInfos")
                                                       _x))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'drainageInfo")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 74)
                                                              ((Prelude..)
                                                                 (\ bs
                                                                    -> (Data.Monoid.<>)
                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                            (Prelude.fromIntegral
                                                                               (Data.ByteString.length
                                                                                  bs)))
                                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                            bs))
                                                                 Data.ProtoLens.encodeMessage _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'metadata")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    82)
                                                                 ((Prelude..)
                                                                    (\ bs
                                                                       -> (Data.Monoid.<>)
                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                               (Prelude.fromIntegral
                                                                                  (Data.ByteString.length
                                                                                     bs)))
                                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                               bs))
                                                                    Data.ProtoLens.encodeMessage
                                                                    _v))
                                                       ((Data.Monoid.<>)
                                                          (case
                                                               Lens.Family2.view
                                                                 (Data.ProtoLens.Field.field
                                                                    @"maybe'computeConfig")
                                                                 _x
                                                           of
                                                             Prelude.Nothing -> Data.Monoid.mempty
                                                             (Prelude.Just _v)
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       130)
                                                                    ((Prelude..)
                                                                       (\ bs
                                                                          -> (Data.Monoid.<>)
                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                  (Prelude.fromIntegral
                                                                                     (Data.ByteString.length
                                                                                        bs)))
                                                                               (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                  bs))
                                                                       Data.ProtoLens.encodeMessage
                                                                       _v))
                                                          ((Data.Monoid.<>)
                                                             (let
                                                                _v
                                                                  = Lens.Family2.view
                                                                      (Data.ProtoLens.Field.field
                                                                         @"lastModifierIdentity")
                                                                      _x
                                                              in
                                                                if (Prelude.==)
                                                                     _v
                                                                     Data.ProtoLens.fieldDefault then
                                                                    Data.Monoid.mempty
                                                                else
                                                                    (Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         138)
                                                                      ((Prelude..)
                                                                         (\ bs
                                                                            -> (Data.Monoid.<>)
                                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                    (Prelude.fromIntegral
                                                                                       (Data.ByteString.length
                                                                                          bs)))
                                                                                 (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                    bs))
                                                                         Data.Text.Encoding.encodeUtf8
                                                                         _v))
                                                             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                (Lens.Family2.view
                                                                   Data.ProtoLens.unknownFields
                                                                   _x))))))))))))))))))
instance Control.DeepSeq.NFData WorkerDeploymentVersionInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkerDeploymentVersionInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WorkerDeploymentVersionInfo'version x__)
                (Control.DeepSeq.deepseq
                   (_WorkerDeploymentVersionInfo'status x__)
                   (Control.DeepSeq.deepseq
                      (_WorkerDeploymentVersionInfo'deploymentVersion x__)
                      (Control.DeepSeq.deepseq
                         (_WorkerDeploymentVersionInfo'deploymentName x__)
                         (Control.DeepSeq.deepseq
                            (_WorkerDeploymentVersionInfo'createTime x__)
                            (Control.DeepSeq.deepseq
                               (_WorkerDeploymentVersionInfo'routingChangedTime x__)
                               (Control.DeepSeq.deepseq
                                  (_WorkerDeploymentVersionInfo'currentSinceTime x__)
                                  (Control.DeepSeq.deepseq
                                     (_WorkerDeploymentVersionInfo'rampingSinceTime x__)
                                     (Control.DeepSeq.deepseq
                                        (_WorkerDeploymentVersionInfo'firstActivationTime x__)
                                        (Control.DeepSeq.deepseq
                                           (_WorkerDeploymentVersionInfo'lastCurrentTime x__)
                                           (Control.DeepSeq.deepseq
                                              (_WorkerDeploymentVersionInfo'lastDeactivationTime
                                                 x__)
                                              (Control.DeepSeq.deepseq
                                                 (_WorkerDeploymentVersionInfo'rampPercentage x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_WorkerDeploymentVersionInfo'taskQueueInfos
                                                       x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_WorkerDeploymentVersionInfo'drainageInfo
                                                          x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_WorkerDeploymentVersionInfo'metadata
                                                             x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_WorkerDeploymentVersionInfo'computeConfig
                                                                x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_WorkerDeploymentVersionInfo'lastModifierIdentity
                                                                   x__)
                                                                ())))))))))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.name' @:: Lens' WorkerDeploymentVersionInfo'VersionTaskQueueInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Deployment.V1.Message_Fields.type'' @:: Lens' WorkerDeploymentVersionInfo'VersionTaskQueueInfo Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType@ -}
data WorkerDeploymentVersionInfo'VersionTaskQueueInfo
  = WorkerDeploymentVersionInfo'VersionTaskQueueInfo'_constructor {_WorkerDeploymentVersionInfo'VersionTaskQueueInfo'name :: !Data.Text.Text,
                                                                   _WorkerDeploymentVersionInfo'VersionTaskQueueInfo'type' :: !Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType,
                                                                   _WorkerDeploymentVersionInfo'VersionTaskQueueInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkerDeploymentVersionInfo'VersionTaskQueueInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo'VersionTaskQueueInfo "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'VersionTaskQueueInfo'name
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentVersionInfo'VersionTaskQueueInfo'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerDeploymentVersionInfo'VersionTaskQueueInfo "type'" Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerDeploymentVersionInfo'VersionTaskQueueInfo'type'
           (\ x__ y__
              -> x__
                   {_WorkerDeploymentVersionInfo'VersionTaskQueueInfo'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkerDeploymentVersionInfo'VersionTaskQueueInfo where
  messageName _
    = Data.Text.pack
        "temporal.api.deployment.v1.WorkerDeploymentVersionInfo.VersionTaskQueueInfo"
  packedMessageDescriptor _
    = "\n\
      \\DC4VersionTaskQueueInfo\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC28\n\
      \\EOTtype\CAN\STX \SOH(\SO2$.temporal.api.enums.v1.TaskQueueTypeR\EOTtype"
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
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersionInfo'VersionTaskQueueInfo
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor WorkerDeploymentVersionInfo'VersionTaskQueueInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, type'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkerDeploymentVersionInfo'VersionTaskQueueInfo'_unknownFields
        (\ x__ y__
           -> x__
                {_WorkerDeploymentVersionInfo'VersionTaskQueueInfo'_unknownFields = y__})
  defMessage
    = WorkerDeploymentVersionInfo'VersionTaskQueueInfo'_constructor
        {_WorkerDeploymentVersionInfo'VersionTaskQueueInfo'name = Data.ProtoLens.fieldDefault,
         _WorkerDeploymentVersionInfo'VersionTaskQueueInfo'type' = Data.ProtoLens.fieldDefault,
         _WorkerDeploymentVersionInfo'VersionTaskQueueInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkerDeploymentVersionInfo'VersionTaskQueueInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser WorkerDeploymentVersionInfo'VersionTaskQueueInfo
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
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "VersionTaskQueueInfo"
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
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
instance Control.DeepSeq.NFData WorkerDeploymentVersionInfo'VersionTaskQueueInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkerDeploymentVersionInfo'VersionTaskQueueInfo'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_WorkerDeploymentVersionInfo'VersionTaskQueueInfo'name x__)
                (Control.DeepSeq.deepseq
                   (_WorkerDeploymentVersionInfo'VersionTaskQueueInfo'type' x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \(temporal/api/deployment/v1/message.proto\DC2\SUBtemporal.api.deployment.v1\SUB\USgoogle/protobuf/timestamp.proto\SUB$temporal/api/enums/v1/workflow.proto\SUB&temporal/api/enums/v1/deployment.proto\SUB&temporal/api/enums/v1/task_queue.proto\SUB$temporal/api/common/v1/message.proto\SUB$temporal/api/compute/v1/config.proto\"\192\SOH\n\
    \\ETBWorkerDeploymentOptions\DC2'\n\
    \\SIdeployment_name\CAN\SOH \SOH(\tR\SOdeploymentName\DC2\EM\n\
    \\bbuild_id\CAN\STX \SOH(\tR\abuildId\DC2a\n\
    \\SYNworker_versioning_mode\CAN\ETX \SOH(\SO2+.temporal.api.enums.v1.WorkerVersioningModeR\DC4workerVersioningMode\"H\n\
    \\n\
    \Deployment\DC2\US\n\
    \\vseries_name\CAN\SOH \SOH(\tR\n\
    \seriesName\DC2\EM\n\
    \\bbuild_id\CAN\STX \SOH(\tR\abuildId\"\244\EOT\n\
    \\SODeploymentInfo\DC2F\n\
    \\n\
    \deployment\CAN\SOH \SOH(\v2&.temporal.api.deployment.v1.DeploymentR\n\
    \deployment\DC2;\n\
    \\vcreate_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \createTime\DC2b\n\
    \\DLEtask_queue_infos\CAN\ETX \ETX(\v28.temporal.api.deployment.v1.DeploymentInfo.TaskQueueInfoR\SOtaskQueueInfos\DC2T\n\
    \\bmetadata\CAN\EOT \ETX(\v28.temporal.api.deployment.v1.DeploymentInfo.MetadataEntryR\bmetadata\DC2\GS\n\
    \\n\
    \is_current\CAN\ENQ \SOH(\bR\tisCurrent\SUB\\\n\
    \\rMetadataEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
    \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH\SUB\165\SOH\n\
    \\rTaskQueueInfo\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC28\n\
    \\EOTtype\CAN\STX \SOH(\SO2$.temporal.api.enums.v1.TaskQueueTypeR\EOTtype\DC2F\n\
    \\DC1first_poller_time\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\SIfirstPollerTime\"\148\STX\n\
    \\CANUpdateDeploymentMetadata\DC2n\n\
    \\SOupsert_entries\CAN\SOH \ETX(\v2G.temporal.api.deployment.v1.UpdateDeploymentMetadata.UpsertEntriesEntryR\rupsertEntries\DC2%\n\
    \\SOremove_entries\CAN\STX \ETX(\tR\rremoveEntries\SUBa\n\
    \\DC2UpsertEntriesEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
    \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH\"\184\SOH\n\
    \\DC2DeploymentListInfo\DC2F\n\
    \\n\
    \deployment\CAN\SOH \SOH(\v2&.temporal.api.deployment.v1.DeploymentR\n\
    \deployment\DC2;\n\
    \\vcreate_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \createTime\DC2\GS\n\
    \\n\
    \is_current\CAN\ETX \SOH(\bR\tisCurrent\"\202\n\
    \\n\
    \\ESCWorkerDeploymentVersionInfo\DC2\FS\n\
    \\aversion\CAN\SOH \SOH(\tR\aversionB\STX\CAN\SOH\DC2L\n\
    \\ACKstatus\CAN\SO \SOH(\SO24.temporal.api.enums.v1.WorkerDeploymentVersionStatusR\ACKstatus\DC2b\n\
    \\DC2deployment_version\CAN\v \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\DC1deploymentVersion\DC2'\n\
    \\SIdeployment_name\CAN\STX \SOH(\tR\SOdeploymentName\DC2;\n\
    \\vcreate_time\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \createTime\DC2L\n\
    \\DC4routing_changed_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\DC2routingChangedTime\DC2H\n\
    \\DC2current_since_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\DLEcurrentSinceTime\DC2H\n\
    \\DC2ramping_since_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\DLErampingSinceTime\DC2N\n\
    \\NAKfirst_activation_time\CAN\f \SOH(\v2\SUB.google.protobuf.TimestampR\DC3firstActivationTime\DC2F\n\
    \\DC1last_current_time\CAN\SI \SOH(\v2\SUB.google.protobuf.TimestampR\SIlastCurrentTime\DC2P\n\
    \\SYNlast_deactivation_time\CAN\r \SOH(\v2\SUB.google.protobuf.TimestampR\DC4lastDeactivationTime\DC2'\n\
    \\SIramp_percentage\CAN\a \SOH(\STXR\SOrampPercentage\DC2v\n\
    \\DLEtask_queue_infos\CAN\b \ETX(\v2L.temporal.api.deployment.v1.WorkerDeploymentVersionInfo.VersionTaskQueueInfoR\SOtaskQueueInfos\DC2T\n\
    \\rdrainage_info\CAN\t \SOH(\v2/.temporal.api.deployment.v1.VersionDrainageInfoR\fdrainageInfo\DC2G\n\
    \\bmetadata\CAN\n\
    \ \SOH(\v2+.temporal.api.deployment.v1.VersionMetadataR\bmetadata\DC2M\n\
    \\SOcompute_config\CAN\DLE \SOH(\v2&.temporal.api.compute.v1.ComputeConfigR\rcomputeConfig\DC24\n\
    \\SYNlast_modifier_identity\CAN\DC1 \SOH(\tR\DC4lastModifierIdentity\SUBd\n\
    \\DC4VersionTaskQueueInfo\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC28\n\
    \\EOTtype\CAN\STX \SOH(\SO2$.temporal.api.enums.v1.TaskQueueTypeR\EOTtype\"\235\SOH\n\
    \\DC3VersionDrainageInfo\DC2D\n\
    \\ACKstatus\CAN\SOH \SOH(\SO2,.temporal.api.enums.v1.VersionDrainageStatusR\ACKstatus\DC2F\n\
    \\DC1last_changed_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\SIlastChangedTime\DC2F\n\
    \\DC1last_checked_time\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\SIlastCheckedTime\"\138\STX\n\
    \\rComputeStatus\DC2s\n\
    \\DC3provider_validation\CAN\SOH \SOH(\v2B.temporal.api.deployment.v1.ComputeStatus.ProviderValidationStatusR\DC2providerValidation\SUB\131\SOH\n\
    \\CANProviderValidationStatus\DC2#\n\
    \\rerror_message\CAN\SOH \SOH(\tR\ferrorMessage\DC2B\n\
    \\SIlast_check_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\rlastCheckTime\"\215\f\n\
    \\DC4WorkerDeploymentInfo\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2|\n\
    \\DC1version_summaries\CAN\STX \ETX(\v2O.temporal.api.deployment.v1.WorkerDeploymentInfo.WorkerDeploymentVersionSummaryR\DLEversionSummaries\DC2;\n\
    \\vcreate_time\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \createTime\DC2P\n\
    \\SOrouting_config\CAN\EOT \SOH(\v2).temporal.api.deployment.v1.RoutingConfigR\rroutingConfig\DC24\n\
    \\SYNlast_modifier_identity\CAN\ENQ \SOH(\tR\DC4lastModifierIdentity\DC2)\n\
    \\DLEmanager_identity\CAN\ACK \SOH(\tR\SImanagerIdentity\DC2n\n\
    \\ESCrouting_config_update_state\CAN\a \SOH(\SO2/.temporal.api.enums.v1.RoutingConfigUpdateStateR\CANroutingConfigUpdateState\SUB\204\b\n\
    \\RSWorkerDeploymentVersionSummary\DC2\FS\n\
    \\aversion\CAN\SOH \SOH(\tR\aversionB\STX\CAN\SOH\DC2L\n\
    \\ACKstatus\CAN\v \SOH(\SO24.temporal.api.enums.v1.WorkerDeploymentVersionStatusR\ACKstatus\DC2b\n\
    \\DC2deployment_version\CAN\EOT \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\DC1deploymentVersion\DC2;\n\
    \\vcreate_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \createTime\DC2U\n\
    \\SIdrainage_status\CAN\ETX \SOH(\SO2,.temporal.api.enums.v1.VersionDrainageStatusR\SOdrainageStatus\DC2T\n\
    \\rdrainage_info\CAN\ENQ \SOH(\v2/.temporal.api.deployment.v1.VersionDrainageInfoR\fdrainageInfo\DC2H\n\
    \\DC2current_since_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\DLEcurrentSinceTime\DC2H\n\
    \\DC2ramping_since_time\CAN\a \SOH(\v2\SUB.google.protobuf.TimestampR\DLErampingSinceTime\DC2J\n\
    \\DC3routing_update_time\CAN\b \SOH(\v2\SUB.google.protobuf.TimestampR\DC1routingUpdateTime\DC2N\n\
    \\NAKfirst_activation_time\CAN\t \SOH(\v2\SUB.google.protobuf.TimestampR\DC3firstActivationTime\DC2F\n\
    \\DC1last_current_time\CAN\f \SOH(\v2\SUB.google.protobuf.TimestampR\SIlastCurrentTime\DC2P\n\
    \\SYNlast_deactivation_time\CAN\n\
    \ \SOH(\v2\SUB.google.protobuf.TimestampR\DC4lastDeactivationTime\DC2T\n\
    \\SOcompute_config\CAN\r \SOH(\v2-.temporal.api.compute.v1.ComputeConfigSummaryR\rcomputeConfig\DC2P\n\
    \\SOcompute_status\CAN\SO \SOH(\v2).temporal.api.deployment.v1.ComputeStatusR\rcomputeStatus\"]\n\
    \\ETBWorkerDeploymentVersion\DC2\EM\n\
    \\bbuild_id\CAN\SOH \SOH(\tR\abuildId\DC2'\n\
    \\SIdeployment_name\CAN\STX \SOH(\tR\SOdeploymentName\"\194\SOH\n\
    \\SIVersionMetadata\DC2R\n\
    \\aentries\CAN\SOH \ETX(\v28.temporal.api.deployment.v1.VersionMetadata.EntriesEntryR\aentries\SUB[\n\
    \\fEntriesEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
    \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH\"\226\ENQ\n\
    \\rRoutingConfig\DC2q\n\
    \\SUBcurrent_deployment_version\CAN\a \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\CANcurrentDeploymentVersion\DC2+\n\
    \\SIcurrent_version\CAN\SOH \SOH(\tR\SOcurrentVersionB\STX\CAN\SOH\DC2q\n\
    \\SUBramping_deployment_version\CAN\t \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\CANrampingDeploymentVersion\DC2+\n\
    \\SIramping_version\CAN\STX \SOH(\tR\SOrampingVersionB\STX\CAN\SOH\DC2<\n\
    \\SUBramping_version_percentage\CAN\ETX \SOH(\STXR\CANrampingVersionPercentage\DC2[\n\
    \\FScurrent_version_changed_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\EMcurrentVersionChangedTime\DC2[\n\
    \\FSramping_version_changed_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\EMrampingVersionChangedTime\DC2p\n\
    \'ramping_version_percentage_changed_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR#rampingVersionPercentageChangedTime\DC2'\n\
    \\SIrevision_number\CAN\n\
    \ \SOH(\ETXR\SOrevisionNumber\"\236\STX\n\
    \\CANInheritedAutoUpgradeInfo\DC2o\n\
    \\EMsource_deployment_version\CAN\SOH \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\ETBsourceDeploymentVersion\DC2I\n\
    \!source_deployment_revision_number\CAN\STX \SOH(\ETXR\RSsourceDeploymentRevisionNumber\DC2\147\SOH\n\
    \+continue_as_new_initial_versioning_behavior\CAN\ETX \SOH(\SO26.temporal.api.enums.v1.ContinueAsNewVersioningBehaviorR&continueAsNewInitialVersioningBehaviorB\157\SOH\n\
    \\GSio.temporal.api.deployment.v1B\fMessageProtoP\SOHZ+go.temporal.io/api/deployment/v1;deployment\170\STX\FSTemporalio.Api.Deployment.V1\234\STX\USTemporalio::Api::Deployment::V1J\144\143\SOH\n\
    \\a\DC2\ENQ\NUL\NUL\225\STX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL#\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NULB\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\EOT\NULB\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NUL6\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\ENQ\NUL6\n\
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
    \\SOH\b\DC2\ETX\b\NUL8\n\
    \\t\n\
    \\STX\b-\DC2\ETX\b\NUL8\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL9\n\
    \\t\n\
    \\STX\b%\DC2\ETX\t\NUL9\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\v\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\r\NUL.\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\SO\NUL0\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\SI\NUL0\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\DLE\NUL.\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\DC1\NUL.\n\
    \`\n\
    \\STX\EOT\NUL\DC2\EOT\DC4\NUL\RS\SOH\SUBT Worker Deployment options set in SDK that need to be sent to server in every poll.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b\US\n\
    \A\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SYN\EOT\US\SUB4 Required when `worker_versioning_mode==VERSIONED`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SYN\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SYN\v\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SYN\GS\RS\n\
    \\159\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\EM\EOT\CAN\SUB\145\SOH The Build ID of the worker. Required when `worker_versioning_mode==VERSIONED`, in which case,\n\
    \ the worker will be part of a Deployment Version.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\EM\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\EM\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\EM\SYN\ETB\n\
    \\140\STX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\GS\EOTJ\SUB\254\SOH Required. Versioning Mode for this worker. Must be the same for all workers with the\n\
    \ same `deployment_name` and `build_id` combination, across all Task Queues.\n\
    \ When `worker_versioning_mode==VERSIONED`, the worker will be part of a Deployment Version.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\GS\EOT.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\GS/E\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\GSHI\n\
    \\255\SOH\n\
    \\STX\EOT\SOH\DC2\EOT$\NUL.\SOH\SUB\242\SOH `Deployment` identifies a deployment of Temporal workers. The combination of deployment series\n\
    \ name + build ID serves as the identifier. User can use `WorkerDeploymentOptions` in their worker\n\
    \ programs to specify these values.\n\
    \ Deprecated.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX$\b\DC2\n\
    \\214\STX\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX*\EOT\ESC\SUB\200\STX Different versions of the same worker service/application are related together by having a\n\
    \ shared series name.\n\
    \ Out of all deployments of a series, one can be designated as the current deployment, which\n\
    \ receives new workflow executions and new tasks of workflows with\n\
    \ `VERSIONING_BEHAVIOR_AUTO_UPGRADE` versioning behavior.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX*\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX*\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX*\EM\SUB\n\
    \t\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX-\EOT\CAN\SUBg Build ID changes with each version of the worker when the worker program code and/or config\n\
    \ changes.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX-\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX-\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX-\SYN\ETB\n\
    \\179\STX\n\
    \\STX\EOT\STX\DC2\EOT4\NULD\SOH\SUB\166\STX `DeploymentInfo` holds information about a deployment. Deployment information is tracked\n\
    \ automatically by server as soon as the first poll from that deployment reaches the server. There\n\
    \ can be multiple task queue workers in a single deployment which are listed in this message.\n\
    \ Deprecated.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX4\b\SYN\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX5\EOT\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX5\EOT\SO\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX5\SI\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX5\FS\GS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX6\EOT.\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX6\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX6\RS)\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX6,-\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX7\EOT0\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX7\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETX7\r\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX7\ESC+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX7./\n\
    \\144\SOH\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX:\EOT=\SUB\130\SOH A user-defined set of key-values. Can be updated as part of write operations to the\n\
    \ deployment, such as `SetCurrentDeployment`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\ETX:\EOT/\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX:08\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX:;<\n\
    \U\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX<\EOT\CAN\SUBH If this deployment is the current deployment of its deployment series.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETX<\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX<\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX<\SYN\ETB\n\
    \\f\n\
    \\EOT\EOT\STX\ETX\SOH\DC2\EOT>\EOTC\ENQ\n\
    \\f\n\
    \\ENQ\EOT\STX\ETX\SOH\SOH\DC2\ETX>\f\EM\n\
    \\r\n\
    \\ACK\EOT\STX\ETX\SOH\STX\NUL\DC2\ETX?\b\CAN\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\NUL\ENQ\DC2\ETX?\b\SO\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\NUL\SOH\DC2\ETX?\SI\DC3\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\NUL\ETX\DC2\ETX?\SYN\ETB\n\
    \\r\n\
    \\ACK\EOT\STX\ETX\SOH\STX\SOH\DC2\ETX@\b5\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\SOH\ACK\DC2\ETX@\b+\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\SOH\SOH\DC2\ETX@,0\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\SOH\ETX\DC2\ETX@34\n\
    \Y\n\
    \\ACK\EOT\STX\ETX\SOH\STX\STX\DC2\ETXB\b8\SUBJ When server saw the first poller for this task queue in this deployment.\n\
    \\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\STX\ACK\DC2\ETXB\b!\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\STX\SOH\DC2\ETXB\"3\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\STX\ETX\DC2\ETXB67\n\
    \m\n\
    \\STX\EOT\ETX\DC2\EOTH\NULL\SOH\SUBa Used as part of Deployment write APIs to update metadata attached to a deployment.\n\
    \ Deprecated.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXH\b \n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXI\EOTC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETXI\EOT/\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXI0>\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXIAB\n\
    \8\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXK\EOT'\SUB+ List of keys to remove from the metadata.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETXK\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETXK\r\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXK\DC4\"\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXK%&\n\
    \\134\SOH\n\
    \\STX\EOT\EOT\DC2\EOTQ\NULV\SOH\SUBz DeploymentListInfo is an abbreviated set of fields from DeploymentInfo that's returned in\n\
    \ ListDeployments.\n\
    \ Deprecated.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXQ\b\SUB\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXR\EOT,\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETXR\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXR\GS'\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXR*+\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXS\EOT.\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\ETXS\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXS\RS)\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXS,-\n\
    \U\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXU\EOT\CAN\SUBH If this deployment is the current deployment of its deployment series.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETXU\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXU\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXU\SYN\ETB\n\
    \\146\ETX\n\
    \\STX\EOT\ENQ\DC2\ENQ_\NUL\172\SOH\SOH\SUB\132\ETX A Worker Deployment Version (Version, for short) represents all workers of the same\n\
    \ code and config within a Deployment. Workers of the same Version are expected to\n\
    \ behave exactly the same so when executions move between them there are no\n\
    \ non-determinism issues.\n\
    \ Worker Deployment Versions are created in Temporal server automatically when\n\
    \ their first poller arrives to the server.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX_\b#\n\
    \4\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXa\EOT+\SUB' Deprecated. Use `deployment_version`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETXa\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXa\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXa\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\ETXa\ETB*\n\
    \\r\n\
    \\ACK\EOT\ENQ\STX\NUL\b\ETX\DC2\ETXa\CAN)\n\
    \;\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETXd\EOTD\SUB. The status of the Worker Deployment Version.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\ETXd\EOT7\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETXd8>\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETXdAC\n\
    \\CAN\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETXg\EOT4\SUB\v Required.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ACK\DC2\ETXg\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETXg\FS.\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETXg13\n\
    \C\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\ETXi\EOT\US\SUB6 Deprecated. User deployment_version.deployment_name.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ENQ\DC2\ETXi\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\ETXi\v\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\ETXi\GS\RS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\ETXj\EOT.\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ACK\DC2\ETXj\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\ETXj\RS)\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\ETXj,-\n\
    \q\n\
    \\EOT\EOT\ENQ\STX\ENQ\DC2\ETXm\EOT7\SUBd Last time `current_since_time`, `ramping_since_time, or `ramp_percentage` of this version changed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ACK\DC2\ETXm\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\SOH\DC2\ETXm\RS2\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ETX\DC2\ETXm56\n\
    \\186\SOH\n\
    \\EOT\EOT\ENQ\STX\ACK\DC2\ETXr\EOT5\SUB\172\SOH (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: 'Since' captures the field semantics despite being a preposition. --)\n\
    \ Unset if not current.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\ACK\DC2\ETXr\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\SOH\DC2\ETXr\RS0\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\ETX\DC2\ETXr34\n\
    \\130\STX\n\
    \\EOT\EOT\ENQ\STX\a\DC2\ETXw\EOT5\SUB\244\SOH (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: 'Since' captures the field semantics despite being a preposition. --)\n\
    \ Unset if not ramping. Updated when the version first starts ramping, not on each ramp change.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\a\ACK\DC2\ETXw\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\a\SOH\DC2\ETXw\RS0\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\a\ETX\DC2\ETXw34\n\
    \K\n\
    \\EOT\EOT\ENQ\STX\b\DC2\ETXz\EOT9\SUB> Timestamp when this version first became current or ramping.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\b\ACK\DC2\ETXz\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\b\SOH\DC2\ETXz\RS3\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\b\ETX\DC2\ETXz68\n\
    \\130\SOH\n\
    \\EOT\EOT\ENQ\STX\t\DC2\ETX~\EOT5\SUBu Timestamp when this version last became current.\n\
    \ Can be used to determine whether a version has ever been Current.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\t\ACK\DC2\ETX~\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\t\SOH\DC2\ETX~\RS/\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\t\ETX\DC2\ETX~24\n\
    \\140\SOH\n\
    \\EOT\EOT\ENQ\STX\n\
    \\DC2\EOT\130\SOH\EOT:\SUB~ Timestamp when this version last stopped being current or ramping.\n\
    \ Cleared if the version becomes current or ramping again.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\n\
    \\ACK\DC2\EOT\130\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\n\
    \\SOH\DC2\EOT\130\SOH\RS4\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\n\
    \\ETX\DC2\EOT\130\SOH79\n\
    \\169\SOH\n\
    \\EOT\EOT\ENQ\STX\v\DC2\EOT\134\SOH\EOT\RS\SUB\154\SOH Range: [0, 100]. Must be zero if the version is not ramping (i.e. `ramping_since_time` is nil).\n\
    \ Can be in the range [0, 100] if the version is ramping.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\v\ENQ\DC2\EOT\134\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\v\SOH\DC2\EOT\134\SOH\n\
    \\EM\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\v\ETX\DC2\EOT\134\SOH\FS\GS\n\
    \\179\SOH\n\
    \\EOT\EOT\ENQ\STX\f\DC2\EOT\138\SOH\EOT7\SUB\164\SOH All the Task Queues that have ever polled from this Deployment version.\n\
    \ Deprecated. Use `version_task_queues` in DescribeWorkerDeploymentVersionResponse instead.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\f\EOT\DC2\EOT\138\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\f\ACK\DC2\EOT\138\SOH\r!\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\f\SOH\DC2\EOT\138\SOH\"2\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\f\ETX\DC2\EOT\138\SOH56\n\
    \\SO\n\
    \\EOT\EOT\ENQ\ETX\NUL\DC2\ACK\139\SOH\EOT\142\SOH\ENQ\n\
    \\r\n\
    \\ENQ\EOT\ENQ\ETX\NUL\SOH\DC2\EOT\139\SOH\f \n\
    \\SO\n\
    \\ACK\EOT\ENQ\ETX\NUL\STX\NUL\DC2\EOT\140\SOH\b\CAN\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\NUL\ENQ\DC2\EOT\140\SOH\b\SO\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\NUL\SOH\DC2\EOT\140\SOH\SI\DC3\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\NUL\ETX\DC2\EOT\140\SOH\SYN\ETB\n\
    \\SO\n\
    \\ACK\EOT\ENQ\ETX\NUL\STX\SOH\DC2\EOT\141\SOH\b5\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\SOH\ACK\DC2\EOT\141\SOH\b+\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\SOH\SOH\DC2\EOT\141\SOH,0\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\SOH\ETX\DC2\EOT\141\SOH34\n\
    \\130\ACK\n\
    \\EOT\EOT\ENQ\STX\r\DC2\EOT\157\SOH\EOT*\SUB\243\ENQ Helps user determine when it is safe to decommission the workers of this\n\
    \ Version. Not present when version is current or ramping.\n\
    \ Current limitations:\n\
    \ - Not supported for Unversioned mode.\n\
    \ - Periodically refreshed, may have delays up to few minutes (consult the\n\
    \   last_checked_time value).\n\
    \ - Refreshed only when version is not current or ramping AND the status is not\n\
    \   \"drained\" yet.\n\
    \ - Once the status is changed to \"drained\", it is not changed until the Version\n\
    \   becomes Current or Ramping again, at which time the drainage info is cleared.\n\
    \   This means if the Version is \"drained\" but new workflows are sent to it via\n\
    \   Pinned Versioning Override, the status does not account for those Pinned-override\n\
    \   executions and remains \"drained\".\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\r\ACK\DC2\EOT\157\SOH\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\r\SOH\DC2\EOT\157\SOH\CAN%\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\r\ETX\DC2\EOT\157\SOH()\n\
    \J\n\
    \\EOT\EOT\ENQ\STX\SO\DC2\EOT\160\SOH\EOT\"\SUB< Arbitrary user-provided metadata attached to this version.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SO\ACK\DC2\EOT\160\SOH\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SO\SOH\DC2\EOT\160\SOH\DC4\FS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SO\ETX\DC2\EOT\160\SOH\US!\n\
    \\133\SOH\n\
    \\EOT\EOT\ENQ\STX\SI\DC2\EOT\164\SOH\EOT>\SUBw Optional. Contains the new worker compute configuration for the Worker\n\
    \ Deployment. Used for worker scale management.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SI\ACK\DC2\EOT\164\SOH\EOT)\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SI\SOH\DC2\EOT\164\SOH*8\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SI\ETX\DC2\EOT\164\SOH;=\n\
    \\161\STX\n\
    \\EOT\EOT\ENQ\STX\DLE\DC2\EOT\171\SOH\EOT'\SUB\146\STX Identity of the last client who modified the configuration of this Version.\n\
    \ As of now, this field only covers changes through the following APIs:\n\
    \ - `CreateWorkerDeploymentVersion`\n\
    \ - `UpdateWorkerDeploymentVersionComputeConfig`\n\
    \ - `UpdateWorkerDeploymentVersionMetadata`\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\DLE\ENQ\DC2\EOT\171\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\DLE\SOH\DC2\EOT\171\SOH\v!\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\DLE\ETX\DC2\EOT\171\SOH$&\n\
    \\172\SOH\n\
    \\STX\EOT\ACK\DC2\ACK\176\SOH\NUL\184\SOH\SOH\SUB\157\SOH Information about workflow drainage to help the user determine when it is safe\n\
    \ to decommission a Version. Not present while version is current or ramping.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\176\SOH\b\ESC\n\
    \\195\SOH\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\179\SOH\EOT.\SUB\180\SOH Set to DRAINING when the version first stops accepting new executions (is no longer current or ramping).\n\
    \ Set to DRAINED when no more open pinned workflows exist on this version.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\EOT\179\SOH\EOT\"\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\179\SOH#)\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\179\SOH,-\n\
    \6\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\181\SOH\EOT4\SUB( Last time the drainage status changed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\EOT\181\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\181\SOH\RS/\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\181\SOH23\n\
    \J\n\
    \\EOT\EOT\ACK\STX\STX\DC2\EOT\183\SOH\EOT4\SUB< Last time the system checked for drainage of this version.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ACK\DC2\EOT\183\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\EOT\183\SOH\RS/\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\EOT\183\SOH23\n\
    \r\n\
    \\STX\EOT\a\DC2\ACK\187\SOH\NUL\199\SOH\SOH\SUBd ComputeStatus represents compute-related configuration and health for a Worker Deployment Version.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\187\SOH\b\NAK\n\
    \\156\SOH\n\
    \\EOT\EOT\a\ETX\NUL\DC2\ACK\190\SOH\EOT\196\SOH\ENQ\SUB\139\SOH ProviderValidationStatus represents the result of the most recent\n\
    \ connectivity check between Temporal and a customer's compute provider.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\ETX\NUL\SOH\DC2\EOT\190\SOH\f$\n\
    \{\n\
    \\ACK\EOT\a\ETX\NUL\STX\NUL\DC2\EOT\193\SOH\b!\SUBk Human-readable error message if connectivity validation failed.\n\
    \ An empty string means validation passed.\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\ENQ\DC2\EOT\193\SOH\b\SO\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\SOH\DC2\EOT\193\SOH\SI\FS\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\ETX\DC2\EOT\193\SOH\US \n\
    \9\n\
    \\ACK\EOT\a\ETX\NUL\STX\SOH\DC2\EOT\195\SOH\b6\SUB) Timestamp of the last validation check.\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\SOH\ACK\DC2\EOT\195\SOH\b!\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\SOH\SOH\DC2\EOT\195\SOH\"1\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\SOH\ETX\DC2\EOT\195\SOH45\n\
    \g\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\198\SOH\EOT5\SUBY provider_validation encapsulates the health signal for validating the compute provider.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\EOT\198\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\198\SOH\GS0\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\198\SOH34\n\
    \\197\ETX\n\
    \\STX\EOT\b\DC2\ACK\208\SOH\NUL\147\STX\SOH\SUB\182\ETX A Worker Deployment (Deployment, for short) represents all workers serving\n\
    \ a shared set of Task Queues. Typically, a Deployment represents one service or\n\
    \ application.\n\
    \ A Deployment contains multiple Deployment Versions, each representing a different\n\
    \ version of workers. (see documentation of WorkerDeploymentVersionInfo)\n\
    \ Deployment records are created in Temporal server automatically when their\n\
    \ first poller arrives to the server.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\208\SOH\b\FS\n\
    \T\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\210\SOH\EOT\DC4\SUBF Identifies a Worker Deployment. Must be unique within the namespace.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\210\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\210\SOH\v\SI\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\210\SOH\DC2\DC3\n\
    \\129\ETX\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\217\SOH\EOTB\SUB\242\STX Deployment Versions that are currently tracked in this Deployment. A DeploymentVersion will be\n\
    \ cleaned up automatically if all the following conditions meet:\n\
    \ - It does not receive new executions (is not current or ramping)\n\
    \ - It has no active pollers (see WorkerDeploymentVersionInfo.pollers_status)\n\
    \ - It is drained (see WorkerDeploymentVersionInfo.drainage_status)\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\EOT\DC2\EOT\217\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ACK\DC2\EOT\217\SOH\r+\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\217\SOH,=\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\217\SOH@A\n\
    \\f\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT\219\SOH\EOT.\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ACK\DC2\EOT\219\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\219\SOH\RS)\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\219\SOH,-\n\
    \\f\n\
    \\EOT\EOT\b\STX\ETX\DC2\EOT\221\SOH\EOT%\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ACK\DC2\EOT\221\SOH\EOT\DC1\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\EOT\221\SOH\DC2 \n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\EOT\221\SOH#$\n\
    \\223\SOH\n\
    \\EOT\EOT\b\STX\EOT\DC2\EOT\226\SOH\EOT&\SUB\208\SOH Identity of the last client who modified the configuration of this Deployment. Set to the\n\
    \ `identity` value sent by APIs such as `SetWorkerDeploymentCurrentVersion` and\n\
    \ `SetWorkerDeploymentRampingVersion`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\ENQ\DC2\EOT\226\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\SOH\DC2\EOT\226\SOH\v!\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\ETX\DC2\EOT\226\SOH$%\n\
    \\222\STX\n\
    \\EOT\EOT\b\STX\ENQ\DC2\EOT\232\SOH\EOT \SUB\207\STX Identity of the client that has the exclusive right to make changes to this Worker Deployment.\n\
    \ Empty by default.\n\
    \ If this is set, clients whose identity does not match `manager_identity` will not be able to make changes\n\
    \ to this Worker Deployment. They can either set their own identity as the manager or unset the field to proceed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\ENQ\DC2\EOT\232\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\SOH\DC2\EOT\232\SOH\v\ESC\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\ETX\DC2\EOT\232\SOH\RS\US\n\
    \\129\SOH\n\
    \\EOT\EOT\b\STX\ACK\DC2\EOT\236\SOH\EOTS\SUBs Indicates whether the routing_config has been fully propagated to all\n\
    \ relevant task queues and their partitions.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ACK\ACK\DC2\EOT\236\SOH\EOT2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ACK\SOH\DC2\EOT\236\SOH3N\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ACK\ETX\DC2\EOT\236\SOHQR\n\
    \\SO\n\
    \\EOT\EOT\b\ETX\NUL\DC2\ACK\238\SOH\EOT\146\STX\ENQ\n\
    \\r\n\
    \\ENQ\EOT\b\ETX\NUL\SOH\DC2\EOT\238\SOH\f*\n\
    \7\n\
    \\ACK\EOT\b\ETX\NUL\STX\NUL\DC2\EOT\240\SOH\b/\SUB' Deprecated. Use `deployment_version`.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\NUL\ENQ\DC2\EOT\240\SOH\b\SO\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\NUL\SOH\DC2\EOT\240\SOH\SI\SYN\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\NUL\ETX\DC2\EOT\240\SOH\EM\SUB\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\NUL\b\DC2\EOT\240\SOH\ESC.\n\
    \\DLE\n\
    \\b\EOT\b\ETX\NUL\STX\NUL\b\ETX\DC2\EOT\240\SOH\FS-\n\
    \>\n\
    \\ACK\EOT\b\ETX\NUL\STX\SOH\DC2\EOT\243\SOH\bH\SUB. The status of the Worker Deployment Version.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\SOH\ACK\DC2\EOT\243\SOH\b;\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\SOH\SOH\DC2\EOT\243\SOH<B\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\SOH\ETX\DC2\EOT\243\SOHEG\n\
    \\ESC\n\
    \\ACK\EOT\b\ETX\NUL\STX\STX\DC2\EOT\246\SOH\b7\SUB\v Required.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\STX\ACK\DC2\EOT\246\SOH\b\US\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\STX\SOH\DC2\EOT\246\SOH 2\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\STX\ETX\DC2\EOT\246\SOH56\n\
    \\SO\n\
    \\ACK\EOT\b\ETX\NUL\STX\ETX\DC2\EOT\247\SOH\b2\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\ETX\ACK\DC2\EOT\247\SOH\b!\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\ETX\SOH\DC2\EOT\247\SOH\"-\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\ETX\ETX\DC2\EOT\247\SOH01\n\
    \:\n\
    \\ACK\EOT\b\ETX\NUL\STX\EOT\DC2\EOT\249\SOH\b;\SUB* Deprecated. Use `drainage_info` instead.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\EOT\ACK\DC2\EOT\249\SOH\b&\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\EOT\SOH\DC2\EOT\249\SOH'6\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\EOT\ETX\DC2\EOT\249\SOH9:\n\
    \\173\SOH\n\
    \\ACK\EOT\b\ETX\NUL\STX\ENQ\DC2\EOT\252\SOH\b.\SUB\156\SOH Information about workflow drainage to help the user determine when it is safe\n\
    \ to decommission a Version. Not present while version is current or ramping\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\ENQ\ACK\DC2\EOT\252\SOH\b\ESC\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\ENQ\SOH\DC2\EOT\252\SOH\FS)\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\ENQ\ETX\DC2\EOT\252\SOH,-\n\
    \\189\SOH\n\
    \\ACK\EOT\b\ETX\NUL\STX\ACK\DC2\EOT\128\STX\b9\SUB\172\SOH Unset if not current.\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: 'Since' captures the field semantics despite being a preposition. --)\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\ACK\ACK\DC2\EOT\128\STX\b!\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\ACK\SOH\DC2\EOT\128\STX\"4\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\ACK\ETX\DC2\EOT\128\STX78\n\
    \\133\STX\n\
    \\ACK\EOT\b\ETX\NUL\STX\a\DC2\EOT\132\STX\b9\SUB\244\SOH Unset if not ramping. Updated when the version first starts ramping, not on each ramp change.\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: 'Since' captures the field semantics despite being a preposition. --)\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\a\ACK\DC2\EOT\132\STX\b!\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\a\SOH\DC2\EOT\132\STX\"4\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\a\ETX\DC2\EOT\132\STX78\n\
    \t\n\
    \\ACK\EOT\b\ETX\NUL\STX\b\DC2\EOT\134\STX\b:\SUBd Last time `current_since_time`, `ramping_since_time, or `ramp_percentage` of this version changed.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\b\ACK\DC2\EOT\134\STX\b!\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\b\SOH\DC2\EOT\134\STX\"5\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\b\ETX\DC2\EOT\134\STX89\n\
    \N\n\
    \\ACK\EOT\b\ETX\NUL\STX\t\DC2\EOT\136\STX\b<\SUB> Timestamp when this version first became current or ramping.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\t\ACK\DC2\EOT\136\STX\b!\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\t\SOH\DC2\EOT\136\STX\"7\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\t\ETX\DC2\EOT\136\STX:;\n\
    \\133\SOH\n\
    \\ACK\EOT\b\ETX\NUL\STX\n\
    \\DC2\EOT\139\STX\b9\SUBu Timestamp when this version last became current.\n\
    \ Can be used to determine whether a version has ever been Current.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\n\
    \\ACK\DC2\EOT\139\STX\b!\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\n\
    \\SOH\DC2\EOT\139\STX\"3\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\n\
    \\ETX\DC2\EOT\139\STX68\n\
    \\142\SOH\n\
    \\ACK\EOT\b\ETX\NUL\STX\v\DC2\EOT\142\STX\b>\SUB~ Timestamp when this version last stopped being current or ramping.\n\
    \ Cleared if the version becomes current or ramping again.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\v\ACK\DC2\EOT\142\STX\b!\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\v\SOH\DC2\EOT\142\STX\"8\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\v\ETX\DC2\EOT\142\STX;=\n\
    \\SO\n\
    \\ACK\EOT\b\ETX\NUL\STX\f\DC2\EOT\143\STX\bI\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\f\ACK\DC2\EOT\143\STX\b4\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\f\SOH\DC2\EOT\143\STX5C\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\f\ETX\DC2\EOT\143\STXFH\n\
    \Z\n\
    \\ACK\EOT\b\ETX\NUL\STX\r\DC2\EOT\145\STX\b*\SUBJ ComputeStatus represents compute-related configuration and healthchecks.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\r\ACK\DC2\EOT\145\STX\b\NAK\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\r\SOH\DC2\EOT\145\STX\SYN$\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\r\ETX\DC2\EOT\145\STX')\n\
    \\136\ETX\n\
    \\STX\EOT\t\DC2\ACK\154\STX\NUL\163\STX\SOH\SUB\249\STX A Worker Deployment Version (Version, for short) represents a\n\
    \ version of workers within a Worker Deployment. (see documentation of WorkerDeploymentVersionInfo)\n\
    \ Version records are created in Temporal server automatically when their\n\
    \ first poller arrives to the server.\n\
    \ Experimental. Worker Deployment Versions are experimental and might significantly change in the future.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\154\STX\b\US\n\
    \\175\STX\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\159\STX\EOT\CAN\SUB\160\STX A unique identifier for this Version within the Deployment it is a part of.\n\
    \ Not necessarily unique within the namespace.\n\
    \ The combination of `deployment_name` and `build_id` uniquely identifies this\n\
    \ Version within the namespace, because Deployment names are unique within a namespace.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\EOT\159\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\159\STX\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\159\STX\SYN\ETB\n\
    \I\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\162\STX\EOT\US\SUB; Identifies the Worker Deployment this Version is part of.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ENQ\DC2\EOT\162\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\162\STX\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\162\STX\GS\RS\n\
    \\f\n\
    \\STX\EOT\n\
    \\DC2\ACK\165\STX\NUL\168\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\165\STX\b\ETB\n\
    \%\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\167\STX\EOT<\SUB\ETB Arbitrary key-values.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ACK\DC2\EOT\167\STX\EOT/\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\167\STX07\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\167\STX:;\n\
    \\f\n\
    \\STX\EOT\v\DC2\ACK\170\STX\NUL\204\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\170\STX\b\NAK\n\
    \\150\ENQ\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\176\STX\EOTV\SUB\135\ENQ Specifies which Deployment Version should receive new workflow executions and tasks of\n\
    \ existing unversioned or AutoUpgrade workflows.\n\
    \ Nil value means no Version in this Deployment (except Ramping Version, if present) receives traffic other than tasks of previously Pinned workflows. In absence of a Current Version, remaining traffic after any ramp (if set)  goes to unversioned workers (those with `UNVERSIONED` (or unspecified) `WorkerVersioningMode`.).\n\
    \ Note: Current Version is overridden by the Ramping Version for a portion of traffic when ramp percentage\n\
    \ is non-zero (see `ramping_deployment_version` and `ramping_version_percentage`).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ACK\DC2\EOT\176\STX\EOT6\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\176\STX7Q\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\176\STXTU\n\
    \=\n\
    \\EOT\EOT\v\STX\SOH\DC2\EOT\178\STX\EOT3\SUB/ Deprecated. Use `current_deployment_version`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\EOT\178\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\EOT\178\STX\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\EOT\178\STX\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\b\DC2\EOT\178\STX\US2\n\
    \\SO\n\
    \\ACK\EOT\v\STX\SOH\b\ETX\DC2\EOT\178\STX 1\n\
    \\255\ETX\n\
    \\EOT\EOT\v\STX\STX\DC2\EOT\185\STX\EOTV\SUB\240\ETX When ramp percentage is non-zero, that portion of traffic is shifted from the Current Version to the Ramping Version.\n\
    \ Must always be different from `current_deployment_version` unless both are nil.\n\
    \ Nil value represents all the unversioned workers (those with `UNVERSIONED` (or unspecified) `WorkerVersioningMode`.)\n\
    \ Note that it is possible to ramp from one Version to another Version, or from unversioned\n\
    \ workers to a particular Version, or from a particular Version to unversioned workers.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ACK\DC2\EOT\185\STX\EOT6\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\EOT\185\STX7Q\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\EOT\185\STXTU\n\
    \=\n\
    \\EOT\EOT\v\STX\ETX\DC2\EOT\187\STX\EOT3\SUB/ Deprecated. Use `ramping_deployment_version`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ENQ\DC2\EOT\187\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\SOH\DC2\EOT\187\STX\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ETX\DC2\EOT\187\STX\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\b\DC2\EOT\187\STX\US2\n\
    \\SO\n\
    \\ACK\EOT\v\STX\ETX\b\ETX\DC2\EOT\187\STX 1\n\
    \\217\STX\n\
    \\EOT\EOT\v\STX\EOT\DC2\EOT\193\STX\EOT)\SUB\202\STX Percentage of tasks that are routed to the Ramping Version instead of the Current Version.\n\
    \ Valid range: [0, 100]. A 100% value means the Ramping Version is receiving full traffic but\n\
    \ not yet \"promoted\" to be the Current Version, likely due to pending validations.\n\
    \ A 0% value means the Ramping Version is receiving no traffic.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\ENQ\DC2\EOT\193\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\SOH\DC2\EOT\193\STX\n\
    \$\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\ETX\DC2\EOT\193\STX'(\n\
    \6\n\
    \\EOT\EOT\v\STX\ENQ\DC2\EOT\195\STX\EOT?\SUB( Last time current version was changed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ENQ\ACK\DC2\EOT\195\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ENQ\SOH\DC2\EOT\195\STX\RS:\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ENQ\ETX\DC2\EOT\195\STX=>\n\
    \g\n\
    \\EOT\EOT\v\STX\ACK\DC2\EOT\197\STX\EOT?\SUBY Last time ramping version was changed. Not updated if only the ramp percentage changes.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ACK\ACK\DC2\EOT\197\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ACK\SOH\DC2\EOT\197\STX\RS:\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ACK\ETX\DC2\EOT\197\STX=>\n\
    \\159\SOH\n\
    \\EOT\EOT\v\STX\a\DC2\EOT\200\STX\EOTJ\SUB\144\SOH Last time ramping version percentage was changed.\n\
    \ If ramping version is changed, this is also updated, even if the percentage stays the same.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\a\ACK\DC2\EOT\200\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\a\SOH\DC2\EOT\200\STX\RSE\n\
    \\r\n\
    \\ENQ\EOT\v\STX\a\ETX\DC2\EOT\200\STXHI\n\
    \\190\SOH\n\
    \\EOT\EOT\v\STX\b\DC2\EOT\203\STX\EOT\US\SUB\175\SOH Monotonically increasing value which is incremented on every mutation\n\
    \ to any field of this message to achieve eventual consistency between task queues and their partitions.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\b\ENQ\DC2\EOT\203\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\v\STX\b\SOH\DC2\EOT\203\STX\n\
    \\EM\n\
    \\r\n\
    \\ENQ\EOT\v\STX\b\ETX\DC2\EOT\203\STX\FS\RS\n\
    \\172\STX\n\
    \\STX\EOT\f\DC2\ACK\209\STX\NUL\225\STX\SOH\SUB\157\STX Used as part of WorkflowExecutionStartedEventAttributes to pass down the AutoUpgrade behavior and source deployment version\n\
    \ to a workflow execution whose parent/previous workflow has an AutoUpgrade behavior.\n\
    \ Also used for Upgrade-on-CaN behaviors AutoUpgrade and UseRampingVersion.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\209\STX\b \n\
    \N\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\211\STX\EOTU\SUB@ The source deployment version of the parent/previous workflow.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ACK\DC2\EOT\211\STX\EOT6\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\211\STX7P\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\211\STXST\n\
    \e\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\213\STX\EOT0\SUBW The revision number of the source deployment version of the parent/previous workflow.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\EOT\213\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\213\STX\n\
    \+\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\213\STX./\n\
    \\190\ENQ\n\
    \\EOT\EOT\f\STX\STX\DC2\EOT\224\STX\EOTj\SUB\175\ENQ Experimental.\n\
    \ If this workflow is the result of a continue-as-new, this field is set to the initial_versioning_behavior\n\
    \ specified in that command.\n\
    \ Only used for the initial task of this run and the initial task of any retries of this run.\n\
    \ Not passed to children or to future continue-as-new.\n\
    \\n\
    \ Note: In the first release of Upgrade-on-CaN, when the only ContinueAsNewVersioningBehavior was AutoUpgrade,\n\
    \ a non-empty InheritedAutoUpgradeInfo meant that the workflow should start as AutoUpgrade. So for compatibility\n\
    \ with history events generated during that time, know that an UNSPECIFIED value here is equivalent to AutoUpgrade\n\
    \ value if the InheritedAutoUpgradeInfo is non-empty.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ACK\DC2\EOT\224\STX\EOT9\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\SOH\DC2\EOT\224\STX:e\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ETX\DC2\EOT\224\STXhib\ACKproto3"