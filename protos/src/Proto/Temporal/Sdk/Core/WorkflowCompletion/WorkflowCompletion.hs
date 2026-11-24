{- This file was auto-generated from temporal/sdk/core/workflow_completion/workflow_completion.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion (
        Failure(), Success(), WorkflowActivationCompletion(),
        WorkflowActivationCompletion'Status(..),
        _WorkflowActivationCompletion'Successful,
        _WorkflowActivationCompletion'Failed
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
import qualified Proto.Temporal.Api.Enums.V1.FailedCause
import qualified Proto.Temporal.Api.Enums.V1.Workflow
import qualified Proto.Temporal.Api.Failure.V1.Message
import qualified Proto.Temporal.Sdk.Core.Common.Common
import qualified Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields.failure' @:: Lens' Failure Proto.Temporal.Api.Failure.V1.Message.Failure@
         * 'Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields.maybe'failure' @:: Lens' Failure (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields.forceCause' @:: Lens' Failure Proto.Temporal.Api.Enums.V1.FailedCause.WorkflowTaskFailedCause@ -}
data Failure
  = Failure'_constructor {_Failure'failure :: !(Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure),
                          _Failure'forceCause :: !Proto.Temporal.Api.Enums.V1.FailedCause.WorkflowTaskFailedCause,
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
instance Data.ProtoLens.Field.HasField Failure "forceCause" Proto.Temporal.Api.Enums.V1.FailedCause.WorkflowTaskFailedCause where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'forceCause (\ x__ y__ -> x__ {_Failure'forceCause = y__}))
        Prelude.id
