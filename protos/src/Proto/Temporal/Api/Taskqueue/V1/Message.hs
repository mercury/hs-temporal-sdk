{- This file was auto-generated from temporal/api/taskqueue/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Taskqueue.V1.Message (
        BuildIdAssignmentRule(), BuildIdAssignmentRule'Ramp(..),
        _BuildIdAssignmentRule'PercentageRamp, BuildIdReachability(),
        CompatibleBuildIdRedirectRule(), CompatibleVersionSet(),
        ConcurrencyLimit(), ConcurrencyLimitConfig(), ConfigMetadata(),
        PollerGroupInfo(), PollerGroupsInfo(), PollerInfo(),
        PollerPoolInfo(), PollerScalingDecision(), RampByPercentage(),
        RateLimit(), RateLimitConfig(), StickyExecutionAttributes(),
        TaskIdBlock(), TaskQueue(), TaskQueueConfig(),
        TaskQueueConfig'FairnessWeightOverridesEntry(),
        TaskQueueMetadata(), TaskQueuePartitionMetadata(),
        TaskQueueReachability(), TaskQueueStats(), TaskQueueStatus(),
        TaskQueueTypeInfo(), TaskQueueVersionInfo(),
        TaskQueueVersionInfo'TypesInfoEntry(), TaskQueueVersionSelection(),
        TaskQueueVersioningInfo(), TimestampedBuildIdAssignmentRule(),
        TimestampedCompatibleBuildIdRedirectRule()
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
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Temporal.Api.Common.V1.Message
import qualified Proto.Temporal.Api.Deployment.V1.Message
import qualified Proto.Temporal.Api.Enums.V1.TaskQueue
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.targetBuildId' @:: Lens' BuildIdAssignmentRule Data.Text.Text@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'ramp' @:: Lens' BuildIdAssignmentRule (Prelude.Maybe BuildIdAssignmentRule'Ramp)@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'percentageRamp' @:: Lens' BuildIdAssignmentRule (Prelude.Maybe RampByPercentage)@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.percentageRamp' @:: Lens' BuildIdAssignmentRule RampByPercentage@ -}
data BuildIdAssignmentRule
  = BuildIdAssignmentRule'_constructor {_BuildIdAssignmentRule'targetBuildId :: !Data.Text.Text,
                                        _BuildIdAssignmentRule'ramp :: !(Prelude.Maybe BuildIdAssignmentRule'Ramp),
                                        _BuildIdAssignmentRule'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BuildIdAssignmentRule where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data BuildIdAssignmentRule'Ramp
  = BuildIdAssignmentRule'PercentageRamp !RampByPercentage
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField BuildIdAssignmentRule "targetBuildId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BuildIdAssignmentRule'targetBuildId
           (\ x__ y__ -> x__ {_BuildIdAssignmentRule'targetBuildId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BuildIdAssignmentRule "maybe'ramp" (Prelude.Maybe BuildIdAssignmentRule'Ramp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BuildIdAssignmentRule'ramp
           (\ x__ y__ -> x__ {_BuildIdAssignmentRule'ramp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BuildIdAssignmentRule "maybe'percentageRamp" (Prelude.Maybe RampByPercentage) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BuildIdAssignmentRule'ramp
           (\ x__ y__ -> x__ {_BuildIdAssignmentRule'ramp = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (BuildIdAssignmentRule'PercentageRamp x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap BuildIdAssignmentRule'PercentageRamp y__))
instance Data.ProtoLens.Field.HasField BuildIdAssignmentRule "percentageRamp" RampByPercentage where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BuildIdAssignmentRule'ramp
           (\ x__ y__ -> x__ {_BuildIdAssignmentRule'ramp = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (BuildIdAssignmentRule'PercentageRamp x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap BuildIdAssignmentRule'PercentageRamp y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message BuildIdAssignmentRule where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.BuildIdAssignmentRule"
  packedMessageDescriptor _
    = "\n\
      \\NAKBuildIdAssignmentRule\DC2&\n\
      \\SItarget_build_id\CAN\SOH \SOH(\tR\rtargetBuildId\DC2V\n\
      \\SIpercentage_ramp\CAN\ETX \SOH(\v2+.temporal.api.taskqueue.v1.RampByPercentageH\NULR\SOpercentageRampB\ACK\n\
      \\EOTramp"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        targetBuildId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target_build_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"targetBuildId")) ::
              Data.ProtoLens.FieldDescriptor BuildIdAssignmentRule
        percentageRamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "percentage_ramp"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RampByPercentage)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'percentageRamp")) ::
              Data.ProtoLens.FieldDescriptor BuildIdAssignmentRule
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, targetBuildId__field_descriptor),
           (Data.ProtoLens.Tag 3, percentageRamp__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BuildIdAssignmentRule'_unknownFields
        (\ x__ y__ -> x__ {_BuildIdAssignmentRule'_unknownFields = y__})
  defMessage
    = BuildIdAssignmentRule'_constructor
        {_BuildIdAssignmentRule'targetBuildId = Data.ProtoLens.fieldDefault,
         _BuildIdAssignmentRule'ramp = Prelude.Nothing,
         _BuildIdAssignmentRule'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BuildIdAssignmentRule
          -> Data.ProtoLens.Encoding.Bytes.Parser BuildIdAssignmentRule
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
                                       "target_build_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"targetBuildId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "percentage_ramp"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"percentageRamp") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BuildIdAssignmentRule"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"targetBuildId") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ramp") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (BuildIdAssignmentRule'PercentageRamp v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData BuildIdAssignmentRule where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BuildIdAssignmentRule'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BuildIdAssignmentRule'targetBuildId x__)
                (Control.DeepSeq.deepseq (_BuildIdAssignmentRule'ramp x__) ()))
instance Control.DeepSeq.NFData BuildIdAssignmentRule'Ramp where
  rnf (BuildIdAssignmentRule'PercentageRamp x__)
    = Control.DeepSeq.rnf x__
_BuildIdAssignmentRule'PercentageRamp ::
  Data.ProtoLens.Prism.Prism' BuildIdAssignmentRule'Ramp RampByPercentage
_BuildIdAssignmentRule'PercentageRamp
  = Data.ProtoLens.Prism.prism'
      BuildIdAssignmentRule'PercentageRamp
      (\ p__
         -> case p__ of
              (BuildIdAssignmentRule'PercentageRamp p__val)
                -> Prelude.Just p__val)
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.buildId' @:: Lens' BuildIdReachability Data.Text.Text@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.taskQueueReachability' @:: Lens' BuildIdReachability [TaskQueueReachability]@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.vec'taskQueueReachability' @:: Lens' BuildIdReachability (Data.Vector.Vector TaskQueueReachability)@ -}
data BuildIdReachability
  = BuildIdReachability'_constructor {_BuildIdReachability'buildId :: !Data.Text.Text,
                                      _BuildIdReachability'taskQueueReachability :: !(Data.Vector.Vector TaskQueueReachability),
                                      _BuildIdReachability'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BuildIdReachability where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BuildIdReachability "buildId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BuildIdReachability'buildId
           (\ x__ y__ -> x__ {_BuildIdReachability'buildId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BuildIdReachability "taskQueueReachability" [TaskQueueReachability] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BuildIdReachability'taskQueueReachability
           (\ x__ y__
              -> x__ {_BuildIdReachability'taskQueueReachability = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField BuildIdReachability "vec'taskQueueReachability" (Data.Vector.Vector TaskQueueReachability) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BuildIdReachability'taskQueueReachability
           (\ x__ y__
              -> x__ {_BuildIdReachability'taskQueueReachability = y__}))
        Prelude.id
instance Data.ProtoLens.Message BuildIdReachability where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.BuildIdReachability"
  packedMessageDescriptor _
    = "\n\
      \\DC3BuildIdReachability\DC2\EM\n\
      \\bbuild_id\CAN\SOH \SOH(\tR\abuildId\DC2h\n\
      \\ETBtask_queue_reachability\CAN\STX \ETX(\v20.temporal.api.taskqueue.v1.TaskQueueReachabilityR\NAKtaskQueueReachability"
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
              Data.ProtoLens.FieldDescriptor BuildIdReachability
        taskQueueReachability__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue_reachability"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TaskQueueReachability)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"taskQueueReachability")) ::
              Data.ProtoLens.FieldDescriptor BuildIdReachability
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, buildId__field_descriptor),
           (Data.ProtoLens.Tag 2, taskQueueReachability__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BuildIdReachability'_unknownFields
        (\ x__ y__ -> x__ {_BuildIdReachability'_unknownFields = y__})
  defMessage
    = BuildIdReachability'_constructor
        {_BuildIdReachability'buildId = Data.ProtoLens.fieldDefault,
         _BuildIdReachability'taskQueueReachability = Data.Vector.Generic.empty,
         _BuildIdReachability'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BuildIdReachability
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld TaskQueueReachability
             -> Data.ProtoLens.Encoding.Bytes.Parser BuildIdReachability
        loop x mutable'taskQueueReachability
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'taskQueueReachability <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                           mutable'taskQueueReachability)
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
                              (Data.ProtoLens.Field.field @"vec'taskQueueReachability")
                              frozen'taskQueueReachability x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "build_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"buildId") y x)
                                  mutable'taskQueueReachability
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "task_queue_reachability"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'taskQueueReachability y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'taskQueueReachability
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'taskQueueReachability <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'taskQueueReachability)
          "BuildIdReachability"
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
                      (Data.ProtoLens.Field.field @"vec'taskQueueReachability") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData BuildIdReachability where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BuildIdReachability'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BuildIdReachability'buildId x__)
                (Control.DeepSeq.deepseq
                   (_BuildIdReachability'taskQueueReachability x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.sourceBuildId' @:: Lens' CompatibleBuildIdRedirectRule Data.Text.Text@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.targetBuildId' @:: Lens' CompatibleBuildIdRedirectRule Data.Text.Text@ -}
data CompatibleBuildIdRedirectRule
  = CompatibleBuildIdRedirectRule'_constructor {_CompatibleBuildIdRedirectRule'sourceBuildId :: !Data.Text.Text,
                                                _CompatibleBuildIdRedirectRule'targetBuildId :: !Data.Text.Text,
                                                _CompatibleBuildIdRedirectRule'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CompatibleBuildIdRedirectRule where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CompatibleBuildIdRedirectRule "sourceBuildId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CompatibleBuildIdRedirectRule'sourceBuildId
           (\ x__ y__
              -> x__ {_CompatibleBuildIdRedirectRule'sourceBuildId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CompatibleBuildIdRedirectRule "targetBuildId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CompatibleBuildIdRedirectRule'targetBuildId
           (\ x__ y__
              -> x__ {_CompatibleBuildIdRedirectRule'targetBuildId = y__}))
        Prelude.id
instance Data.ProtoLens.Message CompatibleBuildIdRedirectRule where
  messageName _
    = Data.Text.pack
        "temporal.api.taskqueue.v1.CompatibleBuildIdRedirectRule"
  packedMessageDescriptor _
    = "\n\
      \\GSCompatibleBuildIdRedirectRule\DC2&\n\
      \\SIsource_build_id\CAN\SOH \SOH(\tR\rsourceBuildId\DC2&\n\
      \\SItarget_build_id\CAN\STX \SOH(\tR\rtargetBuildId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sourceBuildId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_build_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sourceBuildId")) ::
              Data.ProtoLens.FieldDescriptor CompatibleBuildIdRedirectRule
        targetBuildId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target_build_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"targetBuildId")) ::
              Data.ProtoLens.FieldDescriptor CompatibleBuildIdRedirectRule
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, sourceBuildId__field_descriptor),
           (Data.ProtoLens.Tag 2, targetBuildId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CompatibleBuildIdRedirectRule'_unknownFields
        (\ x__ y__
           -> x__ {_CompatibleBuildIdRedirectRule'_unknownFields = y__})
  defMessage
    = CompatibleBuildIdRedirectRule'_constructor
        {_CompatibleBuildIdRedirectRule'sourceBuildId = Data.ProtoLens.fieldDefault,
         _CompatibleBuildIdRedirectRule'targetBuildId = Data.ProtoLens.fieldDefault,
         _CompatibleBuildIdRedirectRule'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CompatibleBuildIdRedirectRule
          -> Data.ProtoLens.Encoding.Bytes.Parser CompatibleBuildIdRedirectRule
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
                                       "source_build_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sourceBuildId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "target_build_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"targetBuildId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CompatibleBuildIdRedirectRule"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"sourceBuildId") _x
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
                         (Data.ProtoLens.Field.field @"targetBuildId") _x
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
instance Control.DeepSeq.NFData CompatibleBuildIdRedirectRule where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CompatibleBuildIdRedirectRule'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CompatibleBuildIdRedirectRule'sourceBuildId x__)
                (Control.DeepSeq.deepseq
                   (_CompatibleBuildIdRedirectRule'targetBuildId x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.buildIds' @:: Lens' CompatibleVersionSet [Data.Text.Text]@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.vec'buildIds' @:: Lens' CompatibleVersionSet (Data.Vector.Vector Data.Text.Text)@ -}
data CompatibleVersionSet
  = CompatibleVersionSet'_constructor {_CompatibleVersionSet'buildIds :: !(Data.Vector.Vector Data.Text.Text),
                                       _CompatibleVersionSet'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CompatibleVersionSet where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CompatibleVersionSet "buildIds" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CompatibleVersionSet'buildIds
           (\ x__ y__ -> x__ {_CompatibleVersionSet'buildIds = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CompatibleVersionSet "vec'buildIds" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CompatibleVersionSet'buildIds
           (\ x__ y__ -> x__ {_CompatibleVersionSet'buildIds = y__}))
        Prelude.id
instance Data.ProtoLens.Message CompatibleVersionSet where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.CompatibleVersionSet"
  packedMessageDescriptor _
    = "\n\
      \\DC4CompatibleVersionSet\DC2\ESC\n\
      \\tbuild_ids\CAN\SOH \ETX(\tR\bbuildIds"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        buildIds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "build_ids"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"buildIds")) ::
              Data.ProtoLens.FieldDescriptor CompatibleVersionSet
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, buildIds__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CompatibleVersionSet'_unknownFields
        (\ x__ y__ -> x__ {_CompatibleVersionSet'_unknownFields = y__})
  defMessage
    = CompatibleVersionSet'_constructor
        {_CompatibleVersionSet'buildIds = Data.Vector.Generic.empty,
         _CompatibleVersionSet'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CompatibleVersionSet
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser CompatibleVersionSet
        loop x mutable'buildIds
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'buildIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'buildIds)
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
                              (Data.ProtoLens.Field.field @"vec'buildIds") frozen'buildIds x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getText
                                              (Prelude.fromIntegral len))
                                        "build_ids"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'buildIds y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'buildIds
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'buildIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'buildIds)
          "CompatibleVersionSet"
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
                           Data.Text.Encoding.encodeUtf8 _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'buildIds") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CompatibleVersionSet where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CompatibleVersionSet'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CompatibleVersionSet'buildIds x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.concurrentTasks' @:: Lens' ConcurrencyLimit Data.Int.Int32@ -}
data ConcurrencyLimit
  = ConcurrencyLimit'_constructor {_ConcurrencyLimit'concurrentTasks :: !Data.Int.Int32,
                                   _ConcurrencyLimit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConcurrencyLimit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ConcurrencyLimit "concurrentTasks" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConcurrencyLimit'concurrentTasks
           (\ x__ y__ -> x__ {_ConcurrencyLimit'concurrentTasks = y__}))
        Prelude.id
instance Data.ProtoLens.Message ConcurrencyLimit where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.ConcurrencyLimit"
  packedMessageDescriptor _
    = "\n\
      \\DLEConcurrencyLimit\DC2)\n\
      \\DLEconcurrent_tasks\CAN\SOH \SOH(\ENQR\SIconcurrentTasks"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        concurrentTasks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "concurrent_tasks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"concurrentTasks")) ::
              Data.ProtoLens.FieldDescriptor ConcurrencyLimit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, concurrentTasks__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ConcurrencyLimit'_unknownFields
        (\ x__ y__ -> x__ {_ConcurrencyLimit'_unknownFields = y__})
  defMessage
    = ConcurrencyLimit'_constructor
        {_ConcurrencyLimit'concurrentTasks = Data.ProtoLens.fieldDefault,
         _ConcurrencyLimit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ConcurrencyLimit
          -> Data.ProtoLens.Encoding.Bytes.Parser ConcurrencyLimit
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
                                       "concurrent_tasks"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"concurrentTasks") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ConcurrencyLimit"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"concurrentTasks") _x
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
instance Control.DeepSeq.NFData ConcurrencyLimit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ConcurrencyLimit'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ConcurrencyLimit'concurrentTasks x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.concurrencyLimit' @:: Lens' ConcurrencyLimitConfig ConcurrencyLimit@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'concurrencyLimit' @:: Lens' ConcurrencyLimitConfig (Prelude.Maybe ConcurrencyLimit)@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.metadata' @:: Lens' ConcurrencyLimitConfig ConfigMetadata@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'metadata' @:: Lens' ConcurrencyLimitConfig (Prelude.Maybe ConfigMetadata)@ -}
data ConcurrencyLimitConfig
  = ConcurrencyLimitConfig'_constructor {_ConcurrencyLimitConfig'concurrencyLimit :: !(Prelude.Maybe ConcurrencyLimit),
                                         _ConcurrencyLimitConfig'metadata :: !(Prelude.Maybe ConfigMetadata),
                                         _ConcurrencyLimitConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConcurrencyLimitConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ConcurrencyLimitConfig "concurrencyLimit" ConcurrencyLimit where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConcurrencyLimitConfig'concurrencyLimit
           (\ x__ y__
              -> x__ {_ConcurrencyLimitConfig'concurrencyLimit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ConcurrencyLimitConfig "maybe'concurrencyLimit" (Prelude.Maybe ConcurrencyLimit) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConcurrencyLimitConfig'concurrencyLimit
           (\ x__ y__
              -> x__ {_ConcurrencyLimitConfig'concurrencyLimit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConcurrencyLimitConfig "metadata" ConfigMetadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConcurrencyLimitConfig'metadata
           (\ x__ y__ -> x__ {_ConcurrencyLimitConfig'metadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ConcurrencyLimitConfig "maybe'metadata" (Prelude.Maybe ConfigMetadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConcurrencyLimitConfig'metadata
           (\ x__ y__ -> x__ {_ConcurrencyLimitConfig'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Message ConcurrencyLimitConfig where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.ConcurrencyLimitConfig"
  packedMessageDescriptor _
    = "\n\
      \\SYNConcurrencyLimitConfig\DC2X\n\
      \\DC1concurrency_limit\CAN\SOH \SOH(\v2+.temporal.api.taskqueue.v1.ConcurrencyLimitR\DLEconcurrencyLimit\DC2E\n\
      \\bmetadata\CAN\STX \SOH(\v2).temporal.api.taskqueue.v1.ConfigMetadataR\bmetadata"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        concurrencyLimit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "concurrency_limit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ConcurrencyLimit)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'concurrencyLimit")) ::
              Data.ProtoLens.FieldDescriptor ConcurrencyLimitConfig
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ConfigMetadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadata")) ::
              Data.ProtoLens.FieldDescriptor ConcurrencyLimitConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, concurrencyLimit__field_descriptor),
           (Data.ProtoLens.Tag 2, metadata__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ConcurrencyLimitConfig'_unknownFields
        (\ x__ y__ -> x__ {_ConcurrencyLimitConfig'_unknownFields = y__})
  defMessage
    = ConcurrencyLimitConfig'_constructor
        {_ConcurrencyLimitConfig'concurrencyLimit = Prelude.Nothing,
         _ConcurrencyLimitConfig'metadata = Prelude.Nothing,
         _ConcurrencyLimitConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ConcurrencyLimitConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser ConcurrencyLimitConfig
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
                                       "concurrency_limit"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"concurrencyLimit") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ConcurrencyLimitConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'concurrencyLimit") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'metadata") _x
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
instance Control.DeepSeq.NFData ConcurrencyLimitConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ConcurrencyLimitConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ConcurrencyLimitConfig'concurrencyLimit x__)
                (Control.DeepSeq.deepseq
                   (_ConcurrencyLimitConfig'metadata x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.reason' @:: Lens' ConfigMetadata Data.Text.Text@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.updateIdentity' @:: Lens' ConfigMetadata Data.Text.Text@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.updateTime' @:: Lens' ConfigMetadata Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'updateTime' @:: Lens' ConfigMetadata (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data ConfigMetadata
  = ConfigMetadata'_constructor {_ConfigMetadata'reason :: !Data.Text.Text,
                                 _ConfigMetadata'updateIdentity :: !Data.Text.Text,
                                 _ConfigMetadata'updateTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                 _ConfigMetadata'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConfigMetadata where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ConfigMetadata "reason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigMetadata'reason
           (\ x__ y__ -> x__ {_ConfigMetadata'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConfigMetadata "updateIdentity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigMetadata'updateIdentity
           (\ x__ y__ -> x__ {_ConfigMetadata'updateIdentity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConfigMetadata "updateTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigMetadata'updateTime
           (\ x__ y__ -> x__ {_ConfigMetadata'updateTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ConfigMetadata "maybe'updateTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigMetadata'updateTime
           (\ x__ y__ -> x__ {_ConfigMetadata'updateTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message ConfigMetadata where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.ConfigMetadata"
  packedMessageDescriptor _
    = "\n\
      \\SOConfigMetadata\DC2\SYN\n\
      \\ACKreason\CAN\SOH \SOH(\tR\ACKreason\DC2'\n\
      \\SIupdate_identity\CAN\STX \SOH(\tR\SOupdateIdentity\DC2;\n\
      \\vupdate_time\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \updateTime"
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
              Data.ProtoLens.FieldDescriptor ConfigMetadata
        updateIdentity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "update_identity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"updateIdentity")) ::
              Data.ProtoLens.FieldDescriptor ConfigMetadata
        updateTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "update_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'updateTime")) ::
              Data.ProtoLens.FieldDescriptor ConfigMetadata
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, reason__field_descriptor),
           (Data.ProtoLens.Tag 2, updateIdentity__field_descriptor),
           (Data.ProtoLens.Tag 3, updateTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ConfigMetadata'_unknownFields
        (\ x__ y__ -> x__ {_ConfigMetadata'_unknownFields = y__})
  defMessage
    = ConfigMetadata'_constructor
        {_ConfigMetadata'reason = Data.ProtoLens.fieldDefault,
         _ConfigMetadata'updateIdentity = Data.ProtoLens.fieldDefault,
         _ConfigMetadata'updateTime = Prelude.Nothing,
         _ConfigMetadata'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ConfigMetadata
          -> Data.ProtoLens.Encoding.Bytes.Parser ConfigMetadata
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
                                       "update_identity"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"updateIdentity") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "update_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"updateTime") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ConfigMetadata"
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
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"updateIdentity") _x
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
                          (Data.ProtoLens.Field.field @"maybe'updateTime") _x
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
instance Control.DeepSeq.NFData ConfigMetadata where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ConfigMetadata'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ConfigMetadata'reason x__)
                (Control.DeepSeq.deepseq
                   (_ConfigMetadata'updateIdentity x__)
                   (Control.DeepSeq.deepseq (_ConfigMetadata'updateTime x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.id' @:: Lens' PollerGroupInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.weight' @:: Lens' PollerGroupInfo Prelude.Float@ -}
data PollerGroupInfo
  = PollerGroupInfo'_constructor {_PollerGroupInfo'id :: !Data.Text.Text,
                                  _PollerGroupInfo'weight :: !Prelude.Float,
                                  _PollerGroupInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PollerGroupInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PollerGroupInfo "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PollerGroupInfo'id (\ x__ y__ -> x__ {_PollerGroupInfo'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PollerGroupInfo "weight" Prelude.Float where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PollerGroupInfo'weight
           (\ x__ y__ -> x__ {_PollerGroupInfo'weight = y__}))
        Prelude.id
instance Data.ProtoLens.Message PollerGroupInfo where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.PollerGroupInfo"
  packedMessageDescriptor _
    = "\n\
      \\SIPollerGroupInfo\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\tR\STXid\DC2\SYN\n\
      \\ACKweight\CAN\STX \SOH(\STXR\ACKweight"
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
              Data.ProtoLens.FieldDescriptor PollerGroupInfo
        weight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "weight"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"weight")) ::
              Data.ProtoLens.FieldDescriptor PollerGroupInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, weight__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PollerGroupInfo'_unknownFields
        (\ x__ y__ -> x__ {_PollerGroupInfo'_unknownFields = y__})
  defMessage
    = PollerGroupInfo'_constructor
        {_PollerGroupInfo'id = Data.ProtoLens.fieldDefault,
         _PollerGroupInfo'weight = Data.ProtoLens.fieldDefault,
         _PollerGroupInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PollerGroupInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser PollerGroupInfo
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
                        21
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToFloat
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "weight"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"weight") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PollerGroupInfo"
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"weight") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 21)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putFixed32
                            Data.ProtoLens.Encoding.Bytes.floatToWord _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData PollerGroupInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PollerGroupInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PollerGroupInfo'id x__)
                (Control.DeepSeq.deepseq (_PollerGroupInfo'weight x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.version' @:: Lens' PollerGroupsInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.pollerGroups' @:: Lens' PollerGroupsInfo [PollerGroupInfo]@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.vec'pollerGroups' @:: Lens' PollerGroupsInfo (Data.Vector.Vector PollerGroupInfo)@ -}
data PollerGroupsInfo
  = PollerGroupsInfo'_constructor {_PollerGroupsInfo'version :: !Data.Int.Int64,
                                   _PollerGroupsInfo'pollerGroups :: !(Data.Vector.Vector PollerGroupInfo),
                                   _PollerGroupsInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PollerGroupsInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PollerGroupsInfo "version" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PollerGroupsInfo'version
           (\ x__ y__ -> x__ {_PollerGroupsInfo'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PollerGroupsInfo "pollerGroups" [PollerGroupInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PollerGroupsInfo'pollerGroups
           (\ x__ y__ -> x__ {_PollerGroupsInfo'pollerGroups = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField PollerGroupsInfo "vec'pollerGroups" (Data.Vector.Vector PollerGroupInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PollerGroupsInfo'pollerGroups
           (\ x__ y__ -> x__ {_PollerGroupsInfo'pollerGroups = y__}))
        Prelude.id
instance Data.ProtoLens.Message PollerGroupsInfo where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.PollerGroupsInfo"
  packedMessageDescriptor _
    = "\n\
      \\DLEPollerGroupsInfo\DC2\CAN\n\
      \\aversion\CAN\SOH \SOH(\ETXR\aversion\DC2O\n\
      \\rpoller_groups\CAN\STX \ETX(\v2*.temporal.api.taskqueue.v1.PollerGroupInfoR\fpollerGroups"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor PollerGroupsInfo
        pollerGroups__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "poller_groups"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PollerGroupInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"pollerGroups")) ::
              Data.ProtoLens.FieldDescriptor PollerGroupsInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, version__field_descriptor),
           (Data.ProtoLens.Tag 2, pollerGroups__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PollerGroupsInfo'_unknownFields
        (\ x__ y__ -> x__ {_PollerGroupsInfo'_unknownFields = y__})
  defMessage
    = PollerGroupsInfo'_constructor
        {_PollerGroupsInfo'version = Data.ProtoLens.fieldDefault,
         _PollerGroupsInfo'pollerGroups = Data.Vector.Generic.empty,
         _PollerGroupsInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PollerGroupsInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld PollerGroupInfo
             -> Data.ProtoLens.Encoding.Bytes.Parser PollerGroupsInfo
        loop x mutable'pollerGroups
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'pollerGroups <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'pollerGroups)
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
                              (Data.ProtoLens.Field.field @"vec'pollerGroups")
                              frozen'pollerGroups x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "version"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                                  mutable'pollerGroups
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "poller_groups"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'pollerGroups y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'pollerGroups
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'pollerGroups <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'pollerGroups)
          "PollerGroupsInfo"
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
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
                      (Data.ProtoLens.Field.field @"vec'pollerGroups") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData PollerGroupsInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PollerGroupsInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PollerGroupsInfo'version x__)
                (Control.DeepSeq.deepseq (_PollerGroupsInfo'pollerGroups x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.lastAccessTime' @:: Lens' PollerInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'lastAccessTime' @:: Lens' PollerInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.identity' @:: Lens' PollerInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.ratePerSecond' @:: Lens' PollerInfo Prelude.Double@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.workerVersionCapabilities' @:: Lens' PollerInfo Proto.Temporal.Api.Common.V1.Message.WorkerVersionCapabilities@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'workerVersionCapabilities' @:: Lens' PollerInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkerVersionCapabilities)@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.deploymentOptions' @:: Lens' PollerInfo Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentOptions@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'deploymentOptions' @:: Lens' PollerInfo (Prelude.Maybe Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentOptions)@ -}
data PollerInfo
  = PollerInfo'_constructor {_PollerInfo'lastAccessTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                             _PollerInfo'identity :: !Data.Text.Text,
                             _PollerInfo'ratePerSecond :: !Prelude.Double,
                             _PollerInfo'workerVersionCapabilities :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkerVersionCapabilities),
                             _PollerInfo'deploymentOptions :: !(Prelude.Maybe Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentOptions),
                             _PollerInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PollerInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PollerInfo "lastAccessTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PollerInfo'lastAccessTime
           (\ x__ y__ -> x__ {_PollerInfo'lastAccessTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PollerInfo "maybe'lastAccessTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PollerInfo'lastAccessTime
           (\ x__ y__ -> x__ {_PollerInfo'lastAccessTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PollerInfo "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PollerInfo'identity
           (\ x__ y__ -> x__ {_PollerInfo'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PollerInfo "ratePerSecond" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PollerInfo'ratePerSecond
           (\ x__ y__ -> x__ {_PollerInfo'ratePerSecond = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PollerInfo "workerVersionCapabilities" Proto.Temporal.Api.Common.V1.Message.WorkerVersionCapabilities where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PollerInfo'workerVersionCapabilities
           (\ x__ y__ -> x__ {_PollerInfo'workerVersionCapabilities = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PollerInfo "maybe'workerVersionCapabilities" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkerVersionCapabilities) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PollerInfo'workerVersionCapabilities
           (\ x__ y__ -> x__ {_PollerInfo'workerVersionCapabilities = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PollerInfo "deploymentOptions" Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PollerInfo'deploymentOptions
           (\ x__ y__ -> x__ {_PollerInfo'deploymentOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PollerInfo "maybe'deploymentOptions" (Prelude.Maybe Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PollerInfo'deploymentOptions
           (\ x__ y__ -> x__ {_PollerInfo'deploymentOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Message PollerInfo where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.PollerInfo"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \PollerInfo\DC2D\n\
      \\DLElast_access_time\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\SOlastAccessTime\DC2\SUB\n\
      \\bidentity\CAN\STX \SOH(\tR\bidentity\DC2&\n\
      \\SIrate_per_second\CAN\ETX \SOH(\SOHR\rratePerSecond\DC2u\n\
      \\ESCworker_version_capabilities\CAN\EOT \SOH(\v21.temporal.api.common.v1.WorkerVersionCapabilitiesR\EMworkerVersionCapabilitiesB\STX\CAN\SOH\DC2b\n\
      \\DC2deployment_options\CAN\ENQ \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentOptionsR\DC1deploymentOptions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        lastAccessTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_access_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastAccessTime")) ::
              Data.ProtoLens.FieldDescriptor PollerInfo
        identity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "identity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"identity")) ::
              Data.ProtoLens.FieldDescriptor PollerInfo
        ratePerSecond__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rate_per_second"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"ratePerSecond")) ::
              Data.ProtoLens.FieldDescriptor PollerInfo
        workerVersionCapabilities__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "worker_version_capabilities"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.WorkerVersionCapabilities)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workerVersionCapabilities")) ::
              Data.ProtoLens.FieldDescriptor PollerInfo
        deploymentOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deployment_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'deploymentOptions")) ::
              Data.ProtoLens.FieldDescriptor PollerInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, lastAccessTime__field_descriptor),
           (Data.ProtoLens.Tag 2, identity__field_descriptor),
           (Data.ProtoLens.Tag 3, ratePerSecond__field_descriptor),
           (Data.ProtoLens.Tag 4, 
            workerVersionCapabilities__field_descriptor),
           (Data.ProtoLens.Tag 5, deploymentOptions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PollerInfo'_unknownFields
        (\ x__ y__ -> x__ {_PollerInfo'_unknownFields = y__})
  defMessage
    = PollerInfo'_constructor
        {_PollerInfo'lastAccessTime = Prelude.Nothing,
         _PollerInfo'identity = Data.ProtoLens.fieldDefault,
         _PollerInfo'ratePerSecond = Data.ProtoLens.fieldDefault,
         _PollerInfo'workerVersionCapabilities = Prelude.Nothing,
         _PollerInfo'deploymentOptions = Prelude.Nothing,
         _PollerInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PollerInfo -> Data.ProtoLens.Encoding.Bytes.Parser PollerInfo
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
                                       "last_access_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastAccessTime") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "identity"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"identity") y x)
                        25
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "rate_per_second"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"ratePerSecond") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "worker_version_capabilities"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workerVersionCapabilities") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "deployment_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"deploymentOptions") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PollerInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'lastAccessTime") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"identity") _x
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
                            (Data.ProtoLens.Field.field @"ratePerSecond") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 25)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putFixed64
                               Data.ProtoLens.Encoding.Bytes.doubleToWord _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'workerVersionCapabilities") _x
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
                                (Data.ProtoLens.Field.field @"maybe'deploymentOptions") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData PollerInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PollerInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PollerInfo'lastAccessTime x__)
                (Control.DeepSeq.deepseq
                   (_PollerInfo'identity x__)
                   (Control.DeepSeq.deepseq
                      (_PollerInfo'ratePerSecond x__)
                      (Control.DeepSeq.deepseq
                         (_PollerInfo'workerVersionCapabilities x__)
                         (Control.DeepSeq.deepseq
                            (_PollerInfo'deploymentOptions x__) ())))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.targetPollers' @:: Lens' PollerPoolInfo Data.Int.Int32@ -}
data PollerPoolInfo
  = PollerPoolInfo'_constructor {_PollerPoolInfo'targetPollers :: !Data.Int.Int32,
                                 _PollerPoolInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PollerPoolInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PollerPoolInfo "targetPollers" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PollerPoolInfo'targetPollers
           (\ x__ y__ -> x__ {_PollerPoolInfo'targetPollers = y__}))
        Prelude.id
instance Data.ProtoLens.Message PollerPoolInfo where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.PollerPoolInfo"
  packedMessageDescriptor _
    = "\n\
      \\SOPollerPoolInfo\DC2%\n\
      \\SOtarget_pollers\CAN\SOH \SOH(\ENQR\rtargetPollers"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        targetPollers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target_pollers"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"targetPollers")) ::
              Data.ProtoLens.FieldDescriptor PollerPoolInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, targetPollers__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PollerPoolInfo'_unknownFields
        (\ x__ y__ -> x__ {_PollerPoolInfo'_unknownFields = y__})
  defMessage
    = PollerPoolInfo'_constructor
        {_PollerPoolInfo'targetPollers = Data.ProtoLens.fieldDefault,
         _PollerPoolInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PollerPoolInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser PollerPoolInfo
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
                                       "target_pollers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"targetPollers") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PollerPoolInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"targetPollers") _x
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
instance Control.DeepSeq.NFData PollerPoolInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PollerPoolInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq (_PollerPoolInfo'targetPollers x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.pollRequestDeltaSuggestion' @:: Lens' PollerScalingDecision Data.Int.Int32@ -}
data PollerScalingDecision
  = PollerScalingDecision'_constructor {_PollerScalingDecision'pollRequestDeltaSuggestion :: !Data.Int.Int32,
                                        _PollerScalingDecision'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PollerScalingDecision where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PollerScalingDecision "pollRequestDeltaSuggestion" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PollerScalingDecision'pollRequestDeltaSuggestion
           (\ x__ y__
              -> x__ {_PollerScalingDecision'pollRequestDeltaSuggestion = y__}))
        Prelude.id
instance Data.ProtoLens.Message PollerScalingDecision where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.PollerScalingDecision"
  packedMessageDescriptor _
    = "\n\
      \\NAKPollerScalingDecision\DC2A\n\
      \\GSpoll_request_delta_suggestion\CAN\SOH \SOH(\ENQR\SUBpollRequestDeltaSuggestion"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pollRequestDeltaSuggestion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "poll_request_delta_suggestion"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"pollRequestDeltaSuggestion")) ::
              Data.ProtoLens.FieldDescriptor PollerScalingDecision
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, 
            pollRequestDeltaSuggestion__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PollerScalingDecision'_unknownFields
        (\ x__ y__ -> x__ {_PollerScalingDecision'_unknownFields = y__})
  defMessage
    = PollerScalingDecision'_constructor
        {_PollerScalingDecision'pollRequestDeltaSuggestion = Data.ProtoLens.fieldDefault,
         _PollerScalingDecision'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PollerScalingDecision
          -> Data.ProtoLens.Encoding.Bytes.Parser PollerScalingDecision
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
                                       "poll_request_delta_suggestion"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"pollRequestDeltaSuggestion") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PollerScalingDecision"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"pollRequestDeltaSuggestion") _x
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
instance Control.DeepSeq.NFData PollerScalingDecision where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PollerScalingDecision'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PollerScalingDecision'pollRequestDeltaSuggestion x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.rampPercentage' @:: Lens' RampByPercentage Prelude.Float@ -}
data RampByPercentage
  = RampByPercentage'_constructor {_RampByPercentage'rampPercentage :: !Prelude.Float,
                                   _RampByPercentage'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RampByPercentage where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RampByPercentage "rampPercentage" Prelude.Float where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RampByPercentage'rampPercentage
           (\ x__ y__ -> x__ {_RampByPercentage'rampPercentage = y__}))
        Prelude.id
instance Data.ProtoLens.Message RampByPercentage where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.RampByPercentage"
  packedMessageDescriptor _
    = "\n\
      \\DLERampByPercentage\DC2'\n\
      \\SIramp_percentage\CAN\SOH \SOH(\STXR\SOrampPercentage"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rampPercentage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ramp_percentage"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rampPercentage")) ::
              Data.ProtoLens.FieldDescriptor RampByPercentage
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, rampPercentage__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RampByPercentage'_unknownFields
        (\ x__ y__ -> x__ {_RampByPercentage'_unknownFields = y__})
  defMessage
    = RampByPercentage'_constructor
        {_RampByPercentage'rampPercentage = Data.ProtoLens.fieldDefault,
         _RampByPercentage'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RampByPercentage
          -> Data.ProtoLens.Encoding.Bytes.Parser RampByPercentage
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
                        13
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToFloat
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "ramp_percentage"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rampPercentage") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RampByPercentage"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"rampPercentage") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 13)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putFixed32
                         Data.ProtoLens.Encoding.Bytes.floatToWord _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RampByPercentage where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RampByPercentage'_unknownFields x__)
             (Control.DeepSeq.deepseq (_RampByPercentage'rampPercentage x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.requestsPerSecond' @:: Lens' RateLimit Prelude.Float@ -}
data RateLimit
  = RateLimit'_constructor {_RateLimit'requestsPerSecond :: !Prelude.Float,
                            _RateLimit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RateLimit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RateLimit "requestsPerSecond" Prelude.Float where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimit'requestsPerSecond
           (\ x__ y__ -> x__ {_RateLimit'requestsPerSecond = y__}))
        Prelude.id
instance Data.ProtoLens.Message RateLimit where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.RateLimit"
  packedMessageDescriptor _
    = "\n\
      \\tRateLimit\DC2.\n\
      \\DC3requests_per_second\CAN\SOH \SOH(\STXR\DC1requestsPerSecond"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        requestsPerSecond__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "requests_per_second"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestsPerSecond")) ::
              Data.ProtoLens.FieldDescriptor RateLimit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, requestsPerSecond__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RateLimit'_unknownFields
        (\ x__ y__ -> x__ {_RateLimit'_unknownFields = y__})
  defMessage
    = RateLimit'_constructor
        {_RateLimit'requestsPerSecond = Data.ProtoLens.fieldDefault,
         _RateLimit'_unknownFields = []}
  parseMessage
    = let
        loop :: RateLimit -> Data.ProtoLens.Encoding.Bytes.Parser RateLimit
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
                        13
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToFloat
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "requests_per_second"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestsPerSecond") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RateLimit"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"requestsPerSecond") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 13)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putFixed32
                         Data.ProtoLens.Encoding.Bytes.floatToWord _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RateLimit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RateLimit'_unknownFields x__)
             (Control.DeepSeq.deepseq (_RateLimit'requestsPerSecond x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.rateLimit' @:: Lens' RateLimitConfig RateLimit@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'rateLimit' @:: Lens' RateLimitConfig (Prelude.Maybe RateLimit)@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.metadata' @:: Lens' RateLimitConfig ConfigMetadata@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'metadata' @:: Lens' RateLimitConfig (Prelude.Maybe ConfigMetadata)@ -}
data RateLimitConfig
  = RateLimitConfig'_constructor {_RateLimitConfig'rateLimit :: !(Prelude.Maybe RateLimit),
                                  _RateLimitConfig'metadata :: !(Prelude.Maybe ConfigMetadata),
                                  _RateLimitConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RateLimitConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RateLimitConfig "rateLimit" RateLimit where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitConfig'rateLimit
           (\ x__ y__ -> x__ {_RateLimitConfig'rateLimit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RateLimitConfig "maybe'rateLimit" (Prelude.Maybe RateLimit) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitConfig'rateLimit
           (\ x__ y__ -> x__ {_RateLimitConfig'rateLimit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimitConfig "metadata" ConfigMetadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitConfig'metadata
           (\ x__ y__ -> x__ {_RateLimitConfig'metadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RateLimitConfig "maybe'metadata" (Prelude.Maybe ConfigMetadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitConfig'metadata
           (\ x__ y__ -> x__ {_RateLimitConfig'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Message RateLimitConfig where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.RateLimitConfig"
  packedMessageDescriptor _
    = "\n\
      \\SIRateLimitConfig\DC2C\n\
      \\n\
      \rate_limit\CAN\SOH \SOH(\v2$.temporal.api.taskqueue.v1.RateLimitR\trateLimit\DC2E\n\
      \\bmetadata\CAN\STX \SOH(\v2).temporal.api.taskqueue.v1.ConfigMetadataR\bmetadata"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rateLimit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rate_limit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RateLimit)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rateLimit")) ::
              Data.ProtoLens.FieldDescriptor RateLimitConfig
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ConfigMetadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadata")) ::
              Data.ProtoLens.FieldDescriptor RateLimitConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, rateLimit__field_descriptor),
           (Data.ProtoLens.Tag 2, metadata__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RateLimitConfig'_unknownFields
        (\ x__ y__ -> x__ {_RateLimitConfig'_unknownFields = y__})
  defMessage
    = RateLimitConfig'_constructor
        {_RateLimitConfig'rateLimit = Prelude.Nothing,
         _RateLimitConfig'metadata = Prelude.Nothing,
         _RateLimitConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RateLimitConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser RateLimitConfig
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
                                       "rate_limit"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"rateLimit") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RateLimitConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'rateLimit") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'metadata") _x
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
instance Control.DeepSeq.NFData RateLimitConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RateLimitConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RateLimitConfig'rateLimit x__)
                (Control.DeepSeq.deepseq (_RateLimitConfig'metadata x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.workerTaskQueue' @:: Lens' StickyExecutionAttributes TaskQueue@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'workerTaskQueue' @:: Lens' StickyExecutionAttributes (Prelude.Maybe TaskQueue)@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.scheduleToStartTimeout' @:: Lens' StickyExecutionAttributes Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'scheduleToStartTimeout' @:: Lens' StickyExecutionAttributes (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data StickyExecutionAttributes
  = StickyExecutionAttributes'_constructor {_StickyExecutionAttributes'workerTaskQueue :: !(Prelude.Maybe TaskQueue),
                                            _StickyExecutionAttributes'scheduleToStartTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                            _StickyExecutionAttributes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StickyExecutionAttributes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StickyExecutionAttributes "workerTaskQueue" TaskQueue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StickyExecutionAttributes'workerTaskQueue
           (\ x__ y__
              -> x__ {_StickyExecutionAttributes'workerTaskQueue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StickyExecutionAttributes "maybe'workerTaskQueue" (Prelude.Maybe TaskQueue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StickyExecutionAttributes'workerTaskQueue
           (\ x__ y__
              -> x__ {_StickyExecutionAttributes'workerTaskQueue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StickyExecutionAttributes "scheduleToStartTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StickyExecutionAttributes'scheduleToStartTimeout
           (\ x__ y__
              -> x__ {_StickyExecutionAttributes'scheduleToStartTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StickyExecutionAttributes "maybe'scheduleToStartTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StickyExecutionAttributes'scheduleToStartTimeout
           (\ x__ y__
              -> x__ {_StickyExecutionAttributes'scheduleToStartTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Message StickyExecutionAttributes where
  messageName _
    = Data.Text.pack
        "temporal.api.taskqueue.v1.StickyExecutionAttributes"
  packedMessageDescriptor _
    = "\n\
      \\EMStickyExecutionAttributes\DC2P\n\
      \\DC1worker_task_queue\CAN\SOH \SOH(\v2$.temporal.api.taskqueue.v1.TaskQueueR\SIworkerTaskQueue\DC2T\n\
      \\EMschedule_to_start_timeout\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        workerTaskQueue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "worker_task_queue"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TaskQueue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workerTaskQueue")) ::
              Data.ProtoLens.FieldDescriptor StickyExecutionAttributes
        scheduleToStartTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_start_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToStartTimeout")) ::
              Data.ProtoLens.FieldDescriptor StickyExecutionAttributes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, workerTaskQueue__field_descriptor),
           (Data.ProtoLens.Tag 2, scheduleToStartTimeout__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StickyExecutionAttributes'_unknownFields
        (\ x__ y__
           -> x__ {_StickyExecutionAttributes'_unknownFields = y__})
  defMessage
    = StickyExecutionAttributes'_constructor
        {_StickyExecutionAttributes'workerTaskQueue = Prelude.Nothing,
         _StickyExecutionAttributes'scheduleToStartTimeout = Prelude.Nothing,
         _StickyExecutionAttributes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StickyExecutionAttributes
          -> Data.ProtoLens.Encoding.Bytes.Parser StickyExecutionAttributes
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
                                       "worker_task_queue"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workerTaskQueue") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_start_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToStartTimeout") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StickyExecutionAttributes"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'workerTaskQueue") _x
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
                       (Data.ProtoLens.Field.field @"maybe'scheduleToStartTimeout") _x
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
instance Control.DeepSeq.NFData StickyExecutionAttributes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StickyExecutionAttributes'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StickyExecutionAttributes'workerTaskQueue x__)
                (Control.DeepSeq.deepseq
                   (_StickyExecutionAttributes'scheduleToStartTimeout x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.startId' @:: Lens' TaskIdBlock Data.Int.Int64@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.endId' @:: Lens' TaskIdBlock Data.Int.Int64@ -}
data TaskIdBlock
  = TaskIdBlock'_constructor {_TaskIdBlock'startId :: !Data.Int.Int64,
                              _TaskIdBlock'endId :: !Data.Int.Int64,
                              _TaskIdBlock'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TaskIdBlock where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TaskIdBlock "startId" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskIdBlock'startId
           (\ x__ y__ -> x__ {_TaskIdBlock'startId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskIdBlock "endId" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskIdBlock'endId (\ x__ y__ -> x__ {_TaskIdBlock'endId = y__}))
        Prelude.id
instance Data.ProtoLens.Message TaskIdBlock where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.TaskIdBlock"
  packedMessageDescriptor _
    = "\n\
      \\vTaskIdBlock\DC2\EM\n\
      \\bstart_id\CAN\SOH \SOH(\ETXR\astartId\DC2\NAK\n\
      \\ACKend_id\CAN\STX \SOH(\ETXR\ENQendId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        startId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"startId")) ::
              Data.ProtoLens.FieldDescriptor TaskIdBlock
        endId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"endId")) ::
              Data.ProtoLens.FieldDescriptor TaskIdBlock
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, startId__field_descriptor),
           (Data.ProtoLens.Tag 2, endId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TaskIdBlock'_unknownFields
        (\ x__ y__ -> x__ {_TaskIdBlock'_unknownFields = y__})
  defMessage
    = TaskIdBlock'_constructor
        {_TaskIdBlock'startId = Data.ProtoLens.fieldDefault,
         _TaskIdBlock'endId = Data.ProtoLens.fieldDefault,
         _TaskIdBlock'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TaskIdBlock -> Data.ProtoLens.Encoding.Bytes.Parser TaskIdBlock
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
                                       "start_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"startId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "end_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"endId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TaskIdBlock"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"startId") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"endId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TaskIdBlock where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TaskIdBlock'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TaskIdBlock'startId x__)
                (Control.DeepSeq.deepseq (_TaskIdBlock'endId x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.name' @:: Lens' TaskQueue Data.Text.Text@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.kind' @:: Lens' TaskQueue Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueKind@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.normalName' @:: Lens' TaskQueue Data.Text.Text@ -}
data TaskQueue
  = TaskQueue'_constructor {_TaskQueue'name :: !Data.Text.Text,
                            _TaskQueue'kind :: !Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueKind,
                            _TaskQueue'normalName :: !Data.Text.Text,
                            _TaskQueue'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TaskQueue where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TaskQueue "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueue'name (\ x__ y__ -> x__ {_TaskQueue'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueue "kind" Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueKind where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueue'kind (\ x__ y__ -> x__ {_TaskQueue'kind = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueue "normalName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueue'normalName
           (\ x__ y__ -> x__ {_TaskQueue'normalName = y__}))
        Prelude.id
instance Data.ProtoLens.Message TaskQueue where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.TaskQueue"
  packedMessageDescriptor _
    = "\n\
      \\tTaskQueue\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC28\n\
      \\EOTkind\CAN\STX \SOH(\SO2$.temporal.api.enums.v1.TaskQueueKindR\EOTkind\DC2\US\n\
      \\vnormal_name\CAN\ETX \SOH(\tR\n\
      \normalName"
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
              Data.ProtoLens.FieldDescriptor TaskQueue
        kind__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kind"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.TaskQueue.TaskQueueKind)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"kind")) ::
              Data.ProtoLens.FieldDescriptor TaskQueue
        normalName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "normal_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"normalName")) ::
              Data.ProtoLens.FieldDescriptor TaskQueue
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, kind__field_descriptor),
           (Data.ProtoLens.Tag 3, normalName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TaskQueue'_unknownFields
        (\ x__ y__ -> x__ {_TaskQueue'_unknownFields = y__})
  defMessage
    = TaskQueue'_constructor
        {_TaskQueue'name = Data.ProtoLens.fieldDefault,
         _TaskQueue'kind = Data.ProtoLens.fieldDefault,
         _TaskQueue'normalName = Data.ProtoLens.fieldDefault,
         _TaskQueue'_unknownFields = []}
  parseMessage
    = let
        loop :: TaskQueue -> Data.ProtoLens.Encoding.Bytes.Parser TaskQueue
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
                                       "kind"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"kind") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "normal_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"normalName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TaskQueue"
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"kind") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"normalName") _x
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
instance Control.DeepSeq.NFData TaskQueue where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TaskQueue'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TaskQueue'name x__)
                (Control.DeepSeq.deepseq
                   (_TaskQueue'kind x__)
                   (Control.DeepSeq.deepseq (_TaskQueue'normalName x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.queueRateLimit' @:: Lens' TaskQueueConfig RateLimitConfig@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'queueRateLimit' @:: Lens' TaskQueueConfig (Prelude.Maybe RateLimitConfig)@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.fairnessKeysRateLimitDefault' @:: Lens' TaskQueueConfig RateLimitConfig@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'fairnessKeysRateLimitDefault' @:: Lens' TaskQueueConfig (Prelude.Maybe RateLimitConfig)@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.fairnessWeightOverrides' @:: Lens' TaskQueueConfig (Data.Map.Map Data.Text.Text Prelude.Float)@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.queueConcurrencyLimit' @:: Lens' TaskQueueConfig ConcurrencyLimitConfig@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'queueConcurrencyLimit' @:: Lens' TaskQueueConfig (Prelude.Maybe ConcurrencyLimitConfig)@ -}
data TaskQueueConfig
  = TaskQueueConfig'_constructor {_TaskQueueConfig'queueRateLimit :: !(Prelude.Maybe RateLimitConfig),
                                  _TaskQueueConfig'fairnessKeysRateLimitDefault :: !(Prelude.Maybe RateLimitConfig),
                                  _TaskQueueConfig'fairnessWeightOverrides :: !(Data.Map.Map Data.Text.Text Prelude.Float),
                                  _TaskQueueConfig'queueConcurrencyLimit :: !(Prelude.Maybe ConcurrencyLimitConfig),
                                  _TaskQueueConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TaskQueueConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TaskQueueConfig "queueRateLimit" RateLimitConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueConfig'queueRateLimit
           (\ x__ y__ -> x__ {_TaskQueueConfig'queueRateLimit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TaskQueueConfig "maybe'queueRateLimit" (Prelude.Maybe RateLimitConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueConfig'queueRateLimit
           (\ x__ y__ -> x__ {_TaskQueueConfig'queueRateLimit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueConfig "fairnessKeysRateLimitDefault" RateLimitConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueConfig'fairnessKeysRateLimitDefault
           (\ x__ y__
              -> x__ {_TaskQueueConfig'fairnessKeysRateLimitDefault = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TaskQueueConfig "maybe'fairnessKeysRateLimitDefault" (Prelude.Maybe RateLimitConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueConfig'fairnessKeysRateLimitDefault
           (\ x__ y__
              -> x__ {_TaskQueueConfig'fairnessKeysRateLimitDefault = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueConfig "fairnessWeightOverrides" (Data.Map.Map Data.Text.Text Prelude.Float) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueConfig'fairnessWeightOverrides
           (\ x__ y__
              -> x__ {_TaskQueueConfig'fairnessWeightOverrides = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueConfig "queueConcurrencyLimit" ConcurrencyLimitConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueConfig'queueConcurrencyLimit
           (\ x__ y__ -> x__ {_TaskQueueConfig'queueConcurrencyLimit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TaskQueueConfig "maybe'queueConcurrencyLimit" (Prelude.Maybe ConcurrencyLimitConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueConfig'queueConcurrencyLimit
           (\ x__ y__ -> x__ {_TaskQueueConfig'queueConcurrencyLimit = y__}))
        Prelude.id
instance Data.ProtoLens.Message TaskQueueConfig where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.TaskQueueConfig"
  packedMessageDescriptor _
    = "\n\
      \\SITaskQueueConfig\DC2T\n\
      \\DLEqueue_rate_limit\CAN\SOH \SOH(\v2*.temporal.api.taskqueue.v1.RateLimitConfigR\SOqueueRateLimit\DC2r\n\
      \ fairness_keys_rate_limit_default\CAN\STX \SOH(\v2*.temporal.api.taskqueue.v1.RateLimitConfigR\FSfairnessKeysRateLimitDefault\DC2\131\SOH\n\
      \\EMfairness_weight_overrides\CAN\ETX \ETX(\v2G.temporal.api.taskqueue.v1.TaskQueueConfig.FairnessWeightOverridesEntryR\ETBfairnessWeightOverrides\DC2i\n\
      \\ETBqueue_concurrency_limit\CAN\EOT \SOH(\v21.temporal.api.taskqueue.v1.ConcurrencyLimitConfigR\NAKqueueConcurrencyLimit\SUBJ\n\
      \\FSFairnessWeightOverridesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\STXR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        queueRateLimit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "queue_rate_limit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RateLimitConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'queueRateLimit")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueConfig
        fairnessKeysRateLimitDefault__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fairness_keys_rate_limit_default"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RateLimitConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'fairnessKeysRateLimitDefault")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueConfig
        fairnessWeightOverrides__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fairness_weight_overrides"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TaskQueueConfig'FairnessWeightOverridesEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"fairnessWeightOverrides")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueConfig
        queueConcurrencyLimit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "queue_concurrency_limit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ConcurrencyLimitConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'queueConcurrencyLimit")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, queueRateLimit__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            fairnessKeysRateLimitDefault__field_descriptor),
           (Data.ProtoLens.Tag 3, fairnessWeightOverrides__field_descriptor),
           (Data.ProtoLens.Tag 4, queueConcurrencyLimit__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TaskQueueConfig'_unknownFields
        (\ x__ y__ -> x__ {_TaskQueueConfig'_unknownFields = y__})
  defMessage
    = TaskQueueConfig'_constructor
        {_TaskQueueConfig'queueRateLimit = Prelude.Nothing,
         _TaskQueueConfig'fairnessKeysRateLimitDefault = Prelude.Nothing,
         _TaskQueueConfig'fairnessWeightOverrides = Data.Map.empty,
         _TaskQueueConfig'queueConcurrencyLimit = Prelude.Nothing,
         _TaskQueueConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TaskQueueConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser TaskQueueConfig
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
                                       "queue_rate_limit"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"queueRateLimit") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "fairness_keys_rate_limit_default"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"fairnessKeysRateLimitDefault") y
                                     x)
                        26
                          -> do !(entry :: TaskQueueConfig'FairnessWeightOverridesEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                              (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                    (Prelude.fromIntegral
                                                                                                       len)
                                                                                                    Data.ProtoLens.parseMessage)
                                                                                              "fairness_weight_overrides"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"fairnessWeightOverrides")
                                        (\ !t -> Data.Map.insert key value t) x))
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "queue_concurrency_limit"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"queueConcurrencyLimit") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TaskQueueConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'queueRateLimit") _x
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
                       (Data.ProtoLens.Field.field @"maybe'fairnessKeysRateLimitDefault")
                       _x
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
                                             TaskQueueConfig'FairnessWeightOverridesEntry)))))
                         (Data.Map.toList
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"fairnessWeightOverrides") _x))))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'queueConcurrencyLimit") _x
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
instance Control.DeepSeq.NFData TaskQueueConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TaskQueueConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TaskQueueConfig'queueRateLimit x__)
                (Control.DeepSeq.deepseq
                   (_TaskQueueConfig'fairnessKeysRateLimitDefault x__)
                   (Control.DeepSeq.deepseq
                      (_TaskQueueConfig'fairnessWeightOverrides x__)
                      (Control.DeepSeq.deepseq
                         (_TaskQueueConfig'queueConcurrencyLimit x__) ()))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.key' @:: Lens' TaskQueueConfig'FairnessWeightOverridesEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.value' @:: Lens' TaskQueueConfig'FairnessWeightOverridesEntry Prelude.Float@ -}
data TaskQueueConfig'FairnessWeightOverridesEntry
  = TaskQueueConfig'FairnessWeightOverridesEntry'_constructor {_TaskQueueConfig'FairnessWeightOverridesEntry'key :: !Data.Text.Text,
                                                               _TaskQueueConfig'FairnessWeightOverridesEntry'value :: !Prelude.Float,
                                                               _TaskQueueConfig'FairnessWeightOverridesEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TaskQueueConfig'FairnessWeightOverridesEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TaskQueueConfig'FairnessWeightOverridesEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueConfig'FairnessWeightOverridesEntry'key
           (\ x__ y__
              -> x__ {_TaskQueueConfig'FairnessWeightOverridesEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueConfig'FairnessWeightOverridesEntry "value" Prelude.Float where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueConfig'FairnessWeightOverridesEntry'value
           (\ x__ y__
              -> x__
                   {_TaskQueueConfig'FairnessWeightOverridesEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message TaskQueueConfig'FairnessWeightOverridesEntry where
  messageName _
    = Data.Text.pack
        "temporal.api.taskqueue.v1.TaskQueueConfig.FairnessWeightOverridesEntry"
  packedMessageDescriptor _
    = "\n\
      \\FSFairnessWeightOverridesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\STXR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor TaskQueueConfig'FairnessWeightOverridesEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueConfig'FairnessWeightOverridesEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TaskQueueConfig'FairnessWeightOverridesEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_TaskQueueConfig'FairnessWeightOverridesEntry'_unknownFields = y__})
  defMessage
    = TaskQueueConfig'FairnessWeightOverridesEntry'_constructor
        {_TaskQueueConfig'FairnessWeightOverridesEntry'key = Data.ProtoLens.fieldDefault,
         _TaskQueueConfig'FairnessWeightOverridesEntry'value = Data.ProtoLens.fieldDefault,
         _TaskQueueConfig'FairnessWeightOverridesEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TaskQueueConfig'FairnessWeightOverridesEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser TaskQueueConfig'FairnessWeightOverridesEntry
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
                        21
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToFloat
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
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
          (do loop Data.ProtoLens.defMessage) "FairnessWeightOverridesEntry"
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
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 21)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putFixed32
                            Data.ProtoLens.Encoding.Bytes.floatToWord _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TaskQueueConfig'FairnessWeightOverridesEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TaskQueueConfig'FairnessWeightOverridesEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TaskQueueConfig'FairnessWeightOverridesEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_TaskQueueConfig'FairnessWeightOverridesEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maxTasksPerSecond' @:: Lens' TaskQueueMetadata Proto.Google.Protobuf.Wrappers.DoubleValue@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'maxTasksPerSecond' @:: Lens' TaskQueueMetadata (Prelude.Maybe Proto.Google.Protobuf.Wrappers.DoubleValue)@ -}
data TaskQueueMetadata
  = TaskQueueMetadata'_constructor {_TaskQueueMetadata'maxTasksPerSecond :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.DoubleValue),
                                    _TaskQueueMetadata'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TaskQueueMetadata where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TaskQueueMetadata "maxTasksPerSecond" Proto.Google.Protobuf.Wrappers.DoubleValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueMetadata'maxTasksPerSecond
           (\ x__ y__ -> x__ {_TaskQueueMetadata'maxTasksPerSecond = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TaskQueueMetadata "maybe'maxTasksPerSecond" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.DoubleValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueMetadata'maxTasksPerSecond
           (\ x__ y__ -> x__ {_TaskQueueMetadata'maxTasksPerSecond = y__}))
        Prelude.id
instance Data.ProtoLens.Message TaskQueueMetadata where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.TaskQueueMetadata"
  packedMessageDescriptor _
    = "\n\
      \\DC1TaskQueueMetadata\DC2M\n\
      \\DC4max_tasks_per_second\CAN\SOH \SOH(\v2\FS.google.protobuf.DoubleValueR\DC1maxTasksPerSecond"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        maxTasksPerSecond__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_tasks_per_second"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.DoubleValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxTasksPerSecond")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueMetadata
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, maxTasksPerSecond__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TaskQueueMetadata'_unknownFields
        (\ x__ y__ -> x__ {_TaskQueueMetadata'_unknownFields = y__})
  defMessage
    = TaskQueueMetadata'_constructor
        {_TaskQueueMetadata'maxTasksPerSecond = Prelude.Nothing,
         _TaskQueueMetadata'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TaskQueueMetadata
          -> Data.ProtoLens.Encoding.Bytes.Parser TaskQueueMetadata
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
                                       "max_tasks_per_second"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxTasksPerSecond") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TaskQueueMetadata"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'maxTasksPerSecond") _x
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
instance Control.DeepSeq.NFData TaskQueueMetadata where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TaskQueueMetadata'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TaskQueueMetadata'maxTasksPerSecond x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.key' @:: Lens' TaskQueuePartitionMetadata Data.Text.Text@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.ownerHostName' @:: Lens' TaskQueuePartitionMetadata Data.Text.Text@ -}
data TaskQueuePartitionMetadata
  = TaskQueuePartitionMetadata'_constructor {_TaskQueuePartitionMetadata'key :: !Data.Text.Text,
                                             _TaskQueuePartitionMetadata'ownerHostName :: !Data.Text.Text,
                                             _TaskQueuePartitionMetadata'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TaskQueuePartitionMetadata where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TaskQueuePartitionMetadata "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueuePartitionMetadata'key
           (\ x__ y__ -> x__ {_TaskQueuePartitionMetadata'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueuePartitionMetadata "ownerHostName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueuePartitionMetadata'ownerHostName
           (\ x__ y__
              -> x__ {_TaskQueuePartitionMetadata'ownerHostName = y__}))
        Prelude.id
instance Data.ProtoLens.Message TaskQueuePartitionMetadata where
  messageName _
    = Data.Text.pack
        "temporal.api.taskqueue.v1.TaskQueuePartitionMetadata"
  packedMessageDescriptor _
    = "\n\
      \\SUBTaskQueuePartitionMetadata\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2&\n\
      \\SIowner_host_name\CAN\STX \SOH(\tR\rownerHostName"
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
              Data.ProtoLens.FieldDescriptor TaskQueuePartitionMetadata
        ownerHostName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner_host_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"ownerHostName")) ::
              Data.ProtoLens.FieldDescriptor TaskQueuePartitionMetadata
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, ownerHostName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TaskQueuePartitionMetadata'_unknownFields
        (\ x__ y__
           -> x__ {_TaskQueuePartitionMetadata'_unknownFields = y__})
  defMessage
    = TaskQueuePartitionMetadata'_constructor
        {_TaskQueuePartitionMetadata'key = Data.ProtoLens.fieldDefault,
         _TaskQueuePartitionMetadata'ownerHostName = Data.ProtoLens.fieldDefault,
         _TaskQueuePartitionMetadata'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TaskQueuePartitionMetadata
          -> Data.ProtoLens.Encoding.Bytes.Parser TaskQueuePartitionMetadata
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
                                       "owner_host_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"ownerHostName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TaskQueuePartitionMetadata"
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
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"ownerHostName") _x
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
instance Control.DeepSeq.NFData TaskQueuePartitionMetadata where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TaskQueuePartitionMetadata'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TaskQueuePartitionMetadata'key x__)
                (Control.DeepSeq.deepseq
                   (_TaskQueuePartitionMetadata'ownerHostName x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.taskQueue' @:: Lens' TaskQueueReachability Data.Text.Text@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.reachability' @:: Lens' TaskQueueReachability [Proto.Temporal.Api.Enums.V1.TaskQueue.TaskReachability]@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.vec'reachability' @:: Lens' TaskQueueReachability (Data.Vector.Vector Proto.Temporal.Api.Enums.V1.TaskQueue.TaskReachability)@ -}
data TaskQueueReachability
  = TaskQueueReachability'_constructor {_TaskQueueReachability'taskQueue :: !Data.Text.Text,
                                        _TaskQueueReachability'reachability :: !(Data.Vector.Vector Proto.Temporal.Api.Enums.V1.TaskQueue.TaskReachability),
                                        _TaskQueueReachability'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TaskQueueReachability where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TaskQueueReachability "taskQueue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueReachability'taskQueue
           (\ x__ y__ -> x__ {_TaskQueueReachability'taskQueue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueReachability "reachability" [Proto.Temporal.Api.Enums.V1.TaskQueue.TaskReachability] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueReachability'reachability
           (\ x__ y__ -> x__ {_TaskQueueReachability'reachability = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TaskQueueReachability "vec'reachability" (Data.Vector.Vector Proto.Temporal.Api.Enums.V1.TaskQueue.TaskReachability) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueReachability'reachability
           (\ x__ y__ -> x__ {_TaskQueueReachability'reachability = y__}))
        Prelude.id
instance Data.ProtoLens.Message TaskQueueReachability where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.TaskQueueReachability"
  packedMessageDescriptor _
    = "\n\
      \\NAKTaskQueueReachability\DC2\GS\n\
      \\n\
      \task_queue\CAN\SOH \SOH(\tR\ttaskQueue\DC2K\n\
      \\freachability\CAN\STX \ETX(\SO2'.temporal.api.enums.v1.TaskReachabilityR\freachability"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        taskQueue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"taskQueue")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueReachability
        reachability__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reachability"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.TaskQueue.TaskReachability)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"reachability")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueReachability
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, taskQueue__field_descriptor),
           (Data.ProtoLens.Tag 2, reachability__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TaskQueueReachability'_unknownFields
        (\ x__ y__ -> x__ {_TaskQueueReachability'_unknownFields = y__})
  defMessage
    = TaskQueueReachability'_constructor
        {_TaskQueueReachability'taskQueue = Data.ProtoLens.fieldDefault,
         _TaskQueueReachability'reachability = Data.Vector.Generic.empty,
         _TaskQueueReachability'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TaskQueueReachability
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Enums.V1.TaskQueue.TaskReachability
             -> Data.ProtoLens.Encoding.Bytes.Parser TaskQueueReachability
        loop x mutable'reachability
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'reachability <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'reachability)
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
                              (Data.ProtoLens.Field.field @"vec'reachability")
                              frozen'reachability x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "task_queue"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskQueue") y x)
                                  mutable'reachability
                        16
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.toEnum
                                           (Prelude.fmap
                                              Prelude.fromIntegral
                                              Data.ProtoLens.Encoding.Bytes.getVarInt))
                                        "reachability"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'reachability y)
                                loop x v
                        18
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
                                                                    "reachability"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'reachability)
                                loop x y
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'reachability
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'reachability <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'reachability)
          "TaskQueueReachability"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"taskQueue") _x
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
                   p = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'reachability") _x
                 in
                   if Data.Vector.Generic.null p then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TaskQueueReachability where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TaskQueueReachability'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TaskQueueReachability'taskQueue x__)
                (Control.DeepSeq.deepseq
                   (_TaskQueueReachability'reachability x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.approximateBacklogCount' @:: Lens' TaskQueueStats Data.Int.Int64@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.approximateBacklogAge' @:: Lens' TaskQueueStats Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'approximateBacklogAge' @:: Lens' TaskQueueStats (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.tasksAddRate' @:: Lens' TaskQueueStats Prelude.Float@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.tasksDispatchRate' @:: Lens' TaskQueueStats Prelude.Float@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.rateLimitingActive' @:: Lens' TaskQueueStats Prelude.Bool@ -}
data TaskQueueStats
  = TaskQueueStats'_constructor {_TaskQueueStats'approximateBacklogCount :: !Data.Int.Int64,
                                 _TaskQueueStats'approximateBacklogAge :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                 _TaskQueueStats'tasksAddRate :: !Prelude.Float,
                                 _TaskQueueStats'tasksDispatchRate :: !Prelude.Float,
                                 _TaskQueueStats'rateLimitingActive :: !Prelude.Bool,
                                 _TaskQueueStats'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TaskQueueStats where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TaskQueueStats "approximateBacklogCount" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueStats'approximateBacklogCount
           (\ x__ y__ -> x__ {_TaskQueueStats'approximateBacklogCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueStats "approximateBacklogAge" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueStats'approximateBacklogAge
           (\ x__ y__ -> x__ {_TaskQueueStats'approximateBacklogAge = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TaskQueueStats "maybe'approximateBacklogAge" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueStats'approximateBacklogAge
           (\ x__ y__ -> x__ {_TaskQueueStats'approximateBacklogAge = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueStats "tasksAddRate" Prelude.Float where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueStats'tasksAddRate
           (\ x__ y__ -> x__ {_TaskQueueStats'tasksAddRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueStats "tasksDispatchRate" Prelude.Float where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueStats'tasksDispatchRate
           (\ x__ y__ -> x__ {_TaskQueueStats'tasksDispatchRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueStats "rateLimitingActive" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueStats'rateLimitingActive
           (\ x__ y__ -> x__ {_TaskQueueStats'rateLimitingActive = y__}))
        Prelude.id
instance Data.ProtoLens.Message TaskQueueStats where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.TaskQueueStats"
  packedMessageDescriptor _
    = "\n\
      \\SOTaskQueueStats\DC2:\n\
      \\EMapproximate_backlog_count\CAN\SOH \SOH(\ETXR\ETBapproximateBacklogCount\DC2Q\n\
      \\ETBapproximate_backlog_age\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\NAKapproximateBacklogAge\DC2$\n\
      \\SOtasks_add_rate\CAN\ETX \SOH(\STXR\ftasksAddRate\DC2.\n\
      \\DC3tasks_dispatch_rate\CAN\EOT \SOH(\STXR\DC1tasksDispatchRate\DC20\n\
      \\DC4rate_limiting_active\CAN\ENQ \SOH(\bR\DC2rateLimitingActive"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        approximateBacklogCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "approximate_backlog_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"approximateBacklogCount")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueStats
        approximateBacklogAge__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "approximate_backlog_age"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'approximateBacklogAge")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueStats
        tasksAddRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tasks_add_rate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"tasksAddRate")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueStats
        tasksDispatchRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tasks_dispatch_rate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"tasksDispatchRate")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueStats
        rateLimitingActive__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rate_limiting_active"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rateLimitingActive")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueStats
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, approximateBacklogCount__field_descriptor),
           (Data.ProtoLens.Tag 2, approximateBacklogAge__field_descriptor),
           (Data.ProtoLens.Tag 3, tasksAddRate__field_descriptor),
           (Data.ProtoLens.Tag 4, tasksDispatchRate__field_descriptor),
           (Data.ProtoLens.Tag 5, rateLimitingActive__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TaskQueueStats'_unknownFields
        (\ x__ y__ -> x__ {_TaskQueueStats'_unknownFields = y__})
  defMessage
    = TaskQueueStats'_constructor
        {_TaskQueueStats'approximateBacklogCount = Data.ProtoLens.fieldDefault,
         _TaskQueueStats'approximateBacklogAge = Prelude.Nothing,
         _TaskQueueStats'tasksAddRate = Data.ProtoLens.fieldDefault,
         _TaskQueueStats'tasksDispatchRate = Data.ProtoLens.fieldDefault,
         _TaskQueueStats'rateLimitingActive = Data.ProtoLens.fieldDefault,
         _TaskQueueStats'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TaskQueueStats
          -> Data.ProtoLens.Encoding.Bytes.Parser TaskQueueStats
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
                                       "approximate_backlog_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"approximateBacklogCount") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "approximate_backlog_age"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"approximateBacklogAge") y x)
                        29
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToFloat
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "tasks_add_rate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tasksAddRate") y x)
                        37
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToFloat
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "tasks_dispatch_rate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tasksDispatchRate") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "rate_limiting_active"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rateLimitingActive") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TaskQueueStats"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"approximateBacklogCount") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'approximateBacklogAge") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"tasksAddRate") _x
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
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"tasksDispatchRate") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 37)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putFixed32
                                  Data.ProtoLens.Encoding.Bytes.floatToWord _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"rateLimitingActive") _x
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
instance Control.DeepSeq.NFData TaskQueueStats where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TaskQueueStats'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TaskQueueStats'approximateBacklogCount x__)
                (Control.DeepSeq.deepseq
                   (_TaskQueueStats'approximateBacklogAge x__)
                   (Control.DeepSeq.deepseq
                      (_TaskQueueStats'tasksAddRate x__)
                      (Control.DeepSeq.deepseq
                         (_TaskQueueStats'tasksDispatchRate x__)
                         (Control.DeepSeq.deepseq
                            (_TaskQueueStats'rateLimitingActive x__) ())))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.backlogCountHint' @:: Lens' TaskQueueStatus Data.Int.Int64@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.readLevel' @:: Lens' TaskQueueStatus Data.Int.Int64@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.ackLevel' @:: Lens' TaskQueueStatus Data.Int.Int64@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.ratePerSecond' @:: Lens' TaskQueueStatus Prelude.Double@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.taskIdBlock' @:: Lens' TaskQueueStatus TaskIdBlock@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'taskIdBlock' @:: Lens' TaskQueueStatus (Prelude.Maybe TaskIdBlock)@ -}
data TaskQueueStatus
  = TaskQueueStatus'_constructor {_TaskQueueStatus'backlogCountHint :: !Data.Int.Int64,
                                  _TaskQueueStatus'readLevel :: !Data.Int.Int64,
                                  _TaskQueueStatus'ackLevel :: !Data.Int.Int64,
                                  _TaskQueueStatus'ratePerSecond :: !Prelude.Double,
                                  _TaskQueueStatus'taskIdBlock :: !(Prelude.Maybe TaskIdBlock),
                                  _TaskQueueStatus'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TaskQueueStatus where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TaskQueueStatus "backlogCountHint" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueStatus'backlogCountHint
           (\ x__ y__ -> x__ {_TaskQueueStatus'backlogCountHint = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueStatus "readLevel" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueStatus'readLevel
           (\ x__ y__ -> x__ {_TaskQueueStatus'readLevel = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueStatus "ackLevel" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueStatus'ackLevel
           (\ x__ y__ -> x__ {_TaskQueueStatus'ackLevel = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueStatus "ratePerSecond" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueStatus'ratePerSecond
           (\ x__ y__ -> x__ {_TaskQueueStatus'ratePerSecond = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueStatus "taskIdBlock" TaskIdBlock where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueStatus'taskIdBlock
           (\ x__ y__ -> x__ {_TaskQueueStatus'taskIdBlock = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TaskQueueStatus "maybe'taskIdBlock" (Prelude.Maybe TaskIdBlock) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueStatus'taskIdBlock
           (\ x__ y__ -> x__ {_TaskQueueStatus'taskIdBlock = y__}))
        Prelude.id
instance Data.ProtoLens.Message TaskQueueStatus where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.TaskQueueStatus"
  packedMessageDescriptor _
    = "\n\
      \\SITaskQueueStatus\DC2,\n\
      \\DC2backlog_count_hint\CAN\SOH \SOH(\ETXR\DLEbacklogCountHint\DC2\GS\n\
      \\n\
      \read_level\CAN\STX \SOH(\ETXR\treadLevel\DC2\ESC\n\
      \\tack_level\CAN\ETX \SOH(\ETXR\backLevel\DC2&\n\
      \\SIrate_per_second\CAN\EOT \SOH(\SOHR\rratePerSecond\DC2J\n\
      \\rtask_id_block\CAN\ENQ \SOH(\v2&.temporal.api.taskqueue.v1.TaskIdBlockR\vtaskIdBlock"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        backlogCountHint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "backlog_count_hint"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"backlogCountHint")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueStatus
        readLevel__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "read_level"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"readLevel")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueStatus
        ackLevel__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ack_level"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"ackLevel")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueStatus
        ratePerSecond__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rate_per_second"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"ratePerSecond")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueStatus
        taskIdBlock__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_id_block"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TaskIdBlock)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'taskIdBlock")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueStatus
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, backlogCountHint__field_descriptor),
           (Data.ProtoLens.Tag 2, readLevel__field_descriptor),
           (Data.ProtoLens.Tag 3, ackLevel__field_descriptor),
           (Data.ProtoLens.Tag 4, ratePerSecond__field_descriptor),
           (Data.ProtoLens.Tag 5, taskIdBlock__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TaskQueueStatus'_unknownFields
        (\ x__ y__ -> x__ {_TaskQueueStatus'_unknownFields = y__})
  defMessage
    = TaskQueueStatus'_constructor
        {_TaskQueueStatus'backlogCountHint = Data.ProtoLens.fieldDefault,
         _TaskQueueStatus'readLevel = Data.ProtoLens.fieldDefault,
         _TaskQueueStatus'ackLevel = Data.ProtoLens.fieldDefault,
         _TaskQueueStatus'ratePerSecond = Data.ProtoLens.fieldDefault,
         _TaskQueueStatus'taskIdBlock = Prelude.Nothing,
         _TaskQueueStatus'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TaskQueueStatus
          -> Data.ProtoLens.Encoding.Bytes.Parser TaskQueueStatus
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
                                       "backlog_count_hint"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"backlogCountHint") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "read_level"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"readLevel") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ack_level"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ackLevel") y x)
                        33
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "rate_per_second"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"ratePerSecond") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "task_id_block"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskIdBlock") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TaskQueueStatus"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"backlogCountHint") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"readLevel") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"ackLevel") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"ratePerSecond") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 33)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putFixed64
                                  Data.ProtoLens.Encoding.Bytes.doubleToWord _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'taskIdBlock") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData TaskQueueStatus where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TaskQueueStatus'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TaskQueueStatus'backlogCountHint x__)
                (Control.DeepSeq.deepseq
                   (_TaskQueueStatus'readLevel x__)
                   (Control.DeepSeq.deepseq
                      (_TaskQueueStatus'ackLevel x__)
                      (Control.DeepSeq.deepseq
                         (_TaskQueueStatus'ratePerSecond x__)
                         (Control.DeepSeq.deepseq (_TaskQueueStatus'taskIdBlock x__) ())))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.pollers' @:: Lens' TaskQueueTypeInfo [PollerInfo]@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.vec'pollers' @:: Lens' TaskQueueTypeInfo (Data.Vector.Vector PollerInfo)@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.stats' @:: Lens' TaskQueueTypeInfo TaskQueueStats@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'stats' @:: Lens' TaskQueueTypeInfo (Prelude.Maybe TaskQueueStats)@ -}
data TaskQueueTypeInfo
  = TaskQueueTypeInfo'_constructor {_TaskQueueTypeInfo'pollers :: !(Data.Vector.Vector PollerInfo),
                                    _TaskQueueTypeInfo'stats :: !(Prelude.Maybe TaskQueueStats),
                                    _TaskQueueTypeInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TaskQueueTypeInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TaskQueueTypeInfo "pollers" [PollerInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueTypeInfo'pollers
           (\ x__ y__ -> x__ {_TaskQueueTypeInfo'pollers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TaskQueueTypeInfo "vec'pollers" (Data.Vector.Vector PollerInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueTypeInfo'pollers
           (\ x__ y__ -> x__ {_TaskQueueTypeInfo'pollers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueTypeInfo "stats" TaskQueueStats where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueTypeInfo'stats
           (\ x__ y__ -> x__ {_TaskQueueTypeInfo'stats = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TaskQueueTypeInfo "maybe'stats" (Prelude.Maybe TaskQueueStats) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueTypeInfo'stats
           (\ x__ y__ -> x__ {_TaskQueueTypeInfo'stats = y__}))
        Prelude.id
instance Data.ProtoLens.Message TaskQueueTypeInfo where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.TaskQueueTypeInfo"
  packedMessageDescriptor _
    = "\n\
      \\DC1TaskQueueTypeInfo\DC2?\n\
      \\apollers\CAN\SOH \ETX(\v2%.temporal.api.taskqueue.v1.PollerInfoR\apollers\DC2?\n\
      \\ENQstats\CAN\STX \SOH(\v2).temporal.api.taskqueue.v1.TaskQueueStatsR\ENQstats"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pollers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pollers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PollerInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"pollers")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueTypeInfo
        stats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stats"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TaskQueueStats)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stats")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueTypeInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pollers__field_descriptor),
           (Data.ProtoLens.Tag 2, stats__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TaskQueueTypeInfo'_unknownFields
        (\ x__ y__ -> x__ {_TaskQueueTypeInfo'_unknownFields = y__})
  defMessage
    = TaskQueueTypeInfo'_constructor
        {_TaskQueueTypeInfo'pollers = Data.Vector.Generic.empty,
         _TaskQueueTypeInfo'stats = Prelude.Nothing,
         _TaskQueueTypeInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TaskQueueTypeInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld PollerInfo
             -> Data.ProtoLens.Encoding.Bytes.Parser TaskQueueTypeInfo
        loop x mutable'pollers
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'pollers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'pollers)
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
                              (Data.ProtoLens.Field.field @"vec'pollers") frozen'pollers x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "pollers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'pollers y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stats"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stats") y x)
                                  mutable'pollers
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'pollers
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'pollers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'pollers)
          "TaskQueueTypeInfo"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'pollers") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'stats") _x
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
instance Control.DeepSeq.NFData TaskQueueTypeInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TaskQueueTypeInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TaskQueueTypeInfo'pollers x__)
                (Control.DeepSeq.deepseq (_TaskQueueTypeInfo'stats x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.typesInfo' @:: Lens' TaskQueueVersionInfo (Data.Map.Map Data.Int.Int32 TaskQueueTypeInfo)@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.taskReachability' @:: Lens' TaskQueueVersionInfo Proto.Temporal.Api.Enums.V1.TaskQueue.BuildIdTaskReachability@ -}
data TaskQueueVersionInfo
  = TaskQueueVersionInfo'_constructor {_TaskQueueVersionInfo'typesInfo :: !(Data.Map.Map Data.Int.Int32 TaskQueueTypeInfo),
                                       _TaskQueueVersionInfo'taskReachability :: !Proto.Temporal.Api.Enums.V1.TaskQueue.BuildIdTaskReachability,
                                       _TaskQueueVersionInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TaskQueueVersionInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TaskQueueVersionInfo "typesInfo" (Data.Map.Map Data.Int.Int32 TaskQueueTypeInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueVersionInfo'typesInfo
           (\ x__ y__ -> x__ {_TaskQueueVersionInfo'typesInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueVersionInfo "taskReachability" Proto.Temporal.Api.Enums.V1.TaskQueue.BuildIdTaskReachability where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueVersionInfo'taskReachability
           (\ x__ y__ -> x__ {_TaskQueueVersionInfo'taskReachability = y__}))
        Prelude.id
instance Data.ProtoLens.Message TaskQueueVersionInfo where
  messageName _
    = Data.Text.pack "temporal.api.taskqueue.v1.TaskQueueVersionInfo"
  packedMessageDescriptor _
    = "\n\
      \\DC4TaskQueueVersionInfo\DC2]\n\
      \\n\
      \types_info\CAN\SOH \ETX(\v2>.temporal.api.taskqueue.v1.TaskQueueVersionInfo.TypesInfoEntryR\ttypesInfo\DC2[\n\
      \\DC1task_reachability\CAN\STX \SOH(\SO2..temporal.api.enums.v1.BuildIdTaskReachabilityR\DLEtaskReachability\SUBj\n\
      \\SOTypesInfoEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\ENQR\ETXkey\DC2B\n\
      \\ENQvalue\CAN\STX \SOH(\v2,.temporal.api.taskqueue.v1.TaskQueueTypeInfoR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        typesInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "types_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TaskQueueVersionInfo'TypesInfoEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"typesInfo")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueVersionInfo
        taskReachability__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_reachability"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.TaskQueue.BuildIdTaskReachability)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"taskReachability")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueVersionInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, typesInfo__field_descriptor),
           (Data.ProtoLens.Tag 2, taskReachability__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TaskQueueVersionInfo'_unknownFields
        (\ x__ y__ -> x__ {_TaskQueueVersionInfo'_unknownFields = y__})
  defMessage
    = TaskQueueVersionInfo'_constructor
        {_TaskQueueVersionInfo'typesInfo = Data.Map.empty,
         _TaskQueueVersionInfo'taskReachability = Data.ProtoLens.fieldDefault,
         _TaskQueueVersionInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TaskQueueVersionInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser TaskQueueVersionInfo
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
                          -> do !(entry :: TaskQueueVersionInfo'TypesInfoEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                     (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                         Data.ProtoLens.Encoding.Bytes.isolate
                                                                                           (Prelude.fromIntegral
                                                                                              len)
                                                                                           Data.ProtoLens.parseMessage)
                                                                                     "types_info"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"typesInfo")
                                        (\ !t -> Data.Map.insert key value t) x))
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "task_reachability"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"taskReachability") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TaskQueueVersionInfo"
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
                                       TaskQueueVersionInfo'TypesInfoEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"typesInfo") _x))))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"taskReachability") _x
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
instance Control.DeepSeq.NFData TaskQueueVersionInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TaskQueueVersionInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TaskQueueVersionInfo'typesInfo x__)
                (Control.DeepSeq.deepseq
                   (_TaskQueueVersionInfo'taskReachability x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.key' @:: Lens' TaskQueueVersionInfo'TypesInfoEntry Data.Int.Int32@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.value' @:: Lens' TaskQueueVersionInfo'TypesInfoEntry TaskQueueTypeInfo@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'value' @:: Lens' TaskQueueVersionInfo'TypesInfoEntry (Prelude.Maybe TaskQueueTypeInfo)@ -}
data TaskQueueVersionInfo'TypesInfoEntry
  = TaskQueueVersionInfo'TypesInfoEntry'_constructor {_TaskQueueVersionInfo'TypesInfoEntry'key :: !Data.Int.Int32,
                                                      _TaskQueueVersionInfo'TypesInfoEntry'value :: !(Prelude.Maybe TaskQueueTypeInfo),
                                                      _TaskQueueVersionInfo'TypesInfoEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TaskQueueVersionInfo'TypesInfoEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TaskQueueVersionInfo'TypesInfoEntry "key" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueVersionInfo'TypesInfoEntry'key
           (\ x__ y__
              -> x__ {_TaskQueueVersionInfo'TypesInfoEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueVersionInfo'TypesInfoEntry "value" TaskQueueTypeInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueVersionInfo'TypesInfoEntry'value
           (\ x__ y__
              -> x__ {_TaskQueueVersionInfo'TypesInfoEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TaskQueueVersionInfo'TypesInfoEntry "maybe'value" (Prelude.Maybe TaskQueueTypeInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueVersionInfo'TypesInfoEntry'value
           (\ x__ y__
              -> x__ {_TaskQueueVersionInfo'TypesInfoEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message TaskQueueVersionInfo'TypesInfoEntry where
  messageName _
    = Data.Text.pack
        "temporal.api.taskqueue.v1.TaskQueueVersionInfo.TypesInfoEntry"
  packedMessageDescriptor _
    = "\n\
      \\SOTypesInfoEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\ENQR\ETXkey\DC2B\n\
      \\ENQvalue\CAN\STX \SOH(\v2,.temporal.api.taskqueue.v1.TaskQueueTypeInfoR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueVersionInfo'TypesInfoEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TaskQueueTypeInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueVersionInfo'TypesInfoEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TaskQueueVersionInfo'TypesInfoEntry'_unknownFields
        (\ x__ y__
           -> x__ {_TaskQueueVersionInfo'TypesInfoEntry'_unknownFields = y__})
  defMessage
    = TaskQueueVersionInfo'TypesInfoEntry'_constructor
        {_TaskQueueVersionInfo'TypesInfoEntry'key = Data.ProtoLens.fieldDefault,
         _TaskQueueVersionInfo'TypesInfoEntry'value = Prelude.Nothing,
         _TaskQueueVersionInfo'TypesInfoEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TaskQueueVersionInfo'TypesInfoEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser TaskQueueVersionInfo'TypesInfoEntry
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
          (do loop Data.ProtoLens.defMessage) "TypesInfoEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
instance Control.DeepSeq.NFData TaskQueueVersionInfo'TypesInfoEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TaskQueueVersionInfo'TypesInfoEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TaskQueueVersionInfo'TypesInfoEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_TaskQueueVersionInfo'TypesInfoEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.buildIds' @:: Lens' TaskQueueVersionSelection [Data.Text.Text]@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.vec'buildIds' @:: Lens' TaskQueueVersionSelection (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.unversioned' @:: Lens' TaskQueueVersionSelection Prelude.Bool@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.allActive' @:: Lens' TaskQueueVersionSelection Prelude.Bool@ -}
data TaskQueueVersionSelection
  = TaskQueueVersionSelection'_constructor {_TaskQueueVersionSelection'buildIds :: !(Data.Vector.Vector Data.Text.Text),
                                            _TaskQueueVersionSelection'unversioned :: !Prelude.Bool,
                                            _TaskQueueVersionSelection'allActive :: !Prelude.Bool,
                                            _TaskQueueVersionSelection'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TaskQueueVersionSelection where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TaskQueueVersionSelection "buildIds" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueVersionSelection'buildIds
           (\ x__ y__ -> x__ {_TaskQueueVersionSelection'buildIds = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TaskQueueVersionSelection "vec'buildIds" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueVersionSelection'buildIds
           (\ x__ y__ -> x__ {_TaskQueueVersionSelection'buildIds = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueVersionSelection "unversioned" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueVersionSelection'unversioned
           (\ x__ y__ -> x__ {_TaskQueueVersionSelection'unversioned = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueVersionSelection "allActive" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueVersionSelection'allActive
           (\ x__ y__ -> x__ {_TaskQueueVersionSelection'allActive = y__}))
        Prelude.id
instance Data.ProtoLens.Message TaskQueueVersionSelection where
  messageName _
    = Data.Text.pack
        "temporal.api.taskqueue.v1.TaskQueueVersionSelection"
  packedMessageDescriptor _
    = "\n\
      \\EMTaskQueueVersionSelection\DC2\ESC\n\
      \\tbuild_ids\CAN\SOH \ETX(\tR\bbuildIds\DC2 \n\
      \\vunversioned\CAN\STX \SOH(\bR\vunversioned\DC2\GS\n\
      \\n\
      \all_active\CAN\ETX \SOH(\bR\tallActive"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        buildIds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "build_ids"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"buildIds")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueVersionSelection
        unversioned__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unversioned"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"unversioned")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueVersionSelection
        allActive__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "all_active"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"allActive")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueVersionSelection
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, buildIds__field_descriptor),
           (Data.ProtoLens.Tag 2, unversioned__field_descriptor),
           (Data.ProtoLens.Tag 3, allActive__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TaskQueueVersionSelection'_unknownFields
        (\ x__ y__
           -> x__ {_TaskQueueVersionSelection'_unknownFields = y__})
  defMessage
    = TaskQueueVersionSelection'_constructor
        {_TaskQueueVersionSelection'buildIds = Data.Vector.Generic.empty,
         _TaskQueueVersionSelection'unversioned = Data.ProtoLens.fieldDefault,
         _TaskQueueVersionSelection'allActive = Data.ProtoLens.fieldDefault,
         _TaskQueueVersionSelection'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TaskQueueVersionSelection
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser TaskQueueVersionSelection
        loop x mutable'buildIds
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'buildIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'buildIds)
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
                              (Data.ProtoLens.Field.field @"vec'buildIds") frozen'buildIds x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getText
                                              (Prelude.fromIntegral len))
                                        "build_ids"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'buildIds y)
                                loop x v
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "unversioned"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"unversioned") y x)
                                  mutable'buildIds
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "all_active"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"allActive") y x)
                                  mutable'buildIds
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'buildIds
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'buildIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'buildIds)
          "TaskQueueVersionSelection"
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
                           Data.Text.Encoding.encodeUtf8 _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'buildIds") _x))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"unversioned") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"allActive") _x
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
instance Control.DeepSeq.NFData TaskQueueVersionSelection where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TaskQueueVersionSelection'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TaskQueueVersionSelection'buildIds x__)
                (Control.DeepSeq.deepseq
                   (_TaskQueueVersionSelection'unversioned x__)
                   (Control.DeepSeq.deepseq
                      (_TaskQueueVersionSelection'allActive x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.currentDeploymentVersion' @:: Lens' TaskQueueVersioningInfo Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'currentDeploymentVersion' @:: Lens' TaskQueueVersioningInfo (Prelude.Maybe Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion)@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.currentVersion' @:: Lens' TaskQueueVersioningInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.rampingDeploymentVersion' @:: Lens' TaskQueueVersioningInfo Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'rampingDeploymentVersion' @:: Lens' TaskQueueVersioningInfo (Prelude.Maybe Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion)@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.rampingVersion' @:: Lens' TaskQueueVersioningInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.rampingVersionPercentage' @:: Lens' TaskQueueVersioningInfo Prelude.Float@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.updateTime' @:: Lens' TaskQueueVersioningInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'updateTime' @:: Lens' TaskQueueVersioningInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data TaskQueueVersioningInfo
  = TaskQueueVersioningInfo'_constructor {_TaskQueueVersioningInfo'currentDeploymentVersion :: !(Prelude.Maybe Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion),
                                          _TaskQueueVersioningInfo'currentVersion :: !Data.Text.Text,
                                          _TaskQueueVersioningInfo'rampingDeploymentVersion :: !(Prelude.Maybe Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion),
                                          _TaskQueueVersioningInfo'rampingVersion :: !Data.Text.Text,
                                          _TaskQueueVersioningInfo'rampingVersionPercentage :: !Prelude.Float,
                                          _TaskQueueVersioningInfo'updateTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                          _TaskQueueVersioningInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TaskQueueVersioningInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TaskQueueVersioningInfo "currentDeploymentVersion" Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueVersioningInfo'currentDeploymentVersion
           (\ x__ y__
              -> x__ {_TaskQueueVersioningInfo'currentDeploymentVersion = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TaskQueueVersioningInfo "maybe'currentDeploymentVersion" (Prelude.Maybe Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueVersioningInfo'currentDeploymentVersion
           (\ x__ y__
              -> x__ {_TaskQueueVersioningInfo'currentDeploymentVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueVersioningInfo "currentVersion" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueVersioningInfo'currentVersion
           (\ x__ y__ -> x__ {_TaskQueueVersioningInfo'currentVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueVersioningInfo "rampingDeploymentVersion" Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueVersioningInfo'rampingDeploymentVersion
           (\ x__ y__
              -> x__ {_TaskQueueVersioningInfo'rampingDeploymentVersion = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TaskQueueVersioningInfo "maybe'rampingDeploymentVersion" (Prelude.Maybe Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueVersioningInfo'rampingDeploymentVersion
           (\ x__ y__
              -> x__ {_TaskQueueVersioningInfo'rampingDeploymentVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueVersioningInfo "rampingVersion" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueVersioningInfo'rampingVersion
           (\ x__ y__ -> x__ {_TaskQueueVersioningInfo'rampingVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueVersioningInfo "rampingVersionPercentage" Prelude.Float where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueVersioningInfo'rampingVersionPercentage
           (\ x__ y__
              -> x__ {_TaskQueueVersioningInfo'rampingVersionPercentage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskQueueVersioningInfo "updateTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueVersioningInfo'updateTime
           (\ x__ y__ -> x__ {_TaskQueueVersioningInfo'updateTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TaskQueueVersioningInfo "maybe'updateTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskQueueVersioningInfo'updateTime
           (\ x__ y__ -> x__ {_TaskQueueVersioningInfo'updateTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message TaskQueueVersioningInfo where
  messageName _
    = Data.Text.pack
        "temporal.api.taskqueue.v1.TaskQueueVersioningInfo"
  packedMessageDescriptor _
    = "\n\
      \\ETBTaskQueueVersioningInfo\DC2q\n\
      \\SUBcurrent_deployment_version\CAN\a \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\CANcurrentDeploymentVersion\DC2+\n\
      \\SIcurrent_version\CAN\SOH \SOH(\tR\SOcurrentVersionB\STX\CAN\SOH\DC2q\n\
      \\SUBramping_deployment_version\CAN\t \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\CANrampingDeploymentVersion\DC2+\n\
      \\SIramping_version\CAN\STX \SOH(\tR\SOrampingVersionB\STX\CAN\SOH\DC2<\n\
      \\SUBramping_version_percentage\CAN\ETX \SOH(\STXR\CANrampingVersionPercentage\DC2;\n\
      \\vupdate_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \updateTime"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        currentDeploymentVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_deployment_version"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'currentDeploymentVersion")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueVersioningInfo
        currentVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"currentVersion")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueVersioningInfo
        rampingDeploymentVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ramping_deployment_version"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rampingDeploymentVersion")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueVersioningInfo
        rampingVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ramping_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rampingVersion")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueVersioningInfo
        rampingVersionPercentage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ramping_version_percentage"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rampingVersionPercentage")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueVersioningInfo
        updateTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "update_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'updateTime")) ::
              Data.ProtoLens.FieldDescriptor TaskQueueVersioningInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 7, 
            currentDeploymentVersion__field_descriptor),
           (Data.ProtoLens.Tag 1, currentVersion__field_descriptor),
           (Data.ProtoLens.Tag 9, rampingDeploymentVersion__field_descriptor),
           (Data.ProtoLens.Tag 2, rampingVersion__field_descriptor),
           (Data.ProtoLens.Tag 3, rampingVersionPercentage__field_descriptor),
           (Data.ProtoLens.Tag 4, updateTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TaskQueueVersioningInfo'_unknownFields
        (\ x__ y__ -> x__ {_TaskQueueVersioningInfo'_unknownFields = y__})
  defMessage
    = TaskQueueVersioningInfo'_constructor
        {_TaskQueueVersioningInfo'currentDeploymentVersion = Prelude.Nothing,
         _TaskQueueVersioningInfo'currentVersion = Data.ProtoLens.fieldDefault,
         _TaskQueueVersioningInfo'rampingDeploymentVersion = Prelude.Nothing,
         _TaskQueueVersioningInfo'rampingVersion = Data.ProtoLens.fieldDefault,
         _TaskQueueVersioningInfo'rampingVersionPercentage = Data.ProtoLens.fieldDefault,
         _TaskQueueVersioningInfo'updateTime = Prelude.Nothing,
         _TaskQueueVersioningInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TaskQueueVersioningInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser TaskQueueVersioningInfo
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
                                       "update_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"updateTime") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TaskQueueVersioningInfo"
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
                                   (Data.ProtoLens.Field.field @"maybe'updateTime") _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData TaskQueueVersioningInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TaskQueueVersioningInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TaskQueueVersioningInfo'currentDeploymentVersion x__)
                (Control.DeepSeq.deepseq
                   (_TaskQueueVersioningInfo'currentVersion x__)
                   (Control.DeepSeq.deepseq
                      (_TaskQueueVersioningInfo'rampingDeploymentVersion x__)
                      (Control.DeepSeq.deepseq
                         (_TaskQueueVersioningInfo'rampingVersion x__)
                         (Control.DeepSeq.deepseq
                            (_TaskQueueVersioningInfo'rampingVersionPercentage x__)
                            (Control.DeepSeq.deepseq
                               (_TaskQueueVersioningInfo'updateTime x__) ()))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.rule' @:: Lens' TimestampedBuildIdAssignmentRule BuildIdAssignmentRule@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'rule' @:: Lens' TimestampedBuildIdAssignmentRule (Prelude.Maybe BuildIdAssignmentRule)@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.createTime' @:: Lens' TimestampedBuildIdAssignmentRule Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'createTime' @:: Lens' TimestampedBuildIdAssignmentRule (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data TimestampedBuildIdAssignmentRule
  = TimestampedBuildIdAssignmentRule'_constructor {_TimestampedBuildIdAssignmentRule'rule :: !(Prelude.Maybe BuildIdAssignmentRule),
                                                   _TimestampedBuildIdAssignmentRule'createTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                   _TimestampedBuildIdAssignmentRule'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TimestampedBuildIdAssignmentRule where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TimestampedBuildIdAssignmentRule "rule" BuildIdAssignmentRule where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampedBuildIdAssignmentRule'rule
           (\ x__ y__ -> x__ {_TimestampedBuildIdAssignmentRule'rule = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TimestampedBuildIdAssignmentRule "maybe'rule" (Prelude.Maybe BuildIdAssignmentRule) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampedBuildIdAssignmentRule'rule
           (\ x__ y__ -> x__ {_TimestampedBuildIdAssignmentRule'rule = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimestampedBuildIdAssignmentRule "createTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampedBuildIdAssignmentRule'createTime
           (\ x__ y__
              -> x__ {_TimestampedBuildIdAssignmentRule'createTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TimestampedBuildIdAssignmentRule "maybe'createTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampedBuildIdAssignmentRule'createTime
           (\ x__ y__
              -> x__ {_TimestampedBuildIdAssignmentRule'createTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message TimestampedBuildIdAssignmentRule where
  messageName _
    = Data.Text.pack
        "temporal.api.taskqueue.v1.TimestampedBuildIdAssignmentRule"
  packedMessageDescriptor _
    = "\n\
      \ TimestampedBuildIdAssignmentRule\DC2D\n\
      \\EOTrule\CAN\SOH \SOH(\v20.temporal.api.taskqueue.v1.BuildIdAssignmentRuleR\EOTrule\DC2;\n\
      \\vcreate_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \createTime"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rule__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rule"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BuildIdAssignmentRule)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rule")) ::
              Data.ProtoLens.FieldDescriptor TimestampedBuildIdAssignmentRule
        createTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "create_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'createTime")) ::
              Data.ProtoLens.FieldDescriptor TimestampedBuildIdAssignmentRule
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, rule__field_descriptor),
           (Data.ProtoLens.Tag 2, createTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TimestampedBuildIdAssignmentRule'_unknownFields
        (\ x__ y__
           -> x__ {_TimestampedBuildIdAssignmentRule'_unknownFields = y__})
  defMessage
    = TimestampedBuildIdAssignmentRule'_constructor
        {_TimestampedBuildIdAssignmentRule'rule = Prelude.Nothing,
         _TimestampedBuildIdAssignmentRule'createTime = Prelude.Nothing,
         _TimestampedBuildIdAssignmentRule'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TimestampedBuildIdAssignmentRule
          -> Data.ProtoLens.Encoding.Bytes.Parser TimestampedBuildIdAssignmentRule
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
                                       "rule"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rule") y x)
                        18
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
          (do loop Data.ProtoLens.defMessage)
          "TimestampedBuildIdAssignmentRule"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rule") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TimestampedBuildIdAssignmentRule where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TimestampedBuildIdAssignmentRule'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TimestampedBuildIdAssignmentRule'rule x__)
                (Control.DeepSeq.deepseq
                   (_TimestampedBuildIdAssignmentRule'createTime x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.rule' @:: Lens' TimestampedCompatibleBuildIdRedirectRule CompatibleBuildIdRedirectRule@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'rule' @:: Lens' TimestampedCompatibleBuildIdRedirectRule (Prelude.Maybe CompatibleBuildIdRedirectRule)@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.createTime' @:: Lens' TimestampedCompatibleBuildIdRedirectRule Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Taskqueue.V1.Message_Fields.maybe'createTime' @:: Lens' TimestampedCompatibleBuildIdRedirectRule (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data TimestampedCompatibleBuildIdRedirectRule
  = TimestampedCompatibleBuildIdRedirectRule'_constructor {_TimestampedCompatibleBuildIdRedirectRule'rule :: !(Prelude.Maybe CompatibleBuildIdRedirectRule),
                                                           _TimestampedCompatibleBuildIdRedirectRule'createTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                           _TimestampedCompatibleBuildIdRedirectRule'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TimestampedCompatibleBuildIdRedirectRule where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TimestampedCompatibleBuildIdRedirectRule "rule" CompatibleBuildIdRedirectRule where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampedCompatibleBuildIdRedirectRule'rule
           (\ x__ y__
              -> x__ {_TimestampedCompatibleBuildIdRedirectRule'rule = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TimestampedCompatibleBuildIdRedirectRule "maybe'rule" (Prelude.Maybe CompatibleBuildIdRedirectRule) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampedCompatibleBuildIdRedirectRule'rule
           (\ x__ y__
              -> x__ {_TimestampedCompatibleBuildIdRedirectRule'rule = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimestampedCompatibleBuildIdRedirectRule "createTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampedCompatibleBuildIdRedirectRule'createTime
           (\ x__ y__
              -> x__
                   {_TimestampedCompatibleBuildIdRedirectRule'createTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TimestampedCompatibleBuildIdRedirectRule "maybe'createTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampedCompatibleBuildIdRedirectRule'createTime
           (\ x__ y__
              -> x__
                   {_TimestampedCompatibleBuildIdRedirectRule'createTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message TimestampedCompatibleBuildIdRedirectRule where
  messageName _
    = Data.Text.pack
        "temporal.api.taskqueue.v1.TimestampedCompatibleBuildIdRedirectRule"
  packedMessageDescriptor _
    = "\n\
      \(TimestampedCompatibleBuildIdRedirectRule\DC2L\n\
      \\EOTrule\CAN\SOH \SOH(\v28.temporal.api.taskqueue.v1.CompatibleBuildIdRedirectRuleR\EOTrule\DC2;\n\
      \\vcreate_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \createTime"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rule__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rule"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CompatibleBuildIdRedirectRule)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rule")) ::
              Data.ProtoLens.FieldDescriptor TimestampedCompatibleBuildIdRedirectRule
        createTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "create_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'createTime")) ::
              Data.ProtoLens.FieldDescriptor TimestampedCompatibleBuildIdRedirectRule
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, rule__field_descriptor),
           (Data.ProtoLens.Tag 2, createTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TimestampedCompatibleBuildIdRedirectRule'_unknownFields
        (\ x__ y__
           -> x__
                {_TimestampedCompatibleBuildIdRedirectRule'_unknownFields = y__})
  defMessage
    = TimestampedCompatibleBuildIdRedirectRule'_constructor
        {_TimestampedCompatibleBuildIdRedirectRule'rule = Prelude.Nothing,
         _TimestampedCompatibleBuildIdRedirectRule'createTime = Prelude.Nothing,
         _TimestampedCompatibleBuildIdRedirectRule'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TimestampedCompatibleBuildIdRedirectRule
          -> Data.ProtoLens.Encoding.Bytes.Parser TimestampedCompatibleBuildIdRedirectRule
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
                                       "rule"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rule") y x)
                        18
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
          (do loop Data.ProtoLens.defMessage)
          "TimestampedCompatibleBuildIdRedirectRule"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rule") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TimestampedCompatibleBuildIdRedirectRule where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TimestampedCompatibleBuildIdRedirectRule'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TimestampedCompatibleBuildIdRedirectRule'rule x__)
                (Control.DeepSeq.deepseq
                   (_TimestampedCompatibleBuildIdRedirectRule'createTime x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \'temporal/api/taskqueue/v1/message.proto\DC2\EMtemporal.api.taskqueue.v1\SUB\RSgoogle/protobuf/duration.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB&temporal/api/enums/v1/task_queue.proto\SUB$temporal/api/common/v1/message.proto\SUB(temporal/api/deployment/v1/message.proto\"z\n\
    \\tTaskQueue\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC28\n\
    \\EOTkind\CAN\STX \SOH(\SO2$.temporal.api.enums.v1.TaskQueueKindR\EOTkind\DC2\US\n\
    \\vnormal_name\CAN\ETX \SOH(\tR\n\
    \normalName\"b\n\
    \\DC1TaskQueueMetadata\DC2M\n\
    \\DC4max_tasks_per_second\CAN\SOH \SOH(\v2\FS.google.protobuf.DoubleValueR\DC1maxTasksPerSecond\"7\n\
    \\SOPollerPoolInfo\DC2%\n\
    \\SOtarget_pollers\CAN\SOH \SOH(\ENQR\rtargetPollers\"\212\ETX\n\
    \\ETBTaskQueueVersioningInfo\DC2q\n\
    \\SUBcurrent_deployment_version\CAN\a \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\CANcurrentDeploymentVersion\DC2+\n\
    \\SIcurrent_version\CAN\SOH \SOH(\tR\SOcurrentVersionB\STX\CAN\SOH\DC2q\n\
    \\SUBramping_deployment_version\CAN\t \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\CANrampingDeploymentVersion\DC2+\n\
    \\SIramping_version\CAN\STX \SOH(\tR\SOrampingVersionB\STX\CAN\SOH\DC2<\n\
    \\SUBramping_version_percentage\CAN\ETX \SOH(\STXR\CANrampingVersionPercentage\DC2;\n\
    \\vupdate_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \updateTime\"y\n\
    \\EMTaskQueueVersionSelection\DC2\ESC\n\
    \\tbuild_ids\CAN\SOH \ETX(\tR\bbuildIds\DC2 \n\
    \\vunversioned\CAN\STX \SOH(\bR\vunversioned\DC2\GS\n\
    \\n\
    \all_active\CAN\ETX \SOH(\bR\tallActive\"\190\STX\n\
    \\DC4TaskQueueVersionInfo\DC2]\n\
    \\n\
    \types_info\CAN\SOH \ETX(\v2>.temporal.api.taskqueue.v1.TaskQueueVersionInfo.TypesInfoEntryR\ttypesInfo\DC2[\n\
    \\DC1task_reachability\CAN\STX \SOH(\SO2..temporal.api.enums.v1.BuildIdTaskReachabilityR\DLEtaskReachability\SUBj\n\
    \\SOTypesInfoEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\ENQR\ETXkey\DC2B\n\
    \\ENQvalue\CAN\STX \SOH(\v2,.temporal.api.taskqueue.v1.TaskQueueTypeInfoR\ENQvalue:\STX8\SOH\"\149\SOH\n\
    \\DC1TaskQueueTypeInfo\DC2?\n\
    \\apollers\CAN\SOH \ETX(\v2%.temporal.api.taskqueue.v1.PollerInfoR\apollers\DC2?\n\
    \\ENQstats\CAN\STX \SOH(\v2).temporal.api.taskqueue.v1.TaskQueueStatsR\ENQstats\"\167\STX\n\
    \\SOTaskQueueStats\DC2:\n\
    \\EMapproximate_backlog_count\CAN\SOH \SOH(\ETXR\ETBapproximateBacklogCount\DC2Q\n\
    \\ETBapproximate_backlog_age\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\NAKapproximateBacklogAge\DC2$\n\
    \\SOtasks_add_rate\CAN\ETX \SOH(\STXR\ftasksAddRate\DC2.\n\
    \\DC3tasks_dispatch_rate\CAN\EOT \SOH(\STXR\DC1tasksDispatchRate\DC20\n\
    \\DC4rate_limiting_active\CAN\ENQ \SOH(\bR\DC2rateLimitingActive\"\239\SOH\n\
    \\SITaskQueueStatus\DC2,\n\
    \\DC2backlog_count_hint\CAN\SOH \SOH(\ETXR\DLEbacklogCountHint\DC2\GS\n\
    \\n\
    \read_level\CAN\STX \SOH(\ETXR\treadLevel\DC2\ESC\n\
    \\tack_level\CAN\ETX \SOH(\ETXR\backLevel\DC2&\n\
    \\SIrate_per_second\CAN\EOT \SOH(\SOHR\rratePerSecond\DC2J\n\
    \\rtask_id_block\CAN\ENQ \SOH(\v2&.temporal.api.taskqueue.v1.TaskIdBlockR\vtaskIdBlock\"?\n\
    \\vTaskIdBlock\DC2\EM\n\
    \\bstart_id\CAN\SOH \SOH(\ETXR\astartId\DC2\NAK\n\
    \\ACKend_id\CAN\STX \SOH(\ETXR\ENQendId\"V\n\
    \\SUBTaskQueuePartitionMetadata\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2&\n\
    \\SIowner_host_name\CAN\STX \SOH(\tR\rownerHostName\"\241\STX\n\
    \\n\
    \PollerInfo\DC2D\n\
    \\DLElast_access_time\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\SOlastAccessTime\DC2\SUB\n\
    \\bidentity\CAN\STX \SOH(\tR\bidentity\DC2&\n\
    \\SIrate_per_second\CAN\ETX \SOH(\SOHR\rratePerSecond\DC2u\n\
    \\ESCworker_version_capabilities\CAN\EOT \SOH(\v21.temporal.api.common.v1.WorkerVersionCapabilitiesR\EMworkerVersionCapabilitiesB\STX\CAN\SOH\DC2b\n\
    \\DC2deployment_options\CAN\ENQ \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentOptionsR\DC1deploymentOptions\"\195\SOH\n\
    \\EMStickyExecutionAttributes\DC2P\n\
    \\DC1worker_task_queue\CAN\SOH \SOH(\v2$.temporal.api.taskqueue.v1.TaskQueueR\SIworkerTaskQueue\DC2T\n\
    \\EMschedule_to_start_timeout\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout\"3\n\
    \\DC4CompatibleVersionSet\DC2\ESC\n\
    \\tbuild_ids\CAN\SOH \ETX(\tR\bbuildIds\"\131\SOH\n\
    \\NAKTaskQueueReachability\DC2\GS\n\
    \\n\
    \task_queue\CAN\SOH \SOH(\tR\ttaskQueue\DC2K\n\
    \\freachability\CAN\STX \ETX(\SO2'.temporal.api.enums.v1.TaskReachabilityR\freachability\"\154\SOH\n\
    \\DC3BuildIdReachability\DC2\EM\n\
    \\bbuild_id\CAN\SOH \SOH(\tR\abuildId\DC2h\n\
    \\ETBtask_queue_reachability\CAN\STX \ETX(\v20.temporal.api.taskqueue.v1.TaskQueueReachabilityR\NAKtaskQueueReachability\";\n\
    \\DLERampByPercentage\DC2'\n\
    \\SIramp_percentage\CAN\SOH \SOH(\STXR\SOrampPercentage\"\159\SOH\n\
    \\NAKBuildIdAssignmentRule\DC2&\n\
    \\SItarget_build_id\CAN\SOH \SOH(\tR\rtargetBuildId\DC2V\n\
    \\SIpercentage_ramp\CAN\ETX \SOH(\v2+.temporal.api.taskqueue.v1.RampByPercentageH\NULR\SOpercentageRampB\ACK\n\
    \\EOTramp\"o\n\
    \\GSCompatibleBuildIdRedirectRule\DC2&\n\
    \\SIsource_build_id\CAN\SOH \SOH(\tR\rsourceBuildId\DC2&\n\
    \\SItarget_build_id\CAN\STX \SOH(\tR\rtargetBuildId\"\165\SOH\n\
    \ TimestampedBuildIdAssignmentRule\DC2D\n\
    \\EOTrule\CAN\SOH \SOH(\v20.temporal.api.taskqueue.v1.BuildIdAssignmentRuleR\EOTrule\DC2;\n\
    \\vcreate_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \createTime\"\181\SOH\n\
    \(TimestampedCompatibleBuildIdRedirectRule\DC2L\n\
    \\EOTrule\CAN\SOH \SOH(\v28.temporal.api.taskqueue.v1.CompatibleBuildIdRedirectRuleR\EOTrule\DC2;\n\
    \\vcreate_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \createTime\"9\n\
    \\SIPollerGroupInfo\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\tR\STXid\DC2\SYN\n\
    \\ACKweight\CAN\STX \SOH(\STXR\ACKweight\"}\n\
    \\DLEPollerGroupsInfo\DC2\CAN\n\
    \\aversion\CAN\SOH \SOH(\ETXR\aversion\DC2O\n\
    \\rpoller_groups\CAN\STX \ETX(\v2*.temporal.api.taskqueue.v1.PollerGroupInfoR\fpollerGroups\"Z\n\
    \\NAKPollerScalingDecision\DC2A\n\
    \\GSpoll_request_delta_suggestion\CAN\SOH \SOH(\ENQR\SUBpollRequestDeltaSuggestion\";\n\
    \\tRateLimit\DC2.\n\
    \\DC3requests_per_second\CAN\SOH \SOH(\STXR\DC1requestsPerSecond\"=\n\
    \\DLEConcurrencyLimit\DC2)\n\
    \\DLEconcurrent_tasks\CAN\SOH \SOH(\ENQR\SIconcurrentTasks\"\142\SOH\n\
    \\SOConfigMetadata\DC2\SYN\n\
    \\ACKreason\CAN\SOH \SOH(\tR\ACKreason\DC2'\n\
    \\SIupdate_identity\CAN\STX \SOH(\tR\SOupdateIdentity\DC2;\n\
    \\vupdate_time\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \updateTime\"\157\SOH\n\
    \\SIRateLimitConfig\DC2C\n\
    \\n\
    \rate_limit\CAN\SOH \SOH(\v2$.temporal.api.taskqueue.v1.RateLimitR\trateLimit\DC2E\n\
    \\bmetadata\CAN\STX \SOH(\v2).temporal.api.taskqueue.v1.ConfigMetadataR\bmetadata\"\185\SOH\n\
    \\SYNConcurrencyLimitConfig\DC2X\n\
    \\DC1concurrency_limit\CAN\SOH \SOH(\v2+.temporal.api.taskqueue.v1.ConcurrencyLimitR\DLEconcurrencyLimit\DC2E\n\
    \\bmetadata\CAN\STX \SOH(\v2).temporal.api.taskqueue.v1.ConfigMetadataR\bmetadata\"\152\EOT\n\
    \\SITaskQueueConfig\DC2T\n\
    \\DLEqueue_rate_limit\CAN\SOH \SOH(\v2*.temporal.api.taskqueue.v1.RateLimitConfigR\SOqueueRateLimit\DC2r\n\
    \ fairness_keys_rate_limit_default\CAN\STX \SOH(\v2*.temporal.api.taskqueue.v1.RateLimitConfigR\FSfairnessKeysRateLimitDefault\DC2\131\SOH\n\
    \\EMfairness_weight_overrides\CAN\ETX \ETX(\v2G.temporal.api.taskqueue.v1.TaskQueueConfig.FairnessWeightOverridesEntryR\ETBfairnessWeightOverrides\DC2i\n\
    \\ETBqueue_concurrency_limit\CAN\EOT \SOH(\v21.temporal.api.taskqueue.v1.ConcurrencyLimitConfigR\NAKqueueConcurrencyLimit\SUBJ\n\
    \\FSFairnessWeightOverridesEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\STXR\ENQvalue:\STX8\SOHB\152\SOH\n\
    \\FSio.temporal.api.taskqueue.v1B\fMessageProtoP\SOHZ)go.temporal.io/api/taskqueue/v1;taskqueue\170\STX\ESCTemporalio.Api.TaskQueue.V1\234\STX\RSTemporalio::Api::TaskQueue::V1J\252\142\SOH\n\
    \\a\DC2\ENQ\NUL\NUL\136\ETX\SOH\n\
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
    \\STX\ETX\STX\DC2\ETX\r\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\SI\NUL0\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\DLE\NUL.\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\DC1\NUL2\n\
    \E\n\
    \\STX\EOT\NUL\DC2\EOT\DC4\NUL\ESC\SOH\SUB9 See https://docs.temporal.io/docs/concepts/task-queues/\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b\DC1\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\NAK\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\NAK\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\NAK\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\NAK\DC2\DC3\n\
    \/\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\ETB\EOT1\SUB\" Default: TASK_QUEUE_KIND_NORMAL.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\ETB\EOT'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\ETB(,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\ETB/0\n\
    \\149\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\SUB\EOT\ESC\SUB\135\SOH Iff kind == TASK_QUEUE_KIND_STICKY, then this field contains the name of\n\
    \ the normal task queue that the sticky worker is running on.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\SUB\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\SUB\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\SUB\EM\SUB\n\
    \2\n\
    \\STX\EOT\SOH\DC2\EOT\RS\NUL!\SOH\SUB& Only applies to activity task queues\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\RS\b\EM\n\
    \B\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX \EOT9\SUB5 Allows throttling dispatch of tasks from this queue\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX \EOT\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX  4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX 78\n\
    \I\n\
    \\STX\EOT\STX\DC2\EOT$\NUL(\SOH\SUB= Worker-reported state about the poller pool issuing a poll.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX$\b\SYN\n\
    \\145\SOH\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX'\EOT\GS\SUB\131\SOH Number of pollers this worker is targeting for this task queue and task type.\n\
    \ 0 if unknown, such as a poller pool of fixed size.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX'\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX'\n\
    \\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX'\ESC\FS\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT*\NULD\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX*\b\US\n\
    \\200\ETX\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX0\EOTV\SUB\186\ETX Specifies which Deployment Version should receive new workflow executions and tasks of\n\
    \ existing unversioned or AutoUpgrade workflows.\n\
    \ Nil value represents all the unversioned workers (those with `UNVERSIONED` (or unspecified) `WorkerVersioningMode`.)\n\
    \ Note: Current Version is overridden by the Ramping Version for a portion of traffic when ramp percentage\n\
    \ is non-zero (see `ramping_deployment_version` and `ramping_version_percentage`).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETX0\EOT6\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX07Q\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX0TU\n\
    \<\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX2\EOT3\SUB/ Deprecated. Use `current_deployment_version`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX2\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX2\v\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX2\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\b\DC2\ETX2\US2\n\
    \\r\n\
    \\ACK\EOT\ETX\STX\SOH\b\ETX\DC2\ETX2 1\n\
    \\254\ETX\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX9\EOTV\SUB\240\ETX When ramp percentage is non-zero, that portion of traffic is shifted from the Current Version to the Ramping Version.\n\
    \ Must always be different from `current_deployment_version` unless both are nil.\n\
    \ Nil value represents all the unversioned workers (those with `UNVERSIONED` (or unspecified) `WorkerVersioningMode`.)\n\
    \ Note that it is possible to ramp from one Version to another Version, or from unversioned\n\
    \ workers to a particular Version, or from a particular Version to unversioned workers.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\ETX9\EOT6\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX97Q\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX9TU\n\
    \<\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX;\EOT3\SUB/ Deprecated. Use `ramping_deployment_version`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETX;\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX;\v\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX;\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\b\DC2\ETX;\US2\n\
    \\r\n\
    \\ACK\EOT\ETX\STX\ETX\b\ETX\DC2\ETX; 1\n\
    \\216\STX\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETXA\EOT)\SUB\202\STX Percentage of tasks that are routed to the Ramping Version instead of the Current Version.\n\
    \ Valid range: [0, 100]. A 100% value means the Ramping Version is receiving full traffic but\n\
    \ not yet \"promoted\" to be the Current Version, likely due to pending validations.\n\
    \ A 0% value means the Ramping Version is receiving no traffic.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETXA\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETXA\n\
    \$\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETXA'(\n\
    \K\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\ETXC\EOT.\SUB> Last time versioning information of this Task Queue changed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ACK\DC2\ETXC\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETXC\RS)\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETXC,-\n\
    \G\n\
    \\STX\EOT\EOT\DC2\EOTG\NULO\SOH\SUB; Used for specifying versions the caller is interested in.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXG\b!\n\
    \*\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXI\EOT\"\SUB\GS Include specific Build IDs.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETXI\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXI\r\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXI\DC4\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXI !\n\
    \-\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXK\EOT\EM\SUB  Include the unversioned queue.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXK\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXK\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXK\ETB\CAN\n\
    \\196\SOH\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXN\EOT\CAN\SUB\182\SOH Include all active versions. A version is considered active if, in the last few minutes,\n\
    \ it has had new tasks or polls, or it has been the subject of certain task queue API calls.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETXN\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXN\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXN\SYN\ETB\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOTQ\NUL_\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXQ\b\FS\n\
    \y\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXS\EOT1\SUBl Task Queue info per Task Type. Key is the numerical value of the temporal.api.enums.v1.TaskQueueType enum.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETXS\EOT!\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXS\",\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXS/0\n\
    \\235\ENQ\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX^\EOTH\SUB\221\ENQ Task Reachability is eventually consistent; there may be a delay until it converges to the most\n\
    \ accurate value but it is designed in a way to take the more conservative side until it converges.\n\
    \ For example REACHABLE is more conservative than CLOSED_WORKFLOWS_ONLY.\n\
    \\n\
    \ Note: future activities who inherit their workflow's Build ID but not its Task Queue will not be\n\
    \ accounted for reachability as server cannot know if they'll happen as they do not use\n\
    \ assignment rules of their Task Queue. Same goes for Child Workflows or Continue-As-New Workflows\n\
    \ who inherit the parent/previous workflow's Build ID but not its Task Queue. In those cases, make\n\
    \ sure to query reachability for the parent/previous workflow's Task Queue as well.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\ETX^\EOT1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX^2C\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX^FG\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOTa\NULe\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXa\b\EM\n\
    \\DEL\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXc\EOT$\SUBr Unversioned workers (with `useVersioning=false`) are reported in unversioned result even if they set a Build ID.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETXc\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\ETXc\r\ETB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXc\CAN\US\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXc\"#\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETXd\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\ETXd\EOT\DC2\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXd\DC3\CAN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXd\ESC\FS\n\
    \\179\STX\n\
    \\STX\EOT\a\DC2\ENQk\NUL\158\SOH\SOH\SUB\165\STX TaskQueueStats contains statistics about task queue backlog and activity.\n\
    \\n\
    \ For workflow task queue type, this result is partial because tasks sent to sticky queues are not included. Read\n\
    \ comments above each metric to understand the impact of sticky queue exclusion on that metric accuracy.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXk\b\SYN\n\
    \\161\ETX\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETXr\EOT(\SUB\147\ETX The approximate number of tasks backlogged in this task queue. May count expired tasks but eventually\n\
    \ converges to the right value. Can be relied upon for scaling decisions.\n\
    \\n\
    \ Special note for workflow task queue type: this metric does not count sticky queue tasks. However, because\n\
    \ those tasks only remain valid for a few seconds, the inaccuracy becomes less significant as the backlog size\n\
    \ grows.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETXr\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETXr\n\
    \#\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETXr&'\n\
    \\151\ETX\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETXy\EOT9\SUB\137\ETX Approximate age of the oldest task in the backlog based on the creation time of the task at the head of\n\
    \ the queue. Can be relied upon for scaling decisions.\n\
    \\n\
    \ Special note for workflow task queue type: this metric does not count sticky queue tasks. However, because\n\
    \ those tasks only remain valid for a few seconds, they should not affect the result when backlog is older than\n\
    \ few seconds.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\ETXy\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETXy\GS4\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETXy78\n\
    \\188\a\n\
    \\EOT\EOT\a\STX\STX\DC2\EOT\136\SOH\EOT\GS\SUB\173\a The approximate tasks per second added to the task queue, averaging the last 30 seconds. These includes tasks\n\
    \ whether or not they were added to/dispatched from the backlog or they were dispatched immediately without going\n\
    \ to the backlog (sync-matched).\n\
    \\n\
    \ The difference between `tasks_add_rate` and `tasks_dispatch_rate` is a reliable metric for the rate at which\n\
    \ backlog grows/shrinks.\n\
    \\n\
    \ Note: the actual tasks delivered to the workers may significantly be higher than the numbers reported by\n\
    \ tasks_add_rate, because:\n\
    \ - Tasks can be sent to workers without going to the task queue. This is called Eager dispatch. Eager dispatch is\n\
    \   enable for activities by default in the latest SDKs.\n\
    \ - Tasks going to Sticky queue are not accounted for. Note that, typically, only the first workflow task of each\n\
    \   workflow goes to a normal queue, and the rest workflow tasks go to the Sticky queue associated with a specific\n\
    \   worker instance.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\EOT\136\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\EOT\136\SOH\n\
    \\CAN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\EOT\136\SOH\ESC\FS\n\
    \\200\a\n\
    \\EOT\EOT\a\STX\ETX\DC2\EOT\151\SOH\EOT\"\SUB\185\a The approximate tasks per second dispatched from the task queue, averaging the last 30 seconds. These includes\n\
    \ tasks whether or not they were added to/dispatched from the backlog or they were dispatched immediately without\n\
    \ going to the backlog (sync-matched).\n\
    \\n\
    \ The difference between `tasks_add_rate` and `tasks_dispatch_rate` is a reliable metric for the rate at which\n\
    \ backlog grows/shrinks.\n\
    \\n\
    \ Note: the actual tasks delivered to the workers may significantly be higher than the numbers reported by\n\
    \ tasks_dispatch_rate, because:\n\
    \ - Tasks can be sent to workers without going to the task queue. This is called Eager dispatch. Eager dispatch is\n\
    \   enable for activities by default in the latest SDKs.\n\
    \ - Tasks going to Sticky queue are not accounted for. Note that, typically, only the first workflow task of each\n\
    \   workflow goes to a normal queue, and the rest workflow tasks go to the Sticky queue associated with a specific\n\
    \   worker instance.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ENQ\DC2\EOT\151\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\EOT\151\SOH\n\
    \\GS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\EOT\151\SOH !\n\
    \\194\STX\n\
    \\EOT\EOT\a\STX\EOT\DC2\EOT\157\SOH\EOT\"\SUB\179\STX Whether rate limiting blocked any dispatches within the recent observation window (approximately\n\
    \ 30 seconds). When true, adding more workers will not increase throughput \226\128\148 the bottleneck is the\n\
    \ rate limit, not worker count. This field is useful for auto-scaling systems to avoid unnecessary\n\
    \ scale-up.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\ENQ\DC2\EOT\157\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\SOH\DC2\EOT\157\SOH\t\GS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\ETX\DC2\EOT\157\SOH !\n\
    \{\n\
    \\STX\EOT\b\DC2\ACK\161\SOH\NUL\167\SOH\SOH\SUBm Deprecated. Use `InternalTaskQueueStatus`. This is kept until `DescribeTaskQueue` supports legacy behavior.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\161\SOH\b\ETB\n\
    \\f\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\162\SOH\EOT!\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\162\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\162\SOH\n\
    \\FS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\162\SOH\US \n\
    \\f\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\163\SOH\EOT\EM\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\EOT\163\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\163\SOH\n\
    \\DC4\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\163\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT\164\SOH\EOT\CAN\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\EOT\164\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\164\SOH\n\
    \\DC3\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\164\SOH\SYN\ETB\n\
    \\f\n\
    \\EOT\EOT\b\STX\ETX\DC2\EOT\165\SOH\EOT\US\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ENQ\DC2\EOT\165\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\EOT\165\SOH\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\EOT\165\SOH\GS\RS\n\
    \\f\n\
    \\EOT\EOT\b\STX\EOT\DC2\EOT\166\SOH\EOT\"\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\ACK\DC2\EOT\166\SOH\EOT\SI\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\SOH\DC2\EOT\166\SOH\DLE\GS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\ETX\DC2\EOT\166\SOH !\n\
    \\f\n\
    \\STX\EOT\t\DC2\ACK\169\SOH\NUL\172\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\169\SOH\b\DC3\n\
    \\f\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\170\SOH\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\EOT\170\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\170\SOH\n\
    \\DC2\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\170\SOH\NAK\SYN\n\
    \\f\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\171\SOH\EOT\NAK\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ENQ\DC2\EOT\171\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\171\SOH\n\
    \\DLE\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\171\SOH\DC3\DC4\n\
    \\f\n\
    \\STX\EOT\n\
    \\DC2\ACK\174\SOH\NUL\177\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\174\SOH\b\"\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\175\SOH\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\175\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\175\SOH\v\SO\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\175\SOH\DC1\DC2\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\176\SOH\EOT\US\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\EOT\176\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\176\SOH\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\176\SOH\GS\RS\n\
    \\f\n\
    \\STX\EOT\v\DC2\ACK\179\SOH\NUL\189\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\179\SOH\b\DC2\n\
    \\f\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\180\SOH\EOT3\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ACK\DC2\EOT\180\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\180\SOH\RS.\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\180\SOH12\n\
    \\f\n\
    \\EOT\EOT\v\STX\SOH\DC2\EOT\181\SOH\EOT\CAN\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\EOT\181\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\EOT\181\SOH\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\EOT\181\SOH\SYN\ETB\n\
    \\f\n\
    \\EOT\EOT\v\STX\STX\DC2\EOT\182\SOH\EOT\US\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ENQ\DC2\EOT\182\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\EOT\182\SOH\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\EOT\182\SOH\GS\RS\n\
    \\169\SOH\n\
    \\EOT\EOT\v\STX\ETX\DC2\EOT\186\SOH\EOTi\SUB\154\SOH If a worker has opted into the worker versioning feature while polling, its capabilities will\n\
    \ appear here.\n\
    \ Deprecated. Replaced by deployment_options.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ACK\DC2\EOT\186\SOH\EOT4\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\SOH\DC2\EOT\186\SOH5P\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ETX\DC2\EOT\186\SOHST\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\b\DC2\EOT\186\SOHUh\n\
    \\SO\n\
    \\ACK\EOT\v\STX\ETX\b\ETX\DC2\EOT\186\SOHVg\n\
    \B\n\
    \\EOT\EOT\v\STX\EOT\DC2\EOT\188\SOH\EOTN\SUB4 Worker deployment options that SDK sent to server.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\ACK\DC2\EOT\188\SOH\EOT6\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\SOH\DC2\EOT\188\SOH7I\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\ETX\DC2\EOT\188\SOHLM\n\
    \\f\n\
    \\STX\EOT\f\DC2\ACK\191\SOH\NUL\196\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\191\SOH\b!\n\
    \\f\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\192\SOH\EOT$\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ACK\DC2\EOT\192\SOH\EOT\r\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\192\SOH\SO\US\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\192\SOH\"#\n\
    \\132\SOH\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\195\SOH\EOT;\SUBv (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ACK\DC2\EOT\195\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\195\SOH\GS6\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\195\SOH9:\n\
    \\212\SOH\n\
    \\STX\EOT\r\DC2\ACK\200\SOH\NUL\203\SOH\SOH\SUB\197\SOH Used by the worker versioning APIs, represents an unordered set of one or more versions which are\n\
    \ considered to be compatible with each other. Currently the versions are always worker build IDs.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\200\SOH\b\FS\n\
    \{\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\202\SOH\EOT\"\SUBm All the compatible versions, unordered, except for the last element, which is considered the set \"default\".\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\EOT\DC2\EOT\202\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\EOT\202\SOH\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\202\SOH\DC4\GS\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\202\SOH !\n\
    \J\n\
    \\STX\EOT\SO\DC2\ACK\206\SOH\NUL\212\SOH\SOH\SUB< Reachability of tasks for a worker on a single task queue.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\206\SOH\b\GS\n\
    \\f\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\207\SOH\EOT\SUB\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\EOT\207\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\207\SOH\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\207\SOH\CAN\EM\n\
    \\233\SOH\n\
    \\EOT\EOT\SO\STX\SOH\DC2\EOT\211\SOH\EOTE\SUB\218\SOH Task reachability for a worker in a single task queue.\n\
    \ See the TaskReachability docstring for information about each enum variant.\n\
    \ If reachability is empty, this worker is considered unreachable in this task queue.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\EOT\DC2\EOT\211\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ACK\DC2\EOT\211\SOH\r3\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\EOT\211\SOH4@\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\EOT\211\SOHCD\n\
    \[\n\
    \\STX\EOT\SI\DC2\ACK\215\SOH\NUL\220\SOH\SOH\SUBM Reachability of tasks for a worker by build id, in one or more task queues.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\215\SOH\b\ESC\n\
    \3\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\217\SOH\EOT\CAN\SUB% A build id or empty if unversioned.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ENQ\DC2\EOT\217\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\217\SOH\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\217\SOH\SYN\ETB\n\
    \,\n\
    \\EOT\EOT\SI\STX\SOH\DC2\EOT\219\SOH\EOT?\SUB\RS Reachability per task queue.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\EOT\DC2\EOT\219\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ACK\DC2\EOT\219\SOH\r\"\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\EOT\219\SOH#:\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\EOT\219\SOH=>\n\
    \\f\n\
    \\STX\EOT\DLE\DC2\ACK\222\SOH\NUL\225\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\222\SOH\b\CAN\n\
    \,\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\224\SOH\EOT\RS\SUB\RS Acceptable range is [0,100).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\EOT\224\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\224\SOH\n\
    \\EM\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\224\SOH\FS\GS\n\
    \\190\SI\n\
    \\STX\EOT\DC1\DC2\ACK\136\STX\NUL\149\STX\SOH\SUB\175\SI Assignment rules are applied to *new* Workflow and Activity executions at\n\
    \ schedule time to assign them to a Build ID.\n\
    \\n\
    \ Assignment rules will not be used in the following cases:\n\
    \    - Child Workflows or Continue-As-New Executions who inherit their\n\
    \      parent/previous Workflow's assigned Build ID (by setting the\n\
    \      `inherit_build_id` flag - default behavior in SDKs when the same Task Queue\n\
    \      is used.)\n\
    \    - An Activity that inherits the assigned Build ID of its Workflow (by\n\
    \      setting the `use_workflow_build_id` flag - default behavior in SDKs\n\
    \      when the same Task Queue is used.)\n\
    \\n\
    \ In absence of (applicable) redirect rules (`CompatibleBuildIdRedirectRule`s)\n\
    \ the task will be dispatched to Workers of the Build ID determined by the\n\
    \ assignment rules (or inherited). Otherwise, the final Build ID will be\n\
    \ determined by the redirect rules.\n\
    \\n\
    \ Once a Workflow completes its first Workflow Task in a particular Build ID it\n\
    \ stays in that Build ID regardless of changes to assignment rules. Redirect\n\
    \ rules can be used to move the workflow to another compatible Build ID.\n\
    \\n\
    \ When using Worker Versioning on a Task Queue, in the steady state,\n\
    \ there should typically be a single assignment rule to send all new executions\n\
    \ to the latest Build ID. Existence of at least one such \"unconditional\"\n\
    \ rule at all times is enforces by the system, unless the `force` flag is used\n\
    \ by the user when replacing/deleting these rules (for exceptional cases).\n\
    \\n\
    \ During a deployment, one or more additional rules can be added to assign a\n\
    \ subset of the tasks to a new Build ID based on a \"ramp percentage\".\n\
    \\n\
    \ When there are multiple assignment rules for a Task Queue, the rules are\n\
    \ evaluated in order, starting from index 0. The first applicable rule will be\n\
    \ applied and the rest will be ignored.\n\
    \\n\
    \ In the event that no assignment rule is applicable on a task (or the Task\n\
    \ Queue is simply not versioned), the tasks will be dispatched to an\n\
    \ unversioned Worker.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\136\STX\b\GS\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\137\STX\EOT\US\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ENQ\DC2\EOT\137\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\137\STX\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\137\STX\GS\RS\n\
    \\240\SOH\n\
    \\EOT\EOT\DC1\b\NUL\DC2\ACK\143\STX\EOT\148\STX\ENQ\SUB\223\SOH If a ramp is provided, this rule will be applied only to a sample of\n\
    \ tasks according to the provided percentage.\n\
    \ This option can be used only on \"terminal\" Build IDs (the ones not used\n\
    \ as source in any redirect rules).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\b\NUL\SOH\DC2\EOT\143\STX\n\
    \\SO\n\
    \\167\SOH\n\
    \\EOT\EOT\DC1\STX\SOH\DC2\EOT\147\STX\b-\SUB\152\SOH This ramp is useful for gradual Blue/Green deployments (and similar)\n\
    \ where you want to send a certain portion of the traffic to the target\n\
    \ Build ID.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ACK\DC2\EOT\147\STX\b\CAN\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\SOH\DC2\EOT\147\STX\EM(\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ETX\DC2\EOT\147\STX+,\n\
    \\144\a\n\
    \\STX\EOT\DC2\DC2\ACK\171\STX\NUL\178\STX\SOH\SUB\129\a These rules apply to tasks assigned to a particular Build ID\n\
    \ (`source_build_id`) to redirect them to another *compatible* Build ID\n\
    \ (`target_build_id`).\n\
    \\n\
    \ It is user's responsibility to ensure that the target Build ID is compatible\n\
    \ with the source Build ID (e.g. by using the Patching API).\n\
    \\n\
    \ Most deployments are not expected to need these rules, however following\n\
    \ situations can greatly benefit from redirects:\n\
    \  - Need to move long-running Workflow Executions from an old Build ID to a\n\
    \    newer one.\n\
    \  - Need to hotfix some broken or stuck Workflow Executions.\n\
    \\n\
    \ In steady state, redirect rules are beneficial when dealing with old\n\
    \ Executions ran on now-decommissioned Build IDs:\n\
    \  - To redirecting the Workflow Queries to the current (compatible) Build ID.\n\
    \  - To be able to Reset an old Execution so it can run on the current\n\
    \    (compatible) Build ID.\n\
    \\n\
    \ Redirect rules can be chained.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\171\STX\b%\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\172\STX\EOT\US\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ENQ\DC2\EOT\172\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\172\STX\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\172\STX\GS\RS\n\
    \\240\SOH\n\
    \\EOT\EOT\DC2\STX\SOH\DC2\EOT\177\STX\EOT\US\SUB\225\SOH Target Build ID must be compatible with the Source Build ID; that is it\n\
    \ must be able to process event histories made by the Source Build ID by\n\
    \ using [Patching](https://docs.temporal.io/workflows#patching) or other\n\
    \ means.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ENQ\DC2\EOT\177\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\SOH\DC2\EOT\177\STX\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ETX\DC2\EOT\177\STX\GS\RS\n\
    \\f\n\
    \\STX\EOT\DC3\DC2\ACK\180\STX\NUL\183\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\180\STX\b(\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\EOT\181\STX\EOT#\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ACK\DC2\EOT\181\STX\EOT\EM\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\181\STX\SUB\RS\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\181\STX!\"\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\SOH\DC2\EOT\182\STX\EOT.\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ACK\DC2\EOT\182\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\SOH\DC2\EOT\182\STX\RS)\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ETX\DC2\EOT\182\STX,-\n\
    \\f\n\
    \\STX\EOT\DC4\DC2\ACK\185\STX\NUL\188\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\DC4\SOH\DC2\EOT\185\STX\b0\n\
    \\f\n\
    \\EOT\EOT\DC4\STX\NUL\DC2\EOT\186\STX\EOT+\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ACK\DC2\EOT\186\STX\EOT!\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\SOH\DC2\EOT\186\STX\"&\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ETX\DC2\EOT\186\STX)*\n\
    \\f\n\
    \\EOT\EOT\DC4\STX\SOH\DC2\EOT\187\STX\EOT.\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ACK\DC2\EOT\187\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\SOH\DC2\EOT\187\STX\RS)\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ETX\DC2\EOT\187\STX,-\n\
    \\f\n\
    \\STX\EOT\NAK\DC2\ACK\190\STX\NUL\193\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\NAK\SOH\DC2\EOT\190\STX\b\ETB\n\
    \\f\n\
    \\EOT\EOT\NAK\STX\NUL\DC2\EOT\191\STX\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ENQ\DC2\EOT\191\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\SOH\DC2\EOT\191\STX\t\v\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ETX\DC2\EOT\191\STX\SO\SI\n\
    \\f\n\
    \\EOT\EOT\NAK\STX\SOH\DC2\EOT\192\STX\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ENQ\DC2\EOT\192\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\SOH\DC2\EOT\192\STX\b\SO\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ETX\DC2\EOT\192\STX\DC1\DC2\n\
    \\246\SOH\n\
    \\STX\EOT\SYN\DC2\ACK\198\STX\NUL\204\STX\SOH\SUB\231\SOH A versioned snapshot of the poller groups the client should use for future polls to a task\n\
    \ queue. The version is monotonically increasing so that a client can ignore a snapshot that is\n\
    \ older than the one it has already applied.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SYN\SOH\DC2\EOT\198\STX\b\CAN\n\
    \\163\SOH\n\
    \\EOT\EOT\SYN\STX\NUL\DC2\EOT\201\STX\STX\DC4\SUB\148\SOH Monotonically increasing version of this snapshot. A client should ignore any snapshot whose\n\
    \ version is not greater than the one it last applied.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ENQ\DC2\EOT\201\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\SOH\DC2\EOT\201\STX\b\SI\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ETX\DC2\EOT\201\STX\DC2\DC3\n\
    \m\n\
    \\EOT\EOT\SYN\STX\SOH\DC2\EOT\203\STX\STX-\SUB_ The weighted list of poller groups the client should use for future polls to this task queue.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\EOT\DC2\EOT\203\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ACK\DC2\EOT\203\STX\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\SOH\DC2\EOT\203\STX\ESC(\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ETX\DC2\EOT\203\STX+,\n\
    \s\n\
    \\STX\EOT\ETB\DC2\ACK\208\STX\NUL\216\STX\SOH\SUBe Attached to task responses to give hints to the SDK about how it may adjust its number of\n\
    \ pollers.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETB\SOH\DC2\EOT\208\STX\b\GS\n\
    \\220\STX\n\
    \\EOT\EOT\ETB\STX\NUL\DC2\EOT\215\STX\STX*\SUB\205\STX How many poll requests to suggest should be added or removed, if any. As of now, server only\n\
    \ scales up or down by 1. However, SDKs should allow for other values (while staying within\n\
    \ defined min/max).\n\
    \\n\
    \ The SDK is free to ignore this suggestion, EX: making more polls would not make sense because\n\
    \ all slots are already occupied.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ENQ\DC2\EOT\215\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\SOH\DC2\EOT\215\STX\b%\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ETX\DC2\EOT\215\STX()\n\
    \\f\n\
    \\STX\EOT\CAN\DC2\ACK\218\STX\NUL\221\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\CAN\SOH\DC2\EOT\218\STX\b\DC1\n\
    \+\n\
    \\EOT\EOT\CAN\STX\NUL\DC2\EOT\220\STX\EOT\"\SUB\GS Zero is a valid rate limit.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ENQ\DC2\EOT\220\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\SOH\DC2\EOT\220\STX\n\
    \\GS\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ETX\DC2\EOT\220\STX !\n\
    \\f\n\
    \\STX\EOT\EM\DC2\ACK\223\STX\NUL\231\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\EM\SOH\DC2\EOT\223\STX\b\CAN\n\
    \\234\STX\n\
    \\EOT\EOT\EM\STX\NUL\DC2\EOT\230\STX\EOT\US\SUB\219\STX Maximum number of concurrent tasks that may be running at a time across the scope of the\n\
    \ limit. e.g. in TaskQueueConfig, the scope is the whole task queue.\n\
    \\n\
    \ Note that in situations like network partitions, the server's idea of what is running on\n\
    \ workers may be out of date, and this limit could be exceeded from the point of view of\n\
    \ workers.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ENQ\DC2\EOT\230\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\SOH\DC2\EOT\230\STX\n\
    \\SUB\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ETX\DC2\EOT\230\STX\GS\RS\n\
    \\f\n\
    \\STX\EOT\SUB\DC2\ACK\233\STX\NUL\243\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\SUB\SOH\DC2\EOT\233\STX\b\SYN\n\
    \2\n\
    \\EOT\EOT\SUB\STX\NUL\DC2\EOT\235\STX\EOT\SYN\SUB$ Reason for why the config was set.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ENQ\DC2\EOT\235\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\SOH\DC2\EOT\235\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ETX\DC2\EOT\235\STX\DC4\NAK\n\
    \S\n\
    \\EOT\EOT\SUB\STX\SOH\DC2\EOT\239\STX\EOT\US\SUBE Identity of the last updater.\n\
    \ Set by the request's identity field.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\ENQ\DC2\EOT\239\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\SOH\DC2\EOT\239\STX\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\ETX\DC2\EOT\239\STX\GS\RS\n\
    \(\n\
    \\EOT\EOT\SUB\STX\STX\DC2\EOT\242\STX\EOT.\SUB\SUB Time of the last update.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\STX\ACK\DC2\EOT\242\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\STX\SOH\DC2\EOT\242\STX\RS)\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\STX\ETX\DC2\EOT\242\STX,-\n\
    \\f\n\
    \\STX\EOT\ESC\DC2\ACK\245\STX\NUL\248\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\ESC\SOH\DC2\EOT\245\STX\b\ETB\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\NUL\DC2\EOT\246\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\ACK\DC2\EOT\246\STX\EOT\r\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\SOH\DC2\EOT\246\STX\SO\CAN\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\ETX\DC2\EOT\246\STX\ESC\FS\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\SOH\DC2\EOT\247\STX\EOT \n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\ACK\DC2\EOT\247\STX\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\SOH\DC2\EOT\247\STX\DC3\ESC\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\ETX\DC2\EOT\247\STX\RS\US\n\
    \\f\n\
    \\STX\EOT\FS\DC2\ACK\250\STX\NUL\253\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\FS\SOH\DC2\EOT\250\STX\b\RS\n\
    \\f\n\
    \\EOT\EOT\FS\STX\NUL\DC2\EOT\251\STX\EOT+\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\ACK\DC2\EOT\251\STX\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\SOH\DC2\EOT\251\STX\NAK&\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\ETX\DC2\EOT\251\STX)*\n\
    \\f\n\
    \\EOT\EOT\FS\STX\SOH\DC2\EOT\252\STX\EOT \n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\ACK\DC2\EOT\252\STX\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\SOH\DC2\EOT\252\STX\DC3\ESC\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\ETX\DC2\EOT\252\STX\RS\US\n\
    \\f\n\
    \\STX\EOT\GS\DC2\ACK\255\STX\NUL\136\ETX\SOH\n\
    \\v\n\
    \\ETX\EOT\GS\SOH\DC2\EOT\255\STX\b\ETB\n\
    \/\n\
    \\EOT\EOT\GS\STX\NUL\DC2\EOT\129\ETX\EOT)\SUB! Rate limit for the whole queue.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\ACK\DC2\EOT\129\ETX\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\SOH\DC2\EOT\129\ETX\DC4$\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\ETX\DC2\EOT\129\ETX'(\n\
    \|\n\
    \\EOT\EOT\GS\STX\SOH\DC2\EOT\131\ETX\EOT9\SUBn If set, each individual fairness key will be limited to this rate, scaled by the weight of the fairness key.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\ACK\DC2\EOT\131\ETX\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\SOH\DC2\EOT\131\ETX\DC44\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\ETX\DC2\EOT\131\ETX78\n\
    \[\n\
    \\EOT\EOT\GS\STX\STX\DC2\EOT\133\ETX\EOT5\SUBM If set, overrides the fairness weights for the corresponding fairness keys.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\STX\ACK\DC2\EOT\133\ETX\EOT\SYN\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\STX\SOH\DC2\EOT\133\ETX\ETB0\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\STX\ETX\DC2\EOT\133\ETX34\n\
    \6\n\
    \\EOT\EOT\GS\STX\ETX\DC2\EOT\135\ETX\EOT7\SUB( Concurrency limit for the whole queue.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\ETX\ACK\DC2\EOT\135\ETX\EOT\SUB\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\ETX\SOH\DC2\EOT\135\ETX\ESC2\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\ETX\ETX\DC2\EOT\135\ETX56b\ACKproto3"