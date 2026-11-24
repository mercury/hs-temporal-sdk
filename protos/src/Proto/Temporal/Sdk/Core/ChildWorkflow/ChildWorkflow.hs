{- This file was auto-generated from temporal/sdk/core/child_workflow/child_workflow.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow (
        Cancellation(), ChildWorkflowCancellationType(..),
        ChildWorkflowCancellationType(),
        ChildWorkflowCancellationType'UnrecognizedValue,
        ChildWorkflowResult(), ChildWorkflowResult'Status(..),
        _ChildWorkflowResult'Completed, _ChildWorkflowResult'Failed,
        _ChildWorkflowResult'Cancelled, Failure(), ParentClosePolicy(..),
        ParentClosePolicy(), ParentClosePolicy'UnrecognizedValue,
        StartChildWorkflowExecutionFailedCause(..),
        StartChildWorkflowExecutionFailedCause(),
        StartChildWorkflowExecutionFailedCause'UnrecognizedValue, Success()
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
import qualified Proto.Temporal.Api.Common.V1.Message
import qualified Proto.Temporal.Api.Failure.V1.Message
import qualified Proto.Temporal.Sdk.Core.Common.Common
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow_Fields.failure' @:: Lens' Cancellation Proto.Temporal.Api.Failure.V1.Message.Failure@
         * 'Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow_Fields.maybe'failure' @:: Lens' Cancellation (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@ -}
data Cancellation
  = Cancellation'_constructor {_Cancellation'failure :: !(Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure),
                               _Cancellation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Cancellation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Cancellation "failure" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cancellation'failure
           (\ x__ y__ -> x__ {_Cancellation'failure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cancellation "maybe'failure" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cancellation'failure
           (\ x__ y__ -> x__ {_Cancellation'failure = y__}))
        Prelude.id
instance Data.ProtoLens.Message Cancellation where
  messageName _
    = Data.Text.pack "coresdk.child_workflow.Cancellation"
  packedMessageDescriptor _
    = "\n\
      \\fCancellation\DC2:\n\
      \\afailure\CAN\SOH \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        failure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failure")) ::
              Data.ProtoLens.FieldDescriptor Cancellation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, failure__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Cancellation'_unknownFields
        (\ x__ y__ -> x__ {_Cancellation'_unknownFields = y__})
  defMessage
    = Cancellation'_constructor
        {_Cancellation'failure = Prelude.Nothing,
         _Cancellation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Cancellation -> Data.ProtoLens.Encoding.Bytes.Parser Cancellation
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
                                       "failure"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"failure") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Cancellation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'failure") _x
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
instance Control.DeepSeq.NFData Cancellation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Cancellation'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Cancellation'failure x__) ())
newtype ChildWorkflowCancellationType'UnrecognizedValue
  = ChildWorkflowCancellationType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ChildWorkflowCancellationType
  = ABANDON |
    TRY_CANCEL |
    WAIT_CANCELLATION_COMPLETED |
    WAIT_CANCELLATION_REQUESTED |
    ChildWorkflowCancellationType'Unrecognized !ChildWorkflowCancellationType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ChildWorkflowCancellationType where
  maybeToEnum 0 = Prelude.Just ABANDON
  maybeToEnum 1 = Prelude.Just TRY_CANCEL
  maybeToEnum 2 = Prelude.Just WAIT_CANCELLATION_COMPLETED
  maybeToEnum 3 = Prelude.Just WAIT_CANCELLATION_REQUESTED
  maybeToEnum k
    = Prelude.Just
        (ChildWorkflowCancellationType'Unrecognized
           (ChildWorkflowCancellationType'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum ABANDON = "ABANDON"
  showEnum TRY_CANCEL = "TRY_CANCEL"
  showEnum WAIT_CANCELLATION_COMPLETED
    = "WAIT_CANCELLATION_COMPLETED"
  showEnum WAIT_CANCELLATION_REQUESTED
    = "WAIT_CANCELLATION_REQUESTED"
  showEnum
    (ChildWorkflowCancellationType'Unrecognized (ChildWorkflowCancellationType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "ABANDON" = Prelude.Just ABANDON
    | (Prelude.==) k "TRY_CANCEL" = Prelude.Just TRY_CANCEL
    | (Prelude.==) k "WAIT_CANCELLATION_COMPLETED"
    = Prelude.Just WAIT_CANCELLATION_COMPLETED
    | (Prelude.==) k "WAIT_CANCELLATION_REQUESTED"
    = Prelude.Just WAIT_CANCELLATION_REQUESTED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ChildWorkflowCancellationType where
  minBound = ABANDON
  maxBound = WAIT_CANCELLATION_REQUESTED
instance Prelude.Enum ChildWorkflowCancellationType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ChildWorkflowCancellationType: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum ABANDON = 0
  fromEnum TRY_CANCEL = 1
  fromEnum WAIT_CANCELLATION_COMPLETED = 2
  fromEnum WAIT_CANCELLATION_REQUESTED = 3
  fromEnum
    (ChildWorkflowCancellationType'Unrecognized (ChildWorkflowCancellationType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ WAIT_CANCELLATION_REQUESTED
    = Prelude.error
        "ChildWorkflowCancellationType.succ: bad argument WAIT_CANCELLATION_REQUESTED. This value would be out of bounds."
  succ ABANDON = TRY_CANCEL
  succ TRY_CANCEL = WAIT_CANCELLATION_COMPLETED
  succ WAIT_CANCELLATION_COMPLETED = WAIT_CANCELLATION_REQUESTED
  succ (ChildWorkflowCancellationType'Unrecognized _)
    = Prelude.error
        "ChildWorkflowCancellationType.succ: bad argument: unrecognized value"
  pred ABANDON
    = Prelude.error
        "ChildWorkflowCancellationType.pred: bad argument ABANDON. This value would be out of bounds."
  pred TRY_CANCEL = ABANDON
  pred WAIT_CANCELLATION_COMPLETED = TRY_CANCEL
  pred WAIT_CANCELLATION_REQUESTED = WAIT_CANCELLATION_COMPLETED
  pred (ChildWorkflowCancellationType'Unrecognized _)
    = Prelude.error
        "ChildWorkflowCancellationType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ChildWorkflowCancellationType where
  fieldDefault = ABANDON
instance Control.DeepSeq.NFData ChildWorkflowCancellationType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow_Fields.maybe'status' @:: Lens' ChildWorkflowResult (Prelude.Maybe ChildWorkflowResult'Status)@
         * 'Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow_Fields.maybe'completed' @:: Lens' ChildWorkflowResult (Prelude.Maybe Success)@
         * 'Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow_Fields.completed' @:: Lens' ChildWorkflowResult Success@
         * 'Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow_Fields.maybe'failed' @:: Lens' ChildWorkflowResult (Prelude.Maybe Failure)@
         * 'Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow_Fields.failed' @:: Lens' ChildWorkflowResult Failure@
         * 'Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow_Fields.maybe'cancelled' @:: Lens' ChildWorkflowResult (Prelude.Maybe Cancellation)@
         * 'Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow_Fields.cancelled' @:: Lens' ChildWorkflowResult Cancellation@ -}
data ChildWorkflowResult
  = ChildWorkflowResult'_constructor {_ChildWorkflowResult'status :: !(Prelude.Maybe ChildWorkflowResult'Status),
                                      _ChildWorkflowResult'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ChildWorkflowResult where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ChildWorkflowResult'Status
  = ChildWorkflowResult'Completed !Success |
    ChildWorkflowResult'Failed !Failure |
    ChildWorkflowResult'Cancelled !Cancellation
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ChildWorkflowResult "maybe'status" (Prelude.Maybe ChildWorkflowResult'Status) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ChildWorkflowResult'status
           (\ x__ y__ -> x__ {_ChildWorkflowResult'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ChildWorkflowResult "maybe'completed" (Prelude.Maybe Success) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ChildWorkflowResult'status
           (\ x__ y__ -> x__ {_ChildWorkflowResult'status = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ChildWorkflowResult'Completed x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ChildWorkflowResult'Completed y__))
instance Data.ProtoLens.Field.HasField ChildWorkflowResult "completed" Success where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ChildWorkflowResult'status
           (\ x__ y__ -> x__ {_ChildWorkflowResult'status = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ChildWorkflowResult'Completed x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ChildWorkflowResult'Completed y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ChildWorkflowResult "maybe'failed" (Prelude.Maybe Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ChildWorkflowResult'status
           (\ x__ y__ -> x__ {_ChildWorkflowResult'status = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ChildWorkflowResult'Failed x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ChildWorkflowResult'Failed y__))
instance Data.ProtoLens.Field.HasField ChildWorkflowResult "failed" Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ChildWorkflowResult'status
           (\ x__ y__ -> x__ {_ChildWorkflowResult'status = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ChildWorkflowResult'Failed x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ChildWorkflowResult'Failed y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ChildWorkflowResult "maybe'cancelled" (Prelude.Maybe Cancellation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ChildWorkflowResult'status
           (\ x__ y__ -> x__ {_ChildWorkflowResult'status = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ChildWorkflowResult'Cancelled x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ChildWorkflowResult'Cancelled y__))
instance Data.ProtoLens.Field.HasField ChildWorkflowResult "cancelled" Cancellation where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ChildWorkflowResult'status
           (\ x__ y__ -> x__ {_ChildWorkflowResult'status = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ChildWorkflowResult'Cancelled x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ChildWorkflowResult'Cancelled y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ChildWorkflowResult where
  messageName _
    = Data.Text.pack "coresdk.child_workflow.ChildWorkflowResult"
  packedMessageDescriptor _
    = "\n\
      \\DC3ChildWorkflowResult\DC2?\n\
      \\tcompleted\CAN\SOH \SOH(\v2\US.coresdk.child_workflow.SuccessH\NULR\tcompleted\DC29\n\
      \\ACKfailed\CAN\STX \SOH(\v2\US.coresdk.child_workflow.FailureH\NULR\ACKfailed\DC2D\n\
      \\tcancelled\CAN\ETX \SOH(\v2$.coresdk.child_workflow.CancellationH\NULR\tcancelledB\b\n\
      \\ACKstatus"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        completed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "completed"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Success)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'completed")) ::
              Data.ProtoLens.FieldDescriptor ChildWorkflowResult
        failed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failed"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failed")) ::
              Data.ProtoLens.FieldDescriptor ChildWorkflowResult
        cancelled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancelled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Cancellation)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cancelled")) ::
              Data.ProtoLens.FieldDescriptor ChildWorkflowResult
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, completed__field_descriptor),
           (Data.ProtoLens.Tag 2, failed__field_descriptor),
           (Data.ProtoLens.Tag 3, cancelled__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ChildWorkflowResult'_unknownFields
        (\ x__ y__ -> x__ {_ChildWorkflowResult'_unknownFields = y__})
  defMessage
    = ChildWorkflowResult'_constructor
        {_ChildWorkflowResult'status = Prelude.Nothing,
         _ChildWorkflowResult'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ChildWorkflowResult
          -> Data.ProtoLens.Encoding.Bytes.Parser ChildWorkflowResult
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
                                       "completed"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"completed") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "failed"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"failed") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cancelled"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"cancelled") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ChildWorkflowResult"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'status") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (ChildWorkflowResult'Completed v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (ChildWorkflowResult'Failed v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (ChildWorkflowResult'Cancelled v))
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
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ChildWorkflowResult where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ChildWorkflowResult'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ChildWorkflowResult'status x__) ())
instance Control.DeepSeq.NFData ChildWorkflowResult'Status where
  rnf (ChildWorkflowResult'Completed x__) = Control.DeepSeq.rnf x__
  rnf (ChildWorkflowResult'Failed x__) = Control.DeepSeq.rnf x__
  rnf (ChildWorkflowResult'Cancelled x__) = Control.DeepSeq.rnf x__
_ChildWorkflowResult'Completed ::
  Data.ProtoLens.Prism.Prism' ChildWorkflowResult'Status Success
_ChildWorkflowResult'Completed
  = Data.ProtoLens.Prism.prism'
      ChildWorkflowResult'Completed
      (\ p__
         -> case p__ of
              (ChildWorkflowResult'Completed p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ChildWorkflowResult'Failed ::
  Data.ProtoLens.Prism.Prism' ChildWorkflowResult'Status Failure
_ChildWorkflowResult'Failed
  = Data.ProtoLens.Prism.prism'
      ChildWorkflowResult'Failed
      (\ p__
         -> case p__ of
              (ChildWorkflowResult'Failed p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ChildWorkflowResult'Cancelled ::
  Data.ProtoLens.Prism.Prism' ChildWorkflowResult'Status Cancellation
_ChildWorkflowResult'Cancelled
  = Data.ProtoLens.Prism.prism'
      ChildWorkflowResult'Cancelled
      (\ p__
         -> case p__ of
              (ChildWorkflowResult'Cancelled p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow_Fields.failure' @:: Lens' Failure Proto.Temporal.Api.Failure.V1.Message.Failure@
         * 'Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow_Fields.maybe'failure' @:: Lens' Failure (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@ -}
data Failure
  = Failure'_constructor {_Failure'failure :: !(Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure),
                          _Failure'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Failure where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Failure "failure" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failure (\ x__ y__ -> x__ {_Failure'failure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Failure "maybe'failure" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'failure (\ x__ y__ -> x__ {_Failure'failure = y__}))
        Prelude.id
instance Data.ProtoLens.Message Failure where
  messageName _ = Data.Text.pack "coresdk.child_workflow.Failure"
  packedMessageDescriptor _
    = "\n\
      \\aFailure\DC2:\n\
      \\afailure\CAN\SOH \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        failure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failure")) ::
              Data.ProtoLens.FieldDescriptor Failure
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, failure__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Failure'_unknownFields
        (\ x__ y__ -> x__ {_Failure'_unknownFields = y__})
  defMessage
    = Failure'_constructor
        {_Failure'failure = Prelude.Nothing, _Failure'_unknownFields = []}
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
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "failure"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"failure") y x)
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
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'failure") _x
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
instance Control.DeepSeq.NFData Failure where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Failure'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Failure'failure x__) ())
newtype ParentClosePolicy'UnrecognizedValue
  = ParentClosePolicy'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ParentClosePolicy
  = PARENT_CLOSE_POLICY_UNSPECIFIED |
    PARENT_CLOSE_POLICY_TERMINATE |
    PARENT_CLOSE_POLICY_ABANDON |
    PARENT_CLOSE_POLICY_REQUEST_CANCEL |
    ParentClosePolicy'Unrecognized !ParentClosePolicy'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ParentClosePolicy where
  maybeToEnum 0 = Prelude.Just PARENT_CLOSE_POLICY_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just PARENT_CLOSE_POLICY_TERMINATE
  maybeToEnum 2 = Prelude.Just PARENT_CLOSE_POLICY_ABANDON
  maybeToEnum 3 = Prelude.Just PARENT_CLOSE_POLICY_REQUEST_CANCEL
  maybeToEnum k
    = Prelude.Just
        (ParentClosePolicy'Unrecognized
           (ParentClosePolicy'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum PARENT_CLOSE_POLICY_UNSPECIFIED
    = "PARENT_CLOSE_POLICY_UNSPECIFIED"
  showEnum PARENT_CLOSE_POLICY_TERMINATE
    = "PARENT_CLOSE_POLICY_TERMINATE"
  showEnum PARENT_CLOSE_POLICY_ABANDON
    = "PARENT_CLOSE_POLICY_ABANDON"
  showEnum PARENT_CLOSE_POLICY_REQUEST_CANCEL
    = "PARENT_CLOSE_POLICY_REQUEST_CANCEL"
  showEnum
    (ParentClosePolicy'Unrecognized (ParentClosePolicy'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "PARENT_CLOSE_POLICY_UNSPECIFIED"
    = Prelude.Just PARENT_CLOSE_POLICY_UNSPECIFIED
    | (Prelude.==) k "PARENT_CLOSE_POLICY_TERMINATE"
    = Prelude.Just PARENT_CLOSE_POLICY_TERMINATE
    | (Prelude.==) k "PARENT_CLOSE_POLICY_ABANDON"
    = Prelude.Just PARENT_CLOSE_POLICY_ABANDON
    | (Prelude.==) k "PARENT_CLOSE_POLICY_REQUEST_CANCEL"
    = Prelude.Just PARENT_CLOSE_POLICY_REQUEST_CANCEL
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ParentClosePolicy where
  minBound = PARENT_CLOSE_POLICY_UNSPECIFIED
  maxBound = PARENT_CLOSE_POLICY_REQUEST_CANCEL
instance Prelude.Enum ParentClosePolicy where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ParentClosePolicy: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum PARENT_CLOSE_POLICY_UNSPECIFIED = 0
  fromEnum PARENT_CLOSE_POLICY_TERMINATE = 1
  fromEnum PARENT_CLOSE_POLICY_ABANDON = 2
  fromEnum PARENT_CLOSE_POLICY_REQUEST_CANCEL = 3
  fromEnum
    (ParentClosePolicy'Unrecognized (ParentClosePolicy'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ PARENT_CLOSE_POLICY_REQUEST_CANCEL
    = Prelude.error
        "ParentClosePolicy.succ: bad argument PARENT_CLOSE_POLICY_REQUEST_CANCEL. This value would be out of bounds."
  succ PARENT_CLOSE_POLICY_UNSPECIFIED
    = PARENT_CLOSE_POLICY_TERMINATE
  succ PARENT_CLOSE_POLICY_TERMINATE = PARENT_CLOSE_POLICY_ABANDON
  succ PARENT_CLOSE_POLICY_ABANDON
    = PARENT_CLOSE_POLICY_REQUEST_CANCEL
  succ (ParentClosePolicy'Unrecognized _)
    = Prelude.error
        "ParentClosePolicy.succ: bad argument: unrecognized value"
  pred PARENT_CLOSE_POLICY_UNSPECIFIED
    = Prelude.error
        "ParentClosePolicy.pred: bad argument PARENT_CLOSE_POLICY_UNSPECIFIED. This value would be out of bounds."
  pred PARENT_CLOSE_POLICY_TERMINATE
    = PARENT_CLOSE_POLICY_UNSPECIFIED
  pred PARENT_CLOSE_POLICY_ABANDON = PARENT_CLOSE_POLICY_TERMINATE
  pred PARENT_CLOSE_POLICY_REQUEST_CANCEL
    = PARENT_CLOSE_POLICY_ABANDON
  pred (ParentClosePolicy'Unrecognized _)
    = Prelude.error
        "ParentClosePolicy.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ParentClosePolicy where
  fieldDefault = PARENT_CLOSE_POLICY_UNSPECIFIED
instance Control.DeepSeq.NFData ParentClosePolicy where
  rnf x__ = Prelude.seq x__ ()
newtype StartChildWorkflowExecutionFailedCause'UnrecognizedValue
  = StartChildWorkflowExecutionFailedCause'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data StartChildWorkflowExecutionFailedCause
  = START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_UNSPECIFIED |
    START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_WORKFLOW_ALREADY_EXISTS |
    START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_NAMESPACE_NOT_FOUND |
    START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_INVALID_VERSIONING_OVERRIDE |
    StartChildWorkflowExecutionFailedCause'Unrecognized !StartChildWorkflowExecutionFailedCause'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum StartChildWorkflowExecutionFailedCause where
  maybeToEnum 0
    = Prelude.Just
        START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just
        START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_WORKFLOW_ALREADY_EXISTS
  maybeToEnum 2
    = Prelude.Just
        START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_NAMESPACE_NOT_FOUND
  maybeToEnum 3
    = Prelude.Just
        START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_INVALID_VERSIONING_OVERRIDE
  maybeToEnum k
    = Prelude.Just
        (StartChildWorkflowExecutionFailedCause'Unrecognized
           (StartChildWorkflowExecutionFailedCause'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_UNSPECIFIED
    = "START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_UNSPECIFIED"
  showEnum
    START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_WORKFLOW_ALREADY_EXISTS
    = "START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_WORKFLOW_ALREADY_EXISTS"
  showEnum
    START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_NAMESPACE_NOT_FOUND
    = "START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_NAMESPACE_NOT_FOUND"
  showEnum
    START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_INVALID_VERSIONING_OVERRIDE
    = "START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_INVALID_VERSIONING_OVERRIDE"
  showEnum
    (StartChildWorkflowExecutionFailedCause'Unrecognized (StartChildWorkflowExecutionFailedCause'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==)
        k "START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_UNSPECIFIED"
    = Prelude.Just
        START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_UNSPECIFIED
    | (Prelude.==)
        k
        "START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_WORKFLOW_ALREADY_EXISTS"
    = Prelude.Just
        START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_WORKFLOW_ALREADY_EXISTS
    | (Prelude.==)
        k "START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_NAMESPACE_NOT_FOUND"
    = Prelude.Just
        START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_NAMESPACE_NOT_FOUND
    | (Prelude.==)
        k
        "START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_INVALID_VERSIONING_OVERRIDE"
    = Prelude.Just
        START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_INVALID_VERSIONING_OVERRIDE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded StartChildWorkflowExecutionFailedCause where
  minBound = START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_UNSPECIFIED
  maxBound
    = START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_INVALID_VERSIONING_OVERRIDE
instance Prelude.Enum StartChildWorkflowExecutionFailedCause where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum StartChildWorkflowExecutionFailedCause: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_UNSPECIFIED
    = 0
  fromEnum
    START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_WORKFLOW_ALREADY_EXISTS
    = 1
  fromEnum
    START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_NAMESPACE_NOT_FOUND
    = 2
  fromEnum
    START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_INVALID_VERSIONING_OVERRIDE
    = 3
  fromEnum
    (StartChildWorkflowExecutionFailedCause'Unrecognized (StartChildWorkflowExecutionFailedCause'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ
    START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_INVALID_VERSIONING_OVERRIDE
    = Prelude.error
        "StartChildWorkflowExecutionFailedCause.succ: bad argument START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_INVALID_VERSIONING_OVERRIDE. This value would be out of bounds."
  succ START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_UNSPECIFIED
    = START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_WORKFLOW_ALREADY_EXISTS
  succ
    START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_WORKFLOW_ALREADY_EXISTS
    = START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_NAMESPACE_NOT_FOUND
  succ
    START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_NAMESPACE_NOT_FOUND
    = START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_INVALID_VERSIONING_OVERRIDE
  succ (StartChildWorkflowExecutionFailedCause'Unrecognized _)
    = Prelude.error
        "StartChildWorkflowExecutionFailedCause.succ: bad argument: unrecognized value"
  pred START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_UNSPECIFIED
    = Prelude.error
        "StartChildWorkflowExecutionFailedCause.pred: bad argument START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_UNSPECIFIED. This value would be out of bounds."
  pred
    START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_WORKFLOW_ALREADY_EXISTS
    = START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_UNSPECIFIED
  pred
    START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_NAMESPACE_NOT_FOUND
    = START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_WORKFLOW_ALREADY_EXISTS
  pred
    START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_INVALID_VERSIONING_OVERRIDE
    = START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_NAMESPACE_NOT_FOUND
  pred (StartChildWorkflowExecutionFailedCause'Unrecognized _)
    = Prelude.error
        "StartChildWorkflowExecutionFailedCause.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault StartChildWorkflowExecutionFailedCause where
  fieldDefault
    = START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_UNSPECIFIED
instance Control.DeepSeq.NFData StartChildWorkflowExecutionFailedCause where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow_Fields.result' @:: Lens' Success Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow_Fields.maybe'result' @:: Lens' Success (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data Success
  = Success'_constructor {_Success'result :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                          _Success'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Success where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Success "result" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Success'result (\ x__ y__ -> x__ {_Success'result = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Success "maybe'result" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Success'result (\ x__ y__ -> x__ {_Success'result = y__}))
        Prelude.id
instance Data.ProtoLens.Message Success where
  messageName _ = Data.Text.pack "coresdk.child_workflow.Success"
  packedMessageDescriptor _
    = "\n\
      \\aSuccess\DC27\n\
      \\ACKresult\CAN\SOH \SOH(\v2\US.temporal.api.common.v1.PayloadR\ACKresult"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        result__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'result")) ::
              Data.ProtoLens.FieldDescriptor Success
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, result__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Success'_unknownFields
        (\ x__ y__ -> x__ {_Success'_unknownFields = y__})
  defMessage
    = Success'_constructor
        {_Success'result = Prelude.Nothing, _Success'_unknownFields = []}
  parseMessage
    = let
        loop :: Success -> Data.ProtoLens.Encoding.Bytes.Parser Success
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
          (do loop Data.ProtoLens.defMessage) "Success"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'result") _x
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
instance Control.DeepSeq.NFData Success where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Success'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Success'result x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \5temporal/sdk/core/child_workflow/child_workflow.proto\DC2\SYNcoresdk.child_workflow\SUB$temporal/api/common/v1/message.proto\SUB%temporal/api/failure/v1/message.proto\SUB%temporal/sdk/core/common/common.proto\"\225\SOH\n\
    \\DC3ChildWorkflowResult\DC2?\n\
    \\tcompleted\CAN\SOH \SOH(\v2\US.coresdk.child_workflow.SuccessH\NULR\tcompleted\DC29\n\
    \\ACKfailed\CAN\STX \SOH(\v2\US.coresdk.child_workflow.FailureH\NULR\ACKfailed\DC2D\n\
    \\tcancelled\CAN\ETX \SOH(\v2$.coresdk.child_workflow.CancellationH\NULR\tcancelledB\b\n\
    \\ACKstatus\"B\n\
    \\aSuccess\DC27\n\
    \\ACKresult\CAN\SOH \SOH(\v2\US.temporal.api.common.v1.PayloadR\ACKresult\"E\n\
    \\aFailure\DC2:\n\
    \\afailure\CAN\SOH \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure\"J\n\
    \\fCancellation\DC2:\n\
    \\afailure\CAN\SOH \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure*\164\SOH\n\
    \\DC1ParentClosePolicy\DC2#\n\
    \\USPARENT_CLOSE_POLICY_UNSPECIFIED\DLE\NUL\DC2!\n\
    \\GSPARENT_CLOSE_POLICY_TERMINATE\DLE\SOH\DC2\US\n\
    \\ESCPARENT_CLOSE_POLICY_ABANDON\DLE\STX\DC2&\n\
    \\"PARENT_CLOSE_POLICY_REQUEST_CANCEL\DLE\ETX*\192\STX\n\
    \&StartChildWorkflowExecutionFailedCause\DC2;\n\
    \7START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_UNSPECIFIED\DLE\NUL\DC2G\n\
    \CSTART_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_WORKFLOW_ALREADY_EXISTS\DLE\SOH\DC2C\n\
    \?START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_NAMESPACE_NOT_FOUND\DLE\STX\DC2K\n\
    \GSTART_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_INVALID_VERSIONING_OVERRIDE\DLE\ETX*~\n\
    \\GSChildWorkflowCancellationType\DC2\v\n\
    \\aABANDON\DLE\NUL\DC2\SO\n\
    \\n\
    \TRY_CANCEL\DLE\SOH\DC2\US\n\
    \\ESCWAIT_CANCELLATION_COMPLETED\DLE\STX\DC2\US\n\
    \\ESCWAIT_CANCELLATION_REQUESTED\DLE\ETXB3\234\STX0Temporalio::Internal::Bridge::Api::ChildWorkflowJ\181\DC1\n\
    \\ACK\DC2\EOT\NUL\NULB\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\US\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NULI\n\
    \\t\n\
    \\STX\b-\DC2\ETX\ETX\NULI\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL.\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL/\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL/\n\
    \@\n\
    \\STX\EOT\NUL\DC2\EOT\n\
    \\NUL\DLE\SOH\SUB4 Used by core to resolve child workflow executions.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\n\
    \\b\ESC\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\v\EOT\SI\ENQ\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\v\n\
    \\DLE\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\f\b\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\f\b\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\f\DLE\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\f\FS\GS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\r\b\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\r\b\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\r\DLE\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\r\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\SO\b#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\SO\b\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\SO\NAK\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\SO!\"\n\
    \J\n\
    \\STX\EOT\SOH\DC2\EOT\DC3\NUL\NAK\SOH\SUB> Used in ChildWorkflowResult to report successful completion.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DC3\b\SI\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\DC4\EOT.\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\DC4\EOT\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\DC4#)\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\DC4,-\n\
    \\150\SOH\n\
    \\STX\EOT\STX\DC2\EOT\EM\NUL\ESC\SOH\SUB\137\SOH Used in ChildWorkflowResult to report non successful outcomes such as\n\
    \ application failures, timeouts, terminations, and cancellations.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\EM\b\SI\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\SUB\EOT0\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX\SUB\EOT#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\SUB$+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\SUB./\n\
    \\135\SOH\n\
    \\STX\EOT\ETX\DC2\EOT\US\NUL!\SOH\SUB{ Used in ChildWorkflowResult to report cancellation.\n\
    \ Failure should be ChildWorkflowFailure with a CanceledFailure cause.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\US\b\DC4\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX \EOT0\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETX \EOT#\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX $+\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX ./\n\
    \j\n\
    \\STX\ENQ\NUL\DC2\EOT%\NUL.\SOH\SUB^ Used by the service to determine the fate of a child workflow\n\
    \ in case its parent is closed.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX%\ENQ\SYN\n\
    \0\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX'\EOT(\SUB# Let's the server set the default.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX'\EOT#\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX'&'\n\
    \>\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX)\EOT&\SUB1 Terminate means terminating the child workflow.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX)\EOT!\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX)$%\n\
    \F\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX+\EOT$\SUB9 Abandon means not doing anything on the child workflow.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX+\EOT\US\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX+\"#\n\
    \J\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX-\EOT+\SUB= Cancel means requesting cancellation on the child workflow.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX-\EOT&\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX-)*\n\
    \B\n\
    \\STX\ENQ\SOH\DC2\EOT1\NUL6\SOH\SUB6 Possible causes of failure to start a child workflow\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\SOH\SOH\DC2\ETX1\ENQ+\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\NUL\DC2\ETX2\EOT@\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\SOH\DC2\ETX2\EOT;\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\STX\DC2\ETX2>?\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\SOH\DC2\ETX3\EOTL\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\SOH\DC2\ETX3\EOTG\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\STX\DC2\ETX3JK\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\STX\DC2\ETX4\EOTH\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\STX\SOH\DC2\ETX4\EOTC\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\STX\STX\DC2\ETX4FG\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\ETX\DC2\ETX5\EOTP\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ETX\SOH\DC2\ETX5\EOTK\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ETX\STX\DC2\ETX5NO\n\
    \_\n\
    \\STX\ENQ\STX\DC2\EOT9\NULB\SOH\SUBS Controls at which point to report back to lang when a child workflow is cancelled\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\STX\SOH\DC2\ETX9\ENQ\"\n\
    \U\n\
    \\EOT\ENQ\STX\STX\NUL\DC2\ETX;\EOT\DLE\SUBH Do not request cancellation of the child workflow if already scheduled\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\NUL\SOH\DC2\ETX;\EOT\v\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\NUL\STX\DC2\ETX;\SO\SI\n\
    \a\n\
    \\EOT\ENQ\STX\STX\SOH\DC2\ETX=\EOT\DC3\SUBT Initiate a cancellation request and immediately report cancellation to the parent.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\SOH\SOH\DC2\ETX=\EOT\SO\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\SOH\STX\DC2\ETX=\DC1\DC2\n\
    \6\n\
    \\EOT\ENQ\STX\STX\STX\DC2\ETX?\EOT$\SUB) Wait for child cancellation completion.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\STX\SOH\DC2\ETX?\EOT\US\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\STX\STX\DC2\ETX?\"#\n\
    \i\n\
    \\EOT\ENQ\STX\STX\ETX\DC2\ETXA\EOT$\SUB\\ Request cancellation of the child and wait for confirmation that the request was received.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\ETX\SOH\DC2\ETXA\EOT\US\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\ETX\STX\DC2\ETXA\"#b\ACKproto3"