instance Data.ProtoLens.Message Failure where
  messageName _
    = Data.Text.pack "coresdk.workflow_completion.Failure"
  packedMessageDescriptor _
    = "\n\
      \\aFailure\DC2:\n\
      \\afailure\CAN\SOH \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure\DC2O\n\
      \\vforce_cause\CAN\STX \SOH(\SO2..temporal.api.enums.v1.WorkflowTaskFailedCauseR\n\
      \forceCause"
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
        forceCause__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "force_cause"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.FailedCause.WorkflowTaskFailedCause)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"forceCause")) ::
              Data.ProtoLens.FieldDescriptor Failure
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, failure__field_descriptor),
           (Data.ProtoLens.Tag 2, forceCause__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Failure'_unknownFields
        (\ x__ y__ -> x__ {_Failure'_unknownFields = y__})
  defMessage
    = Failure'_constructor
        {_Failure'failure = Prelude.Nothing,
         _Failure'forceCause = Data.ProtoLens.fieldDefault,
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
                                       "force_cause"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"forceCause") y x)
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
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"forceCause") _x
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
                (Control.DeepSeq.deepseq (_Failure'forceCause x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields.commands' @:: Lens' Success [Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands.WorkflowCommand]@
         * 'Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields.vec'commands' @:: Lens' Success (Data.Vector.Vector Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands.WorkflowCommand)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields.usedInternalFlags' @:: Lens' Success [Data.Word.Word32]@
         * 'Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields.vec'usedInternalFlags' @:: Lens' Success (Data.Vector.Unboxed.Vector Data.Word.Word32)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields.versioningBehavior' @:: Lens' Success Proto.Temporal.Api.Enums.V1.Workflow.VersioningBehavior@ -}
data Success
  = Success'_constructor {_Success'commands :: !(Data.Vector.Vector Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands.WorkflowCommand),
                          _Success'usedInternalFlags :: !(Data.Vector.Unboxed.Vector Data.Word.Word32),
                          _Success'versioningBehavior :: !Proto.Temporal.Api.Enums.V1.Workflow.VersioningBehavior,
                          _Success'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Success where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Success "commands" [Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands.WorkflowCommand] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Success'commands (\ x__ y__ -> x__ {_Success'commands = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Success "vec'commands" (Data.Vector.Vector Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands.WorkflowCommand) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Success'commands (\ x__ y__ -> x__ {_Success'commands = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Success "usedInternalFlags" [Data.Word.Word32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Success'usedInternalFlags
           (\ x__ y__ -> x__ {_Success'usedInternalFlags = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Success "vec'usedInternalFlags" (Data.Vector.Unboxed.Vector Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Success'usedInternalFlags
           (\ x__ y__ -> x__ {_Success'usedInternalFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Success "versioningBehavior" Proto.Temporal.Api.Enums.V1.Workflow.VersioningBehavior where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Success'versioningBehavior
           (\ x__ y__ -> x__ {_Success'versioningBehavior = y__}))
        Prelude.id
instance Data.ProtoLens.Message Success where
  messageName _
    = Data.Text.pack "coresdk.workflow_completion.Success"
  packedMessageDescriptor _
    = "\n\
      \\aSuccess\DC2F\n\
      \\bcommands\CAN\SOH \ETX(\v2*.coresdk.workflow_commands.WorkflowCommandR\bcommands\DC2.\n\
      \\DC3used_internal_flags\CAN\ACK \ETX(\rR\DC1usedInternalFlags\DC2Z\n\
      \\DC3versioning_behavior\CAN\a \SOH(\SO2).temporal.api.enums.v1.VersioningBehaviorR\DC2versioningBehavior"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        commands__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "commands"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands.WorkflowCommand)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"commands")) ::
              Data.ProtoLens.FieldDescriptor Success
        usedInternalFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "used_internal_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"usedInternalFlags")) ::
              Data.ProtoLens.FieldDescriptor Success
        versioningBehavior__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "versioning_behavior"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Workflow.VersioningBehavior)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"versioningBehavior")) ::
              Data.ProtoLens.FieldDescriptor Success
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, commands__field_descriptor),
           (Data.ProtoLens.Tag 6, usedInternalFlags__field_descriptor),
           (Data.ProtoLens.Tag 7, versioningBehavior__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Success'_unknownFields
        (\ x__ y__ -> x__ {_Success'_unknownFields = y__})
  defMessage
    = Success'_constructor
        {_Success'commands = Data.Vector.Generic.empty,
         _Success'usedInternalFlags = Data.Vector.Generic.empty,
         _Success'versioningBehavior = Data.ProtoLens.fieldDefault,
         _Success'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Success
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands.WorkflowCommand
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word32
                -> Data.ProtoLens.Encoding.Bytes.Parser Success
        loop x mutable'commands mutable'usedInternalFlags
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'commands <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'commands)
                      frozen'usedInternalFlags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                       mutable'usedInternalFlags)
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
                              (Data.ProtoLens.Field.field @"vec'commands") frozen'commands
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'usedInternalFlags")
                                 frozen'usedInternalFlags x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "commands"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'commands y)
                                loop x v mutable'usedInternalFlags
                        48
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "used_internal_flags"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'usedInternalFlags y)
                                loop x mutable'commands v
                        50
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
                                                                    "used_internal_flags"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'usedInternalFlags)
                                loop x mutable'commands y
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "versioning_behavior"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"versioningBehavior") y x)
                                  mutable'commands mutable'usedInternalFlags
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'commands mutable'usedInternalFlags
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'commands <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              mutable'usedInternalFlags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'commands
                mutable'usedInternalFlags)
          "Success"
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'commands") _x))
             ((Data.Monoid.<>)
                (let
                   p = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'usedInternalFlags") _x
                 in
                   if Data.Vector.Generic.null p then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            (Data.ProtoLens.Encoding.Bytes.runBuilder
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                  p))))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"versioningBehavior") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                            ((Prelude..)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                               Prelude.fromEnum _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Success where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Success'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Success'commands x__)
                (Control.DeepSeq.deepseq
                   (_Success'usedInternalFlags x__)
                   (Control.DeepSeq.deepseq (_Success'versioningBehavior x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields.runId' @:: Lens' WorkflowActivationCompletion Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields.payloadDownloadMetrics' @:: Lens' WorkflowActivationCompletion Proto.Temporal.Sdk.Core.Common.Common.ExternalStorageMetrics@
         * 'Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields.maybe'payloadDownloadMetrics' @:: Lens' WorkflowActivationCompletion (Prelude.Maybe Proto.Temporal.Sdk.Core.Common.Common.ExternalStorageMetrics)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields.payloadUploadMetrics' @:: Lens' WorkflowActivationCompletion Proto.Temporal.Sdk.Core.Common.Common.ExternalStorageMetrics@
         * 'Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields.maybe'payloadUploadMetrics' @:: Lens' WorkflowActivationCompletion (Prelude.Maybe Proto.Temporal.Sdk.Core.Common.Common.ExternalStorageMetrics)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields.maybe'status' @:: Lens' WorkflowActivationCompletion (Prelude.Maybe WorkflowActivationCompletion'Status)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields.maybe'successful' @:: Lens' WorkflowActivationCompletion (Prelude.Maybe Success)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields.successful' @:: Lens' WorkflowActivationCompletion Success@
         * 'Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields.maybe'failed' @:: Lens' WorkflowActivationCompletion (Prelude.Maybe Failure)@
         * 'Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields.failed' @:: Lens' WorkflowActivationCompletion Failure@ -}
data WorkflowActivationCompletion
  = WorkflowActivationCompletion'_constructor {_WorkflowActivationCompletion'runId :: !Data.Text.Text,
                                               _WorkflowActivationCompletion'payloadDownloadMetrics :: !(Prelude.Maybe Proto.Temporal.Sdk.Core.Common.Common.ExternalStorageMetrics),
                                               _WorkflowActivationCompletion'payloadUploadMetrics :: !(Prelude.Maybe Proto.Temporal.Sdk.Core.Common.Common.ExternalStorageMetrics),
                                               _WorkflowActivationCompletion'status :: !(Prelude.Maybe WorkflowActivationCompletion'Status),
                                               _WorkflowActivationCompletion'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkflowActivationCompletion where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data WorkflowActivationCompletion'Status
  = WorkflowActivationCompletion'Successful !Success |
    WorkflowActivationCompletion'Failed !Failure
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField WorkflowActivationCompletion "runId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationCompletion'runId
           (\ x__ y__ -> x__ {_WorkflowActivationCompletion'runId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowActivationCompletion "payloadDownloadMetrics" Proto.Temporal.Sdk.Core.Common.Common.ExternalStorageMetrics where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationCompletion'payloadDownloadMetrics
           (\ x__ y__
              -> x__
                   {_WorkflowActivationCompletion'payloadDownloadMetrics = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkflowActivationCompletion "maybe'payloadDownloadMetrics" (Prelude.Maybe Proto.Temporal.Sdk.Core.Common.Common.ExternalStorageMetrics) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationCompletion'payloadDownloadMetrics
           (\ x__ y__
              -> x__
                   {_WorkflowActivationCompletion'payloadDownloadMetrics = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowActivationCompletion "payloadUploadMetrics" Proto.Temporal.Sdk.Core.Common.Common.ExternalStorageMetrics where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationCompletion'payloadUploadMetrics
           (\ x__ y__
              -> x__ {_WorkflowActivationCompletion'payloadUploadMetrics = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkflowActivationCompletion "maybe'payloadUploadMetrics" (Prelude.Maybe Proto.Temporal.Sdk.Core.Common.Common.ExternalStorageMetrics) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationCompletion'payloadUploadMetrics
           (\ x__ y__
              -> x__ {_WorkflowActivationCompletion'payloadUploadMetrics = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowActivationCompletion "maybe'status" (Prelude.Maybe WorkflowActivationCompletion'Status) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationCompletion'status
           (\ x__ y__ -> x__ {_WorkflowActivationCompletion'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowActivationCompletion "maybe'successful" (Prelude.Maybe Success) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationCompletion'status
           (\ x__ y__ -> x__ {_WorkflowActivationCompletion'status = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowActivationCompletion'Successful x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap WorkflowActivationCompletion'Successful y__))
instance Data.ProtoLens.Field.HasField WorkflowActivationCompletion "successful" Success where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationCompletion'status
           (\ x__ y__ -> x__ {_WorkflowActivationCompletion'status = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowActivationCompletion'Successful x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap WorkflowActivationCompletion'Successful y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowActivationCompletion "maybe'failed" (Prelude.Maybe Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationCompletion'status
           (\ x__ y__ -> x__ {_WorkflowActivationCompletion'status = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowActivationCompletion'Failed x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap WorkflowActivationCompletion'Failed y__))
instance Data.ProtoLens.Field.HasField WorkflowActivationCompletion "failed" Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationCompletion'status
           (\ x__ y__ -> x__ {_WorkflowActivationCompletion'status = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowActivationCompletion'Failed x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap WorkflowActivationCompletion'Failed y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message WorkflowActivationCompletion where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_completion.WorkflowActivationCompletion"
  packedMessageDescriptor _
    = "\n\
      \\FSWorkflowActivationCompletion\DC2\NAK\n\
      \\ACKrun_id\CAN\SOH \SOH(\tR\ENQrunId\DC2F\n\
      \\n\
      \successful\CAN\STX \SOH(\v2$.coresdk.workflow_completion.SuccessH\NULR\n\
      \successful\DC2>\n\
      \\ACKfailed\CAN\ETX \SOH(\v2$.coresdk.workflow_completion.FailureH\NULR\ACKfailed\DC2`\n\
      \\CANpayload_download_metrics\CAN\EOT \SOH(\v2&.coresdk.common.ExternalStorageMetricsR\SYNpayloadDownloadMetrics\DC2\\\n\
      \\SYNpayload_upload_metrics\CAN\ENQ \SOH(\v2&.coresdk.common.ExternalStorageMetricsR\DC4payloadUploadMetricsB\b\n\
      \\ACKstatus"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        runId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "run_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"runId")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivationCompletion
        payloadDownloadMetrics__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payload_download_metrics"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Sdk.Core.Common.Common.ExternalStorageMetrics)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'payloadDownloadMetrics")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivationCompletion
        payloadUploadMetrics__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payload_upload_metrics"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Sdk.Core.Common.Common.ExternalStorageMetrics)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'payloadUploadMetrics")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivationCompletion
        successful__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "successful"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Success)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'successful")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivationCompletion
        failed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failed"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failed")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivationCompletion
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, runId__field_descriptor),
           (Data.ProtoLens.Tag 4, payloadDownloadMetrics__field_descriptor),
           (Data.ProtoLens.Tag 5, payloadUploadMetrics__field_descriptor),
           (Data.ProtoLens.Tag 2, successful__field_descriptor),
           (Data.ProtoLens.Tag 3, failed__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkflowActivationCompletion'_unknownFields
        (\ x__ y__
           -> x__ {_WorkflowActivationCompletion'_unknownFields = y__})
  defMessage
    = WorkflowActivationCompletion'_constructor
        {_WorkflowActivationCompletion'runId = Data.ProtoLens.fieldDefault,
         _WorkflowActivationCompletion'payloadDownloadMetrics = Prelude.Nothing,
         _WorkflowActivationCompletion'payloadUploadMetrics = Prelude.Nothing,
         _WorkflowActivationCompletion'status = Prelude.Nothing,
         _WorkflowActivationCompletion'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkflowActivationCompletion
          -> Data.ProtoLens.Encoding.Bytes.Parser WorkflowActivationCompletion
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
                                       "run_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"runId") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "payload_download_metrics"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"payloadDownloadMetrics") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "payload_upload_metrics"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"payloadUploadMetrics") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "successful"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"successful") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "failed"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"failed") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WorkflowActivationCompletion"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"runId") _x
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
                       (Data.ProtoLens.Field.field @"maybe'payloadDownloadMetrics") _x
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
                          (Data.ProtoLens.Field.field @"maybe'payloadUploadMetrics") _x
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
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'status") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just (WorkflowActivationCompletion'Successful v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (WorkflowActivationCompletion'Failed v))
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
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData WorkflowActivationCompletion where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkflowActivationCompletion'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WorkflowActivationCompletion'runId x__)
                (Control.DeepSeq.deepseq
                   (_WorkflowActivationCompletion'payloadDownloadMetrics x__)
                   (Control.DeepSeq.deepseq
                      (_WorkflowActivationCompletion'payloadUploadMetrics x__)
                      (Control.DeepSeq.deepseq
                         (_WorkflowActivationCompletion'status x__) ()))))
instance Control.DeepSeq.NFData WorkflowActivationCompletion'Status where
  rnf (WorkflowActivationCompletion'Successful x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowActivationCompletion'Failed x__)
    = Control.DeepSeq.rnf x__
_WorkflowActivationCompletion'Successful ::
  Data.ProtoLens.Prism.Prism' WorkflowActivationCompletion'Status Success
_WorkflowActivationCompletion'Successful
  = Data.ProtoLens.Prism.prism'
      WorkflowActivationCompletion'Successful
      (\ p__
         -> case p__ of
              (WorkflowActivationCompletion'Successful p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowActivationCompletion'Failed ::
  Data.ProtoLens.Prism.Prism' WorkflowActivationCompletion'Status Failure
_WorkflowActivationCompletion'Failed
  = Data.ProtoLens.Prism.prism'
      WorkflowActivationCompletion'Failed
      (\ p__
         -> case p__ of
              (WorkflowActivationCompletion'Failed p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \?temporal/sdk/core/workflow_completion/workflow_completion.proto\DC2\ESCcoresdk.workflow_completion\SUB%temporal/api/failure/v1/message.proto\SUB(temporal/api/enums/v1/failed_cause.proto\SUB$temporal/api/enums/v1/workflow.proto\SUB%temporal/sdk/core/common/common.proto\SUB;temporal/sdk/core/workflow_commands/workflow_commands.proto\"\135\ETX\n\
    \\FSWorkflowActivationCompletion\DC2\NAK\n\
    \\ACKrun_id\CAN\SOH \SOH(\tR\ENQrunId\DC2F\n\
    \\n\
    \successful\CAN\STX \SOH(\v2$.coresdk.workflow_completion.SuccessH\NULR\n\
    \successful\DC2>\n\
    \\ACKfailed\CAN\ETX \SOH(\v2$.coresdk.workflow_completion.FailureH\NULR\ACKfailed\DC2`\n\
    \\CANpayload_download_metrics\CAN\EOT \SOH(\v2&.coresdk.common.ExternalStorageMetricsR\SYNpayloadDownloadMetrics\DC2\\\n\
    \\SYNpayload_upload_metrics\CAN\ENQ \SOH(\v2&.coresdk.common.ExternalStorageMetricsR\DC4payloadUploadMetricsB\b\n\
    \\ACKstatus\"\221\SOH\n\
    \\aSuccess\DC2F\n\
    \\bcommands\CAN\SOH \ETX(\v2*.coresdk.workflow_commands.WorkflowCommandR\bcommands\DC2.\n\
    \\DC3used_internal_flags\CAN\ACK \ETX(\rR\DC1usedInternalFlags\DC2Z\n\
    \\DC3versioning_behavior\CAN\a \SOH(\SO2).temporal.api.enums.v1.VersioningBehaviorR\DC2versioningBehavior\"\150\SOH\n\
    \\aFailure\DC2:\n\
    \\afailure\CAN\SOH \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure\DC2O\n\
    \\vforce_cause\CAN\STX \SOH(\SO2..temporal.api.enums.v1.WorkflowTaskFailedCauseR\n\
    \forceCauseB8\234\STX5Temporalio::Internal::Bridge::Api::WorkflowCompletionJ\202\f\n\
    \\ACK\DC2\EOT\NUL\NUL*\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL$\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NULN\n\
    \\t\n\
    \\STX\b-\DC2\ETX\ETX\NULN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL/\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL2\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL.\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL/\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NULE\n\
    \P\n\
    \\STX\EOT\NUL\DC2\EOT\f\NUL\EM\SOH\SUBD Result of a single workflow activation, reported from lang to core\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\f\b$\n\
    \I\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SO\EOT\SYN\SUB< The run id from the workflow activation you are completing\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SO\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SO\DC4\NAK\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\SI\EOT\DC2\ENQ\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\SI\n\
    \\DLE\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DLE\b\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\DLE\b\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DLE\DLE\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DLE\GS\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DC1\b\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\DC1\b\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DC1\DLE\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DC1\EM\SUB\n\
    \\171\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\NAK\EOT?\SUB\157\SOH Metrics for external payload storage downloads (retrievals) performed while processing\n\
    \ this activation. Only set when external storage retrieved payloads.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX\NAK\EOT!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\NAK\":\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\NAK=>\n\
    \\162\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\CAN\EOT=\SUB\148\SOH Metrics for external payload storage uploads (stores) performed while processing this\n\
    \ activation. Only set when external storage stored payloads.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\CAN\EOT!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\CAN\"8\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\CAN;<\n\
    \h\n\
    \\STX\EOT\SOH\DC2\EOT\FS\NUL#\SOH\SUB\\ Successful workflow activation with a list of commands generated by the workflow execution\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\FS\b\SI\n\
    \E\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\RS\EOT<\SUB8 A list of commands to send back to the temporal server\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\RS\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\RS\r.\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\RS/7\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\RS:;\n\
    \^\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX \EOT,\SUBQ Any internal flags which the lang SDK used in the processing of this activation\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX \EOT\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX \r\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX \DC4'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX *+\n\
    \G\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\"\EOTE\SUB: The versioning behavior this workflow is currently using\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX\"\EOT,\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\"-@\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\"CD\n\
    \7\n\
    \\STX\EOT\STX\DC2\EOT&\NUL*\SOH\SUB+ Failure to activate or execute a workflow\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX&\b\SI\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX'\EOT0\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX'\EOT#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX'$+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX'./\n\
    \6\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX)\EOTB\SUB) Forces overriding the WFT failure cause\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX)\EOT1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX)2=\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX)@Ab\ACKproto3"