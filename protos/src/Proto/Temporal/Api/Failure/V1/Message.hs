{- This file was auto-generated from temporal/api/failure/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Failure.V1.Message (
        ActivityFailureInfo(), ApplicationFailureInfo(),
        CanceledFailureInfo(), ChildWorkflowExecutionFailureInfo(),
        Failure(), Failure'FailureInfo(..),
        _Failure'ApplicationFailureInfo, _Failure'TimeoutFailureInfo,
        _Failure'CanceledFailureInfo, _Failure'TerminatedFailureInfo,
        _Failure'ServerFailureInfo, _Failure'ResetWorkflowFailureInfo,
        _Failure'ActivityFailureInfo,
        _Failure'ChildWorkflowExecutionFailureInfo,
        _Failure'NexusOperationExecutionFailureInfo,
        _Failure'NexusHandlerFailureInfo, MultiOperationExecutionAborted(),
        NexusHandlerFailureInfo(), NexusOperationFailureInfo(),
        ResetWorkflowFailureInfo(), ServerFailureInfo(),
        TerminatedFailureInfo(), TimeoutFailureInfo()
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
import qualified Proto.Temporal.Api.Common.V1.Message
import qualified Proto.Temporal.Api.Enums.V1.Common
import qualified Proto.Temporal.Api.Enums.V1.Nexus
import qualified Proto.Temporal.Api.Enums.V1.Workflow
{- | Fields :
     
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.scheduledEventId' @:: Lens' ActivityFailureInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.startedEventId' @:: Lens' ActivityFailureInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.identity' @:: Lens' ActivityFailureInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.activityType' @:: Lens' ActivityFailureInfo Proto.Temporal.Api.Common.V1.Message.ActivityType@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.maybe'activityType' @:: Lens' ActivityFailureInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ActivityType)@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.activityId' @:: Lens' ActivityFailureInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.retryState' @:: Lens' ActivityFailureInfo Proto.Temporal.Api.Enums.V1.Workflow.RetryState@ -}
data ActivityFailureInfo
  = ActivityFailureInfo'_constructor {_ActivityFailureInfo'scheduledEventId :: !Data.Int.Int64,
                                      _ActivityFailureInfo'startedEventId :: !Data.Int.Int64,
                                      _ActivityFailureInfo'identity :: !Data.Text.Text,
                                      _ActivityFailureInfo'activityType :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ActivityType),
                                      _ActivityFailureInfo'activityId :: !Data.Text.Text,
                                      _ActivityFailureInfo'retryState :: !Proto.Temporal.Api.Enums.V1.Workflow.RetryState,
                                      _ActivityFailureInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ActivityFailureInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ActivityFailureInfo "scheduledEventId" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityFailureInfo'scheduledEventId
           (\ x__ y__ -> x__ {_ActivityFailureInfo'scheduledEventId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityFailureInfo "startedEventId" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityFailureInfo'startedEventId
           (\ x__ y__ -> x__ {_ActivityFailureInfo'startedEventId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityFailureInfo "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityFailureInfo'identity
           (\ x__ y__ -> x__ {_ActivityFailureInfo'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityFailureInfo "activityType" Proto.Temporal.Api.Common.V1.Message.ActivityType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityFailureInfo'activityType
           (\ x__ y__ -> x__ {_ActivityFailureInfo'activityType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityFailureInfo "maybe'activityType" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ActivityType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityFailureInfo'activityType
           (\ x__ y__ -> x__ {_ActivityFailureInfo'activityType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityFailureInfo "activityId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityFailureInfo'activityId
           (\ x__ y__ -> x__ {_ActivityFailureInfo'activityId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityFailureInfo "retryState" Proto.Temporal.Api.Enums.V1.Workflow.RetryState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityFailureInfo'retryState
           (\ x__ y__ -> x__ {_ActivityFailureInfo'retryState = y__}))
        Prelude.id
instance Data.ProtoLens.Message ActivityFailureInfo where
  messageName _
    = Data.Text.pack "temporal.api.failure.v1.ActivityFailureInfo"
  packedMessageDescriptor _
    = "\n\
      \\DC3ActivityFailureInfo\DC2,\n\
      \\DC2scheduled_event_id\CAN\SOH \SOH(\ETXR\DLEscheduledEventId\DC2(\n\
      \\DLEstarted_event_id\CAN\STX \SOH(\ETXR\SOstartedEventId\DC2\SUB\n\
      \\bidentity\CAN\ETX \SOH(\tR\bidentity\DC2I\n\
      \\ractivity_type\CAN\EOT \SOH(\v2$.temporal.api.common.v1.ActivityTypeR\factivityType\DC2\US\n\
      \\vactivity_id\CAN\ENQ \SOH(\tR\n\
      \activityId\DC2B\n\
      \\vretry_state\CAN\ACK \SOH(\SO2!.temporal.api.enums.v1.RetryStateR\n\
      \retryState"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        scheduledEventId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scheduled_event_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"scheduledEventId")) ::
              Data.ProtoLens.FieldDescriptor ActivityFailureInfo
        startedEventId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "started_event_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"startedEventId")) ::
              Data.ProtoLens.FieldDescriptor ActivityFailureInfo
        identity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "identity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"identity")) ::
              Data.ProtoLens.FieldDescriptor ActivityFailureInfo
        activityType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.ActivityType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'activityType")) ::
              Data.ProtoLens.FieldDescriptor ActivityFailureInfo
        activityId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"activityId")) ::
              Data.ProtoLens.FieldDescriptor ActivityFailureInfo
        retryState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Workflow.RetryState)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"retryState")) ::
              Data.ProtoLens.FieldDescriptor ActivityFailureInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, scheduledEventId__field_descriptor),
           (Data.ProtoLens.Tag 2, startedEventId__field_descriptor),
           (Data.ProtoLens.Tag 3, identity__field_descriptor),
           (Data.ProtoLens.Tag 4, activityType__field_descriptor),
           (Data.ProtoLens.Tag 5, activityId__field_descriptor),
           (Data.ProtoLens.Tag 6, retryState__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ActivityFailureInfo'_unknownFields
        (\ x__ y__ -> x__ {_ActivityFailureInfo'_unknownFields = y__})
  defMessage
    = ActivityFailureInfo'_constructor
        {_ActivityFailureInfo'scheduledEventId = Data.ProtoLens.fieldDefault,
         _ActivityFailureInfo'startedEventId = Data.ProtoLens.fieldDefault,
         _ActivityFailureInfo'identity = Data.ProtoLens.fieldDefault,
         _ActivityFailureInfo'activityType = Prelude.Nothing,
         _ActivityFailureInfo'activityId = Data.ProtoLens.fieldDefault,
         _ActivityFailureInfo'retryState = Data.ProtoLens.fieldDefault,
         _ActivityFailureInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ActivityFailureInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser ActivityFailureInfo
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
                                       "scheduled_event_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduledEventId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "started_event_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startedEventId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "identity"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"identity") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "activity_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"activityType") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "activity_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"activityId") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "retry_state"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"retryState") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ActivityFailureInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"scheduledEventId") _x
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
                         (Data.ProtoLens.Field.field @"startedEventId") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"identity") _x
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
                             (Data.ProtoLens.Field.field @"maybe'activityType") _x
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
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"activityId") _x
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
                                 = Lens.Family2.view (Data.ProtoLens.Field.field @"retryState") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           Prelude.fromIntegral)
                                        Prelude.fromEnum _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData ActivityFailureInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ActivityFailureInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ActivityFailureInfo'scheduledEventId x__)
                (Control.DeepSeq.deepseq
                   (_ActivityFailureInfo'startedEventId x__)
                   (Control.DeepSeq.deepseq
                      (_ActivityFailureInfo'identity x__)
                      (Control.DeepSeq.deepseq
                         (_ActivityFailureInfo'activityType x__)
                         (Control.DeepSeq.deepseq
                            (_ActivityFailureInfo'activityId x__)
                            (Control.DeepSeq.deepseq
                               (_ActivityFailureInfo'retryState x__) ()))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.type'' @:: Lens' ApplicationFailureInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.nonRetryable' @:: Lens' ApplicationFailureInfo Prelude.Bool@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.details' @:: Lens' ApplicationFailureInfo Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.maybe'details' @:: Lens' ApplicationFailureInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.nextRetryDelay' @:: Lens' ApplicationFailureInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.maybe'nextRetryDelay' @:: Lens' ApplicationFailureInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.category' @:: Lens' ApplicationFailureInfo Proto.Temporal.Api.Enums.V1.Common.ApplicationErrorCategory@ -}
data ApplicationFailureInfo
  = ApplicationFailureInfo'_constructor {_ApplicationFailureInfo'type' :: !Data.Text.Text,
                                         _ApplicationFailureInfo'nonRetryable :: !Prelude.Bool,
                                         _ApplicationFailureInfo'details :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads),
                                         _ApplicationFailureInfo'nextRetryDelay :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                         _ApplicationFailureInfo'category :: !Proto.Temporal.Api.Enums.V1.Common.ApplicationErrorCategory,
                                         _ApplicationFailureInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ApplicationFailureInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ApplicationFailureInfo "type'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApplicationFailureInfo'type'
           (\ x__ y__ -> x__ {_ApplicationFailureInfo'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ApplicationFailureInfo "nonRetryable" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApplicationFailureInfo'nonRetryable
           (\ x__ y__ -> x__ {_ApplicationFailureInfo'nonRetryable = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ApplicationFailureInfo "details" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApplicationFailureInfo'details
           (\ x__ y__ -> x__ {_ApplicationFailureInfo'details = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ApplicationFailureInfo "maybe'details" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApplicationFailureInfo'details
           (\ x__ y__ -> x__ {_ApplicationFailureInfo'details = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ApplicationFailureInfo "nextRetryDelay" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApplicationFailureInfo'nextRetryDelay
           (\ x__ y__ -> x__ {_ApplicationFailureInfo'nextRetryDelay = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ApplicationFailureInfo "maybe'nextRetryDelay" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApplicationFailureInfo'nextRetryDelay
           (\ x__ y__ -> x__ {_ApplicationFailureInfo'nextRetryDelay = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ApplicationFailureInfo "category" Proto.Temporal.Api.Enums.V1.Common.ApplicationErrorCategory where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApplicationFailureInfo'category
           (\ x__ y__ -> x__ {_ApplicationFailureInfo'category = y__}))
        Prelude.id
instance Data.ProtoLens.Message ApplicationFailureInfo where
  messageName _
    = Data.Text.pack "temporal.api.failure.v1.ApplicationFailureInfo"
  packedMessageDescriptor _
    = "\n\
      \\SYNApplicationFailureInfo\DC2\DC2\n\
      \\EOTtype\CAN\SOH \SOH(\tR\EOTtype\DC2#\n\
      \\rnon_retryable\CAN\STX \SOH(\bR\fnonRetryable\DC2:\n\
      \\adetails\CAN\ETX \SOH(\v2 .temporal.api.common.v1.PayloadsR\adetails\DC2C\n\
      \\DLEnext_retry_delay\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\SOnextRetryDelay\DC2K\n\
      \\bcategory\CAN\ENQ \SOH(\SO2/.temporal.api.enums.v1.ApplicationErrorCategoryR\bcategory"
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
              Data.ProtoLens.FieldDescriptor ApplicationFailureInfo
        nonRetryable__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "non_retryable"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"nonRetryable")) ::
              Data.ProtoLens.FieldDescriptor ApplicationFailureInfo
        details__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "details"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payloads)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'details")) ::
              Data.ProtoLens.FieldDescriptor ApplicationFailureInfo
        nextRetryDelay__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "next_retry_delay"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nextRetryDelay")) ::
              Data.ProtoLens.FieldDescriptor ApplicationFailureInfo
        category__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "category"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Common.ApplicationErrorCategory)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"category")) ::
              Data.ProtoLens.FieldDescriptor ApplicationFailureInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, nonRetryable__field_descriptor),
           (Data.ProtoLens.Tag 3, details__field_descriptor),
           (Data.ProtoLens.Tag 4, nextRetryDelay__field_descriptor),
           (Data.ProtoLens.Tag 5, category__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ApplicationFailureInfo'_unknownFields
        (\ x__ y__ -> x__ {_ApplicationFailureInfo'_unknownFields = y__})
  defMessage
    = ApplicationFailureInfo'_constructor
        {_ApplicationFailureInfo'type' = Data.ProtoLens.fieldDefault,
         _ApplicationFailureInfo'nonRetryable = Data.ProtoLens.fieldDefault,
         _ApplicationFailureInfo'details = Prelude.Nothing,
         _ApplicationFailureInfo'nextRetryDelay = Prelude.Nothing,
         _ApplicationFailureInfo'category = Data.ProtoLens.fieldDefault,
         _ApplicationFailureInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ApplicationFailureInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser ApplicationFailureInfo
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "non_retryable"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"nonRetryable") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "details"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"details") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "next_retry_delay"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"nextRetryDelay") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "category"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"category") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ApplicationFailureInfo"
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"nonRetryable") _x
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
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'details") _x
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
                             (Data.ProtoLens.Field.field @"maybe'nextRetryDelay") _x
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
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"category") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData ApplicationFailureInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ApplicationFailureInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ApplicationFailureInfo'type' x__)
                (Control.DeepSeq.deepseq
                   (_ApplicationFailureInfo'nonRetryable x__)
                   (Control.DeepSeq.deepseq
                      (_ApplicationFailureInfo'details x__)
                      (Control.DeepSeq.deepseq
                         (_ApplicationFailureInfo'nextRetryDelay x__)
                         (Control.DeepSeq.deepseq
                            (_ApplicationFailureInfo'category x__) ())))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.details' @:: Lens' CanceledFailureInfo Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.maybe'details' @:: Lens' CanceledFailureInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.identity' @:: Lens' CanceledFailureInfo Data.Text.Text@ -}
data CanceledFailureInfo
  = CanceledFailureInfo'_constructor {_CanceledFailureInfo'details :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads),
                                      _CanceledFailureInfo'identity :: !Data.Text.Text,
                                      _CanceledFailureInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CanceledFailureInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CanceledFailureInfo "details" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CanceledFailureInfo'details
           (\ x__ y__ -> x__ {_CanceledFailureInfo'details = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CanceledFailureInfo "maybe'details" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CanceledFailureInfo'details
           (\ x__ y__ -> x__ {_CanceledFailureInfo'details = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CanceledFailureInfo "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CanceledFailureInfo'identity
           (\ x__ y__ -> x__ {_CanceledFailureInfo'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Message CanceledFailureInfo where
  messageName _
    = Data.Text.pack "temporal.api.failure.v1.CanceledFailureInfo"
  packedMessageDescriptor _
    = "\n\
      \\DC3CanceledFailureInfo\DC2:\n\
      \\adetails\CAN\SOH \SOH(\v2 .temporal.api.common.v1.PayloadsR\adetails\DC2\SUB\n\
      \\bidentity\CAN\STX \SOH(\tR\bidentity"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        details__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "details"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payloads)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'details")) ::
              Data.ProtoLens.FieldDescriptor CanceledFailureInfo
        identity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "identity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"identity")) ::
              Data.ProtoLens.FieldDescriptor CanceledFailureInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, details__field_descriptor),
           (Data.ProtoLens.Tag 2, identity__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CanceledFailureInfo'_unknownFields
        (\ x__ y__ -> x__ {_CanceledFailureInfo'_unknownFields = y__})
  defMessage
    = CanceledFailureInfo'_constructor
        {_CanceledFailureInfo'details = Prelude.Nothing,
         _CanceledFailureInfo'identity = Data.ProtoLens.fieldDefault,
         _CanceledFailureInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CanceledFailureInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser CanceledFailureInfo
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
                                       "details"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"details") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "identity"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"identity") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CanceledFailureInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'details") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData CanceledFailureInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CanceledFailureInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CanceledFailureInfo'details x__)
                (Control.DeepSeq.deepseq (_CanceledFailureInfo'identity x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.namespace' @:: Lens' ChildWorkflowExecutionFailureInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.workflowExecution' @:: Lens' ChildWorkflowExecutionFailureInfo Proto.Temporal.Api.Common.V1.Message.WorkflowExecution@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.maybe'workflowExecution' @:: Lens' ChildWorkflowExecutionFailureInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowExecution)@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.workflowType' @:: Lens' ChildWorkflowExecutionFailureInfo Proto.Temporal.Api.Common.V1.Message.WorkflowType@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.maybe'workflowType' @:: Lens' ChildWorkflowExecutionFailureInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowType)@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.initiatedEventId' @:: Lens' ChildWorkflowExecutionFailureInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.startedEventId' @:: Lens' ChildWorkflowExecutionFailureInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.retryState' @:: Lens' ChildWorkflowExecutionFailureInfo Proto.Temporal.Api.Enums.V1.Workflow.RetryState@ -}
data ChildWorkflowExecutionFailureInfo
  = ChildWorkflowExecutionFailureInfo'_constructor {_ChildWorkflowExecutionFailureInfo'namespace :: !Data.Text.Text,
                                                    _ChildWorkflowExecutionFailureInfo'workflowExecution :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowExecution),
                                                    _ChildWorkflowExecutionFailureInfo'workflowType :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowType),
                                                    _ChildWorkflowExecutionFailureInfo'initiatedEventId :: !Data.Int.Int64,
                                                    _ChildWorkflowExecutionFailureInfo'startedEventId :: !Data.Int.Int64,
                                                    _ChildWorkflowExecutionFailureInfo'retryState :: !Proto.Temporal.Api.Enums.V1.Workflow.RetryState,
                                                    _ChildWorkflowExecutionFailureInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ChildWorkflowExecutionFailureInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ChildWorkflowExecutionFailureInfo "namespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ChildWorkflowExecutionFailureInfo'namespace
           (\ x__ y__
              -> x__ {_ChildWorkflowExecutionFailureInfo'namespace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ChildWorkflowExecutionFailureInfo "workflowExecution" Proto.Temporal.Api.Common.V1.Message.WorkflowExecution where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ChildWorkflowExecutionFailureInfo'workflowExecution
           (\ x__ y__
              -> x__
                   {_ChildWorkflowExecutionFailureInfo'workflowExecution = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ChildWorkflowExecutionFailureInfo "maybe'workflowExecution" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ChildWorkflowExecutionFailureInfo'workflowExecution
           (\ x__ y__
              -> x__
                   {_ChildWorkflowExecutionFailureInfo'workflowExecution = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ChildWorkflowExecutionFailureInfo "workflowType" Proto.Temporal.Api.Common.V1.Message.WorkflowType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ChildWorkflowExecutionFailureInfo'workflowType
           (\ x__ y__
              -> x__ {_ChildWorkflowExecutionFailureInfo'workflowType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ChildWorkflowExecutionFailureInfo "maybe'workflowType" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ChildWorkflowExecutionFailureInfo'workflowType
           (\ x__ y__
              -> x__ {_ChildWorkflowExecutionFailureInfo'workflowType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ChildWorkflowExecutionFailureInfo "initiatedEventId" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ChildWorkflowExecutionFailureInfo'initiatedEventId
           (\ x__ y__
              -> x__
                   {_ChildWorkflowExecutionFailureInfo'initiatedEventId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ChildWorkflowExecutionFailureInfo "startedEventId" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ChildWorkflowExecutionFailureInfo'startedEventId
           (\ x__ y__
              -> x__ {_ChildWorkflowExecutionFailureInfo'startedEventId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ChildWorkflowExecutionFailureInfo "retryState" Proto.Temporal.Api.Enums.V1.Workflow.RetryState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ChildWorkflowExecutionFailureInfo'retryState
           (\ x__ y__
              -> x__ {_ChildWorkflowExecutionFailureInfo'retryState = y__}))
        Prelude.id
instance Data.ProtoLens.Message ChildWorkflowExecutionFailureInfo where
  messageName _
    = Data.Text.pack
        "temporal.api.failure.v1.ChildWorkflowExecutionFailureInfo"
  packedMessageDescriptor _
    = "\n\
      \!ChildWorkflowExecutionFailureInfo\DC2\FS\n\
      \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2X\n\
      \\DC2workflow_execution\CAN\STX \SOH(\v2).temporal.api.common.v1.WorkflowExecutionR\DC1workflowExecution\DC2I\n\
      \\rworkflow_type\CAN\ETX \SOH(\v2$.temporal.api.common.v1.WorkflowTypeR\fworkflowType\DC2,\n\
      \\DC2initiated_event_id\CAN\EOT \SOH(\ETXR\DLEinitiatedEventId\DC2(\n\
      \\DLEstarted_event_id\CAN\ENQ \SOH(\ETXR\SOstartedEventId\DC2B\n\
      \\vretry_state\CAN\ACK \SOH(\SO2!.temporal.api.enums.v1.RetryStateR\n\
      \retryState"
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
              Data.ProtoLens.FieldDescriptor ChildWorkflowExecutionFailureInfo
        workflowExecution__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_execution"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.WorkflowExecution)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowExecution")) ::
              Data.ProtoLens.FieldDescriptor ChildWorkflowExecutionFailureInfo
        workflowType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.WorkflowType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowType")) ::
              Data.ProtoLens.FieldDescriptor ChildWorkflowExecutionFailureInfo
        initiatedEventId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "initiated_event_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"initiatedEventId")) ::
              Data.ProtoLens.FieldDescriptor ChildWorkflowExecutionFailureInfo
        startedEventId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "started_event_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"startedEventId")) ::
              Data.ProtoLens.FieldDescriptor ChildWorkflowExecutionFailureInfo
        retryState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Workflow.RetryState)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"retryState")) ::
              Data.ProtoLens.FieldDescriptor ChildWorkflowExecutionFailureInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, namespace__field_descriptor),
           (Data.ProtoLens.Tag 2, workflowExecution__field_descriptor),
           (Data.ProtoLens.Tag 3, workflowType__field_descriptor),
           (Data.ProtoLens.Tag 4, initiatedEventId__field_descriptor),
           (Data.ProtoLens.Tag 5, startedEventId__field_descriptor),
           (Data.ProtoLens.Tag 6, retryState__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ChildWorkflowExecutionFailureInfo'_unknownFields
        (\ x__ y__
           -> x__ {_ChildWorkflowExecutionFailureInfo'_unknownFields = y__})
  defMessage
    = ChildWorkflowExecutionFailureInfo'_constructor
        {_ChildWorkflowExecutionFailureInfo'namespace = Data.ProtoLens.fieldDefault,
         _ChildWorkflowExecutionFailureInfo'workflowExecution = Prelude.Nothing,
         _ChildWorkflowExecutionFailureInfo'workflowType = Prelude.Nothing,
         _ChildWorkflowExecutionFailureInfo'initiatedEventId = Data.ProtoLens.fieldDefault,
         _ChildWorkflowExecutionFailureInfo'startedEventId = Data.ProtoLens.fieldDefault,
         _ChildWorkflowExecutionFailureInfo'retryState = Data.ProtoLens.fieldDefault,
         _ChildWorkflowExecutionFailureInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ChildWorkflowExecutionFailureInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser ChildWorkflowExecutionFailureInfo
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
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_execution"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowExecution") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowType") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "initiated_event_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"initiatedEventId") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "started_event_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startedEventId") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "retry_state"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"retryState") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "ChildWorkflowExecutionFailureInfo"
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
                       (Data.ProtoLens.Field.field @"maybe'workflowExecution") _x
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
                          (Data.ProtoLens.Field.field @"maybe'workflowType") _x
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
                               (Data.ProtoLens.Field.field @"initiatedEventId") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"startedEventId") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                     _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view (Data.ProtoLens.Field.field @"retryState") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           Prelude.fromIntegral)
                                        Prelude.fromEnum _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData ChildWorkflowExecutionFailureInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ChildWorkflowExecutionFailureInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ChildWorkflowExecutionFailureInfo'namespace x__)
                (Control.DeepSeq.deepseq
                   (_ChildWorkflowExecutionFailureInfo'workflowExecution x__)
                   (Control.DeepSeq.deepseq
                      (_ChildWorkflowExecutionFailureInfo'workflowType x__)
                      (Control.DeepSeq.deepseq
                         (_ChildWorkflowExecutionFailureInfo'initiatedEventId x__)
                         (Control.DeepSeq.deepseq
                            (_ChildWorkflowExecutionFailureInfo'startedEventId x__)
                            (Control.DeepSeq.deepseq
                               (_ChildWorkflowExecutionFailureInfo'retryState x__) ()))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.message' @:: Lens' Failure Data.Text.Text@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.source' @:: Lens' Failure Data.Text.Text@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.stackTrace' @:: Lens' Failure Data.Text.Text@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.encodedAttributes' @:: Lens' Failure Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.maybe'encodedAttributes' @:: Lens' Failure (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.cause' @:: Lens' Failure Failure@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.maybe'cause' @:: Lens' Failure (Prelude.Maybe Failure)@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.maybe'failureInfo' @:: Lens' Failure (Prelude.Maybe Failure'FailureInfo)@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.maybe'applicationFailureInfo' @:: Lens' Failure (Prelude.Maybe ApplicationFailureInfo)@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.applicationFailureInfo' @:: Lens' Failure ApplicationFailureInfo@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.maybe'timeoutFailureInfo' @:: Lens' Failure (Prelude.Maybe TimeoutFailureInfo)@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.timeoutFailureInfo' @:: Lens' Failure TimeoutFailureInfo@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.maybe'canceledFailureInfo' @:: Lens' Failure (Prelude.Maybe CanceledFailureInfo)@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.canceledFailureInfo' @:: Lens' Failure CanceledFailureInfo@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.maybe'terminatedFailureInfo' @:: Lens' Failure (Prelude.Maybe TerminatedFailureInfo)@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.terminatedFailureInfo' @:: Lens' Failure TerminatedFailureInfo@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.maybe'serverFailureInfo' @:: Lens' Failure (Prelude.Maybe ServerFailureInfo)@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.serverFailureInfo' @:: Lens' Failure ServerFailureInfo@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.maybe'resetWorkflowFailureInfo' @:: Lens' Failure (Prelude.Maybe ResetWorkflowFailureInfo)@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.resetWorkflowFailureInfo' @:: Lens' Failure ResetWorkflowFailureInfo@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.maybe'activityFailureInfo' @:: Lens' Failure (Prelude.Maybe ActivityFailureInfo)@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.activityFailureInfo' @:: Lens' Failure ActivityFailureInfo@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.maybe'childWorkflowExecutionFailureInfo' @:: Lens' Failure (Prelude.Maybe ChildWorkflowExecutionFailureInfo)@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.childWorkflowExecutionFailureInfo' @:: Lens' Failure ChildWorkflowExecutionFailureInfo@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.maybe'nexusOperationExecutionFailureInfo' @:: Lens' Failure (Prelude.Maybe NexusOperationFailureInfo)@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.nexusOperationExecutionFailureInfo' @:: Lens' Failure NexusOperationFailureInfo@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.maybe'nexusHandlerFailureInfo' @:: Lens' Failure (Prelude.Maybe NexusHandlerFailureInfo)@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.nexusHandlerFailureInfo' @:: Lens' Failure NexusHandlerFailureInfo@ -}
data Failure
  = Failure'_constructor {_Failure'message :: !Data.Text.Text,
                          _Failure'source :: !Data.Text.Text,
                          _Failure'stackTrace :: !Data.Text.Text,
                          _Failure'encodedAttributes :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                          _Failure'cause :: !(Prelude.Maybe Failure),
                          _Failure'failureInfo :: !(Prelude.Maybe Failure'FailureInfo),
                          _Failure'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Failure where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Failure'FailureInfo
  = Failure'ApplicationFailureInfo !ApplicationFailureInfo |
    Failure'TimeoutFailureInfo !TimeoutFailureInfo |
    Failure'CanceledFailureInfo !CanceledFailureInfo |
    Failure'TerminatedFailureInfo !TerminatedFailureInfo |
    Failure'ServerFailureInfo !ServerFailureInfo |
    Failure'ResetWorkflowFailureInfo !ResetWorkflowFailureInfo |
    Failure'ActivityFailureInfo !ActivityFailureInfo |
    Failure'ChildWorkflowExecutionFailureInfo !ChildWorkflowExecutionFailureInfo |
    Failure'NexusOperationExecutionFailureInfo !NexusOperationFailureInfo |
    Failure'NexusHandlerFailureInfo !NexusHandlerFailureInfo
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Failure "message" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'message (\ x__ y__ -> x__ {_Failure'message = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Failure "source" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'source (\ x__ y__ -> x__ {_Failure'source = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Failure "stackTrace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'stackTrace (\ x__ y__ -> x__ {_Failure'stackTrace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Failure "encodedAttributes" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'encodedAttributes
           (\ x__ y__ -> x__ {_Failure'encodedAttributes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Failure "maybe'encodedAttributes" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'encodedAttributes
           (\ x__ y__ -> x__ {_Failure'encodedAttributes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Failure "cause" Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'cause (\ x__ y__ -> x__ {_Failure'cause = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Failure "maybe'cause" (Prelude.Maybe Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'cause (\ x__ y__ -> x__ {_Failure'cause = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Failure "maybe'failureInfo" (Prelude.Maybe Failure'FailureInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failureInfo
           (\ x__ y__ -> x__ {_Failure'failureInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Failure "maybe'applicationFailureInfo" (Prelude.Maybe ApplicationFailureInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failureInfo
           (\ x__ y__ -> x__ {_Failure'failureInfo = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Failure'ApplicationFailureInfo x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Failure'ApplicationFailureInfo y__))
instance Data.ProtoLens.Field.HasField Failure "applicationFailureInfo" ApplicationFailureInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failureInfo
           (\ x__ y__ -> x__ {_Failure'failureInfo = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Failure'ApplicationFailureInfo x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Failure'ApplicationFailureInfo y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Failure "maybe'timeoutFailureInfo" (Prelude.Maybe TimeoutFailureInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failureInfo
           (\ x__ y__ -> x__ {_Failure'failureInfo = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Failure'TimeoutFailureInfo x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Failure'TimeoutFailureInfo y__))
instance Data.ProtoLens.Field.HasField Failure "timeoutFailureInfo" TimeoutFailureInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failureInfo
           (\ x__ y__ -> x__ {_Failure'failureInfo = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Failure'TimeoutFailureInfo x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Failure'TimeoutFailureInfo y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Failure "maybe'canceledFailureInfo" (Prelude.Maybe CanceledFailureInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failureInfo
           (\ x__ y__ -> x__ {_Failure'failureInfo = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Failure'CanceledFailureInfo x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Failure'CanceledFailureInfo y__))
instance Data.ProtoLens.Field.HasField Failure "canceledFailureInfo" CanceledFailureInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failureInfo
           (\ x__ y__ -> x__ {_Failure'failureInfo = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Failure'CanceledFailureInfo x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Failure'CanceledFailureInfo y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Failure "maybe'terminatedFailureInfo" (Prelude.Maybe TerminatedFailureInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failureInfo
           (\ x__ y__ -> x__ {_Failure'failureInfo = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Failure'TerminatedFailureInfo x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Failure'TerminatedFailureInfo y__))
instance Data.ProtoLens.Field.HasField Failure "terminatedFailureInfo" TerminatedFailureInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failureInfo
           (\ x__ y__ -> x__ {_Failure'failureInfo = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Failure'TerminatedFailureInfo x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Failure'TerminatedFailureInfo y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Failure "maybe'serverFailureInfo" (Prelude.Maybe ServerFailureInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failureInfo
           (\ x__ y__ -> x__ {_Failure'failureInfo = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Failure'ServerFailureInfo x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Failure'ServerFailureInfo y__))
instance Data.ProtoLens.Field.HasField Failure "serverFailureInfo" ServerFailureInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failureInfo
           (\ x__ y__ -> x__ {_Failure'failureInfo = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Failure'ServerFailureInfo x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Failure'ServerFailureInfo y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Failure "maybe'resetWorkflowFailureInfo" (Prelude.Maybe ResetWorkflowFailureInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failureInfo
           (\ x__ y__ -> x__ {_Failure'failureInfo = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Failure'ResetWorkflowFailureInfo x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Failure'ResetWorkflowFailureInfo y__))
instance Data.ProtoLens.Field.HasField Failure "resetWorkflowFailureInfo" ResetWorkflowFailureInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failureInfo
           (\ x__ y__ -> x__ {_Failure'failureInfo = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Failure'ResetWorkflowFailureInfo x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Failure'ResetWorkflowFailureInfo y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Failure "maybe'activityFailureInfo" (Prelude.Maybe ActivityFailureInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failureInfo
           (\ x__ y__ -> x__ {_Failure'failureInfo = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Failure'ActivityFailureInfo x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Failure'ActivityFailureInfo y__))
instance Data.ProtoLens.Field.HasField Failure "activityFailureInfo" ActivityFailureInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failureInfo
           (\ x__ y__ -> x__ {_Failure'failureInfo = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Failure'ActivityFailureInfo x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Failure'ActivityFailureInfo y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Failure "maybe'childWorkflowExecutionFailureInfo" (Prelude.Maybe ChildWorkflowExecutionFailureInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failureInfo
           (\ x__ y__ -> x__ {_Failure'failureInfo = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Failure'ChildWorkflowExecutionFailureInfo x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap Failure'ChildWorkflowExecutionFailureInfo y__))
instance Data.ProtoLens.Field.HasField Failure "childWorkflowExecutionFailureInfo" ChildWorkflowExecutionFailureInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failureInfo
           (\ x__ y__ -> x__ {_Failure'failureInfo = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Failure'ChildWorkflowExecutionFailureInfo x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap Failure'ChildWorkflowExecutionFailureInfo y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Failure "maybe'nexusOperationExecutionFailureInfo" (Prelude.Maybe NexusOperationFailureInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failureInfo
           (\ x__ y__ -> x__ {_Failure'failureInfo = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Failure'NexusOperationExecutionFailureInfo x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap Failure'NexusOperationExecutionFailureInfo y__))
instance Data.ProtoLens.Field.HasField Failure "nexusOperationExecutionFailureInfo" NexusOperationFailureInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failureInfo
           (\ x__ y__ -> x__ {_Failure'failureInfo = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Failure'NexusOperationExecutionFailureInfo x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap Failure'NexusOperationExecutionFailureInfo y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Failure "maybe'nexusHandlerFailureInfo" (Prelude.Maybe NexusHandlerFailureInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failureInfo
           (\ x__ y__ -> x__ {_Failure'failureInfo = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Failure'NexusHandlerFailureInfo x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Failure'NexusHandlerFailureInfo y__))
instance Data.ProtoLens.Field.HasField Failure "nexusHandlerFailureInfo" NexusHandlerFailureInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failureInfo
           (\ x__ y__ -> x__ {_Failure'failureInfo = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Failure'NexusHandlerFailureInfo x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Failure'NexusHandlerFailureInfo y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Failure where
  messageName _ = Data.Text.pack "temporal.api.failure.v1.Failure"
  packedMessageDescriptor _
    = "\n\
      \\aFailure\DC2\CAN\n\
      \\amessage\CAN\SOH \SOH(\tR\amessage\DC2\SYN\n\
      \\ACKsource\CAN\STX \SOH(\tR\ACKsource\DC2\US\n\
      \\vstack_trace\CAN\ETX \SOH(\tR\n\
      \stackTrace\DC2N\n\
      \\DC2encoded_attributes\CAN\DC4 \SOH(\v2\US.temporal.api.common.v1.PayloadR\DC1encodedAttributes\DC26\n\
      \\ENQcause\CAN\EOT \SOH(\v2 .temporal.api.failure.v1.FailureR\ENQcause\DC2k\n\
      \\CANapplication_failure_info\CAN\ENQ \SOH(\v2/.temporal.api.failure.v1.ApplicationFailureInfoH\NULR\SYNapplicationFailureInfo\DC2_\n\
      \\DC4timeout_failure_info\CAN\ACK \SOH(\v2+.temporal.api.failure.v1.TimeoutFailureInfoH\NULR\DC2timeoutFailureInfo\DC2b\n\
      \\NAKcanceled_failure_info\CAN\a \SOH(\v2,.temporal.api.failure.v1.CanceledFailureInfoH\NULR\DC3canceledFailureInfo\DC2h\n\
      \\ETBterminated_failure_info\CAN\b \SOH(\v2..temporal.api.failure.v1.TerminatedFailureInfoH\NULR\NAKterminatedFailureInfo\DC2\\\n\
      \\DC3server_failure_info\CAN\t \SOH(\v2*.temporal.api.failure.v1.ServerFailureInfoH\NULR\DC1serverFailureInfo\DC2r\n\
      \\ESCreset_workflow_failure_info\CAN\n\
      \ \SOH(\v21.temporal.api.failure.v1.ResetWorkflowFailureInfoH\NULR\CANresetWorkflowFailureInfo\DC2b\n\
      \\NAKactivity_failure_info\CAN\v \SOH(\v2,.temporal.api.failure.v1.ActivityFailureInfoH\NULR\DC3activityFailureInfo\DC2\142\SOH\n\
      \%child_workflow_execution_failure_info\CAN\f \SOH(\v2:.temporal.api.failure.v1.ChildWorkflowExecutionFailureInfoH\NULR!childWorkflowExecutionFailureInfo\DC2\136\SOH\n\
      \&nexus_operation_execution_failure_info\CAN\r \SOH(\v22.temporal.api.failure.v1.NexusOperationFailureInfoH\NULR\"nexusOperationExecutionFailureInfo\DC2o\n\
      \\SUBnexus_handler_failure_info\CAN\SO \SOH(\v20.temporal.api.failure.v1.NexusHandlerFailureInfoH\NULR\ETBnexusHandlerFailureInfoB\SO\n\
      \\ffailure_info"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        message__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"message")) ::
              Data.ProtoLens.FieldDescriptor Failure
        source__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"source")) ::
              Data.ProtoLens.FieldDescriptor Failure
        stackTrace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stack_trace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stackTrace")) ::
              Data.ProtoLens.FieldDescriptor Failure
        encodedAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "encoded_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'encodedAttributes")) ::
              Data.ProtoLens.FieldDescriptor Failure
        cause__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cause"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cause")) ::
              Data.ProtoLens.FieldDescriptor Failure
        applicationFailureInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "application_failure_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ApplicationFailureInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'applicationFailureInfo")) ::
              Data.ProtoLens.FieldDescriptor Failure
        timeoutFailureInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timeout_failure_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TimeoutFailureInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeoutFailureInfo")) ::
              Data.ProtoLens.FieldDescriptor Failure
        canceledFailureInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "canceled_failure_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CanceledFailureInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'canceledFailureInfo")) ::
              Data.ProtoLens.FieldDescriptor Failure
        terminatedFailureInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "terminated_failure_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TerminatedFailureInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'terminatedFailureInfo")) ::
              Data.ProtoLens.FieldDescriptor Failure
        serverFailureInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "server_failure_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ServerFailureInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'serverFailureInfo")) ::
              Data.ProtoLens.FieldDescriptor Failure
        resetWorkflowFailureInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reset_workflow_failure_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResetWorkflowFailureInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'resetWorkflowFailureInfo")) ::
              Data.ProtoLens.FieldDescriptor Failure
        activityFailureInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_failure_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ActivityFailureInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'activityFailureInfo")) ::
              Data.ProtoLens.FieldDescriptor Failure
        childWorkflowExecutionFailureInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "child_workflow_execution_failure_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ChildWorkflowExecutionFailureInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'childWorkflowExecutionFailureInfo")) ::
              Data.ProtoLens.FieldDescriptor Failure
        nexusOperationExecutionFailureInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nexus_operation_execution_failure_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NexusOperationFailureInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'nexusOperationExecutionFailureInfo")) ::
              Data.ProtoLens.FieldDescriptor Failure
        nexusHandlerFailureInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nexus_handler_failure_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NexusHandlerFailureInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nexusHandlerFailureInfo")) ::
              Data.ProtoLens.FieldDescriptor Failure
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, message__field_descriptor),
           (Data.ProtoLens.Tag 2, source__field_descriptor),
           (Data.ProtoLens.Tag 3, stackTrace__field_descriptor),
           (Data.ProtoLens.Tag 20, encodedAttributes__field_descriptor),
           (Data.ProtoLens.Tag 4, cause__field_descriptor),
           (Data.ProtoLens.Tag 5, applicationFailureInfo__field_descriptor),
           (Data.ProtoLens.Tag 6, timeoutFailureInfo__field_descriptor),
           (Data.ProtoLens.Tag 7, canceledFailureInfo__field_descriptor),
           (Data.ProtoLens.Tag 8, terminatedFailureInfo__field_descriptor),
           (Data.ProtoLens.Tag 9, serverFailureInfo__field_descriptor),
           (Data.ProtoLens.Tag 10, 
            resetWorkflowFailureInfo__field_descriptor),
           (Data.ProtoLens.Tag 11, activityFailureInfo__field_descriptor),
           (Data.ProtoLens.Tag 12, 
            childWorkflowExecutionFailureInfo__field_descriptor),
           (Data.ProtoLens.Tag 13, 
            nexusOperationExecutionFailureInfo__field_descriptor),
           (Data.ProtoLens.Tag 14, nexusHandlerFailureInfo__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Failure'_unknownFields
        (\ x__ y__ -> x__ {_Failure'_unknownFields = y__})
  defMessage
    = Failure'_constructor
        {_Failure'message = Data.ProtoLens.fieldDefault,
         _Failure'source = Data.ProtoLens.fieldDefault,
         _Failure'stackTrace = Data.ProtoLens.fieldDefault,
         _Failure'encodedAttributes = Prelude.Nothing,
         _Failure'cause = Prelude.Nothing,
         _Failure'failureInfo = Prelude.Nothing,
         _Failure'_unknownFields = []}
  parseMessage
    = let
        loop :: Failure -> Data.ProtoLens.Encoding.Bytes.Parser Failure
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
                                       "message"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"message") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "source"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"source") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "stack_trace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stackTrace") y x)
                        162
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "encoded_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"encodedAttributes") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cause"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cause") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "application_failure_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"applicationFailureInfo") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timeout_failure_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timeoutFailureInfo") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "canceled_failure_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"canceledFailureInfo") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "terminated_failure_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"terminatedFailureInfo") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "server_failure_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"serverFailureInfo") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "reset_workflow_failure_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"resetWorkflowFailureInfo") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "activity_failure_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"activityFailureInfo") y x)
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "child_workflow_execution_failure_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"childWorkflowExecutionFailureInfo")
                                     y x)
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "nexus_operation_execution_failure_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"nexusOperationExecutionFailureInfo")
                                     y x)
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "nexus_handler_failure_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"nexusHandlerFailureInfo") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Failure"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"message") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"source") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"stackTrace") _x
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
                             (Data.ProtoLens.Field.field @"maybe'encodedAttributes") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 162)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cause") _x
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
                                   (Data.ProtoLens.Field.field @"maybe'failureInfo") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just (Failure'ApplicationFailureInfo v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (Failure'TimeoutFailureInfo v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (Failure'CanceledFailureInfo v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (Failure'TerminatedFailureInfo v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (Failure'ServerFailureInfo v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (Failure'ResetWorkflowFailureInfo v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (Failure'ActivityFailureInfo v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (Failure'ChildWorkflowExecutionFailureInfo v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (Failure'NexusOperationExecutionFailureInfo v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 106)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (Failure'NexusHandlerFailureInfo v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 114)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData Failure where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Failure'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Failure'message x__)
                (Control.DeepSeq.deepseq
                   (_Failure'source x__)
                   (Control.DeepSeq.deepseq
                      (_Failure'stackTrace x__)
                      (Control.DeepSeq.deepseq
                         (_Failure'encodedAttributes x__)
                         (Control.DeepSeq.deepseq
                            (_Failure'cause x__)
                            (Control.DeepSeq.deepseq (_Failure'failureInfo x__) ()))))))
instance Control.DeepSeq.NFData Failure'FailureInfo where
  rnf (Failure'ApplicationFailureInfo x__) = Control.DeepSeq.rnf x__
  rnf (Failure'TimeoutFailureInfo x__) = Control.DeepSeq.rnf x__
  rnf (Failure'CanceledFailureInfo x__) = Control.DeepSeq.rnf x__
  rnf (Failure'TerminatedFailureInfo x__) = Control.DeepSeq.rnf x__
  rnf (Failure'ServerFailureInfo x__) = Control.DeepSeq.rnf x__
  rnf (Failure'ResetWorkflowFailureInfo x__)
    = Control.DeepSeq.rnf x__
  rnf (Failure'ActivityFailureInfo x__) = Control.DeepSeq.rnf x__
  rnf (Failure'ChildWorkflowExecutionFailureInfo x__)
    = Control.DeepSeq.rnf x__
  rnf (Failure'NexusOperationExecutionFailureInfo x__)
    = Control.DeepSeq.rnf x__
  rnf (Failure'NexusHandlerFailureInfo x__) = Control.DeepSeq.rnf x__
_Failure'ApplicationFailureInfo ::
  Data.ProtoLens.Prism.Prism' Failure'FailureInfo ApplicationFailureInfo
_Failure'ApplicationFailureInfo
  = Data.ProtoLens.Prism.prism'
      Failure'ApplicationFailureInfo
      (\ p__
         -> case p__ of
              (Failure'ApplicationFailureInfo p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Failure'TimeoutFailureInfo ::
  Data.ProtoLens.Prism.Prism' Failure'FailureInfo TimeoutFailureInfo
_Failure'TimeoutFailureInfo
  = Data.ProtoLens.Prism.prism'
      Failure'TimeoutFailureInfo
      (\ p__
         -> case p__ of
              (Failure'TimeoutFailureInfo p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Failure'CanceledFailureInfo ::
  Data.ProtoLens.Prism.Prism' Failure'FailureInfo CanceledFailureInfo
_Failure'CanceledFailureInfo
  = Data.ProtoLens.Prism.prism'
      Failure'CanceledFailureInfo
      (\ p__
         -> case p__ of
              (Failure'CanceledFailureInfo p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Failure'TerminatedFailureInfo ::
  Data.ProtoLens.Prism.Prism' Failure'FailureInfo TerminatedFailureInfo
_Failure'TerminatedFailureInfo
  = Data.ProtoLens.Prism.prism'
      Failure'TerminatedFailureInfo
      (\ p__
         -> case p__ of
              (Failure'TerminatedFailureInfo p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Failure'ServerFailureInfo ::
  Data.ProtoLens.Prism.Prism' Failure'FailureInfo ServerFailureInfo
_Failure'ServerFailureInfo
  = Data.ProtoLens.Prism.prism'
      Failure'ServerFailureInfo
      (\ p__
         -> case p__ of
              (Failure'ServerFailureInfo p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Failure'ResetWorkflowFailureInfo ::
  Data.ProtoLens.Prism.Prism' Failure'FailureInfo ResetWorkflowFailureInfo
_Failure'ResetWorkflowFailureInfo
  = Data.ProtoLens.Prism.prism'
      Failure'ResetWorkflowFailureInfo
      (\ p__
         -> case p__ of
              (Failure'ResetWorkflowFailureInfo p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Failure'ActivityFailureInfo ::
  Data.ProtoLens.Prism.Prism' Failure'FailureInfo ActivityFailureInfo
_Failure'ActivityFailureInfo
  = Data.ProtoLens.Prism.prism'
      Failure'ActivityFailureInfo
      (\ p__
         -> case p__ of
              (Failure'ActivityFailureInfo p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Failure'ChildWorkflowExecutionFailureInfo ::
  Data.ProtoLens.Prism.Prism' Failure'FailureInfo ChildWorkflowExecutionFailureInfo
_Failure'ChildWorkflowExecutionFailureInfo
  = Data.ProtoLens.Prism.prism'
      Failure'ChildWorkflowExecutionFailureInfo
      (\ p__
         -> case p__ of
              (Failure'ChildWorkflowExecutionFailureInfo p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Failure'NexusOperationExecutionFailureInfo ::
  Data.ProtoLens.Prism.Prism' Failure'FailureInfo NexusOperationFailureInfo
_Failure'NexusOperationExecutionFailureInfo
  = Data.ProtoLens.Prism.prism'
      Failure'NexusOperationExecutionFailureInfo
      (\ p__
         -> case p__ of
              (Failure'NexusOperationExecutionFailureInfo p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Failure'NexusHandlerFailureInfo ::
  Data.ProtoLens.Prism.Prism' Failure'FailureInfo NexusHandlerFailureInfo
_Failure'NexusHandlerFailureInfo
  = Data.ProtoLens.Prism.prism'
      Failure'NexusHandlerFailureInfo
      (\ p__
         -> case p__ of
              (Failure'NexusHandlerFailureInfo p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
      -}
data MultiOperationExecutionAborted
  = MultiOperationExecutionAborted'_constructor {_MultiOperationExecutionAborted'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MultiOperationExecutionAborted where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MultiOperationExecutionAborted where
  messageName _
    = Data.Text.pack
        "temporal.api.failure.v1.MultiOperationExecutionAborted"
  packedMessageDescriptor _
    = "\n\
      \\RSMultiOperationExecutionAborted"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MultiOperationExecutionAborted'_unknownFields
        (\ x__ y__
           -> x__ {_MultiOperationExecutionAborted'_unknownFields = y__})
  defMessage
    = MultiOperationExecutionAborted'_constructor
        {_MultiOperationExecutionAborted'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MultiOperationExecutionAborted
          -> Data.ProtoLens.Encoding.Bytes.Parser MultiOperationExecutionAborted
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MultiOperationExecutionAborted"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MultiOperationExecutionAborted where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MultiOperationExecutionAborted'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.type'' @:: Lens' NexusHandlerFailureInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.retryBehavior' @:: Lens' NexusHandlerFailureInfo Proto.Temporal.Api.Enums.V1.Nexus.NexusHandlerErrorRetryBehavior@ -}
data NexusHandlerFailureInfo
  = NexusHandlerFailureInfo'_constructor {_NexusHandlerFailureInfo'type' :: !Data.Text.Text,
                                          _NexusHandlerFailureInfo'retryBehavior :: !Proto.Temporal.Api.Enums.V1.Nexus.NexusHandlerErrorRetryBehavior,
                                          _NexusHandlerFailureInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NexusHandlerFailureInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NexusHandlerFailureInfo "type'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusHandlerFailureInfo'type'
           (\ x__ y__ -> x__ {_NexusHandlerFailureInfo'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusHandlerFailureInfo "retryBehavior" Proto.Temporal.Api.Enums.V1.Nexus.NexusHandlerErrorRetryBehavior where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusHandlerFailureInfo'retryBehavior
           (\ x__ y__ -> x__ {_NexusHandlerFailureInfo'retryBehavior = y__}))
        Prelude.id
instance Data.ProtoLens.Message NexusHandlerFailureInfo where
  messageName _
    = Data.Text.pack "temporal.api.failure.v1.NexusHandlerFailureInfo"
  packedMessageDescriptor _
    = "\n\
      \\ETBNexusHandlerFailureInfo\DC2\DC2\n\
      \\EOTtype\CAN\SOH \SOH(\tR\EOTtype\DC2\\\n\
      \\SOretry_behavior\CAN\STX \SOH(\SO25.temporal.api.enums.v1.NexusHandlerErrorRetryBehaviorR\rretryBehavior"
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
              Data.ProtoLens.FieldDescriptor NexusHandlerFailureInfo
        retryBehavior__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_behavior"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Nexus.NexusHandlerErrorRetryBehavior)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"retryBehavior")) ::
              Data.ProtoLens.FieldDescriptor NexusHandlerFailureInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, retryBehavior__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NexusHandlerFailureInfo'_unknownFields
        (\ x__ y__ -> x__ {_NexusHandlerFailureInfo'_unknownFields = y__})
  defMessage
    = NexusHandlerFailureInfo'_constructor
        {_NexusHandlerFailureInfo'type' = Data.ProtoLens.fieldDefault,
         _NexusHandlerFailureInfo'retryBehavior = Data.ProtoLens.fieldDefault,
         _NexusHandlerFailureInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NexusHandlerFailureInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser NexusHandlerFailureInfo
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "retry_behavior"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"retryBehavior") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NexusHandlerFailureInfo"
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
                         (Data.ProtoLens.Field.field @"retryBehavior") _x
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
instance Control.DeepSeq.NFData NexusHandlerFailureInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NexusHandlerFailureInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NexusHandlerFailureInfo'type' x__)
                (Control.DeepSeq.deepseq
                   (_NexusHandlerFailureInfo'retryBehavior x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.scheduledEventId' @:: Lens' NexusOperationFailureInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.endpoint' @:: Lens' NexusOperationFailureInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.service' @:: Lens' NexusOperationFailureInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.operation' @:: Lens' NexusOperationFailureInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.operationId' @:: Lens' NexusOperationFailureInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.operationToken' @:: Lens' NexusOperationFailureInfo Data.Text.Text@ -}
data NexusOperationFailureInfo
  = NexusOperationFailureInfo'_constructor {_NexusOperationFailureInfo'scheduledEventId :: !Data.Int.Int64,
                                            _NexusOperationFailureInfo'endpoint :: !Data.Text.Text,
                                            _NexusOperationFailureInfo'service :: !Data.Text.Text,
                                            _NexusOperationFailureInfo'operation :: !Data.Text.Text,
                                            _NexusOperationFailureInfo'operationId :: !Data.Text.Text,
                                            _NexusOperationFailureInfo'operationToken :: !Data.Text.Text,
                                            _NexusOperationFailureInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NexusOperationFailureInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NexusOperationFailureInfo "scheduledEventId" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationFailureInfo'scheduledEventId
           (\ x__ y__
              -> x__ {_NexusOperationFailureInfo'scheduledEventId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationFailureInfo "endpoint" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationFailureInfo'endpoint
           (\ x__ y__ -> x__ {_NexusOperationFailureInfo'endpoint = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationFailureInfo "service" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationFailureInfo'service
           (\ x__ y__ -> x__ {_NexusOperationFailureInfo'service = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationFailureInfo "operation" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationFailureInfo'operation
           (\ x__ y__ -> x__ {_NexusOperationFailureInfo'operation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationFailureInfo "operationId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationFailureInfo'operationId
           (\ x__ y__ -> x__ {_NexusOperationFailureInfo'operationId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationFailureInfo "operationToken" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationFailureInfo'operationToken
           (\ x__ y__
              -> x__ {_NexusOperationFailureInfo'operationToken = y__}))
        Prelude.id
instance Data.ProtoLens.Message NexusOperationFailureInfo where
  messageName _
    = Data.Text.pack
        "temporal.api.failure.v1.NexusOperationFailureInfo"
  packedMessageDescriptor _
    = "\n\
      \\EMNexusOperationFailureInfo\DC2,\n\
      \\DC2scheduled_event_id\CAN\SOH \SOH(\ETXR\DLEscheduledEventId\DC2\SUB\n\
      \\bendpoint\CAN\STX \SOH(\tR\bendpoint\DC2\CAN\n\
      \\aservice\CAN\ETX \SOH(\tR\aservice\DC2\FS\n\
      \\toperation\CAN\EOT \SOH(\tR\toperation\DC2%\n\
      \\foperation_id\CAN\ENQ \SOH(\tR\voperationIdB\STX\CAN\SOH\DC2'\n\
      \\SIoperation_token\CAN\ACK \SOH(\tR\SOoperationToken"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        scheduledEventId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scheduled_event_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"scheduledEventId")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationFailureInfo
        endpoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"endpoint")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationFailureInfo
        service__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"service")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationFailureInfo
        operation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operation")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationFailureInfo
        operationId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operationId")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationFailureInfo
        operationToken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_token"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operationToken")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationFailureInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, scheduledEventId__field_descriptor),
           (Data.ProtoLens.Tag 2, endpoint__field_descriptor),
           (Data.ProtoLens.Tag 3, service__field_descriptor),
           (Data.ProtoLens.Tag 4, operation__field_descriptor),
           (Data.ProtoLens.Tag 5, operationId__field_descriptor),
           (Data.ProtoLens.Tag 6, operationToken__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NexusOperationFailureInfo'_unknownFields
        (\ x__ y__
           -> x__ {_NexusOperationFailureInfo'_unknownFields = y__})
  defMessage
    = NexusOperationFailureInfo'_constructor
        {_NexusOperationFailureInfo'scheduledEventId = Data.ProtoLens.fieldDefault,
         _NexusOperationFailureInfo'endpoint = Data.ProtoLens.fieldDefault,
         _NexusOperationFailureInfo'service = Data.ProtoLens.fieldDefault,
         _NexusOperationFailureInfo'operation = Data.ProtoLens.fieldDefault,
         _NexusOperationFailureInfo'operationId = Data.ProtoLens.fieldDefault,
         _NexusOperationFailureInfo'operationToken = Data.ProtoLens.fieldDefault,
         _NexusOperationFailureInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NexusOperationFailureInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser NexusOperationFailureInfo
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
                                       "scheduled_event_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduledEventId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "endpoint"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endpoint") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "service"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"service") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operation") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operationId") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation_token"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"operationToken") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NexusOperationFailureInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"scheduledEventId") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"endpoint") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"service") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operation") _x
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
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"operationId") _x
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
                                     (Data.ProtoLens.Field.field @"operationToken") _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData NexusOperationFailureInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NexusOperationFailureInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NexusOperationFailureInfo'scheduledEventId x__)
                (Control.DeepSeq.deepseq
                   (_NexusOperationFailureInfo'endpoint x__)
                   (Control.DeepSeq.deepseq
                      (_NexusOperationFailureInfo'service x__)
                      (Control.DeepSeq.deepseq
                         (_NexusOperationFailureInfo'operation x__)
                         (Control.DeepSeq.deepseq
                            (_NexusOperationFailureInfo'operationId x__)
                            (Control.DeepSeq.deepseq
                               (_NexusOperationFailureInfo'operationToken x__) ()))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.lastHeartbeatDetails' @:: Lens' ResetWorkflowFailureInfo Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.maybe'lastHeartbeatDetails' @:: Lens' ResetWorkflowFailureInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@ -}
data ResetWorkflowFailureInfo
  = ResetWorkflowFailureInfo'_constructor {_ResetWorkflowFailureInfo'lastHeartbeatDetails :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads),
                                           _ResetWorkflowFailureInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResetWorkflowFailureInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResetWorkflowFailureInfo "lastHeartbeatDetails" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResetWorkflowFailureInfo'lastHeartbeatDetails
           (\ x__ y__
              -> x__ {_ResetWorkflowFailureInfo'lastHeartbeatDetails = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ResetWorkflowFailureInfo "maybe'lastHeartbeatDetails" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResetWorkflowFailureInfo'lastHeartbeatDetails
           (\ x__ y__
              -> x__ {_ResetWorkflowFailureInfo'lastHeartbeatDetails = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResetWorkflowFailureInfo where
  messageName _
    = Data.Text.pack "temporal.api.failure.v1.ResetWorkflowFailureInfo"
  packedMessageDescriptor _
    = "\n\
      \\CANResetWorkflowFailureInfo\DC2V\n\
      \\SYNlast_heartbeat_details\CAN\SOH \SOH(\v2 .temporal.api.common.v1.PayloadsR\DC4lastHeartbeatDetails"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        lastHeartbeatDetails__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_heartbeat_details"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payloads)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastHeartbeatDetails")) ::
              Data.ProtoLens.FieldDescriptor ResetWorkflowFailureInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, lastHeartbeatDetails__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResetWorkflowFailureInfo'_unknownFields
        (\ x__ y__ -> x__ {_ResetWorkflowFailureInfo'_unknownFields = y__})
  defMessage
    = ResetWorkflowFailureInfo'_constructor
        {_ResetWorkflowFailureInfo'lastHeartbeatDetails = Prelude.Nothing,
         _ResetWorkflowFailureInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResetWorkflowFailureInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser ResetWorkflowFailureInfo
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
                                       "last_heartbeat_details"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastHeartbeatDetails") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ResetWorkflowFailureInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'lastHeartbeatDetails") _x
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
instance Control.DeepSeq.NFData ResetWorkflowFailureInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResetWorkflowFailureInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResetWorkflowFailureInfo'lastHeartbeatDetails x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.nonRetryable' @:: Lens' ServerFailureInfo Prelude.Bool@ -}
data ServerFailureInfo
  = ServerFailureInfo'_constructor {_ServerFailureInfo'nonRetryable :: !Prelude.Bool,
                                    _ServerFailureInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ServerFailureInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ServerFailureInfo "nonRetryable" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServerFailureInfo'nonRetryable
           (\ x__ y__ -> x__ {_ServerFailureInfo'nonRetryable = y__}))
        Prelude.id
instance Data.ProtoLens.Message ServerFailureInfo where
  messageName _
    = Data.Text.pack "temporal.api.failure.v1.ServerFailureInfo"
  packedMessageDescriptor _
    = "\n\
      \\DC1ServerFailureInfo\DC2#\n\
      \\rnon_retryable\CAN\SOH \SOH(\bR\fnonRetryable"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nonRetryable__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "non_retryable"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"nonRetryable")) ::
              Data.ProtoLens.FieldDescriptor ServerFailureInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nonRetryable__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ServerFailureInfo'_unknownFields
        (\ x__ y__ -> x__ {_ServerFailureInfo'_unknownFields = y__})
  defMessage
    = ServerFailureInfo'_constructor
        {_ServerFailureInfo'nonRetryable = Data.ProtoLens.fieldDefault,
         _ServerFailureInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ServerFailureInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser ServerFailureInfo
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
                                       "non_retryable"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"nonRetryable") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ServerFailureInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"nonRetryable") _x
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
instance Control.DeepSeq.NFData ServerFailureInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ServerFailureInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ServerFailureInfo'nonRetryable x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.identity' @:: Lens' TerminatedFailureInfo Data.Text.Text@ -}
data TerminatedFailureInfo
  = TerminatedFailureInfo'_constructor {_TerminatedFailureInfo'identity :: !Data.Text.Text,
                                        _TerminatedFailureInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TerminatedFailureInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TerminatedFailureInfo "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TerminatedFailureInfo'identity
           (\ x__ y__ -> x__ {_TerminatedFailureInfo'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Message TerminatedFailureInfo where
  messageName _
    = Data.Text.pack "temporal.api.failure.v1.TerminatedFailureInfo"
  packedMessageDescriptor _
    = "\n\
      \\NAKTerminatedFailureInfo\DC2\SUB\n\
      \\bidentity\CAN\SOH \SOH(\tR\bidentity"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        identity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "identity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"identity")) ::
              Data.ProtoLens.FieldDescriptor TerminatedFailureInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, identity__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TerminatedFailureInfo'_unknownFields
        (\ x__ y__ -> x__ {_TerminatedFailureInfo'_unknownFields = y__})
  defMessage
    = TerminatedFailureInfo'_constructor
        {_TerminatedFailureInfo'identity = Data.ProtoLens.fieldDefault,
         _TerminatedFailureInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TerminatedFailureInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser TerminatedFailureInfo
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
                                       "identity"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"identity") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TerminatedFailureInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"identity") _x
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
instance Control.DeepSeq.NFData TerminatedFailureInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TerminatedFailureInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq (_TerminatedFailureInfo'identity x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.timeoutType' @:: Lens' TimeoutFailureInfo Proto.Temporal.Api.Enums.V1.Workflow.TimeoutType@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.lastHeartbeatDetails' @:: Lens' TimeoutFailureInfo Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Api.Failure.V1.Message_Fields.maybe'lastHeartbeatDetails' @:: Lens' TimeoutFailureInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@ -}
data TimeoutFailureInfo
  = TimeoutFailureInfo'_constructor {_TimeoutFailureInfo'timeoutType :: !Proto.Temporal.Api.Enums.V1.Workflow.TimeoutType,
                                     _TimeoutFailureInfo'lastHeartbeatDetails :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads),
                                     _TimeoutFailureInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TimeoutFailureInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TimeoutFailureInfo "timeoutType" Proto.Temporal.Api.Enums.V1.Workflow.TimeoutType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeoutFailureInfo'timeoutType
           (\ x__ y__ -> x__ {_TimeoutFailureInfo'timeoutType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimeoutFailureInfo "lastHeartbeatDetails" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeoutFailureInfo'lastHeartbeatDetails
           (\ x__ y__
              -> x__ {_TimeoutFailureInfo'lastHeartbeatDetails = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TimeoutFailureInfo "maybe'lastHeartbeatDetails" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimeoutFailureInfo'lastHeartbeatDetails
           (\ x__ y__
              -> x__ {_TimeoutFailureInfo'lastHeartbeatDetails = y__}))
        Prelude.id
instance Data.ProtoLens.Message TimeoutFailureInfo where
  messageName _
    = Data.Text.pack "temporal.api.failure.v1.TimeoutFailureInfo"
  packedMessageDescriptor _
    = "\n\
      \\DC2TimeoutFailureInfo\DC2E\n\
      \\ftimeout_type\CAN\SOH \SOH(\SO2\".temporal.api.enums.v1.TimeoutTypeR\vtimeoutType\DC2V\n\
      \\SYNlast_heartbeat_details\CAN\STX \SOH(\v2 .temporal.api.common.v1.PayloadsR\DC4lastHeartbeatDetails"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        timeoutType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timeout_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Workflow.TimeoutType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"timeoutType")) ::
              Data.ProtoLens.FieldDescriptor TimeoutFailureInfo
        lastHeartbeatDetails__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_heartbeat_details"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payloads)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastHeartbeatDetails")) ::
              Data.ProtoLens.FieldDescriptor TimeoutFailureInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, timeoutType__field_descriptor),
           (Data.ProtoLens.Tag 2, lastHeartbeatDetails__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TimeoutFailureInfo'_unknownFields
        (\ x__ y__ -> x__ {_TimeoutFailureInfo'_unknownFields = y__})
  defMessage
    = TimeoutFailureInfo'_constructor
        {_TimeoutFailureInfo'timeoutType = Data.ProtoLens.fieldDefault,
         _TimeoutFailureInfo'lastHeartbeatDetails = Prelude.Nothing,
         _TimeoutFailureInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TimeoutFailureInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser TimeoutFailureInfo
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
                                       "timeout_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timeoutType") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_heartbeat_details"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastHeartbeatDetails") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TimeoutFailureInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"timeoutType") _x
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
                       (Data.ProtoLens.Field.field @"maybe'lastHeartbeatDetails") _x
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
instance Control.DeepSeq.NFData TimeoutFailureInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TimeoutFailureInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TimeoutFailureInfo'timeoutType x__)
                (Control.DeepSeq.deepseq
                   (_TimeoutFailureInfo'lastHeartbeatDetails x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \%temporal/api/failure/v1/message.proto\DC2\ETBtemporal.api.failure.v1\SUB$temporal/api/common/v1/message.proto\SUB$temporal/api/enums/v1/workflow.proto\SUB!temporal/api/enums/v1/nexus.proto\SUB\"temporal/api/enums/v1/common.proto\SUB\RSgoogle/protobuf/duration.proto\"\159\STX\n\
    \\SYNApplicationFailureInfo\DC2\DC2\n\
    \\EOTtype\CAN\SOH \SOH(\tR\EOTtype\DC2#\n\
    \\rnon_retryable\CAN\STX \SOH(\bR\fnonRetryable\DC2:\n\
    \\adetails\CAN\ETX \SOH(\v2 .temporal.api.common.v1.PayloadsR\adetails\DC2C\n\
    \\DLEnext_retry_delay\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\SOnextRetryDelay\DC2K\n\
    \\bcategory\CAN\ENQ \SOH(\SO2/.temporal.api.enums.v1.ApplicationErrorCategoryR\bcategory\"\179\SOH\n\
    \\DC2TimeoutFailureInfo\DC2E\n\
    \\ftimeout_type\CAN\SOH \SOH(\SO2\".temporal.api.enums.v1.TimeoutTypeR\vtimeoutType\DC2V\n\
    \\SYNlast_heartbeat_details\CAN\STX \SOH(\v2 .temporal.api.common.v1.PayloadsR\DC4lastHeartbeatDetails\"m\n\
    \\DC3CanceledFailureInfo\DC2:\n\
    \\adetails\CAN\SOH \SOH(\v2 .temporal.api.common.v1.PayloadsR\adetails\DC2\SUB\n\
    \\bidentity\CAN\STX \SOH(\tR\bidentity\"3\n\
    \\NAKTerminatedFailureInfo\DC2\SUB\n\
    \\bidentity\CAN\SOH \SOH(\tR\bidentity\"8\n\
    \\DC1ServerFailureInfo\DC2#\n\
    \\rnon_retryable\CAN\SOH \SOH(\bR\fnonRetryable\"r\n\
    \\CANResetWorkflowFailureInfo\DC2V\n\
    \\SYNlast_heartbeat_details\CAN\SOH \SOH(\v2 .temporal.api.common.v1.PayloadsR\DC4lastHeartbeatDetails\"\185\STX\n\
    \\DC3ActivityFailureInfo\DC2,\n\
    \\DC2scheduled_event_id\CAN\SOH \SOH(\ETXR\DLEscheduledEventId\DC2(\n\
    \\DLEstarted_event_id\CAN\STX \SOH(\ETXR\SOstartedEventId\DC2\SUB\n\
    \\bidentity\CAN\ETX \SOH(\tR\bidentity\DC2I\n\
    \\ractivity_type\CAN\EOT \SOH(\v2$.temporal.api.common.v1.ActivityTypeR\factivityType\DC2\US\n\
    \\vactivity_id\CAN\ENQ \SOH(\tR\n\
    \activityId\DC2B\n\
    \\vretry_state\CAN\ACK \SOH(\SO2!.temporal.api.enums.v1.RetryStateR\n\
    \retryState\"\130\ETX\n\
    \!ChildWorkflowExecutionFailureInfo\DC2\FS\n\
    \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2X\n\
    \\DC2workflow_execution\CAN\STX \SOH(\v2).temporal.api.common.v1.WorkflowExecutionR\DC1workflowExecution\DC2I\n\
    \\rworkflow_type\CAN\ETX \SOH(\v2$.temporal.api.common.v1.WorkflowTypeR\fworkflowType\DC2,\n\
    \\DC2initiated_event_id\CAN\EOT \SOH(\ETXR\DLEinitiatedEventId\DC2(\n\
    \\DLEstarted_event_id\CAN\ENQ \SOH(\ETXR\SOstartedEventId\DC2B\n\
    \\vretry_state\CAN\ACK \SOH(\SO2!.temporal.api.enums.v1.RetryStateR\n\
    \retryState\"\237\SOH\n\
    \\EMNexusOperationFailureInfo\DC2,\n\
    \\DC2scheduled_event_id\CAN\SOH \SOH(\ETXR\DLEscheduledEventId\DC2\SUB\n\
    \\bendpoint\CAN\STX \SOH(\tR\bendpoint\DC2\CAN\n\
    \\aservice\CAN\ETX \SOH(\tR\aservice\DC2\FS\n\
    \\toperation\CAN\EOT \SOH(\tR\toperation\DC2%\n\
    \\foperation_id\CAN\ENQ \SOH(\tR\voperationIdB\STX\CAN\SOH\DC2'\n\
    \\SIoperation_token\CAN\ACK \SOH(\tR\SOoperationToken\"\139\SOH\n\
    \\ETBNexusHandlerFailureInfo\DC2\DC2\n\
    \\EOTtype\CAN\SOH \SOH(\tR\EOTtype\DC2\\\n\
    \\SOretry_behavior\CAN\STX \SOH(\SO25.temporal.api.enums.v1.NexusHandlerErrorRetryBehaviorR\rretryBehavior\"\211\n\
    \\n\
    \\aFailure\DC2\CAN\n\
    \\amessage\CAN\SOH \SOH(\tR\amessage\DC2\SYN\n\
    \\ACKsource\CAN\STX \SOH(\tR\ACKsource\DC2\US\n\
    \\vstack_trace\CAN\ETX \SOH(\tR\n\
    \stackTrace\DC2N\n\
    \\DC2encoded_attributes\CAN\DC4 \SOH(\v2\US.temporal.api.common.v1.PayloadR\DC1encodedAttributes\DC26\n\
    \\ENQcause\CAN\EOT \SOH(\v2 .temporal.api.failure.v1.FailureR\ENQcause\DC2k\n\
    \\CANapplication_failure_info\CAN\ENQ \SOH(\v2/.temporal.api.failure.v1.ApplicationFailureInfoH\NULR\SYNapplicationFailureInfo\DC2_\n\
    \\DC4timeout_failure_info\CAN\ACK \SOH(\v2+.temporal.api.failure.v1.TimeoutFailureInfoH\NULR\DC2timeoutFailureInfo\DC2b\n\
    \\NAKcanceled_failure_info\CAN\a \SOH(\v2,.temporal.api.failure.v1.CanceledFailureInfoH\NULR\DC3canceledFailureInfo\DC2h\n\
    \\ETBterminated_failure_info\CAN\b \SOH(\v2..temporal.api.failure.v1.TerminatedFailureInfoH\NULR\NAKterminatedFailureInfo\DC2\\\n\
    \\DC3server_failure_info\CAN\t \SOH(\v2*.temporal.api.failure.v1.ServerFailureInfoH\NULR\DC1serverFailureInfo\DC2r\n\
    \\ESCreset_workflow_failure_info\CAN\n\
    \ \SOH(\v21.temporal.api.failure.v1.ResetWorkflowFailureInfoH\NULR\CANresetWorkflowFailureInfo\DC2b\n\
    \\NAKactivity_failure_info\CAN\v \SOH(\v2,.temporal.api.failure.v1.ActivityFailureInfoH\NULR\DC3activityFailureInfo\DC2\142\SOH\n\
    \%child_workflow_execution_failure_info\CAN\f \SOH(\v2:.temporal.api.failure.v1.ChildWorkflowExecutionFailureInfoH\NULR!childWorkflowExecutionFailureInfo\DC2\136\SOH\n\
    \&nexus_operation_execution_failure_info\CAN\r \SOH(\v22.temporal.api.failure.v1.NexusOperationFailureInfoH\NULR\"nexusOperationExecutionFailureInfo\DC2o\n\
    \\SUBnexus_handler_failure_info\CAN\SO \SOH(\v20.temporal.api.failure.v1.NexusHandlerFailureInfoH\NULR\ETBnexusHandlerFailureInfoB\SO\n\
    \\ffailure_info\" \n\
    \\RSMultiOperationExecutionAbortedB\142\SOH\n\
    \\SUBio.temporal.api.failure.v1B\fMessageProtoP\SOHZ%go.temporal.io/api/failure/v1;failure\170\STX\EMTemporalio.Api.Failure.V1\234\STX\FSTemporalio::Api::Failure::V1J\190)\n\
    \\a\DC2\ENQ\NUL\NUL\135\SOH)\n\
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
    \\SOH\b\DC2\ETX\a\NUL-\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\a\NUL-\n\
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
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\f\NUL.\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\r\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\SO\NUL,\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\DLE\NUL(\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL\FS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC3\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DC3\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC3\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC3\DC2\DC3\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC4\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\DC4\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC4\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC4\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\NAK\EOT0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\NAK\EOT#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\NAK$+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\NAK./\n\
    \\243\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\SUB\EOT2\SUB\229\SOH next_retry_delay can be used by the client to override the activity\n\
    \ retry interval calculated by the retry policy. Retry attempts will\n\
    \ still be subject to the maximum retries limit and total time limit\n\
    \ defined by the policy.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX\SUB\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\SUB\GS-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\SUB01\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\ESC\EOT@\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\ESC\EOT2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\ESC3;\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\ESC>?\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\RS\NUL!\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\RS\b\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\US\EOT7\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\US\EOT%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\US&2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\US56\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX \EOT?\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX \EOT#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX $:\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX =>\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT#\NUL'\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX#\b\ESC\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX$\EOT0\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX$\EOT#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX$$+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX$./\n\
    \T\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX&\EOT\CAN\SUBG The identity of the worker or client that requested the cancellation.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX&\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX&\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX&\SYN\ETB\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT)\NUL,\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX)\b\GS\n\
    \S\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX+\EOT\CAN\SUBF The identity of the worker or client that requested the termination.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX+\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX+\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX+\SYN\ETB\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT.\NUL0\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX.\b\EM\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX/\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX/\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX/\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX/\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT2\NUL4\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX2\b \n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX3\EOT?\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETX3\EOT#\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX3$:\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX3=>\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOT6\NUL=\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX6\b\ESC\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX7\EOT!\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX7\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX7\n\
    \\FS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX7\US \n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETX8\EOT\US\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETX8\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETX8\n\
    \\SUB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETX8\GS\RS\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETX9\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETX9\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETX9\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETX9\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\ETX:\EOT:\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ACK\DC2\ETX:\EOT'\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\ETX:(5\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\ETX:89\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\EOT\DC2\ETX;\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ENQ\DC2\ETX;\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\SOH\DC2\ETX;\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ETX\DC2\ETX;\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\ENQ\DC2\ETX<\EOT5\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\ACK\DC2\ETX<\EOT$\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\SOH\DC2\ETX<%0\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\ETX\DC2\ETX<34\n\
    \\n\
    \\n\
    \\STX\EOT\a\DC2\EOT?\NULF\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX?\b)\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX@\EOT\EM\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETX@\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX@\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX@\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETXA\EOTD\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\ETXA\EOT,\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETXA-?\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETXABC\n\
    \\v\n\
    \\EOT\EOT\a\STX\STX\DC2\ETXB\EOT:\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ACK\DC2\ETXB\EOT'\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\ETXB(5\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\ETXB89\n\
    \\v\n\
    \\EOT\EOT\a\STX\ETX\DC2\ETXC\EOT!\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ENQ\DC2\ETXC\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\ETXC\n\
    \\FS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\ETXC\US \n\
    \\v\n\
    \\EOT\EOT\a\STX\EOT\DC2\ETXD\EOT\US\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\ENQ\DC2\ETXD\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\SOH\DC2\ETXD\n\
    \\SUB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\ETX\DC2\ETXD\GS\RS\n\
    \\v\n\
    \\EOT\EOT\a\STX\ENQ\DC2\ETXE\EOT5\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ENQ\ACK\DC2\ETXE\EOT$\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ENQ\SOH\DC2\ETXE%0\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ENQ\ETX\DC2\ETXE34\n\
    \q\n\
    \\STX\EOT\b\DC2\EOTI\NULX\SOH\SUBe Representation of the Temporal SDK NexusOperationError object that is returned to workflow callers.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXI\b!\n\
    \4\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETXK\EOT!\SUB' The NexusOperationScheduled event ID.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETXK\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETXK\n\
    \\FS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETXK\US \n\
    \\GS\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETXM\EOT\CAN\SUB\DLE Endpoint name.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\ETXM\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETXM\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETXM\SYN\ETB\n\
    \\FS\n\
    \\EOT\EOT\b\STX\STX\DC2\ETXO\EOT\ETB\SUB\SI Service name.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\ETXO\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\ETXO\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\ETXO\NAK\SYN\n\
    \\RS\n\
    \\EOT\EOT\b\STX\ETX\DC2\ETXQ\EOT\EM\SUB\DC1 Operation name.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\ENQ\DC2\ETXQ\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\ETXQ\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\ETXQ\ETB\CAN\n\
    \~\n\
    \\EOT\EOT\b\STX\EOT\DC2\ETXU\EOT0\SUBq Operation ID - may be empty if the operation completed synchronously.\n\
    \\n\
    \ Deprecated. Renamed to operation_token.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\ENQ\DC2\ETXU\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\SOH\DC2\ETXU\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\ETX\DC2\ETXU\SUB\ESC\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\b\DC2\ETXU\FS/\n\
    \\r\n\
    \\ACK\EOT\b\STX\EOT\b\ETX\DC2\ETXU\GS.\n\
    \W\n\
    \\EOT\EOT\b\STX\ENQ\DC2\ETXW\EOT\US\SUBJ Operation token - may be empty if the operation completed synchronously.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ENQ\ENQ\DC2\ETXW\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ENQ\SOH\DC2\ETXW\v\SUB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ENQ\ETX\DC2\ETXW\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\t\DC2\EOTZ\NUL`\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETXZ\b\US\n\
    \\138\SOH\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETX]\EOT\DC4\SUB} The Nexus error type as defined in the spec:\n\
    \ https://github.com/nexus-rpc/api/blob/main/SPEC.md#predefined-handler-errors.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\ETX]\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETX]\v\SI\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETX]\DC2\DC3\n\
    \g\n\
    \\EOT\EOT\t\STX\SOH\DC2\ETX_\EOTL\SUBZ Retry behavior, defaults to the retry behavior of the error type as defined in the spec.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\ETX_\EOT8\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\ETX_9G\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\ETX_JK\n\
    \\v\n\
    \\STX\EOT\n\
    \\DC2\ENQb\NUL\133\SOH\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\n\
    \\SOH\DC2\ETXb\b\SI\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\ETXc\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\ETXc\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\ETXc\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\ETXc\NAK\SYN\n\
    \\165\SOH\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\ETXf\EOT\SYN\SUB\151\SOH The source this Failure originated in, e.g. TypeScriptSDK / JavaSDK\n\
    \ In some SDKs this is used to rehydrate the stack trace into an exception object.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\ETXf\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\ETXf\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\ETXf\DC4\NAK\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\ETXg\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ENQ\DC2\ETXg\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\ETXg\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\ETXg\EM\SUB\n\
    \\251\a\n\
    \\EOT\EOT\n\
    \\STX\ETX\DC2\ETXw\EOT;\SUB\237\a Alternative way to supply `message` and `stack_trace` and possibly other attributes, used for encryption of\n\
    \ errors originating in user code which might contain sensitive information.\n\
    \ The `encoded_attributes` Payload could represent any serializable object, e.g. JSON object or a `Failure` proto\n\
    \ message.\n\
    \\n\
    \ SDK authors:\n\
    \ - The SDK should provide a default `encodeFailureAttributes` and `decodeFailureAttributes` implementation that:\n\
    \   - Uses a JSON object to represent `{ message, stack_trace }`.\n\
    \   - Overwrites the original message with \"Encoded failure\" to indicate that more information could be extracted.\n\
    \   - Overwrites the original stack_trace with an empty string.\n\
    \   - The resulting JSON object is converted to Payload using the default PayloadConverter and should be processed\n\
    \     by the user-provided PayloadCodec\n\
    \\n\
    \ - If there's demand, we could allow overriding the default SDK implementation to encode other opaque Failure attributes.\n\
    \ (-- api-linter: core::0203::optional=disabled --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ACK\DC2\ETXw\EOT\"\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\SOH\DC2\ETXw#5\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ETX\DC2\ETXw8:\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\EOT\DC2\ETXx\EOT\SYN\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ACK\DC2\ETXx\EOT\v\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\SOH\DC2\ETXx\f\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ETX\DC2\ETXx\DC4\NAK\n\
    \\r\n\
    \\EOT\EOT\n\
    \\b\NUL\DC2\ENQy\EOT\132\SOH\ENQ\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\b\NUL\SOH\DC2\ETXy\n\
    \\SYN\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\ENQ\DC2\ETXz\b<\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\ACK\DC2\ETXz\b\RS\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\SOH\DC2\ETXz\US7\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\ETX\DC2\ETXz:;\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\ACK\DC2\ETX{\b4\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ACK\ACK\DC2\ETX{\b\SUB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ACK\SOH\DC2\ETX{\ESC/\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ACK\ETX\DC2\ETX{23\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\a\DC2\ETX|\b6\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\a\ACK\DC2\ETX|\b\ESC\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\a\SOH\DC2\ETX|\FS1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\a\ETX\DC2\ETX|45\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\b\DC2\ETX}\b:\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\b\ACK\DC2\ETX}\b\GS\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\b\SOH\DC2\ETX}\RS5\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\b\ETX\DC2\ETX}89\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\t\DC2\ETX~\b2\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\t\ACK\DC2\ETX~\b\EM\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\t\SOH\DC2\ETX~\SUB-\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\t\ETX\DC2\ETX~01\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\n\
    \\DC2\ETX\DEL\bB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\n\
    \\ACK\DC2\ETX\DEL\b \n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\n\
    \\SOH\DC2\ETX\DEL!<\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\n\
    \\ETX\DC2\ETX\DEL?A\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\v\DC2\EOT\128\SOH\b7\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\v\ACK\DC2\EOT\128\SOH\b\ESC\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\v\SOH\DC2\EOT\128\SOH\FS1\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\v\ETX\DC2\EOT\128\SOH46\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\f\DC2\EOT\129\SOH\bU\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\f\ACK\DC2\EOT\129\SOH\b)\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\f\SOH\DC2\EOT\129\SOH*O\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\f\ETX\DC2\EOT\129\SOHRT\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\r\DC2\EOT\130\SOH\bN\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\r\ACK\DC2\EOT\130\SOH\b!\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\r\SOH\DC2\EOT\130\SOH\"H\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\r\ETX\DC2\EOT\130\SOHKM\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\SO\DC2\EOT\131\SOH\b@\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SO\ACK\DC2\EOT\131\SOH\b\US\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SO\SOH\DC2\EOT\131\SOH :\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SO\ETX\DC2\EOT\131\SOH=?\n\
    \\n\
    \\n\
    \\STX\EOT\v\DC2\EOT\135\SOH\NUL)\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\135\SOH\b&b\ACKproto3"