{- This file was auto-generated from temporal/sdk/core/core_interface.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Sdk.Core.CoreInterface (
        ActivityHeartbeat(), ActivitySlotInfo(), ActivityTaskCompletion(),
        LocalActivitySlotInfo(), NamespaceInfo(), NamespaceInfo'Limits(),
        NexusSlotInfo(), WorkflowSlotInfo()
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
import qualified Proto.Temporal.Api.Common.V1.Message
import qualified Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult
import qualified Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask
import qualified Proto.Temporal.Sdk.Core.Common.Common
import qualified Proto.Temporal.Sdk.Core.ExternalData.ExternalData
import qualified Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation
import qualified Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands
import qualified Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.CoreInterface_Fields.taskToken' @:: Lens' ActivityHeartbeat Data.ByteString.ByteString@
         * 'Proto.Temporal.Sdk.Core.CoreInterface_Fields.details' @:: Lens' ActivityHeartbeat [Proto.Temporal.Api.Common.V1.Message.Payload]@
         * 'Proto.Temporal.Sdk.Core.CoreInterface_Fields.vec'details' @:: Lens' ActivityHeartbeat (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data ActivityHeartbeat
  = ActivityHeartbeat'_constructor {_ActivityHeartbeat'taskToken :: !Data.ByteString.ByteString,
                                    _ActivityHeartbeat'details :: !(Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload),
                                    _ActivityHeartbeat'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ActivityHeartbeat where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ActivityHeartbeat "taskToken" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityHeartbeat'taskToken
           (\ x__ y__ -> x__ {_ActivityHeartbeat'taskToken = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityHeartbeat "details" [Proto.Temporal.Api.Common.V1.Message.Payload] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityHeartbeat'details
           (\ x__ y__ -> x__ {_ActivityHeartbeat'details = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ActivityHeartbeat "vec'details" (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityHeartbeat'details
           (\ x__ y__ -> x__ {_ActivityHeartbeat'details = y__}))
        Prelude.id
instance Data.ProtoLens.Message ActivityHeartbeat where
  messageName _ = Data.Text.pack "coresdk.ActivityHeartbeat"
  packedMessageDescriptor _
    = "\n\
      \\DC1ActivityHeartbeat\DC2\GS\n\
      \\n\
      \task_token\CAN\SOH \SOH(\fR\ttaskToken\DC29\n\
      \\adetails\CAN\STX \ETX(\v2\US.temporal.api.common.v1.PayloadR\adetails"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        taskToken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_token"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"taskToken")) ::
              Data.ProtoLens.FieldDescriptor ActivityHeartbeat
        details__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "details"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"details")) ::
              Data.ProtoLens.FieldDescriptor ActivityHeartbeat
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, taskToken__field_descriptor),
           (Data.ProtoLens.Tag 2, details__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ActivityHeartbeat'_unknownFields
        (\ x__ y__ -> x__ {_ActivityHeartbeat'_unknownFields = y__})
  defMessage
    = ActivityHeartbeat'_constructor
        {_ActivityHeartbeat'taskToken = Data.ProtoLens.fieldDefault,
         _ActivityHeartbeat'details = Data.Vector.Generic.empty,
         _ActivityHeartbeat'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ActivityHeartbeat
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Common.V1.Message.Payload
             -> Data.ProtoLens.Encoding.Bytes.Parser ActivityHeartbeat
        loop x mutable'details
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'details <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'details)
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
                              (Data.ProtoLens.Field.field @"vec'details") frozen'details x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "task_token"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskToken") y x)
                                  mutable'details
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "details"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'details y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'details
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'details <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'details)
          "ActivityHeartbeat"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"taskToken") _x
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'details") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ActivityHeartbeat where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ActivityHeartbeat'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ActivityHeartbeat'taskToken x__)
                (Control.DeepSeq.deepseq (_ActivityHeartbeat'details x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.CoreInterface_Fields.activityType' @:: Lens' ActivitySlotInfo Data.Text.Text@ -}
data ActivitySlotInfo
  = ActivitySlotInfo'_constructor {_ActivitySlotInfo'activityType :: !Data.Text.Text,
                                   _ActivitySlotInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ActivitySlotInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ActivitySlotInfo "activityType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivitySlotInfo'activityType
           (\ x__ y__ -> x__ {_ActivitySlotInfo'activityType = y__}))
        Prelude.id
instance Data.ProtoLens.Message ActivitySlotInfo where
  messageName _ = Data.Text.pack "coresdk.ActivitySlotInfo"
  packedMessageDescriptor _
    = "\n\
      \\DLEActivitySlotInfo\DC2#\n\
      \\ractivity_type\CAN\SOH \SOH(\tR\factivityType"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        activityType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"activityType")) ::
              Data.ProtoLens.FieldDescriptor ActivitySlotInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, activityType__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ActivitySlotInfo'_unknownFields
        (\ x__ y__ -> x__ {_ActivitySlotInfo'_unknownFields = y__})
  defMessage
    = ActivitySlotInfo'_constructor
        {_ActivitySlotInfo'activityType = Data.ProtoLens.fieldDefault,
         _ActivitySlotInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ActivitySlotInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser ActivitySlotInfo
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
                                       "activity_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"activityType") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ActivitySlotInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"activityType") _x
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
instance Control.DeepSeq.NFData ActivitySlotInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ActivitySlotInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ActivitySlotInfo'activityType x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.CoreInterface_Fields.taskToken' @:: Lens' ActivityTaskCompletion Data.ByteString.ByteString@
         * 'Proto.Temporal.Sdk.Core.CoreInterface_Fields.result' @:: Lens' ActivityTaskCompletion Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult.ActivityExecutionResult@
         * 'Proto.Temporal.Sdk.Core.CoreInterface_Fields.maybe'result' @:: Lens' ActivityTaskCompletion (Prelude.Maybe Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult.ActivityExecutionResult)@ -}
data ActivityTaskCompletion
  = ActivityTaskCompletion'_constructor {_ActivityTaskCompletion'taskToken :: !Data.ByteString.ByteString,
                                         _ActivityTaskCompletion'result :: !(Prelude.Maybe Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult.ActivityExecutionResult),
                                         _ActivityTaskCompletion'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ActivityTaskCompletion where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ActivityTaskCompletion "taskToken" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityTaskCompletion'taskToken
           (\ x__ y__ -> x__ {_ActivityTaskCompletion'taskToken = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityTaskCompletion "result" Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult.ActivityExecutionResult where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityTaskCompletion'result
           (\ x__ y__ -> x__ {_ActivityTaskCompletion'result = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityTaskCompletion "maybe'result" (Prelude.Maybe Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult.ActivityExecutionResult) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityTaskCompletion'result
           (\ x__ y__ -> x__ {_ActivityTaskCompletion'result = y__}))
        Prelude.id
instance Data.ProtoLens.Message ActivityTaskCompletion where
  messageName _ = Data.Text.pack "coresdk.ActivityTaskCompletion"
  packedMessageDescriptor _
    = "\n\
      \\SYNActivityTaskCompletion\DC2\GS\n\
      \\n\
      \task_token\CAN\SOH \SOH(\fR\ttaskToken\DC2H\n\
      \\ACKresult\CAN\STX \SOH(\v20.coresdk.activity_result.ActivityExecutionResultR\ACKresult"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        taskToken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_token"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"taskToken")) ::
              Data.ProtoLens.FieldDescriptor ActivityTaskCompletion
        result__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult.ActivityExecutionResult)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'result")) ::
              Data.ProtoLens.FieldDescriptor ActivityTaskCompletion
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, taskToken__field_descriptor),
           (Data.ProtoLens.Tag 2, result__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ActivityTaskCompletion'_unknownFields
        (\ x__ y__ -> x__ {_ActivityTaskCompletion'_unknownFields = y__})
  defMessage
    = ActivityTaskCompletion'_constructor
        {_ActivityTaskCompletion'taskToken = Data.ProtoLens.fieldDefault,
         _ActivityTaskCompletion'result = Prelude.Nothing,
         _ActivityTaskCompletion'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ActivityTaskCompletion
          -> Data.ProtoLens.Encoding.Bytes.Parser ActivityTaskCompletion
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
                                       "task_token"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskToken") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "result"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"result") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ActivityTaskCompletion"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"taskToken") _x
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'result") _x
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
instance Control.DeepSeq.NFData ActivityTaskCompletion where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ActivityTaskCompletion'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ActivityTaskCompletion'taskToken x__)
                (Control.DeepSeq.deepseq (_ActivityTaskCompletion'result x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.CoreInterface_Fields.activityType' @:: Lens' LocalActivitySlotInfo Data.Text.Text@ -}
data LocalActivitySlotInfo
  = LocalActivitySlotInfo'_constructor {_LocalActivitySlotInfo'activityType :: !Data.Text.Text,
                                        _LocalActivitySlotInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LocalActivitySlotInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LocalActivitySlotInfo "activityType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalActivitySlotInfo'activityType
           (\ x__ y__ -> x__ {_LocalActivitySlotInfo'activityType = y__}))
        Prelude.id
instance Data.ProtoLens.Message LocalActivitySlotInfo where
  messageName _ = Data.Text.pack "coresdk.LocalActivitySlotInfo"
  packedMessageDescriptor _
    = "\n\
      \\NAKLocalActivitySlotInfo\DC2#\n\
      \\ractivity_type\CAN\SOH \SOH(\tR\factivityType"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        activityType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"activityType")) ::
              Data.ProtoLens.FieldDescriptor LocalActivitySlotInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, activityType__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LocalActivitySlotInfo'_unknownFields
        (\ x__ y__ -> x__ {_LocalActivitySlotInfo'_unknownFields = y__})
  defMessage
    = LocalActivitySlotInfo'_constructor
        {_LocalActivitySlotInfo'activityType = Data.ProtoLens.fieldDefault,
         _LocalActivitySlotInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LocalActivitySlotInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser LocalActivitySlotInfo
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
                                       "activity_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"activityType") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "LocalActivitySlotInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"activityType") _x
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
instance Control.DeepSeq.NFData LocalActivitySlotInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LocalActivitySlotInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LocalActivitySlotInfo'activityType x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.CoreInterface_Fields.limits' @:: Lens' NamespaceInfo NamespaceInfo'Limits@
         * 'Proto.Temporal.Sdk.Core.CoreInterface_Fields.maybe'limits' @:: Lens' NamespaceInfo (Prelude.Maybe NamespaceInfo'Limits)@ -}
data NamespaceInfo
  = NamespaceInfo'_constructor {_NamespaceInfo'limits :: !(Prelude.Maybe NamespaceInfo'Limits),
                                _NamespaceInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NamespaceInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
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
instance Data.ProtoLens.Message NamespaceInfo where
  messageName _ = Data.Text.pack "coresdk.NamespaceInfo"
  packedMessageDescriptor _
    = "\n\
      \\rNamespaceInfo\DC25\n\
      \\ACKlimits\CAN\SOH \SOH(\v2\GS.coresdk.NamespaceInfo.LimitsR\ACKlimits\SUBn\n\
      \\ACKLimits\DC21\n\
      \\NAKblob_size_limit_error\CAN\SOH \SOH(\ETXR\DC2blobSizeLimitError\DC21\n\
      \\NAKmemo_size_limit_error\CAN\STX \SOH(\ETXR\DC2memoSizeLimitError"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        limits__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "limits"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NamespaceInfo'Limits)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'limits")) ::
              Data.ProtoLens.FieldDescriptor NamespaceInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, limits__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NamespaceInfo'_unknownFields
        (\ x__ y__ -> x__ {_NamespaceInfo'_unknownFields = y__})
  defMessage
    = NamespaceInfo'_constructor
        {_NamespaceInfo'limits = Prelude.Nothing,
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
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "limits"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"limits") y x)
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
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'limits") _x
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
instance Control.DeepSeq.NFData NamespaceInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NamespaceInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq (_NamespaceInfo'limits x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.CoreInterface_Fields.blobSizeLimitError' @:: Lens' NamespaceInfo'Limits Data.Int.Int64@
         * 'Proto.Temporal.Sdk.Core.CoreInterface_Fields.memoSizeLimitError' @:: Lens' NamespaceInfo'Limits Data.Int.Int64@ -}
data NamespaceInfo'Limits
  = NamespaceInfo'Limits'_constructor {_NamespaceInfo'Limits'blobSizeLimitError :: !Data.Int.Int64,
                                       _NamespaceInfo'Limits'memoSizeLimitError :: !Data.Int.Int64,
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
instance Data.ProtoLens.Message NamespaceInfo'Limits where
  messageName _ = Data.Text.pack "coresdk.NamespaceInfo.Limits"
  packedMessageDescriptor _
    = "\n\
      \\ACKLimits\DC21\n\
      \\NAKblob_size_limit_error\CAN\SOH \SOH(\ETXR\DC2blobSizeLimitError\DC21\n\
      \\NAKmemo_size_limit_error\CAN\STX \SOH(\ETXR\DC2memoSizeLimitError"
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
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, blobSizeLimitError__field_descriptor),
           (Data.ProtoLens.Tag 2, memoSizeLimitError__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NamespaceInfo'Limits'_unknownFields
        (\ x__ y__ -> x__ {_NamespaceInfo'Limits'_unknownFields = y__})
  defMessage
    = NamespaceInfo'Limits'_constructor
        {_NamespaceInfo'Limits'blobSizeLimitError = Data.ProtoLens.fieldDefault,
         _NamespaceInfo'Limits'memoSizeLimitError = Data.ProtoLens.fieldDefault,
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData NamespaceInfo'Limits where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NamespaceInfo'Limits'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NamespaceInfo'Limits'blobSizeLimitError x__)
                (Control.DeepSeq.deepseq
                   (_NamespaceInfo'Limits'memoSizeLimitError x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.CoreInterface_Fields.service' @:: Lens' NexusSlotInfo Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.CoreInterface_Fields.operation' @:: Lens' NexusSlotInfo Data.Text.Text@ -}
data NexusSlotInfo
  = NexusSlotInfo'_constructor {_NexusSlotInfo'service :: !Data.Text.Text,
                                _NexusSlotInfo'operation :: !Data.Text.Text,
                                _NexusSlotInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NexusSlotInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NexusSlotInfo "service" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusSlotInfo'service
           (\ x__ y__ -> x__ {_NexusSlotInfo'service = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusSlotInfo "operation" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusSlotInfo'operation
           (\ x__ y__ -> x__ {_NexusSlotInfo'operation = y__}))
        Prelude.id
instance Data.ProtoLens.Message NexusSlotInfo where
  messageName _ = Data.Text.pack "coresdk.NexusSlotInfo"
  packedMessageDescriptor _
    = "\n\
      \\rNexusSlotInfo\DC2\CAN\n\
      \\aservice\CAN\SOH \SOH(\tR\aservice\DC2\FS\n\
      \\toperation\CAN\STX \SOH(\tR\toperation"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        service__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"service")) ::
              Data.ProtoLens.FieldDescriptor NexusSlotInfo
        operation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operation")) ::
              Data.ProtoLens.FieldDescriptor NexusSlotInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, service__field_descriptor),
           (Data.ProtoLens.Tag 2, operation__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NexusSlotInfo'_unknownFields
        (\ x__ y__ -> x__ {_NexusSlotInfo'_unknownFields = y__})
  defMessage
    = NexusSlotInfo'_constructor
        {_NexusSlotInfo'service = Data.ProtoLens.fieldDefault,
         _NexusSlotInfo'operation = Data.ProtoLens.fieldDefault,
         _NexusSlotInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NexusSlotInfo -> Data.ProtoLens.Encoding.Bytes.Parser NexusSlotInfo
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
                                       "service"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"service") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operation") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NexusSlotInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"service") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operation") _x
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
instance Control.DeepSeq.NFData NexusSlotInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NexusSlotInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NexusSlotInfo'service x__)
                (Control.DeepSeq.deepseq (_NexusSlotInfo'operation x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.CoreInterface_Fields.workflowType' @:: Lens' WorkflowSlotInfo Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.CoreInterface_Fields.isSticky' @:: Lens' WorkflowSlotInfo Prelude.Bool@ -}
data WorkflowSlotInfo
  = WorkflowSlotInfo'_constructor {_WorkflowSlotInfo'workflowType :: !Data.Text.Text,
                                   _WorkflowSlotInfo'isSticky :: !Prelude.Bool,
                                   _WorkflowSlotInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkflowSlotInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkflowSlotInfo "workflowType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowSlotInfo'workflowType
           (\ x__ y__ -> x__ {_WorkflowSlotInfo'workflowType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowSlotInfo "isSticky" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowSlotInfo'isSticky
           (\ x__ y__ -> x__ {_WorkflowSlotInfo'isSticky = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkflowSlotInfo where
  messageName _ = Data.Text.pack "coresdk.WorkflowSlotInfo"
  packedMessageDescriptor _
    = "\n\
      \\DLEWorkflowSlotInfo\DC2#\n\
      \\rworkflow_type\CAN\SOH \SOH(\tR\fworkflowType\DC2\ESC\n\
      \\tis_sticky\CAN\STX \SOH(\bR\bisSticky"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        workflowType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workflowType")) ::
              Data.ProtoLens.FieldDescriptor WorkflowSlotInfo
        isSticky__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_sticky"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"isSticky")) ::
              Data.ProtoLens.FieldDescriptor WorkflowSlotInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, workflowType__field_descriptor),
           (Data.ProtoLens.Tag 2, isSticky__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkflowSlotInfo'_unknownFields
        (\ x__ y__ -> x__ {_WorkflowSlotInfo'_unknownFields = y__})
  defMessage
    = WorkflowSlotInfo'_constructor
        {_WorkflowSlotInfo'workflowType = Data.ProtoLens.fieldDefault,
         _WorkflowSlotInfo'isSticky = Data.ProtoLens.fieldDefault,
         _WorkflowSlotInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkflowSlotInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser WorkflowSlotInfo
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
                                       "workflow_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowType") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_sticky"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"isSticky") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WorkflowSlotInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"workflowType") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"isSticky") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData WorkflowSlotInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkflowSlotInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WorkflowSlotInfo'workflowType x__)
                (Control.DeepSeq.deepseq (_WorkflowSlotInfo'isSticky x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&temporal/sdk/core/core_interface.proto\DC2\acoresdk\SUB\RSgoogle/protobuf/duration.proto\SUB\ESCgoogle/protobuf/empty.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB$temporal/api/common/v1/message.proto\SUB7temporal/sdk/core/activity_result/activity_result.proto\SUB3temporal/sdk/core/activity_task/activity_task.proto\SUB%temporal/sdk/core/common/common.proto\SUB3temporal/sdk/core/external_data/external_data.proto\SUB?temporal/sdk/core/workflow_activation/workflow_activation.proto\SUB;temporal/sdk/core/workflow_commands/workflow_commands.proto\SUB?temporal/sdk/core/workflow_completion/workflow_completion.proto\"m\n\
    \\DC1ActivityHeartbeat\DC2\GS\n\
    \\n\
    \task_token\CAN\SOH \SOH(\fR\ttaskToken\DC29\n\
    \\adetails\CAN\STX \ETX(\v2\US.temporal.api.common.v1.PayloadR\adetails\"\129\SOH\n\
    \\SYNActivityTaskCompletion\DC2\GS\n\
    \\n\
    \task_token\CAN\SOH \SOH(\fR\ttaskToken\DC2H\n\
    \\ACKresult\CAN\STX \SOH(\v20.coresdk.activity_result.ActivityExecutionResultR\ACKresult\"T\n\
    \\DLEWorkflowSlotInfo\DC2#\n\
    \\rworkflow_type\CAN\SOH \SOH(\tR\fworkflowType\DC2\ESC\n\
    \\tis_sticky\CAN\STX \SOH(\bR\bisSticky\"7\n\
    \\DLEActivitySlotInfo\DC2#\n\
    \\ractivity_type\CAN\SOH \SOH(\tR\factivityType\"<\n\
    \\NAKLocalActivitySlotInfo\DC2#\n\
    \\ractivity_type\CAN\SOH \SOH(\tR\factivityType\"G\n\
    \\rNexusSlotInfo\DC2\CAN\n\
    \\aservice\CAN\SOH \SOH(\tR\aservice\DC2\FS\n\
    \\toperation\CAN\STX \SOH(\tR\toperation\"\182\SOH\n\
    \\rNamespaceInfo\DC25\n\
    \\ACKlimits\CAN\SOH \SOH(\v2\GS.coresdk.NamespaceInfo.LimitsR\ACKlimits\SUBn\n\
    \\ACKLimits\DC21\n\
    \\NAKblob_size_limit_error\CAN\SOH \SOH(\ETXR\DC2blobSizeLimitError\DC21\n\
    \\NAKmemo_size_limit_error\CAN\STX \SOH(\ETXR\DC2memoSizeLimitErrorB3\234\STX0Temporalio::Internal::Bridge::Api::CoreInterfaceJ\165\SI\n\
    \\ACK\DC2\EOT\NUL\NULC\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\DLE\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NULI\n\
    \\t\n\
    \\STX\b-\DC2\ETX\ETX\NULI\n\
    \\130\STX\n\
    \\STX\ETX\NUL\DC2\ETX\b\NUL(\SUB\246\SOH Note: Intellij will think the Google imports don't work because of the slightly odd nature of\n\
    \ the include paths. You can make it work by going to the \"Protobuf Support\" settings section\n\
    \ and adding the \"api_upstream\" subdir as an include path.\n\
    \\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\t\NUL%\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\n\
    \\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\v\NUL.\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\f\NULA\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\r\NUL=\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\SO\NUL/\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\SI\NUL=\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\DLE\NULI\n\
    \\t\n\
    \\STX\ETX\t\DC2\ETX\DC1\NULE\n\
    \\t\n\
    \\STX\ETX\n\
    \\DC2\ETX\DC2\NULI\n\
    \?\n\
    \\STX\EOT\NUL\DC2\EOT\NAK\NUL\CAN\SOH\SUB3 A request as given to `record_activity_heartbeat`\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\EM\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SYN\EOT\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SYN\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SYN\n\
    \\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SYN\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\ETB\EOT8\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\ETB\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\ETB\r+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\ETB,3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\ETB67\n\
    \<\n\
    \\STX\EOT\SOH\DC2\EOT\ESC\NUL\RS\SOH\SUB0 A request as given to `complete_activity_task`\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\ESC\b\RS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\FS\EOT\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\FS\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\FS\n\
    \\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\FS\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\GS\EOT7\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX\GS\EOT+\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\GS,2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\GS56\n\
    \1\n\
    \\STX\EOT\STX\DC2\EOT!\NUL$\SOH\SUB% Info about workflow task slot usage\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX!\b\CAN\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\"\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\"\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\"\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\"\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX#\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX#\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX#\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX#\NAK\SYN\n\
    \1\n\
    \\STX\EOT\ETX\DC2\EOT'\NUL)\SOH\SUB% Info about activity task slot usage\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX'\b\CAN\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX(\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX(\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX(\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX(\ESC\FS\n\
    \2\n\
    \\STX\EOT\EOT\DC2\EOT,\NUL.\SOH\SUB& Info about local activity slot usage\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX,\b\GS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX-\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX-\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX-\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX-\ESC\FS\n\
    \.\n\
    \\STX\EOT\ENQ\DC2\EOT1\NUL4\SOH\SUB\" Info about nexus task slot usage\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX1\b\NAK\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX2\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX2\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX2\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX2\NAK\SYN\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX3\EOT\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX3\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX3\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX3\ETB\CAN\n\
    \$\n\
    \\STX\EOT\ACK\DC2\EOT7\NULC\SOH\SUB\CAN Info about a namespace\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX7\b\NAK\n\
    \*\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX9\EOT\SYN\SUB\GS Namespace configured limits\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\ETX9\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX9\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX9\DC4\NAK\n\
    \\f\n\
    \\EOT\EOT\ACK\ETX\NUL\DC2\EOT;\EOTB\ENQ\n\
    \\f\n\
    \\ENQ\EOT\ACK\ETX\NUL\SOH\DC2\ETX;\f\DC2\n\
    \\234\SOH\n\
    \\ACK\EOT\ACK\ETX\NUL\STX\NUL\DC2\ETX?\b(\SUB\218\SOH Maximum size in bytes for payload fields in workflow history events\n\
    \ (e.g., workflow/activity inputs and results, failure details, signal payloads).\n\
    \ When exceeded, the server will reject the operation with an error.\n\
    \\n\
    \\SO\n\
    \\a\EOT\ACK\ETX\NUL\STX\NUL\ENQ\DC2\ETX?\b\r\n\
    \\SO\n\
    \\a\EOT\ACK\ETX\NUL\STX\NUL\SOH\DC2\ETX?\SO#\n\
    \\SO\n\
    \\a\EOT\ACK\ETX\NUL\STX\NUL\ETX\DC2\ETX?&'\n\
    \I\n\
    \\ACK\EOT\ACK\ETX\NUL\STX\SOH\DC2\ETXA\b(\SUB: Maximum total memo size in bytes per workflow execution.\n\
    \\n\
    \\SO\n\
    \\a\EOT\ACK\ETX\NUL\STX\SOH\ENQ\DC2\ETXA\b\r\n\
    \\SO\n\
    \\a\EOT\ACK\ETX\NUL\STX\SOH\SOH\DC2\ETXA\SO#\n\
    \\SO\n\
    \\a\EOT\ACK\ETX\NUL\STX\SOH\ETX\DC2\ETXA&'b\ACKproto3"