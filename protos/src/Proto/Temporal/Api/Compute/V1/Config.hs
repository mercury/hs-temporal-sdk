{- This file was auto-generated from temporal/api/compute/v1/config.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Compute.V1.Config (
        ComputeConfig(), ComputeConfig'ScalingGroupsEntry(),
        ComputeConfigScalingGroup(), ComputeConfigScalingGroupSummary(),
        ComputeConfigScalingGroupUpdate(), ComputeConfigSummary(),
        ComputeConfigSummary'ScalingGroupsEntry()
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
import qualified Proto.Google.Protobuf.FieldMask
import qualified Proto.Temporal.Api.Compute.V1.Provider
import qualified Proto.Temporal.Api.Compute.V1.Scaler
import qualified Proto.Temporal.Api.Enums.V1.TaskQueue
{- | Fields :
     
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.scalingGroups' @:: Lens' ComputeConfig (Data.Map.Map Data.Text.Text ComputeConfigScalingGroup)@ -}
data ComputeConfig
  = ComputeConfig'_constructor {_ComputeConfig'scalingGroups :: !(Data.Map.Map Data.Text.Text ComputeConfigScalingGroup),
                                _ComputeConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ComputeConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ComputeConfig "scalingGroups" (Data.Map.Map Data.Text.Text ComputeConfigScalingGroup) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfig'scalingGroups
           (\ x__ y__ -> x__ {_ComputeConfig'scalingGroups = y__}))
        Prelude.id
instance Data.ProtoLens.Message ComputeConfig where
  messageName _
    = Data.Text.pack "temporal.api.compute.v1.ComputeConfig"
  packedMessageDescriptor _
    = "\n\
      \\rComputeConfig\DC2`\n\
      \\SOscaling_groups\CAN\SOH \ETX(\v29.temporal.api.compute.v1.ComputeConfig.ScalingGroupsEntryR\rscalingGroups\SUBt\n\
      \\DC2ScalingGroupsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2H\n\
      \\ENQvalue\CAN\STX \SOH(\v22.temporal.api.compute.v1.ComputeConfigScalingGroupR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        scalingGroups__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scaling_groups"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ComputeConfig'ScalingGroupsEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"scalingGroups")) ::
              Data.ProtoLens.FieldDescriptor ComputeConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, scalingGroups__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ComputeConfig'_unknownFields
        (\ x__ y__ -> x__ {_ComputeConfig'_unknownFields = y__})
  defMessage
    = ComputeConfig'_constructor
        {_ComputeConfig'scalingGroups = Data.Map.empty,
         _ComputeConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ComputeConfig -> Data.ProtoLens.Encoding.Bytes.Parser ComputeConfig
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
                          -> do !(entry :: ComputeConfig'ScalingGroupsEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                  (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                      Data.ProtoLens.Encoding.Bytes.isolate
                                                                                        (Prelude.fromIntegral
                                                                                           len)
                                                                                        Data.ProtoLens.parseMessage)
                                                                                  "scaling_groups"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"scalingGroups")
                                        (\ !t -> Data.Map.insert key value t) x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ComputeConfig"
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
                                       ComputeConfig'ScalingGroupsEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"scalingGroups") _x))))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ComputeConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ComputeConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ComputeConfig'scalingGroups x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.key' @:: Lens' ComputeConfig'ScalingGroupsEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.value' @:: Lens' ComputeConfig'ScalingGroupsEntry ComputeConfigScalingGroup@
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.maybe'value' @:: Lens' ComputeConfig'ScalingGroupsEntry (Prelude.Maybe ComputeConfigScalingGroup)@ -}
data ComputeConfig'ScalingGroupsEntry
  = ComputeConfig'ScalingGroupsEntry'_constructor {_ComputeConfig'ScalingGroupsEntry'key :: !Data.Text.Text,
                                                   _ComputeConfig'ScalingGroupsEntry'value :: !(Prelude.Maybe ComputeConfigScalingGroup),
                                                   _ComputeConfig'ScalingGroupsEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ComputeConfig'ScalingGroupsEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ComputeConfig'ScalingGroupsEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfig'ScalingGroupsEntry'key
           (\ x__ y__ -> x__ {_ComputeConfig'ScalingGroupsEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ComputeConfig'ScalingGroupsEntry "value" ComputeConfigScalingGroup where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfig'ScalingGroupsEntry'value
           (\ x__ y__ -> x__ {_ComputeConfig'ScalingGroupsEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ComputeConfig'ScalingGroupsEntry "maybe'value" (Prelude.Maybe ComputeConfigScalingGroup) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfig'ScalingGroupsEntry'value
           (\ x__ y__ -> x__ {_ComputeConfig'ScalingGroupsEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message ComputeConfig'ScalingGroupsEntry where
  messageName _
    = Data.Text.pack
        "temporal.api.compute.v1.ComputeConfig.ScalingGroupsEntry"
  packedMessageDescriptor _
    = "\n\
      \\DC2ScalingGroupsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2H\n\
      \\ENQvalue\CAN\STX \SOH(\v22.temporal.api.compute.v1.ComputeConfigScalingGroupR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor ComputeConfig'ScalingGroupsEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ComputeConfigScalingGroup)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor ComputeConfig'ScalingGroupsEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ComputeConfig'ScalingGroupsEntry'_unknownFields
        (\ x__ y__
           -> x__ {_ComputeConfig'ScalingGroupsEntry'_unknownFields = y__})
  defMessage
    = ComputeConfig'ScalingGroupsEntry'_constructor
        {_ComputeConfig'ScalingGroupsEntry'key = Data.ProtoLens.fieldDefault,
         _ComputeConfig'ScalingGroupsEntry'value = Prelude.Nothing,
         _ComputeConfig'ScalingGroupsEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ComputeConfig'ScalingGroupsEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser ComputeConfig'ScalingGroupsEntry
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
          (do loop Data.ProtoLens.defMessage) "ScalingGroupsEntry"
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
instance Control.DeepSeq.NFData ComputeConfig'ScalingGroupsEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ComputeConfig'ScalingGroupsEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ComputeConfig'ScalingGroupsEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_ComputeConfig'ScalingGroupsEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.taskQueueTypes' @:: Lens' ComputeConfigScalingGroup [Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType]@
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.vec'taskQueueTypes' @:: Lens' ComputeConfigScalingGroup (Data.Vector.Vector Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType)@
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.regionIds' @:: Lens' ComputeConfigScalingGroup [Data.Text.Text]@
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.vec'regionIds' @:: Lens' ComputeConfigScalingGroup (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.provider' @:: Lens' ComputeConfigScalingGroup Proto.Temporal.Api.Compute.V1.Provider.ComputeProvider@
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.maybe'provider' @:: Lens' ComputeConfigScalingGroup (Prelude.Maybe Proto.Temporal.Api.Compute.V1.Provider.ComputeProvider)@
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.scaler' @:: Lens' ComputeConfigScalingGroup Proto.Temporal.Api.Compute.V1.Scaler.ComputeScaler@
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.maybe'scaler' @:: Lens' ComputeConfigScalingGroup (Prelude.Maybe Proto.Temporal.Api.Compute.V1.Scaler.ComputeScaler)@ -}
data ComputeConfigScalingGroup
  = ComputeConfigScalingGroup'_constructor {_ComputeConfigScalingGroup'taskQueueTypes :: !(Data.Vector.Vector Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType),
                                            _ComputeConfigScalingGroup'regionIds :: !(Data.Vector.Vector Data.Text.Text),
                                            _ComputeConfigScalingGroup'provider :: !(Prelude.Maybe Proto.Temporal.Api.Compute.V1.Provider.ComputeProvider),
                                            _ComputeConfigScalingGroup'scaler :: !(Prelude.Maybe Proto.Temporal.Api.Compute.V1.Scaler.ComputeScaler),
                                            _ComputeConfigScalingGroup'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ComputeConfigScalingGroup where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ComputeConfigScalingGroup "taskQueueTypes" [Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfigScalingGroup'taskQueueTypes
           (\ x__ y__
              -> x__ {_ComputeConfigScalingGroup'taskQueueTypes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ComputeConfigScalingGroup "vec'taskQueueTypes" (Data.Vector.Vector Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfigScalingGroup'taskQueueTypes
           (\ x__ y__
              -> x__ {_ComputeConfigScalingGroup'taskQueueTypes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ComputeConfigScalingGroup "regionIds" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfigScalingGroup'regionIds
           (\ x__ y__ -> x__ {_ComputeConfigScalingGroup'regionIds = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ComputeConfigScalingGroup "vec'regionIds" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfigScalingGroup'regionIds
           (\ x__ y__ -> x__ {_ComputeConfigScalingGroup'regionIds = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ComputeConfigScalingGroup "provider" Proto.Temporal.Api.Compute.V1.Provider.ComputeProvider where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfigScalingGroup'provider
           (\ x__ y__ -> x__ {_ComputeConfigScalingGroup'provider = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ComputeConfigScalingGroup "maybe'provider" (Prelude.Maybe Proto.Temporal.Api.Compute.V1.Provider.ComputeProvider) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfigScalingGroup'provider
           (\ x__ y__ -> x__ {_ComputeConfigScalingGroup'provider = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ComputeConfigScalingGroup "scaler" Proto.Temporal.Api.Compute.V1.Scaler.ComputeScaler where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfigScalingGroup'scaler
           (\ x__ y__ -> x__ {_ComputeConfigScalingGroup'scaler = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ComputeConfigScalingGroup "maybe'scaler" (Prelude.Maybe Proto.Temporal.Api.Compute.V1.Scaler.ComputeScaler) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfigScalingGroup'scaler
           (\ x__ y__ -> x__ {_ComputeConfigScalingGroup'scaler = y__}))
        Prelude.id
instance Data.ProtoLens.Message ComputeConfigScalingGroup where
  messageName _
    = Data.Text.pack
        "temporal.api.compute.v1.ComputeConfigScalingGroup"
  packedMessageDescriptor _
    = "\n\
      \\EMComputeConfigScalingGroup\DC2N\n\
      \\DLEtask_queue_types\CAN\SOH \ETX(\SO2$.temporal.api.enums.v1.TaskQueueTypeR\SOtaskQueueTypes\DC2\GS\n\
      \\n\
      \region_ids\CAN\STX \ETX(\tR\tregionIds\DC2D\n\
      \\bprovider\CAN\ETX \SOH(\v2(.temporal.api.compute.v1.ComputeProviderR\bprovider\DC2>\n\
      \\ACKscaler\CAN\EOT \SOH(\v2&.temporal.api.compute.v1.ComputeScalerR\ACKscaler"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        taskQueueTypes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue_types"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"taskQueueTypes")) ::
              Data.ProtoLens.FieldDescriptor ComputeConfigScalingGroup
        regionIds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "region_ids"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"regionIds")) ::
              Data.ProtoLens.FieldDescriptor ComputeConfigScalingGroup
        provider__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "provider"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Compute.V1.Provider.ComputeProvider)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'provider")) ::
              Data.ProtoLens.FieldDescriptor ComputeConfigScalingGroup
        scaler__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scaler"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Compute.V1.Scaler.ComputeScaler)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scaler")) ::
              Data.ProtoLens.FieldDescriptor ComputeConfigScalingGroup
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, taskQueueTypes__field_descriptor),
           (Data.ProtoLens.Tag 2, regionIds__field_descriptor),
           (Data.ProtoLens.Tag 3, provider__field_descriptor),
           (Data.ProtoLens.Tag 4, scaler__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ComputeConfigScalingGroup'_unknownFields
        (\ x__ y__
           -> x__ {_ComputeConfigScalingGroup'_unknownFields = y__})
  defMessage
    = ComputeConfigScalingGroup'_constructor
        {_ComputeConfigScalingGroup'taskQueueTypes = Data.Vector.Generic.empty,
         _ComputeConfigScalingGroup'regionIds = Data.Vector.Generic.empty,
         _ComputeConfigScalingGroup'provider = Prelude.Nothing,
         _ComputeConfigScalingGroup'scaler = Prelude.Nothing,
         _ComputeConfigScalingGroup'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ComputeConfigScalingGroup
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType
                -> Data.ProtoLens.Encoding.Bytes.Parser ComputeConfigScalingGroup
        loop x mutable'regionIds mutable'taskQueueTypes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'regionIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'regionIds)
                      frozen'taskQueueTypes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'taskQueueTypes)
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
                              (Data.ProtoLens.Field.field @"vec'regionIds") frozen'regionIds
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'taskQueueTypes")
                                 frozen'taskQueueTypes x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.toEnum
                                           (Prelude.fmap
                                              Prelude.fromIntegral
                                              Data.ProtoLens.Encoding.Bytes.getVarInt))
                                        "task_queue_types"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'taskQueueTypes y)
                                loop x mutable'regionIds v
                        10
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
                                                                    "task_queue_types"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'taskQueueTypes)
                                loop x mutable'regionIds y
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getText
                                              (Prelude.fromIntegral len))
                                        "region_ids"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'regionIds y)
                                loop x v mutable'taskQueueTypes
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "provider"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"provider") y x)
                                  mutable'regionIds mutable'taskQueueTypes
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "scaler"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"scaler") y x)
                                  mutable'regionIds mutable'taskQueueTypes
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'regionIds mutable'taskQueueTypes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'regionIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'taskQueueTypes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'regionIds mutable'taskQueueTypes)
          "ComputeConfigScalingGroup"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                p = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'taskQueueTypes") _x
              in
                if Data.Vector.Generic.null p then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         (Data.ProtoLens.Encoding.Bytes.runBuilder
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               ((Prelude..)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                  Prelude.fromEnum)
                               p))))
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
                      (Data.ProtoLens.Field.field @"vec'regionIds") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'provider") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'scaler") _x
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
instance Control.DeepSeq.NFData ComputeConfigScalingGroup where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ComputeConfigScalingGroup'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ComputeConfigScalingGroup'taskQueueTypes x__)
                (Control.DeepSeq.deepseq
                   (_ComputeConfigScalingGroup'regionIds x__)
                   (Control.DeepSeq.deepseq
                      (_ComputeConfigScalingGroup'provider x__)
                      (Control.DeepSeq.deepseq
                         (_ComputeConfigScalingGroup'scaler x__) ()))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.taskQueueTypes' @:: Lens' ComputeConfigScalingGroupSummary [Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType]@
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.vec'taskQueueTypes' @:: Lens' ComputeConfigScalingGroupSummary (Data.Vector.Vector Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType)@
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.providerType' @:: Lens' ComputeConfigScalingGroupSummary Data.Text.Text@
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.regionIds' @:: Lens' ComputeConfigScalingGroupSummary [Data.Text.Text]@
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.vec'regionIds' @:: Lens' ComputeConfigScalingGroupSummary (Data.Vector.Vector Data.Text.Text)@ -}
data ComputeConfigScalingGroupSummary
  = ComputeConfigScalingGroupSummary'_constructor {_ComputeConfigScalingGroupSummary'taskQueueTypes :: !(Data.Vector.Vector Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType),
                                                   _ComputeConfigScalingGroupSummary'providerType :: !Data.Text.Text,
                                                   _ComputeConfigScalingGroupSummary'regionIds :: !(Data.Vector.Vector Data.Text.Text),
                                                   _ComputeConfigScalingGroupSummary'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ComputeConfigScalingGroupSummary where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ComputeConfigScalingGroupSummary "taskQueueTypes" [Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfigScalingGroupSummary'taskQueueTypes
           (\ x__ y__
              -> x__ {_ComputeConfigScalingGroupSummary'taskQueueTypes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ComputeConfigScalingGroupSummary "vec'taskQueueTypes" (Data.Vector.Vector Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfigScalingGroupSummary'taskQueueTypes
           (\ x__ y__
              -> x__ {_ComputeConfigScalingGroupSummary'taskQueueTypes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ComputeConfigScalingGroupSummary "providerType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfigScalingGroupSummary'providerType
           (\ x__ y__
              -> x__ {_ComputeConfigScalingGroupSummary'providerType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ComputeConfigScalingGroupSummary "regionIds" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfigScalingGroupSummary'regionIds
           (\ x__ y__
              -> x__ {_ComputeConfigScalingGroupSummary'regionIds = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ComputeConfigScalingGroupSummary "vec'regionIds" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfigScalingGroupSummary'regionIds
           (\ x__ y__
              -> x__ {_ComputeConfigScalingGroupSummary'regionIds = y__}))
        Prelude.id
instance Data.ProtoLens.Message ComputeConfigScalingGroupSummary where
  messageName _
    = Data.Text.pack
        "temporal.api.compute.v1.ComputeConfigScalingGroupSummary"
  packedMessageDescriptor _
    = "\n\
      \ ComputeConfigScalingGroupSummary\DC2N\n\
      \\DLEtask_queue_types\CAN\SOH \ETX(\SO2$.temporal.api.enums.v1.TaskQueueTypeR\SOtaskQueueTypes\DC2#\n\
      \\rprovider_type\CAN\STX \SOH(\tR\fproviderType\DC2\GS\n\
      \\n\
      \region_ids\CAN\ETX \ETX(\tR\tregionIds"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        taskQueueTypes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue_types"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"taskQueueTypes")) ::
              Data.ProtoLens.FieldDescriptor ComputeConfigScalingGroupSummary
        providerType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "provider_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"providerType")) ::
              Data.ProtoLens.FieldDescriptor ComputeConfigScalingGroupSummary
        regionIds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "region_ids"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"regionIds")) ::
              Data.ProtoLens.FieldDescriptor ComputeConfigScalingGroupSummary
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, taskQueueTypes__field_descriptor),
           (Data.ProtoLens.Tag 2, providerType__field_descriptor),
           (Data.ProtoLens.Tag 3, regionIds__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ComputeConfigScalingGroupSummary'_unknownFields
        (\ x__ y__
           -> x__ {_ComputeConfigScalingGroupSummary'_unknownFields = y__})
  defMessage
    = ComputeConfigScalingGroupSummary'_constructor
        {_ComputeConfigScalingGroupSummary'taskQueueTypes = Data.Vector.Generic.empty,
         _ComputeConfigScalingGroupSummary'providerType = Data.ProtoLens.fieldDefault,
         _ComputeConfigScalingGroupSummary'regionIds = Data.Vector.Generic.empty,
         _ComputeConfigScalingGroupSummary'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ComputeConfigScalingGroupSummary
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueType
                -> Data.ProtoLens.Encoding.Bytes.Parser ComputeConfigScalingGroupSummary
        loop x mutable'regionIds mutable'taskQueueTypes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'regionIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'regionIds)
                      frozen'taskQueueTypes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'taskQueueTypes)
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
                              (Data.ProtoLens.Field.field @"vec'regionIds") frozen'regionIds
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'taskQueueTypes")
                                 frozen'taskQueueTypes x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.toEnum
                                           (Prelude.fmap
                                              Prelude.fromIntegral
                                              Data.ProtoLens.Encoding.Bytes.getVarInt))
                                        "task_queue_types"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'taskQueueTypes y)
                                loop x mutable'regionIds v
                        10
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
                                                                    "task_queue_types"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'taskQueueTypes)
                                loop x mutable'regionIds y
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "provider_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"providerType") y x)
                                  mutable'regionIds mutable'taskQueueTypes
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getText
                                              (Prelude.fromIntegral len))
                                        "region_ids"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'regionIds y)
                                loop x v mutable'taskQueueTypes
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'regionIds mutable'taskQueueTypes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'regionIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'taskQueueTypes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'regionIds mutable'taskQueueTypes)
          "ComputeConfigScalingGroupSummary"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                p = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'taskQueueTypes") _x
              in
                if Data.Vector.Generic.null p then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         (Data.ProtoLens.Encoding.Bytes.runBuilder
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               ((Prelude..)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                  Prelude.fromEnum)
                               p))))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"providerType") _x
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
                         (Data.ProtoLens.Field.field @"vec'regionIds") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ComputeConfigScalingGroupSummary where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ComputeConfigScalingGroupSummary'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ComputeConfigScalingGroupSummary'taskQueueTypes x__)
                (Control.DeepSeq.deepseq
                   (_ComputeConfigScalingGroupSummary'providerType x__)
                   (Control.DeepSeq.deepseq
                      (_ComputeConfigScalingGroupSummary'regionIds x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.scalingGroup' @:: Lens' ComputeConfigScalingGroupUpdate ComputeConfigScalingGroup@
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.maybe'scalingGroup' @:: Lens' ComputeConfigScalingGroupUpdate (Prelude.Maybe ComputeConfigScalingGroup)@
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.updateMask' @:: Lens' ComputeConfigScalingGroupUpdate Proto.Google.Protobuf.FieldMask.FieldMask@
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.maybe'updateMask' @:: Lens' ComputeConfigScalingGroupUpdate (Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask)@ -}
data ComputeConfigScalingGroupUpdate
  = ComputeConfigScalingGroupUpdate'_constructor {_ComputeConfigScalingGroupUpdate'scalingGroup :: !(Prelude.Maybe ComputeConfigScalingGroup),
                                                  _ComputeConfigScalingGroupUpdate'updateMask :: !(Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask),
                                                  _ComputeConfigScalingGroupUpdate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ComputeConfigScalingGroupUpdate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ComputeConfigScalingGroupUpdate "scalingGroup" ComputeConfigScalingGroup where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfigScalingGroupUpdate'scalingGroup
           (\ x__ y__
              -> x__ {_ComputeConfigScalingGroupUpdate'scalingGroup = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ComputeConfigScalingGroupUpdate "maybe'scalingGroup" (Prelude.Maybe ComputeConfigScalingGroup) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfigScalingGroupUpdate'scalingGroup
           (\ x__ y__
              -> x__ {_ComputeConfigScalingGroupUpdate'scalingGroup = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ComputeConfigScalingGroupUpdate "updateMask" Proto.Google.Protobuf.FieldMask.FieldMask where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfigScalingGroupUpdate'updateMask
           (\ x__ y__
              -> x__ {_ComputeConfigScalingGroupUpdate'updateMask = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ComputeConfigScalingGroupUpdate "maybe'updateMask" (Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfigScalingGroupUpdate'updateMask
           (\ x__ y__
              -> x__ {_ComputeConfigScalingGroupUpdate'updateMask = y__}))
        Prelude.id
instance Data.ProtoLens.Message ComputeConfigScalingGroupUpdate where
  messageName _
    = Data.Text.pack
        "temporal.api.compute.v1.ComputeConfigScalingGroupUpdate"
  packedMessageDescriptor _
    = "\n\
      \\USComputeConfigScalingGroupUpdate\DC2W\n\
      \\rscaling_group\CAN\SOH \SOH(\v22.temporal.api.compute.v1.ComputeConfigScalingGroupR\fscalingGroup\DC2;\n\
      \\vupdate_mask\CAN\STX \SOH(\v2\SUB.google.protobuf.FieldMaskR\n\
      \updateMask"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        scalingGroup__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scaling_group"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ComputeConfigScalingGroup)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scalingGroup")) ::
              Data.ProtoLens.FieldDescriptor ComputeConfigScalingGroupUpdate
        updateMask__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "update_mask"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.FieldMask.FieldMask)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'updateMask")) ::
              Data.ProtoLens.FieldDescriptor ComputeConfigScalingGroupUpdate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, scalingGroup__field_descriptor),
           (Data.ProtoLens.Tag 2, updateMask__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ComputeConfigScalingGroupUpdate'_unknownFields
        (\ x__ y__
           -> x__ {_ComputeConfigScalingGroupUpdate'_unknownFields = y__})
  defMessage
    = ComputeConfigScalingGroupUpdate'_constructor
        {_ComputeConfigScalingGroupUpdate'scalingGroup = Prelude.Nothing,
         _ComputeConfigScalingGroupUpdate'updateMask = Prelude.Nothing,
         _ComputeConfigScalingGroupUpdate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ComputeConfigScalingGroupUpdate
          -> Data.ProtoLens.Encoding.Bytes.Parser ComputeConfigScalingGroupUpdate
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
                                       "scaling_group"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scalingGroup") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "update_mask"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"updateMask") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "ComputeConfigScalingGroupUpdate"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'scalingGroup") _x
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
                       (Data.ProtoLens.Field.field @"maybe'updateMask") _x
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
instance Control.DeepSeq.NFData ComputeConfigScalingGroupUpdate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ComputeConfigScalingGroupUpdate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ComputeConfigScalingGroupUpdate'scalingGroup x__)
                (Control.DeepSeq.deepseq
                   (_ComputeConfigScalingGroupUpdate'updateMask x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.scalingGroups' @:: Lens' ComputeConfigSummary (Data.Map.Map Data.Text.Text ComputeConfigScalingGroupSummary)@ -}
data ComputeConfigSummary
  = ComputeConfigSummary'_constructor {_ComputeConfigSummary'scalingGroups :: !(Data.Map.Map Data.Text.Text ComputeConfigScalingGroupSummary),
                                       _ComputeConfigSummary'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ComputeConfigSummary where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ComputeConfigSummary "scalingGroups" (Data.Map.Map Data.Text.Text ComputeConfigScalingGroupSummary) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfigSummary'scalingGroups
           (\ x__ y__ -> x__ {_ComputeConfigSummary'scalingGroups = y__}))
        Prelude.id
instance Data.ProtoLens.Message ComputeConfigSummary where
  messageName _
    = Data.Text.pack "temporal.api.compute.v1.ComputeConfigSummary"
  packedMessageDescriptor _
    = "\n\
      \\DC4ComputeConfigSummary\DC2g\n\
      \\SOscaling_groups\CAN\SOH \ETX(\v2@.temporal.api.compute.v1.ComputeConfigSummary.ScalingGroupsEntryR\rscalingGroups\SUB{\n\
      \\DC2ScalingGroupsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2O\n\
      \\ENQvalue\CAN\STX \SOH(\v29.temporal.api.compute.v1.ComputeConfigScalingGroupSummaryR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        scalingGroups__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scaling_groups"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ComputeConfigSummary'ScalingGroupsEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"scalingGroups")) ::
              Data.ProtoLens.FieldDescriptor ComputeConfigSummary
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, scalingGroups__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ComputeConfigSummary'_unknownFields
        (\ x__ y__ -> x__ {_ComputeConfigSummary'_unknownFields = y__})
  defMessage
    = ComputeConfigSummary'_constructor
        {_ComputeConfigSummary'scalingGroups = Data.Map.empty,
         _ComputeConfigSummary'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ComputeConfigSummary
          -> Data.ProtoLens.Encoding.Bytes.Parser ComputeConfigSummary
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
                          -> do !(entry :: ComputeConfigSummary'ScalingGroupsEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                         (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                             Data.ProtoLens.Encoding.Bytes.isolate
                                                                                               (Prelude.fromIntegral
                                                                                                  len)
                                                                                               Data.ProtoLens.parseMessage)
                                                                                         "scaling_groups"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"scalingGroups")
                                        (\ !t -> Data.Map.insert key value t) x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ComputeConfigSummary"
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
                                       ComputeConfigSummary'ScalingGroupsEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"scalingGroups") _x))))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ComputeConfigSummary where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ComputeConfigSummary'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ComputeConfigSummary'scalingGroups x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.key' @:: Lens' ComputeConfigSummary'ScalingGroupsEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.value' @:: Lens' ComputeConfigSummary'ScalingGroupsEntry ComputeConfigScalingGroupSummary@
         * 'Proto.Temporal.Api.Compute.V1.Config_Fields.maybe'value' @:: Lens' ComputeConfigSummary'ScalingGroupsEntry (Prelude.Maybe ComputeConfigScalingGroupSummary)@ -}
data ComputeConfigSummary'ScalingGroupsEntry
  = ComputeConfigSummary'ScalingGroupsEntry'_constructor {_ComputeConfigSummary'ScalingGroupsEntry'key :: !Data.Text.Text,
                                                          _ComputeConfigSummary'ScalingGroupsEntry'value :: !(Prelude.Maybe ComputeConfigScalingGroupSummary),
                                                          _ComputeConfigSummary'ScalingGroupsEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ComputeConfigSummary'ScalingGroupsEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ComputeConfigSummary'ScalingGroupsEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfigSummary'ScalingGroupsEntry'key
           (\ x__ y__
              -> x__ {_ComputeConfigSummary'ScalingGroupsEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ComputeConfigSummary'ScalingGroupsEntry "value" ComputeConfigScalingGroupSummary where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfigSummary'ScalingGroupsEntry'value
           (\ x__ y__
              -> x__ {_ComputeConfigSummary'ScalingGroupsEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ComputeConfigSummary'ScalingGroupsEntry "maybe'value" (Prelude.Maybe ComputeConfigScalingGroupSummary) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ComputeConfigSummary'ScalingGroupsEntry'value
           (\ x__ y__
              -> x__ {_ComputeConfigSummary'ScalingGroupsEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message ComputeConfigSummary'ScalingGroupsEntry where
  messageName _
    = Data.Text.pack
        "temporal.api.compute.v1.ComputeConfigSummary.ScalingGroupsEntry"
  packedMessageDescriptor _
    = "\n\
      \\DC2ScalingGroupsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2O\n\
      \\ENQvalue\CAN\STX \SOH(\v29.temporal.api.compute.v1.ComputeConfigScalingGroupSummaryR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor ComputeConfigSummary'ScalingGroupsEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ComputeConfigScalingGroupSummary)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor ComputeConfigSummary'ScalingGroupsEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ComputeConfigSummary'ScalingGroupsEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_ComputeConfigSummary'ScalingGroupsEntry'_unknownFields = y__})
  defMessage
    = ComputeConfigSummary'ScalingGroupsEntry'_constructor
        {_ComputeConfigSummary'ScalingGroupsEntry'key = Data.ProtoLens.fieldDefault,
         _ComputeConfigSummary'ScalingGroupsEntry'value = Prelude.Nothing,
         _ComputeConfigSummary'ScalingGroupsEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ComputeConfigSummary'ScalingGroupsEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser ComputeConfigSummary'ScalingGroupsEntry
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
          (do loop Data.ProtoLens.defMessage) "ScalingGroupsEntry"
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
instance Control.DeepSeq.NFData ComputeConfigSummary'ScalingGroupsEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ComputeConfigSummary'ScalingGroupsEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ComputeConfigSummary'ScalingGroupsEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_ComputeConfigSummary'ScalingGroupsEntry'value x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \$temporal/api/compute/v1/config.proto\DC2\ETBtemporal.api.compute.v1\SUB&temporal/api/compute/v1/provider.proto\SUB$temporal/api/compute/v1/scaler.proto\SUB&temporal/api/enums/v1/task_queue.proto\SUB google/protobuf/field_mask.proto\"\144\STX\n\
    \\EMComputeConfigScalingGroup\DC2N\n\
    \\DLEtask_queue_types\CAN\SOH \ETX(\SO2$.temporal.api.enums.v1.TaskQueueTypeR\SOtaskQueueTypes\DC2\GS\n\
    \\n\
    \region_ids\CAN\STX \ETX(\tR\tregionIds\DC2D\n\
    \\bprovider\CAN\ETX \SOH(\v2(.temporal.api.compute.v1.ComputeProviderR\bprovider\DC2>\n\
    \\ACKscaler\CAN\EOT \SOH(\v2&.temporal.api.compute.v1.ComputeScalerR\ACKscaler\"\231\SOH\n\
    \\rComputeConfig\DC2`\n\
    \\SOscaling_groups\CAN\SOH \ETX(\v29.temporal.api.compute.v1.ComputeConfig.ScalingGroupsEntryR\rscalingGroups\SUBt\n\
    \\DC2ScalingGroupsEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2H\n\
    \\ENQvalue\CAN\STX \SOH(\v22.temporal.api.compute.v1.ComputeConfigScalingGroupR\ENQvalue:\STX8\SOH\"\183\SOH\n\
    \\USComputeConfigScalingGroupUpdate\DC2W\n\
    \\rscaling_group\CAN\SOH \SOH(\v22.temporal.api.compute.v1.ComputeConfigScalingGroupR\fscalingGroup\DC2;\n\
    \\vupdate_mask\CAN\STX \SOH(\v2\SUB.google.protobuf.FieldMaskR\n\
    \updateMask\"\252\SOH\n\
    \\DC4ComputeConfigSummary\DC2g\n\
    \\SOscaling_groups\CAN\SOH \ETX(\v2@.temporal.api.compute.v1.ComputeConfigSummary.ScalingGroupsEntryR\rscalingGroups\SUB{\n\
    \\DC2ScalingGroupsEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2O\n\
    \\ENQvalue\CAN\STX \SOH(\v29.temporal.api.compute.v1.ComputeConfigScalingGroupSummaryR\ENQvalue:\STX8\SOH\"\182\SOH\n\
    \ ComputeConfigScalingGroupSummary\DC2N\n\
    \\DLEtask_queue_types\CAN\SOH \ETX(\SO2$.temporal.api.enums.v1.TaskQueueTypeR\SOtaskQueueTypes\DC2#\n\
    \\rprovider_type\CAN\STX \SOH(\tR\fproviderType\DC2\GS\n\
    \\n\
    \region_ids\CAN\ETX \ETX(\tR\tregionIdsB\141\SOH\n\
    \\SUBio.temporal.api.compute.v1B\vConfigProtoP\SOHZ%go.temporal.io/api/compute/v1;compute\170\STX\EMTemporalio.Api.Compute.V1\234\STX\FSTemporalio::Api::Compute::V1J\210\DC4\n\
    \\ACK\DC2\EOT\NUL\NULH\SOH\n\
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
    \\STX\ETX\NUL\DC2\ETX\v\NUL0\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\f\NUL.\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\r\NUL0\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\SO\NUL*\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\DLE\NUL!\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DLE\b!\n\
    \\163\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC4\EOTF\SUB\149\SOH Optional. The set of task queue types this scaling group serves.\n\
    \ If not provided, this scaling group serves all not otherwise defined\n\
    \ task types.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\DC4\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\DC4\r0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC41A\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC4DE\n\
    \x\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\CAN\EOT#\SUBk Optional. If set, this scaling group is used only while the namespace is\n\
    \ active in one of these regions.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\CAN\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\CAN\r\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\CAN\DC4\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\CAN!\"\n\
    \s\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\FS\EOT9\SUBf Stores instructions for a worker control plane controller how to respond\n\
    \ to worker lifeycle events.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\FS\EOT+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\FS,4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\FS78\n\
    \\156\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX \EOT5\SUB\142\SOH Informs a worker lifecycle controller *when* and *how often* to perform\n\
    \ certain worker lifecycle actions like starting a serverless worker.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX \EOT)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX *0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX 34\n\
    \\163\SOH\n\
    \\STX\EOT\SOH\DC2\EOT&\NUL0\SOH\SUB\150\SOH ComputeConfig stores configuration that helps a worker control plane\n\
    \ controller understand *when* and *how* to respond to worker lifecycle\n\
    \ events.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX&\b\NAK\n\
    \\160\ETX\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX/\EOT>\SUB\146\ETX Each scaling group describes a compute config for a specific subset of the worker\n\
    \ deployment version: covering a specific set of task types and/or regions.\n\
    \ Having different configurations for different task types, allows independent\n\
    \ tuning of activity and workflow task processing (for example).\n\
    \\n\
    \ The key of the map is the ID of the scaling group used to reference it in subsequent\n\
    \ update calls.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX/\EOT*\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX/+9\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX/<=\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT2\NUL=\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX2\b'\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX3\STX.\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX3\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX3\FS)\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX3,-\n\
    \\147\EOT\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX<\STX,\SUB\133\EOT Controls which fields from `scaling_group` will be applied. Semantics:\n\
    \ - Mask is ignored for new scaling groups (only applicable when scaling group already exists).\n\
    \ - Empty mask for an existing scaling group is no-op: no change.\n\
    \ - Non-empty mask for an existing scaling group will update/unset only to the fields\n\
    \   mentioned in the mask.\n\
    \ - Accepted paths: \"task_queue_types\", \"region_ids\", \"provider\", \"provider.type\", \"provider.details\",\n\
    \   \"provider.nexus_endpoint\", \"scaler\", \"scaler.type\", \"scaler.details\"\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX<\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX<\FS'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX<*+\n\
    \P\n\
    \\STX\EOT\ETX\DC2\EOT@\NULB\SOH\SUBD A subset of information in ComputeConfig optimized for list views.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX@\b\FS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXA\EOTE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETXA\EOT1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXA2@\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXACD\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOTD\NULH\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXD\b(\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXE\EOTF\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETXE\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETXE\r0\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXE1A\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXEDE\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXF\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXF\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXF\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXF\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXG\EOT#\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\ETXG\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETXG\r\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXG\DC4\RS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXG!\"b\ACKproto3"