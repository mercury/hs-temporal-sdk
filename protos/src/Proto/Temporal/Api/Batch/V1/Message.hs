{- This file was auto-generated from temporal/api/batch/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Batch.V1.Message (
        BatchOperationCancelActivities(), BatchOperationCancellation(),
        BatchOperationDeleteActivities(), BatchOperationDeletion(),
        BatchOperationInfo(), BatchOperationReset(),
        BatchOperationResetActivities(),
        BatchOperationResetActivities'Activity(..),
        _BatchOperationResetActivities'Type,
        _BatchOperationResetActivities'MatchAll, BatchOperationSignal(),
        BatchOperationTerminateActivities(), BatchOperationTermination(),
        BatchOperationTriggerWorkflowRule(),
        BatchOperationTriggerWorkflowRule'Rule(..),
        _BatchOperationTriggerWorkflowRule'Id,
        _BatchOperationTriggerWorkflowRule'Spec,
        BatchOperationUnpauseActivities(),
        BatchOperationUnpauseActivities'Activity(..),
        _BatchOperationUnpauseActivities'Type,
        _BatchOperationUnpauseActivities'MatchAll,
        BatchOperationUpdateActivityOptions(),
        BatchOperationUpdateActivityOptions'Activity(..),
        _BatchOperationUpdateActivityOptions'Type,
        _BatchOperationUpdateActivityOptions'MatchAll,
        BatchOperationUpdateWorkflowExecutionOptions()
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
import qualified Proto.Google.Protobuf.FieldMask
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Temporal.Api.Activity.V1.Message
import qualified Proto.Temporal.Api.Common.V1.Message
import qualified Proto.Temporal.Api.Enums.V1.BatchOperation
import qualified Proto.Temporal.Api.Enums.V1.Reset
import qualified Proto.Temporal.Api.Rules.V1.Message
import qualified Proto.Temporal.Api.Workflow.V1.Message
{- | Fields :
     
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.identity' @:: Lens' BatchOperationCancelActivities Data.Text.Text@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.reason' @:: Lens' BatchOperationCancelActivities Data.Text.Text@ -}
data BatchOperationCancelActivities
  = BatchOperationCancelActivities'_constructor {_BatchOperationCancelActivities'identity :: !Data.Text.Text,
                                                 _BatchOperationCancelActivities'reason :: !Data.Text.Text,
                                                 _BatchOperationCancelActivities'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BatchOperationCancelActivities where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BatchOperationCancelActivities "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationCancelActivities'identity
           (\ x__ y__
              -> x__ {_BatchOperationCancelActivities'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationCancelActivities "reason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationCancelActivities'reason
           (\ x__ y__ -> x__ {_BatchOperationCancelActivities'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Message BatchOperationCancelActivities where
  messageName _
    = Data.Text.pack
        "temporal.api.batch.v1.BatchOperationCancelActivities"
  packedMessageDescriptor _
    = "\n\
      \\RSBatchOperationCancelActivities\DC2\SUB\n\
      \\bidentity\CAN\SOH \SOH(\tR\bidentity\DC2\SYN\n\
      \\ACKreason\CAN\STX \SOH(\tR\ACKreason"
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
              Data.ProtoLens.FieldDescriptor BatchOperationCancelActivities
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"reason")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationCancelActivities
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, identity__field_descriptor),
           (Data.ProtoLens.Tag 2, reason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BatchOperationCancelActivities'_unknownFields
        (\ x__ y__
           -> x__ {_BatchOperationCancelActivities'_unknownFields = y__})
  defMessage
    = BatchOperationCancelActivities'_constructor
        {_BatchOperationCancelActivities'identity = Data.ProtoLens.fieldDefault,
         _BatchOperationCancelActivities'reason = Data.ProtoLens.fieldDefault,
         _BatchOperationCancelActivities'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BatchOperationCancelActivities
          -> Data.ProtoLens.Encoding.Bytes.Parser BatchOperationCancelActivities
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
                        18
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
          (do loop Data.ProtoLens.defMessage)
          "BatchOperationCancelActivities"
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
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"reason") _x
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
instance Control.DeepSeq.NFData BatchOperationCancelActivities where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BatchOperationCancelActivities'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BatchOperationCancelActivities'identity x__)
                (Control.DeepSeq.deepseq
                   (_BatchOperationCancelActivities'reason x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.identity' @:: Lens' BatchOperationCancellation Data.Text.Text@ -}
data BatchOperationCancellation
  = BatchOperationCancellation'_constructor {_BatchOperationCancellation'identity :: !Data.Text.Text,
                                             _BatchOperationCancellation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BatchOperationCancellation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BatchOperationCancellation "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationCancellation'identity
           (\ x__ y__ -> x__ {_BatchOperationCancellation'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Message BatchOperationCancellation where
  messageName _
    = Data.Text.pack "temporal.api.batch.v1.BatchOperationCancellation"
  packedMessageDescriptor _
    = "\n\
      \\SUBBatchOperationCancellation\DC2\SUB\n\
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
              Data.ProtoLens.FieldDescriptor BatchOperationCancellation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, identity__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BatchOperationCancellation'_unknownFields
        (\ x__ y__
           -> x__ {_BatchOperationCancellation'_unknownFields = y__})
  defMessage
    = BatchOperationCancellation'_constructor
        {_BatchOperationCancellation'identity = Data.ProtoLens.fieldDefault,
         _BatchOperationCancellation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BatchOperationCancellation
          -> Data.ProtoLens.Encoding.Bytes.Parser BatchOperationCancellation
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
          (do loop Data.ProtoLens.defMessage) "BatchOperationCancellation"
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
instance Control.DeepSeq.NFData BatchOperationCancellation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BatchOperationCancellation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BatchOperationCancellation'identity x__) ())
{- | Fields :
      -}
data BatchOperationDeleteActivities
  = BatchOperationDeleteActivities'_constructor {_BatchOperationDeleteActivities'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BatchOperationDeleteActivities where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message BatchOperationDeleteActivities where
  messageName _
    = Data.Text.pack
        "temporal.api.batch.v1.BatchOperationDeleteActivities"
  packedMessageDescriptor _
    = "\n\
      \\RSBatchOperationDeleteActivities"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BatchOperationDeleteActivities'_unknownFields
        (\ x__ y__
           -> x__ {_BatchOperationDeleteActivities'_unknownFields = y__})
  defMessage
    = BatchOperationDeleteActivities'_constructor
        {_BatchOperationDeleteActivities'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BatchOperationDeleteActivities
          -> Data.ProtoLens.Encoding.Bytes.Parser BatchOperationDeleteActivities
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
          "BatchOperationDeleteActivities"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData BatchOperationDeleteActivities where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BatchOperationDeleteActivities'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.identity' @:: Lens' BatchOperationDeletion Data.Text.Text@ -}
data BatchOperationDeletion
  = BatchOperationDeletion'_constructor {_BatchOperationDeletion'identity :: !Data.Text.Text,
                                         _BatchOperationDeletion'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BatchOperationDeletion where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BatchOperationDeletion "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationDeletion'identity
           (\ x__ y__ -> x__ {_BatchOperationDeletion'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Message BatchOperationDeletion where
  messageName _
    = Data.Text.pack "temporal.api.batch.v1.BatchOperationDeletion"
  packedMessageDescriptor _
    = "\n\
      \\SYNBatchOperationDeletion\DC2\SUB\n\
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
              Data.ProtoLens.FieldDescriptor BatchOperationDeletion
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, identity__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BatchOperationDeletion'_unknownFields
        (\ x__ y__ -> x__ {_BatchOperationDeletion'_unknownFields = y__})
  defMessage
    = BatchOperationDeletion'_constructor
        {_BatchOperationDeletion'identity = Data.ProtoLens.fieldDefault,
         _BatchOperationDeletion'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BatchOperationDeletion
          -> Data.ProtoLens.Encoding.Bytes.Parser BatchOperationDeletion
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
          (do loop Data.ProtoLens.defMessage) "BatchOperationDeletion"
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
instance Control.DeepSeq.NFData BatchOperationDeletion where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BatchOperationDeletion'_unknownFields x__)
             (Control.DeepSeq.deepseq (_BatchOperationDeletion'identity x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.jobId' @:: Lens' BatchOperationInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.state' @:: Lens' BatchOperationInfo Proto.Temporal.Api.Enums.V1.BatchOperation.BatchOperationState@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.startTime' @:: Lens' BatchOperationInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'startTime' @:: Lens' BatchOperationInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.closeTime' @:: Lens' BatchOperationInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'closeTime' @:: Lens' BatchOperationInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.operationType' @:: Lens' BatchOperationInfo Proto.Temporal.Api.Enums.V1.BatchOperation.BatchOperationType@ -}
data BatchOperationInfo
  = BatchOperationInfo'_constructor {_BatchOperationInfo'jobId :: !Data.Text.Text,
                                     _BatchOperationInfo'state :: !Proto.Temporal.Api.Enums.V1.BatchOperation.BatchOperationState,
                                     _BatchOperationInfo'startTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                     _BatchOperationInfo'closeTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                     _BatchOperationInfo'operationType :: !Proto.Temporal.Api.Enums.V1.BatchOperation.BatchOperationType,
                                     _BatchOperationInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BatchOperationInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BatchOperationInfo "jobId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationInfo'jobId
           (\ x__ y__ -> x__ {_BatchOperationInfo'jobId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationInfo "state" Proto.Temporal.Api.Enums.V1.BatchOperation.BatchOperationState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationInfo'state
           (\ x__ y__ -> x__ {_BatchOperationInfo'state = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationInfo "startTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationInfo'startTime
           (\ x__ y__ -> x__ {_BatchOperationInfo'startTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BatchOperationInfo "maybe'startTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationInfo'startTime
           (\ x__ y__ -> x__ {_BatchOperationInfo'startTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationInfo "closeTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationInfo'closeTime
           (\ x__ y__ -> x__ {_BatchOperationInfo'closeTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BatchOperationInfo "maybe'closeTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationInfo'closeTime
           (\ x__ y__ -> x__ {_BatchOperationInfo'closeTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationInfo "operationType" Proto.Temporal.Api.Enums.V1.BatchOperation.BatchOperationType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationInfo'operationType
           (\ x__ y__ -> x__ {_BatchOperationInfo'operationType = y__}))
        Prelude.id
instance Data.ProtoLens.Message BatchOperationInfo where
  messageName _
    = Data.Text.pack "temporal.api.batch.v1.BatchOperationInfo"
  packedMessageDescriptor _
    = "\n\
      \\DC2BatchOperationInfo\DC2\NAK\n\
      \\ACKjob_id\CAN\SOH \SOH(\tR\ENQjobId\DC2@\n\
      \\ENQstate\CAN\STX \SOH(\SO2*.temporal.api.enums.v1.BatchOperationStateR\ENQstate\DC29\n\
      \\n\
      \start_time\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\tstartTime\DC29\n\
      \\n\
      \close_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\tcloseTime\DC2P\n\
      \\SOoperation_type\CAN\ENQ \SOH(\SO2).temporal.api.enums.v1.BatchOperationTypeR\roperationType"
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
              Data.ProtoLens.FieldDescriptor BatchOperationInfo
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.BatchOperation.BatchOperationState)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"state")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationInfo
        startTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startTime")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationInfo
        closeTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "close_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'closeTime")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationInfo
        operationType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.BatchOperation.BatchOperationType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operationType")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, jobId__field_descriptor),
           (Data.ProtoLens.Tag 2, state__field_descriptor),
           (Data.ProtoLens.Tag 3, startTime__field_descriptor),
           (Data.ProtoLens.Tag 4, closeTime__field_descriptor),
           (Data.ProtoLens.Tag 5, operationType__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BatchOperationInfo'_unknownFields
        (\ x__ y__ -> x__ {_BatchOperationInfo'_unknownFields = y__})
  defMessage
    = BatchOperationInfo'_constructor
        {_BatchOperationInfo'jobId = Data.ProtoLens.fieldDefault,
         _BatchOperationInfo'state = Data.ProtoLens.fieldDefault,
         _BatchOperationInfo'startTime = Prelude.Nothing,
         _BatchOperationInfo'closeTime = Prelude.Nothing,
         _BatchOperationInfo'operationType = Data.ProtoLens.fieldDefault,
         _BatchOperationInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BatchOperationInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser BatchOperationInfo
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
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startTime") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "close_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"closeTime") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "operation_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"operationType") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BatchOperationInfo"
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'startTime") _x
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
                             (Data.ProtoLens.Field.field @"maybe'closeTime") _x
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
                                  (Data.ProtoLens.Field.field @"operationType") _x
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
instance Control.DeepSeq.NFData BatchOperationInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BatchOperationInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BatchOperationInfo'jobId x__)
                (Control.DeepSeq.deepseq
                   (_BatchOperationInfo'state x__)
                   (Control.DeepSeq.deepseq
                      (_BatchOperationInfo'startTime x__)
                      (Control.DeepSeq.deepseq
                         (_BatchOperationInfo'closeTime x__)
                         (Control.DeepSeq.deepseq
                            (_BatchOperationInfo'operationType x__) ())))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.identity' @:: Lens' BatchOperationReset Data.Text.Text@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.options' @:: Lens' BatchOperationReset Proto.Temporal.Api.Common.V1.Message.ResetOptions@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'options' @:: Lens' BatchOperationReset (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ResetOptions)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.resetType' @:: Lens' BatchOperationReset Proto.Temporal.Api.Enums.V1.Reset.ResetType@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.resetReapplyType' @:: Lens' BatchOperationReset Proto.Temporal.Api.Enums.V1.Reset.ResetReapplyType@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.postResetOperations' @:: Lens' BatchOperationReset [Proto.Temporal.Api.Workflow.V1.Message.PostResetOperation]@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.vec'postResetOperations' @:: Lens' BatchOperationReset (Data.Vector.Vector Proto.Temporal.Api.Workflow.V1.Message.PostResetOperation)@ -}
data BatchOperationReset
  = BatchOperationReset'_constructor {_BatchOperationReset'identity :: !Data.Text.Text,
                                      _BatchOperationReset'options :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ResetOptions),
                                      _BatchOperationReset'resetType :: !Proto.Temporal.Api.Enums.V1.Reset.ResetType,
                                      _BatchOperationReset'resetReapplyType :: !Proto.Temporal.Api.Enums.V1.Reset.ResetReapplyType,
                                      _BatchOperationReset'postResetOperations :: !(Data.Vector.Vector Proto.Temporal.Api.Workflow.V1.Message.PostResetOperation),
                                      _BatchOperationReset'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BatchOperationReset where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BatchOperationReset "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationReset'identity
           (\ x__ y__ -> x__ {_BatchOperationReset'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationReset "options" Proto.Temporal.Api.Common.V1.Message.ResetOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationReset'options
           (\ x__ y__ -> x__ {_BatchOperationReset'options = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BatchOperationReset "maybe'options" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ResetOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationReset'options
           (\ x__ y__ -> x__ {_BatchOperationReset'options = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationReset "resetType" Proto.Temporal.Api.Enums.V1.Reset.ResetType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationReset'resetType
           (\ x__ y__ -> x__ {_BatchOperationReset'resetType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationReset "resetReapplyType" Proto.Temporal.Api.Enums.V1.Reset.ResetReapplyType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationReset'resetReapplyType
           (\ x__ y__ -> x__ {_BatchOperationReset'resetReapplyType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationReset "postResetOperations" [Proto.Temporal.Api.Workflow.V1.Message.PostResetOperation] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationReset'postResetOperations
           (\ x__ y__
              -> x__ {_BatchOperationReset'postResetOperations = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField BatchOperationReset "vec'postResetOperations" (Data.Vector.Vector Proto.Temporal.Api.Workflow.V1.Message.PostResetOperation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationReset'postResetOperations
           (\ x__ y__
              -> x__ {_BatchOperationReset'postResetOperations = y__}))
        Prelude.id
instance Data.ProtoLens.Message BatchOperationReset where
  messageName _
    = Data.Text.pack "temporal.api.batch.v1.BatchOperationReset"
  packedMessageDescriptor _
    = "\n\
      \\DC3BatchOperationReset\DC2\SUB\n\
      \\bidentity\CAN\ETX \SOH(\tR\bidentity\DC2>\n\
      \\aoptions\CAN\EOT \SOH(\v2$.temporal.api.common.v1.ResetOptionsR\aoptions\DC2C\n\
      \\n\
      \reset_type\CAN\SOH \SOH(\SO2 .temporal.api.enums.v1.ResetTypeR\tresetTypeB\STX\CAN\SOH\DC2Y\n\
      \\DC2reset_reapply_type\CAN\STX \SOH(\SO2'.temporal.api.enums.v1.ResetReapplyTypeR\DLEresetReapplyTypeB\STX\CAN\SOH\DC2`\n\
      \\NAKpost_reset_operations\CAN\ENQ \ETX(\v2,.temporal.api.workflow.v1.PostResetOperationR\DC3postResetOperations"
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
              Data.ProtoLens.FieldDescriptor BatchOperationReset
        options__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.ResetOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'options")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationReset
        resetType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reset_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Reset.ResetType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resetType")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationReset
        resetReapplyType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reset_reapply_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Reset.ResetReapplyType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resetReapplyType")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationReset
        postResetOperations__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "post_reset_operations"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Workflow.V1.Message.PostResetOperation)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"postResetOperations")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationReset
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 3, identity__field_descriptor),
           (Data.ProtoLens.Tag 4, options__field_descriptor),
           (Data.ProtoLens.Tag 1, resetType__field_descriptor),
           (Data.ProtoLens.Tag 2, resetReapplyType__field_descriptor),
           (Data.ProtoLens.Tag 5, postResetOperations__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BatchOperationReset'_unknownFields
        (\ x__ y__ -> x__ {_BatchOperationReset'_unknownFields = y__})
  defMessage
    = BatchOperationReset'_constructor
        {_BatchOperationReset'identity = Data.ProtoLens.fieldDefault,
         _BatchOperationReset'options = Prelude.Nothing,
         _BatchOperationReset'resetType = Data.ProtoLens.fieldDefault,
         _BatchOperationReset'resetReapplyType = Data.ProtoLens.fieldDefault,
         _BatchOperationReset'postResetOperations = Data.Vector.Generic.empty,
         _BatchOperationReset'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BatchOperationReset
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Workflow.V1.Message.PostResetOperation
             -> Data.ProtoLens.Encoding.Bytes.Parser BatchOperationReset
        loop x mutable'postResetOperations
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'postResetOperations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'postResetOperations)
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
                              (Data.ProtoLens.Field.field @"vec'postResetOperations")
                              frozen'postResetOperations x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "identity"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"identity") y x)
                                  mutable'postResetOperations
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "options"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"options") y x)
                                  mutable'postResetOperations
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "reset_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"resetType") y x)
                                  mutable'postResetOperations
                        16
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
                                  mutable'postResetOperations
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "post_reset_operations"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'postResetOperations y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'postResetOperations
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'postResetOperations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'postResetOperations)
          "BatchOperationReset"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'options") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"resetType") _x
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
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"resetReapplyType") _x
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
                                       Data.ProtoLens.encodeMessage _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'postResetOperations") _x))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData BatchOperationReset where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BatchOperationReset'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BatchOperationReset'identity x__)
                (Control.DeepSeq.deepseq
                   (_BatchOperationReset'options x__)
                   (Control.DeepSeq.deepseq
                      (_BatchOperationReset'resetType x__)
                      (Control.DeepSeq.deepseq
                         (_BatchOperationReset'resetReapplyType x__)
                         (Control.DeepSeq.deepseq
                            (_BatchOperationReset'postResetOperations x__) ())))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.identity' @:: Lens' BatchOperationResetActivities Data.Text.Text@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.resetAttempts' @:: Lens' BatchOperationResetActivities Prelude.Bool@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.resetHeartbeat' @:: Lens' BatchOperationResetActivities Prelude.Bool@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.keepPaused' @:: Lens' BatchOperationResetActivities Prelude.Bool@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.jitter' @:: Lens' BatchOperationResetActivities Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'jitter' @:: Lens' BatchOperationResetActivities (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.restoreOriginalOptions' @:: Lens' BatchOperationResetActivities Prelude.Bool@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'activity' @:: Lens' BatchOperationResetActivities (Prelude.Maybe BatchOperationResetActivities'Activity)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'type'' @:: Lens' BatchOperationResetActivities (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.type'' @:: Lens' BatchOperationResetActivities Data.Text.Text@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'matchAll' @:: Lens' BatchOperationResetActivities (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.matchAll' @:: Lens' BatchOperationResetActivities Prelude.Bool@ -}
data BatchOperationResetActivities
  = BatchOperationResetActivities'_constructor {_BatchOperationResetActivities'identity :: !Data.Text.Text,
                                                _BatchOperationResetActivities'resetAttempts :: !Prelude.Bool,
                                                _BatchOperationResetActivities'resetHeartbeat :: !Prelude.Bool,
                                                _BatchOperationResetActivities'keepPaused :: !Prelude.Bool,
                                                _BatchOperationResetActivities'jitter :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                _BatchOperationResetActivities'restoreOriginalOptions :: !Prelude.Bool,
                                                _BatchOperationResetActivities'activity :: !(Prelude.Maybe BatchOperationResetActivities'Activity),
                                                _BatchOperationResetActivities'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BatchOperationResetActivities where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data BatchOperationResetActivities'Activity
  = BatchOperationResetActivities'Type !Data.Text.Text |
    BatchOperationResetActivities'MatchAll !Prelude.Bool
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField BatchOperationResetActivities "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationResetActivities'identity
           (\ x__ y__ -> x__ {_BatchOperationResetActivities'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationResetActivities "resetAttempts" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationResetActivities'resetAttempts
           (\ x__ y__
              -> x__ {_BatchOperationResetActivities'resetAttempts = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationResetActivities "resetHeartbeat" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationResetActivities'resetHeartbeat
           (\ x__ y__
              -> x__ {_BatchOperationResetActivities'resetHeartbeat = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationResetActivities "keepPaused" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationResetActivities'keepPaused
           (\ x__ y__
              -> x__ {_BatchOperationResetActivities'keepPaused = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationResetActivities "jitter" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationResetActivities'jitter
           (\ x__ y__ -> x__ {_BatchOperationResetActivities'jitter = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BatchOperationResetActivities "maybe'jitter" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationResetActivities'jitter
           (\ x__ y__ -> x__ {_BatchOperationResetActivities'jitter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationResetActivities "restoreOriginalOptions" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationResetActivities'restoreOriginalOptions
           (\ x__ y__
              -> x__
                   {_BatchOperationResetActivities'restoreOriginalOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationResetActivities "maybe'activity" (Prelude.Maybe BatchOperationResetActivities'Activity) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationResetActivities'activity
           (\ x__ y__ -> x__ {_BatchOperationResetActivities'activity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationResetActivities "maybe'type'" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationResetActivities'activity
           (\ x__ y__ -> x__ {_BatchOperationResetActivities'activity = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (BatchOperationResetActivities'Type x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap BatchOperationResetActivities'Type y__))
instance Data.ProtoLens.Field.HasField BatchOperationResetActivities "type'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationResetActivities'activity
           (\ x__ y__ -> x__ {_BatchOperationResetActivities'activity = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (BatchOperationResetActivities'Type x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap BatchOperationResetActivities'Type y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField BatchOperationResetActivities "maybe'matchAll" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationResetActivities'activity
           (\ x__ y__ -> x__ {_BatchOperationResetActivities'activity = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (BatchOperationResetActivities'MatchAll x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap BatchOperationResetActivities'MatchAll y__))
instance Data.ProtoLens.Field.HasField BatchOperationResetActivities "matchAll" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationResetActivities'activity
           (\ x__ y__ -> x__ {_BatchOperationResetActivities'activity = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (BatchOperationResetActivities'MatchAll x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap BatchOperationResetActivities'MatchAll y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message BatchOperationResetActivities where
  messageName _
    = Data.Text.pack
        "temporal.api.batch.v1.BatchOperationResetActivities"
  packedMessageDescriptor _
    = "\n\
      \\GSBatchOperationResetActivities\DC2\SUB\n\
      \\bidentity\CAN\SOH \SOH(\tR\bidentity\DC2\DC4\n\
      \\EOTtype\CAN\STX \SOH(\tH\NULR\EOTtype\DC2\GS\n\
      \\tmatch_all\CAN\ETX \SOH(\bH\NULR\bmatchAll\DC2%\n\
      \\SOreset_attempts\CAN\EOT \SOH(\bR\rresetAttempts\DC2'\n\
      \\SIreset_heartbeat\CAN\ENQ \SOH(\bR\SOresetHeartbeat\DC2\US\n\
      \\vkeep_paused\CAN\ACK \SOH(\bR\n\
      \keepPaused\DC21\n\
      \\ACKjitter\CAN\a \SOH(\v2\EM.google.protobuf.DurationR\ACKjitter\DC28\n\
      \\CANrestore_original_options\CAN\b \SOH(\bR\SYNrestoreOriginalOptionsB\n\
      \\n\
      \\bactivity"
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
              Data.ProtoLens.FieldDescriptor BatchOperationResetActivities
        resetAttempts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reset_attempts"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resetAttempts")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationResetActivities
        resetHeartbeat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reset_heartbeat"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resetHeartbeat")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationResetActivities
        keepPaused__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "keep_paused"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"keepPaused")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationResetActivities
        jitter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "jitter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'jitter")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationResetActivities
        restoreOriginalOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "restore_original_options"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"restoreOriginalOptions")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationResetActivities
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationResetActivities
        matchAll__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match_all"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'matchAll")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationResetActivities
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, identity__field_descriptor),
           (Data.ProtoLens.Tag 4, resetAttempts__field_descriptor),
           (Data.ProtoLens.Tag 5, resetHeartbeat__field_descriptor),
           (Data.ProtoLens.Tag 6, keepPaused__field_descriptor),
           (Data.ProtoLens.Tag 7, jitter__field_descriptor),
           (Data.ProtoLens.Tag 8, restoreOriginalOptions__field_descriptor),
           (Data.ProtoLens.Tag 2, type'__field_descriptor),
           (Data.ProtoLens.Tag 3, matchAll__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BatchOperationResetActivities'_unknownFields
        (\ x__ y__
           -> x__ {_BatchOperationResetActivities'_unknownFields = y__})
  defMessage
    = BatchOperationResetActivities'_constructor
        {_BatchOperationResetActivities'identity = Data.ProtoLens.fieldDefault,
         _BatchOperationResetActivities'resetAttempts = Data.ProtoLens.fieldDefault,
         _BatchOperationResetActivities'resetHeartbeat = Data.ProtoLens.fieldDefault,
         _BatchOperationResetActivities'keepPaused = Data.ProtoLens.fieldDefault,
         _BatchOperationResetActivities'jitter = Prelude.Nothing,
         _BatchOperationResetActivities'restoreOriginalOptions = Data.ProtoLens.fieldDefault,
         _BatchOperationResetActivities'activity = Prelude.Nothing,
         _BatchOperationResetActivities'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BatchOperationResetActivities
          -> Data.ProtoLens.Encoding.Bytes.Parser BatchOperationResetActivities
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
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "reset_attempts"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"resetAttempts") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "reset_heartbeat"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"resetHeartbeat") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "keep_paused"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"keepPaused") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "jitter"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"jitter") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "restore_original_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"restoreOriginalOptions") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "match_all"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"matchAll") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BatchOperationResetActivities"
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
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"resetAttempts") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"resetHeartbeat") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                               _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"keepPaused") _x
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
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'jitter") _x
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
                                     (Data.ProtoLens.Field.field @"restoreOriginalOptions") _x
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
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'activity") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just (BatchOperationResetActivities'Type v))
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.Text.Encoding.encodeUtf8 v)
                                  (Prelude.Just (BatchOperationResetActivities'MatchAll v))
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                                         ((Prelude..)
                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (\ b -> if b then 1 else 0) v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData BatchOperationResetActivities where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BatchOperationResetActivities'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BatchOperationResetActivities'identity x__)
                (Control.DeepSeq.deepseq
                   (_BatchOperationResetActivities'resetAttempts x__)
                   (Control.DeepSeq.deepseq
                      (_BatchOperationResetActivities'resetHeartbeat x__)
                      (Control.DeepSeq.deepseq
                         (_BatchOperationResetActivities'keepPaused x__)
                         (Control.DeepSeq.deepseq
                            (_BatchOperationResetActivities'jitter x__)
                            (Control.DeepSeq.deepseq
                               (_BatchOperationResetActivities'restoreOriginalOptions x__)
                               (Control.DeepSeq.deepseq
                                  (_BatchOperationResetActivities'activity x__) ())))))))
instance Control.DeepSeq.NFData BatchOperationResetActivities'Activity where
  rnf (BatchOperationResetActivities'Type x__)
    = Control.DeepSeq.rnf x__
  rnf (BatchOperationResetActivities'MatchAll x__)
    = Control.DeepSeq.rnf x__
_BatchOperationResetActivities'Type ::
  Data.ProtoLens.Prism.Prism' BatchOperationResetActivities'Activity Data.Text.Text
_BatchOperationResetActivities'Type
  = Data.ProtoLens.Prism.prism'
      BatchOperationResetActivities'Type
      (\ p__
         -> case p__ of
              (BatchOperationResetActivities'Type p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_BatchOperationResetActivities'MatchAll ::
  Data.ProtoLens.Prism.Prism' BatchOperationResetActivities'Activity Prelude.Bool
_BatchOperationResetActivities'MatchAll
  = Data.ProtoLens.Prism.prism'
      BatchOperationResetActivities'MatchAll
      (\ p__
         -> case p__ of
              (BatchOperationResetActivities'MatchAll p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.signal' @:: Lens' BatchOperationSignal Data.Text.Text@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.input' @:: Lens' BatchOperationSignal Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'input' @:: Lens' BatchOperationSignal (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.header' @:: Lens' BatchOperationSignal Proto.Temporal.Api.Common.V1.Message.Header@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'header' @:: Lens' BatchOperationSignal (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.identity' @:: Lens' BatchOperationSignal Data.Text.Text@ -}
data BatchOperationSignal
  = BatchOperationSignal'_constructor {_BatchOperationSignal'signal :: !Data.Text.Text,
                                       _BatchOperationSignal'input :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads),
                                       _BatchOperationSignal'header :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header),
                                       _BatchOperationSignal'identity :: !Data.Text.Text,
                                       _BatchOperationSignal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BatchOperationSignal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BatchOperationSignal "signal" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationSignal'signal
           (\ x__ y__ -> x__ {_BatchOperationSignal'signal = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationSignal "input" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationSignal'input
           (\ x__ y__ -> x__ {_BatchOperationSignal'input = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BatchOperationSignal "maybe'input" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationSignal'input
           (\ x__ y__ -> x__ {_BatchOperationSignal'input = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationSignal "header" Proto.Temporal.Api.Common.V1.Message.Header where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationSignal'header
           (\ x__ y__ -> x__ {_BatchOperationSignal'header = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BatchOperationSignal "maybe'header" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationSignal'header
           (\ x__ y__ -> x__ {_BatchOperationSignal'header = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationSignal "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationSignal'identity
           (\ x__ y__ -> x__ {_BatchOperationSignal'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Message BatchOperationSignal where
  messageName _
    = Data.Text.pack "temporal.api.batch.v1.BatchOperationSignal"
  packedMessageDescriptor _
    = "\n\
      \\DC4BatchOperationSignal\DC2\SYN\n\
      \\ACKsignal\CAN\SOH \SOH(\tR\ACKsignal\DC26\n\
      \\ENQinput\CAN\STX \SOH(\v2 .temporal.api.common.v1.PayloadsR\ENQinput\DC26\n\
      \\ACKheader\CAN\ETX \SOH(\v2\RS.temporal.api.common.v1.HeaderR\ACKheader\DC2\SUB\n\
      \\bidentity\CAN\EOT \SOH(\tR\bidentity"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        signal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signal"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"signal")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationSignal
        input__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "input"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payloads)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'input")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationSignal
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Header)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'header")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationSignal
        identity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "identity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"identity")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationSignal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, signal__field_descriptor),
           (Data.ProtoLens.Tag 2, input__field_descriptor),
           (Data.ProtoLens.Tag 3, header__field_descriptor),
           (Data.ProtoLens.Tag 4, identity__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BatchOperationSignal'_unknownFields
        (\ x__ y__ -> x__ {_BatchOperationSignal'_unknownFields = y__})
  defMessage
    = BatchOperationSignal'_constructor
        {_BatchOperationSignal'signal = Data.ProtoLens.fieldDefault,
         _BatchOperationSignal'input = Prelude.Nothing,
         _BatchOperationSignal'header = Prelude.Nothing,
         _BatchOperationSignal'identity = Data.ProtoLens.fieldDefault,
         _BatchOperationSignal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BatchOperationSignal
          -> Data.ProtoLens.Encoding.Bytes.Parser BatchOperationSignal
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
                                       "signal"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"signal") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "input"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"input") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "header"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"header") y x)
                        34
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
          (do loop Data.ProtoLens.defMessage) "BatchOperationSignal"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"signal") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'input") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'header") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"identity") _x
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
instance Control.DeepSeq.NFData BatchOperationSignal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BatchOperationSignal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BatchOperationSignal'signal x__)
                (Control.DeepSeq.deepseq
                   (_BatchOperationSignal'input x__)
                   (Control.DeepSeq.deepseq
                      (_BatchOperationSignal'header x__)
                      (Control.DeepSeq.deepseq
                         (_BatchOperationSignal'identity x__) ()))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.identity' @:: Lens' BatchOperationTerminateActivities Data.Text.Text@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.reason' @:: Lens' BatchOperationTerminateActivities Data.Text.Text@ -}
data BatchOperationTerminateActivities
  = BatchOperationTerminateActivities'_constructor {_BatchOperationTerminateActivities'identity :: !Data.Text.Text,
                                                    _BatchOperationTerminateActivities'reason :: !Data.Text.Text,
                                                    _BatchOperationTerminateActivities'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BatchOperationTerminateActivities where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BatchOperationTerminateActivities "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationTerminateActivities'identity
           (\ x__ y__
              -> x__ {_BatchOperationTerminateActivities'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationTerminateActivities "reason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationTerminateActivities'reason
           (\ x__ y__
              -> x__ {_BatchOperationTerminateActivities'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Message BatchOperationTerminateActivities where
  messageName _
    = Data.Text.pack
        "temporal.api.batch.v1.BatchOperationTerminateActivities"
  packedMessageDescriptor _
    = "\n\
      \!BatchOperationTerminateActivities\DC2\SUB\n\
      \\bidentity\CAN\SOH \SOH(\tR\bidentity\DC2\SYN\n\
      \\ACKreason\CAN\STX \SOH(\tR\ACKreason"
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
              Data.ProtoLens.FieldDescriptor BatchOperationTerminateActivities
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"reason")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationTerminateActivities
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, identity__field_descriptor),
           (Data.ProtoLens.Tag 2, reason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BatchOperationTerminateActivities'_unknownFields
        (\ x__ y__
           -> x__ {_BatchOperationTerminateActivities'_unknownFields = y__})
  defMessage
    = BatchOperationTerminateActivities'_constructor
        {_BatchOperationTerminateActivities'identity = Data.ProtoLens.fieldDefault,
         _BatchOperationTerminateActivities'reason = Data.ProtoLens.fieldDefault,
         _BatchOperationTerminateActivities'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BatchOperationTerminateActivities
          -> Data.ProtoLens.Encoding.Bytes.Parser BatchOperationTerminateActivities
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
                        18
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
          (do loop Data.ProtoLens.defMessage)
          "BatchOperationTerminateActivities"
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
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"reason") _x
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
instance Control.DeepSeq.NFData BatchOperationTerminateActivities where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BatchOperationTerminateActivities'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BatchOperationTerminateActivities'identity x__)
                (Control.DeepSeq.deepseq
                   (_BatchOperationTerminateActivities'reason x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.details' @:: Lens' BatchOperationTermination Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'details' @:: Lens' BatchOperationTermination (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.identity' @:: Lens' BatchOperationTermination Data.Text.Text@ -}
data BatchOperationTermination
  = BatchOperationTermination'_constructor {_BatchOperationTermination'details :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads),
                                            _BatchOperationTermination'identity :: !Data.Text.Text,
                                            _BatchOperationTermination'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BatchOperationTermination where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BatchOperationTermination "details" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationTermination'details
           (\ x__ y__ -> x__ {_BatchOperationTermination'details = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BatchOperationTermination "maybe'details" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationTermination'details
           (\ x__ y__ -> x__ {_BatchOperationTermination'details = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationTermination "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationTermination'identity
           (\ x__ y__ -> x__ {_BatchOperationTermination'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Message BatchOperationTermination where
  messageName _
    = Data.Text.pack "temporal.api.batch.v1.BatchOperationTermination"
  packedMessageDescriptor _
    = "\n\
      \\EMBatchOperationTermination\DC2:\n\
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
              Data.ProtoLens.FieldDescriptor BatchOperationTermination
        identity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "identity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"identity")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationTermination
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, details__field_descriptor),
           (Data.ProtoLens.Tag 2, identity__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BatchOperationTermination'_unknownFields
        (\ x__ y__
           -> x__ {_BatchOperationTermination'_unknownFields = y__})
  defMessage
    = BatchOperationTermination'_constructor
        {_BatchOperationTermination'details = Prelude.Nothing,
         _BatchOperationTermination'identity = Data.ProtoLens.fieldDefault,
         _BatchOperationTermination'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BatchOperationTermination
          -> Data.ProtoLens.Encoding.Bytes.Parser BatchOperationTermination
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
          (do loop Data.ProtoLens.defMessage) "BatchOperationTermination"
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
instance Control.DeepSeq.NFData BatchOperationTermination where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BatchOperationTermination'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BatchOperationTermination'details x__)
                (Control.DeepSeq.deepseq
                   (_BatchOperationTermination'identity x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.identity' @:: Lens' BatchOperationTriggerWorkflowRule Data.Text.Text@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'rule' @:: Lens' BatchOperationTriggerWorkflowRule (Prelude.Maybe BatchOperationTriggerWorkflowRule'Rule)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'id' @:: Lens' BatchOperationTriggerWorkflowRule (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.id' @:: Lens' BatchOperationTriggerWorkflowRule Data.Text.Text@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'spec' @:: Lens' BatchOperationTriggerWorkflowRule (Prelude.Maybe Proto.Temporal.Api.Rules.V1.Message.WorkflowRuleSpec)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.spec' @:: Lens' BatchOperationTriggerWorkflowRule Proto.Temporal.Api.Rules.V1.Message.WorkflowRuleSpec@ -}
data BatchOperationTriggerWorkflowRule
  = BatchOperationTriggerWorkflowRule'_constructor {_BatchOperationTriggerWorkflowRule'identity :: !Data.Text.Text,
                                                    _BatchOperationTriggerWorkflowRule'rule :: !(Prelude.Maybe BatchOperationTriggerWorkflowRule'Rule),
                                                    _BatchOperationTriggerWorkflowRule'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BatchOperationTriggerWorkflowRule where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data BatchOperationTriggerWorkflowRule'Rule
  = BatchOperationTriggerWorkflowRule'Id !Data.Text.Text |
    BatchOperationTriggerWorkflowRule'Spec !Proto.Temporal.Api.Rules.V1.Message.WorkflowRuleSpec
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField BatchOperationTriggerWorkflowRule "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationTriggerWorkflowRule'identity
           (\ x__ y__
              -> x__ {_BatchOperationTriggerWorkflowRule'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationTriggerWorkflowRule "maybe'rule" (Prelude.Maybe BatchOperationTriggerWorkflowRule'Rule) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationTriggerWorkflowRule'rule
           (\ x__ y__ -> x__ {_BatchOperationTriggerWorkflowRule'rule = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationTriggerWorkflowRule "maybe'id" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationTriggerWorkflowRule'rule
           (\ x__ y__ -> x__ {_BatchOperationTriggerWorkflowRule'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (BatchOperationTriggerWorkflowRule'Id x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap BatchOperationTriggerWorkflowRule'Id y__))
instance Data.ProtoLens.Field.HasField BatchOperationTriggerWorkflowRule "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationTriggerWorkflowRule'rule
           (\ x__ y__ -> x__ {_BatchOperationTriggerWorkflowRule'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (BatchOperationTriggerWorkflowRule'Id x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap BatchOperationTriggerWorkflowRule'Id y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField BatchOperationTriggerWorkflowRule "maybe'spec" (Prelude.Maybe Proto.Temporal.Api.Rules.V1.Message.WorkflowRuleSpec) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationTriggerWorkflowRule'rule
           (\ x__ y__ -> x__ {_BatchOperationTriggerWorkflowRule'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (BatchOperationTriggerWorkflowRule'Spec x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap BatchOperationTriggerWorkflowRule'Spec y__))
instance Data.ProtoLens.Field.HasField BatchOperationTriggerWorkflowRule "spec" Proto.Temporal.Api.Rules.V1.Message.WorkflowRuleSpec where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationTriggerWorkflowRule'rule
           (\ x__ y__ -> x__ {_BatchOperationTriggerWorkflowRule'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (BatchOperationTriggerWorkflowRule'Spec x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap BatchOperationTriggerWorkflowRule'Spec y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message BatchOperationTriggerWorkflowRule where
  messageName _
    = Data.Text.pack
        "temporal.api.batch.v1.BatchOperationTriggerWorkflowRule"
  packedMessageDescriptor _
    = "\n\
      \!BatchOperationTriggerWorkflowRule\DC2\SUB\n\
      \\bidentity\CAN\SOH \SOH(\tR\bidentity\DC2\DLE\n\
      \\STXid\CAN\STX \SOH(\tH\NULR\STXid\DC2=\n\
      \\EOTspec\CAN\ETX \SOH(\v2'.temporal.api.rules.v1.WorkflowRuleSpecH\NULR\EOTspecB\ACK\n\
      \\EOTrule"
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
              Data.ProtoLens.FieldDescriptor BatchOperationTriggerWorkflowRule
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'id")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationTriggerWorkflowRule
        spec__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "spec"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Rules.V1.Message.WorkflowRuleSpec)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'spec")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationTriggerWorkflowRule
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, identity__field_descriptor),
           (Data.ProtoLens.Tag 2, id__field_descriptor),
           (Data.ProtoLens.Tag 3, spec__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BatchOperationTriggerWorkflowRule'_unknownFields
        (\ x__ y__
           -> x__ {_BatchOperationTriggerWorkflowRule'_unknownFields = y__})
  defMessage
    = BatchOperationTriggerWorkflowRule'_constructor
        {_BatchOperationTriggerWorkflowRule'identity = Data.ProtoLens.fieldDefault,
         _BatchOperationTriggerWorkflowRule'rule = Prelude.Nothing,
         _BatchOperationTriggerWorkflowRule'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BatchOperationTriggerWorkflowRule
          -> Data.ProtoLens.Encoding.Bytes.Parser BatchOperationTriggerWorkflowRule
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "spec"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"spec") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "BatchOperationTriggerWorkflowRule"
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rule") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (BatchOperationTriggerWorkflowRule'Id v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.Text.Encoding.encodeUtf8 v)
                   (Prelude.Just (BatchOperationTriggerWorkflowRule'Spec v))
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
instance Control.DeepSeq.NFData BatchOperationTriggerWorkflowRule where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BatchOperationTriggerWorkflowRule'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BatchOperationTriggerWorkflowRule'identity x__)
                (Control.DeepSeq.deepseq
                   (_BatchOperationTriggerWorkflowRule'rule x__) ()))
instance Control.DeepSeq.NFData BatchOperationTriggerWorkflowRule'Rule where
  rnf (BatchOperationTriggerWorkflowRule'Id x__)
    = Control.DeepSeq.rnf x__
  rnf (BatchOperationTriggerWorkflowRule'Spec x__)
    = Control.DeepSeq.rnf x__
_BatchOperationTriggerWorkflowRule'Id ::
  Data.ProtoLens.Prism.Prism' BatchOperationTriggerWorkflowRule'Rule Data.Text.Text
_BatchOperationTriggerWorkflowRule'Id
  = Data.ProtoLens.Prism.prism'
      BatchOperationTriggerWorkflowRule'Id
      (\ p__
         -> case p__ of
              (BatchOperationTriggerWorkflowRule'Id p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_BatchOperationTriggerWorkflowRule'Spec ::
  Data.ProtoLens.Prism.Prism' BatchOperationTriggerWorkflowRule'Rule Proto.Temporal.Api.Rules.V1.Message.WorkflowRuleSpec
_BatchOperationTriggerWorkflowRule'Spec
  = Data.ProtoLens.Prism.prism'
      BatchOperationTriggerWorkflowRule'Spec
      (\ p__
         -> case p__ of
              (BatchOperationTriggerWorkflowRule'Spec p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.identity' @:: Lens' BatchOperationUnpauseActivities Data.Text.Text@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.resetAttempts' @:: Lens' BatchOperationUnpauseActivities Prelude.Bool@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.resetHeartbeat' @:: Lens' BatchOperationUnpauseActivities Prelude.Bool@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.jitter' @:: Lens' BatchOperationUnpauseActivities Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'jitter' @:: Lens' BatchOperationUnpauseActivities (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'activity' @:: Lens' BatchOperationUnpauseActivities (Prelude.Maybe BatchOperationUnpauseActivities'Activity)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'type'' @:: Lens' BatchOperationUnpauseActivities (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.type'' @:: Lens' BatchOperationUnpauseActivities Data.Text.Text@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'matchAll' @:: Lens' BatchOperationUnpauseActivities (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.matchAll' @:: Lens' BatchOperationUnpauseActivities Prelude.Bool@ -}
data BatchOperationUnpauseActivities
  = BatchOperationUnpauseActivities'_constructor {_BatchOperationUnpauseActivities'identity :: !Data.Text.Text,
                                                  _BatchOperationUnpauseActivities'resetAttempts :: !Prelude.Bool,
                                                  _BatchOperationUnpauseActivities'resetHeartbeat :: !Prelude.Bool,
                                                  _BatchOperationUnpauseActivities'jitter :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                  _BatchOperationUnpauseActivities'activity :: !(Prelude.Maybe BatchOperationUnpauseActivities'Activity),
                                                  _BatchOperationUnpauseActivities'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BatchOperationUnpauseActivities where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data BatchOperationUnpauseActivities'Activity
  = BatchOperationUnpauseActivities'Type !Data.Text.Text |
    BatchOperationUnpauseActivities'MatchAll !Prelude.Bool
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField BatchOperationUnpauseActivities "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUnpauseActivities'identity
           (\ x__ y__
              -> x__ {_BatchOperationUnpauseActivities'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationUnpauseActivities "resetAttempts" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUnpauseActivities'resetAttempts
           (\ x__ y__
              -> x__ {_BatchOperationUnpauseActivities'resetAttempts = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationUnpauseActivities "resetHeartbeat" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUnpauseActivities'resetHeartbeat
           (\ x__ y__
              -> x__ {_BatchOperationUnpauseActivities'resetHeartbeat = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationUnpauseActivities "jitter" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUnpauseActivities'jitter
           (\ x__ y__ -> x__ {_BatchOperationUnpauseActivities'jitter = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BatchOperationUnpauseActivities "maybe'jitter" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUnpauseActivities'jitter
           (\ x__ y__ -> x__ {_BatchOperationUnpauseActivities'jitter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationUnpauseActivities "maybe'activity" (Prelude.Maybe BatchOperationUnpauseActivities'Activity) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUnpauseActivities'activity
           (\ x__ y__
              -> x__ {_BatchOperationUnpauseActivities'activity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationUnpauseActivities "maybe'type'" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUnpauseActivities'activity
           (\ x__ y__
              -> x__ {_BatchOperationUnpauseActivities'activity = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (BatchOperationUnpauseActivities'Type x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap BatchOperationUnpauseActivities'Type y__))
instance Data.ProtoLens.Field.HasField BatchOperationUnpauseActivities "type'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUnpauseActivities'activity
           (\ x__ y__
              -> x__ {_BatchOperationUnpauseActivities'activity = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (BatchOperationUnpauseActivities'Type x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap BatchOperationUnpauseActivities'Type y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField BatchOperationUnpauseActivities "maybe'matchAll" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUnpauseActivities'activity
           (\ x__ y__
              -> x__ {_BatchOperationUnpauseActivities'activity = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (BatchOperationUnpauseActivities'MatchAll x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap BatchOperationUnpauseActivities'MatchAll y__))
instance Data.ProtoLens.Field.HasField BatchOperationUnpauseActivities "matchAll" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUnpauseActivities'activity
           (\ x__ y__
              -> x__ {_BatchOperationUnpauseActivities'activity = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (BatchOperationUnpauseActivities'MatchAll x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap BatchOperationUnpauseActivities'MatchAll y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message BatchOperationUnpauseActivities where
  messageName _
    = Data.Text.pack
        "temporal.api.batch.v1.BatchOperationUnpauseActivities"
  packedMessageDescriptor _
    = "\n\
      \\USBatchOperationUnpauseActivities\DC2\SUB\n\
      \\bidentity\CAN\SOH \SOH(\tR\bidentity\DC2\DC4\n\
      \\EOTtype\CAN\STX \SOH(\tH\NULR\EOTtype\DC2\GS\n\
      \\tmatch_all\CAN\ETX \SOH(\bH\NULR\bmatchAll\DC2%\n\
      \\SOreset_attempts\CAN\EOT \SOH(\bR\rresetAttempts\DC2'\n\
      \\SIreset_heartbeat\CAN\ENQ \SOH(\bR\SOresetHeartbeat\DC21\n\
      \\ACKjitter\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\ACKjitterB\n\
      \\n\
      \\bactivity"
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
              Data.ProtoLens.FieldDescriptor BatchOperationUnpauseActivities
        resetAttempts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reset_attempts"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resetAttempts")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationUnpauseActivities
        resetHeartbeat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reset_heartbeat"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resetHeartbeat")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationUnpauseActivities
        jitter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "jitter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'jitter")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationUnpauseActivities
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationUnpauseActivities
        matchAll__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match_all"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'matchAll")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationUnpauseActivities
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, identity__field_descriptor),
           (Data.ProtoLens.Tag 4, resetAttempts__field_descriptor),
           (Data.ProtoLens.Tag 5, resetHeartbeat__field_descriptor),
           (Data.ProtoLens.Tag 6, jitter__field_descriptor),
           (Data.ProtoLens.Tag 2, type'__field_descriptor),
           (Data.ProtoLens.Tag 3, matchAll__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BatchOperationUnpauseActivities'_unknownFields
        (\ x__ y__
           -> x__ {_BatchOperationUnpauseActivities'_unknownFields = y__})
  defMessage
    = BatchOperationUnpauseActivities'_constructor
        {_BatchOperationUnpauseActivities'identity = Data.ProtoLens.fieldDefault,
         _BatchOperationUnpauseActivities'resetAttempts = Data.ProtoLens.fieldDefault,
         _BatchOperationUnpauseActivities'resetHeartbeat = Data.ProtoLens.fieldDefault,
         _BatchOperationUnpauseActivities'jitter = Prelude.Nothing,
         _BatchOperationUnpauseActivities'activity = Prelude.Nothing,
         _BatchOperationUnpauseActivities'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BatchOperationUnpauseActivities
          -> Data.ProtoLens.Encoding.Bytes.Parser BatchOperationUnpauseActivities
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
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "reset_attempts"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"resetAttempts") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "reset_heartbeat"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"resetHeartbeat") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "jitter"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"jitter") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "match_all"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"matchAll") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "BatchOperationUnpauseActivities"
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
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"resetAttempts") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"resetHeartbeat") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                               _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'jitter") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'activity") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just (BatchOperationUnpauseActivities'Type v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.Text.Encoding.encodeUtf8 v)
                            (Prelude.Just (BatchOperationUnpauseActivities'MatchAll v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (\ b -> if b then 1 else 0) v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData BatchOperationUnpauseActivities where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BatchOperationUnpauseActivities'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BatchOperationUnpauseActivities'identity x__)
                (Control.DeepSeq.deepseq
                   (_BatchOperationUnpauseActivities'resetAttempts x__)
                   (Control.DeepSeq.deepseq
                      (_BatchOperationUnpauseActivities'resetHeartbeat x__)
                      (Control.DeepSeq.deepseq
                         (_BatchOperationUnpauseActivities'jitter x__)
                         (Control.DeepSeq.deepseq
                            (_BatchOperationUnpauseActivities'activity x__) ())))))
instance Control.DeepSeq.NFData BatchOperationUnpauseActivities'Activity where
  rnf (BatchOperationUnpauseActivities'Type x__)
    = Control.DeepSeq.rnf x__
  rnf (BatchOperationUnpauseActivities'MatchAll x__)
    = Control.DeepSeq.rnf x__
_BatchOperationUnpauseActivities'Type ::
  Data.ProtoLens.Prism.Prism' BatchOperationUnpauseActivities'Activity Data.Text.Text
_BatchOperationUnpauseActivities'Type
  = Data.ProtoLens.Prism.prism'
      BatchOperationUnpauseActivities'Type
      (\ p__
         -> case p__ of
              (BatchOperationUnpauseActivities'Type p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_BatchOperationUnpauseActivities'MatchAll ::
  Data.ProtoLens.Prism.Prism' BatchOperationUnpauseActivities'Activity Prelude.Bool
_BatchOperationUnpauseActivities'MatchAll
  = Data.ProtoLens.Prism.prism'
      BatchOperationUnpauseActivities'MatchAll
      (\ p__
         -> case p__ of
              (BatchOperationUnpauseActivities'MatchAll p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.identity' @:: Lens' BatchOperationUpdateActivityOptions Data.Text.Text@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.activityOptions' @:: Lens' BatchOperationUpdateActivityOptions Proto.Temporal.Api.Activity.V1.Message.ActivityOptions@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'activityOptions' @:: Lens' BatchOperationUpdateActivityOptions (Prelude.Maybe Proto.Temporal.Api.Activity.V1.Message.ActivityOptions)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.updateMask' @:: Lens' BatchOperationUpdateActivityOptions Proto.Google.Protobuf.FieldMask.FieldMask@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'updateMask' @:: Lens' BatchOperationUpdateActivityOptions (Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.restoreOriginal' @:: Lens' BatchOperationUpdateActivityOptions Prelude.Bool@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'activity' @:: Lens' BatchOperationUpdateActivityOptions (Prelude.Maybe BatchOperationUpdateActivityOptions'Activity)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'type'' @:: Lens' BatchOperationUpdateActivityOptions (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.type'' @:: Lens' BatchOperationUpdateActivityOptions Data.Text.Text@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'matchAll' @:: Lens' BatchOperationUpdateActivityOptions (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.matchAll' @:: Lens' BatchOperationUpdateActivityOptions Prelude.Bool@ -}
data BatchOperationUpdateActivityOptions
  = BatchOperationUpdateActivityOptions'_constructor {_BatchOperationUpdateActivityOptions'identity :: !Data.Text.Text,
                                                      _BatchOperationUpdateActivityOptions'activityOptions :: !(Prelude.Maybe Proto.Temporal.Api.Activity.V1.Message.ActivityOptions),
                                                      _BatchOperationUpdateActivityOptions'updateMask :: !(Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask),
                                                      _BatchOperationUpdateActivityOptions'restoreOriginal :: !Prelude.Bool,
                                                      _BatchOperationUpdateActivityOptions'activity :: !(Prelude.Maybe BatchOperationUpdateActivityOptions'Activity),
                                                      _BatchOperationUpdateActivityOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BatchOperationUpdateActivityOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data BatchOperationUpdateActivityOptions'Activity
  = BatchOperationUpdateActivityOptions'Type !Data.Text.Text |
    BatchOperationUpdateActivityOptions'MatchAll !Prelude.Bool
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField BatchOperationUpdateActivityOptions "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUpdateActivityOptions'identity
           (\ x__ y__
              -> x__ {_BatchOperationUpdateActivityOptions'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationUpdateActivityOptions "activityOptions" Proto.Temporal.Api.Activity.V1.Message.ActivityOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUpdateActivityOptions'activityOptions
           (\ x__ y__
              -> x__
                   {_BatchOperationUpdateActivityOptions'activityOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BatchOperationUpdateActivityOptions "maybe'activityOptions" (Prelude.Maybe Proto.Temporal.Api.Activity.V1.Message.ActivityOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUpdateActivityOptions'activityOptions
           (\ x__ y__
              -> x__
                   {_BatchOperationUpdateActivityOptions'activityOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationUpdateActivityOptions "updateMask" Proto.Google.Protobuf.FieldMask.FieldMask where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUpdateActivityOptions'updateMask
           (\ x__ y__
              -> x__ {_BatchOperationUpdateActivityOptions'updateMask = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BatchOperationUpdateActivityOptions "maybe'updateMask" (Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUpdateActivityOptions'updateMask
           (\ x__ y__
              -> x__ {_BatchOperationUpdateActivityOptions'updateMask = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationUpdateActivityOptions "restoreOriginal" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUpdateActivityOptions'restoreOriginal
           (\ x__ y__
              -> x__
                   {_BatchOperationUpdateActivityOptions'restoreOriginal = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationUpdateActivityOptions "maybe'activity" (Prelude.Maybe BatchOperationUpdateActivityOptions'Activity) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUpdateActivityOptions'activity
           (\ x__ y__
              -> x__ {_BatchOperationUpdateActivityOptions'activity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationUpdateActivityOptions "maybe'type'" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUpdateActivityOptions'activity
           (\ x__ y__
              -> x__ {_BatchOperationUpdateActivityOptions'activity = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (BatchOperationUpdateActivityOptions'Type x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap BatchOperationUpdateActivityOptions'Type y__))
instance Data.ProtoLens.Field.HasField BatchOperationUpdateActivityOptions "type'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUpdateActivityOptions'activity
           (\ x__ y__
              -> x__ {_BatchOperationUpdateActivityOptions'activity = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (BatchOperationUpdateActivityOptions'Type x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap BatchOperationUpdateActivityOptions'Type y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField BatchOperationUpdateActivityOptions "maybe'matchAll" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUpdateActivityOptions'activity
           (\ x__ y__
              -> x__ {_BatchOperationUpdateActivityOptions'activity = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (BatchOperationUpdateActivityOptions'MatchAll x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap BatchOperationUpdateActivityOptions'MatchAll y__))
instance Data.ProtoLens.Field.HasField BatchOperationUpdateActivityOptions "matchAll" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUpdateActivityOptions'activity
           (\ x__ y__
              -> x__ {_BatchOperationUpdateActivityOptions'activity = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (BatchOperationUpdateActivityOptions'MatchAll x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap BatchOperationUpdateActivityOptions'MatchAll y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message BatchOperationUpdateActivityOptions where
  messageName _
    = Data.Text.pack
        "temporal.api.batch.v1.BatchOperationUpdateActivityOptions"
  packedMessageDescriptor _
    = "\n\
      \#BatchOperationUpdateActivityOptions\DC2\SUB\n\
      \\bidentity\CAN\SOH \SOH(\tR\bidentity\DC2\DC4\n\
      \\EOTtype\CAN\STX \SOH(\tH\NULR\EOTtype\DC2\GS\n\
      \\tmatch_all\CAN\ETX \SOH(\bH\NULR\bmatchAll\DC2T\n\
      \\DLEactivity_options\CAN\EOT \SOH(\v2).temporal.api.activity.v1.ActivityOptionsR\SIactivityOptions\DC2;\n\
      \\vupdate_mask\CAN\ENQ \SOH(\v2\SUB.google.protobuf.FieldMaskR\n\
      \updateMask\DC2)\n\
      \\DLErestore_original\CAN\ACK \SOH(\bR\SIrestoreOriginalB\n\
      \\n\
      \\bactivity"
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
              Data.ProtoLens.FieldDescriptor BatchOperationUpdateActivityOptions
        activityOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Activity.V1.Message.ActivityOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'activityOptions")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationUpdateActivityOptions
        updateMask__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "update_mask"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.FieldMask.FieldMask)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'updateMask")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationUpdateActivityOptions
        restoreOriginal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "restore_original"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"restoreOriginal")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationUpdateActivityOptions
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationUpdateActivityOptions
        matchAll__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match_all"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'matchAll")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationUpdateActivityOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, identity__field_descriptor),
           (Data.ProtoLens.Tag 4, activityOptions__field_descriptor),
           (Data.ProtoLens.Tag 5, updateMask__field_descriptor),
           (Data.ProtoLens.Tag 6, restoreOriginal__field_descriptor),
           (Data.ProtoLens.Tag 2, type'__field_descriptor),
           (Data.ProtoLens.Tag 3, matchAll__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BatchOperationUpdateActivityOptions'_unknownFields
        (\ x__ y__
           -> x__ {_BatchOperationUpdateActivityOptions'_unknownFields = y__})
  defMessage
    = BatchOperationUpdateActivityOptions'_constructor
        {_BatchOperationUpdateActivityOptions'identity = Data.ProtoLens.fieldDefault,
         _BatchOperationUpdateActivityOptions'activityOptions = Prelude.Nothing,
         _BatchOperationUpdateActivityOptions'updateMask = Prelude.Nothing,
         _BatchOperationUpdateActivityOptions'restoreOriginal = Data.ProtoLens.fieldDefault,
         _BatchOperationUpdateActivityOptions'activity = Prelude.Nothing,
         _BatchOperationUpdateActivityOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BatchOperationUpdateActivityOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser BatchOperationUpdateActivityOptions
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
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "activity_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"activityOptions") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "update_mask"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"updateMask") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "restore_original"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"restoreOriginal") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "match_all"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"matchAll") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "BatchOperationUpdateActivityOptions"
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'activityOptions") _x
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
                          (Data.ProtoLens.Field.field @"maybe'updateMask") _x
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
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"restoreOriginal") _x
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
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'activity") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just (BatchOperationUpdateActivityOptions'Type v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.Text.Encoding.encodeUtf8 v)
                            (Prelude.Just (BatchOperationUpdateActivityOptions'MatchAll v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (\ b -> if b then 1 else 0) v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData BatchOperationUpdateActivityOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BatchOperationUpdateActivityOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BatchOperationUpdateActivityOptions'identity x__)
                (Control.DeepSeq.deepseq
                   (_BatchOperationUpdateActivityOptions'activityOptions x__)
                   (Control.DeepSeq.deepseq
                      (_BatchOperationUpdateActivityOptions'updateMask x__)
                      (Control.DeepSeq.deepseq
                         (_BatchOperationUpdateActivityOptions'restoreOriginal x__)
                         (Control.DeepSeq.deepseq
                            (_BatchOperationUpdateActivityOptions'activity x__) ())))))
instance Control.DeepSeq.NFData BatchOperationUpdateActivityOptions'Activity where
  rnf (BatchOperationUpdateActivityOptions'Type x__)
    = Control.DeepSeq.rnf x__
  rnf (BatchOperationUpdateActivityOptions'MatchAll x__)
    = Control.DeepSeq.rnf x__
_BatchOperationUpdateActivityOptions'Type ::
  Data.ProtoLens.Prism.Prism' BatchOperationUpdateActivityOptions'Activity Data.Text.Text
_BatchOperationUpdateActivityOptions'Type
  = Data.ProtoLens.Prism.prism'
      BatchOperationUpdateActivityOptions'Type
      (\ p__
         -> case p__ of
              (BatchOperationUpdateActivityOptions'Type p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_BatchOperationUpdateActivityOptions'MatchAll ::
  Data.ProtoLens.Prism.Prism' BatchOperationUpdateActivityOptions'Activity Prelude.Bool
_BatchOperationUpdateActivityOptions'MatchAll
  = Data.ProtoLens.Prism.prism'
      BatchOperationUpdateActivityOptions'MatchAll
      (\ p__
         -> case p__ of
              (BatchOperationUpdateActivityOptions'MatchAll p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.identity' @:: Lens' BatchOperationUpdateWorkflowExecutionOptions Data.Text.Text@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.workflowExecutionOptions' @:: Lens' BatchOperationUpdateWorkflowExecutionOptions Proto.Temporal.Api.Workflow.V1.Message.WorkflowExecutionOptions@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'workflowExecutionOptions' @:: Lens' BatchOperationUpdateWorkflowExecutionOptions (Prelude.Maybe Proto.Temporal.Api.Workflow.V1.Message.WorkflowExecutionOptions)@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.updateMask' @:: Lens' BatchOperationUpdateWorkflowExecutionOptions Proto.Google.Protobuf.FieldMask.FieldMask@
         * 'Proto.Temporal.Api.Batch.V1.Message_Fields.maybe'updateMask' @:: Lens' BatchOperationUpdateWorkflowExecutionOptions (Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask)@ -}
data BatchOperationUpdateWorkflowExecutionOptions
  = BatchOperationUpdateWorkflowExecutionOptions'_constructor {_BatchOperationUpdateWorkflowExecutionOptions'identity :: !Data.Text.Text,
                                                               _BatchOperationUpdateWorkflowExecutionOptions'workflowExecutionOptions :: !(Prelude.Maybe Proto.Temporal.Api.Workflow.V1.Message.WorkflowExecutionOptions),
                                                               _BatchOperationUpdateWorkflowExecutionOptions'updateMask :: !(Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask),
                                                               _BatchOperationUpdateWorkflowExecutionOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BatchOperationUpdateWorkflowExecutionOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BatchOperationUpdateWorkflowExecutionOptions "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUpdateWorkflowExecutionOptions'identity
           (\ x__ y__
              -> x__
                   {_BatchOperationUpdateWorkflowExecutionOptions'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationUpdateWorkflowExecutionOptions "workflowExecutionOptions" Proto.Temporal.Api.Workflow.V1.Message.WorkflowExecutionOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUpdateWorkflowExecutionOptions'workflowExecutionOptions
           (\ x__ y__
              -> x__
                   {_BatchOperationUpdateWorkflowExecutionOptions'workflowExecutionOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BatchOperationUpdateWorkflowExecutionOptions "maybe'workflowExecutionOptions" (Prelude.Maybe Proto.Temporal.Api.Workflow.V1.Message.WorkflowExecutionOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUpdateWorkflowExecutionOptions'workflowExecutionOptions
           (\ x__ y__
              -> x__
                   {_BatchOperationUpdateWorkflowExecutionOptions'workflowExecutionOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BatchOperationUpdateWorkflowExecutionOptions "updateMask" Proto.Google.Protobuf.FieldMask.FieldMask where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUpdateWorkflowExecutionOptions'updateMask
           (\ x__ y__
              -> x__
                   {_BatchOperationUpdateWorkflowExecutionOptions'updateMask = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BatchOperationUpdateWorkflowExecutionOptions "maybe'updateMask" (Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BatchOperationUpdateWorkflowExecutionOptions'updateMask
           (\ x__ y__
              -> x__
                   {_BatchOperationUpdateWorkflowExecutionOptions'updateMask = y__}))
        Prelude.id
instance Data.ProtoLens.Message BatchOperationUpdateWorkflowExecutionOptions where
  messageName _
    = Data.Text.pack
        "temporal.api.batch.v1.BatchOperationUpdateWorkflowExecutionOptions"
  packedMessageDescriptor _
    = "\n\
      \,BatchOperationUpdateWorkflowExecutionOptions\DC2\SUB\n\
      \\bidentity\CAN\SOH \SOH(\tR\bidentity\DC2p\n\
      \\SUBworkflow_execution_options\CAN\STX \SOH(\v22.temporal.api.workflow.v1.WorkflowExecutionOptionsR\CANworkflowExecutionOptions\DC2;\n\
      \\vupdate_mask\CAN\ETX \SOH(\v2\SUB.google.protobuf.FieldMaskR\n\
      \updateMask"
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
              Data.ProtoLens.FieldDescriptor BatchOperationUpdateWorkflowExecutionOptions
        workflowExecutionOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_execution_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Workflow.V1.Message.WorkflowExecutionOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowExecutionOptions")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationUpdateWorkflowExecutionOptions
        updateMask__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "update_mask"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.FieldMask.FieldMask)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'updateMask")) ::
              Data.ProtoLens.FieldDescriptor BatchOperationUpdateWorkflowExecutionOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, identity__field_descriptor),
           (Data.ProtoLens.Tag 2, workflowExecutionOptions__field_descriptor),
           (Data.ProtoLens.Tag 3, updateMask__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BatchOperationUpdateWorkflowExecutionOptions'_unknownFields
        (\ x__ y__
           -> x__
                {_BatchOperationUpdateWorkflowExecutionOptions'_unknownFields = y__})
  defMessage
    = BatchOperationUpdateWorkflowExecutionOptions'_constructor
        {_BatchOperationUpdateWorkflowExecutionOptions'identity = Data.ProtoLens.fieldDefault,
         _BatchOperationUpdateWorkflowExecutionOptions'workflowExecutionOptions = Prelude.Nothing,
         _BatchOperationUpdateWorkflowExecutionOptions'updateMask = Prelude.Nothing,
         _BatchOperationUpdateWorkflowExecutionOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BatchOperationUpdateWorkflowExecutionOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser BatchOperationUpdateWorkflowExecutionOptions
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_execution_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowExecutionOptions") y x)
                        26
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
          "BatchOperationUpdateWorkflowExecutionOptions"
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'workflowExecutionOptions") _x
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
                          (Data.ProtoLens.Field.field @"maybe'updateMask") _x
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
instance Control.DeepSeq.NFData BatchOperationUpdateWorkflowExecutionOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BatchOperationUpdateWorkflowExecutionOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BatchOperationUpdateWorkflowExecutionOptions'identity x__)
                (Control.DeepSeq.deepseq
                   (_BatchOperationUpdateWorkflowExecutionOptions'workflowExecutionOptions
                      x__)
                   (Control.DeepSeq.deepseq
                      (_BatchOperationUpdateWorkflowExecutionOptions'updateMask x__)
                      ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \#temporal/api/batch/v1/message.proto\DC2\NAKtemporal.api.batch.v1\SUB\RSgoogle/protobuf/duration.proto\SUB google/protobuf/field_mask.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB&temporal/api/activity/v1/message.proto\SUB$temporal/api/common/v1/message.proto\SUB+temporal/api/enums/v1/batch_operation.proto\SUB!temporal/api/enums/v1/reset.proto\SUB#temporal/api/rules/v1/message.proto\SUB&temporal/api/workflow/v1/message.proto\"\181\STX\n\
    \\DC2BatchOperationInfo\DC2\NAK\n\
    \\ACKjob_id\CAN\SOH \SOH(\tR\ENQjobId\DC2@\n\
    \\ENQstate\CAN\STX \SOH(\SO2*.temporal.api.enums.v1.BatchOperationStateR\ENQstate\DC29\n\
    \\n\
    \start_time\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\tstartTime\DC29\n\
    \\n\
    \close_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\tcloseTime\DC2P\n\
    \\SOoperation_type\CAN\ENQ \SOH(\SO2).temporal.api.enums.v1.BatchOperationTypeR\roperationType\"s\n\
    \\EMBatchOperationTermination\DC2:\n\
    \\adetails\CAN\SOH \SOH(\v2 .temporal.api.common.v1.PayloadsR\adetails\DC2\SUB\n\
    \\bidentity\CAN\STX \SOH(\tR\bidentity\"W\n\
    \!BatchOperationTerminateActivities\DC2\SUB\n\
    \\bidentity\CAN\SOH \SOH(\tR\bidentity\DC2\SYN\n\
    \\ACKreason\CAN\STX \SOH(\tR\ACKreason\"\186\SOH\n\
    \\DC4BatchOperationSignal\DC2\SYN\n\
    \\ACKsignal\CAN\SOH \SOH(\tR\ACKsignal\DC26\n\
    \\ENQinput\CAN\STX \SOH(\v2 .temporal.api.common.v1.PayloadsR\ENQinput\DC26\n\
    \\ACKheader\CAN\ETX \SOH(\v2\RS.temporal.api.common.v1.HeaderR\ACKheader\DC2\SUB\n\
    \\bidentity\CAN\EOT \SOH(\tR\bidentity\"8\n\
    \\SUBBatchOperationCancellation\DC2\SUB\n\
    \\bidentity\CAN\SOH \SOH(\tR\bidentity\"T\n\
    \\RSBatchOperationCancelActivities\DC2\SUB\n\
    \\bidentity\CAN\SOH \SOH(\tR\bidentity\DC2\SYN\n\
    \\ACKreason\CAN\STX \SOH(\tR\ACKreason\"4\n\
    \\SYNBatchOperationDeletion\DC2\SUB\n\
    \\bidentity\CAN\SOH \SOH(\tR\bidentity\" \n\
    \\RSBatchOperationDeleteActivities\"\243\STX\n\
    \\DC3BatchOperationReset\DC2\SUB\n\
    \\bidentity\CAN\ETX \SOH(\tR\bidentity\DC2>\n\
    \\aoptions\CAN\EOT \SOH(\v2$.temporal.api.common.v1.ResetOptionsR\aoptions\DC2C\n\
    \\n\
    \reset_type\CAN\SOH \SOH(\SO2 .temporal.api.enums.v1.ResetTypeR\tresetTypeB\STX\CAN\SOH\DC2Y\n\
    \\DC2reset_reapply_type\CAN\STX \SOH(\SO2'.temporal.api.enums.v1.ResetReapplyTypeR\DLEresetReapplyTypeB\STX\CAN\SOH\DC2`\n\
    \\NAKpost_reset_operations\CAN\ENQ \ETX(\v2,.temporal.api.workflow.v1.PostResetOperationR\DC3postResetOperations\"\249\SOH\n\
    \,BatchOperationUpdateWorkflowExecutionOptions\DC2\SUB\n\
    \\bidentity\CAN\SOH \SOH(\tR\bidentity\DC2p\n\
    \\SUBworkflow_execution_options\CAN\STX \SOH(\v22.temporal.api.workflow.v1.WorkflowExecutionOptionsR\CANworkflowExecutionOptions\DC2;\n\
    \\vupdate_mask\CAN\ETX \SOH(\v2\SUB.google.protobuf.FieldMaskR\n\
    \updateMask\"\129\STX\n\
    \\USBatchOperationUnpauseActivities\DC2\SUB\n\
    \\bidentity\CAN\SOH \SOH(\tR\bidentity\DC2\DC4\n\
    \\EOTtype\CAN\STX \SOH(\tH\NULR\EOTtype\DC2\GS\n\
    \\tmatch_all\CAN\ETX \SOH(\bH\NULR\bmatchAll\DC2%\n\
    \\SOreset_attempts\CAN\EOT \SOH(\bR\rresetAttempts\DC2'\n\
    \\SIreset_heartbeat\CAN\ENQ \SOH(\bR\SOresetHeartbeat\DC21\n\
    \\ACKjitter\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\ACKjitterB\n\
    \\n\
    \\bactivity\"\152\SOH\n\
    \!BatchOperationTriggerWorkflowRule\DC2\SUB\n\
    \\bidentity\CAN\SOH \SOH(\tR\bidentity\DC2\DLE\n\
    \\STXid\CAN\STX \SOH(\tH\NULR\STXid\DC2=\n\
    \\EOTspec\CAN\ETX \SOH(\v2'.temporal.api.rules.v1.WorkflowRuleSpecH\NULR\EOTspecB\ACK\n\
    \\EOTrule\"\218\STX\n\
    \\GSBatchOperationResetActivities\DC2\SUB\n\
    \\bidentity\CAN\SOH \SOH(\tR\bidentity\DC2\DC4\n\
    \\EOTtype\CAN\STX \SOH(\tH\NULR\EOTtype\DC2\GS\n\
    \\tmatch_all\CAN\ETX \SOH(\bH\NULR\bmatchAll\DC2%\n\
    \\SOreset_attempts\CAN\EOT \SOH(\bR\rresetAttempts\DC2'\n\
    \\SIreset_heartbeat\CAN\ENQ \SOH(\bR\SOresetHeartbeat\DC2\US\n\
    \\vkeep_paused\CAN\ACK \SOH(\bR\n\
    \keepPaused\DC21\n\
    \\ACKjitter\CAN\a \SOH(\v2\EM.google.protobuf.DurationR\ACKjitter\DC28\n\
    \\CANrestore_original_options\CAN\b \SOH(\bR\SYNrestoreOriginalOptionsB\n\
    \\n\
    \\bactivity\"\192\STX\n\
    \#BatchOperationUpdateActivityOptions\DC2\SUB\n\
    \\bidentity\CAN\SOH \SOH(\tR\bidentity\DC2\DC4\n\
    \\EOTtype\CAN\STX \SOH(\tH\NULR\EOTtype\DC2\GS\n\
    \\tmatch_all\CAN\ETX \SOH(\bH\NULR\bmatchAll\DC2T\n\
    \\DLEactivity_options\CAN\EOT \SOH(\v2).temporal.api.activity.v1.ActivityOptionsR\SIactivityOptions\DC2;\n\
    \\vupdate_mask\CAN\ENQ \SOH(\v2\SUB.google.protobuf.FieldMaskR\n\
    \updateMask\DC2)\n\
    \\DLErestore_original\CAN\ACK \SOH(\bR\SIrestoreOriginalB\n\
    \\n\
    \\bactivityB\132\SOH\n\
    \\CANio.temporal.api.batch.v1B\fMessageProtoP\SOHZ!go.temporal.io/api/batch/v1;batch\170\STX\ETBTemporalio.Api.Batch.V1\234\STX\SUBTemporalio::Api::Batch::V1J\194I\n\
    \\a\DC2\ENQ\NUL\NUL\221\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NUL8\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\EOT\NUL8\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NUL1\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\ENQ\NUL1\n\
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
    \\SOH\b\DC2\ETX\b\NUL3\n\
    \\t\n\
    \\STX\b-\DC2\ETX\b\NUL3\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL4\n\
    \\t\n\
    \\STX\b%\DC2\ETX\t\NUL4\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\v\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\f\NUL*\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\r\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\SO\NUL0\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\SI\NUL.\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\DLE\NUL5\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\DC1\NUL+\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\DC2\NUL-\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\DC3\NUL0\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\NAK\NUL \SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\SUB\n\
    \\ESC\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ETB\STX\DC4\SUB\SO Batch job ID\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\ETB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ETB\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ETB\DC2\DC3\n\
    \$\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\EM\STX6\SUB\ETB Batch operation state\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\EM\STX+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\EM,1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\EM45\n\
    \)\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\ESC\STX+\SUB\FS Batch operation start time\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\ESC\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\ESC\FS&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\ESC)*\n\
    \)\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\GS\STX+\SUB\FS Batch operation close time\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX\GS\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\GS\FS&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\GS)*\n\
    \\GS\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\US\STX>\SUB\DLE Operation type\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\US\STX*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\US+9\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\US<=\n\
    \\140\STX\n\
    \\STX\EOT\SOH\DC2\EOT%\NUL*\SOH\SUB\255\SOH BatchOperationTermination sends terminate requests to batch workflows.\n\
    \ Keep the parameter in sync with temporal.api.workflowservice.v1.TerminateWorkflowExecutionRequest.\n\
    \ Ignore first_execution_run_id because this is used for single workflow operation.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX%\b!\n\
    \F\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX'\STX.\SUB9 Serialized value(s) to provide to the termination event\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX'\STX!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX'\")\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX',-\n\
    \0\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX)\STX\SYN\SUB# The identity of the worker/client\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX)\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX)\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX)\DC4\NAK\n\
    \\199\SOH\n\
    \\STX\EOT\STX\DC2\EOT.\NUL4\SOH\SUB\186\SOH BatchOperationTerminateActivities sends terminate requests to a batch of activities.\n\
    \ Keep the parameter in sync with temporal.api.workflowservice.v1.TerminateActivityExecutionRequest.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX.\b)\n\
    \0\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX0\STX\SYN\SUB# The identity of the worker/client\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX0\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX0\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX0\DC4\NAK\n\
    \\185\SOH\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX3\STX\DC4\SUB\171\SOH Reason for requesting the termination, recorded and available via the PollActivityExecution API.\n\
    \ Not propagated to a worker if an activity attempt is currently running.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX3\t\SI\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX3\DC2\DC3\n\
    \\166\SOH\n\
    \\STX\EOT\ETX\DC2\EOT8\NULB\SOH\SUB\153\SOH BatchOperationSignal sends signals to batch workflows.\n\
    \ Keep the parameter in sync with temporal.api.workflowservice.v1.SignalWorkflowExecutionRequest.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX8\b\FS\n\
    \U\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX:\STX\DC4\SUBH The workflow author-defined name of the signal to send to the workflow\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX:\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX:\t\SI\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX:\DC2\DC3\n\
    \=\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX<\STX,\SUB0 Serialized value(s) to provide with the signal\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETX<\STX!\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX<\"'\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX<*+\n\
    \\137\SOH\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX?\STX+\SUB| Headers that are passed with the signal to the processing workflow.\n\
    \ These can include things like auth or tracing tokens.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\ETX?\STX\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX? &\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX?)*\n\
    \0\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETXA\STX\SYN\SUB# The identity of the worker/client\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETXA\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETXA\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETXA\DC4\NAK\n\
    \\142\STX\n\
    \\STX\EOT\EOT\DC2\EOTG\NULJ\SOH\SUB\129\STX BatchOperationCancellation sends cancel requests to batch workflows.\n\
    \ Keep the parameter in sync with temporal.api.workflowservice.v1.RequestCancelWorkflowExecutionRequest.\n\
    \ Ignore first_execution_run_id because this is used for single workflow operation.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXG\b\"\n\
    \0\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXI\STX\SYN\SUB# The identity of the worker/client\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXI\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXI\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXI\DC4\NAK\n\
    \\197\SOH\n\
    \\STX\EOT\ENQ\DC2\EOTN\NULT\SOH\SUB\184\SOH BatchOperationCancelActivities sends cancel requests to a batch of activities.\n\
    \ Keep the parameter in sync with temporal.api.workflowservice.v1.RequestCancelActivityExecutionRequest.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXN\b&\n\
    \0\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXP\STX\SYN\SUB# The identity of the worker/client\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETXP\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXP\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXP\DC4\NAK\n\
    \\186\SOH\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETXS\STX\DC4\SUB\172\SOH Reason for requesting the cancellation, recorded and available via the PollActivityExecution API.\n\
    \ Not propagated to a worker if an activity attempt is currently running.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETXS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETXS\t\SI\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETXS\DC2\DC3\n\
    \\178\SOH\n\
    \\STX\EOT\ACK\DC2\EOTX\NUL[\SOH\SUB\165\SOH BatchOperationDeletion sends deletion requests to batch workflows.\n\
    \ Keep the parameter in sync with temporal.api.workflowservice.v1.DeleteWorkflowExecutionRequest.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXX\b\RS\n\
    \0\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXZ\STX\SYN\SUB# The identity of the worker/client\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXZ\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXZ\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXZ\DC4\NAK\n\
    \\192\SOH\n\
    \\STX\EOT\a\DC2\EOT_\NUL`\SOH\SUB\179\SOH BatchOperationDeleteActivities sends deletion requests to a batch of activities.\n\
    \ Keep the parameter in sync with temporal.api.workflowservice.v1.DeleteActivityExecutionRequest.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX_\b&\n\
    \\171\SOH\n\
    \\STX\EOT\b\DC2\EOTd\NULs\SOH\SUB\158\SOH BatchOperationReset sends reset requests to batch workflows.\n\
    \ Keep the parameter in sync with temporal.api.workflowservice.v1.ResetWorkflowExecutionRequest.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXd\b\ESC\n\
    \1\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETXf\STX\SYN\SUB$ The identity of the worker/client.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETXf\STX\b\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETXf\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETXf\DC4\NAK\n\
    \m\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETXi\STX2\SUB` Describes what to reset to and how. If set, `reset_type` and `reset_reapply_type` are ignored.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ACK\DC2\ETXi\STX%\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETXi&-\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETXi01\n\
    \)\n\
    \\EOT\EOT\b\STX\STX\DC2\ETXl\STXE\SUB\FS Deprecated. Use `options`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ACK\DC2\ETXl\STX!\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\ETXl\",\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\ETXl/0\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\b\DC2\ETXl1D\n\
    \\r\n\
    \\ACK\EOT\b\STX\STX\b\ETX\DC2\ETXl2C\n\
    \)\n\
    \\EOT\EOT\b\STX\ETX\DC2\ETXn\STXT\SUB\FS Deprecated. Use `options`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\ACK\DC2\ETXn\STX(\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\ETXn);\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\ETXn>?\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\b\DC2\ETXn@S\n\
    \\r\n\
    \\ACK\EOT\b\STX\ETX\b\ETX\DC2\ETXnAR\n\
    \\145\STX\n\
    \\EOT\EOT\b\STX\EOT\DC2\ETXr\STXQ\SUB\131\STX Operations to perform after the workflow has been reset. These operations will be applied\n\
    \ to the *new* run of the workflow execution in the order they are provided.\n\
    \ All operations are applied to the workflow before the first new workflow task is generated\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\EOT\DC2\ETXr\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\ACK\DC2\ETXr\v6\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\SOH\DC2\ETXr7L\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\ETX\DC2\ETXrOP\n\
    \\231\SOH\n\
    \\STX\EOT\t\DC2\ENQw\NUL\129\SOH\SOH\SUB\217\SOH BatchOperationUpdateWorkflowExecutionOptions sends UpdateWorkflowExecutionOptions requests to batch workflows.\n\
    \ Keep the parameters in sync with temporal.api.workflowservice.v1.UpdateWorkflowExecutionOptionsRequest.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETXw\b4\n\
    \1\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETXy\STX\SYN\SUB$ The identity of the worker/client.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\ETXy\STX\b\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETXy\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETXy\DC4\NAK\n\
    \\158\SOH\n\
    \\EOT\EOT\t\STX\SOH\DC2\ETX|\STXS\SUB\144\SOH Update Workflow options that were originally specified via StartWorkflowExecution. Partial updates are accepted and controlled by update_mask.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\ETX|\STX3\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\ETX|4N\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\ETX|QR\n\
    \\186\SOH\n\
    \\EOT\EOT\t\STX\STX\DC2\EOT\128\SOH\STX,\SUB\171\SOH Controls which fields from `workflow_execution_options` will be applied.\n\
    \ To unset a field, set it to null and use the update mask to indicate that it should be mutated.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\ACK\DC2\EOT\128\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\SOH\DC2\EOT\128\SOH\FS'\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\ETX\DC2\EOT\128\SOH*+\n\
    \Z\n\
    \\STX\EOT\n\
    \\DC2\ACK\132\SOH\NUL\151\SOH\SOH\SUBL BatchOperationUnpauseActivities sends unpause requests to batch workflows.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\132\SOH\b'\n\
    \2\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\134\SOH\STX\SYN\SUB$ The identity of the worker/client.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\134\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\134\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\134\SOH\DC4\NAK\n\
    \h\n\
    \\EOT\EOT\n\
    \\b\NUL\DC2\ACK\137\SOH\STX\140\SOH\ETX\SUBX The activity to unpause. If match_all is set to true, all activities will be unpaused.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\b\NUL\SOH\DC2\EOT\137\SOH\b\DLE\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\138\SOH\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\EOT\138\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\138\SOH\v\SI\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\138\SOH\DC2\DC3\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\EOT\139\SOH\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ENQ\DC2\EOT\139\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\EOT\139\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\EOT\139\SOH\NAK\SYN\n\
    \I\n\
    \\EOT\EOT\n\
    \\STX\ETX\DC2\EOT\143\SOH\STX\SUB\SUB; Setting this flag will also reset the number of attempts.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ENQ\DC2\EOT\143\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\SOH\DC2\EOT\143\SOH\a\NAK\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ETX\DC2\EOT\143\SOH\CAN\EM\n\
    \H\n\
    \\EOT\EOT\n\
    \\STX\EOT\DC2\EOT\146\SOH\STX\ESC\SUB: Setting this flag will also reset the heartbeat details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ENQ\DC2\EOT\146\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\SOH\DC2\EOT\146\SOH\a\SYN\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ETX\DC2\EOT\146\SOH\EM\SUB\n\
    \\147\SOH\n\
    \\EOT\EOT\n\
    \\STX\ENQ\DC2\EOT\150\SOH\STX&\SUB\132\SOH If set, the activity will start at a random time within the specified jitter\n\
    \ duration, introducing variability to the start time.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\ACK\DC2\EOT\150\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\SOH\DC2\EOT\150\SOH\ESC!\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\ETX\DC2\EOT\150\SOH$%\n\
    \h\n\
    \\STX\EOT\v\DC2\ACK\154\SOH\NUL\164\SOH\SOH\SUBZ BatchOperationTriggerWorkflowRule sends TriggerWorkflowRule requests to batch workflows.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\154\SOH\b)\n\
    \2\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\156\SOH\STX\SYN\SUB$ The identity of the worker/client.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\EOT\156\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\156\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\156\SOH\DC4\NAK\n\
    \\SO\n\
    \\EOT\EOT\v\b\NUL\DC2\ACK\158\SOH\STX\163\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\v\b\NUL\SOH\DC2\EOT\158\SOH\b\f\n\
    \$\n\
    \\EOT\EOT\v\STX\SOH\DC2\EOT\160\SOH\EOT\DC2\SUB\SYN ID of existing rule.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\EOT\160\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\EOT\160\SOH\v\r\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\EOT\160\SOH\DLE\DC1\n\
    \]\n\
    \\EOT\EOT\v\STX\STX\DC2\EOT\162\SOH\EOT4\SUBO Rule specification to be applied to the workflow without creating a new rule.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ACK\DC2\EOT\162\SOH\EOT*\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\EOT\162\SOH+/\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\EOT\162\SOH23\n\
    \\166\SOH\n\
    \\STX\EOT\f\DC2\ACK\168\SOH\NUL\195\SOH\SOH\SUB\151\SOH BatchOperationResetActivities sends activity reset requests in a batch.\n\
    \ NOTE: keep in sync with temporal.api.workflowservice.v1.ResetActivityRequest\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\168\SOH\b%\n\
    \2\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\170\SOH\STX\SYN\SUB$ The identity of the worker/client.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\EOT\170\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\170\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\170\SOH\DC4\NAK\n\
    \e\n\
    \\EOT\EOT\f\b\NUL\DC2\ACK\173\SOH\STX\176\SOH\ETX\SUBU The activities to reset. If match_all is set to true, all activities will be reset.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\b\NUL\SOH\DC2\EOT\173\SOH\b\DLE\n\
    \\f\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\174\SOH\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\EOT\174\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\174\SOH\v\SI\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\174\SOH\DC2\DC3\n\
    \\f\n\
    \\EOT\EOT\f\STX\STX\DC2\EOT\175\SOH\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ENQ\DC2\EOT\175\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\SOH\DC2\EOT\175\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ETX\DC2\EOT\175\SOH\NAK\SYN\n\
    \I\n\
    \\EOT\EOT\f\STX\ETX\DC2\EOT\179\SOH\STX\SUB\SUB; Setting this flag will also reset the number of attempts.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\ENQ\DC2\EOT\179\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\SOH\DC2\EOT\179\SOH\a\NAK\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\ETX\DC2\EOT\179\SOH\CAN\EM\n\
    \H\n\
    \\EOT\EOT\f\STX\EOT\DC2\EOT\182\SOH\STX\ESC\SUB: Setting this flag will also reset the heartbeat details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\ENQ\DC2\EOT\182\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\SOH\DC2\EOT\182\SOH\a\SYN\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\ETX\DC2\EOT\182\SOH\EM\SUB\n\
    \H\n\
    \\EOT\EOT\f\STX\ENQ\DC2\EOT\185\SOH\STX\ETB\SUB: If activity is paused, it will remain paused after reset\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\ENQ\DC2\EOT\185\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\SOH\DC2\EOT\185\SOH\a\DC2\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\ETX\DC2\EOT\185\SOH\NAK\SYN\n\
    \\147\SOH\n\
    \\EOT\EOT\f\STX\ACK\DC2\EOT\189\SOH\STX&\SUB\132\SOH If set, the activity will start at a random time within the specified jitter\n\
    \ duration, introducing variability to the start time.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ACK\ACK\DC2\EOT\189\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ACK\SOH\DC2\EOT\189\SOH\ESC!\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ACK\ETX\DC2\EOT\189\SOH$%\n\
    \\197\SOH\n\
    \\EOT\EOT\f\STX\a\DC2\EOT\194\SOH\STX$\SUB\182\SOH If set, the activity options will be restored to the defaults.\n\
    \ Default options are then options activity was created with.\n\
    \ They are part of the first ActivityTaskScheduled event.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\a\ENQ\DC2\EOT\194\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\f\STX\a\SOH\DC2\EOT\194\SOH\a\US\n\
    \\r\n\
    \\ENQ\EOT\f\STX\a\ETX\DC2\EOT\194\SOH\"#\n\
    \\185\SOH\n\
    \\STX\EOT\r\DC2\ACK\199\SOH\NUL\221\SOH\SOH\SUB\170\SOH BatchOperationUpdateActivityOptions sends an update-activity-options requests in a batch.\n\
    \ NOTE: keep in sync with temporal.api.workflowservice.v1.UpdateActivityRequest\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\199\SOH\b+\n\
    \2\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\201\SOH\STX\SYN\SUB$ The identity of the worker/client.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\EOT\201\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\201\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\201\SOH\DC4\NAK\n\
    \f\n\
    \\EOT\EOT\r\b\NUL\DC2\ACK\204\SOH\STX\207\SOH\ETX\SUBV The activity to update. If match_all is set to true, all activities will be updated.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\b\NUL\SOH\DC2\EOT\204\SOH\b\DLE\n\
    \\f\n\
    \\EOT\EOT\r\STX\SOH\DC2\EOT\205\SOH\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ENQ\DC2\EOT\205\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\EOT\205\SOH\v\SI\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\EOT\205\SOH\DC2\DC3\n\
    \\f\n\
    \\EOT\EOT\r\STX\STX\DC2\EOT\206\SOH\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ENQ\DC2\EOT\206\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\SOH\DC2\EOT\206\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ETX\DC2\EOT\206\SOH\NAK\SYN\n\
    \d\n\
    \\EOT\EOT\r\STX\ETX\DC2\EOT\210\SOH\STX@\SUBV Update Activity options. Partial updates are accepted and controlled by update_mask.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\ACK\DC2\EOT\210\SOH\STX*\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\SOH\DC2\EOT\210\SOH+;\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\ETX\DC2\EOT\210\SOH>?\n\
    \M\n\
    \\EOT\EOT\r\STX\EOT\DC2\EOT\213\SOH\STX,\SUB? Controls which fields from `activity_options` will be applied\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\EOT\ACK\DC2\EOT\213\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\r\STX\EOT\SOH\DC2\EOT\213\SOH\FS'\n\
    \\r\n\
    \\ENQ\EOT\r\STX\EOT\ETX\DC2\EOT\213\SOH*+\n\
    \\212\STX\n\
    \\EOT\EOT\r\STX\ENQ\DC2\EOT\220\SOH\STX\FS\SUB\197\STX If set, the activity options will be restored to the default.\n\
    \ Default options are then options activity was created with.\n\
    \ They are part of the first ActivityTaskScheduled event.\n\
    \ This flag cannot be combined with any other option; if you supply\n\
    \ restore_original together with other options, the request will be rejected.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ENQ\ENQ\DC2\EOT\220\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ENQ\SOH\DC2\EOT\220\SOH\a\ETB\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ENQ\ETX\DC2\EOT\220\SOH\SUB\ESCb\ACKproto3"