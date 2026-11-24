{- This file was auto-generated from temporal/sdk/core/activity_task/activity_task.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask (
        ActivityCancelReason(..), ActivityCancelReason(),
        ActivityCancelReason'UnrecognizedValue,
        ActivityCancellationDetails(), ActivityTask(),
        ActivityTask'Variant(..), _ActivityTask'Start,
        _ActivityTask'Cancel, Cancel(), Start(), Start'HeaderFieldsEntry(),
        WorkflowTaskAttempt()
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
import qualified Proto.Temporal.Api.Common.V1.Message
import qualified Proto.Temporal.Api.Nexus.V1.Message
import qualified Proto.Temporal.Sdk.Core.Common.Common
newtype ActivityCancelReason'UnrecognizedValue
  = ActivityCancelReason'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ActivityCancelReason
  = NOT_FOUND |
    CANCELLED |
    TIMED_OUT |
    WORKER_SHUTDOWN |
    PAUSED |
    RESET |
    ActivityCancelReason'Unrecognized !ActivityCancelReason'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ActivityCancelReason where
  maybeToEnum 0 = Prelude.Just NOT_FOUND
  maybeToEnum 1 = Prelude.Just CANCELLED
  maybeToEnum 2 = Prelude.Just TIMED_OUT
  maybeToEnum 3 = Prelude.Just WORKER_SHUTDOWN
  maybeToEnum 4 = Prelude.Just PAUSED
  maybeToEnum 5 = Prelude.Just RESET
  maybeToEnum k
    = Prelude.Just
        (ActivityCancelReason'Unrecognized
           (ActivityCancelReason'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum NOT_FOUND = "NOT_FOUND"
  showEnum CANCELLED = "CANCELLED"
  showEnum TIMED_OUT = "TIMED_OUT"
  showEnum WORKER_SHUTDOWN = "WORKER_SHUTDOWN"
  showEnum PAUSED = "PAUSED"
  showEnum RESET = "RESET"
  showEnum
    (ActivityCancelReason'Unrecognized (ActivityCancelReason'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "NOT_FOUND" = Prelude.Just NOT_FOUND
    | (Prelude.==) k "CANCELLED" = Prelude.Just CANCELLED
    | (Prelude.==) k "TIMED_OUT" = Prelude.Just TIMED_OUT
    | (Prelude.==) k "WORKER_SHUTDOWN" = Prelude.Just WORKER_SHUTDOWN
    | (Prelude.==) k "PAUSED" = Prelude.Just PAUSED
    | (Prelude.==) k "RESET" = Prelude.Just RESET
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ActivityCancelReason where
  minBound = NOT_FOUND
  maxBound = RESET
instance Prelude.Enum ActivityCancelReason where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ActivityCancelReason: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum NOT_FOUND = 0
  fromEnum CANCELLED = 1
  fromEnum TIMED_OUT = 2
  fromEnum WORKER_SHUTDOWN = 3
  fromEnum PAUSED = 4
  fromEnum RESET = 5
  fromEnum
    (ActivityCancelReason'Unrecognized (ActivityCancelReason'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ RESET
    = Prelude.error
        "ActivityCancelReason.succ: bad argument RESET. This value would be out of bounds."
  succ NOT_FOUND = CANCELLED
  succ CANCELLED = TIMED_OUT
  succ TIMED_OUT = WORKER_SHUTDOWN
  succ WORKER_SHUTDOWN = PAUSED
  succ PAUSED = RESET
  succ (ActivityCancelReason'Unrecognized _)
    = Prelude.error
        "ActivityCancelReason.succ: bad argument: unrecognized value"
  pred NOT_FOUND
    = Prelude.error
        "ActivityCancelReason.pred: bad argument NOT_FOUND. This value would be out of bounds."
  pred CANCELLED = NOT_FOUND
  pred TIMED_OUT = CANCELLED
  pred WORKER_SHUTDOWN = TIMED_OUT
  pred PAUSED = WORKER_SHUTDOWN
  pred RESET = PAUSED
  pred (ActivityCancelReason'Unrecognized _)
    = Prelude.error
        "ActivityCancelReason.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ActivityCancelReason where
  fieldDefault = NOT_FOUND
instance Control.DeepSeq.NFData ActivityCancelReason where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.isNotFound' @:: Lens' ActivityCancellationDetails Prelude.Bool@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.isCancelled' @:: Lens' ActivityCancellationDetails Prelude.Bool@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.isPaused' @:: Lens' ActivityCancellationDetails Prelude.Bool@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.isTimedOut' @:: Lens' ActivityCancellationDetails Prelude.Bool@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.isWorkerShutdown' @:: Lens' ActivityCancellationDetails Prelude.Bool@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.isReset' @:: Lens' ActivityCancellationDetails Prelude.Bool@ -}
data ActivityCancellationDetails
  = ActivityCancellationDetails'_constructor {_ActivityCancellationDetails'isNotFound :: !Prelude.Bool,
                                              _ActivityCancellationDetails'isCancelled :: !Prelude.Bool,
                                              _ActivityCancellationDetails'isPaused :: !Prelude.Bool,
                                              _ActivityCancellationDetails'isTimedOut :: !Prelude.Bool,
                                              _ActivityCancellationDetails'isWorkerShutdown :: !Prelude.Bool,
                                              _ActivityCancellationDetails'isReset :: !Prelude.Bool,
                                              _ActivityCancellationDetails'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ActivityCancellationDetails where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ActivityCancellationDetails "isNotFound" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityCancellationDetails'isNotFound
           (\ x__ y__ -> x__ {_ActivityCancellationDetails'isNotFound = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityCancellationDetails "isCancelled" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityCancellationDetails'isCancelled
           (\ x__ y__
              -> x__ {_ActivityCancellationDetails'isCancelled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityCancellationDetails "isPaused" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityCancellationDetails'isPaused
           (\ x__ y__ -> x__ {_ActivityCancellationDetails'isPaused = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityCancellationDetails "isTimedOut" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityCancellationDetails'isTimedOut
           (\ x__ y__ -> x__ {_ActivityCancellationDetails'isTimedOut = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityCancellationDetails "isWorkerShutdown" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityCancellationDetails'isWorkerShutdown
           (\ x__ y__
              -> x__ {_ActivityCancellationDetails'isWorkerShutdown = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityCancellationDetails "isReset" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityCancellationDetails'isReset
           (\ x__ y__ -> x__ {_ActivityCancellationDetails'isReset = y__}))
        Prelude.id
instance Data.ProtoLens.Message ActivityCancellationDetails where
  messageName _
    = Data.Text.pack
        "coresdk.activity_task.ActivityCancellationDetails"
  packedMessageDescriptor _
    = "\n\
      \\ESCActivityCancellationDetails\DC2 \n\
      \\fis_not_found\CAN\SOH \SOH(\bR\n\
      \isNotFound\DC2!\n\
      \\fis_cancelled\CAN\STX \SOH(\bR\visCancelled\DC2\ESC\n\
      \\tis_paused\CAN\ETX \SOH(\bR\bisPaused\DC2 \n\
      \\fis_timed_out\CAN\EOT \SOH(\bR\n\
      \isTimedOut\DC2,\n\
      \\DC2is_worker_shutdown\CAN\ENQ \SOH(\bR\DLEisWorkerShutdown\DC2\EM\n\
      \\bis_reset\CAN\ACK \SOH(\bR\aisReset"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        isNotFound__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_not_found"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"isNotFound")) ::
              Data.ProtoLens.FieldDescriptor ActivityCancellationDetails
        isCancelled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_cancelled"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"isCancelled")) ::
              Data.ProtoLens.FieldDescriptor ActivityCancellationDetails
        isPaused__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_paused"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"isPaused")) ::
              Data.ProtoLens.FieldDescriptor ActivityCancellationDetails
        isTimedOut__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_timed_out"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"isTimedOut")) ::
              Data.ProtoLens.FieldDescriptor ActivityCancellationDetails
        isWorkerShutdown__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_worker_shutdown"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"isWorkerShutdown")) ::
              Data.ProtoLens.FieldDescriptor ActivityCancellationDetails
        isReset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_reset"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"isReset")) ::
              Data.ProtoLens.FieldDescriptor ActivityCancellationDetails
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, isNotFound__field_descriptor),
           (Data.ProtoLens.Tag 2, isCancelled__field_descriptor),
           (Data.ProtoLens.Tag 3, isPaused__field_descriptor),
           (Data.ProtoLens.Tag 4, isTimedOut__field_descriptor),
           (Data.ProtoLens.Tag 5, isWorkerShutdown__field_descriptor),
           (Data.ProtoLens.Tag 6, isReset__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ActivityCancellationDetails'_unknownFields
        (\ x__ y__
           -> x__ {_ActivityCancellationDetails'_unknownFields = y__})
  defMessage
    = ActivityCancellationDetails'_constructor
        {_ActivityCancellationDetails'isNotFound = Data.ProtoLens.fieldDefault,
         _ActivityCancellationDetails'isCancelled = Data.ProtoLens.fieldDefault,
         _ActivityCancellationDetails'isPaused = Data.ProtoLens.fieldDefault,
         _ActivityCancellationDetails'isTimedOut = Data.ProtoLens.fieldDefault,
         _ActivityCancellationDetails'isWorkerShutdown = Data.ProtoLens.fieldDefault,
         _ActivityCancellationDetails'isReset = Data.ProtoLens.fieldDefault,
         _ActivityCancellationDetails'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ActivityCancellationDetails
          -> Data.ProtoLens.Encoding.Bytes.Parser ActivityCancellationDetails
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
                                       "is_not_found"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"isNotFound") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_cancelled"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"isCancelled") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_paused"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"isPaused") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_timed_out"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"isTimedOut") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_worker_shutdown"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"isWorkerShutdown") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_reset"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"isReset") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ActivityCancellationDetails"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"isNotFound") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"isCancelled") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"isPaused") _x
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
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"isTimedOut") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0) _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"isWorkerShutdown") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (\ b -> if b then 1 else 0) _v))
                         ((Data.Monoid.<>)
                            (let
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"isReset") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (\ b -> if b then 1 else 0) _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData ActivityCancellationDetails where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ActivityCancellationDetails'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ActivityCancellationDetails'isNotFound x__)
                (Control.DeepSeq.deepseq
                   (_ActivityCancellationDetails'isCancelled x__)
                   (Control.DeepSeq.deepseq
                      (_ActivityCancellationDetails'isPaused x__)
                      (Control.DeepSeq.deepseq
                         (_ActivityCancellationDetails'isTimedOut x__)
                         (Control.DeepSeq.deepseq
                            (_ActivityCancellationDetails'isWorkerShutdown x__)
                            (Control.DeepSeq.deepseq
                               (_ActivityCancellationDetails'isReset x__) ()))))))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.taskToken' @:: Lens' ActivityTask Data.ByteString.ByteString@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.maybe'variant' @:: Lens' ActivityTask (Prelude.Maybe ActivityTask'Variant)@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.maybe'start' @:: Lens' ActivityTask (Prelude.Maybe Start)@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.start' @:: Lens' ActivityTask Start@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.maybe'cancel' @:: Lens' ActivityTask (Prelude.Maybe Cancel)@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.cancel' @:: Lens' ActivityTask Cancel@ -}
data ActivityTask
  = ActivityTask'_constructor {_ActivityTask'taskToken :: !Data.ByteString.ByteString,
                               _ActivityTask'variant :: !(Prelude.Maybe ActivityTask'Variant),
                               _ActivityTask'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ActivityTask where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ActivityTask'Variant
  = ActivityTask'Start !Start | ActivityTask'Cancel !Cancel
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ActivityTask "taskToken" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityTask'taskToken
           (\ x__ y__ -> x__ {_ActivityTask'taskToken = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityTask "maybe'variant" (Prelude.Maybe ActivityTask'Variant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityTask'variant
           (\ x__ y__ -> x__ {_ActivityTask'variant = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityTask "maybe'start" (Prelude.Maybe Start) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityTask'variant
           (\ x__ y__ -> x__ {_ActivityTask'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ActivityTask'Start x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ActivityTask'Start y__))
instance Data.ProtoLens.Field.HasField ActivityTask "start" Start where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityTask'variant
           (\ x__ y__ -> x__ {_ActivityTask'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ActivityTask'Start x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ActivityTask'Start y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ActivityTask "maybe'cancel" (Prelude.Maybe Cancel) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityTask'variant
           (\ x__ y__ -> x__ {_ActivityTask'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ActivityTask'Cancel x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ActivityTask'Cancel y__))
instance Data.ProtoLens.Field.HasField ActivityTask "cancel" Cancel where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityTask'variant
           (\ x__ y__ -> x__ {_ActivityTask'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ActivityTask'Cancel x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ActivityTask'Cancel y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ActivityTask where
  messageName _ = Data.Text.pack "coresdk.activity_task.ActivityTask"
  packedMessageDescriptor _
    = "\n\
      \\fActivityTask\DC2\GS\n\
      \\n\
      \task_token\CAN\SOH \SOH(\fR\ttaskToken\DC24\n\
      \\ENQstart\CAN\ETX \SOH(\v2\FS.coresdk.activity_task.StartH\NULR\ENQstart\DC27\n\
      \\ACKcancel\CAN\EOT \SOH(\v2\GS.coresdk.activity_task.CancelH\NULR\ACKcancelB\t\n\
      \\avariant"
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
              Data.ProtoLens.FieldDescriptor ActivityTask
        start__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Start)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'start")) ::
              Data.ProtoLens.FieldDescriptor ActivityTask
        cancel__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancel"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Cancel)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cancel")) ::
              Data.ProtoLens.FieldDescriptor ActivityTask
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, taskToken__field_descriptor),
           (Data.ProtoLens.Tag 3, start__field_descriptor),
           (Data.ProtoLens.Tag 4, cancel__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ActivityTask'_unknownFields
        (\ x__ y__ -> x__ {_ActivityTask'_unknownFields = y__})
  defMessage
    = ActivityTask'_constructor
        {_ActivityTask'taskToken = Data.ProtoLens.fieldDefault,
         _ActivityTask'variant = Prelude.Nothing,
         _ActivityTask'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ActivityTask -> Data.ProtoLens.Encoding.Bytes.Parser ActivityTask
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
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"start") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cancel"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cancel") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ActivityTask"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'variant") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (ActivityTask'Start v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage v)
                   (Prelude.Just (ActivityTask'Cancel v))
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
instance Control.DeepSeq.NFData ActivityTask where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ActivityTask'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ActivityTask'taskToken x__)
                (Control.DeepSeq.deepseq (_ActivityTask'variant x__) ()))
instance Control.DeepSeq.NFData ActivityTask'Variant where
  rnf (ActivityTask'Start x__) = Control.DeepSeq.rnf x__
  rnf (ActivityTask'Cancel x__) = Control.DeepSeq.rnf x__
_ActivityTask'Start ::
  Data.ProtoLens.Prism.Prism' ActivityTask'Variant Start
_ActivityTask'Start
  = Data.ProtoLens.Prism.prism'
      ActivityTask'Start
      (\ p__
         -> case p__ of
              (ActivityTask'Start p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ActivityTask'Cancel ::
  Data.ProtoLens.Prism.Prism' ActivityTask'Variant Cancel
_ActivityTask'Cancel
  = Data.ProtoLens.Prism.prism'
      ActivityTask'Cancel
      (\ p__
         -> case p__ of
              (ActivityTask'Cancel p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.reason' @:: Lens' Cancel ActivityCancelReason@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.details' @:: Lens' Cancel ActivityCancellationDetails@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.maybe'details' @:: Lens' Cancel (Prelude.Maybe ActivityCancellationDetails)@ -}
data Cancel
  = Cancel'_constructor {_Cancel'reason :: !ActivityCancelReason,
                         _Cancel'details :: !(Prelude.Maybe ActivityCancellationDetails),
                         _Cancel'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Cancel where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Cancel "reason" ActivityCancelReason where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cancel'reason (\ x__ y__ -> x__ {_Cancel'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cancel "details" ActivityCancellationDetails where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cancel'details (\ x__ y__ -> x__ {_Cancel'details = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cancel "maybe'details" (Prelude.Maybe ActivityCancellationDetails) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cancel'details (\ x__ y__ -> x__ {_Cancel'details = y__}))
        Prelude.id
instance Data.ProtoLens.Message Cancel where
  messageName _ = Data.Text.pack "coresdk.activity_task.Cancel"
  packedMessageDescriptor _
    = "\n\
      \\ACKCancel\DC2C\n\
      \\ACKreason\CAN\SOH \SOH(\SO2+.coresdk.activity_task.ActivityCancelReasonR\ACKreason\DC2L\n\
      \\adetails\CAN\STX \SOH(\v22.coresdk.activity_task.ActivityCancellationDetailsR\adetails"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ActivityCancelReason)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"reason")) ::
              Data.ProtoLens.FieldDescriptor Cancel
        details__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "details"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ActivityCancellationDetails)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'details")) ::
              Data.ProtoLens.FieldDescriptor Cancel
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, reason__field_descriptor),
           (Data.ProtoLens.Tag 2, details__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Cancel'_unknownFields
        (\ x__ y__ -> x__ {_Cancel'_unknownFields = y__})
  defMessage
    = Cancel'_constructor
        {_Cancel'reason = Data.ProtoLens.fieldDefault,
         _Cancel'details = Prelude.Nothing, _Cancel'_unknownFields = []}
  parseMessage
    = let
        loop :: Cancel -> Data.ProtoLens.Encoding.Bytes.Parser Cancel
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
                                       "reason"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reason") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "details"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"details") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Cancel"
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
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'details") _x
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
instance Control.DeepSeq.NFData Cancel where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Cancel'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Cancel'reason x__)
                (Control.DeepSeq.deepseq (_Cancel'details x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.workflowNamespace' @:: Lens' Start Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.workflowType' @:: Lens' Start Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.workflowExecution' @:: Lens' Start Proto.Temporal.Api.Common.V1.Message.WorkflowExecution@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.maybe'workflowExecution' @:: Lens' Start (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowExecution)@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.activityId' @:: Lens' Start Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.activityType' @:: Lens' Start Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.headerFields' @:: Lens' Start (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.input' @:: Lens' Start [Proto.Temporal.Api.Common.V1.Message.Payload]@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.vec'input' @:: Lens' Start (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.heartbeatDetails' @:: Lens' Start [Proto.Temporal.Api.Common.V1.Message.Payload]@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.vec'heartbeatDetails' @:: Lens' Start (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.scheduledTime' @:: Lens' Start Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.maybe'scheduledTime' @:: Lens' Start (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.currentAttemptScheduledTime' @:: Lens' Start Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.maybe'currentAttemptScheduledTime' @:: Lens' Start (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.startedTime' @:: Lens' Start Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.maybe'startedTime' @:: Lens' Start (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.attempt' @:: Lens' Start Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.scheduleToCloseTimeout' @:: Lens' Start Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.maybe'scheduleToCloseTimeout' @:: Lens' Start (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.startToCloseTimeout' @:: Lens' Start Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.maybe'startToCloseTimeout' @:: Lens' Start (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.heartbeatTimeout' @:: Lens' Start Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.maybe'heartbeatTimeout' @:: Lens' Start (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.retryPolicy' @:: Lens' Start Proto.Temporal.Api.Common.V1.Message.RetryPolicy@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.maybe'retryPolicy' @:: Lens' Start (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy)@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.priority' @:: Lens' Start Proto.Temporal.Api.Common.V1.Message.Priority@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.maybe'priority' @:: Lens' Start (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority)@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.isLocal' @:: Lens' Start Prelude.Bool@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.runId' @:: Lens' Start Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.propagatedNexusSerializationContext' @:: Lens' Start Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.maybe'propagatedNexusSerializationContext' @:: Lens' Start (Prelude.Maybe Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext)@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.workflowTask' @:: Lens' Start WorkflowTaskAttempt@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.maybe'workflowTask' @:: Lens' Start (Prelude.Maybe WorkflowTaskAttempt)@ -}
data Start
  = Start'_constructor {_Start'workflowNamespace :: !Data.Text.Text,
                        _Start'workflowType :: !Data.Text.Text,
                        _Start'workflowExecution :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowExecution),
                        _Start'activityId :: !Data.Text.Text,
                        _Start'activityType :: !Data.Text.Text,
                        _Start'headerFields :: !(Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload),
                        _Start'input :: !(Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload),
                        _Start'heartbeatDetails :: !(Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload),
                        _Start'scheduledTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                        _Start'currentAttemptScheduledTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                        _Start'startedTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                        _Start'attempt :: !Data.Word.Word32,
                        _Start'scheduleToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                        _Start'startToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                        _Start'heartbeatTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                        _Start'retryPolicy :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy),
                        _Start'priority :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority),
                        _Start'isLocal :: !Prelude.Bool,
                        _Start'runId :: !Data.Text.Text,
                        _Start'propagatedNexusSerializationContext :: !(Prelude.Maybe Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext),
                        _Start'workflowTask :: !(Prelude.Maybe WorkflowTaskAttempt),
                        _Start'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Start where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Start "workflowNamespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'workflowNamespace
           (\ x__ y__ -> x__ {_Start'workflowNamespace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Start "workflowType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'workflowType (\ x__ y__ -> x__ {_Start'workflowType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Start "workflowExecution" Proto.Temporal.Api.Common.V1.Message.WorkflowExecution where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'workflowExecution
           (\ x__ y__ -> x__ {_Start'workflowExecution = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Start "maybe'workflowExecution" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'workflowExecution
           (\ x__ y__ -> x__ {_Start'workflowExecution = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Start "activityId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'activityId (\ x__ y__ -> x__ {_Start'activityId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Start "activityType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'activityType (\ x__ y__ -> x__ {_Start'activityType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Start "headerFields" (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'headerFields (\ x__ y__ -> x__ {_Start'headerFields = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Start "input" [Proto.Temporal.Api.Common.V1.Message.Payload] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'input (\ x__ y__ -> x__ {_Start'input = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Start "vec'input" (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'input (\ x__ y__ -> x__ {_Start'input = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Start "heartbeatDetails" [Proto.Temporal.Api.Common.V1.Message.Payload] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'heartbeatDetails
           (\ x__ y__ -> x__ {_Start'heartbeatDetails = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Start "vec'heartbeatDetails" (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'heartbeatDetails
           (\ x__ y__ -> x__ {_Start'heartbeatDetails = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Start "scheduledTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'scheduledTime
           (\ x__ y__ -> x__ {_Start'scheduledTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Start "maybe'scheduledTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'scheduledTime
           (\ x__ y__ -> x__ {_Start'scheduledTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Start "currentAttemptScheduledTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'currentAttemptScheduledTime
           (\ x__ y__ -> x__ {_Start'currentAttemptScheduledTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Start "maybe'currentAttemptScheduledTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'currentAttemptScheduledTime
           (\ x__ y__ -> x__ {_Start'currentAttemptScheduledTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Start "startedTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'startedTime (\ x__ y__ -> x__ {_Start'startedTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Start "maybe'startedTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'startedTime (\ x__ y__ -> x__ {_Start'startedTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Start "attempt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'attempt (\ x__ y__ -> x__ {_Start'attempt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Start "scheduleToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'scheduleToCloseTimeout
           (\ x__ y__ -> x__ {_Start'scheduleToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Start "maybe'scheduleToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'scheduleToCloseTimeout
           (\ x__ y__ -> x__ {_Start'scheduleToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Start "startToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'startToCloseTimeout
           (\ x__ y__ -> x__ {_Start'startToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Start "maybe'startToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'startToCloseTimeout
           (\ x__ y__ -> x__ {_Start'startToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Start "heartbeatTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'heartbeatTimeout
           (\ x__ y__ -> x__ {_Start'heartbeatTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Start "maybe'heartbeatTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'heartbeatTimeout
           (\ x__ y__ -> x__ {_Start'heartbeatTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Start "retryPolicy" Proto.Temporal.Api.Common.V1.Message.RetryPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'retryPolicy (\ x__ y__ -> x__ {_Start'retryPolicy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Start "maybe'retryPolicy" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'retryPolicy (\ x__ y__ -> x__ {_Start'retryPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Start "priority" Proto.Temporal.Api.Common.V1.Message.Priority where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'priority (\ x__ y__ -> x__ {_Start'priority = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Start "maybe'priority" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'priority (\ x__ y__ -> x__ {_Start'priority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Start "isLocal" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'isLocal (\ x__ y__ -> x__ {_Start'isLocal = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Start "runId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'runId (\ x__ y__ -> x__ {_Start'runId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Start "propagatedNexusSerializationContext" Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'propagatedNexusSerializationContext
           (\ x__ y__
              -> x__ {_Start'propagatedNexusSerializationContext = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Start "maybe'propagatedNexusSerializationContext" (Prelude.Maybe Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'propagatedNexusSerializationContext
           (\ x__ y__
              -> x__ {_Start'propagatedNexusSerializationContext = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Start "workflowTask" WorkflowTaskAttempt where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'workflowTask (\ x__ y__ -> x__ {_Start'workflowTask = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Start "maybe'workflowTask" (Prelude.Maybe WorkflowTaskAttempt) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'workflowTask (\ x__ y__ -> x__ {_Start'workflowTask = y__}))
        Prelude.id
instance Data.ProtoLens.Message Start where
  messageName _ = Data.Text.pack "coresdk.activity_task.Start"
  packedMessageDescriptor _
    = "\n\
      \\ENQStart\DC2-\n\
      \\DC2workflow_namespace\CAN\SOH \SOH(\tR\DC1workflowNamespace\DC2#\n\
      \\rworkflow_type\CAN\STX \SOH(\tR\fworkflowType\DC2X\n\
      \\DC2workflow_execution\CAN\ETX \SOH(\v2).temporal.api.common.v1.WorkflowExecutionR\DC1workflowExecution\DC2\US\n\
      \\vactivity_id\CAN\EOT \SOH(\tR\n\
      \activityId\DC2#\n\
      \\ractivity_type\CAN\ENQ \SOH(\tR\factivityType\DC2S\n\
      \\rheader_fields\CAN\ACK \ETX(\v2..coresdk.activity_task.Start.HeaderFieldsEntryR\fheaderFields\DC25\n\
      \\ENQinput\CAN\a \ETX(\v2\US.temporal.api.common.v1.PayloadR\ENQinput\DC2L\n\
      \\DC1heartbeat_details\CAN\b \ETX(\v2\US.temporal.api.common.v1.PayloadR\DLEheartbeatDetails\DC2A\n\
      \\SOscheduled_time\CAN\t \SOH(\v2\SUB.google.protobuf.TimestampR\rscheduledTime\DC2_\n\
      \\RScurrent_attempt_scheduled_time\CAN\n\
      \ \SOH(\v2\SUB.google.protobuf.TimestampR\ESCcurrentAttemptScheduledTime\DC2=\n\
      \\fstarted_time\CAN\v \SOH(\v2\SUB.google.protobuf.TimestampR\vstartedTime\DC2\CAN\n\
      \\aattempt\CAN\f \SOH(\rR\aattempt\DC2T\n\
      \\EMschedule_to_close_timeout\CAN\r \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2N\n\
      \\SYNstart_to_close_timeout\CAN\SO \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\DC2F\n\
      \\DC1heartbeat_timeout\CAN\SI \SOH(\v2\EM.google.protobuf.DurationR\DLEheartbeatTimeout\DC2F\n\
      \\fretry_policy\CAN\DLE \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2<\n\
      \\bpriority\CAN\DC2 \SOH(\v2 .temporal.api.common.v1.PriorityR\bpriority\DC2\EM\n\
      \\bis_local\CAN\DC1 \SOH(\bR\aisLocal\DC2\NAK\n\
      \\ACKrun_id\CAN\DC3 \SOH(\tR\ENQrunId\DC2\138\SOH\n\
      \&propagated_nexus_serialization_context\CAN\DC4 \SOH(\v25.temporal.api.nexus.v1.PropagatedSerializationContextR#propagatedNexusSerializationContext\DC2O\n\
      \\rworkflow_task\CAN\NAK \SOH(\v2*.coresdk.activity_task.WorkflowTaskAttemptR\fworkflowTask\SUB`\n\
      \\DC1HeaderFieldsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        workflowNamespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_namespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workflowNamespace")) ::
              Data.ProtoLens.FieldDescriptor Start
        workflowType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workflowType")) ::
              Data.ProtoLens.FieldDescriptor Start
        workflowExecution__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_execution"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.WorkflowExecution)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowExecution")) ::
              Data.ProtoLens.FieldDescriptor Start
        activityId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"activityId")) ::
              Data.ProtoLens.FieldDescriptor Start
        activityType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"activityType")) ::
              Data.ProtoLens.FieldDescriptor Start
        headerFields__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header_fields"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Start'HeaderFieldsEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"headerFields")) ::
              Data.ProtoLens.FieldDescriptor Start
        input__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "input"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"input")) ::
              Data.ProtoLens.FieldDescriptor Start
        heartbeatDetails__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heartbeat_details"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"heartbeatDetails")) ::
              Data.ProtoLens.FieldDescriptor Start
        scheduledTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scheduled_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduledTime")) ::
              Data.ProtoLens.FieldDescriptor Start
        currentAttemptScheduledTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_attempt_scheduled_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'currentAttemptScheduledTime")) ::
              Data.ProtoLens.FieldDescriptor Start
        startedTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "started_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startedTime")) ::
              Data.ProtoLens.FieldDescriptor Start
        attempt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attempt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"attempt")) ::
              Data.ProtoLens.FieldDescriptor Start
        scheduleToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor Start
        startToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor Start
        heartbeatTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heartbeat_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heartbeatTimeout")) ::
              Data.ProtoLens.FieldDescriptor Start
        retryPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.RetryPolicy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'retryPolicy")) ::
              Data.ProtoLens.FieldDescriptor Start
        priority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "priority"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Priority)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'priority")) ::
              Data.ProtoLens.FieldDescriptor Start
        isLocal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_local"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"isLocal")) ::
              Data.ProtoLens.FieldDescriptor Start
        runId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "run_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"runId")) ::
              Data.ProtoLens.FieldDescriptor Start
        propagatedNexusSerializationContext__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "propagated_nexus_serialization_context"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'propagatedNexusSerializationContext")) ::
              Data.ProtoLens.FieldDescriptor Start
        workflowTask__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_task"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WorkflowTaskAttempt)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowTask")) ::
              Data.ProtoLens.FieldDescriptor Start
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, workflowNamespace__field_descriptor),
           (Data.ProtoLens.Tag 2, workflowType__field_descriptor),
           (Data.ProtoLens.Tag 3, workflowExecution__field_descriptor),
           (Data.ProtoLens.Tag 4, activityId__field_descriptor),
           (Data.ProtoLens.Tag 5, activityType__field_descriptor),
           (Data.ProtoLens.Tag 6, headerFields__field_descriptor),
           (Data.ProtoLens.Tag 7, input__field_descriptor),
           (Data.ProtoLens.Tag 8, heartbeatDetails__field_descriptor),
           (Data.ProtoLens.Tag 9, scheduledTime__field_descriptor),
           (Data.ProtoLens.Tag 10, 
            currentAttemptScheduledTime__field_descriptor),
           (Data.ProtoLens.Tag 11, startedTime__field_descriptor),
           (Data.ProtoLens.Tag 12, attempt__field_descriptor),
           (Data.ProtoLens.Tag 13, scheduleToCloseTimeout__field_descriptor),
           (Data.ProtoLens.Tag 14, startToCloseTimeout__field_descriptor),
           (Data.ProtoLens.Tag 15, heartbeatTimeout__field_descriptor),
           (Data.ProtoLens.Tag 16, retryPolicy__field_descriptor),
           (Data.ProtoLens.Tag 18, priority__field_descriptor),
           (Data.ProtoLens.Tag 17, isLocal__field_descriptor),
           (Data.ProtoLens.Tag 19, runId__field_descriptor),
           (Data.ProtoLens.Tag 20, 
            propagatedNexusSerializationContext__field_descriptor),
           (Data.ProtoLens.Tag 21, workflowTask__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Start'_unknownFields
        (\ x__ y__ -> x__ {_Start'_unknownFields = y__})
  defMessage
    = Start'_constructor
        {_Start'workflowNamespace = Data.ProtoLens.fieldDefault,
         _Start'workflowType = Data.ProtoLens.fieldDefault,
         _Start'workflowExecution = Prelude.Nothing,
         _Start'activityId = Data.ProtoLens.fieldDefault,
         _Start'activityType = Data.ProtoLens.fieldDefault,
         _Start'headerFields = Data.Map.empty,
         _Start'input = Data.Vector.Generic.empty,
         _Start'heartbeatDetails = Data.Vector.Generic.empty,
         _Start'scheduledTime = Prelude.Nothing,
         _Start'currentAttemptScheduledTime = Prelude.Nothing,
         _Start'startedTime = Prelude.Nothing,
         _Start'attempt = Data.ProtoLens.fieldDefault,
         _Start'scheduleToCloseTimeout = Prelude.Nothing,
         _Start'startToCloseTimeout = Prelude.Nothing,
         _Start'heartbeatTimeout = Prelude.Nothing,
         _Start'retryPolicy = Prelude.Nothing,
         _Start'priority = Prelude.Nothing,
         _Start'isLocal = Data.ProtoLens.fieldDefault,
         _Start'runId = Data.ProtoLens.fieldDefault,
         _Start'propagatedNexusSerializationContext = Prelude.Nothing,
         _Start'workflowTask = Prelude.Nothing, _Start'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Start
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Common.V1.Message.Payload
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Common.V1.Message.Payload
                -> Data.ProtoLens.Encoding.Bytes.Parser Start
        loop x mutable'heartbeatDetails mutable'input
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'heartbeatDetails <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'heartbeatDetails)
                      frozen'input <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'input)
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
                              (Data.ProtoLens.Field.field @"vec'heartbeatDetails")
                              frozen'heartbeatDetails
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'input") frozen'input x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "workflow_namespace"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowNamespace") y x)
                                  mutable'heartbeatDetails mutable'input
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "workflow_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowType") y x)
                                  mutable'heartbeatDetails mutable'input
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_execution"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowExecution") y x)
                                  mutable'heartbeatDetails mutable'input
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "activity_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"activityId") y x)
                                  mutable'heartbeatDetails mutable'input
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "activity_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"activityType") y x)
                                  mutable'heartbeatDetails mutable'input
                        50
                          -> do !(entry :: Start'HeaderFieldsEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                         (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                             Data.ProtoLens.Encoding.Bytes.isolate
                                                                               (Prelude.fromIntegral
                                                                                  len)
                                                                               Data.ProtoLens.parseMessage)
                                                                         "header_fields"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"headerFields")
                                        (\ !t -> Data.Map.insert key value t) x)
                                     mutable'heartbeatDetails mutable'input)
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "input"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'input y)
                                loop x mutable'heartbeatDetails v
                        66
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "heartbeat_details"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'heartbeatDetails y)
                                loop x v mutable'input
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "scheduled_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduledTime") y x)
                                  mutable'heartbeatDetails mutable'input
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "current_attempt_scheduled_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"currentAttemptScheduledTime") y
                                     x)
                                  mutable'heartbeatDetails mutable'input
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "started_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startedTime") y x)
                                  mutable'heartbeatDetails mutable'input
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "attempt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"attempt") y x)
                                  mutable'heartbeatDetails mutable'input
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToCloseTimeout") y x)
                                  mutable'heartbeatDetails mutable'input
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_to_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startToCloseTimeout") y x)
                                  mutable'heartbeatDetails mutable'input
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "heartbeat_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"heartbeatTimeout") y x)
                                  mutable'heartbeatDetails mutable'input
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "retry_policy"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"retryPolicy") y x)
                                  mutable'heartbeatDetails mutable'input
                        146
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "priority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"priority") y x)
                                  mutable'heartbeatDetails mutable'input
                        136
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_local"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"isLocal") y x)
                                  mutable'heartbeatDetails mutable'input
                        154
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "run_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"runId") y x)
                                  mutable'heartbeatDetails mutable'input
                        162
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "propagated_nexus_serialization_context"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"propagatedNexusSerializationContext")
                                     y x)
                                  mutable'heartbeatDetails mutable'input
                        170
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_task"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowTask") y x)
                                  mutable'heartbeatDetails mutable'input
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'heartbeatDetails mutable'input
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'heartbeatDetails <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              mutable'input <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'heartbeatDetails mutable'input)
          "Start"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"workflowNamespace") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"workflowType") _x
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
                          (Data.ProtoLens.Field.field @"maybe'workflowExecution") _x
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
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"activityId") _x
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
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"activityType") _x
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
                            (Data.Monoid.mconcat
                               (Prelude.map
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
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
                                                   (Data.ProtoLens.Field.field @"value")
                                                   (Prelude.snd _v)
                                                   (Data.ProtoLens.defMessage ::
                                                      Start'HeaderFieldsEntry)))))
                                  (Data.Map.toList
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"headerFields") _x))))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
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
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'input") _x))
                               ((Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                     (\ _v
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                             ((Prelude..)
                                                (\ bs
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           (Prelude.fromIntegral
                                                              (Data.ByteString.length bs)))
                                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Data.ProtoLens.encodeMessage _v))
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"vec'heartbeatDetails") _x))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'scheduledTime") _x
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
                                                  @"maybe'currentAttemptScheduledTime")
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
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field @"maybe'startedTime")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
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
                                                       (Data.ProtoLens.Field.field @"attempt") _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                       ((Prelude..)
                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          Prelude.fromIntegral _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'scheduleToCloseTimeout")
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
                                                              @"maybe'startToCloseTimeout")
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
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'heartbeatTimeout")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    122)
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
                                                                    @"maybe'retryPolicy")
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
                                                             (case
                                                                  Lens.Family2.view
                                                                    (Data.ProtoLens.Field.field
                                                                       @"maybe'priority")
                                                                    _x
                                                              of
                                                                Prelude.Nothing
                                                                  -> Data.Monoid.mempty
                                                                (Prelude.Just _v)
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          146)
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
                                                                            @"isLocal")
                                                                         _x
                                                                 in
                                                                   if (Prelude.==)
                                                                        _v
                                                                        Data.ProtoLens.fieldDefault then
                                                                       Data.Monoid.mempty
                                                                   else
                                                                       (Data.Monoid.<>)
                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                            136)
                                                                         ((Prelude..)
                                                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                            (\ b
                                                                               -> if b then
                                                                                      1
                                                                                  else
                                                                                      0)
                                                                            _v))
                                                                ((Data.Monoid.<>)
                                                                   (let
                                                                      _v
                                                                        = Lens.Family2.view
                                                                            (Data.ProtoLens.Field.field
                                                                               @"runId")
                                                                            _x
                                                                    in
                                                                      if (Prelude.==)
                                                                           _v
                                                                           Data.ProtoLens.fieldDefault then
                                                                          Data.Monoid.mempty
                                                                      else
                                                                          (Data.Monoid.<>)
                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                               154)
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
                                                                   ((Data.Monoid.<>)
                                                                      (case
                                                                           Lens.Family2.view
                                                                             (Data.ProtoLens.Field.field
                                                                                @"maybe'propagatedNexusSerializationContext")
                                                                             _x
                                                                       of
                                                                         Prelude.Nothing
                                                                           -> Data.Monoid.mempty
                                                                         (Prelude.Just _v)
                                                                           -> (Data.Monoid.<>)
                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   162)
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
                                                                                   @"maybe'workflowTask")
                                                                                _x
                                                                          of
                                                                            Prelude.Nothing
                                                                              -> Data.Monoid.mempty
                                                                            (Prelude.Just _v)
                                                                              -> (Data.Monoid.<>)
                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                      170)
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
                                                                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                            (Lens.Family2.view
                                                                               Data.ProtoLens.unknownFields
                                                                               _x))))))))))))))))))))))
instance Control.DeepSeq.NFData Start where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Start'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Start'workflowNamespace x__)
                (Control.DeepSeq.deepseq
                   (_Start'workflowType x__)
                   (Control.DeepSeq.deepseq
                      (_Start'workflowExecution x__)
                      (Control.DeepSeq.deepseq
                         (_Start'activityId x__)
                         (Control.DeepSeq.deepseq
                            (_Start'activityType x__)
                            (Control.DeepSeq.deepseq
                               (_Start'headerFields x__)
                               (Control.DeepSeq.deepseq
                                  (_Start'input x__)
                                  (Control.DeepSeq.deepseq
                                     (_Start'heartbeatDetails x__)
                                     (Control.DeepSeq.deepseq
                                        (_Start'scheduledTime x__)
                                        (Control.DeepSeq.deepseq
                                           (_Start'currentAttemptScheduledTime x__)
                                           (Control.DeepSeq.deepseq
                                              (_Start'startedTime x__)
                                              (Control.DeepSeq.deepseq
                                                 (_Start'attempt x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_Start'scheduleToCloseTimeout x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_Start'startToCloseTimeout x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_Start'heartbeatTimeout x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_Start'retryPolicy x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_Start'priority x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_Start'isLocal x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_Start'runId x__)
                                                                      (Control.DeepSeq.deepseq
                                                                         (_Start'propagatedNexusSerializationContext
                                                                            x__)
                                                                         (Control.DeepSeq.deepseq
                                                                            (_Start'workflowTask
                                                                               x__)
                                                                            ())))))))))))))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.key' @:: Lens' Start'HeaderFieldsEntry Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.value' @:: Lens' Start'HeaderFieldsEntry Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.maybe'value' @:: Lens' Start'HeaderFieldsEntry (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data Start'HeaderFieldsEntry
  = Start'HeaderFieldsEntry'_constructor {_Start'HeaderFieldsEntry'key :: !Data.Text.Text,
                                          _Start'HeaderFieldsEntry'value :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                          _Start'HeaderFieldsEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Start'HeaderFieldsEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Start'HeaderFieldsEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'HeaderFieldsEntry'key
           (\ x__ y__ -> x__ {_Start'HeaderFieldsEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Start'HeaderFieldsEntry "value" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'HeaderFieldsEntry'value
           (\ x__ y__ -> x__ {_Start'HeaderFieldsEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Start'HeaderFieldsEntry "maybe'value" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Start'HeaderFieldsEntry'value
           (\ x__ y__ -> x__ {_Start'HeaderFieldsEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Start'HeaderFieldsEntry where
  messageName _
    = Data.Text.pack "coresdk.activity_task.Start.HeaderFieldsEntry"
  packedMessageDescriptor _
    = "\n\
      \\DC1HeaderFieldsEntry\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor Start'HeaderFieldsEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor Start'HeaderFieldsEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Start'HeaderFieldsEntry'_unknownFields
        (\ x__ y__ -> x__ {_Start'HeaderFieldsEntry'_unknownFields = y__})
  defMessage
    = Start'HeaderFieldsEntry'_constructor
        {_Start'HeaderFieldsEntry'key = Data.ProtoLens.fieldDefault,
         _Start'HeaderFieldsEntry'value = Prelude.Nothing,
         _Start'HeaderFieldsEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Start'HeaderFieldsEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser Start'HeaderFieldsEntry
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
          (do loop Data.ProtoLens.defMessage) "HeaderFieldsEntry"
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
instance Control.DeepSeq.NFData Start'HeaderFieldsEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Start'HeaderFieldsEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Start'HeaderFieldsEntry'key x__)
                (Control.DeepSeq.deepseq (_Start'HeaderFieldsEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.startedEventId' @:: Lens' WorkflowTaskAttempt Data.Int.Int64@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.attempt' @:: Lens' WorkflowTaskAttempt Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.startedTime' @:: Lens' WorkflowTaskAttempt Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.maybe'startedTime' @:: Lens' WorkflowTaskAttempt (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.previousStartedEventId' @:: Lens' WorkflowTaskAttempt Data.Int.Int64@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.failedTasks' @:: Lens' WorkflowTaskAttempt [Data.Int.Int64]@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.vec'failedTasks' @:: Lens' WorkflowTaskAttempt (Data.Vector.Unboxed.Vector Data.Int.Int64)@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.previousAttempt' @:: Lens' WorkflowTaskAttempt Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.previousStartedTime' @:: Lens' WorkflowTaskAttempt Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields.maybe'previousStartedTime' @:: Lens' WorkflowTaskAttempt (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data WorkflowTaskAttempt
  = WorkflowTaskAttempt'_constructor {_WorkflowTaskAttempt'startedEventId :: !Data.Int.Int64,
                                      _WorkflowTaskAttempt'attempt :: !Data.Word.Word32,
                                      _WorkflowTaskAttempt'startedTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                      _WorkflowTaskAttempt'previousStartedEventId :: !Data.Int.Int64,
                                      _WorkflowTaskAttempt'failedTasks :: !(Data.Vector.Unboxed.Vector Data.Int.Int64),
                                      _WorkflowTaskAttempt'previousAttempt :: !Data.Word.Word32,
                                      _WorkflowTaskAttempt'previousStartedTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                      _WorkflowTaskAttempt'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkflowTaskAttempt where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkflowTaskAttempt "startedEventId" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowTaskAttempt'startedEventId
           (\ x__ y__ -> x__ {_WorkflowTaskAttempt'startedEventId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowTaskAttempt "attempt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowTaskAttempt'attempt
           (\ x__ y__ -> x__ {_WorkflowTaskAttempt'attempt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowTaskAttempt "startedTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowTaskAttempt'startedTime
           (\ x__ y__ -> x__ {_WorkflowTaskAttempt'startedTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkflowTaskAttempt "maybe'startedTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowTaskAttempt'startedTime
           (\ x__ y__ -> x__ {_WorkflowTaskAttempt'startedTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowTaskAttempt "previousStartedEventId" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowTaskAttempt'previousStartedEventId
           (\ x__ y__
              -> x__ {_WorkflowTaskAttempt'previousStartedEventId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowTaskAttempt "failedTasks" [Data.Int.Int64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowTaskAttempt'failedTasks
           (\ x__ y__ -> x__ {_WorkflowTaskAttempt'failedTasks = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField WorkflowTaskAttempt "vec'failedTasks" (Data.Vector.Unboxed.Vector Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowTaskAttempt'failedTasks
           (\ x__ y__ -> x__ {_WorkflowTaskAttempt'failedTasks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowTaskAttempt "previousAttempt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowTaskAttempt'previousAttempt
           (\ x__ y__ -> x__ {_WorkflowTaskAttempt'previousAttempt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowTaskAttempt "previousStartedTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowTaskAttempt'previousStartedTime
           (\ x__ y__
              -> x__ {_WorkflowTaskAttempt'previousStartedTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkflowTaskAttempt "maybe'previousStartedTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowTaskAttempt'previousStartedTime
           (\ x__ y__
              -> x__ {_WorkflowTaskAttempt'previousStartedTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkflowTaskAttempt where
  messageName _
    = Data.Text.pack "coresdk.activity_task.WorkflowTaskAttempt"
  packedMessageDescriptor _
    = "\n\
      \\DC3WorkflowTaskAttempt\DC2(\n\
      \\DLEstarted_event_id\CAN\SOH \SOH(\ETXR\SOstartedEventId\DC2\CAN\n\
      \\aattempt\CAN\STX \SOH(\rR\aattempt\DC2=\n\
      \\fstarted_time\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\vstartedTime\DC29\n\
      \\EMprevious_started_event_id\CAN\EOT \SOH(\ETXR\SYNpreviousStartedEventId\DC2!\n\
      \\ffailed_tasks\CAN\ENQ \ETX(\ETXR\vfailedTasks\DC2)\n\
      \\DLEprevious_attempt\CAN\ACK \SOH(\rR\SIpreviousAttempt\DC2N\n\
      \\NAKprevious_started_time\CAN\a \SOH(\v2\SUB.google.protobuf.TimestampR\DC3previousStartedTime"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        startedEventId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "started_event_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"startedEventId")) ::
              Data.ProtoLens.FieldDescriptor WorkflowTaskAttempt
        attempt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attempt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"attempt")) ::
              Data.ProtoLens.FieldDescriptor WorkflowTaskAttempt
        startedTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "started_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startedTime")) ::
              Data.ProtoLens.FieldDescriptor WorkflowTaskAttempt
        previousStartedEventId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "previous_started_event_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"previousStartedEventId")) ::
              Data.ProtoLens.FieldDescriptor WorkflowTaskAttempt
        failedTasks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failed_tasks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"failedTasks")) ::
              Data.ProtoLens.FieldDescriptor WorkflowTaskAttempt
        previousAttempt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "previous_attempt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"previousAttempt")) ::
              Data.ProtoLens.FieldDescriptor WorkflowTaskAttempt
        previousStartedTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "previous_started_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'previousStartedTime")) ::
              Data.ProtoLens.FieldDescriptor WorkflowTaskAttempt
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, startedEventId__field_descriptor),
           (Data.ProtoLens.Tag 2, attempt__field_descriptor),
           (Data.ProtoLens.Tag 3, startedTime__field_descriptor),
           (Data.ProtoLens.Tag 4, previousStartedEventId__field_descriptor),
           (Data.ProtoLens.Tag 5, failedTasks__field_descriptor),
           (Data.ProtoLens.Tag 6, previousAttempt__field_descriptor),
           (Data.ProtoLens.Tag 7, previousStartedTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkflowTaskAttempt'_unknownFields
        (\ x__ y__ -> x__ {_WorkflowTaskAttempt'_unknownFields = y__})
  defMessage
    = WorkflowTaskAttempt'_constructor
        {_WorkflowTaskAttempt'startedEventId = Data.ProtoLens.fieldDefault,
         _WorkflowTaskAttempt'attempt = Data.ProtoLens.fieldDefault,
         _WorkflowTaskAttempt'startedTime = Prelude.Nothing,
         _WorkflowTaskAttempt'previousStartedEventId = Data.ProtoLens.fieldDefault,
         _WorkflowTaskAttempt'failedTasks = Data.Vector.Generic.empty,
         _WorkflowTaskAttempt'previousAttempt = Data.ProtoLens.fieldDefault,
         _WorkflowTaskAttempt'previousStartedTime = Prelude.Nothing,
         _WorkflowTaskAttempt'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkflowTaskAttempt
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int64
             -> Data.ProtoLens.Encoding.Bytes.Parser WorkflowTaskAttempt
        loop x mutable'failedTasks
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'failedTasks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'failedTasks)
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
                              (Data.ProtoLens.Field.field @"vec'failedTasks") frozen'failedTasks
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "started_event_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startedEventId") y x)
                                  mutable'failedTasks
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "attempt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"attempt") y x)
                                  mutable'failedTasks
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "started_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startedTime") y x)
                                  mutable'failedTasks
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "previous_started_event_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"previousStartedEventId") y x)
                                  mutable'failedTasks
                        40
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "failed_tasks"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'failedTasks y)
                                loop x v
                        42
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
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "failed_tasks"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'failedTasks)
                                loop x y
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "previous_attempt"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"previousAttempt") y x)
                                  mutable'failedTasks
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "previous_started_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"previousStartedTime") y x)
                                  mutable'failedTasks
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'failedTasks
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'failedTasks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'failedTasks)
          "WorkflowTaskAttempt"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"startedEventId") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"attempt") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'startedTime") _x
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
                               (Data.ProtoLens.Field.field @"previousStartedEventId") _x
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
                            p = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'failedTasks") _x
                          in
                            if Data.Vector.Generic.null p then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     (Data.ProtoLens.Encoding.Bytes.runBuilder
                                        (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              Prelude.fromIntegral)
                                           p))))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"previousAttempt") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                        _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'previousStartedTime") _x
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
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData WorkflowTaskAttempt where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkflowTaskAttempt'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WorkflowTaskAttempt'startedEventId x__)
                (Control.DeepSeq.deepseq
                   (_WorkflowTaskAttempt'attempt x__)
                   (Control.DeepSeq.deepseq
                      (_WorkflowTaskAttempt'startedTime x__)
                      (Control.DeepSeq.deepseq
                         (_WorkflowTaskAttempt'previousStartedEventId x__)
                         (Control.DeepSeq.deepseq
                            (_WorkflowTaskAttempt'failedTasks x__)
                            (Control.DeepSeq.deepseq
                               (_WorkflowTaskAttempt'previousAttempt x__)
                               (Control.DeepSeq.deepseq
                                  (_WorkflowTaskAttempt'previousStartedTime x__) ())))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \3temporal/sdk/core/activity_task/activity_task.proto\DC2\NAKcoresdk.activity_task\SUB\RSgoogle/protobuf/duration.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB$temporal/api/common/v1/message.proto\SUB#temporal/api/nexus/v1/message.proto\SUB%temporal/sdk/core/common/common.proto\"\167\SOH\n\
    \\fActivityTask\DC2\GS\n\
    \\n\
    \task_token\CAN\SOH \SOH(\fR\ttaskToken\DC24\n\
    \\ENQstart\CAN\ETX \SOH(\v2\FS.coresdk.activity_task.StartH\NULR\ENQstart\DC27\n\
    \\ACKcancel\CAN\EOT \SOH(\v2\GS.coresdk.activity_task.CancelH\NULR\ACKcancelB\t\n\
    \\avariant\"\184\v\n\
    \\ENQStart\DC2-\n\
    \\DC2workflow_namespace\CAN\SOH \SOH(\tR\DC1workflowNamespace\DC2#\n\
    \\rworkflow_type\CAN\STX \SOH(\tR\fworkflowType\DC2X\n\
    \\DC2workflow_execution\CAN\ETX \SOH(\v2).temporal.api.common.v1.WorkflowExecutionR\DC1workflowExecution\DC2\US\n\
    \\vactivity_id\CAN\EOT \SOH(\tR\n\
    \activityId\DC2#\n\
    \\ractivity_type\CAN\ENQ \SOH(\tR\factivityType\DC2S\n\
    \\rheader_fields\CAN\ACK \ETX(\v2..coresdk.activity_task.Start.HeaderFieldsEntryR\fheaderFields\DC25\n\
    \\ENQinput\CAN\a \ETX(\v2\US.temporal.api.common.v1.PayloadR\ENQinput\DC2L\n\
    \\DC1heartbeat_details\CAN\b \ETX(\v2\US.temporal.api.common.v1.PayloadR\DLEheartbeatDetails\DC2A\n\
    \\SOscheduled_time\CAN\t \SOH(\v2\SUB.google.protobuf.TimestampR\rscheduledTime\DC2_\n\
    \\RScurrent_attempt_scheduled_time\CAN\n\
    \ \SOH(\v2\SUB.google.protobuf.TimestampR\ESCcurrentAttemptScheduledTime\DC2=\n\
    \\fstarted_time\CAN\v \SOH(\v2\SUB.google.protobuf.TimestampR\vstartedTime\DC2\CAN\n\
    \\aattempt\CAN\f \SOH(\rR\aattempt\DC2T\n\
    \\EMschedule_to_close_timeout\CAN\r \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2N\n\
    \\SYNstart_to_close_timeout\CAN\SO \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\DC2F\n\
    \\DC1heartbeat_timeout\CAN\SI \SOH(\v2\EM.google.protobuf.DurationR\DLEheartbeatTimeout\DC2F\n\
    \\fretry_policy\CAN\DLE \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2<\n\
    \\bpriority\CAN\DC2 \SOH(\v2 .temporal.api.common.v1.PriorityR\bpriority\DC2\EM\n\
    \\bis_local\CAN\DC1 \SOH(\bR\aisLocal\DC2\NAK\n\
    \\ACKrun_id\CAN\DC3 \SOH(\tR\ENQrunId\DC2\138\SOH\n\
    \&propagated_nexus_serialization_context\CAN\DC4 \SOH(\v25.temporal.api.nexus.v1.PropagatedSerializationContextR#propagatedNexusSerializationContext\DC2O\n\
    \\rworkflow_task\CAN\NAK \SOH(\v2*.coresdk.activity_task.WorkflowTaskAttemptR\fworkflowTask\SUB`\n\
    \\DC1HeaderFieldsEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
    \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH\"\241\STX\n\
    \\DC3WorkflowTaskAttempt\DC2(\n\
    \\DLEstarted_event_id\CAN\SOH \SOH(\ETXR\SOstartedEventId\DC2\CAN\n\
    \\aattempt\CAN\STX \SOH(\rR\aattempt\DC2=\n\
    \\fstarted_time\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\vstartedTime\DC29\n\
    \\EMprevious_started_event_id\CAN\EOT \SOH(\ETXR\SYNpreviousStartedEventId\DC2!\n\
    \\ffailed_tasks\CAN\ENQ \ETX(\ETXR\vfailedTasks\DC2)\n\
    \\DLEprevious_attempt\CAN\ACK \SOH(\rR\SIpreviousAttempt\DC2N\n\
    \\NAKprevious_started_time\CAN\a \SOH(\v2\SUB.google.protobuf.TimestampR\DC3previousStartedTime\"\155\SOH\n\
    \\ACKCancel\DC2C\n\
    \\ACKreason\CAN\SOH \SOH(\SO2+.coresdk.activity_task.ActivityCancelReasonR\ACKreason\DC2L\n\
    \\adetails\CAN\STX \SOH(\v22.coresdk.activity_task.ActivityCancellationDetailsR\adetails\"\234\SOH\n\
    \\ESCActivityCancellationDetails\DC2 \n\
    \\fis_not_found\CAN\SOH \SOH(\bR\n\
    \isNotFound\DC2!\n\
    \\fis_cancelled\CAN\STX \SOH(\bR\visCancelled\DC2\ESC\n\
    \\tis_paused\CAN\ETX \SOH(\bR\bisPaused\DC2 \n\
    \\fis_timed_out\CAN\EOT \SOH(\bR\n\
    \isTimedOut\DC2,\n\
    \\DC2is_worker_shutdown\CAN\ENQ \SOH(\bR\DLEisWorkerShutdown\DC2\EM\n\
    \\bis_reset\CAN\ACK \SOH(\bR\aisReset*o\n\
    \\DC4ActivityCancelReason\DC2\r\n\
    \\tNOT_FOUND\DLE\NUL\DC2\r\n\
    \\tCANCELLED\DLE\SOH\DC2\r\n\
    \\tTIMED_OUT\DLE\STX\DC2\DC3\n\
    \\SIWORKER_SHUTDOWN\DLE\ETX\DC2\n\
    \\n\
    \\ACKPAUSED\DLE\EOT\DC2\t\n\
    \\ENQRESET\DLE\ENQB2\234\STX/Temporalio::Internal::Bridge::Api::ActivityTaskJ\237+\n\
    \\ACK\DC2\EOT\NUL\NUL~\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \a\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\RS\SUBW*\n\
    \ Definitions of the different activity tasks returned from [crate::Core::poll_task].\n\
    \\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NULH\n\
    \\t\n\
    \\STX\b-\DC2\ETX\ACK\NULH\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\b\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\t\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\n\
    \\NUL.\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\v\NUL-\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\f\NUL/\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\SO\NUL\ETB\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SO\b\DC4\n\
    \0\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DLE\EOT\EM\SUB# A unique identifier for this task\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DLE\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DLE\n\
    \\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DLE\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\DC1\EOT\SYN\ENQ\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\DC1\n\
    \\DC1\n\
    \(\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC3\b\CAN\SUB\ESC Start activity execution.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\DC3\b\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC3\SO\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC3\SYN\ETB\n\
    \4\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\NAK\b\SUB\SUB' Attempt to cancel activity execution.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\NAK\b\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\NAK\SI\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\NAK\CAN\EM\n\
    \)\n\
    \\STX\EOT\SOH\DC2\EOT\SUB\NULK\SOH\SUB\GS Begin executing an activity\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\SUB\b\r\n\
    \2\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\FS\EOT\"\SUB% The namespace the workflow lives in\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\FS\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\FS\v\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\FS !\n\
    \>\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\RS\EOT\GS\SUB1 The workflow's type name or function identifier\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\RS\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\RS\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\RS\ESC\FS\n\
    \C\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX \EOTD\SUB6 The workflow execution which requested this activity\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX \EOT,\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX -?\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX BC\n\
    \ \n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\"\EOT\ESC\SUB\DC3 The activity's ID\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\"\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\"\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\"\EM\SUB\n\
    \>\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX$\EOT\GS\SUB1 The activity's type name or function identifier\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX$\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX$\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX$\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETX%\EOTB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\ETX%\EOT/\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX%0=\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX%@A\n\
    \(\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETX'\EOT6\SUB\ESC Arguments to the activity\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\EOT\DC2\ETX'\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\ETX'\r+\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETX',1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETX'45\n\
    \^\n\
    \\EOT\EOT\SOH\STX\a\DC2\ETX)\EOTB\SUBQ The last details that were recorded by a heartbeat when this task was generated\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\EOT\DC2\ETX)\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ACK\DC2\ETX)\r+\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETX),=\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETX)@A\n\
    \2\n\
    \\EOT\EOT\SOH\STX\b\DC2\ETX+\EOT1\SUB% When the task was *first* scheduled\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ACK\DC2\ETX+\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\ETX+\RS,\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\ETX+/0\n\
    \B\n\
    \\EOT\EOT\SOH\STX\t\DC2\ETX-\EOTB\SUB5 When this current attempt at the task was scheduled\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ACK\DC2\ETX-\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\SOH\DC2\ETX-\RS<\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ETX\DC2\ETX-?A\n\
    \_\n\
    \\EOT\EOT\SOH\STX\n\
    \\DC2\ETX/\EOT0\SUBR When this attempt was started, which is to say when core received it by polling.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ACK\DC2\ETX/\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\SOH\DC2\ETX/\RS*\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ETX\DC2\ETX/-/\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\v\DC2\ETX0\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\v\ENQ\DC2\ETX0\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\v\SOH\DC2\ETX0\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\v\ETX\DC2\ETX0\NAK\ETB\n\
    \A\n\
    \\EOT\EOT\SOH\STX\f\DC2\ETX3\EOT<\SUB4 Timeout from the first schedule time to completion\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\f\ACK\DC2\ETX3\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\f\SOH\DC2\ETX3\GS6\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\f\ETX\DC2\ETX39;\n\
    \G\n\
    \\EOT\EOT\SOH\STX\r\DC2\ETX5\EOT9\SUB: Timeout from starting an attempt to reporting its result\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\r\ACK\DC2\ETX5\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\r\SOH\DC2\ETX5\GS3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\r\ETX\DC2\ETX568\n\
    \G\n\
    \\EOT\EOT\SOH\STX\SO\DC2\ETX7\EOT4\SUB: If set a heartbeat must be reported within this interval\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SO\ACK\DC2\ETX7\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SO\SOH\DC2\ETX7\GS.\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SO\ETX\DC2\ETX713\n\
    \\134\STX\n\
    \\EOT\EOT\SOH\STX\SI\DC2\ETX;\EOT9\SUB\248\SOH This is an actual retry policy the service uses. It can be different from the one provided\n\
    \ (or not) during activity scheduling as the service can override the provided one in case its\n\
    \ values are not specified or exceed configured system limits.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SI\ACK\DC2\ETX;\EOT&\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SI\SOH\DC2\ETX;'3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SI\ETX\DC2\ETX;68\n\
    \j\n\
    \\EOT\EOT\SOH\STX\DLE\DC2\ETX=\EOT2\SUB] Priority of this activity. Local activities will always have this field set to the default.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DLE\ACK\DC2\ETX=\EOT#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DLE\SOH\DC2\ETX=$,\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DLE\ETX\DC2\ETX=/1\n\
    \s\n\
    \\EOT\EOT\SOH\STX\DC1\DC2\ETXA\EOT\ETB\SUBf Set to true if this is a local activity. Note that heartbeating does not apply to local\n\
    \ activities.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC1\ENQ\DC2\ETXA\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC1\SOH\DC2\ETXA\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC1\ETX\DC2\ETXA\DC4\SYN\n\
    \U\n\
    \\EOT\EOT\SOH\STX\DC2\DC2\ETXC\EOT\ETB\SUBH Run ID of this activity execution. Only set for standalone activities.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC2\ENQ\DC2\ETXC\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC2\SOH\DC2\ETXC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC2\ETX\DC2\ETXC\DC4\SYN\n\
    \\249\SOH\n\
    \\EOT\EOT\SOH\STX\DC3\DC2\ETXG\EOTe\SUB\235\SOH Serialization context of the Nexus operation handler that started this activity, if any.\n\
    \ Only set for standalone activities. Lang should use it to serialize the activity's result and\n\
    \ failure, which are returned to the Nexus caller.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC3\ACK\DC2\ETXG\EOT8\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC3\SOH\DC2\ETXG9_\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC3\ETX\DC2\ETXGbd\n\
    \\172\SOH\n\
    \\EOT\EOT\SOH\STX\DC4\DC2\ETXJ\EOT+\SUB\158\SOH For a local activity, the workflow task in which Core dispatched this execution. Retries that\n\
    \ Core runs locally keep the value. Unset for other activities.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC4\ACK\DC2\ETXJ\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC4\SOH\DC2\ETXJ\CAN%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC4\ETX\DC2\ETXJ(*\n\
    \e\n\
    \\STX\EOT\STX\DC2\EOTN\NUL^\SOH\SUBY One attempt of a workflow task, from the poll response and the history of that attempt.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXN\b\ESC\n\
    \D\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXP\EOT\US\SUB7 The event id of the task's WorkflowTaskStarted event.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXP\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXP\n\
    \\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXP\GS\RS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXQ\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXQ\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXQ\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXQ\NAK\SYN\n\
    \0\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETXS\EOT/\SUB# When the server started the task.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETXS\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETXS\RS*\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETXS-.\n\
    \\145\SOH\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETXV\EOT(\SUB\131\SOH The started event id of the run's last completed workflow task, from the poll response.\n\
    \ 0 when no task of the run has completed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETXV\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETXV\n\
    \#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETXV&'\n\
    \\195\SOH\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETXY\EOT$\SUB\181\SOH The started event ids of the run's last 100 failed and timed out workflow tasks in history,\n\
    \ in event order. The cap keeps each start small. A transient attempt has no such event.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\EOT\DC2\ETXY\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETXY\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETXY\DC3\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETXY\"#\n\
    \\188\SOH\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETX\\\EOT \SUB\174\SOH The attempt and the started time of the task at previous_started_event_id, from its\n\
    \ WorkflowTaskScheduled and WorkflowTaskStarted events. Unset when no task has completed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ENQ\DC2\ETX\\\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETX\\\v\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETX\\\RS\US\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ACK\DC2\ETX]\EOT8\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ACK\DC2\ETX]\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\ETX]\RS3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\ETX]67\n\
    \2\n\
    \\STX\EOT\ETX\DC2\EOTa\NULf\SOH\SUB& Attempt to cancel a running activity\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXa\b\SO\n\
    \*\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXc\EOT$\SUB\GS Primary cancellation reason\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETXc\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXc\EM\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXc\"#\n\
    \P\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXe\EOT,\SUBC Activity cancellation details, surfaces all cancellation reasons.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETXe\EOT\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXe '\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXe*+\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOTh\NULo\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXh\b#\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXi\EOT\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXi\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXi\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXi\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXj\EOT\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXj\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXj\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXj\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXk\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETXk\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXk\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXk\NAK\SYN\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETXl\EOT\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETXl\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETXl\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETXl\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\ETXm\EOT \n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ENQ\DC2\ETXm\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\ETXm\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\ETXm\RS\US\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\ETXn\EOT\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ENQ\DC2\ETXn\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\ETXn\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\ETXn\DC4\NAK\n\
    \\n\
    \\n\
    \\STX\ENQ\NUL\DC2\EOTq\NUL~\SOH\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETXq\ENQ\EM\n\
    \[\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETXs\EOT\DC2\SUBN The activity no longer exists according to server (may be already completed)\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETXs\EOT\r\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETXs\DLE\DC1\n\
    \0\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETXu\EOT\DC2\SUB# Activity was explicitly cancelled\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETXu\EOT\r\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETXu\DLE\DC1\n\
    \!\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETXw\EOT\DC2\SUB\DC4 Activity timed out\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETXw\EOT\r\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETXw\DLE\DC1\n\
    \I\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETXy\EOT\CAN\SUB< Core is shutting down and the graceful timeout has elapsed\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETXy\EOT\DC3\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETXy\SYN\ETB\n\
    \\"\n\
    \\EOT\ENQ\NUL\STX\EOT\DC2\ETX{\EOT\SI\SUB\NAK Activity was paused\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\SOH\DC2\ETX{\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\STX\DC2\ETX{\r\SO\n\
    \!\n\
    \\EOT\ENQ\NUL\STX\ENQ\DC2\ETX}\EOT\SO\SUB\DC4 Activity was reset\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ENQ\SOH\DC2\ETX}\EOT\t\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ENQ\STX\DC2\ETX}\f\rb\ACKproto3"