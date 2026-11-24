{- This file was auto-generated from temporal/sdk/core/activity_result/activity_result.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult (
        ActivityExecutionResult(), ActivityExecutionResult'Status(..),
        _ActivityExecutionResult'Completed,
        _ActivityExecutionResult'Failed,
        _ActivityExecutionResult'Cancelled,
        _ActivityExecutionResult'WillCompleteAsync, ActivityResolution(),
        ActivityResolution'Status(..), _ActivityResolution'Completed,
        _ActivityResolution'Failed, _ActivityResolution'Cancelled,
        _ActivityResolution'Backoff, Cancellation(), DoBackoff(),
        Failure(), Success(), WillCompleteAsync()
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
import qualified Proto.Temporal.Api.Enums.V1.FailedCause
import qualified Proto.Temporal.Api.Failure.V1.Message
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.maybe'status' @:: Lens' ActivityExecutionResult (Prelude.Maybe ActivityExecutionResult'Status)@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.maybe'completed' @:: Lens' ActivityExecutionResult (Prelude.Maybe Success)@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.completed' @:: Lens' ActivityExecutionResult Success@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.maybe'failed' @:: Lens' ActivityExecutionResult (Prelude.Maybe Failure)@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.failed' @:: Lens' ActivityExecutionResult Failure@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.maybe'cancelled' @:: Lens' ActivityExecutionResult (Prelude.Maybe Cancellation)@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.cancelled' @:: Lens' ActivityExecutionResult Cancellation@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.maybe'willCompleteAsync' @:: Lens' ActivityExecutionResult (Prelude.Maybe WillCompleteAsync)@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.willCompleteAsync' @:: Lens' ActivityExecutionResult WillCompleteAsync@ -}
data ActivityExecutionResult
  = ActivityExecutionResult'_constructor {_ActivityExecutionResult'status :: !(Prelude.Maybe ActivityExecutionResult'Status),
                                          _ActivityExecutionResult'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ActivityExecutionResult where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ActivityExecutionResult'Status
  = ActivityExecutionResult'Completed !Success |
    ActivityExecutionResult'Failed !Failure |
    ActivityExecutionResult'Cancelled !Cancellation |
    ActivityExecutionResult'WillCompleteAsync !WillCompleteAsync
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ActivityExecutionResult "maybe'status" (Prelude.Maybe ActivityExecutionResult'Status) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionResult'status
           (\ x__ y__ -> x__ {_ActivityExecutionResult'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionResult "maybe'completed" (Prelude.Maybe Success) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionResult'status
           (\ x__ y__ -> x__ {_ActivityExecutionResult'status = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ActivityExecutionResult'Completed x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ActivityExecutionResult'Completed y__))
instance Data.ProtoLens.Field.HasField ActivityExecutionResult "completed" Success where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionResult'status
           (\ x__ y__ -> x__ {_ActivityExecutionResult'status = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ActivityExecutionResult'Completed x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ActivityExecutionResult'Completed y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ActivityExecutionResult "maybe'failed" (Prelude.Maybe Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionResult'status
           (\ x__ y__ -> x__ {_ActivityExecutionResult'status = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ActivityExecutionResult'Failed x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ActivityExecutionResult'Failed y__))
instance Data.ProtoLens.Field.HasField ActivityExecutionResult "failed" Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionResult'status
           (\ x__ y__ -> x__ {_ActivityExecutionResult'status = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ActivityExecutionResult'Failed x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ActivityExecutionResult'Failed y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ActivityExecutionResult "maybe'cancelled" (Prelude.Maybe Cancellation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionResult'status
           (\ x__ y__ -> x__ {_ActivityExecutionResult'status = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ActivityExecutionResult'Cancelled x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ActivityExecutionResult'Cancelled y__))
instance Data.ProtoLens.Field.HasField ActivityExecutionResult "cancelled" Cancellation where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionResult'status
           (\ x__ y__ -> x__ {_ActivityExecutionResult'status = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ActivityExecutionResult'Cancelled x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ActivityExecutionResult'Cancelled y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ActivityExecutionResult "maybe'willCompleteAsync" (Prelude.Maybe WillCompleteAsync) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionResult'status
           (\ x__ y__ -> x__ {_ActivityExecutionResult'status = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ActivityExecutionResult'WillCompleteAsync x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap ActivityExecutionResult'WillCompleteAsync y__))
instance Data.ProtoLens.Field.HasField ActivityExecutionResult "willCompleteAsync" WillCompleteAsync where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionResult'status
           (\ x__ y__ -> x__ {_ActivityExecutionResult'status = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ActivityExecutionResult'WillCompleteAsync x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap ActivityExecutionResult'WillCompleteAsync y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ActivityExecutionResult where
  messageName _
    = Data.Text.pack "coresdk.activity_result.ActivityExecutionResult"
  packedMessageDescriptor _
    = "\n\
      \\ETBActivityExecutionResult\DC2@\n\
      \\tcompleted\CAN\SOH \SOH(\v2 .coresdk.activity_result.SuccessH\NULR\tcompleted\DC2:\n\
      \\ACKfailed\CAN\STX \SOH(\v2 .coresdk.activity_result.FailureH\NULR\ACKfailed\DC2E\n\
      \\tcancelled\CAN\ETX \SOH(\v2%.coresdk.activity_result.CancellationH\NULR\tcancelled\DC2\\\n\
      \\DC3will_complete_async\CAN\EOT \SOH(\v2*.coresdk.activity_result.WillCompleteAsyncH\NULR\DC1willCompleteAsyncB\b\n\
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
              Data.ProtoLens.FieldDescriptor ActivityExecutionResult
        failed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failed"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failed")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionResult
        cancelled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancelled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Cancellation)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cancelled")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionResult
        willCompleteAsync__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "will_complete_async"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WillCompleteAsync)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'willCompleteAsync")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionResult
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, completed__field_descriptor),
           (Data.ProtoLens.Tag 2, failed__field_descriptor),
           (Data.ProtoLens.Tag 3, cancelled__field_descriptor),
           (Data.ProtoLens.Tag 4, willCompleteAsync__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ActivityExecutionResult'_unknownFields
        (\ x__ y__ -> x__ {_ActivityExecutionResult'_unknownFields = y__})
  defMessage
    = ActivityExecutionResult'_constructor
        {_ActivityExecutionResult'status = Prelude.Nothing,
         _ActivityExecutionResult'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ActivityExecutionResult
          -> Data.ProtoLens.Encoding.Bytes.Parser ActivityExecutionResult
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
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "will_complete_async"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"willCompleteAsync") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ActivityExecutionResult"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'status") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (ActivityExecutionResult'Completed v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (ActivityExecutionResult'Failed v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (ActivityExecutionResult'Cancelled v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (ActivityExecutionResult'WillCompleteAsync v))
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
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ActivityExecutionResult where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ActivityExecutionResult'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ActivityExecutionResult'status x__) ())
instance Control.DeepSeq.NFData ActivityExecutionResult'Status where
  rnf (ActivityExecutionResult'Completed x__)
    = Control.DeepSeq.rnf x__
  rnf (ActivityExecutionResult'Failed x__) = Control.DeepSeq.rnf x__
  rnf (ActivityExecutionResult'Cancelled x__)
    = Control.DeepSeq.rnf x__
  rnf (ActivityExecutionResult'WillCompleteAsync x__)
    = Control.DeepSeq.rnf x__
_ActivityExecutionResult'Completed ::
  Data.ProtoLens.Prism.Prism' ActivityExecutionResult'Status Success
_ActivityExecutionResult'Completed
  = Data.ProtoLens.Prism.prism'
      ActivityExecutionResult'Completed
      (\ p__
         -> case p__ of
              (ActivityExecutionResult'Completed p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ActivityExecutionResult'Failed ::
  Data.ProtoLens.Prism.Prism' ActivityExecutionResult'Status Failure
_ActivityExecutionResult'Failed
  = Data.ProtoLens.Prism.prism'
      ActivityExecutionResult'Failed
      (\ p__
         -> case p__ of
              (ActivityExecutionResult'Failed p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ActivityExecutionResult'Cancelled ::
  Data.ProtoLens.Prism.Prism' ActivityExecutionResult'Status Cancellation
_ActivityExecutionResult'Cancelled
  = Data.ProtoLens.Prism.prism'
      ActivityExecutionResult'Cancelled
      (\ p__
         -> case p__ of
              (ActivityExecutionResult'Cancelled p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ActivityExecutionResult'WillCompleteAsync ::
  Data.ProtoLens.Prism.Prism' ActivityExecutionResult'Status WillCompleteAsync
_ActivityExecutionResult'WillCompleteAsync
  = Data.ProtoLens.Prism.prism'
      ActivityExecutionResult'WillCompleteAsync
      (\ p__
         -> case p__ of
              (ActivityExecutionResult'WillCompleteAsync p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.maybe'status' @:: Lens' ActivityResolution (Prelude.Maybe ActivityResolution'Status)@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.maybe'completed' @:: Lens' ActivityResolution (Prelude.Maybe Success)@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.completed' @:: Lens' ActivityResolution Success@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.maybe'failed' @:: Lens' ActivityResolution (Prelude.Maybe Failure)@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.failed' @:: Lens' ActivityResolution Failure@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.maybe'cancelled' @:: Lens' ActivityResolution (Prelude.Maybe Cancellation)@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.cancelled' @:: Lens' ActivityResolution Cancellation@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.maybe'backoff' @:: Lens' ActivityResolution (Prelude.Maybe DoBackoff)@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.backoff' @:: Lens' ActivityResolution DoBackoff@ -}
data ActivityResolution
  = ActivityResolution'_constructor {_ActivityResolution'status :: !(Prelude.Maybe ActivityResolution'Status),
                                     _ActivityResolution'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ActivityResolution where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ActivityResolution'Status
  = ActivityResolution'Completed !Success |
    ActivityResolution'Failed !Failure |
    ActivityResolution'Cancelled !Cancellation |
    ActivityResolution'Backoff !DoBackoff
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ActivityResolution "maybe'status" (Prelude.Maybe ActivityResolution'Status) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityResolution'status
           (\ x__ y__ -> x__ {_ActivityResolution'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityResolution "maybe'completed" (Prelude.Maybe Success) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityResolution'status
           (\ x__ y__ -> x__ {_ActivityResolution'status = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ActivityResolution'Completed x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ActivityResolution'Completed y__))
instance Data.ProtoLens.Field.HasField ActivityResolution "completed" Success where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityResolution'status
           (\ x__ y__ -> x__ {_ActivityResolution'status = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ActivityResolution'Completed x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ActivityResolution'Completed y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ActivityResolution "maybe'failed" (Prelude.Maybe Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityResolution'status
           (\ x__ y__ -> x__ {_ActivityResolution'status = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ActivityResolution'Failed x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ActivityResolution'Failed y__))
instance Data.ProtoLens.Field.HasField ActivityResolution "failed" Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityResolution'status
           (\ x__ y__ -> x__ {_ActivityResolution'status = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ActivityResolution'Failed x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ActivityResolution'Failed y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ActivityResolution "maybe'cancelled" (Prelude.Maybe Cancellation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityResolution'status
           (\ x__ y__ -> x__ {_ActivityResolution'status = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ActivityResolution'Cancelled x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ActivityResolution'Cancelled y__))
instance Data.ProtoLens.Field.HasField ActivityResolution "cancelled" Cancellation where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityResolution'status
           (\ x__ y__ -> x__ {_ActivityResolution'status = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ActivityResolution'Cancelled x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ActivityResolution'Cancelled y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ActivityResolution "maybe'backoff" (Prelude.Maybe DoBackoff) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityResolution'status
           (\ x__ y__ -> x__ {_ActivityResolution'status = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ActivityResolution'Backoff x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ActivityResolution'Backoff y__))
instance Data.ProtoLens.Field.HasField ActivityResolution "backoff" DoBackoff where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityResolution'status
           (\ x__ y__ -> x__ {_ActivityResolution'status = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ActivityResolution'Backoff x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ActivityResolution'Backoff y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ActivityResolution where
  messageName _
    = Data.Text.pack "coresdk.activity_result.ActivityResolution"
  packedMessageDescriptor _
    = "\n\
      \\DC2ActivityResolution\DC2@\n\
      \\tcompleted\CAN\SOH \SOH(\v2 .coresdk.activity_result.SuccessH\NULR\tcompleted\DC2:\n\
      \\ACKfailed\CAN\STX \SOH(\v2 .coresdk.activity_result.FailureH\NULR\ACKfailed\DC2E\n\
      \\tcancelled\CAN\ETX \SOH(\v2%.coresdk.activity_result.CancellationH\NULR\tcancelled\DC2>\n\
      \\abackoff\CAN\EOT \SOH(\v2\".coresdk.activity_result.DoBackoffH\NULR\abackoffB\b\n\
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
              Data.ProtoLens.FieldDescriptor ActivityResolution
        failed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failed"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failed")) ::
              Data.ProtoLens.FieldDescriptor ActivityResolution
        cancelled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancelled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Cancellation)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cancelled")) ::
              Data.ProtoLens.FieldDescriptor ActivityResolution
        backoff__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "backoff"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DoBackoff)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'backoff")) ::
              Data.ProtoLens.FieldDescriptor ActivityResolution
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, completed__field_descriptor),
           (Data.ProtoLens.Tag 2, failed__field_descriptor),
           (Data.ProtoLens.Tag 3, cancelled__field_descriptor),
           (Data.ProtoLens.Tag 4, backoff__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ActivityResolution'_unknownFields
        (\ x__ y__ -> x__ {_ActivityResolution'_unknownFields = y__})
  defMessage
    = ActivityResolution'_constructor
        {_ActivityResolution'status = Prelude.Nothing,
         _ActivityResolution'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ActivityResolution
          -> Data.ProtoLens.Encoding.Bytes.Parser ActivityResolution
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
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "backoff"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"backoff") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ActivityResolution"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'status") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (ActivityResolution'Completed v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (ActivityResolution'Failed v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (ActivityResolution'Cancelled v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (ActivityResolution'Backoff v))
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
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ActivityResolution where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ActivityResolution'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ActivityResolution'status x__) ())
instance Control.DeepSeq.NFData ActivityResolution'Status where
  rnf (ActivityResolution'Completed x__) = Control.DeepSeq.rnf x__
  rnf (ActivityResolution'Failed x__) = Control.DeepSeq.rnf x__
  rnf (ActivityResolution'Cancelled x__) = Control.DeepSeq.rnf x__
  rnf (ActivityResolution'Backoff x__) = Control.DeepSeq.rnf x__
_ActivityResolution'Completed ::
  Data.ProtoLens.Prism.Prism' ActivityResolution'Status Success
_ActivityResolution'Completed
  = Data.ProtoLens.Prism.prism'
      ActivityResolution'Completed
      (\ p__
         -> case p__ of
              (ActivityResolution'Completed p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ActivityResolution'Failed ::
  Data.ProtoLens.Prism.Prism' ActivityResolution'Status Failure
_ActivityResolution'Failed
  = Data.ProtoLens.Prism.prism'
      ActivityResolution'Failed
      (\ p__
         -> case p__ of
              (ActivityResolution'Failed p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ActivityResolution'Cancelled ::
  Data.ProtoLens.Prism.Prism' ActivityResolution'Status Cancellation
_ActivityResolution'Cancelled
  = Data.ProtoLens.Prism.prism'
      ActivityResolution'Cancelled
      (\ p__
         -> case p__ of
              (ActivityResolution'Cancelled p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ActivityResolution'Backoff ::
  Data.ProtoLens.Prism.Prism' ActivityResolution'Status DoBackoff
_ActivityResolution'Backoff
  = Data.ProtoLens.Prism.prism'
      ActivityResolution'Backoff
      (\ p__
         -> case p__ of
              (ActivityResolution'Backoff p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.failure' @:: Lens' Cancellation Proto.Temporal.Api.Failure.V1.Message.Failure@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.maybe'failure' @:: Lens' Cancellation (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@ -}
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
    = Data.Text.pack "coresdk.activity_result.Cancellation"
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
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.attempt' @:: Lens' DoBackoff Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.backoffDuration' @:: Lens' DoBackoff Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.maybe'backoffDuration' @:: Lens' DoBackoff (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.originalScheduleTime' @:: Lens' DoBackoff Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.maybe'originalScheduleTime' @:: Lens' DoBackoff (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data DoBackoff
  = DoBackoff'_constructor {_DoBackoff'attempt :: !Data.Word.Word32,
                            _DoBackoff'backoffDuration :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                            _DoBackoff'originalScheduleTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                            _DoBackoff'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DoBackoff where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DoBackoff "attempt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoBackoff'attempt (\ x__ y__ -> x__ {_DoBackoff'attempt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DoBackoff "backoffDuration" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoBackoff'backoffDuration
           (\ x__ y__ -> x__ {_DoBackoff'backoffDuration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DoBackoff "maybe'backoffDuration" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoBackoff'backoffDuration
           (\ x__ y__ -> x__ {_DoBackoff'backoffDuration = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DoBackoff "originalScheduleTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoBackoff'originalScheduleTime
           (\ x__ y__ -> x__ {_DoBackoff'originalScheduleTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DoBackoff "maybe'originalScheduleTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoBackoff'originalScheduleTime
           (\ x__ y__ -> x__ {_DoBackoff'originalScheduleTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message DoBackoff where
  messageName _ = Data.Text.pack "coresdk.activity_result.DoBackoff"
  packedMessageDescriptor _
    = "\n\
      \\tDoBackoff\DC2\CAN\n\
      \\aattempt\CAN\SOH \SOH(\rR\aattempt\DC2D\n\
      \\DLEbackoff_duration\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\SIbackoffDuration\DC2P\n\
      \\SYNoriginal_schedule_time\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\DC4originalScheduleTime"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        attempt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attempt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"attempt")) ::
              Data.ProtoLens.FieldDescriptor DoBackoff
        backoffDuration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "backoff_duration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'backoffDuration")) ::
              Data.ProtoLens.FieldDescriptor DoBackoff
        originalScheduleTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "original_schedule_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'originalScheduleTime")) ::
              Data.ProtoLens.FieldDescriptor DoBackoff
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, attempt__field_descriptor),
           (Data.ProtoLens.Tag 2, backoffDuration__field_descriptor),
           (Data.ProtoLens.Tag 3, originalScheduleTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DoBackoff'_unknownFields
        (\ x__ y__ -> x__ {_DoBackoff'_unknownFields = y__})
  defMessage
    = DoBackoff'_constructor
        {_DoBackoff'attempt = Data.ProtoLens.fieldDefault,
         _DoBackoff'backoffDuration = Prelude.Nothing,
         _DoBackoff'originalScheduleTime = Prelude.Nothing,
         _DoBackoff'_unknownFields = []}
  parseMessage
    = let
        loop :: DoBackoff -> Data.ProtoLens.Encoding.Bytes.Parser DoBackoff
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
                                       "attempt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"attempt") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "backoff_duration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"backoffDuration") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "original_schedule_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"originalScheduleTime") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DoBackoff"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"attempt") _x
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
                       (Data.ProtoLens.Field.field @"maybe'backoffDuration") _x
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
                          (Data.ProtoLens.Field.field @"maybe'originalScheduleTime") _x
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
instance Control.DeepSeq.NFData DoBackoff where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DoBackoff'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DoBackoff'attempt x__)
                (Control.DeepSeq.deepseq
                   (_DoBackoff'backoffDuration x__)
                   (Control.DeepSeq.deepseq
                      (_DoBackoff'originalScheduleTime x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.failure' @:: Lens' Failure Proto.Temporal.Api.Failure.V1.Message.Failure@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.maybe'failure' @:: Lens' Failure (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.cause' @:: Lens' Failure Proto.Temporal.Api.Enums.V1.FailedCause.ActivityTaskFailedCause@ -}
data Failure
  = Failure'_constructor {_Failure'failure :: !(Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure),
                          _Failure'cause :: !Proto.Temporal.Api.Enums.V1.FailedCause.ActivityTaskFailedCause,
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
instance Data.ProtoLens.Field.HasField Failure "cause" Proto.Temporal.Api.Enums.V1.FailedCause.ActivityTaskFailedCause where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'cause (\ x__ y__ -> x__ {_Failure'cause = y__}))
        Prelude.id
instance Data.ProtoLens.Message Failure where
  messageName _ = Data.Text.pack "coresdk.activity_result.Failure"
  packedMessageDescriptor _
    = "\n\
      \\aFailure\DC2:\n\
      \\afailure\CAN\SOH \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure\DC2D\n\
      \\ENQcause\CAN\STX \SOH(\SO2..temporal.api.enums.v1.ActivityTaskFailedCauseR\ENQcause"
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
        cause__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cause"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.FailedCause.ActivityTaskFailedCause)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"cause")) ::
              Data.ProtoLens.FieldDescriptor Failure
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, failure__field_descriptor),
           (Data.ProtoLens.Tag 2, cause__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Failure'_unknownFields
        (\ x__ y__ -> x__ {_Failure'_unknownFields = y__})
  defMessage
    = Failure'_constructor
        {_Failure'failure = Prelude.Nothing,
         _Failure'cause = Data.ProtoLens.fieldDefault,
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
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "failure"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"failure") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "cause"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cause") y x)
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
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"cause") _x
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
instance Control.DeepSeq.NFData Failure where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Failure'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Failure'failure x__)
                (Control.DeepSeq.deepseq (_Failure'cause x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.result' @:: Lens' Success Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields.maybe'result' @:: Lens' Success (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
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
  messageName _ = Data.Text.pack "coresdk.activity_result.Success"
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
{- | Fields :
      -}
data WillCompleteAsync
  = WillCompleteAsync'_constructor {_WillCompleteAsync'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WillCompleteAsync where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message WillCompleteAsync where
  messageName _
    = Data.Text.pack "coresdk.activity_result.WillCompleteAsync"
  packedMessageDescriptor _
    = "\n\
      \\DC1WillCompleteAsync"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WillCompleteAsync'_unknownFields
        (\ x__ y__ -> x__ {_WillCompleteAsync'_unknownFields = y__})
  defMessage
    = WillCompleteAsync'_constructor
        {_WillCompleteAsync'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WillCompleteAsync
          -> Data.ProtoLens.Encoding.Bytes.Parser WillCompleteAsync
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
          (do loop Data.ProtoLens.defMessage) "WillCompleteAsync"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData WillCompleteAsync where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WillCompleteAsync'_unknownFields x__) ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \7temporal/sdk/core/activity_result/activity_result.proto\DC2\ETBcoresdk.activity_result\SUB\RSgoogle/protobuf/duration.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB$temporal/api/common/v1/message.proto\SUB(temporal/api/enums/v1/failed_cause.proto\SUB%temporal/api/failure/v1/message.proto\"\198\STX\n\
    \\ETBActivityExecutionResult\DC2@\n\
    \\tcompleted\CAN\SOH \SOH(\v2 .coresdk.activity_result.SuccessH\NULR\tcompleted\DC2:\n\
    \\ACKfailed\CAN\STX \SOH(\v2 .coresdk.activity_result.FailureH\NULR\ACKfailed\DC2E\n\
    \\tcancelled\CAN\ETX \SOH(\v2%.coresdk.activity_result.CancellationH\NULR\tcancelled\DC2\\\n\
    \\DC3will_complete_async\CAN\EOT \SOH(\v2*.coresdk.activity_result.WillCompleteAsyncH\NULR\DC1willCompleteAsyncB\b\n\
    \\ACKstatus\"\163\STX\n\
    \\DC2ActivityResolution\DC2@\n\
    \\tcompleted\CAN\SOH \SOH(\v2 .coresdk.activity_result.SuccessH\NULR\tcompleted\DC2:\n\
    \\ACKfailed\CAN\STX \SOH(\v2 .coresdk.activity_result.FailureH\NULR\ACKfailed\DC2E\n\
    \\tcancelled\CAN\ETX \SOH(\v2%.coresdk.activity_result.CancellationH\NULR\tcancelled\DC2>\n\
    \\abackoff\CAN\EOT \SOH(\v2\".coresdk.activity_result.DoBackoffH\NULR\abackoffB\b\n\
    \\ACKstatus\"B\n\
    \\aSuccess\DC27\n\
    \\ACKresult\CAN\SOH \SOH(\v2\US.temporal.api.common.v1.PayloadR\ACKresult\"\139\SOH\n\
    \\aFailure\DC2:\n\
    \\afailure\CAN\SOH \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure\DC2D\n\
    \\ENQcause\CAN\STX \SOH(\SO2..temporal.api.enums.v1.ActivityTaskFailedCauseR\ENQcause\"J\n\
    \\fCancellation\DC2:\n\
    \\afailure\CAN\SOH \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure\"\DC3\n\
    \\DC1WillCompleteAsync\"\189\SOH\n\
    \\tDoBackoff\DC2\CAN\n\
    \\aattempt\CAN\SOH \SOH(\rR\aattempt\DC2D\n\
    \\DLEbackoff_duration\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\SIbackoffDuration\DC2P\n\
    \\SYNoriginal_schedule_time\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\DC4originalScheduleTimeB4\234\STX1Temporalio::Internal::Bridge::Api::ActivityResultJ\162\SYN\n\
    \\ACK\DC2\EOT\NUL\NULO\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL \n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NULJ\n\
    \\t\n\
    \\STX\b-\DC2\ETX\ETX\NULJ\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL.\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL2\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL/\n\
    \9\n\
    \\STX\EOT\NUL\DC2\EOT\f\NUL\DC3\SOH\SUB- Used to report activity completions to core\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\f\b\US\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\r\EOT\DC2\ENQ\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\r\n\
    \\DLE\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SO\b\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\SO\b\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SO\DLE\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SO\FS\GS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SI\b\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\SI\b\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SI\DLE\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SI\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DLE\b#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\DLE\b\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DLE\NAK\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DLE!\"\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\DC1\b2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX\DC1\b\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\DC1\SUB-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\DC101\n\
    \~\n\
    \\STX\EOT\SOH\DC2\EOT\ETB\NUL\RS\SOH\SUBr Used to report activity resolutions to lang. IE: This is what the activities are resolved with\n\
    \ in the workflow.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\ETB\b\SUB\n\
    \\f\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOT\CAN\EOT\GS\ENQ\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETX\CAN\n\
    \\DLE\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\EM\b\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\EM\b\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\EM\DLE\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\EM\FS\GS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\SUB\b\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX\SUB\b\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\SUB\DLE\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\SUB\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\ESC\b#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX\ESC\b\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\ESC\NAK\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\ESC!\"\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\FS\b\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETX\FS\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\FS\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\FS\FS\GS\n\
    \U\n\
    \\STX\EOT\STX\DC2\EOT!\NUL#\SOH\SUBI Used to report successful completion either when executing or resolving\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX!\b\SI\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\"\EOT.\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX\"\EOT\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\"#)\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\",-\n\
    \P\n\
    \\STX\EOT\ETX\DC2\EOT&\NUL+\SOH\SUBD Used to report activity failure either when executing or resolving\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX&\b\SI\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX'\EOT0\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETX'\EOT#\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX'$+\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX'./\n\
    \\132\SOH\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX*\EOT<\SUBw Only meaningful on ActivityExecutionResult (lang -> core); ignored on ActivityResolution,\n\
    \ which reuses this message.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETX*\EOT1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX*27\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX*:;\n\
    \\164\STX\n\
    \\STX\EOT\EOT\DC2\EOT3\NUL5\SOH\SUB\151\STX\n\
    \ Used to report cancellation from both Core and Lang.\n\
    \ When Lang reports a cancelled activity, it must put a CancelledFailure in the failure field.\n\
    \ When Core reports a cancelled activity, it must put an ActivityFailure with CancelledFailure\n\
    \ as the cause in the failure field.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX3\b\DC4\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX4\EOT0\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETX4\EOT#\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX4$+\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX4./\n\
    \\200\SOH\n\
    \\STX\EOT\ENQ\DC2\EOT;\NUL<\SOH\SUB\187\SOH\n\
    \ Used in ActivityExecutionResult to notify Core that this Activity will complete asynchronously.\n\
    \ Core will forget about this Activity and free up resources used to track this Activity.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX;\b\EM\n\
    \\131\EOT\n\
    \\STX\EOT\ACK\DC2\EOTG\NULO\SOH\SUB\246\ETX\n\
    \ Issued when a local activity needs to retry but also wants to back off more than would be\n\
    \ reasonable to WFT heartbeat for. Lang is expected to schedule a timer for the duration\n\
    \ and then start a local activity of the same type & same inputs with the provided attempt number\n\
    \ after the timer has elapsed.\n\
    \\n\
    \ This exists because Core does not have a concept of starting commands by itself, they originate\n\
    \ from lang. So expecting lang to start the timer / next pass of the activity fits more smoothly.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXG\b\DC1\n\
    \\183\SOH\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXJ\EOT\ETB\SUB\169\SOH The attempt number that lang should provide when scheduling the retry. If the LA failed\n\
    \ on attempt 4 and we told lang to back off with a timer, this number will be 5.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXJ\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXJ\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXJ\NAK\SYN\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETXK\EOT2\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\ETXK\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXK\GS-\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXK01\n\
    \}\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETXN\EOT9\SUBp The time the first attempt of this local activity was scheduled. Must be passed with attempt\n\
    \ to the retry LA.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ACK\DC2\ETXN\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETXN\RS4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETXN78b\ACKproto3"