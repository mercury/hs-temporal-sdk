{- This file was auto-generated from temporal/sdk/core/workflow_activation/workflow_activation.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation (
        CancelWorkflow(), DoUpdate(), DoUpdate'HeadersEntry(), FireTimer(),
        InitializeWorkflow(), InitializeWorkflow'HeadersEntry(),
        NotifyHasPatch(), QueryWorkflow(), QueryWorkflow'HeadersEntry(),
        RemoveFromCache(), RemoveFromCache'EvictionReason(..),
        RemoveFromCache'EvictionReason(),
        RemoveFromCache'EvictionReason'UnrecognizedValue,
        ResolveActivity(), ResolveChildWorkflowExecution(),
        ResolveChildWorkflowExecutionStart(),
        ResolveChildWorkflowExecutionStart'Status(..),
        _ResolveChildWorkflowExecutionStart'Succeeded,
        _ResolveChildWorkflowExecutionStart'Failed,
        _ResolveChildWorkflowExecutionStart'Cancelled,
        ResolveChildWorkflowExecutionStartCancelled(),
        ResolveChildWorkflowExecutionStartFailure(),
        ResolveChildWorkflowExecutionStartSuccess(),
        ResolveNexusOperation(), ResolveNexusOperationStart(),
        ResolveNexusOperationStart'Status(..),
        _ResolveNexusOperationStart'OperationToken,
        _ResolveNexusOperationStart'StartedSync,
        _ResolveNexusOperationStart'Failed,
        ResolveRequestCancelExternalWorkflow(),
        ResolveSignalExternalWorkflow(), SignalWorkflow(),
        SignalWorkflow'HeadersEntry(), UpdateRandomSeed(),
        WorkflowActivation(), WorkflowActivationJob(),
        WorkflowActivationJob'Variant(..),
        _WorkflowActivationJob'InitializeWorkflow,
        _WorkflowActivationJob'FireTimer,
        _WorkflowActivationJob'UpdateRandomSeed,
        _WorkflowActivationJob'QueryWorkflow,
        _WorkflowActivationJob'CancelWorkflow,
        _WorkflowActivationJob'SignalWorkflow,
        _WorkflowActivationJob'ResolveActivity,
        _WorkflowActivationJob'NotifyHasPatch,
        _WorkflowActivationJob'ResolveChildWorkflowExecutionStart,
        _WorkflowActivationJob'ResolveChildWorkflowExecution,
        _WorkflowActivationJob'ResolveSignalExternalWorkflow,
        _WorkflowActivationJob'ResolveRequestCancelExternalWorkflow,
        _WorkflowActivationJob'DoUpdate,
        _WorkflowActivationJob'ResolveNexusOperationStart,
        _WorkflowActivationJob'ResolveNexusOperation,
        _WorkflowActivationJob'RemoveFromCache
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
import qualified Proto.Temporal.Api.Enums.V1.FailedCause
import qualified Proto.Temporal.Api.Enums.V1.Workflow
import qualified Proto.Temporal.Api.Failure.V1.Message
import qualified Proto.Temporal.Api.Nexus.V1.Message
import qualified Proto.Temporal.Api.Update.V1.Message
import qualified Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult
import qualified Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow
import qualified Proto.Temporal.Sdk.Core.Common.Common
import qualified Proto.Temporal.Sdk.Core.Nexus.Nexus
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.reason' @:: Lens' CancelWorkflow Data.Text.Text@ -}
data CancelWorkflow
  = CancelWorkflow'_constructor {_CancelWorkflow'reason :: !Data.Text.Text,
                                 _CancelWorkflow'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CancelWorkflow where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CancelWorkflow "reason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelWorkflow'reason
           (\ x__ y__ -> x__ {_CancelWorkflow'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Message CancelWorkflow where
  messageName _
    = Data.Text.pack "coresdk.workflow_activation.CancelWorkflow"
  packedMessageDescriptor _
    = "\n\
      \\SOCancelWorkflow\DC2\SYN\n\
      \\ACKreason\CAN\SOH \SOH(\tR\ACKreason"
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
              Data.ProtoLens.FieldDescriptor CancelWorkflow
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, reason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CancelWorkflow'_unknownFields
        (\ x__ y__ -> x__ {_CancelWorkflow'_unknownFields = y__})
  defMessage
    = CancelWorkflow'_constructor
        {_CancelWorkflow'reason = Data.ProtoLens.fieldDefault,
         _CancelWorkflow'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CancelWorkflow
          -> Data.ProtoLens.Encoding.Bytes.Parser CancelWorkflow
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CancelWorkflow"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CancelWorkflow where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CancelWorkflow'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CancelWorkflow'reason x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.id' @:: Lens' DoUpdate Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.protocolInstanceId' @:: Lens' DoUpdate Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.name' @:: Lens' DoUpdate Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.input' @:: Lens' DoUpdate [Proto.Temporal.Api.Common.V1.Message.Payload]@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.vec'input' @:: Lens' DoUpdate (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.headers' @:: Lens' DoUpdate (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.meta' @:: Lens' DoUpdate Proto.Temporal.Api.Update.V1.Message.Meta@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'meta' @:: Lens' DoUpdate (Prelude.Maybe Proto.Temporal.Api.Update.V1.Message.Meta)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.runValidator' @:: Lens' DoUpdate Prelude.Bool@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.propagatedNexusSerializationContext' @:: Lens' DoUpdate Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'propagatedNexusSerializationContext' @:: Lens' DoUpdate (Prelude.Maybe Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext)@ -}
data DoUpdate
  = DoUpdate'_constructor {_DoUpdate'id :: !Data.Text.Text,
                           _DoUpdate'protocolInstanceId :: !Data.Text.Text,
                           _DoUpdate'name :: !Data.Text.Text,
                           _DoUpdate'input :: !(Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload),
                           _DoUpdate'headers :: !(Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload),
                           _DoUpdate'meta :: !(Prelude.Maybe Proto.Temporal.Api.Update.V1.Message.Meta),
                           _DoUpdate'runValidator :: !Prelude.Bool,
                           _DoUpdate'propagatedNexusSerializationContext :: !(Prelude.Maybe Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext),
                           _DoUpdate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DoUpdate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DoUpdate "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoUpdate'id (\ x__ y__ -> x__ {_DoUpdate'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DoUpdate "protocolInstanceId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoUpdate'protocolInstanceId
           (\ x__ y__ -> x__ {_DoUpdate'protocolInstanceId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DoUpdate "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoUpdate'name (\ x__ y__ -> x__ {_DoUpdate'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DoUpdate "input" [Proto.Temporal.Api.Common.V1.Message.Payload] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoUpdate'input (\ x__ y__ -> x__ {_DoUpdate'input = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DoUpdate "vec'input" (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoUpdate'input (\ x__ y__ -> x__ {_DoUpdate'input = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DoUpdate "headers" (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoUpdate'headers (\ x__ y__ -> x__ {_DoUpdate'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DoUpdate "meta" Proto.Temporal.Api.Update.V1.Message.Meta where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoUpdate'meta (\ x__ y__ -> x__ {_DoUpdate'meta = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DoUpdate "maybe'meta" (Prelude.Maybe Proto.Temporal.Api.Update.V1.Message.Meta) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoUpdate'meta (\ x__ y__ -> x__ {_DoUpdate'meta = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DoUpdate "runValidator" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoUpdate'runValidator
           (\ x__ y__ -> x__ {_DoUpdate'runValidator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DoUpdate "propagatedNexusSerializationContext" Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoUpdate'propagatedNexusSerializationContext
           (\ x__ y__
              -> x__ {_DoUpdate'propagatedNexusSerializationContext = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DoUpdate "maybe'propagatedNexusSerializationContext" (Prelude.Maybe Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoUpdate'propagatedNexusSerializationContext
           (\ x__ y__
              -> x__ {_DoUpdate'propagatedNexusSerializationContext = y__}))
        Prelude.id
instance Data.ProtoLens.Message DoUpdate where
  messageName _
    = Data.Text.pack "coresdk.workflow_activation.DoUpdate"
  packedMessageDescriptor _
    = "\n\
      \\bDoUpdate\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\tR\STXid\DC20\n\
      \\DC4protocol_instance_id\CAN\STX \SOH(\tR\DC2protocolInstanceId\DC2\DC2\n\
      \\EOTname\CAN\ETX \SOH(\tR\EOTname\DC25\n\
      \\ENQinput\CAN\EOT \ETX(\v2\US.temporal.api.common.v1.PayloadR\ENQinput\DC2L\n\
      \\aheaders\CAN\ENQ \ETX(\v22.coresdk.workflow_activation.DoUpdate.HeadersEntryR\aheaders\DC20\n\
      \\EOTmeta\CAN\ACK \SOH(\v2\FS.temporal.api.update.v1.MetaR\EOTmeta\DC2#\n\
      \\rrun_validator\CAN\a \SOH(\bR\frunValidator\DC2\138\SOH\n\
      \&propagated_nexus_serialization_context\CAN\b \SOH(\v25.temporal.api.nexus.v1.PropagatedSerializationContextR#propagatedNexusSerializationContext\SUB[\n\
      \\fHeadersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor DoUpdate
        protocolInstanceId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol_instance_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"protocolInstanceId")) ::
              Data.ProtoLens.FieldDescriptor DoUpdate
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor DoUpdate
        input__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "input"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"input")) ::
              Data.ProtoLens.FieldDescriptor DoUpdate
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DoUpdate'HeadersEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"headers")) ::
              Data.ProtoLens.FieldDescriptor DoUpdate
        meta__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "meta"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Update.V1.Message.Meta)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'meta")) ::
              Data.ProtoLens.FieldDescriptor DoUpdate
        runValidator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "run_validator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"runValidator")) ::
              Data.ProtoLens.FieldDescriptor DoUpdate
        propagatedNexusSerializationContext__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "propagated_nexus_serialization_context"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'propagatedNexusSerializationContext")) ::
              Data.ProtoLens.FieldDescriptor DoUpdate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, protocolInstanceId__field_descriptor),
           (Data.ProtoLens.Tag 3, name__field_descriptor),
           (Data.ProtoLens.Tag 4, input__field_descriptor),
           (Data.ProtoLens.Tag 5, headers__field_descriptor),
           (Data.ProtoLens.Tag 6, meta__field_descriptor),
           (Data.ProtoLens.Tag 7, runValidator__field_descriptor),
           (Data.ProtoLens.Tag 8, 
            propagatedNexusSerializationContext__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DoUpdate'_unknownFields
        (\ x__ y__ -> x__ {_DoUpdate'_unknownFields = y__})
  defMessage
    = DoUpdate'_constructor
        {_DoUpdate'id = Data.ProtoLens.fieldDefault,
         _DoUpdate'protocolInstanceId = Data.ProtoLens.fieldDefault,
         _DoUpdate'name = Data.ProtoLens.fieldDefault,
         _DoUpdate'input = Data.Vector.Generic.empty,
         _DoUpdate'headers = Data.Map.empty,
         _DoUpdate'meta = Prelude.Nothing,
         _DoUpdate'runValidator = Data.ProtoLens.fieldDefault,
         _DoUpdate'propagatedNexusSerializationContext = Prelude.Nothing,
         _DoUpdate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DoUpdate
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Common.V1.Message.Payload
             -> Data.ProtoLens.Encoding.Bytes.Parser DoUpdate
        loop x mutable'input
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'input <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
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
                              (Data.ProtoLens.Field.field @"vec'input") frozen'input x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                                  mutable'input
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "protocol_instance_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"protocolInstanceId") y x)
                                  mutable'input
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'input
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "input"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'input y)
                                loop x v
                        42
                          -> do !(entry :: DoUpdate'HeadersEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                           Data.ProtoLens.Encoding.Bytes.isolate
                                                                             (Prelude.fromIntegral
                                                                                len)
                                                                             Data.ProtoLens.parseMessage)
                                                                       "headers"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"headers")
                                        (\ !t -> Data.Map.insert key value t) x)
                                     mutable'input)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "meta"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"meta") y x)
                                  mutable'input
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "run_validator"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"runValidator") y x)
                                  mutable'input
                        66
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
                                  mutable'input
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'input
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'input <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'input)
          "DoUpdate"
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
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"protocolInstanceId") _x
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
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage _v))
                         (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'input") _x))
                      ((Data.Monoid.<>)
                         (Data.Monoid.mconcat
                            (Prelude.map
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
                                          Data.ProtoLens.encodeMessage
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"value")
                                                (Prelude.snd _v)
                                                (Data.ProtoLens.defMessage ::
                                                   DoUpdate'HeadersEntry)))))
                               (Data.Map.toList
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"headers") _x))))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'meta") _x
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
                                        (Data.ProtoLens.Field.field @"runValidator") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (\ b -> if b then 1 else 0) _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field
                                            @"maybe'propagatedNexusSerializationContext")
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
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData DoUpdate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DoUpdate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DoUpdate'id x__)
                (Control.DeepSeq.deepseq
                   (_DoUpdate'protocolInstanceId x__)
                   (Control.DeepSeq.deepseq
                      (_DoUpdate'name x__)
                      (Control.DeepSeq.deepseq
                         (_DoUpdate'input x__)
                         (Control.DeepSeq.deepseq
                            (_DoUpdate'headers x__)
                            (Control.DeepSeq.deepseq
                               (_DoUpdate'meta x__)
                               (Control.DeepSeq.deepseq
                                  (_DoUpdate'runValidator x__)
                                  (Control.DeepSeq.deepseq
                                     (_DoUpdate'propagatedNexusSerializationContext x__) ()))))))))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.key' @:: Lens' DoUpdate'HeadersEntry Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.value' @:: Lens' DoUpdate'HeadersEntry Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'value' @:: Lens' DoUpdate'HeadersEntry (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data DoUpdate'HeadersEntry
  = DoUpdate'HeadersEntry'_constructor {_DoUpdate'HeadersEntry'key :: !Data.Text.Text,
                                        _DoUpdate'HeadersEntry'value :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                        _DoUpdate'HeadersEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DoUpdate'HeadersEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DoUpdate'HeadersEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoUpdate'HeadersEntry'key
           (\ x__ y__ -> x__ {_DoUpdate'HeadersEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DoUpdate'HeadersEntry "value" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoUpdate'HeadersEntry'value
           (\ x__ y__ -> x__ {_DoUpdate'HeadersEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DoUpdate'HeadersEntry "maybe'value" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoUpdate'HeadersEntry'value
           (\ x__ y__ -> x__ {_DoUpdate'HeadersEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message DoUpdate'HeadersEntry where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_activation.DoUpdate.HeadersEntry"
  packedMessageDescriptor _
    = "\n\
      \\fHeadersEntry\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor DoUpdate'HeadersEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor DoUpdate'HeadersEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DoUpdate'HeadersEntry'_unknownFields
        (\ x__ y__ -> x__ {_DoUpdate'HeadersEntry'_unknownFields = y__})
  defMessage
    = DoUpdate'HeadersEntry'_constructor
        {_DoUpdate'HeadersEntry'key = Data.ProtoLens.fieldDefault,
         _DoUpdate'HeadersEntry'value = Prelude.Nothing,
         _DoUpdate'HeadersEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DoUpdate'HeadersEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser DoUpdate'HeadersEntry
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
          (do loop Data.ProtoLens.defMessage) "HeadersEntry"
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
instance Control.DeepSeq.NFData DoUpdate'HeadersEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DoUpdate'HeadersEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DoUpdate'HeadersEntry'key x__)
                (Control.DeepSeq.deepseq (_DoUpdate'HeadersEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.seq' @:: Lens' FireTimer Data.Word.Word32@ -}
data FireTimer
  = FireTimer'_constructor {_FireTimer'seq :: !Data.Word.Word32,
                            _FireTimer'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FireTimer where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FireTimer "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FireTimer'seq (\ x__ y__ -> x__ {_FireTimer'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Message FireTimer where
  messageName _
    = Data.Text.pack "coresdk.workflow_activation.FireTimer"
  packedMessageDescriptor _
    = "\n\
      \\tFireTimer\DC2\DLE\n\
      \\ETXseq\CAN\SOH \SOH(\rR\ETXseq"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"seq")) ::
              Data.ProtoLens.FieldDescriptor FireTimer
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, seq__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FireTimer'_unknownFields
        (\ x__ y__ -> x__ {_FireTimer'_unknownFields = y__})
  defMessage
    = FireTimer'_constructor
        {_FireTimer'seq = Data.ProtoLens.fieldDefault,
         _FireTimer'_unknownFields = []}
  parseMessage
    = let
        loop :: FireTimer -> Data.ProtoLens.Encoding.Bytes.Parser FireTimer
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
                                       "seq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FireTimer"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"seq") _x
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
instance Control.DeepSeq.NFData FireTimer where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FireTimer'_unknownFields x__)
             (Control.DeepSeq.deepseq (_FireTimer'seq x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.workflowType' @:: Lens' InitializeWorkflow Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.workflowId' @:: Lens' InitializeWorkflow Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.arguments' @:: Lens' InitializeWorkflow [Proto.Temporal.Api.Common.V1.Message.Payload]@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.vec'arguments' @:: Lens' InitializeWorkflow (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.randomnessSeed' @:: Lens' InitializeWorkflow Data.Word.Word64@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.headers' @:: Lens' InitializeWorkflow (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.identity' @:: Lens' InitializeWorkflow Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.parentWorkflowInfo' @:: Lens' InitializeWorkflow Proto.Temporal.Sdk.Core.Common.Common.NamespacedWorkflowExecution@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'parentWorkflowInfo' @:: Lens' InitializeWorkflow (Prelude.Maybe Proto.Temporal.Sdk.Core.Common.Common.NamespacedWorkflowExecution)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.workflowExecutionTimeout' @:: Lens' InitializeWorkflow Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'workflowExecutionTimeout' @:: Lens' InitializeWorkflow (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.workflowRunTimeout' @:: Lens' InitializeWorkflow Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'workflowRunTimeout' @:: Lens' InitializeWorkflow (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.workflowTaskTimeout' @:: Lens' InitializeWorkflow Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'workflowTaskTimeout' @:: Lens' InitializeWorkflow (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.continuedFromExecutionRunId' @:: Lens' InitializeWorkflow Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.continuedInitiator' @:: Lens' InitializeWorkflow Proto.Temporal.Api.Enums.V1.Workflow.ContinueAsNewInitiator@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.continuedFailure' @:: Lens' InitializeWorkflow Proto.Temporal.Api.Failure.V1.Message.Failure@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'continuedFailure' @:: Lens' InitializeWorkflow (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.lastCompletionResult' @:: Lens' InitializeWorkflow Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'lastCompletionResult' @:: Lens' InitializeWorkflow (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.firstExecutionRunId' @:: Lens' InitializeWorkflow Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.retryPolicy' @:: Lens' InitializeWorkflow Proto.Temporal.Api.Common.V1.Message.RetryPolicy@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'retryPolicy' @:: Lens' InitializeWorkflow (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.attempt' @:: Lens' InitializeWorkflow Data.Int.Int32@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.cronSchedule' @:: Lens' InitializeWorkflow Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.workflowExecutionExpirationTime' @:: Lens' InitializeWorkflow Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'workflowExecutionExpirationTime' @:: Lens' InitializeWorkflow (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.cronScheduleToScheduleInterval' @:: Lens' InitializeWorkflow Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'cronScheduleToScheduleInterval' @:: Lens' InitializeWorkflow (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.memo' @:: Lens' InitializeWorkflow Proto.Temporal.Api.Common.V1.Message.Memo@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'memo' @:: Lens' InitializeWorkflow (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Memo)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.searchAttributes' @:: Lens' InitializeWorkflow Proto.Temporal.Api.Common.V1.Message.SearchAttributes@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'searchAttributes' @:: Lens' InitializeWorkflow (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.startTime' @:: Lens' InitializeWorkflow Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'startTime' @:: Lens' InitializeWorkflow (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.rootWorkflow' @:: Lens' InitializeWorkflow Proto.Temporal.Api.Common.V1.Message.WorkflowExecution@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'rootWorkflow' @:: Lens' InitializeWorkflow (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowExecution)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.priority' @:: Lens' InitializeWorkflow Proto.Temporal.Api.Common.V1.Message.Priority@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'priority' @:: Lens' InitializeWorkflow (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.originalExecutionRunId' @:: Lens' InitializeWorkflow Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.propagatedNexusSerializationContext' @:: Lens' InitializeWorkflow Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'propagatedNexusSerializationContext' @:: Lens' InitializeWorkflow (Prelude.Maybe Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext)@ -}
data InitializeWorkflow
  = InitializeWorkflow'_constructor {_InitializeWorkflow'workflowType :: !Data.Text.Text,
                                     _InitializeWorkflow'workflowId :: !Data.Text.Text,
                                     _InitializeWorkflow'arguments :: !(Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload),
                                     _InitializeWorkflow'randomnessSeed :: !Data.Word.Word64,
                                     _InitializeWorkflow'headers :: !(Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload),
                                     _InitializeWorkflow'identity :: !Data.Text.Text,
                                     _InitializeWorkflow'parentWorkflowInfo :: !(Prelude.Maybe Proto.Temporal.Sdk.Core.Common.Common.NamespacedWorkflowExecution),
                                     _InitializeWorkflow'workflowExecutionTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                     _InitializeWorkflow'workflowRunTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                     _InitializeWorkflow'workflowTaskTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                     _InitializeWorkflow'continuedFromExecutionRunId :: !Data.Text.Text,
                                     _InitializeWorkflow'continuedInitiator :: !Proto.Temporal.Api.Enums.V1.Workflow.ContinueAsNewInitiator,
                                     _InitializeWorkflow'continuedFailure :: !(Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure),
                                     _InitializeWorkflow'lastCompletionResult :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads),
                                     _InitializeWorkflow'firstExecutionRunId :: !Data.Text.Text,
                                     _InitializeWorkflow'retryPolicy :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy),
                                     _InitializeWorkflow'attempt :: !Data.Int.Int32,
                                     _InitializeWorkflow'cronSchedule :: !Data.Text.Text,
                                     _InitializeWorkflow'workflowExecutionExpirationTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                     _InitializeWorkflow'cronScheduleToScheduleInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                     _InitializeWorkflow'memo :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Memo),
                                     _InitializeWorkflow'searchAttributes :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes),
                                     _InitializeWorkflow'startTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                     _InitializeWorkflow'rootWorkflow :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowExecution),
                                     _InitializeWorkflow'priority :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority),
                                     _InitializeWorkflow'originalExecutionRunId :: !Data.Text.Text,
                                     _InitializeWorkflow'propagatedNexusSerializationContext :: !(Prelude.Maybe Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext),
                                     _InitializeWorkflow'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show InitializeWorkflow where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField InitializeWorkflow "workflowType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'workflowType
           (\ x__ y__ -> x__ {_InitializeWorkflow'workflowType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "workflowId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'workflowId
           (\ x__ y__ -> x__ {_InitializeWorkflow'workflowId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "arguments" [Proto.Temporal.Api.Common.V1.Message.Payload] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'arguments
           (\ x__ y__ -> x__ {_InitializeWorkflow'arguments = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InitializeWorkflow "vec'arguments" (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'arguments
           (\ x__ y__ -> x__ {_InitializeWorkflow'arguments = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "randomnessSeed" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'randomnessSeed
           (\ x__ y__ -> x__ {_InitializeWorkflow'randomnessSeed = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "headers" (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'headers
           (\ x__ y__ -> x__ {_InitializeWorkflow'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'identity
           (\ x__ y__ -> x__ {_InitializeWorkflow'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "parentWorkflowInfo" Proto.Temporal.Sdk.Core.Common.Common.NamespacedWorkflowExecution where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'parentWorkflowInfo
           (\ x__ y__ -> x__ {_InitializeWorkflow'parentWorkflowInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField InitializeWorkflow "maybe'parentWorkflowInfo" (Prelude.Maybe Proto.Temporal.Sdk.Core.Common.Common.NamespacedWorkflowExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'parentWorkflowInfo
           (\ x__ y__ -> x__ {_InitializeWorkflow'parentWorkflowInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "workflowExecutionTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'workflowExecutionTimeout
           (\ x__ y__
              -> x__ {_InitializeWorkflow'workflowExecutionTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField InitializeWorkflow "maybe'workflowExecutionTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'workflowExecutionTimeout
           (\ x__ y__
              -> x__ {_InitializeWorkflow'workflowExecutionTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "workflowRunTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'workflowRunTimeout
           (\ x__ y__ -> x__ {_InitializeWorkflow'workflowRunTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField InitializeWorkflow "maybe'workflowRunTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'workflowRunTimeout
           (\ x__ y__ -> x__ {_InitializeWorkflow'workflowRunTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "workflowTaskTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'workflowTaskTimeout
           (\ x__ y__ -> x__ {_InitializeWorkflow'workflowTaskTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField InitializeWorkflow "maybe'workflowTaskTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'workflowTaskTimeout
           (\ x__ y__ -> x__ {_InitializeWorkflow'workflowTaskTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "continuedFromExecutionRunId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'continuedFromExecutionRunId
           (\ x__ y__
              -> x__ {_InitializeWorkflow'continuedFromExecutionRunId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "continuedInitiator" Proto.Temporal.Api.Enums.V1.Workflow.ContinueAsNewInitiator where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'continuedInitiator
           (\ x__ y__ -> x__ {_InitializeWorkflow'continuedInitiator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "continuedFailure" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'continuedFailure
           (\ x__ y__ -> x__ {_InitializeWorkflow'continuedFailure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField InitializeWorkflow "maybe'continuedFailure" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'continuedFailure
           (\ x__ y__ -> x__ {_InitializeWorkflow'continuedFailure = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "lastCompletionResult" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'lastCompletionResult
           (\ x__ y__
              -> x__ {_InitializeWorkflow'lastCompletionResult = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField InitializeWorkflow "maybe'lastCompletionResult" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'lastCompletionResult
           (\ x__ y__
              -> x__ {_InitializeWorkflow'lastCompletionResult = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "firstExecutionRunId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'firstExecutionRunId
           (\ x__ y__ -> x__ {_InitializeWorkflow'firstExecutionRunId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "retryPolicy" Proto.Temporal.Api.Common.V1.Message.RetryPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'retryPolicy
           (\ x__ y__ -> x__ {_InitializeWorkflow'retryPolicy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField InitializeWorkflow "maybe'retryPolicy" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'retryPolicy
           (\ x__ y__ -> x__ {_InitializeWorkflow'retryPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "attempt" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'attempt
           (\ x__ y__ -> x__ {_InitializeWorkflow'attempt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "cronSchedule" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'cronSchedule
           (\ x__ y__ -> x__ {_InitializeWorkflow'cronSchedule = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "workflowExecutionExpirationTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'workflowExecutionExpirationTime
           (\ x__ y__
              -> x__
                   {_InitializeWorkflow'workflowExecutionExpirationTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField InitializeWorkflow "maybe'workflowExecutionExpirationTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'workflowExecutionExpirationTime
           (\ x__ y__
              -> x__
                   {_InitializeWorkflow'workflowExecutionExpirationTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "cronScheduleToScheduleInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'cronScheduleToScheduleInterval
           (\ x__ y__
              -> x__ {_InitializeWorkflow'cronScheduleToScheduleInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField InitializeWorkflow "maybe'cronScheduleToScheduleInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'cronScheduleToScheduleInterval
           (\ x__ y__
              -> x__ {_InitializeWorkflow'cronScheduleToScheduleInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "memo" Proto.Temporal.Api.Common.V1.Message.Memo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'memo
           (\ x__ y__ -> x__ {_InitializeWorkflow'memo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField InitializeWorkflow "maybe'memo" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Memo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'memo
           (\ x__ y__ -> x__ {_InitializeWorkflow'memo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "searchAttributes" Proto.Temporal.Api.Common.V1.Message.SearchAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'searchAttributes
           (\ x__ y__ -> x__ {_InitializeWorkflow'searchAttributes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField InitializeWorkflow "maybe'searchAttributes" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'searchAttributes
           (\ x__ y__ -> x__ {_InitializeWorkflow'searchAttributes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "startTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'startTime
           (\ x__ y__ -> x__ {_InitializeWorkflow'startTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField InitializeWorkflow "maybe'startTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'startTime
           (\ x__ y__ -> x__ {_InitializeWorkflow'startTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "rootWorkflow" Proto.Temporal.Api.Common.V1.Message.WorkflowExecution where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'rootWorkflow
           (\ x__ y__ -> x__ {_InitializeWorkflow'rootWorkflow = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField InitializeWorkflow "maybe'rootWorkflow" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.WorkflowExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'rootWorkflow
           (\ x__ y__ -> x__ {_InitializeWorkflow'rootWorkflow = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "priority" Proto.Temporal.Api.Common.V1.Message.Priority where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'priority
           (\ x__ y__ -> x__ {_InitializeWorkflow'priority = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField InitializeWorkflow "maybe'priority" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'priority
           (\ x__ y__ -> x__ {_InitializeWorkflow'priority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "originalExecutionRunId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'originalExecutionRunId
           (\ x__ y__
              -> x__ {_InitializeWorkflow'originalExecutionRunId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow "propagatedNexusSerializationContext" Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'propagatedNexusSerializationContext
           (\ x__ y__
              -> x__
                   {_InitializeWorkflow'propagatedNexusSerializationContext = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField InitializeWorkflow "maybe'propagatedNexusSerializationContext" (Prelude.Maybe Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'propagatedNexusSerializationContext
           (\ x__ y__
              -> x__
                   {_InitializeWorkflow'propagatedNexusSerializationContext = y__}))
        Prelude.id
instance Data.ProtoLens.Message InitializeWorkflow where
  messageName _
    = Data.Text.pack "coresdk.workflow_activation.InitializeWorkflow"
  packedMessageDescriptor _
    = "\n\
      \\DC2InitializeWorkflow\DC2#\n\
      \\rworkflow_type\CAN\SOH \SOH(\tR\fworkflowType\DC2\US\n\
      \\vworkflow_id\CAN\STX \SOH(\tR\n\
      \workflowId\DC2=\n\
      \\targuments\CAN\ETX \ETX(\v2\US.temporal.api.common.v1.PayloadR\targuments\DC2'\n\
      \\SIrandomness_seed\CAN\EOT \SOH(\EOTR\SOrandomnessSeed\DC2V\n\
      \\aheaders\CAN\ENQ \ETX(\v2<.coresdk.workflow_activation.InitializeWorkflow.HeadersEntryR\aheaders\DC2\SUB\n\
      \\bidentity\CAN\ACK \SOH(\tR\bidentity\DC2]\n\
      \\DC4parent_workflow_info\CAN\a \SOH(\v2+.coresdk.common.NamespacedWorkflowExecutionR\DC2parentWorkflowInfo\DC2W\n\
      \\SUBworkflow_execution_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\CANworkflowExecutionTimeout\DC2K\n\
      \\DC4workflow_run_timeout\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\DC2workflowRunTimeout\DC2M\n\
      \\NAKworkflow_task_timeout\CAN\n\
      \ \SOH(\v2\EM.google.protobuf.DurationR\DC3workflowTaskTimeout\DC2D\n\
      \\UScontinued_from_execution_run_id\CAN\v \SOH(\tR\ESCcontinuedFromExecutionRunId\DC2^\n\
      \\DC3continued_initiator\CAN\f \SOH(\SO2-.temporal.api.enums.v1.ContinueAsNewInitiatorR\DC2continuedInitiator\DC2M\n\
      \\DC1continued_failure\CAN\r \SOH(\v2 .temporal.api.failure.v1.FailureR\DLEcontinuedFailure\DC2V\n\
      \\SYNlast_completion_result\CAN\SO \SOH(\v2 .temporal.api.common.v1.PayloadsR\DC4lastCompletionResult\DC23\n\
      \\SYNfirst_execution_run_id\CAN\SI \SOH(\tR\DC3firstExecutionRunId\DC2F\n\
      \\fretry_policy\CAN\DLE \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2\CAN\n\
      \\aattempt\CAN\DC1 \SOH(\ENQR\aattempt\DC2#\n\
      \\rcron_schedule\CAN\DC2 \SOH(\tR\fcronSchedule\DC2g\n\
      \\"workflow_execution_expiration_time\CAN\DC3 \SOH(\v2\SUB.google.protobuf.TimestampR\USworkflowExecutionExpirationTime\DC2e\n\
      \\"cron_schedule_to_schedule_interval\CAN\DC4 \SOH(\v2\EM.google.protobuf.DurationR\RScronScheduleToScheduleInterval\DC20\n\
      \\EOTmemo\CAN\NAK \SOH(\v2\FS.temporal.api.common.v1.MemoR\EOTmemo\DC2U\n\
      \\DC1search_attributes\CAN\SYN \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC29\n\
      \\n\
      \start_time\CAN\ETB \SOH(\v2\SUB.google.protobuf.TimestampR\tstartTime\DC2N\n\
      \\rroot_workflow\CAN\CAN \SOH(\v2).temporal.api.common.v1.WorkflowExecutionR\frootWorkflow\DC2<\n\
      \\bpriority\CAN\EM \SOH(\v2 .temporal.api.common.v1.PriorityR\bpriority\DC29\n\
      \\EMoriginal_execution_run_id\CAN\SUB \SOH(\tR\SYNoriginalExecutionRunId\DC2\138\SOH\n\
      \&propagated_nexus_serialization_context\CAN\ESC \SOH(\v25.temporal.api.nexus.v1.PropagatedSerializationContextR#propagatedNexusSerializationContext\SUB[\n\
      \\fHeadersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        workflowId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workflowId")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        arguments__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "arguments"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"arguments")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        randomnessSeed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "randomness_seed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"randomnessSeed")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor InitializeWorkflow'HeadersEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"headers")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        identity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "identity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"identity")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        parentWorkflowInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "parent_workflow_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Sdk.Core.Common.Common.NamespacedWorkflowExecution)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'parentWorkflowInfo")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        workflowExecutionTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_execution_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowExecutionTimeout")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        workflowRunTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_run_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowRunTimeout")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        workflowTaskTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_task_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowTaskTimeout")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        continuedFromExecutionRunId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "continued_from_execution_run_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"continuedFromExecutionRunId")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        continuedInitiator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "continued_initiator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Workflow.ContinueAsNewInitiator)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"continuedInitiator")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        continuedFailure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "continued_failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'continuedFailure")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        lastCompletionResult__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_completion_result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payloads)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastCompletionResult")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        firstExecutionRunId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "first_execution_run_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"firstExecutionRunId")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        retryPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.RetryPolicy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'retryPolicy")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        attempt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attempt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"attempt")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        cronSchedule__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cron_schedule"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"cronSchedule")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        workflowExecutionExpirationTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_execution_expiration_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'workflowExecutionExpirationTime")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        cronScheduleToScheduleInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cron_schedule_to_schedule_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'cronScheduleToScheduleInterval")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        memo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "memo"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Memo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'memo")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        searchAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "search_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.SearchAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'searchAttributes")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        startTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startTime")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        rootWorkflow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "root_workflow"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.WorkflowExecution)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rootWorkflow")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        priority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "priority"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Priority)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'priority")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        originalExecutionRunId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "original_execution_run_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"originalExecutionRunId")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
        propagatedNexusSerializationContext__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "propagated_nexus_serialization_context"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Nexus.V1.Message.PropagatedSerializationContext)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'propagatedNexusSerializationContext")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, workflowType__field_descriptor),
           (Data.ProtoLens.Tag 2, workflowId__field_descriptor),
           (Data.ProtoLens.Tag 3, arguments__field_descriptor),
           (Data.ProtoLens.Tag 4, randomnessSeed__field_descriptor),
           (Data.ProtoLens.Tag 5, headers__field_descriptor),
           (Data.ProtoLens.Tag 6, identity__field_descriptor),
           (Data.ProtoLens.Tag 7, parentWorkflowInfo__field_descriptor),
           (Data.ProtoLens.Tag 8, workflowExecutionTimeout__field_descriptor),
           (Data.ProtoLens.Tag 9, workflowRunTimeout__field_descriptor),
           (Data.ProtoLens.Tag 10, workflowTaskTimeout__field_descriptor),
           (Data.ProtoLens.Tag 11, 
            continuedFromExecutionRunId__field_descriptor),
           (Data.ProtoLens.Tag 12, continuedInitiator__field_descriptor),
           (Data.ProtoLens.Tag 13, continuedFailure__field_descriptor),
           (Data.ProtoLens.Tag 14, lastCompletionResult__field_descriptor),
           (Data.ProtoLens.Tag 15, firstExecutionRunId__field_descriptor),
           (Data.ProtoLens.Tag 16, retryPolicy__field_descriptor),
           (Data.ProtoLens.Tag 17, attempt__field_descriptor),
           (Data.ProtoLens.Tag 18, cronSchedule__field_descriptor),
           (Data.ProtoLens.Tag 19, 
            workflowExecutionExpirationTime__field_descriptor),
           (Data.ProtoLens.Tag 20, 
            cronScheduleToScheduleInterval__field_descriptor),
           (Data.ProtoLens.Tag 21, memo__field_descriptor),
           (Data.ProtoLens.Tag 22, searchAttributes__field_descriptor),
           (Data.ProtoLens.Tag 23, startTime__field_descriptor),
           (Data.ProtoLens.Tag 24, rootWorkflow__field_descriptor),
           (Data.ProtoLens.Tag 25, priority__field_descriptor),
           (Data.ProtoLens.Tag 26, originalExecutionRunId__field_descriptor),
           (Data.ProtoLens.Tag 27, 
            propagatedNexusSerializationContext__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _InitializeWorkflow'_unknownFields
        (\ x__ y__ -> x__ {_InitializeWorkflow'_unknownFields = y__})
  defMessage
    = InitializeWorkflow'_constructor
        {_InitializeWorkflow'workflowType = Data.ProtoLens.fieldDefault,
         _InitializeWorkflow'workflowId = Data.ProtoLens.fieldDefault,
         _InitializeWorkflow'arguments = Data.Vector.Generic.empty,
         _InitializeWorkflow'randomnessSeed = Data.ProtoLens.fieldDefault,
         _InitializeWorkflow'headers = Data.Map.empty,
         _InitializeWorkflow'identity = Data.ProtoLens.fieldDefault,
         _InitializeWorkflow'parentWorkflowInfo = Prelude.Nothing,
         _InitializeWorkflow'workflowExecutionTimeout = Prelude.Nothing,
         _InitializeWorkflow'workflowRunTimeout = Prelude.Nothing,
         _InitializeWorkflow'workflowTaskTimeout = Prelude.Nothing,
         _InitializeWorkflow'continuedFromExecutionRunId = Data.ProtoLens.fieldDefault,
         _InitializeWorkflow'continuedInitiator = Data.ProtoLens.fieldDefault,
         _InitializeWorkflow'continuedFailure = Prelude.Nothing,
         _InitializeWorkflow'lastCompletionResult = Prelude.Nothing,
         _InitializeWorkflow'firstExecutionRunId = Data.ProtoLens.fieldDefault,
         _InitializeWorkflow'retryPolicy = Prelude.Nothing,
         _InitializeWorkflow'attempt = Data.ProtoLens.fieldDefault,
         _InitializeWorkflow'cronSchedule = Data.ProtoLens.fieldDefault,
         _InitializeWorkflow'workflowExecutionExpirationTime = Prelude.Nothing,
         _InitializeWorkflow'cronScheduleToScheduleInterval = Prelude.Nothing,
         _InitializeWorkflow'memo = Prelude.Nothing,
         _InitializeWorkflow'searchAttributes = Prelude.Nothing,
         _InitializeWorkflow'startTime = Prelude.Nothing,
         _InitializeWorkflow'rootWorkflow = Prelude.Nothing,
         _InitializeWorkflow'priority = Prelude.Nothing,
         _InitializeWorkflow'originalExecutionRunId = Data.ProtoLens.fieldDefault,
         _InitializeWorkflow'propagatedNexusSerializationContext = Prelude.Nothing,
         _InitializeWorkflow'_unknownFields = []}
  parseMessage
    = let
        loop ::
          InitializeWorkflow
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Common.V1.Message.Payload
             -> Data.ProtoLens.Encoding.Bytes.Parser InitializeWorkflow
        loop x mutable'arguments
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'arguments <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'arguments)
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
                              (Data.ProtoLens.Field.field @"vec'arguments") frozen'arguments x))
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
                                  mutable'arguments
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "workflow_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"workflowId") y x)
                                  mutable'arguments
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "arguments"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'arguments y)
                                loop x v
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "randomness_seed"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"randomnessSeed") y x)
                                  mutable'arguments
                        42
                          -> do !(entry :: InitializeWorkflow'HeadersEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                 (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                     Data.ProtoLens.Encoding.Bytes.isolate
                                                                                       (Prelude.fromIntegral
                                                                                          len)
                                                                                       Data.ProtoLens.parseMessage)
                                                                                 "headers"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"headers")
                                        (\ !t -> Data.Map.insert key value t) x)
                                     mutable'arguments)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "identity"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"identity") y x)
                                  mutable'arguments
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "parent_workflow_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"parentWorkflowInfo") y x)
                                  mutable'arguments
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_execution_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowExecutionTimeout") y x)
                                  mutable'arguments
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_run_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowRunTimeout") y x)
                                  mutable'arguments
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_task_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowTaskTimeout") y x)
                                  mutable'arguments
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "continued_from_execution_run_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"continuedFromExecutionRunId") y
                                     x)
                                  mutable'arguments
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "continued_initiator"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"continuedInitiator") y x)
                                  mutable'arguments
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "continued_failure"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"continuedFailure") y x)
                                  mutable'arguments
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_completion_result"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastCompletionResult") y x)
                                  mutable'arguments
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "first_execution_run_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"firstExecutionRunId") y x)
                                  mutable'arguments
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "retry_policy"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"retryPolicy") y x)
                                  mutable'arguments
                        136
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "attempt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"attempt") y x)
                                  mutable'arguments
                        146
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "cron_schedule"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cronSchedule") y x)
                                  mutable'arguments
                        154
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_execution_expiration_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowExecutionExpirationTime")
                                     y x)
                                  mutable'arguments
                        162
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cron_schedule_to_schedule_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cronScheduleToScheduleInterval")
                                     y x)
                                  mutable'arguments
                        170
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "memo"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"memo") y x)
                                  mutable'arguments
                        178
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "search_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"searchAttributes") y x)
                                  mutable'arguments
                        186
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startTime") y x)
                                  mutable'arguments
                        194
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "root_workflow"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rootWorkflow") y x)
                                  mutable'arguments
                        202
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "priority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"priority") y x)
                                  mutable'arguments
                        210
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "original_execution_run_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"originalExecutionRunId") y x)
                                  mutable'arguments
                        218
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
                                  mutable'arguments
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'arguments
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'arguments <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'arguments)
          "InitializeWorkflow"
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
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"workflowId") _x
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
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'arguments") _x))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"randomnessSeed") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (Data.Monoid.mconcat
                            (Prelude.map
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
                                          Data.ProtoLens.encodeMessage
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"value")
                                                (Prelude.snd _v)
                                                (Data.ProtoLens.defMessage ::
                                                   InitializeWorkflow'HeadersEntry)))))
                               (Data.Map.toList
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"headers") _x))))
                         ((Data.Monoid.<>)
                            (let
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"identity") _x
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
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'parentWorkflowInfo") _x
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
                                         (Data.ProtoLens.Field.field
                                            @"maybe'workflowExecutionTimeout")
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
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'workflowRunTimeout")
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
                                                  @"maybe'workflowTaskTimeout")
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
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field
                                                       @"continuedFromExecutionRunId")
                                                    _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                    ((Prelude..)
                                                       (\ bs
                                                          -> (Data.Monoid.<>)
                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                  (Prelude.fromIntegral
                                                                     (Data.ByteString.length bs)))
                                                               (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                  bs))
                                                       Data.Text.Encoding.encodeUtf8 _v))
                                           ((Data.Monoid.<>)
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"continuedInitiator")
                                                       _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                       ((Prelude..)
                                                          ((Prelude..)
                                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             Prelude.fromIntegral)
                                                          Prelude.fromEnum _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'continuedFailure")
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
                                                              @"maybe'lastCompletionResult")
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
                                                       (let
                                                          _v
                                                            = Lens.Family2.view
                                                                (Data.ProtoLens.Field.field
                                                                   @"firstExecutionRunId")
                                                                _x
                                                        in
                                                          if (Prelude.==)
                                                               _v Data.ProtoLens.fieldDefault then
                                                              Data.Monoid.mempty
                                                          else
                                                              (Data.Monoid.<>)
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
                                                                   Data.Text.Encoding.encodeUtf8
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
                                                             (let
                                                                _v
                                                                  = Lens.Family2.view
                                                                      (Data.ProtoLens.Field.field
                                                                         @"attempt")
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
                                                                         Prelude.fromIntegral _v))
                                                             ((Data.Monoid.<>)
                                                                (let
                                                                   _v
                                                                     = Lens.Family2.view
                                                                         (Data.ProtoLens.Field.field
                                                                            @"cronSchedule")
                                                                         _x
                                                                 in
                                                                   if (Prelude.==)
                                                                        _v
                                                                        Data.ProtoLens.fieldDefault then
                                                                       Data.Monoid.mempty
                                                                   else
                                                                       (Data.Monoid.<>)
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
                                                                            Data.Text.Encoding.encodeUtf8
                                                                            _v))
                                                                ((Data.Monoid.<>)
                                                                   (case
                                                                        Lens.Family2.view
                                                                          (Data.ProtoLens.Field.field
                                                                             @"maybe'workflowExecutionExpirationTime")
                                                                          _x
                                                                    of
                                                                      Prelude.Nothing
                                                                        -> Data.Monoid.mempty
                                                                      (Prelude.Just _v)
                                                                        -> (Data.Monoid.<>)
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
                                                                                Data.ProtoLens.encodeMessage
                                                                                _v))
                                                                   ((Data.Monoid.<>)
                                                                      (case
                                                                           Lens.Family2.view
                                                                             (Data.ProtoLens.Field.field
                                                                                @"maybe'cronScheduleToScheduleInterval")
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
                                                                                   @"maybe'memo")
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
                                                                         ((Data.Monoid.<>)
                                                                            (case
                                                                                 Lens.Family2.view
                                                                                   (Data.ProtoLens.Field.field
                                                                                      @"maybe'searchAttributes")
                                                                                   _x
                                                                             of
                                                                               Prelude.Nothing
                                                                                 -> Data.Monoid.mempty
                                                                               (Prelude.Just _v)
                                                                                 -> (Data.Monoid.<>)
                                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                         178)
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
                                                                                         @"maybe'startTime")
                                                                                      _x
                                                                                of
                                                                                  Prelude.Nothing
                                                                                    -> Data.Monoid.mempty
                                                                                  (Prelude.Just _v)
                                                                                    -> (Data.Monoid.<>)
                                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                            186)
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
                                                                                            @"maybe'rootWorkflow")
                                                                                         _x
                                                                                   of
                                                                                     Prelude.Nothing
                                                                                       -> Data.Monoid.mempty
                                                                                     (Prelude.Just _v)
                                                                                       -> (Data.Monoid.<>)
                                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                               194)
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
                                                                                                  202)
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
                                                                                                    @"originalExecutionRunId")
                                                                                                 _x
                                                                                         in
                                                                                           if (Prelude.==)
                                                                                                _v
                                                                                                Data.ProtoLens.fieldDefault then
                                                                                               Data.Monoid.mempty
                                                                                           else
                                                                                               (Data.Monoid.<>)
                                                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                    210)
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
                                                                                                        218)
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
                                                                                                 _x))))))))))))))))))))))))))))
instance Control.DeepSeq.NFData InitializeWorkflow where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_InitializeWorkflow'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_InitializeWorkflow'workflowType x__)
                (Control.DeepSeq.deepseq
                   (_InitializeWorkflow'workflowId x__)
                   (Control.DeepSeq.deepseq
                      (_InitializeWorkflow'arguments x__)
                      (Control.DeepSeq.deepseq
                         (_InitializeWorkflow'randomnessSeed x__)
                         (Control.DeepSeq.deepseq
                            (_InitializeWorkflow'headers x__)
                            (Control.DeepSeq.deepseq
                               (_InitializeWorkflow'identity x__)
                               (Control.DeepSeq.deepseq
                                  (_InitializeWorkflow'parentWorkflowInfo x__)
                                  (Control.DeepSeq.deepseq
                                     (_InitializeWorkflow'workflowExecutionTimeout x__)
                                     (Control.DeepSeq.deepseq
                                        (_InitializeWorkflow'workflowRunTimeout x__)
                                        (Control.DeepSeq.deepseq
                                           (_InitializeWorkflow'workflowTaskTimeout x__)
                                           (Control.DeepSeq.deepseq
                                              (_InitializeWorkflow'continuedFromExecutionRunId x__)
                                              (Control.DeepSeq.deepseq
                                                 (_InitializeWorkflow'continuedInitiator x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_InitializeWorkflow'continuedFailure x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_InitializeWorkflow'lastCompletionResult
                                                          x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_InitializeWorkflow'firstExecutionRunId
                                                             x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_InitializeWorkflow'retryPolicy x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_InitializeWorkflow'attempt x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_InitializeWorkflow'cronSchedule
                                                                      x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_InitializeWorkflow'workflowExecutionExpirationTime
                                                                         x__)
                                                                      (Control.DeepSeq.deepseq
                                                                         (_InitializeWorkflow'cronScheduleToScheduleInterval
                                                                            x__)
                                                                         (Control.DeepSeq.deepseq
                                                                            (_InitializeWorkflow'memo
                                                                               x__)
                                                                            (Control.DeepSeq.deepseq
                                                                               (_InitializeWorkflow'searchAttributes
                                                                                  x__)
                                                                               (Control.DeepSeq.deepseq
                                                                                  (_InitializeWorkflow'startTime
                                                                                     x__)
                                                                                  (Control.DeepSeq.deepseq
                                                                                     (_InitializeWorkflow'rootWorkflow
                                                                                        x__)
                                                                                     (Control.DeepSeq.deepseq
                                                                                        (_InitializeWorkflow'priority
                                                                                           x__)
                                                                                        (Control.DeepSeq.deepseq
                                                                                           (_InitializeWorkflow'originalExecutionRunId
                                                                                              x__)
                                                                                           (Control.DeepSeq.deepseq
                                                                                              (_InitializeWorkflow'propagatedNexusSerializationContext
                                                                                                 x__)
                                                                                              ())))))))))))))))))))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.key' @:: Lens' InitializeWorkflow'HeadersEntry Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.value' @:: Lens' InitializeWorkflow'HeadersEntry Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'value' @:: Lens' InitializeWorkflow'HeadersEntry (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data InitializeWorkflow'HeadersEntry
  = InitializeWorkflow'HeadersEntry'_constructor {_InitializeWorkflow'HeadersEntry'key :: !Data.Text.Text,
                                                  _InitializeWorkflow'HeadersEntry'value :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                                  _InitializeWorkflow'HeadersEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show InitializeWorkflow'HeadersEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField InitializeWorkflow'HeadersEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'HeadersEntry'key
           (\ x__ y__ -> x__ {_InitializeWorkflow'HeadersEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InitializeWorkflow'HeadersEntry "value" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'HeadersEntry'value
           (\ x__ y__ -> x__ {_InitializeWorkflow'HeadersEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField InitializeWorkflow'HeadersEntry "maybe'value" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InitializeWorkflow'HeadersEntry'value
           (\ x__ y__ -> x__ {_InitializeWorkflow'HeadersEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message InitializeWorkflow'HeadersEntry where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_activation.InitializeWorkflow.HeadersEntry"
  packedMessageDescriptor _
    = "\n\
      \\fHeadersEntry\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor InitializeWorkflow'HeadersEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor InitializeWorkflow'HeadersEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _InitializeWorkflow'HeadersEntry'_unknownFields
        (\ x__ y__
           -> x__ {_InitializeWorkflow'HeadersEntry'_unknownFields = y__})
  defMessage
    = InitializeWorkflow'HeadersEntry'_constructor
        {_InitializeWorkflow'HeadersEntry'key = Data.ProtoLens.fieldDefault,
         _InitializeWorkflow'HeadersEntry'value = Prelude.Nothing,
         _InitializeWorkflow'HeadersEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          InitializeWorkflow'HeadersEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser InitializeWorkflow'HeadersEntry
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
          (do loop Data.ProtoLens.defMessage) "HeadersEntry"
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
instance Control.DeepSeq.NFData InitializeWorkflow'HeadersEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_InitializeWorkflow'HeadersEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_InitializeWorkflow'HeadersEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_InitializeWorkflow'HeadersEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.patchId' @:: Lens' NotifyHasPatch Data.Text.Text@ -}
data NotifyHasPatch
  = NotifyHasPatch'_constructor {_NotifyHasPatch'patchId :: !Data.Text.Text,
                                 _NotifyHasPatch'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NotifyHasPatch where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NotifyHasPatch "patchId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NotifyHasPatch'patchId
           (\ x__ y__ -> x__ {_NotifyHasPatch'patchId = y__}))
        Prelude.id
instance Data.ProtoLens.Message NotifyHasPatch where
  messageName _
    = Data.Text.pack "coresdk.workflow_activation.NotifyHasPatch"
  packedMessageDescriptor _
    = "\n\
      \\SONotifyHasPatch\DC2\EM\n\
      \\bpatch_id\CAN\SOH \SOH(\tR\apatchId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        patchId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "patch_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"patchId")) ::
              Data.ProtoLens.FieldDescriptor NotifyHasPatch
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, patchId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NotifyHasPatch'_unknownFields
        (\ x__ y__ -> x__ {_NotifyHasPatch'_unknownFields = y__})
  defMessage
    = NotifyHasPatch'_constructor
        {_NotifyHasPatch'patchId = Data.ProtoLens.fieldDefault,
         _NotifyHasPatch'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NotifyHasPatch
          -> Data.ProtoLens.Encoding.Bytes.Parser NotifyHasPatch
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
                                       "patch_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"patchId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NotifyHasPatch"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"patchId") _x
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
instance Control.DeepSeq.NFData NotifyHasPatch where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NotifyHasPatch'_unknownFields x__)
             (Control.DeepSeq.deepseq (_NotifyHasPatch'patchId x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.queryId' @:: Lens' QueryWorkflow Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.queryType' @:: Lens' QueryWorkflow Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.arguments' @:: Lens' QueryWorkflow [Proto.Temporal.Api.Common.V1.Message.Payload]@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.vec'arguments' @:: Lens' QueryWorkflow (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.headers' @:: Lens' QueryWorkflow (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data QueryWorkflow
  = QueryWorkflow'_constructor {_QueryWorkflow'queryId :: !Data.Text.Text,
                                _QueryWorkflow'queryType :: !Data.Text.Text,
                                _QueryWorkflow'arguments :: !(Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload),
                                _QueryWorkflow'headers :: !(Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload),
                                _QueryWorkflow'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryWorkflow where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryWorkflow "queryId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryWorkflow'queryId
           (\ x__ y__ -> x__ {_QueryWorkflow'queryId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryWorkflow "queryType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryWorkflow'queryType
           (\ x__ y__ -> x__ {_QueryWorkflow'queryType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryWorkflow "arguments" [Proto.Temporal.Api.Common.V1.Message.Payload] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryWorkflow'arguments
           (\ x__ y__ -> x__ {_QueryWorkflow'arguments = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryWorkflow "vec'arguments" (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryWorkflow'arguments
           (\ x__ y__ -> x__ {_QueryWorkflow'arguments = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryWorkflow "headers" (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryWorkflow'headers
           (\ x__ y__ -> x__ {_QueryWorkflow'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryWorkflow where
  messageName _
    = Data.Text.pack "coresdk.workflow_activation.QueryWorkflow"
  packedMessageDescriptor _
    = "\n\
      \\rQueryWorkflow\DC2\EM\n\
      \\bquery_id\CAN\SOH \SOH(\tR\aqueryId\DC2\GS\n\
      \\n\
      \query_type\CAN\STX \SOH(\tR\tqueryType\DC2=\n\
      \\targuments\CAN\ETX \ETX(\v2\US.temporal.api.common.v1.PayloadR\targuments\DC2Q\n\
      \\aheaders\CAN\ENQ \ETX(\v27.coresdk.workflow_activation.QueryWorkflow.HeadersEntryR\aheaders\SUB[\n\
      \\fHeadersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        queryId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "query_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"queryId")) ::
              Data.ProtoLens.FieldDescriptor QueryWorkflow
        queryType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "query_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"queryType")) ::
              Data.ProtoLens.FieldDescriptor QueryWorkflow
        arguments__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "arguments"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"arguments")) ::
              Data.ProtoLens.FieldDescriptor QueryWorkflow
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor QueryWorkflow'HeadersEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"headers")) ::
              Data.ProtoLens.FieldDescriptor QueryWorkflow
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, queryId__field_descriptor),
           (Data.ProtoLens.Tag 2, queryType__field_descriptor),
           (Data.ProtoLens.Tag 3, arguments__field_descriptor),
           (Data.ProtoLens.Tag 5, headers__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryWorkflow'_unknownFields
        (\ x__ y__ -> x__ {_QueryWorkflow'_unknownFields = y__})
  defMessage
    = QueryWorkflow'_constructor
        {_QueryWorkflow'queryId = Data.ProtoLens.fieldDefault,
         _QueryWorkflow'queryType = Data.ProtoLens.fieldDefault,
         _QueryWorkflow'arguments = Data.Vector.Generic.empty,
         _QueryWorkflow'headers = Data.Map.empty,
         _QueryWorkflow'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryWorkflow
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Common.V1.Message.Payload
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryWorkflow
        loop x mutable'arguments
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'arguments <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'arguments)
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
                              (Data.ProtoLens.Field.field @"vec'arguments") frozen'arguments x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "query_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"queryId") y x)
                                  mutable'arguments
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "query_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"queryType") y x)
                                  mutable'arguments
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "arguments"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'arguments y)
                                loop x v
                        42
                          -> do !(entry :: QueryWorkflow'HeadersEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                            (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                Data.ProtoLens.Encoding.Bytes.isolate
                                                                                  (Prelude.fromIntegral
                                                                                     len)
                                                                                  Data.ProtoLens.parseMessage)
                                                                            "headers"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"headers")
                                        (\ !t -> Data.Map.insert key value t) x)
                                     mutable'arguments)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'arguments
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'arguments <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'arguments)
          "QueryWorkflow"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"queryId") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"queryType") _x
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
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'arguments") _x))
                   ((Data.Monoid.<>)
                      (Data.Monoid.mconcat
                         (Prelude.map
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
                                       Data.ProtoLens.encodeMessage
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"value") (Prelude.snd _v)
                                             (Data.ProtoLens.defMessage ::
                                                QueryWorkflow'HeadersEntry)))))
                            (Data.Map.toList
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"headers") _x))))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData QueryWorkflow where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryWorkflow'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryWorkflow'queryId x__)
                (Control.DeepSeq.deepseq
                   (_QueryWorkflow'queryType x__)
                   (Control.DeepSeq.deepseq
                      (_QueryWorkflow'arguments x__)
                      (Control.DeepSeq.deepseq (_QueryWorkflow'headers x__) ()))))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.key' @:: Lens' QueryWorkflow'HeadersEntry Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.value' @:: Lens' QueryWorkflow'HeadersEntry Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'value' @:: Lens' QueryWorkflow'HeadersEntry (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data QueryWorkflow'HeadersEntry
  = QueryWorkflow'HeadersEntry'_constructor {_QueryWorkflow'HeadersEntry'key :: !Data.Text.Text,
                                             _QueryWorkflow'HeadersEntry'value :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                             _QueryWorkflow'HeadersEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryWorkflow'HeadersEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryWorkflow'HeadersEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryWorkflow'HeadersEntry'key
           (\ x__ y__ -> x__ {_QueryWorkflow'HeadersEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryWorkflow'HeadersEntry "value" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryWorkflow'HeadersEntry'value
           (\ x__ y__ -> x__ {_QueryWorkflow'HeadersEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryWorkflow'HeadersEntry "maybe'value" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryWorkflow'HeadersEntry'value
           (\ x__ y__ -> x__ {_QueryWorkflow'HeadersEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryWorkflow'HeadersEntry where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_activation.QueryWorkflow.HeadersEntry"
  packedMessageDescriptor _
    = "\n\
      \\fHeadersEntry\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor QueryWorkflow'HeadersEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor QueryWorkflow'HeadersEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryWorkflow'HeadersEntry'_unknownFields
        (\ x__ y__
           -> x__ {_QueryWorkflow'HeadersEntry'_unknownFields = y__})
  defMessage
    = QueryWorkflow'HeadersEntry'_constructor
        {_QueryWorkflow'HeadersEntry'key = Data.ProtoLens.fieldDefault,
         _QueryWorkflow'HeadersEntry'value = Prelude.Nothing,
         _QueryWorkflow'HeadersEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryWorkflow'HeadersEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryWorkflow'HeadersEntry
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
          (do loop Data.ProtoLens.defMessage) "HeadersEntry"
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
instance Control.DeepSeq.NFData QueryWorkflow'HeadersEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryWorkflow'HeadersEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryWorkflow'HeadersEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_QueryWorkflow'HeadersEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.message' @:: Lens' RemoveFromCache Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.reason' @:: Lens' RemoveFromCache RemoveFromCache'EvictionReason@ -}
data RemoveFromCache
  = RemoveFromCache'_constructor {_RemoveFromCache'message :: !Data.Text.Text,
                                  _RemoveFromCache'reason :: !RemoveFromCache'EvictionReason,
                                  _RemoveFromCache'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RemoveFromCache where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RemoveFromCache "message" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RemoveFromCache'message
           (\ x__ y__ -> x__ {_RemoveFromCache'message = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RemoveFromCache "reason" RemoveFromCache'EvictionReason where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RemoveFromCache'reason
           (\ x__ y__ -> x__ {_RemoveFromCache'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Message RemoveFromCache where
  messageName _
    = Data.Text.pack "coresdk.workflow_activation.RemoveFromCache"
  packedMessageDescriptor _
    = "\n\
      \\SIRemoveFromCache\DC2\CAN\n\
      \\amessage\CAN\SOH \SOH(\tR\amessage\DC2S\n\
      \\ACKreason\CAN\STX \SOH(\SO2;.coresdk.workflow_activation.RemoveFromCache.EvictionReasonR\ACKreason\"\238\SOH\n\
      \\SOEvictionReason\DC2\SI\n\
      \\vUNSPECIFIED\DLE\NUL\DC2\SO\n\
      \\n\
      \CACHE_FULL\DLE\SOH\DC2\SO\n\
      \\n\
      \CACHE_MISS\DLE\STX\DC2\DC2\n\
      \\SONONDETERMINISM\DLE\ETX\DC2\r\n\
      \\tLANG_FAIL\DLE\EOT\DC2\DC2\n\
      \\SOLANG_REQUESTED\DLE\ENQ\DC2\DC2\n\
      \\SOTASK_NOT_FOUND\DLE\ACK\DC2\NAK\n\
      \\DC1UNHANDLED_COMMAND\DLE\a\DC2\t\n\
      \\ENQFATAL\DLE\b\DC2\US\n\
      \\ESCPAGINATION_OR_HISTORY_FETCH\DLE\t\DC2\GS\n\
      \\EMWORKFLOW_EXECUTION_ENDING\DLE\n"
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
              Data.ProtoLens.FieldDescriptor RemoveFromCache
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor RemoveFromCache'EvictionReason)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"reason")) ::
              Data.ProtoLens.FieldDescriptor RemoveFromCache
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, message__field_descriptor),
           (Data.ProtoLens.Tag 2, reason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RemoveFromCache'_unknownFields
        (\ x__ y__ -> x__ {_RemoveFromCache'_unknownFields = y__})
  defMessage
    = RemoveFromCache'_constructor
        {_RemoveFromCache'message = Data.ProtoLens.fieldDefault,
         _RemoveFromCache'reason = Data.ProtoLens.fieldDefault,
         _RemoveFromCache'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RemoveFromCache
          -> Data.ProtoLens.Encoding.Bytes.Parser RemoveFromCache
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
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
          (do loop Data.ProtoLens.defMessage) "RemoveFromCache"
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"reason") _x
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
instance Control.DeepSeq.NFData RemoveFromCache where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RemoveFromCache'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RemoveFromCache'message x__)
                (Control.DeepSeq.deepseq (_RemoveFromCache'reason x__) ()))
newtype RemoveFromCache'EvictionReason'UnrecognizedValue
  = RemoveFromCache'EvictionReason'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data RemoveFromCache'EvictionReason
  = RemoveFromCache'UNSPECIFIED |
    RemoveFromCache'CACHE_FULL |
    RemoveFromCache'CACHE_MISS |
    RemoveFromCache'NONDETERMINISM |
    RemoveFromCache'LANG_FAIL |
    RemoveFromCache'LANG_REQUESTED |
    RemoveFromCache'TASK_NOT_FOUND |
    RemoveFromCache'UNHANDLED_COMMAND |
    RemoveFromCache'FATAL |
    RemoveFromCache'PAGINATION_OR_HISTORY_FETCH |
    RemoveFromCache'WORKFLOW_EXECUTION_ENDING |
    RemoveFromCache'EvictionReason'Unrecognized !RemoveFromCache'EvictionReason'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum RemoveFromCache'EvictionReason where
  maybeToEnum 0 = Prelude.Just RemoveFromCache'UNSPECIFIED
  maybeToEnum 1 = Prelude.Just RemoveFromCache'CACHE_FULL
  maybeToEnum 2 = Prelude.Just RemoveFromCache'CACHE_MISS
  maybeToEnum 3 = Prelude.Just RemoveFromCache'NONDETERMINISM
  maybeToEnum 4 = Prelude.Just RemoveFromCache'LANG_FAIL
  maybeToEnum 5 = Prelude.Just RemoveFromCache'LANG_REQUESTED
  maybeToEnum 6 = Prelude.Just RemoveFromCache'TASK_NOT_FOUND
  maybeToEnum 7 = Prelude.Just RemoveFromCache'UNHANDLED_COMMAND
  maybeToEnum 8 = Prelude.Just RemoveFromCache'FATAL
  maybeToEnum 9
    = Prelude.Just RemoveFromCache'PAGINATION_OR_HISTORY_FETCH
  maybeToEnum 10
    = Prelude.Just RemoveFromCache'WORKFLOW_EXECUTION_ENDING
  maybeToEnum k
    = Prelude.Just
        (RemoveFromCache'EvictionReason'Unrecognized
           (RemoveFromCache'EvictionReason'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum RemoveFromCache'UNSPECIFIED = "UNSPECIFIED"
  showEnum RemoveFromCache'CACHE_FULL = "CACHE_FULL"
  showEnum RemoveFromCache'CACHE_MISS = "CACHE_MISS"
  showEnum RemoveFromCache'NONDETERMINISM = "NONDETERMINISM"
  showEnum RemoveFromCache'LANG_FAIL = "LANG_FAIL"
  showEnum RemoveFromCache'LANG_REQUESTED = "LANG_REQUESTED"
  showEnum RemoveFromCache'TASK_NOT_FOUND = "TASK_NOT_FOUND"
  showEnum RemoveFromCache'UNHANDLED_COMMAND = "UNHANDLED_COMMAND"
  showEnum RemoveFromCache'FATAL = "FATAL"
  showEnum RemoveFromCache'PAGINATION_OR_HISTORY_FETCH
    = "PAGINATION_OR_HISTORY_FETCH"
  showEnum RemoveFromCache'WORKFLOW_EXECUTION_ENDING
    = "WORKFLOW_EXECUTION_ENDING"
  showEnum
    (RemoveFromCache'EvictionReason'Unrecognized (RemoveFromCache'EvictionReason'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "UNSPECIFIED"
    = Prelude.Just RemoveFromCache'UNSPECIFIED
    | (Prelude.==) k "CACHE_FULL"
    = Prelude.Just RemoveFromCache'CACHE_FULL
    | (Prelude.==) k "CACHE_MISS"
    = Prelude.Just RemoveFromCache'CACHE_MISS
    | (Prelude.==) k "NONDETERMINISM"
    = Prelude.Just RemoveFromCache'NONDETERMINISM
    | (Prelude.==) k "LANG_FAIL"
    = Prelude.Just RemoveFromCache'LANG_FAIL
    | (Prelude.==) k "LANG_REQUESTED"
    = Prelude.Just RemoveFromCache'LANG_REQUESTED
    | (Prelude.==) k "TASK_NOT_FOUND"
    = Prelude.Just RemoveFromCache'TASK_NOT_FOUND
    | (Prelude.==) k "UNHANDLED_COMMAND"
    = Prelude.Just RemoveFromCache'UNHANDLED_COMMAND
    | (Prelude.==) k "FATAL" = Prelude.Just RemoveFromCache'FATAL
    | (Prelude.==) k "PAGINATION_OR_HISTORY_FETCH"
    = Prelude.Just RemoveFromCache'PAGINATION_OR_HISTORY_FETCH
    | (Prelude.==) k "WORKFLOW_EXECUTION_ENDING"
    = Prelude.Just RemoveFromCache'WORKFLOW_EXECUTION_ENDING
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded RemoveFromCache'EvictionReason where
  minBound = RemoveFromCache'UNSPECIFIED
  maxBound = RemoveFromCache'WORKFLOW_EXECUTION_ENDING
instance Prelude.Enum RemoveFromCache'EvictionReason where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum EvictionReason: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum RemoveFromCache'UNSPECIFIED = 0
  fromEnum RemoveFromCache'CACHE_FULL = 1
  fromEnum RemoveFromCache'CACHE_MISS = 2
  fromEnum RemoveFromCache'NONDETERMINISM = 3
  fromEnum RemoveFromCache'LANG_FAIL = 4
  fromEnum RemoveFromCache'LANG_REQUESTED = 5
  fromEnum RemoveFromCache'TASK_NOT_FOUND = 6
  fromEnum RemoveFromCache'UNHANDLED_COMMAND = 7
  fromEnum RemoveFromCache'FATAL = 8
  fromEnum RemoveFromCache'PAGINATION_OR_HISTORY_FETCH = 9
  fromEnum RemoveFromCache'WORKFLOW_EXECUTION_ENDING = 10
  fromEnum
    (RemoveFromCache'EvictionReason'Unrecognized (RemoveFromCache'EvictionReason'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ RemoveFromCache'WORKFLOW_EXECUTION_ENDING
    = Prelude.error
        "RemoveFromCache'EvictionReason.succ: bad argument RemoveFromCache'WORKFLOW_EXECUTION_ENDING. This value would be out of bounds."
  succ RemoveFromCache'UNSPECIFIED = RemoveFromCache'CACHE_FULL
  succ RemoveFromCache'CACHE_FULL = RemoveFromCache'CACHE_MISS
  succ RemoveFromCache'CACHE_MISS = RemoveFromCache'NONDETERMINISM
  succ RemoveFromCache'NONDETERMINISM = RemoveFromCache'LANG_FAIL
  succ RemoveFromCache'LANG_FAIL = RemoveFromCache'LANG_REQUESTED
  succ RemoveFromCache'LANG_REQUESTED
    = RemoveFromCache'TASK_NOT_FOUND
  succ RemoveFromCache'TASK_NOT_FOUND
    = RemoveFromCache'UNHANDLED_COMMAND
  succ RemoveFromCache'UNHANDLED_COMMAND = RemoveFromCache'FATAL
  succ RemoveFromCache'FATAL
    = RemoveFromCache'PAGINATION_OR_HISTORY_FETCH
  succ RemoveFromCache'PAGINATION_OR_HISTORY_FETCH
    = RemoveFromCache'WORKFLOW_EXECUTION_ENDING
  succ (RemoveFromCache'EvictionReason'Unrecognized _)
    = Prelude.error
        "RemoveFromCache'EvictionReason.succ: bad argument: unrecognized value"
  pred RemoveFromCache'UNSPECIFIED
    = Prelude.error
        "RemoveFromCache'EvictionReason.pred: bad argument RemoveFromCache'UNSPECIFIED. This value would be out of bounds."
  pred RemoveFromCache'CACHE_FULL = RemoveFromCache'UNSPECIFIED
  pred RemoveFromCache'CACHE_MISS = RemoveFromCache'CACHE_FULL
  pred RemoveFromCache'NONDETERMINISM = RemoveFromCache'CACHE_MISS
  pred RemoveFromCache'LANG_FAIL = RemoveFromCache'NONDETERMINISM
  pred RemoveFromCache'LANG_REQUESTED = RemoveFromCache'LANG_FAIL
  pred RemoveFromCache'TASK_NOT_FOUND
    = RemoveFromCache'LANG_REQUESTED
  pred RemoveFromCache'UNHANDLED_COMMAND
    = RemoveFromCache'TASK_NOT_FOUND
  pred RemoveFromCache'FATAL = RemoveFromCache'UNHANDLED_COMMAND
  pred RemoveFromCache'PAGINATION_OR_HISTORY_FETCH
    = RemoveFromCache'FATAL
  pred RemoveFromCache'WORKFLOW_EXECUTION_ENDING
    = RemoveFromCache'PAGINATION_OR_HISTORY_FETCH
  pred (RemoveFromCache'EvictionReason'Unrecognized _)
    = Prelude.error
        "RemoveFromCache'EvictionReason.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault RemoveFromCache'EvictionReason where
  fieldDefault = RemoveFromCache'UNSPECIFIED
instance Control.DeepSeq.NFData RemoveFromCache'EvictionReason where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.seq' @:: Lens' ResolveActivity Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.result' @:: Lens' ResolveActivity Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult.ActivityResolution@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'result' @:: Lens' ResolveActivity (Prelude.Maybe Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult.ActivityResolution)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.isLocal' @:: Lens' ResolveActivity Prelude.Bool@ -}
data ResolveActivity
  = ResolveActivity'_constructor {_ResolveActivity'seq :: !Data.Word.Word32,
                                  _ResolveActivity'result :: !(Prelude.Maybe Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult.ActivityResolution),
                                  _ResolveActivity'isLocal :: !Prelude.Bool,
                                  _ResolveActivity'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResolveActivity where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResolveActivity "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveActivity'seq
           (\ x__ y__ -> x__ {_ResolveActivity'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResolveActivity "result" Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult.ActivityResolution where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveActivity'result
           (\ x__ y__ -> x__ {_ResolveActivity'result = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ResolveActivity "maybe'result" (Prelude.Maybe Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult.ActivityResolution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveActivity'result
           (\ x__ y__ -> x__ {_ResolveActivity'result = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResolveActivity "isLocal" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveActivity'isLocal
           (\ x__ y__ -> x__ {_ResolveActivity'isLocal = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResolveActivity where
  messageName _
    = Data.Text.pack "coresdk.workflow_activation.ResolveActivity"
  packedMessageDescriptor _
    = "\n\
      \\SIResolveActivity\DC2\DLE\n\
      \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2C\n\
      \\ACKresult\CAN\STX \SOH(\v2+.coresdk.activity_result.ActivityResolutionR\ACKresult\DC2\EM\n\
      \\bis_local\CAN\ETX \SOH(\bR\aisLocal"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"seq")) ::
              Data.ProtoLens.FieldDescriptor ResolveActivity
        result__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult.ActivityResolution)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'result")) ::
              Data.ProtoLens.FieldDescriptor ResolveActivity
        isLocal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_local"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"isLocal")) ::
              Data.ProtoLens.FieldDescriptor ResolveActivity
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, seq__field_descriptor),
           (Data.ProtoLens.Tag 2, result__field_descriptor),
           (Data.ProtoLens.Tag 3, isLocal__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResolveActivity'_unknownFields
        (\ x__ y__ -> x__ {_ResolveActivity'_unknownFields = y__})
  defMessage
    = ResolveActivity'_constructor
        {_ResolveActivity'seq = Data.ProtoLens.fieldDefault,
         _ResolveActivity'result = Prelude.Nothing,
         _ResolveActivity'isLocal = Data.ProtoLens.fieldDefault,
         _ResolveActivity'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResolveActivity
          -> Data.ProtoLens.Encoding.Bytes.Parser ResolveActivity
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
                                       "seq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "result"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"result") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_local"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"isLocal") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ResolveActivity"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"seq") _x
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
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"isLocal") _x
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
instance Control.DeepSeq.NFData ResolveActivity where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResolveActivity'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResolveActivity'seq x__)
                (Control.DeepSeq.deepseq
                   (_ResolveActivity'result x__)
                   (Control.DeepSeq.deepseq (_ResolveActivity'isLocal x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.seq' @:: Lens' ResolveChildWorkflowExecution Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.result' @:: Lens' ResolveChildWorkflowExecution Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow.ChildWorkflowResult@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'result' @:: Lens' ResolveChildWorkflowExecution (Prelude.Maybe Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow.ChildWorkflowResult)@ -}
data ResolveChildWorkflowExecution
  = ResolveChildWorkflowExecution'_constructor {_ResolveChildWorkflowExecution'seq :: !Data.Word.Word32,
                                                _ResolveChildWorkflowExecution'result :: !(Prelude.Maybe Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow.ChildWorkflowResult),
                                                _ResolveChildWorkflowExecution'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResolveChildWorkflowExecution where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResolveChildWorkflowExecution "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveChildWorkflowExecution'seq
           (\ x__ y__ -> x__ {_ResolveChildWorkflowExecution'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResolveChildWorkflowExecution "result" Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow.ChildWorkflowResult where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveChildWorkflowExecution'result
           (\ x__ y__ -> x__ {_ResolveChildWorkflowExecution'result = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ResolveChildWorkflowExecution "maybe'result" (Prelude.Maybe Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow.ChildWorkflowResult) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveChildWorkflowExecution'result
           (\ x__ y__ -> x__ {_ResolveChildWorkflowExecution'result = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResolveChildWorkflowExecution where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_activation.ResolveChildWorkflowExecution"
  packedMessageDescriptor _
    = "\n\
      \\GSResolveChildWorkflowExecution\DC2\DLE\n\
      \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2C\n\
      \\ACKresult\CAN\STX \SOH(\v2+.coresdk.child_workflow.ChildWorkflowResultR\ACKresult"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"seq")) ::
              Data.ProtoLens.FieldDescriptor ResolveChildWorkflowExecution
        result__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow.ChildWorkflowResult)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'result")) ::
              Data.ProtoLens.FieldDescriptor ResolveChildWorkflowExecution
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, seq__field_descriptor),
           (Data.ProtoLens.Tag 2, result__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResolveChildWorkflowExecution'_unknownFields
        (\ x__ y__
           -> x__ {_ResolveChildWorkflowExecution'_unknownFields = y__})
  defMessage
    = ResolveChildWorkflowExecution'_constructor
        {_ResolveChildWorkflowExecution'seq = Data.ProtoLens.fieldDefault,
         _ResolveChildWorkflowExecution'result = Prelude.Nothing,
         _ResolveChildWorkflowExecution'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResolveChildWorkflowExecution
          -> Data.ProtoLens.Encoding.Bytes.Parser ResolveChildWorkflowExecution
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
                                       "seq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
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
          (do loop Data.ProtoLens.defMessage) "ResolveChildWorkflowExecution"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"seq") _x
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
instance Control.DeepSeq.NFData ResolveChildWorkflowExecution where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResolveChildWorkflowExecution'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResolveChildWorkflowExecution'seq x__)
                (Control.DeepSeq.deepseq
                   (_ResolveChildWorkflowExecution'result x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.seq' @:: Lens' ResolveChildWorkflowExecutionStart Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'status' @:: Lens' ResolveChildWorkflowExecutionStart (Prelude.Maybe ResolveChildWorkflowExecutionStart'Status)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'succeeded' @:: Lens' ResolveChildWorkflowExecutionStart (Prelude.Maybe ResolveChildWorkflowExecutionStartSuccess)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.succeeded' @:: Lens' ResolveChildWorkflowExecutionStart ResolveChildWorkflowExecutionStartSuccess@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'failed' @:: Lens' ResolveChildWorkflowExecutionStart (Prelude.Maybe ResolveChildWorkflowExecutionStartFailure)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.failed' @:: Lens' ResolveChildWorkflowExecutionStart ResolveChildWorkflowExecutionStartFailure@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'cancelled' @:: Lens' ResolveChildWorkflowExecutionStart (Prelude.Maybe ResolveChildWorkflowExecutionStartCancelled)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.cancelled' @:: Lens' ResolveChildWorkflowExecutionStart ResolveChildWorkflowExecutionStartCancelled@ -}
data ResolveChildWorkflowExecutionStart
  = ResolveChildWorkflowExecutionStart'_constructor {_ResolveChildWorkflowExecutionStart'seq :: !Data.Word.Word32,
                                                     _ResolveChildWorkflowExecutionStart'status :: !(Prelude.Maybe ResolveChildWorkflowExecutionStart'Status),
                                                     _ResolveChildWorkflowExecutionStart'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResolveChildWorkflowExecutionStart where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ResolveChildWorkflowExecutionStart'Status
  = ResolveChildWorkflowExecutionStart'Succeeded !ResolveChildWorkflowExecutionStartSuccess |
    ResolveChildWorkflowExecutionStart'Failed !ResolveChildWorkflowExecutionStartFailure |
    ResolveChildWorkflowExecutionStart'Cancelled !ResolveChildWorkflowExecutionStartCancelled
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ResolveChildWorkflowExecutionStart "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveChildWorkflowExecutionStart'seq
           (\ x__ y__ -> x__ {_ResolveChildWorkflowExecutionStart'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResolveChildWorkflowExecutionStart "maybe'status" (Prelude.Maybe ResolveChildWorkflowExecutionStart'Status) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveChildWorkflowExecutionStart'status
           (\ x__ y__
              -> x__ {_ResolveChildWorkflowExecutionStart'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResolveChildWorkflowExecutionStart "maybe'succeeded" (Prelude.Maybe ResolveChildWorkflowExecutionStartSuccess) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveChildWorkflowExecutionStart'status
           (\ x__ y__
              -> x__ {_ResolveChildWorkflowExecutionStart'status = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ResolveChildWorkflowExecutionStart'Succeeded x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap ResolveChildWorkflowExecutionStart'Succeeded y__))
instance Data.ProtoLens.Field.HasField ResolveChildWorkflowExecutionStart "succeeded" ResolveChildWorkflowExecutionStartSuccess where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveChildWorkflowExecutionStart'status
           (\ x__ y__
              -> x__ {_ResolveChildWorkflowExecutionStart'status = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ResolveChildWorkflowExecutionStart'Succeeded x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap ResolveChildWorkflowExecutionStart'Succeeded y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ResolveChildWorkflowExecutionStart "maybe'failed" (Prelude.Maybe ResolveChildWorkflowExecutionStartFailure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveChildWorkflowExecutionStart'status
           (\ x__ y__
              -> x__ {_ResolveChildWorkflowExecutionStart'status = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ResolveChildWorkflowExecutionStart'Failed x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap ResolveChildWorkflowExecutionStart'Failed y__))
instance Data.ProtoLens.Field.HasField ResolveChildWorkflowExecutionStart "failed" ResolveChildWorkflowExecutionStartFailure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveChildWorkflowExecutionStart'status
           (\ x__ y__
              -> x__ {_ResolveChildWorkflowExecutionStart'status = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ResolveChildWorkflowExecutionStart'Failed x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap ResolveChildWorkflowExecutionStart'Failed y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ResolveChildWorkflowExecutionStart "maybe'cancelled" (Prelude.Maybe ResolveChildWorkflowExecutionStartCancelled) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveChildWorkflowExecutionStart'status
           (\ x__ y__
              -> x__ {_ResolveChildWorkflowExecutionStart'status = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ResolveChildWorkflowExecutionStart'Cancelled x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap ResolveChildWorkflowExecutionStart'Cancelled y__))
instance Data.ProtoLens.Field.HasField ResolveChildWorkflowExecutionStart "cancelled" ResolveChildWorkflowExecutionStartCancelled where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveChildWorkflowExecutionStart'status
           (\ x__ y__
              -> x__ {_ResolveChildWorkflowExecutionStart'status = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ResolveChildWorkflowExecutionStart'Cancelled x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap ResolveChildWorkflowExecutionStart'Cancelled y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ResolveChildWorkflowExecutionStart where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_activation.ResolveChildWorkflowExecutionStart"
  packedMessageDescriptor _
    = "\n\
      \\"ResolveChildWorkflowExecutionStart\DC2\DLE\n\
      \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2f\n\
      \\tsucceeded\CAN\STX \SOH(\v2F.coresdk.workflow_activation.ResolveChildWorkflowExecutionStartSuccessH\NULR\tsucceeded\DC2`\n\
      \\ACKfailed\CAN\ETX \SOH(\v2F.coresdk.workflow_activation.ResolveChildWorkflowExecutionStartFailureH\NULR\ACKfailed\DC2h\n\
      \\tcancelled\CAN\EOT \SOH(\v2H.coresdk.workflow_activation.ResolveChildWorkflowExecutionStartCancelledH\NULR\tcancelledB\b\n\
      \\ACKstatus"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"seq")) ::
              Data.ProtoLens.FieldDescriptor ResolveChildWorkflowExecutionStart
        succeeded__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "succeeded"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResolveChildWorkflowExecutionStartSuccess)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'succeeded")) ::
              Data.ProtoLens.FieldDescriptor ResolveChildWorkflowExecutionStart
        failed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failed"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResolveChildWorkflowExecutionStartFailure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failed")) ::
              Data.ProtoLens.FieldDescriptor ResolveChildWorkflowExecutionStart
        cancelled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancelled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResolveChildWorkflowExecutionStartCancelled)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cancelled")) ::
              Data.ProtoLens.FieldDescriptor ResolveChildWorkflowExecutionStart
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, seq__field_descriptor),
           (Data.ProtoLens.Tag 2, succeeded__field_descriptor),
           (Data.ProtoLens.Tag 3, failed__field_descriptor),
           (Data.ProtoLens.Tag 4, cancelled__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResolveChildWorkflowExecutionStart'_unknownFields
        (\ x__ y__
           -> x__ {_ResolveChildWorkflowExecutionStart'_unknownFields = y__})
  defMessage
    = ResolveChildWorkflowExecutionStart'_constructor
        {_ResolveChildWorkflowExecutionStart'seq = Data.ProtoLens.fieldDefault,
         _ResolveChildWorkflowExecutionStart'status = Prelude.Nothing,
         _ResolveChildWorkflowExecutionStart'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResolveChildWorkflowExecutionStart
          -> Data.ProtoLens.Encoding.Bytes.Parser ResolveChildWorkflowExecutionStart
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
                                       "seq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "succeeded"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"succeeded") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "failed"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"failed") y x)
                        34
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
          (do loop Data.ProtoLens.defMessage)
          "ResolveChildWorkflowExecutionStart"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"seq") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'status") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (ResolveChildWorkflowExecutionStart'Succeeded v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage v)
                   (Prelude.Just (ResolveChildWorkflowExecutionStart'Failed v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage v)
                   (Prelude.Just (ResolveChildWorkflowExecutionStart'Cancelled v))
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
instance Control.DeepSeq.NFData ResolveChildWorkflowExecutionStart where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResolveChildWorkflowExecutionStart'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResolveChildWorkflowExecutionStart'seq x__)
                (Control.DeepSeq.deepseq
                   (_ResolveChildWorkflowExecutionStart'status x__) ()))
instance Control.DeepSeq.NFData ResolveChildWorkflowExecutionStart'Status where
  rnf (ResolveChildWorkflowExecutionStart'Succeeded x__)
    = Control.DeepSeq.rnf x__
  rnf (ResolveChildWorkflowExecutionStart'Failed x__)
    = Control.DeepSeq.rnf x__
  rnf (ResolveChildWorkflowExecutionStart'Cancelled x__)
    = Control.DeepSeq.rnf x__
_ResolveChildWorkflowExecutionStart'Succeeded ::
  Data.ProtoLens.Prism.Prism' ResolveChildWorkflowExecutionStart'Status ResolveChildWorkflowExecutionStartSuccess
_ResolveChildWorkflowExecutionStart'Succeeded
  = Data.ProtoLens.Prism.prism'
      ResolveChildWorkflowExecutionStart'Succeeded
      (\ p__
         -> case p__ of
              (ResolveChildWorkflowExecutionStart'Succeeded p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ResolveChildWorkflowExecutionStart'Failed ::
  Data.ProtoLens.Prism.Prism' ResolveChildWorkflowExecutionStart'Status ResolveChildWorkflowExecutionStartFailure
_ResolveChildWorkflowExecutionStart'Failed
  = Data.ProtoLens.Prism.prism'
      ResolveChildWorkflowExecutionStart'Failed
      (\ p__
         -> case p__ of
              (ResolveChildWorkflowExecutionStart'Failed p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ResolveChildWorkflowExecutionStart'Cancelled ::
  Data.ProtoLens.Prism.Prism' ResolveChildWorkflowExecutionStart'Status ResolveChildWorkflowExecutionStartCancelled
_ResolveChildWorkflowExecutionStart'Cancelled
  = Data.ProtoLens.Prism.prism'
      ResolveChildWorkflowExecutionStart'Cancelled
      (\ p__
         -> case p__ of
              (ResolveChildWorkflowExecutionStart'Cancelled p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.failure' @:: Lens' ResolveChildWorkflowExecutionStartCancelled Proto.Temporal.Api.Failure.V1.Message.Failure@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'failure' @:: Lens' ResolveChildWorkflowExecutionStartCancelled (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@ -}
data ResolveChildWorkflowExecutionStartCancelled
  = ResolveChildWorkflowExecutionStartCancelled'_constructor {_ResolveChildWorkflowExecutionStartCancelled'failure :: !(Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure),
                                                              _ResolveChildWorkflowExecutionStartCancelled'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResolveChildWorkflowExecutionStartCancelled where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResolveChildWorkflowExecutionStartCancelled "failure" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveChildWorkflowExecutionStartCancelled'failure
           (\ x__ y__
              -> x__
                   {_ResolveChildWorkflowExecutionStartCancelled'failure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ResolveChildWorkflowExecutionStartCancelled "maybe'failure" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveChildWorkflowExecutionStartCancelled'failure
           (\ x__ y__
              -> x__
                   {_ResolveChildWorkflowExecutionStartCancelled'failure = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResolveChildWorkflowExecutionStartCancelled where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_activation.ResolveChildWorkflowExecutionStartCancelled"
  packedMessageDescriptor _
    = "\n\
      \+ResolveChildWorkflowExecutionStartCancelled\DC2:\n\
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
              Data.ProtoLens.FieldDescriptor ResolveChildWorkflowExecutionStartCancelled
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, failure__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResolveChildWorkflowExecutionStartCancelled'_unknownFields
        (\ x__ y__
           -> x__
                {_ResolveChildWorkflowExecutionStartCancelled'_unknownFields = y__})
  defMessage
    = ResolveChildWorkflowExecutionStartCancelled'_constructor
        {_ResolveChildWorkflowExecutionStartCancelled'failure = Prelude.Nothing,
         _ResolveChildWorkflowExecutionStartCancelled'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResolveChildWorkflowExecutionStartCancelled
          -> Data.ProtoLens.Encoding.Bytes.Parser ResolveChildWorkflowExecutionStartCancelled
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
          (do loop Data.ProtoLens.defMessage)
          "ResolveChildWorkflowExecutionStartCancelled"
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
instance Control.DeepSeq.NFData ResolveChildWorkflowExecutionStartCancelled where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResolveChildWorkflowExecutionStartCancelled'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResolveChildWorkflowExecutionStartCancelled'failure x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.workflowId' @:: Lens' ResolveChildWorkflowExecutionStartFailure Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.workflowType' @:: Lens' ResolveChildWorkflowExecutionStartFailure Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.cause' @:: Lens' ResolveChildWorkflowExecutionStartFailure Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow.StartChildWorkflowExecutionFailedCause@ -}
data ResolveChildWorkflowExecutionStartFailure
  = ResolveChildWorkflowExecutionStartFailure'_constructor {_ResolveChildWorkflowExecutionStartFailure'workflowId :: !Data.Text.Text,
                                                            _ResolveChildWorkflowExecutionStartFailure'workflowType :: !Data.Text.Text,
                                                            _ResolveChildWorkflowExecutionStartFailure'cause :: !Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow.StartChildWorkflowExecutionFailedCause,
                                                            _ResolveChildWorkflowExecutionStartFailure'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResolveChildWorkflowExecutionStartFailure where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResolveChildWorkflowExecutionStartFailure "workflowId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveChildWorkflowExecutionStartFailure'workflowId
           (\ x__ y__
              -> x__
                   {_ResolveChildWorkflowExecutionStartFailure'workflowId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResolveChildWorkflowExecutionStartFailure "workflowType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveChildWorkflowExecutionStartFailure'workflowType
           (\ x__ y__
              -> x__
                   {_ResolveChildWorkflowExecutionStartFailure'workflowType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResolveChildWorkflowExecutionStartFailure "cause" Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow.StartChildWorkflowExecutionFailedCause where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveChildWorkflowExecutionStartFailure'cause
           (\ x__ y__
              -> x__ {_ResolveChildWorkflowExecutionStartFailure'cause = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResolveChildWorkflowExecutionStartFailure where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_activation.ResolveChildWorkflowExecutionStartFailure"
  packedMessageDescriptor _
    = "\n\
      \)ResolveChildWorkflowExecutionStartFailure\DC2\US\n\
      \\vworkflow_id\CAN\SOH \SOH(\tR\n\
      \workflowId\DC2#\n\
      \\rworkflow_type\CAN\STX \SOH(\tR\fworkflowType\DC2T\n\
      \\ENQcause\CAN\ETX \SOH(\SO2>.coresdk.child_workflow.StartChildWorkflowExecutionFailedCauseR\ENQcause"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        workflowId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workflowId")) ::
              Data.ProtoLens.FieldDescriptor ResolveChildWorkflowExecutionStartFailure
        workflowType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workflowType")) ::
              Data.ProtoLens.FieldDescriptor ResolveChildWorkflowExecutionStartFailure
        cause__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cause"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow.StartChildWorkflowExecutionFailedCause)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"cause")) ::
              Data.ProtoLens.FieldDescriptor ResolveChildWorkflowExecutionStartFailure
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, workflowId__field_descriptor),
           (Data.ProtoLens.Tag 2, workflowType__field_descriptor),
           (Data.ProtoLens.Tag 3, cause__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResolveChildWorkflowExecutionStartFailure'_unknownFields
        (\ x__ y__
           -> x__
                {_ResolveChildWorkflowExecutionStartFailure'_unknownFields = y__})
  defMessage
    = ResolveChildWorkflowExecutionStartFailure'_constructor
        {_ResolveChildWorkflowExecutionStartFailure'workflowId = Data.ProtoLens.fieldDefault,
         _ResolveChildWorkflowExecutionStartFailure'workflowType = Data.ProtoLens.fieldDefault,
         _ResolveChildWorkflowExecutionStartFailure'cause = Data.ProtoLens.fieldDefault,
         _ResolveChildWorkflowExecutionStartFailure'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResolveChildWorkflowExecutionStartFailure
          -> Data.ProtoLens.Encoding.Bytes.Parser ResolveChildWorkflowExecutionStartFailure
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
                                       "workflow_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"workflowId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "workflow_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowType") y x)
                        24
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
          (do loop Data.ProtoLens.defMessage)
          "ResolveChildWorkflowExecutionStartFailure"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"workflowId") _x
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
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"cause") _x
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
instance Control.DeepSeq.NFData ResolveChildWorkflowExecutionStartFailure where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResolveChildWorkflowExecutionStartFailure'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResolveChildWorkflowExecutionStartFailure'workflowId x__)
                (Control.DeepSeq.deepseq
                   (_ResolveChildWorkflowExecutionStartFailure'workflowType x__)
                   (Control.DeepSeq.deepseq
                      (_ResolveChildWorkflowExecutionStartFailure'cause x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.runId' @:: Lens' ResolveChildWorkflowExecutionStartSuccess Data.Text.Text@ -}
data ResolveChildWorkflowExecutionStartSuccess
  = ResolveChildWorkflowExecutionStartSuccess'_constructor {_ResolveChildWorkflowExecutionStartSuccess'runId :: !Data.Text.Text,
                                                            _ResolveChildWorkflowExecutionStartSuccess'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResolveChildWorkflowExecutionStartSuccess where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResolveChildWorkflowExecutionStartSuccess "runId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveChildWorkflowExecutionStartSuccess'runId
           (\ x__ y__
              -> x__ {_ResolveChildWorkflowExecutionStartSuccess'runId = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResolveChildWorkflowExecutionStartSuccess where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_activation.ResolveChildWorkflowExecutionStartSuccess"
  packedMessageDescriptor _
    = "\n\
      \)ResolveChildWorkflowExecutionStartSuccess\DC2\NAK\n\
      \\ACKrun_id\CAN\SOH \SOH(\tR\ENQrunId"
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
              Data.ProtoLens.FieldDescriptor ResolveChildWorkflowExecutionStartSuccess
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, runId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResolveChildWorkflowExecutionStartSuccess'_unknownFields
        (\ x__ y__
           -> x__
                {_ResolveChildWorkflowExecutionStartSuccess'_unknownFields = y__})
  defMessage
    = ResolveChildWorkflowExecutionStartSuccess'_constructor
        {_ResolveChildWorkflowExecutionStartSuccess'runId = Data.ProtoLens.fieldDefault,
         _ResolveChildWorkflowExecutionStartSuccess'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResolveChildWorkflowExecutionStartSuccess
          -> Data.ProtoLens.Encoding.Bytes.Parser ResolveChildWorkflowExecutionStartSuccess
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "ResolveChildWorkflowExecutionStartSuccess"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ResolveChildWorkflowExecutionStartSuccess where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResolveChildWorkflowExecutionStartSuccess'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResolveChildWorkflowExecutionStartSuccess'runId x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.seq' @:: Lens' ResolveNexusOperation Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.result' @:: Lens' ResolveNexusOperation Proto.Temporal.Sdk.Core.Nexus.Nexus.NexusOperationResult@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'result' @:: Lens' ResolveNexusOperation (Prelude.Maybe Proto.Temporal.Sdk.Core.Nexus.Nexus.NexusOperationResult)@ -}
data ResolveNexusOperation
  = ResolveNexusOperation'_constructor {_ResolveNexusOperation'seq :: !Data.Word.Word32,
                                        _ResolveNexusOperation'result :: !(Prelude.Maybe Proto.Temporal.Sdk.Core.Nexus.Nexus.NexusOperationResult),
                                        _ResolveNexusOperation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResolveNexusOperation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResolveNexusOperation "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveNexusOperation'seq
           (\ x__ y__ -> x__ {_ResolveNexusOperation'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResolveNexusOperation "result" Proto.Temporal.Sdk.Core.Nexus.Nexus.NexusOperationResult where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveNexusOperation'result
           (\ x__ y__ -> x__ {_ResolveNexusOperation'result = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ResolveNexusOperation "maybe'result" (Prelude.Maybe Proto.Temporal.Sdk.Core.Nexus.Nexus.NexusOperationResult) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveNexusOperation'result
           (\ x__ y__ -> x__ {_ResolveNexusOperation'result = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResolveNexusOperation where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_activation.ResolveNexusOperation"
  packedMessageDescriptor _
    = "\n\
      \\NAKResolveNexusOperation\DC2\DLE\n\
      \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2;\n\
      \\ACKresult\CAN\STX \SOH(\v2#.coresdk.nexus.NexusOperationResultR\ACKresult"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"seq")) ::
              Data.ProtoLens.FieldDescriptor ResolveNexusOperation
        result__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Sdk.Core.Nexus.Nexus.NexusOperationResult)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'result")) ::
              Data.ProtoLens.FieldDescriptor ResolveNexusOperation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, seq__field_descriptor),
           (Data.ProtoLens.Tag 2, result__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResolveNexusOperation'_unknownFields
        (\ x__ y__ -> x__ {_ResolveNexusOperation'_unknownFields = y__})
  defMessage
    = ResolveNexusOperation'_constructor
        {_ResolveNexusOperation'seq = Data.ProtoLens.fieldDefault,
         _ResolveNexusOperation'result = Prelude.Nothing,
         _ResolveNexusOperation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResolveNexusOperation
          -> Data.ProtoLens.Encoding.Bytes.Parser ResolveNexusOperation
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
                                       "seq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
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
          (do loop Data.ProtoLens.defMessage) "ResolveNexusOperation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"seq") _x
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
instance Control.DeepSeq.NFData ResolveNexusOperation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResolveNexusOperation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResolveNexusOperation'seq x__)
                (Control.DeepSeq.deepseq (_ResolveNexusOperation'result x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.seq' @:: Lens' ResolveNexusOperationStart Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'status' @:: Lens' ResolveNexusOperationStart (Prelude.Maybe ResolveNexusOperationStart'Status)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'operationToken' @:: Lens' ResolveNexusOperationStart (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.operationToken' @:: Lens' ResolveNexusOperationStart Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'startedSync' @:: Lens' ResolveNexusOperationStart (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.startedSync' @:: Lens' ResolveNexusOperationStart Prelude.Bool@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'failed' @:: Lens' ResolveNexusOperationStart (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.failed' @:: Lens' ResolveNexusOperationStart Proto.Temporal.Api.Failure.V1.Message.Failure@ -}
data ResolveNexusOperationStart
  = ResolveNexusOperationStart'_constructor {_ResolveNexusOperationStart'seq :: !Data.Word.Word32,
                                             _ResolveNexusOperationStart'status :: !(Prelude.Maybe ResolveNexusOperationStart'Status),
                                             _ResolveNexusOperationStart'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResolveNexusOperationStart where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ResolveNexusOperationStart'Status
  = ResolveNexusOperationStart'OperationToken !Data.Text.Text |
    ResolveNexusOperationStart'StartedSync !Prelude.Bool |
    ResolveNexusOperationStart'Failed !Proto.Temporal.Api.Failure.V1.Message.Failure
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ResolveNexusOperationStart "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveNexusOperationStart'seq
           (\ x__ y__ -> x__ {_ResolveNexusOperationStart'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResolveNexusOperationStart "maybe'status" (Prelude.Maybe ResolveNexusOperationStart'Status) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveNexusOperationStart'status
           (\ x__ y__ -> x__ {_ResolveNexusOperationStart'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResolveNexusOperationStart "maybe'operationToken" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveNexusOperationStart'status
           (\ x__ y__ -> x__ {_ResolveNexusOperationStart'status = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ResolveNexusOperationStart'OperationToken x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap ResolveNexusOperationStart'OperationToken y__))
instance Data.ProtoLens.Field.HasField ResolveNexusOperationStart "operationToken" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveNexusOperationStart'status
           (\ x__ y__ -> x__ {_ResolveNexusOperationStart'status = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ResolveNexusOperationStart'OperationToken x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap ResolveNexusOperationStart'OperationToken y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField ResolveNexusOperationStart "maybe'startedSync" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveNexusOperationStart'status
           (\ x__ y__ -> x__ {_ResolveNexusOperationStart'status = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ResolveNexusOperationStart'StartedSync x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap ResolveNexusOperationStart'StartedSync y__))
instance Data.ProtoLens.Field.HasField ResolveNexusOperationStart "startedSync" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveNexusOperationStart'status
           (\ x__ y__ -> x__ {_ResolveNexusOperationStart'status = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ResolveNexusOperationStart'StartedSync x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap ResolveNexusOperationStart'StartedSync y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField ResolveNexusOperationStart "maybe'failed" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveNexusOperationStart'status
           (\ x__ y__ -> x__ {_ResolveNexusOperationStart'status = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ResolveNexusOperationStart'Failed x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ResolveNexusOperationStart'Failed y__))
instance Data.ProtoLens.Field.HasField ResolveNexusOperationStart "failed" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveNexusOperationStart'status
           (\ x__ y__ -> x__ {_ResolveNexusOperationStart'status = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ResolveNexusOperationStart'Failed x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ResolveNexusOperationStart'Failed y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ResolveNexusOperationStart where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_activation.ResolveNexusOperationStart"
  packedMessageDescriptor _
    = "\n\
      \\SUBResolveNexusOperationStart\DC2\DLE\n\
      \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2)\n\
      \\SIoperation_token\CAN\STX \SOH(\tH\NULR\SOoperationToken\DC2#\n\
      \\fstarted_sync\CAN\ETX \SOH(\bH\NULR\vstartedSync\DC2:\n\
      \\ACKfailed\CAN\EOT \SOH(\v2 .temporal.api.failure.v1.FailureH\NULR\ACKfailedB\b\n\
      \\ACKstatus"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"seq")) ::
              Data.ProtoLens.FieldDescriptor ResolveNexusOperationStart
        operationToken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_token"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'operationToken")) ::
              Data.ProtoLens.FieldDescriptor ResolveNexusOperationStart
        startedSync__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "started_sync"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startedSync")) ::
              Data.ProtoLens.FieldDescriptor ResolveNexusOperationStart
        failed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failed"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failed")) ::
              Data.ProtoLens.FieldDescriptor ResolveNexusOperationStart
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, seq__field_descriptor),
           (Data.ProtoLens.Tag 2, operationToken__field_descriptor),
           (Data.ProtoLens.Tag 3, startedSync__field_descriptor),
           (Data.ProtoLens.Tag 4, failed__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResolveNexusOperationStart'_unknownFields
        (\ x__ y__
           -> x__ {_ResolveNexusOperationStart'_unknownFields = y__})
  defMessage
    = ResolveNexusOperationStart'_constructor
        {_ResolveNexusOperationStart'seq = Data.ProtoLens.fieldDefault,
         _ResolveNexusOperationStart'status = Prelude.Nothing,
         _ResolveNexusOperationStart'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResolveNexusOperationStart
          -> Data.ProtoLens.Encoding.Bytes.Parser ResolveNexusOperationStart
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
                                       "seq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation_token"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"operationToken") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "started_sync"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startedSync") y x)
                        34
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
          (do loop Data.ProtoLens.defMessage) "ResolveNexusOperationStart"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"seq") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'status") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (ResolveNexusOperationStart'OperationToken v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.Text.Encoding.encodeUtf8 v)
                   (Prelude.Just (ResolveNexusOperationStart'StartedSync v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                             v)
                   (Prelude.Just (ResolveNexusOperationStart'Failed v))
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
instance Control.DeepSeq.NFData ResolveNexusOperationStart where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResolveNexusOperationStart'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResolveNexusOperationStart'seq x__)
                (Control.DeepSeq.deepseq
                   (_ResolveNexusOperationStart'status x__) ()))
instance Control.DeepSeq.NFData ResolveNexusOperationStart'Status where
  rnf (ResolveNexusOperationStart'OperationToken x__)
    = Control.DeepSeq.rnf x__
  rnf (ResolveNexusOperationStart'StartedSync x__)
    = Control.DeepSeq.rnf x__
  rnf (ResolveNexusOperationStart'Failed x__)
    = Control.DeepSeq.rnf x__
_ResolveNexusOperationStart'OperationToken ::
  Data.ProtoLens.Prism.Prism' ResolveNexusOperationStart'Status Data.Text.Text
_ResolveNexusOperationStart'OperationToken
  = Data.ProtoLens.Prism.prism'
      ResolveNexusOperationStart'OperationToken
      (\ p__
         -> case p__ of
              (ResolveNexusOperationStart'OperationToken p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ResolveNexusOperationStart'StartedSync ::
  Data.ProtoLens.Prism.Prism' ResolveNexusOperationStart'Status Prelude.Bool
_ResolveNexusOperationStart'StartedSync
  = Data.ProtoLens.Prism.prism'
      ResolveNexusOperationStart'StartedSync
      (\ p__
         -> case p__ of
              (ResolveNexusOperationStart'StartedSync p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ResolveNexusOperationStart'Failed ::
  Data.ProtoLens.Prism.Prism' ResolveNexusOperationStart'Status Proto.Temporal.Api.Failure.V1.Message.Failure
_ResolveNexusOperationStart'Failed
  = Data.ProtoLens.Prism.prism'
      ResolveNexusOperationStart'Failed
      (\ p__
         -> case p__ of
              (ResolveNexusOperationStart'Failed p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.seq' @:: Lens' ResolveRequestCancelExternalWorkflow Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.failure' @:: Lens' ResolveRequestCancelExternalWorkflow Proto.Temporal.Api.Failure.V1.Message.Failure@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'failure' @:: Lens' ResolveRequestCancelExternalWorkflow (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.cause' @:: Lens' ResolveRequestCancelExternalWorkflow Proto.Temporal.Api.Enums.V1.FailedCause.CancelExternalWorkflowExecutionFailedCause@ -}
data ResolveRequestCancelExternalWorkflow
  = ResolveRequestCancelExternalWorkflow'_constructor {_ResolveRequestCancelExternalWorkflow'seq :: !Data.Word.Word32,
                                                       _ResolveRequestCancelExternalWorkflow'failure :: !(Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure),
                                                       _ResolveRequestCancelExternalWorkflow'cause :: !Proto.Temporal.Api.Enums.V1.FailedCause.CancelExternalWorkflowExecutionFailedCause,
                                                       _ResolveRequestCancelExternalWorkflow'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResolveRequestCancelExternalWorkflow where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResolveRequestCancelExternalWorkflow "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveRequestCancelExternalWorkflow'seq
           (\ x__ y__
              -> x__ {_ResolveRequestCancelExternalWorkflow'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResolveRequestCancelExternalWorkflow "failure" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveRequestCancelExternalWorkflow'failure
           (\ x__ y__
              -> x__ {_ResolveRequestCancelExternalWorkflow'failure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ResolveRequestCancelExternalWorkflow "maybe'failure" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveRequestCancelExternalWorkflow'failure
           (\ x__ y__
              -> x__ {_ResolveRequestCancelExternalWorkflow'failure = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResolveRequestCancelExternalWorkflow "cause" Proto.Temporal.Api.Enums.V1.FailedCause.CancelExternalWorkflowExecutionFailedCause where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveRequestCancelExternalWorkflow'cause
           (\ x__ y__
              -> x__ {_ResolveRequestCancelExternalWorkflow'cause = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResolveRequestCancelExternalWorkflow where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_activation.ResolveRequestCancelExternalWorkflow"
  packedMessageDescriptor _
    = "\n\
      \$ResolveRequestCancelExternalWorkflow\DC2\DLE\n\
      \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2:\n\
      \\afailure\CAN\STX \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure\DC2W\n\
      \\ENQcause\CAN\ETX \SOH(\SO2A.temporal.api.enums.v1.CancelExternalWorkflowExecutionFailedCauseR\ENQcause"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"seq")) ::
              Data.ProtoLens.FieldDescriptor ResolveRequestCancelExternalWorkflow
        failure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failure")) ::
              Data.ProtoLens.FieldDescriptor ResolveRequestCancelExternalWorkflow
        cause__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cause"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.FailedCause.CancelExternalWorkflowExecutionFailedCause)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"cause")) ::
              Data.ProtoLens.FieldDescriptor ResolveRequestCancelExternalWorkflow
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, seq__field_descriptor),
           (Data.ProtoLens.Tag 2, failure__field_descriptor),
           (Data.ProtoLens.Tag 3, cause__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResolveRequestCancelExternalWorkflow'_unknownFields
        (\ x__ y__
           -> x__
                {_ResolveRequestCancelExternalWorkflow'_unknownFields = y__})
  defMessage
    = ResolveRequestCancelExternalWorkflow'_constructor
        {_ResolveRequestCancelExternalWorkflow'seq = Data.ProtoLens.fieldDefault,
         _ResolveRequestCancelExternalWorkflow'failure = Prelude.Nothing,
         _ResolveRequestCancelExternalWorkflow'cause = Data.ProtoLens.fieldDefault,
         _ResolveRequestCancelExternalWorkflow'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResolveRequestCancelExternalWorkflow
          -> Data.ProtoLens.Encoding.Bytes.Parser ResolveRequestCancelExternalWorkflow
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
                                       "seq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "failure"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"failure") y x)
                        24
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
          (do loop Data.ProtoLens.defMessage)
          "ResolveRequestCancelExternalWorkflow"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"seq") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'failure") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"cause") _x
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
instance Control.DeepSeq.NFData ResolveRequestCancelExternalWorkflow where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResolveRequestCancelExternalWorkflow'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResolveRequestCancelExternalWorkflow'seq x__)
                (Control.DeepSeq.deepseq
                   (_ResolveRequestCancelExternalWorkflow'failure x__)
                   (Control.DeepSeq.deepseq
                      (_ResolveRequestCancelExternalWorkflow'cause x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.seq' @:: Lens' ResolveSignalExternalWorkflow Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.failure' @:: Lens' ResolveSignalExternalWorkflow Proto.Temporal.Api.Failure.V1.Message.Failure@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'failure' @:: Lens' ResolveSignalExternalWorkflow (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.cause' @:: Lens' ResolveSignalExternalWorkflow Proto.Temporal.Api.Enums.V1.FailedCause.SignalExternalWorkflowExecutionFailedCause@ -}
data ResolveSignalExternalWorkflow
  = ResolveSignalExternalWorkflow'_constructor {_ResolveSignalExternalWorkflow'seq :: !Data.Word.Word32,
                                                _ResolveSignalExternalWorkflow'failure :: !(Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure),
                                                _ResolveSignalExternalWorkflow'cause :: !Proto.Temporal.Api.Enums.V1.FailedCause.SignalExternalWorkflowExecutionFailedCause,
                                                _ResolveSignalExternalWorkflow'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResolveSignalExternalWorkflow where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResolveSignalExternalWorkflow "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveSignalExternalWorkflow'seq
           (\ x__ y__ -> x__ {_ResolveSignalExternalWorkflow'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResolveSignalExternalWorkflow "failure" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveSignalExternalWorkflow'failure
           (\ x__ y__ -> x__ {_ResolveSignalExternalWorkflow'failure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ResolveSignalExternalWorkflow "maybe'failure" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveSignalExternalWorkflow'failure
           (\ x__ y__ -> x__ {_ResolveSignalExternalWorkflow'failure = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResolveSignalExternalWorkflow "cause" Proto.Temporal.Api.Enums.V1.FailedCause.SignalExternalWorkflowExecutionFailedCause where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResolveSignalExternalWorkflow'cause
           (\ x__ y__ -> x__ {_ResolveSignalExternalWorkflow'cause = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResolveSignalExternalWorkflow where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_activation.ResolveSignalExternalWorkflow"
  packedMessageDescriptor _
    = "\n\
      \\GSResolveSignalExternalWorkflow\DC2\DLE\n\
      \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2:\n\
      \\afailure\CAN\STX \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure\DC2W\n\
      \\ENQcause\CAN\ETX \SOH(\SO2A.temporal.api.enums.v1.SignalExternalWorkflowExecutionFailedCauseR\ENQcause"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"seq")) ::
              Data.ProtoLens.FieldDescriptor ResolveSignalExternalWorkflow
        failure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failure")) ::
              Data.ProtoLens.FieldDescriptor ResolveSignalExternalWorkflow
        cause__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cause"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.FailedCause.SignalExternalWorkflowExecutionFailedCause)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"cause")) ::
              Data.ProtoLens.FieldDescriptor ResolveSignalExternalWorkflow
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, seq__field_descriptor),
           (Data.ProtoLens.Tag 2, failure__field_descriptor),
           (Data.ProtoLens.Tag 3, cause__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResolveSignalExternalWorkflow'_unknownFields
        (\ x__ y__
           -> x__ {_ResolveSignalExternalWorkflow'_unknownFields = y__})
  defMessage
    = ResolveSignalExternalWorkflow'_constructor
        {_ResolveSignalExternalWorkflow'seq = Data.ProtoLens.fieldDefault,
         _ResolveSignalExternalWorkflow'failure = Prelude.Nothing,
         _ResolveSignalExternalWorkflow'cause = Data.ProtoLens.fieldDefault,
         _ResolveSignalExternalWorkflow'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResolveSignalExternalWorkflow
          -> Data.ProtoLens.Encoding.Bytes.Parser ResolveSignalExternalWorkflow
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
                                       "seq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "failure"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"failure") y x)
                        24
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
          (do loop Data.ProtoLens.defMessage) "ResolveSignalExternalWorkflow"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"seq") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'failure") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"cause") _x
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
instance Control.DeepSeq.NFData ResolveSignalExternalWorkflow where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResolveSignalExternalWorkflow'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResolveSignalExternalWorkflow'seq x__)
                (Control.DeepSeq.deepseq
                   (_ResolveSignalExternalWorkflow'failure x__)
                   (Control.DeepSeq.deepseq
                      (_ResolveSignalExternalWorkflow'cause x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.signalName' @:: Lens' SignalWorkflow Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.input' @:: Lens' SignalWorkflow [Proto.Temporal.Api.Common.V1.Message.Payload]@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.vec'input' @:: Lens' SignalWorkflow (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.identity' @:: Lens' SignalWorkflow Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.headers' @:: Lens' SignalWorkflow (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.originatingEventId' @:: Lens' SignalWorkflow Data.Int.Int64@ -}
data SignalWorkflow
  = SignalWorkflow'_constructor {_SignalWorkflow'signalName :: !Data.Text.Text,
                                 _SignalWorkflow'input :: !(Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload),
                                 _SignalWorkflow'identity :: !Data.Text.Text,
                                 _SignalWorkflow'headers :: !(Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload),
                                 _SignalWorkflow'originatingEventId :: !Data.Int.Int64,
                                 _SignalWorkflow'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SignalWorkflow where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SignalWorkflow "signalName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalWorkflow'signalName
           (\ x__ y__ -> x__ {_SignalWorkflow'signalName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalWorkflow "input" [Proto.Temporal.Api.Common.V1.Message.Payload] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalWorkflow'input
           (\ x__ y__ -> x__ {_SignalWorkflow'input = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SignalWorkflow "vec'input" (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalWorkflow'input
           (\ x__ y__ -> x__ {_SignalWorkflow'input = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalWorkflow "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalWorkflow'identity
           (\ x__ y__ -> x__ {_SignalWorkflow'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalWorkflow "headers" (Data.Map.Map Data.Text.Text Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalWorkflow'headers
           (\ x__ y__ -> x__ {_SignalWorkflow'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalWorkflow "originatingEventId" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalWorkflow'originatingEventId
           (\ x__ y__ -> x__ {_SignalWorkflow'originatingEventId = y__}))
        Prelude.id
instance Data.ProtoLens.Message SignalWorkflow where
  messageName _
    = Data.Text.pack "coresdk.workflow_activation.SignalWorkflow"
  packedMessageDescriptor _
    = "\n\
      \\SOSignalWorkflow\DC2\US\n\
      \\vsignal_name\CAN\SOH \SOH(\tR\n\
      \signalName\DC25\n\
      \\ENQinput\CAN\STX \ETX(\v2\US.temporal.api.common.v1.PayloadR\ENQinput\DC2\SUB\n\
      \\bidentity\CAN\ETX \SOH(\tR\bidentity\DC2R\n\
      \\aheaders\CAN\ENQ \ETX(\v28.coresdk.workflow_activation.SignalWorkflow.HeadersEntryR\aheaders\DC20\n\
      \\DC4originating_event_id\CAN\ACK \SOH(\ETXR\DC2originatingEventId\SUB[\n\
      \\fHeadersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
      \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        signalName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signal_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"signalName")) ::
              Data.ProtoLens.FieldDescriptor SignalWorkflow
        input__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "input"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"input")) ::
              Data.ProtoLens.FieldDescriptor SignalWorkflow
        identity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "identity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"identity")) ::
              Data.ProtoLens.FieldDescriptor SignalWorkflow
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SignalWorkflow'HeadersEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"headers")) ::
              Data.ProtoLens.FieldDescriptor SignalWorkflow
        originatingEventId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "originating_event_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"originatingEventId")) ::
              Data.ProtoLens.FieldDescriptor SignalWorkflow
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, signalName__field_descriptor),
           (Data.ProtoLens.Tag 2, input__field_descriptor),
           (Data.ProtoLens.Tag 3, identity__field_descriptor),
           (Data.ProtoLens.Tag 5, headers__field_descriptor),
           (Data.ProtoLens.Tag 6, originatingEventId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SignalWorkflow'_unknownFields
        (\ x__ y__ -> x__ {_SignalWorkflow'_unknownFields = y__})
  defMessage
    = SignalWorkflow'_constructor
        {_SignalWorkflow'signalName = Data.ProtoLens.fieldDefault,
         _SignalWorkflow'input = Data.Vector.Generic.empty,
         _SignalWorkflow'identity = Data.ProtoLens.fieldDefault,
         _SignalWorkflow'headers = Data.Map.empty,
         _SignalWorkflow'originatingEventId = Data.ProtoLens.fieldDefault,
         _SignalWorkflow'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SignalWorkflow
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Common.V1.Message.Payload
             -> Data.ProtoLens.Encoding.Bytes.Parser SignalWorkflow
        loop x mutable'input
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'input <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
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
                              (Data.ProtoLens.Field.field @"vec'input") frozen'input x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "signal_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"signalName") y x)
                                  mutable'input
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "input"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'input y)
                                loop x v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "identity"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"identity") y x)
                                  mutable'input
                        42
                          -> do !(entry :: SignalWorkflow'HeadersEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                             (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                 Data.ProtoLens.Encoding.Bytes.isolate
                                                                                   (Prelude.fromIntegral
                                                                                      len)
                                                                                   Data.ProtoLens.parseMessage)
                                                                             "headers"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"headers")
                                        (\ !t -> Data.Map.insert key value t) x)
                                     mutable'input)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "originating_event_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"originatingEventId") y x)
                                  mutable'input
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'input
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'input <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'input)
          "SignalWorkflow"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"signalName") _x
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'input") _x))
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
                      (Data.Monoid.mconcat
                         (Prelude.map
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
                                       Data.ProtoLens.encodeMessage
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"value") (Prelude.snd _v)
                                             (Data.ProtoLens.defMessage ::
                                                SignalWorkflow'HeadersEntry)))))
                            (Data.Map.toList
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"headers") _x))))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"originatingEventId") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                     _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData SignalWorkflow where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SignalWorkflow'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SignalWorkflow'signalName x__)
                (Control.DeepSeq.deepseq
                   (_SignalWorkflow'input x__)
                   (Control.DeepSeq.deepseq
                      (_SignalWorkflow'identity x__)
                      (Control.DeepSeq.deepseq
                         (_SignalWorkflow'headers x__)
                         (Control.DeepSeq.deepseq
                            (_SignalWorkflow'originatingEventId x__) ())))))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.key' @:: Lens' SignalWorkflow'HeadersEntry Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.value' @:: Lens' SignalWorkflow'HeadersEntry Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'value' @:: Lens' SignalWorkflow'HeadersEntry (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@ -}
data SignalWorkflow'HeadersEntry
  = SignalWorkflow'HeadersEntry'_constructor {_SignalWorkflow'HeadersEntry'key :: !Data.Text.Text,
                                              _SignalWorkflow'HeadersEntry'value :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                              _SignalWorkflow'HeadersEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SignalWorkflow'HeadersEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SignalWorkflow'HeadersEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalWorkflow'HeadersEntry'key
           (\ x__ y__ -> x__ {_SignalWorkflow'HeadersEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalWorkflow'HeadersEntry "value" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalWorkflow'HeadersEntry'value
           (\ x__ y__ -> x__ {_SignalWorkflow'HeadersEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SignalWorkflow'HeadersEntry "maybe'value" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalWorkflow'HeadersEntry'value
           (\ x__ y__ -> x__ {_SignalWorkflow'HeadersEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message SignalWorkflow'HeadersEntry where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_activation.SignalWorkflow.HeadersEntry"
  packedMessageDescriptor _
    = "\n\
      \\fHeadersEntry\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor SignalWorkflow'HeadersEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor SignalWorkflow'HeadersEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SignalWorkflow'HeadersEntry'_unknownFields
        (\ x__ y__
           -> x__ {_SignalWorkflow'HeadersEntry'_unknownFields = y__})
  defMessage
    = SignalWorkflow'HeadersEntry'_constructor
        {_SignalWorkflow'HeadersEntry'key = Data.ProtoLens.fieldDefault,
         _SignalWorkflow'HeadersEntry'value = Prelude.Nothing,
         _SignalWorkflow'HeadersEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SignalWorkflow'HeadersEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser SignalWorkflow'HeadersEntry
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
          (do loop Data.ProtoLens.defMessage) "HeadersEntry"
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
instance Control.DeepSeq.NFData SignalWorkflow'HeadersEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SignalWorkflow'HeadersEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SignalWorkflow'HeadersEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_SignalWorkflow'HeadersEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.randomnessSeed' @:: Lens' UpdateRandomSeed Data.Word.Word64@ -}
data UpdateRandomSeed
  = UpdateRandomSeed'_constructor {_UpdateRandomSeed'randomnessSeed :: !Data.Word.Word64,
                                   _UpdateRandomSeed'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpdateRandomSeed where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UpdateRandomSeed "randomnessSeed" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateRandomSeed'randomnessSeed
           (\ x__ y__ -> x__ {_UpdateRandomSeed'randomnessSeed = y__}))
        Prelude.id
instance Data.ProtoLens.Message UpdateRandomSeed where
  messageName _
    = Data.Text.pack "coresdk.workflow_activation.UpdateRandomSeed"
  packedMessageDescriptor _
    = "\n\
      \\DLEUpdateRandomSeed\DC2'\n\
      \\SIrandomness_seed\CAN\SOH \SOH(\EOTR\SOrandomnessSeed"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        randomnessSeed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "randomness_seed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"randomnessSeed")) ::
              Data.ProtoLens.FieldDescriptor UpdateRandomSeed
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, randomnessSeed__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpdateRandomSeed'_unknownFields
        (\ x__ y__ -> x__ {_UpdateRandomSeed'_unknownFields = y__})
  defMessage
    = UpdateRandomSeed'_constructor
        {_UpdateRandomSeed'randomnessSeed = Data.ProtoLens.fieldDefault,
         _UpdateRandomSeed'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UpdateRandomSeed
          -> Data.ProtoLens.Encoding.Bytes.Parser UpdateRandomSeed
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "randomness_seed"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"randomnessSeed") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UpdateRandomSeed"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"randomnessSeed") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData UpdateRandomSeed where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UpdateRandomSeed'_unknownFields x__)
             (Control.DeepSeq.deepseq (_UpdateRandomSeed'randomnessSeed x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.runId' @:: Lens' WorkflowActivation Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.timestamp' @:: Lens' WorkflowActivation Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'timestamp' @:: Lens' WorkflowActivation (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.isReplaying' @:: Lens' WorkflowActivation Prelude.Bool@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.historyLength' @:: Lens' WorkflowActivation Data.Word.Word32@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.jobs' @:: Lens' WorkflowActivation [WorkflowActivationJob]@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.vec'jobs' @:: Lens' WorkflowActivation (Data.Vector.Vector WorkflowActivationJob)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.availableInternalFlags' @:: Lens' WorkflowActivation [Data.Word.Word32]@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.vec'availableInternalFlags' @:: Lens' WorkflowActivation (Data.Vector.Unboxed.Vector Data.Word.Word32)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.historySizeBytes' @:: Lens' WorkflowActivation Data.Word.Word64@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.continueAsNewSuggested' @:: Lens' WorkflowActivation Prelude.Bool@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.deploymentVersionForCurrentTask' @:: Lens' WorkflowActivation Proto.Temporal.Sdk.Core.Common.Common.WorkerDeploymentVersion@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'deploymentVersionForCurrentTask' @:: Lens' WorkflowActivation (Prelude.Maybe Proto.Temporal.Sdk.Core.Common.Common.WorkerDeploymentVersion)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.lastSdkVersion' @:: Lens' WorkflowActivation Data.Text.Text@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.suggestContinueAsNewReasons' @:: Lens' WorkflowActivation [Proto.Temporal.Api.Enums.V1.Workflow.SuggestContinueAsNewReason]@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.vec'suggestContinueAsNewReasons' @:: Lens' WorkflowActivation (Data.Vector.Vector Proto.Temporal.Api.Enums.V1.Workflow.SuggestContinueAsNewReason)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.targetWorkerDeploymentVersionChanged' @:: Lens' WorkflowActivation Prelude.Bool@ -}
data WorkflowActivation
  = WorkflowActivation'_constructor {_WorkflowActivation'runId :: !Data.Text.Text,
                                     _WorkflowActivation'timestamp :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                     _WorkflowActivation'isReplaying :: !Prelude.Bool,
                                     _WorkflowActivation'historyLength :: !Data.Word.Word32,
                                     _WorkflowActivation'jobs :: !(Data.Vector.Vector WorkflowActivationJob),
                                     _WorkflowActivation'availableInternalFlags :: !(Data.Vector.Unboxed.Vector Data.Word.Word32),
                                     _WorkflowActivation'historySizeBytes :: !Data.Word.Word64,
                                     _WorkflowActivation'continueAsNewSuggested :: !Prelude.Bool,
                                     _WorkflowActivation'deploymentVersionForCurrentTask :: !(Prelude.Maybe Proto.Temporal.Sdk.Core.Common.Common.WorkerDeploymentVersion),
                                     _WorkflowActivation'lastSdkVersion :: !Data.Text.Text,
                                     _WorkflowActivation'suggestContinueAsNewReasons :: !(Data.Vector.Vector Proto.Temporal.Api.Enums.V1.Workflow.SuggestContinueAsNewReason),
                                     _WorkflowActivation'targetWorkerDeploymentVersionChanged :: !Prelude.Bool,
                                     _WorkflowActivation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkflowActivation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkflowActivation "runId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivation'runId
           (\ x__ y__ -> x__ {_WorkflowActivation'runId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowActivation "timestamp" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivation'timestamp
           (\ x__ y__ -> x__ {_WorkflowActivation'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkflowActivation "maybe'timestamp" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivation'timestamp
           (\ x__ y__ -> x__ {_WorkflowActivation'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowActivation "isReplaying" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivation'isReplaying
           (\ x__ y__ -> x__ {_WorkflowActivation'isReplaying = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowActivation "historyLength" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivation'historyLength
           (\ x__ y__ -> x__ {_WorkflowActivation'historyLength = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowActivation "jobs" [WorkflowActivationJob] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivation'jobs
           (\ x__ y__ -> x__ {_WorkflowActivation'jobs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField WorkflowActivation "vec'jobs" (Data.Vector.Vector WorkflowActivationJob) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivation'jobs
           (\ x__ y__ -> x__ {_WorkflowActivation'jobs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowActivation "availableInternalFlags" [Data.Word.Word32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivation'availableInternalFlags
           (\ x__ y__
              -> x__ {_WorkflowActivation'availableInternalFlags = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField WorkflowActivation "vec'availableInternalFlags" (Data.Vector.Unboxed.Vector Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivation'availableInternalFlags
           (\ x__ y__
              -> x__ {_WorkflowActivation'availableInternalFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowActivation "historySizeBytes" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivation'historySizeBytes
           (\ x__ y__ -> x__ {_WorkflowActivation'historySizeBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowActivation "continueAsNewSuggested" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivation'continueAsNewSuggested
           (\ x__ y__
              -> x__ {_WorkflowActivation'continueAsNewSuggested = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowActivation "deploymentVersionForCurrentTask" Proto.Temporal.Sdk.Core.Common.Common.WorkerDeploymentVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivation'deploymentVersionForCurrentTask
           (\ x__ y__
              -> x__
                   {_WorkflowActivation'deploymentVersionForCurrentTask = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkflowActivation "maybe'deploymentVersionForCurrentTask" (Prelude.Maybe Proto.Temporal.Sdk.Core.Common.Common.WorkerDeploymentVersion) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivation'deploymentVersionForCurrentTask
           (\ x__ y__
              -> x__
                   {_WorkflowActivation'deploymentVersionForCurrentTask = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowActivation "lastSdkVersion" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivation'lastSdkVersion
           (\ x__ y__ -> x__ {_WorkflowActivation'lastSdkVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowActivation "suggestContinueAsNewReasons" [Proto.Temporal.Api.Enums.V1.Workflow.SuggestContinueAsNewReason] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivation'suggestContinueAsNewReasons
           (\ x__ y__
              -> x__ {_WorkflowActivation'suggestContinueAsNewReasons = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField WorkflowActivation "vec'suggestContinueAsNewReasons" (Data.Vector.Vector Proto.Temporal.Api.Enums.V1.Workflow.SuggestContinueAsNewReason) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivation'suggestContinueAsNewReasons
           (\ x__ y__
              -> x__ {_WorkflowActivation'suggestContinueAsNewReasons = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowActivation "targetWorkerDeploymentVersionChanged" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivation'targetWorkerDeploymentVersionChanged
           (\ x__ y__
              -> x__
                   {_WorkflowActivation'targetWorkerDeploymentVersionChanged = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkflowActivation where
  messageName _
    = Data.Text.pack "coresdk.workflow_activation.WorkflowActivation"
  packedMessageDescriptor _
    = "\n\
      \\DC2WorkflowActivation\DC2\NAK\n\
      \\ACKrun_id\CAN\SOH \SOH(\tR\ENQrunId\DC28\n\
      \\ttimestamp\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestamp\DC2!\n\
      \\fis_replaying\CAN\ETX \SOH(\bR\visReplaying\DC2%\n\
      \\SOhistory_length\CAN\EOT \SOH(\rR\rhistoryLength\DC2F\n\
      \\EOTjobs\CAN\ENQ \ETX(\v22.coresdk.workflow_activation.WorkflowActivationJobR\EOTjobs\DC28\n\
      \\CANavailable_internal_flags\CAN\ACK \ETX(\rR\SYNavailableInternalFlags\DC2,\n\
      \\DC2history_size_bytes\CAN\a \SOH(\EOTR\DLEhistorySizeBytes\DC29\n\
      \\EMcontinue_as_new_suggested\CAN\b \SOH(\bR\SYNcontinueAsNewSuggested\DC2u\n\
      \#deployment_version_for_current_task\CAN\t \SOH(\v2'.coresdk.common.WorkerDeploymentVersionR\USdeploymentVersionForCurrentTask\DC2(\n\
      \\DLElast_sdk_version\CAN\n\
      \ \SOH(\tR\SOlastSdkVersion\DC2w\n\
      \\USsuggest_continue_as_new_reasons\CAN\v \ETX(\SO21.temporal.api.enums.v1.SuggestContinueAsNewReasonR\ESCsuggestContinueAsNewReasons\DC2V\n\
      \(target_worker_deployment_version_changed\CAN\f \SOH(\bR$targetWorkerDeploymentVersionChanged"
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
              Data.ProtoLens.FieldDescriptor WorkflowActivation
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivation
        isReplaying__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_replaying"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"isReplaying")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivation
        historyLength__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "history_length"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"historyLength")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivation
        jobs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "jobs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WorkflowActivationJob)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"jobs")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivation
        availableInternalFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "available_internal_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"availableInternalFlags")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivation
        historySizeBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "history_size_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"historySizeBytes")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivation
        continueAsNewSuggested__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "continue_as_new_suggested"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"continueAsNewSuggested")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivation
        deploymentVersionForCurrentTask__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deployment_version_for_current_task"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Sdk.Core.Common.Common.WorkerDeploymentVersion)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'deploymentVersionForCurrentTask")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivation
        lastSdkVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_sdk_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lastSdkVersion")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivation
        suggestContinueAsNewReasons__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "suggest_continue_as_new_reasons"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Workflow.SuggestContinueAsNewReason)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"suggestContinueAsNewReasons")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivation
        targetWorkerDeploymentVersionChanged__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target_worker_deployment_version_changed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field
                    @"targetWorkerDeploymentVersionChanged")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, runId__field_descriptor),
           (Data.ProtoLens.Tag 2, timestamp__field_descriptor),
           (Data.ProtoLens.Tag 3, isReplaying__field_descriptor),
           (Data.ProtoLens.Tag 4, historyLength__field_descriptor),
           (Data.ProtoLens.Tag 5, jobs__field_descriptor),
           (Data.ProtoLens.Tag 6, availableInternalFlags__field_descriptor),
           (Data.ProtoLens.Tag 7, historySizeBytes__field_descriptor),
           (Data.ProtoLens.Tag 8, continueAsNewSuggested__field_descriptor),
           (Data.ProtoLens.Tag 9, 
            deploymentVersionForCurrentTask__field_descriptor),
           (Data.ProtoLens.Tag 10, lastSdkVersion__field_descriptor),
           (Data.ProtoLens.Tag 11, 
            suggestContinueAsNewReasons__field_descriptor),
           (Data.ProtoLens.Tag 12, 
            targetWorkerDeploymentVersionChanged__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkflowActivation'_unknownFields
        (\ x__ y__ -> x__ {_WorkflowActivation'_unknownFields = y__})
  defMessage
    = WorkflowActivation'_constructor
        {_WorkflowActivation'runId = Data.ProtoLens.fieldDefault,
         _WorkflowActivation'timestamp = Prelude.Nothing,
         _WorkflowActivation'isReplaying = Data.ProtoLens.fieldDefault,
         _WorkflowActivation'historyLength = Data.ProtoLens.fieldDefault,
         _WorkflowActivation'jobs = Data.Vector.Generic.empty,
         _WorkflowActivation'availableInternalFlags = Data.Vector.Generic.empty,
         _WorkflowActivation'historySizeBytes = Data.ProtoLens.fieldDefault,
         _WorkflowActivation'continueAsNewSuggested = Data.ProtoLens.fieldDefault,
         _WorkflowActivation'deploymentVersionForCurrentTask = Prelude.Nothing,
         _WorkflowActivation'lastSdkVersion = Data.ProtoLens.fieldDefault,
         _WorkflowActivation'suggestContinueAsNewReasons = Data.Vector.Generic.empty,
         _WorkflowActivation'targetWorkerDeploymentVersionChanged = Data.ProtoLens.fieldDefault,
         _WorkflowActivation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkflowActivation
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word32
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld WorkflowActivationJob
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Enums.V1.Workflow.SuggestContinueAsNewReason
                   -> Data.ProtoLens.Encoding.Bytes.Parser WorkflowActivation
        loop
          x
          mutable'availableInternalFlags
          mutable'jobs
          mutable'suggestContinueAsNewReasons
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'availableInternalFlags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                            mutable'availableInternalFlags)
                      frozen'jobs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'jobs)
                      frozen'suggestContinueAsNewReasons <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                 mutable'suggestContinueAsNewReasons)
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
                              (Data.ProtoLens.Field.field @"vec'availableInternalFlags")
                              frozen'availableInternalFlags
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'jobs") frozen'jobs
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'suggestContinueAsNewReasons")
                                    frozen'suggestContinueAsNewReasons x))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "run_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"runId") y x)
                                  mutable'availableInternalFlags mutable'jobs
                                  mutable'suggestContinueAsNewReasons
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                                  mutable'availableInternalFlags mutable'jobs
                                  mutable'suggestContinueAsNewReasons
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_replaying"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"isReplaying") y x)
                                  mutable'availableInternalFlags mutable'jobs
                                  mutable'suggestContinueAsNewReasons
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "history_length"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"historyLength") y x)
                                  mutable'availableInternalFlags mutable'jobs
                                  mutable'suggestContinueAsNewReasons
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "jobs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'jobs y)
                                loop
                                  x mutable'availableInternalFlags v
                                  mutable'suggestContinueAsNewReasons
                        48
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "available_internal_flags"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'availableInternalFlags y)
                                loop x v mutable'jobs mutable'suggestContinueAsNewReasons
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
                                                                    "available_internal_flags"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'availableInternalFlags)
                                loop x y mutable'jobs mutable'suggestContinueAsNewReasons
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "history_size_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"historySizeBytes") y x)
                                  mutable'availableInternalFlags mutable'jobs
                                  mutable'suggestContinueAsNewReasons
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "continue_as_new_suggested"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"continueAsNewSuggested") y x)
                                  mutable'availableInternalFlags mutable'jobs
                                  mutable'suggestContinueAsNewReasons
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "deployment_version_for_current_task"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"deploymentVersionForCurrentTask")
                                     y x)
                                  mutable'availableInternalFlags mutable'jobs
                                  mutable'suggestContinueAsNewReasons
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "last_sdk_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastSdkVersion") y x)
                                  mutable'availableInternalFlags mutable'jobs
                                  mutable'suggestContinueAsNewReasons
                        88
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.toEnum
                                           (Prelude.fmap
                                              Prelude.fromIntegral
                                              Data.ProtoLens.Encoding.Bytes.getVarInt))
                                        "suggest_continue_as_new_reasons"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'suggestContinueAsNewReasons y)
                                loop x mutable'availableInternalFlags mutable'jobs v
                        90
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
                                                                    "suggest_continue_as_new_reasons"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'suggestContinueAsNewReasons)
                                loop x mutable'availableInternalFlags mutable'jobs y
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "target_worker_deployment_version_changed"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"targetWorkerDeploymentVersionChanged")
                                     y x)
                                  mutable'availableInternalFlags mutable'jobs
                                  mutable'suggestContinueAsNewReasons
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'availableInternalFlags mutable'jobs
                                  mutable'suggestContinueAsNewReasons
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'availableInternalFlags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  Data.ProtoLens.Encoding.Growing.new
              mutable'jobs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              mutable'suggestContinueAsNewReasons <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'availableInternalFlags
                mutable'jobs mutable'suggestContinueAsNewReasons)
          "WorkflowActivation"
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
                       (Data.ProtoLens.Field.field @"maybe'timestamp") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"isReplaying") _x
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
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"historyLength") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
                            (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'jobs") _x))
                         ((Data.Monoid.<>)
                            (let
                               p = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'availableInternalFlags") _x
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
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 Prelude.fromIntegral)
                                              p))))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"historySizeBytes") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"continueAsNewSuggested") _x
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
                                            (Data.ProtoLens.Field.field
                                               @"maybe'deploymentVersionForCurrentTask")
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
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"lastSdkVersion") _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                 ((Prelude..)
                                                    (\ bs
                                                       -> (Data.Monoid.<>)
                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                               (Prelude.fromIntegral
                                                                  (Data.ByteString.length bs)))
                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                               bs))
                                                    Data.Text.Encoding.encodeUtf8 _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              p = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field
                                                       @"vec'suggestContinueAsNewReasons")
                                                    _x
                                            in
                                              if Data.Vector.Generic.null p then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                    ((\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                       (Data.ProtoLens.Encoding.Bytes.runBuilder
                                                          (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                             ((Prelude..)
                                                                ((Prelude..)
                                                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   Prelude.fromIntegral)
                                                                Prelude.fromEnum)
                                                             p))))
                                           ((Data.Monoid.<>)
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"targetWorkerDeploymentVersionChanged")
                                                       _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                       ((Prelude..)
                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (\ b -> if b then 1 else 0) _v))
                                              (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                 (Lens.Family2.view
                                                    Data.ProtoLens.unknownFields _x)))))))))))))
instance Control.DeepSeq.NFData WorkflowActivation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkflowActivation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WorkflowActivation'runId x__)
                (Control.DeepSeq.deepseq
                   (_WorkflowActivation'timestamp x__)
                   (Control.DeepSeq.deepseq
                      (_WorkflowActivation'isReplaying x__)
                      (Control.DeepSeq.deepseq
                         (_WorkflowActivation'historyLength x__)
                         (Control.DeepSeq.deepseq
                            (_WorkflowActivation'jobs x__)
                            (Control.DeepSeq.deepseq
                               (_WorkflowActivation'availableInternalFlags x__)
                               (Control.DeepSeq.deepseq
                                  (_WorkflowActivation'historySizeBytes x__)
                                  (Control.DeepSeq.deepseq
                                     (_WorkflowActivation'continueAsNewSuggested x__)
                                     (Control.DeepSeq.deepseq
                                        (_WorkflowActivation'deploymentVersionForCurrentTask x__)
                                        (Control.DeepSeq.deepseq
                                           (_WorkflowActivation'lastSdkVersion x__)
                                           (Control.DeepSeq.deepseq
                                              (_WorkflowActivation'suggestContinueAsNewReasons x__)
                                              (Control.DeepSeq.deepseq
                                                 (_WorkflowActivation'targetWorkerDeploymentVersionChanged
                                                    x__)
                                                 ()))))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'variant' @:: Lens' WorkflowActivationJob (Prelude.Maybe WorkflowActivationJob'Variant)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'initializeWorkflow' @:: Lens' WorkflowActivationJob (Prelude.Maybe InitializeWorkflow)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.initializeWorkflow' @:: Lens' WorkflowActivationJob InitializeWorkflow@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'fireTimer' @:: Lens' WorkflowActivationJob (Prelude.Maybe FireTimer)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.fireTimer' @:: Lens' WorkflowActivationJob FireTimer@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'updateRandomSeed' @:: Lens' WorkflowActivationJob (Prelude.Maybe UpdateRandomSeed)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.updateRandomSeed' @:: Lens' WorkflowActivationJob UpdateRandomSeed@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'queryWorkflow' @:: Lens' WorkflowActivationJob (Prelude.Maybe QueryWorkflow)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.queryWorkflow' @:: Lens' WorkflowActivationJob QueryWorkflow@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'cancelWorkflow' @:: Lens' WorkflowActivationJob (Prelude.Maybe CancelWorkflow)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.cancelWorkflow' @:: Lens' WorkflowActivationJob CancelWorkflow@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'signalWorkflow' @:: Lens' WorkflowActivationJob (Prelude.Maybe SignalWorkflow)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.signalWorkflow' @:: Lens' WorkflowActivationJob SignalWorkflow@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'resolveActivity' @:: Lens' WorkflowActivationJob (Prelude.Maybe ResolveActivity)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.resolveActivity' @:: Lens' WorkflowActivationJob ResolveActivity@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'notifyHasPatch' @:: Lens' WorkflowActivationJob (Prelude.Maybe NotifyHasPatch)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.notifyHasPatch' @:: Lens' WorkflowActivationJob NotifyHasPatch@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'resolveChildWorkflowExecutionStart' @:: Lens' WorkflowActivationJob (Prelude.Maybe ResolveChildWorkflowExecutionStart)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.resolveChildWorkflowExecutionStart' @:: Lens' WorkflowActivationJob ResolveChildWorkflowExecutionStart@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'resolveChildWorkflowExecution' @:: Lens' WorkflowActivationJob (Prelude.Maybe ResolveChildWorkflowExecution)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.resolveChildWorkflowExecution' @:: Lens' WorkflowActivationJob ResolveChildWorkflowExecution@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'resolveSignalExternalWorkflow' @:: Lens' WorkflowActivationJob (Prelude.Maybe ResolveSignalExternalWorkflow)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.resolveSignalExternalWorkflow' @:: Lens' WorkflowActivationJob ResolveSignalExternalWorkflow@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'resolveRequestCancelExternalWorkflow' @:: Lens' WorkflowActivationJob (Prelude.Maybe ResolveRequestCancelExternalWorkflow)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.resolveRequestCancelExternalWorkflow' @:: Lens' WorkflowActivationJob ResolveRequestCancelExternalWorkflow@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'doUpdate' @:: Lens' WorkflowActivationJob (Prelude.Maybe DoUpdate)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.doUpdate' @:: Lens' WorkflowActivationJob DoUpdate@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'resolveNexusOperationStart' @:: Lens' WorkflowActivationJob (Prelude.Maybe ResolveNexusOperationStart)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.resolveNexusOperationStart' @:: Lens' WorkflowActivationJob ResolveNexusOperationStart@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'resolveNexusOperation' @:: Lens' WorkflowActivationJob (Prelude.Maybe ResolveNexusOperation)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.resolveNexusOperation' @:: Lens' WorkflowActivationJob ResolveNexusOperation@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.maybe'removeFromCache' @:: Lens' WorkflowActivationJob (Prelude.Maybe RemoveFromCache)@
         * 'Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields.removeFromCache' @:: Lens' WorkflowActivationJob RemoveFromCache@ -}
data WorkflowActivationJob
  = WorkflowActivationJob'_constructor {_WorkflowActivationJob'variant :: !(Prelude.Maybe WorkflowActivationJob'Variant),
                                        _WorkflowActivationJob'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkflowActivationJob where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data WorkflowActivationJob'Variant
  = WorkflowActivationJob'InitializeWorkflow !InitializeWorkflow |
    WorkflowActivationJob'FireTimer !FireTimer |
    WorkflowActivationJob'UpdateRandomSeed !UpdateRandomSeed |
    WorkflowActivationJob'QueryWorkflow !QueryWorkflow |
    WorkflowActivationJob'CancelWorkflow !CancelWorkflow |
    WorkflowActivationJob'SignalWorkflow !SignalWorkflow |
    WorkflowActivationJob'ResolveActivity !ResolveActivity |
    WorkflowActivationJob'NotifyHasPatch !NotifyHasPatch |
    WorkflowActivationJob'ResolveChildWorkflowExecutionStart !ResolveChildWorkflowExecutionStart |
    WorkflowActivationJob'ResolveChildWorkflowExecution !ResolveChildWorkflowExecution |
    WorkflowActivationJob'ResolveSignalExternalWorkflow !ResolveSignalExternalWorkflow |
    WorkflowActivationJob'ResolveRequestCancelExternalWorkflow !ResolveRequestCancelExternalWorkflow |
    WorkflowActivationJob'DoUpdate !DoUpdate |
    WorkflowActivationJob'ResolveNexusOperationStart !ResolveNexusOperationStart |
    WorkflowActivationJob'ResolveNexusOperation !ResolveNexusOperation |
    WorkflowActivationJob'RemoveFromCache !RemoveFromCache
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "maybe'variant" (Prelude.Maybe WorkflowActivationJob'Variant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "maybe'initializeWorkflow" (Prelude.Maybe InitializeWorkflow) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowActivationJob'InitializeWorkflow x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap WorkflowActivationJob'InitializeWorkflow y__))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "initializeWorkflow" InitializeWorkflow where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowActivationJob'InitializeWorkflow x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap WorkflowActivationJob'InitializeWorkflow y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "maybe'fireTimer" (Prelude.Maybe FireTimer) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowActivationJob'FireTimer x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap WorkflowActivationJob'FireTimer y__))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "fireTimer" FireTimer where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowActivationJob'FireTimer x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap WorkflowActivationJob'FireTimer y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "maybe'updateRandomSeed" (Prelude.Maybe UpdateRandomSeed) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowActivationJob'UpdateRandomSeed x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap WorkflowActivationJob'UpdateRandomSeed y__))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "updateRandomSeed" UpdateRandomSeed where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowActivationJob'UpdateRandomSeed x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap WorkflowActivationJob'UpdateRandomSeed y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "maybe'queryWorkflow" (Prelude.Maybe QueryWorkflow) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowActivationJob'QueryWorkflow x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap WorkflowActivationJob'QueryWorkflow y__))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "queryWorkflow" QueryWorkflow where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowActivationJob'QueryWorkflow x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap WorkflowActivationJob'QueryWorkflow y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "maybe'cancelWorkflow" (Prelude.Maybe CancelWorkflow) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowActivationJob'CancelWorkflow x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap WorkflowActivationJob'CancelWorkflow y__))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "cancelWorkflow" CancelWorkflow where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowActivationJob'CancelWorkflow x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap WorkflowActivationJob'CancelWorkflow y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "maybe'signalWorkflow" (Prelude.Maybe SignalWorkflow) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowActivationJob'SignalWorkflow x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap WorkflowActivationJob'SignalWorkflow y__))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "signalWorkflow" SignalWorkflow where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowActivationJob'SignalWorkflow x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap WorkflowActivationJob'SignalWorkflow y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "maybe'resolveActivity" (Prelude.Maybe ResolveActivity) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowActivationJob'ResolveActivity x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap WorkflowActivationJob'ResolveActivity y__))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "resolveActivity" ResolveActivity where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowActivationJob'ResolveActivity x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap WorkflowActivationJob'ResolveActivity y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "maybe'notifyHasPatch" (Prelude.Maybe NotifyHasPatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowActivationJob'NotifyHasPatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap WorkflowActivationJob'NotifyHasPatch y__))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "notifyHasPatch" NotifyHasPatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowActivationJob'NotifyHasPatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap WorkflowActivationJob'NotifyHasPatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "maybe'resolveChildWorkflowExecutionStart" (Prelude.Maybe ResolveChildWorkflowExecutionStart) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowActivationJob'ResolveChildWorkflowExecutionStart x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   WorkflowActivationJob'ResolveChildWorkflowExecutionStart y__))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "resolveChildWorkflowExecutionStart" ResolveChildWorkflowExecutionStart where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowActivationJob'ResolveChildWorkflowExecutionStart x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      WorkflowActivationJob'ResolveChildWorkflowExecutionStart y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "maybe'resolveChildWorkflowExecution" (Prelude.Maybe ResolveChildWorkflowExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowActivationJob'ResolveChildWorkflowExecution x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   WorkflowActivationJob'ResolveChildWorkflowExecution y__))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "resolveChildWorkflowExecution" ResolveChildWorkflowExecution where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowActivationJob'ResolveChildWorkflowExecution x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      WorkflowActivationJob'ResolveChildWorkflowExecution y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "maybe'resolveSignalExternalWorkflow" (Prelude.Maybe ResolveSignalExternalWorkflow) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowActivationJob'ResolveSignalExternalWorkflow x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   WorkflowActivationJob'ResolveSignalExternalWorkflow y__))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "resolveSignalExternalWorkflow" ResolveSignalExternalWorkflow where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowActivationJob'ResolveSignalExternalWorkflow x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      WorkflowActivationJob'ResolveSignalExternalWorkflow y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "maybe'resolveRequestCancelExternalWorkflow" (Prelude.Maybe ResolveRequestCancelExternalWorkflow) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowActivationJob'ResolveRequestCancelExternalWorkflow x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   WorkflowActivationJob'ResolveRequestCancelExternalWorkflow y__))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "resolveRequestCancelExternalWorkflow" ResolveRequestCancelExternalWorkflow where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowActivationJob'ResolveRequestCancelExternalWorkflow x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      WorkflowActivationJob'ResolveRequestCancelExternalWorkflow y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "maybe'doUpdate" (Prelude.Maybe DoUpdate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowActivationJob'DoUpdate x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap WorkflowActivationJob'DoUpdate y__))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "doUpdate" DoUpdate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowActivationJob'DoUpdate x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap WorkflowActivationJob'DoUpdate y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "maybe'resolveNexusOperationStart" (Prelude.Maybe ResolveNexusOperationStart) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowActivationJob'ResolveNexusOperationStart x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   WorkflowActivationJob'ResolveNexusOperationStart y__))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "resolveNexusOperationStart" ResolveNexusOperationStart where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowActivationJob'ResolveNexusOperationStart x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      WorkflowActivationJob'ResolveNexusOperationStart y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "maybe'resolveNexusOperation" (Prelude.Maybe ResolveNexusOperation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowActivationJob'ResolveNexusOperation x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap WorkflowActivationJob'ResolveNexusOperation y__))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "resolveNexusOperation" ResolveNexusOperation where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowActivationJob'ResolveNexusOperation x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap WorkflowActivationJob'ResolveNexusOperation y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "maybe'removeFromCache" (Prelude.Maybe RemoveFromCache) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkflowActivationJob'RemoveFromCache x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap WorkflowActivationJob'RemoveFromCache y__))
instance Data.ProtoLens.Field.HasField WorkflowActivationJob "removeFromCache" RemoveFromCache where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowActivationJob'variant
           (\ x__ y__ -> x__ {_WorkflowActivationJob'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkflowActivationJob'RemoveFromCache x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap WorkflowActivationJob'RemoveFromCache y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message WorkflowActivationJob where
  messageName _
    = Data.Text.pack
        "coresdk.workflow_activation.WorkflowActivationJob"
  packedMessageDescriptor _
    = "\n\
      \\NAKWorkflowActivationJob\DC2b\n\
      \\DC3initialize_workflow\CAN\SOH \SOH(\v2/.coresdk.workflow_activation.InitializeWorkflowH\NULR\DC2initializeWorkflow\DC2G\n\
      \\n\
      \fire_timer\CAN\STX \SOH(\v2&.coresdk.workflow_activation.FireTimerH\NULR\tfireTimer\DC2]\n\
      \\DC2update_random_seed\CAN\EOT \SOH(\v2-.coresdk.workflow_activation.UpdateRandomSeedH\NULR\DLEupdateRandomSeed\DC2S\n\
      \\SOquery_workflow\CAN\ENQ \SOH(\v2*.coresdk.workflow_activation.QueryWorkflowH\NULR\rqueryWorkflow\DC2V\n\
      \\SIcancel_workflow\CAN\ACK \SOH(\v2+.coresdk.workflow_activation.CancelWorkflowH\NULR\SOcancelWorkflow\DC2V\n\
      \\SIsignal_workflow\CAN\a \SOH(\v2+.coresdk.workflow_activation.SignalWorkflowH\NULR\SOsignalWorkflow\DC2Y\n\
      \\DLEresolve_activity\CAN\b \SOH(\v2,.coresdk.workflow_activation.ResolveActivityH\NULR\SIresolveActivity\DC2W\n\
      \\DLEnotify_has_patch\CAN\t \SOH(\v2+.coresdk.workflow_activation.NotifyHasPatchH\NULR\SOnotifyHasPatch\DC2\149\SOH\n\
      \&resolve_child_workflow_execution_start\CAN\n\
      \ \SOH(\v2?.coresdk.workflow_activation.ResolveChildWorkflowExecutionStartH\NULR\"resolveChildWorkflowExecutionStart\DC2\133\SOH\n\
      \ resolve_child_workflow_execution\CAN\v \SOH(\v2:.coresdk.workflow_activation.ResolveChildWorkflowExecutionH\NULR\GSresolveChildWorkflowExecution\DC2\133\SOH\n\
      \ resolve_signal_external_workflow\CAN\f \SOH(\v2:.coresdk.workflow_activation.ResolveSignalExternalWorkflowH\NULR\GSresolveSignalExternalWorkflow\DC2\155\SOH\n\
      \(resolve_request_cancel_external_workflow\CAN\r \SOH(\v2A.coresdk.workflow_activation.ResolveRequestCancelExternalWorkflowH\NULR$resolveRequestCancelExternalWorkflow\DC2D\n\
      \\tdo_update\CAN\SO \SOH(\v2%.coresdk.workflow_activation.DoUpdateH\NULR\bdoUpdate\DC2|\n\
      \\GSresolve_nexus_operation_start\CAN\SI \SOH(\v27.coresdk.workflow_activation.ResolveNexusOperationStartH\NULR\SUBresolveNexusOperationStart\DC2l\n\
      \\ETBresolve_nexus_operation\CAN\DLE \SOH(\v22.coresdk.workflow_activation.ResolveNexusOperationH\NULR\NAKresolveNexusOperation\DC2Z\n\
      \\DC1remove_from_cache\CAN2 \SOH(\v2,.coresdk.workflow_activation.RemoveFromCacheH\NULR\SIremoveFromCacheB\t\n\
      \\avariant"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        initializeWorkflow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "initialize_workflow"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor InitializeWorkflow)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'initializeWorkflow")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivationJob
        fireTimer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fire_timer"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FireTimer)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fireTimer")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivationJob
        updateRandomSeed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "update_random_seed"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UpdateRandomSeed)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'updateRandomSeed")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivationJob
        queryWorkflow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "query_workflow"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor QueryWorkflow)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'queryWorkflow")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivationJob
        cancelWorkflow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancel_workflow"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CancelWorkflow)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cancelWorkflow")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivationJob
        signalWorkflow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signal_workflow"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SignalWorkflow)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'signalWorkflow")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivationJob
        resolveActivity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resolve_activity"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResolveActivity)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'resolveActivity")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivationJob
        notifyHasPatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "notify_has_patch"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NotifyHasPatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'notifyHasPatch")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivationJob
        resolveChildWorkflowExecutionStart__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resolve_child_workflow_execution_start"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResolveChildWorkflowExecutionStart)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'resolveChildWorkflowExecutionStart")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivationJob
        resolveChildWorkflowExecution__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resolve_child_workflow_execution"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResolveChildWorkflowExecution)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'resolveChildWorkflowExecution")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivationJob
        resolveSignalExternalWorkflow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resolve_signal_external_workflow"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResolveSignalExternalWorkflow)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'resolveSignalExternalWorkflow")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivationJob
        resolveRequestCancelExternalWorkflow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resolve_request_cancel_external_workflow"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResolveRequestCancelExternalWorkflow)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'resolveRequestCancelExternalWorkflow")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivationJob
        doUpdate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "do_update"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DoUpdate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'doUpdate")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivationJob
        resolveNexusOperationStart__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resolve_nexus_operation_start"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResolveNexusOperationStart)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'resolveNexusOperationStart")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivationJob
        resolveNexusOperation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resolve_nexus_operation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResolveNexusOperation)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'resolveNexusOperation")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivationJob
        removeFromCache__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "remove_from_cache"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RemoveFromCache)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'removeFromCache")) ::
              Data.ProtoLens.FieldDescriptor WorkflowActivationJob
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, initializeWorkflow__field_descriptor),
           (Data.ProtoLens.Tag 2, fireTimer__field_descriptor),
           (Data.ProtoLens.Tag 4, updateRandomSeed__field_descriptor),
           (Data.ProtoLens.Tag 5, queryWorkflow__field_descriptor),
           (Data.ProtoLens.Tag 6, cancelWorkflow__field_descriptor),
           (Data.ProtoLens.Tag 7, signalWorkflow__field_descriptor),
           (Data.ProtoLens.Tag 8, resolveActivity__field_descriptor),
           (Data.ProtoLens.Tag 9, notifyHasPatch__field_descriptor),
           (Data.ProtoLens.Tag 10, 
            resolveChildWorkflowExecutionStart__field_descriptor),
           (Data.ProtoLens.Tag 11, 
            resolveChildWorkflowExecution__field_descriptor),
           (Data.ProtoLens.Tag 12, 
            resolveSignalExternalWorkflow__field_descriptor),
           (Data.ProtoLens.Tag 13, 
            resolveRequestCancelExternalWorkflow__field_descriptor),
           (Data.ProtoLens.Tag 14, doUpdate__field_descriptor),
           (Data.ProtoLens.Tag 15, 
            resolveNexusOperationStart__field_descriptor),
           (Data.ProtoLens.Tag 16, resolveNexusOperation__field_descriptor),
           (Data.ProtoLens.Tag 50, removeFromCache__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkflowActivationJob'_unknownFields
        (\ x__ y__ -> x__ {_WorkflowActivationJob'_unknownFields = y__})
  defMessage
    = WorkflowActivationJob'_constructor
        {_WorkflowActivationJob'variant = Prelude.Nothing,
         _WorkflowActivationJob'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkflowActivationJob
          -> Data.ProtoLens.Encoding.Bytes.Parser WorkflowActivationJob
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
                                       "initialize_workflow"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"initializeWorkflow") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "fire_timer"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fireTimer") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "update_random_seed"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"updateRandomSeed") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "query_workflow"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"queryWorkflow") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cancel_workflow"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cancelWorkflow") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "signal_workflow"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"signalWorkflow") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "resolve_activity"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"resolveActivity") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "notify_has_patch"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"notifyHasPatch") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "resolve_child_workflow_execution_start"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"resolveChildWorkflowExecutionStart")
                                     y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "resolve_child_workflow_execution"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"resolveChildWorkflowExecution") y
                                     x)
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "resolve_signal_external_workflow"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"resolveSignalExternalWorkflow") y
                                     x)
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "resolve_request_cancel_external_workflow"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"resolveRequestCancelExternalWorkflow")
                                     y x)
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "do_update"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"doUpdate") y x)
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "resolve_nexus_operation_start"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"resolveNexusOperationStart") y x)
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "resolve_nexus_operation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"resolveNexusOperation") y x)
                        402
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "remove_from_cache"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"removeFromCache") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WorkflowActivationJob"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'variant") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (WorkflowActivationJob'InitializeWorkflow v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (WorkflowActivationJob'FireTimer v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (WorkflowActivationJob'UpdateRandomSeed v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (WorkflowActivationJob'QueryWorkflow v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (WorkflowActivationJob'CancelWorkflow v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (WorkflowActivationJob'SignalWorkflow v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (WorkflowActivationJob'ResolveActivity v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (WorkflowActivationJob'NotifyHasPatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (WorkflowActivationJob'ResolveChildWorkflowExecutionStart v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (WorkflowActivationJob'ResolveChildWorkflowExecution v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (WorkflowActivationJob'ResolveSignalExternalWorkflow v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (WorkflowActivationJob'ResolveRequestCancelExternalWorkflow v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 106)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (WorkflowActivationJob'DoUpdate v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 114)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (WorkflowActivationJob'ResolveNexusOperationStart v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 122)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (WorkflowActivationJob'ResolveNexusOperation v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 130)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (WorkflowActivationJob'RemoveFromCache v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 402)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData WorkflowActivationJob where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkflowActivationJob'_unknownFields x__)
             (Control.DeepSeq.deepseq (_WorkflowActivationJob'variant x__) ())
instance Control.DeepSeq.NFData WorkflowActivationJob'Variant where
  rnf (WorkflowActivationJob'InitializeWorkflow x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowActivationJob'FireTimer x__) = Control.DeepSeq.rnf x__
  rnf (WorkflowActivationJob'UpdateRandomSeed x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowActivationJob'QueryWorkflow x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowActivationJob'CancelWorkflow x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowActivationJob'SignalWorkflow x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowActivationJob'ResolveActivity x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowActivationJob'NotifyHasPatch x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowActivationJob'ResolveChildWorkflowExecutionStart x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowActivationJob'ResolveChildWorkflowExecution x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowActivationJob'ResolveSignalExternalWorkflow x__)
    = Control.DeepSeq.rnf x__
  rnf
    (WorkflowActivationJob'ResolveRequestCancelExternalWorkflow x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowActivationJob'DoUpdate x__) = Control.DeepSeq.rnf x__
  rnf (WorkflowActivationJob'ResolveNexusOperationStart x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowActivationJob'ResolveNexusOperation x__)
    = Control.DeepSeq.rnf x__
  rnf (WorkflowActivationJob'RemoveFromCache x__)
    = Control.DeepSeq.rnf x__
_WorkflowActivationJob'InitializeWorkflow ::
  Data.ProtoLens.Prism.Prism' WorkflowActivationJob'Variant InitializeWorkflow
_WorkflowActivationJob'InitializeWorkflow
  = Data.ProtoLens.Prism.prism'
      WorkflowActivationJob'InitializeWorkflow
      (\ p__
         -> case p__ of
              (WorkflowActivationJob'InitializeWorkflow p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowActivationJob'FireTimer ::
  Data.ProtoLens.Prism.Prism' WorkflowActivationJob'Variant FireTimer
_WorkflowActivationJob'FireTimer
  = Data.ProtoLens.Prism.prism'
      WorkflowActivationJob'FireTimer
      (\ p__
         -> case p__ of
              (WorkflowActivationJob'FireTimer p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowActivationJob'UpdateRandomSeed ::
  Data.ProtoLens.Prism.Prism' WorkflowActivationJob'Variant UpdateRandomSeed
_WorkflowActivationJob'UpdateRandomSeed
  = Data.ProtoLens.Prism.prism'
      WorkflowActivationJob'UpdateRandomSeed
      (\ p__
         -> case p__ of
              (WorkflowActivationJob'UpdateRandomSeed p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowActivationJob'QueryWorkflow ::
  Data.ProtoLens.Prism.Prism' WorkflowActivationJob'Variant QueryWorkflow
_WorkflowActivationJob'QueryWorkflow
  = Data.ProtoLens.Prism.prism'
      WorkflowActivationJob'QueryWorkflow
      (\ p__
         -> case p__ of
              (WorkflowActivationJob'QueryWorkflow p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowActivationJob'CancelWorkflow ::
  Data.ProtoLens.Prism.Prism' WorkflowActivationJob'Variant CancelWorkflow
_WorkflowActivationJob'CancelWorkflow
  = Data.ProtoLens.Prism.prism'
      WorkflowActivationJob'CancelWorkflow
      (\ p__
         -> case p__ of
              (WorkflowActivationJob'CancelWorkflow p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowActivationJob'SignalWorkflow ::
  Data.ProtoLens.Prism.Prism' WorkflowActivationJob'Variant SignalWorkflow
_WorkflowActivationJob'SignalWorkflow
  = Data.ProtoLens.Prism.prism'
      WorkflowActivationJob'SignalWorkflow
      (\ p__
         -> case p__ of
              (WorkflowActivationJob'SignalWorkflow p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowActivationJob'ResolveActivity ::
  Data.ProtoLens.Prism.Prism' WorkflowActivationJob'Variant ResolveActivity
_WorkflowActivationJob'ResolveActivity
  = Data.ProtoLens.Prism.prism'
      WorkflowActivationJob'ResolveActivity
      (\ p__
         -> case p__ of
              (WorkflowActivationJob'ResolveActivity p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowActivationJob'NotifyHasPatch ::
  Data.ProtoLens.Prism.Prism' WorkflowActivationJob'Variant NotifyHasPatch
_WorkflowActivationJob'NotifyHasPatch
  = Data.ProtoLens.Prism.prism'
      WorkflowActivationJob'NotifyHasPatch
      (\ p__
         -> case p__ of
              (WorkflowActivationJob'NotifyHasPatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowActivationJob'ResolveChildWorkflowExecutionStart ::
  Data.ProtoLens.Prism.Prism' WorkflowActivationJob'Variant ResolveChildWorkflowExecutionStart
_WorkflowActivationJob'ResolveChildWorkflowExecutionStart
  = Data.ProtoLens.Prism.prism'
      WorkflowActivationJob'ResolveChildWorkflowExecutionStart
      (\ p__
         -> case p__ of
              (WorkflowActivationJob'ResolveChildWorkflowExecutionStart p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowActivationJob'ResolveChildWorkflowExecution ::
  Data.ProtoLens.Prism.Prism' WorkflowActivationJob'Variant ResolveChildWorkflowExecution
_WorkflowActivationJob'ResolveChildWorkflowExecution
  = Data.ProtoLens.Prism.prism'
      WorkflowActivationJob'ResolveChildWorkflowExecution
      (\ p__
         -> case p__ of
              (WorkflowActivationJob'ResolveChildWorkflowExecution p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowActivationJob'ResolveSignalExternalWorkflow ::
  Data.ProtoLens.Prism.Prism' WorkflowActivationJob'Variant ResolveSignalExternalWorkflow
_WorkflowActivationJob'ResolveSignalExternalWorkflow
  = Data.ProtoLens.Prism.prism'
      WorkflowActivationJob'ResolveSignalExternalWorkflow
      (\ p__
         -> case p__ of
              (WorkflowActivationJob'ResolveSignalExternalWorkflow p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowActivationJob'ResolveRequestCancelExternalWorkflow ::
  Data.ProtoLens.Prism.Prism' WorkflowActivationJob'Variant ResolveRequestCancelExternalWorkflow
_WorkflowActivationJob'ResolveRequestCancelExternalWorkflow
  = Data.ProtoLens.Prism.prism'
      WorkflowActivationJob'ResolveRequestCancelExternalWorkflow
      (\ p__
         -> case p__ of
              (WorkflowActivationJob'ResolveRequestCancelExternalWorkflow p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowActivationJob'DoUpdate ::
  Data.ProtoLens.Prism.Prism' WorkflowActivationJob'Variant DoUpdate
_WorkflowActivationJob'DoUpdate
  = Data.ProtoLens.Prism.prism'
      WorkflowActivationJob'DoUpdate
      (\ p__
         -> case p__ of
              (WorkflowActivationJob'DoUpdate p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowActivationJob'ResolveNexusOperationStart ::
  Data.ProtoLens.Prism.Prism' WorkflowActivationJob'Variant ResolveNexusOperationStart
_WorkflowActivationJob'ResolveNexusOperationStart
  = Data.ProtoLens.Prism.prism'
      WorkflowActivationJob'ResolveNexusOperationStart
      (\ p__
         -> case p__ of
              (WorkflowActivationJob'ResolveNexusOperationStart p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowActivationJob'ResolveNexusOperation ::
  Data.ProtoLens.Prism.Prism' WorkflowActivationJob'Variant ResolveNexusOperation
_WorkflowActivationJob'ResolveNexusOperation
  = Data.ProtoLens.Prism.prism'
      WorkflowActivationJob'ResolveNexusOperation
      (\ p__
         -> case p__ of
              (WorkflowActivationJob'ResolveNexusOperation p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_WorkflowActivationJob'RemoveFromCache ::
  Data.ProtoLens.Prism.Prism' WorkflowActivationJob'Variant RemoveFromCache
_WorkflowActivationJob'RemoveFromCache
  = Data.ProtoLens.Prism.prism'
      WorkflowActivationJob'RemoveFromCache
      (\ p__
         -> case p__ of
              (WorkflowActivationJob'RemoveFromCache p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \?temporal/sdk/core/workflow_activation/workflow_activation.proto\DC2\ESCcoresdk.workflow_activation\SUB\USgoogle/protobuf/timestamp.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\ESCgoogle/protobuf/empty.proto\SUB%temporal/api/failure/v1/message.proto\SUB#temporal/api/nexus/v1/message.proto\SUB$temporal/api/update/v1/message.proto\SUB$temporal/api/common/v1/message.proto\SUB(temporal/api/enums/v1/failed_cause.proto\SUB$temporal/api/enums/v1/workflow.proto\SUB7temporal/sdk/core/activity_result/activity_result.proto\SUB5temporal/sdk/core/child_workflow/child_workflow.proto\SUB%temporal/sdk/core/common/common.proto\SUB#temporal/sdk/core/nexus/nexus.proto\"\140\ACK\n\
    \\DC2WorkflowActivation\DC2\NAK\n\
    \\ACKrun_id\CAN\SOH \SOH(\tR\ENQrunId\DC28\n\
    \\ttimestamp\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestamp\DC2!\n\
    \\fis_replaying\CAN\ETX \SOH(\bR\visReplaying\DC2%\n\
    \\SOhistory_length\CAN\EOT \SOH(\rR\rhistoryLength\DC2F\n\
    \\EOTjobs\CAN\ENQ \ETX(\v22.coresdk.workflow_activation.WorkflowActivationJobR\EOTjobs\DC28\n\
    \\CANavailable_internal_flags\CAN\ACK \ETX(\rR\SYNavailableInternalFlags\DC2,\n\
    \\DC2history_size_bytes\CAN\a \SOH(\EOTR\DLEhistorySizeBytes\DC29\n\
    \\EMcontinue_as_new_suggested\CAN\b \SOH(\bR\SYNcontinueAsNewSuggested\DC2u\n\
    \#deployment_version_for_current_task\CAN\t \SOH(\v2'.coresdk.common.WorkerDeploymentVersionR\USdeploymentVersionForCurrentTask\DC2(\n\
    \\DLElast_sdk_version\CAN\n\
    \ \SOH(\tR\SOlastSdkVersion\DC2w\n\
    \\USsuggest_continue_as_new_reasons\CAN\v \ETX(\SO21.temporal.api.enums.v1.SuggestContinueAsNewReasonR\ESCsuggestContinueAsNewReasons\DC2V\n\
    \(target_worker_deployment_version_changed\CAN\f \SOH(\bR$targetWorkerDeploymentVersionChanged\"\187\r\n\
    \\NAKWorkflowActivationJob\DC2b\n\
    \\DC3initialize_workflow\CAN\SOH \SOH(\v2/.coresdk.workflow_activation.InitializeWorkflowH\NULR\DC2initializeWorkflow\DC2G\n\
    \\n\
    \fire_timer\CAN\STX \SOH(\v2&.coresdk.workflow_activation.FireTimerH\NULR\tfireTimer\DC2]\n\
    \\DC2update_random_seed\CAN\EOT \SOH(\v2-.coresdk.workflow_activation.UpdateRandomSeedH\NULR\DLEupdateRandomSeed\DC2S\n\
    \\SOquery_workflow\CAN\ENQ \SOH(\v2*.coresdk.workflow_activation.QueryWorkflowH\NULR\rqueryWorkflow\DC2V\n\
    \\SIcancel_workflow\CAN\ACK \SOH(\v2+.coresdk.workflow_activation.CancelWorkflowH\NULR\SOcancelWorkflow\DC2V\n\
    \\SIsignal_workflow\CAN\a \SOH(\v2+.coresdk.workflow_activation.SignalWorkflowH\NULR\SOsignalWorkflow\DC2Y\n\
    \\DLEresolve_activity\CAN\b \SOH(\v2,.coresdk.workflow_activation.ResolveActivityH\NULR\SIresolveActivity\DC2W\n\
    \\DLEnotify_has_patch\CAN\t \SOH(\v2+.coresdk.workflow_activation.NotifyHasPatchH\NULR\SOnotifyHasPatch\DC2\149\SOH\n\
    \&resolve_child_workflow_execution_start\CAN\n\
    \ \SOH(\v2?.coresdk.workflow_activation.ResolveChildWorkflowExecutionStartH\NULR\"resolveChildWorkflowExecutionStart\DC2\133\SOH\n\
    \ resolve_child_workflow_execution\CAN\v \SOH(\v2:.coresdk.workflow_activation.ResolveChildWorkflowExecutionH\NULR\GSresolveChildWorkflowExecution\DC2\133\SOH\n\
    \ resolve_signal_external_workflow\CAN\f \SOH(\v2:.coresdk.workflow_activation.ResolveSignalExternalWorkflowH\NULR\GSresolveSignalExternalWorkflow\DC2\155\SOH\n\
    \(resolve_request_cancel_external_workflow\CAN\r \SOH(\v2A.coresdk.workflow_activation.ResolveRequestCancelExternalWorkflowH\NULR$resolveRequestCancelExternalWorkflow\DC2D\n\
    \\tdo_update\CAN\SO \SOH(\v2%.coresdk.workflow_activation.DoUpdateH\NULR\bdoUpdate\DC2|\n\
    \\GSresolve_nexus_operation_start\CAN\SI \SOH(\v27.coresdk.workflow_activation.ResolveNexusOperationStartH\NULR\SUBresolveNexusOperationStart\DC2l\n\
    \\ETBresolve_nexus_operation\CAN\DLE \SOH(\v22.coresdk.workflow_activation.ResolveNexusOperationH\NULR\NAKresolveNexusOperation\DC2Z\n\
    \\DC1remove_from_cache\CAN2 \SOH(\v2,.coresdk.workflow_activation.RemoveFromCacheH\NULR\SIremoveFromCacheB\t\n\
    \\avariant\"\218\SI\n\
    \\DC2InitializeWorkflow\DC2#\n\
    \\rworkflow_type\CAN\SOH \SOH(\tR\fworkflowType\DC2\US\n\
    \\vworkflow_id\CAN\STX \SOH(\tR\n\
    \workflowId\DC2=\n\
    \\targuments\CAN\ETX \ETX(\v2\US.temporal.api.common.v1.PayloadR\targuments\DC2'\n\
    \\SIrandomness_seed\CAN\EOT \SOH(\EOTR\SOrandomnessSeed\DC2V\n\
    \\aheaders\CAN\ENQ \ETX(\v2<.coresdk.workflow_activation.InitializeWorkflow.HeadersEntryR\aheaders\DC2\SUB\n\
    \\bidentity\CAN\ACK \SOH(\tR\bidentity\DC2]\n\
    \\DC4parent_workflow_info\CAN\a \SOH(\v2+.coresdk.common.NamespacedWorkflowExecutionR\DC2parentWorkflowInfo\DC2W\n\
    \\SUBworkflow_execution_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\CANworkflowExecutionTimeout\DC2K\n\
    \\DC4workflow_run_timeout\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\DC2workflowRunTimeout\DC2M\n\
    \\NAKworkflow_task_timeout\CAN\n\
    \ \SOH(\v2\EM.google.protobuf.DurationR\DC3workflowTaskTimeout\DC2D\n\
    \\UScontinued_from_execution_run_id\CAN\v \SOH(\tR\ESCcontinuedFromExecutionRunId\DC2^\n\
    \\DC3continued_initiator\CAN\f \SOH(\SO2-.temporal.api.enums.v1.ContinueAsNewInitiatorR\DC2continuedInitiator\DC2M\n\
    \\DC1continued_failure\CAN\r \SOH(\v2 .temporal.api.failure.v1.FailureR\DLEcontinuedFailure\DC2V\n\
    \\SYNlast_completion_result\CAN\SO \SOH(\v2 .temporal.api.common.v1.PayloadsR\DC4lastCompletionResult\DC23\n\
    \\SYNfirst_execution_run_id\CAN\SI \SOH(\tR\DC3firstExecutionRunId\DC2F\n\
    \\fretry_policy\CAN\DLE \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2\CAN\n\
    \\aattempt\CAN\DC1 \SOH(\ENQR\aattempt\DC2#\n\
    \\rcron_schedule\CAN\DC2 \SOH(\tR\fcronSchedule\DC2g\n\
    \\"workflow_execution_expiration_time\CAN\DC3 \SOH(\v2\SUB.google.protobuf.TimestampR\USworkflowExecutionExpirationTime\DC2e\n\
    \\"cron_schedule_to_schedule_interval\CAN\DC4 \SOH(\v2\EM.google.protobuf.DurationR\RScronScheduleToScheduleInterval\DC20\n\
    \\EOTmemo\CAN\NAK \SOH(\v2\FS.temporal.api.common.v1.MemoR\EOTmemo\DC2U\n\
    \\DC1search_attributes\CAN\SYN \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC29\n\
    \\n\
    \start_time\CAN\ETB \SOH(\v2\SUB.google.protobuf.TimestampR\tstartTime\DC2N\n\
    \\rroot_workflow\CAN\CAN \SOH(\v2).temporal.api.common.v1.WorkflowExecutionR\frootWorkflow\DC2<\n\
    \\bpriority\CAN\EM \SOH(\v2 .temporal.api.common.v1.PriorityR\bpriority\DC29\n\
    \\EMoriginal_execution_run_id\CAN\SUB \SOH(\tR\SYNoriginalExecutionRunId\DC2\138\SOH\n\
    \&propagated_nexus_serialization_context\CAN\ESC \SOH(\v25.temporal.api.nexus.v1.PropagatedSerializationContextR#propagatedNexusSerializationContext\SUB[\n\
    \\fHeadersEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
    \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH\"\GS\n\
    \\tFireTimer\DC2\DLE\n\
    \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\"\131\SOH\n\
    \\SIResolveActivity\DC2\DLE\n\
    \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2C\n\
    \\ACKresult\CAN\STX \SOH(\v2+.coresdk.activity_result.ActivityResolutionR\ACKresult\DC2\EM\n\
    \\bis_local\CAN\ETX \SOH(\bR\aisLocal\"\244\STX\n\
    \\"ResolveChildWorkflowExecutionStart\DC2\DLE\n\
    \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2f\n\
    \\tsucceeded\CAN\STX \SOH(\v2F.coresdk.workflow_activation.ResolveChildWorkflowExecutionStartSuccessH\NULR\tsucceeded\DC2`\n\
    \\ACKfailed\CAN\ETX \SOH(\v2F.coresdk.workflow_activation.ResolveChildWorkflowExecutionStartFailureH\NULR\ACKfailed\DC2h\n\
    \\tcancelled\CAN\EOT \SOH(\v2H.coresdk.workflow_activation.ResolveChildWorkflowExecutionStartCancelledH\NULR\tcancelledB\b\n\
    \\ACKstatus\"B\n\
    \)ResolveChildWorkflowExecutionStartSuccess\DC2\NAK\n\
    \\ACKrun_id\CAN\SOH \SOH(\tR\ENQrunId\"\199\SOH\n\
    \)ResolveChildWorkflowExecutionStartFailure\DC2\US\n\
    \\vworkflow_id\CAN\SOH \SOH(\tR\n\
    \workflowId\DC2#\n\
    \\rworkflow_type\CAN\STX \SOH(\tR\fworkflowType\DC2T\n\
    \\ENQcause\CAN\ETX \SOH(\SO2>.coresdk.child_workflow.StartChildWorkflowExecutionFailedCauseR\ENQcause\"i\n\
    \+ResolveChildWorkflowExecutionStartCancelled\DC2:\n\
    \\afailure\CAN\SOH \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure\"v\n\
    \\GSResolveChildWorkflowExecution\DC2\DLE\n\
    \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2C\n\
    \\ACKresult\CAN\STX \SOH(\v2+.coresdk.child_workflow.ChildWorkflowResultR\ACKresult\";\n\
    \\DLEUpdateRandomSeed\DC2'\n\
    \\SIrandomness_seed\CAN\SOH \SOH(\EOTR\SOrandomnessSeed\"\184\STX\n\
    \\rQueryWorkflow\DC2\EM\n\
    \\bquery_id\CAN\SOH \SOH(\tR\aqueryId\DC2\GS\n\
    \\n\
    \query_type\CAN\STX \SOH(\tR\tqueryType\DC2=\n\
    \\targuments\CAN\ETX \ETX(\v2\US.temporal.api.common.v1.PayloadR\targuments\DC2Q\n\
    \\aheaders\CAN\ENQ \ETX(\v27.coresdk.workflow_activation.QueryWorkflow.HeadersEntryR\aheaders\SUB[\n\
    \\fHeadersEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
    \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH\"(\n\
    \\SOCancelWorkflow\DC2\SYN\n\
    \\ACKreason\CAN\SOH \SOH(\tR\ACKreason\"\231\STX\n\
    \\SOSignalWorkflow\DC2\US\n\
    \\vsignal_name\CAN\SOH \SOH(\tR\n\
    \signalName\DC25\n\
    \\ENQinput\CAN\STX \ETX(\v2\US.temporal.api.common.v1.PayloadR\ENQinput\DC2\SUB\n\
    \\bidentity\CAN\ETX \SOH(\tR\bidentity\DC2R\n\
    \\aheaders\CAN\ENQ \ETX(\v28.coresdk.workflow_activation.SignalWorkflow.HeadersEntryR\aheaders\DC20\n\
    \\DC4originating_event_id\CAN\ACK \SOH(\ETXR\DC2originatingEventId\SUB[\n\
    \\fHeadersEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
    \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH\"+\n\
    \\SONotifyHasPatch\DC2\EM\n\
    \\bpatch_id\CAN\SOH \SOH(\tR\apatchId\"\198\SOH\n\
    \\GSResolveSignalExternalWorkflow\DC2\DLE\n\
    \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2:\n\
    \\afailure\CAN\STX \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure\DC2W\n\
    \\ENQcause\CAN\ETX \SOH(\SO2A.temporal.api.enums.v1.SignalExternalWorkflowExecutionFailedCauseR\ENQcause\"\205\SOH\n\
    \$ResolveRequestCancelExternalWorkflow\DC2\DLE\n\
    \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2:\n\
    \\afailure\CAN\STX \SOH(\v2 .temporal.api.failure.v1.FailureR\afailure\DC2W\n\
    \\ENQcause\CAN\ETX \SOH(\SO2A.temporal.api.enums.v1.CancelExternalWorkflowExecutionFailedCauseR\ENQcause\"\166\EOT\n\
    \\bDoUpdate\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\tR\STXid\DC20\n\
    \\DC4protocol_instance_id\CAN\STX \SOH(\tR\DC2protocolInstanceId\DC2\DC2\n\
    \\EOTname\CAN\ETX \SOH(\tR\EOTname\DC25\n\
    \\ENQinput\CAN\EOT \ETX(\v2\US.temporal.api.common.v1.PayloadR\ENQinput\DC2L\n\
    \\aheaders\CAN\ENQ \ETX(\v22.coresdk.workflow_activation.DoUpdate.HeadersEntryR\aheaders\DC20\n\
    \\EOTmeta\CAN\ACK \SOH(\v2\FS.temporal.api.update.v1.MetaR\EOTmeta\DC2#\n\
    \\rrun_validator\CAN\a \SOH(\bR\frunValidator\DC2\138\SOH\n\
    \&propagated_nexus_serialization_context\CAN\b \SOH(\v25.temporal.api.nexus.v1.PropagatedSerializationContextR#propagatedNexusSerializationContext\SUB[\n\
    \\fHeadersEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC25\n\
    \\ENQvalue\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\ENQvalue:\STX8\SOH\"\196\SOH\n\
    \\SUBResolveNexusOperationStart\DC2\DLE\n\
    \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2)\n\
    \\SIoperation_token\CAN\STX \SOH(\tH\NULR\SOoperationToken\DC2#\n\
    \\fstarted_sync\CAN\ETX \SOH(\bH\NULR\vstartedSync\DC2:\n\
    \\ACKfailed\CAN\EOT \SOH(\v2 .temporal.api.failure.v1.FailureH\NULR\ACKfailedB\b\n\
    \\ACKstatus\"f\n\
    \\NAKResolveNexusOperation\DC2\DLE\n\
    \\ETXseq\CAN\SOH \SOH(\rR\ETXseq\DC2;\n\
    \\ACKresult\CAN\STX \SOH(\v2#.coresdk.nexus.NexusOperationResultR\ACKresult\"\241\STX\n\
    \\SIRemoveFromCache\DC2\CAN\n\
    \\amessage\CAN\SOH \SOH(\tR\amessage\DC2S\n\
    \\ACKreason\CAN\STX \SOH(\SO2;.coresdk.workflow_activation.RemoveFromCache.EvictionReasonR\ACKreason\"\238\SOH\n\
    \\SOEvictionReason\DC2\SI\n\
    \\vUNSPECIFIED\DLE\NUL\DC2\SO\n\
    \\n\
    \CACHE_FULL\DLE\SOH\DC2\SO\n\
    \\n\
    \CACHE_MISS\DLE\STX\DC2\DC2\n\
    \\SONONDETERMINISM\DLE\ETX\DC2\r\n\
    \\tLANG_FAIL\DLE\EOT\DC2\DC2\n\
    \\SOLANG_REQUESTED\DLE\ENQ\DC2\DC2\n\
    \\SOTASK_NOT_FOUND\DLE\ACK\DC2\NAK\n\
    \\DC1UNHANDLED_COMMAND\DLE\a\DC2\t\n\
    \\ENQFATAL\DLE\b\DC2\US\n\
    \\ESCPAGINATION_OR_HISTORY_FETCH\DLE\t\DC2\GS\n\
    \\EMWORKFLOW_EXECUTION_ENDING\DLE\n\
    \B8\234\STX5Temporalio::Internal::Bridge::Api::WorkflowActivationJ\194\169\SOH\n\
    \\a\DC2\ENQ\NUL\NUL\177\ETX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\172\SOH\n\
    \\SOH\STX\DC2\ETX\ACK\NUL$\SUB\161\SOH*\n\
    \ Definitions of the different workflow activation jobs returned from [crate::Core::poll_task]. The\n\
    \ lang SDK applies these activation jobs to drive workflows.\n\
    \\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NULN\n\
    \\t\n\
    \\STX\b-\DC2\ETX\a\NULN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\t\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\n\
    \\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\v\NUL%\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\f\NUL/\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\r\NUL-\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\SO\NUL.\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\SI\NUL.\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\DLE\NUL2\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\DC1\NUL.\n\
    \\t\n\
    \\STX\ETX\t\DC2\ETX\DC2\NULA\n\
    \\t\n\
    \\STX\ETX\n\
    \\DC2\ETX\DC3\NUL?\n\
    \\t\n\
    \\STX\ETX\v\DC2\ETX\DC4\NUL/\n\
    \\t\n\
    \\STX\ETX\f\DC2\ETX\NAK\NUL-\n\
    \\178\NAK\n\
    \\STX\EOT\NUL\DC2\EOTI\NULp\SOH\SUB\165\NAK An instruction to the lang sdk to run some workflow code, whether for the first time or from\n\
    \ a cached state.\n\
    \\n\
    \ ## Job ordering guarantees and semantics\n\
    \\n\
    \ Core will, by default, order jobs within the activation as follows:\n\
    \ 1. init workflow\n\
    \ 2. patches\n\
    \ 3. random-seed-updates\n\
    \ 4. signals/updates\n\
    \ 5. all others\n\
    \ 6. local activity resolutions\n\
    \ 7. queries\n\
    \ 8. evictions\n\
    \\n\
    \ This is because:\n\
    \ * Patches are expected to apply to the entire activation\n\
    \ * Signal and update handlers should be invoked before workflow routines are iterated. That is to\n\
    \  say before the users' main workflow function and anything spawned by it is allowed to continue.\n\
    \ * Local activities resolutions go after other normal jobs because while *not* replaying, they\n\
    \  will always take longer than anything else that produces an immediate job (which is\n\
    \  effectively instant). When *replaying* we need to scan ahead for LA markers so that we can\n\
    \  resolve them in the same activation that they completed in when not replaying. However, doing\n\
    \  so would, by default, put those resolutions *before* any other immediate jobs that happened\n\
    \  in that same activation (prime example: cancelling not-wait-for-cancel activities). So, we do\n\
    \  this to ensure the LA resolution happens after that cancel (or whatever else it may be) as it\n\
    \  normally would have when executing.\n\
    \ * Queries always go last (and, in fact, always come in their own activation)\n\
    \ * Evictions also always come in their own activation\n\
    \\n\
    \ Core does this reordering to ensure that langs observe jobs in the same order during replay as\n\
    \ they would have during execution. However, in principle, this ordering is not necessary\n\
    \ (excepting queries/evictions, which definitely must come last) if lang layers apply all jobs to\n\
    \ state *first* (by resolving promises/futures, marking handlers to be invoked, etc as they iterate\n\
    \ over the jobs) and then only *after* that is done, drive coroutines/threads/whatever. If\n\
    \ execution works this way, then determinism is only impacted by the order routines are driven in\n\
    \ (which must be stable based on lang implementation or convention), rather than the order jobs are\n\
    \ processed.\n\
    \\n\
    \ A successful activation completion for queries attached to a workflow task must include a query\n\
    \ response. Core holds local activity results for the next task as soon as it dispatches these\n\
    \ queries, since sending their responses completes the current task.\n\
    \\n\
    \ Workflow tasks with no activation jobs are handled internally by Core, without activating lang.\n\
    \\n\
    \ ## Evictions\n\
    \\n\
    \ Evictions appear as an activations that contains only a `remove_from_cache` job. Such activations\n\
    \ should not cause the workflow code to be invoked and may be responded to with an empty command\n\
    \ list.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETXI\b\SUB\n\
    \\187\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXL\EOT\SYN\SUB\173\SOH The id of the currently active run of the workflow. Also used as a cache key. There may\n\
    \ only ever be one active workflow task (and hence activation) of a run at one time.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETXL\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXL\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXL\DC4\NAK\n\
    \k\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXN\EOT,\SUB^ The current time as understood by the workflow, which is set by workflow task started events\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXN\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXN\RS'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXN*+\n\
    \E\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXP\EOT\SUB\SUB8 Whether or not the activation is replaying past events\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETXP\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXP\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXP\CAN\EM\n\
    \\160\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXS\EOT\RS\SUB\146\SOH Current history length as determined by the event id of the most recently processed event.\n\
    \ This ensures that the number is always deterministic\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETXS\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXS\v\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXS\FS\GS\n\
    \<\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXU\EOT,\SUB/ The things to do upon activating the workflow\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETXU\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETXU\r\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXU#'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXU*+\n\
    \\227\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXY\EOT1\SUB\213\SOH Internal flags which are available for use by lang. If `is_replaying` is false, all\n\
    \ internal flags may be used. This is not a delta - all previously used flags always\n\
    \ appear since this representation is cheap.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETXY\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETXY\r\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXY\DC4,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXY/0\n\
    \I\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX[\EOT\"\SUB< The history size in bytes as of the last WFT started event\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX[\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX[\v\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX[ !\n\
    \P\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX]\EOT'\SUBC Set true if the most recent WFT started event had this suggestion\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETX]\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX]\t\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX]%&\n\
    \\192\ETX\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETXe\EOTK\SUB\178\ETX Set to the deployment version of the worker that processed this task,\n\
    \ which may be empty. During replay this version may not equal the version\n\
    \ of the replaying worker. If not replaying and this worker has a defined\n\
    \ Deployment Version, it will equal that. It will also be empty for\n\
    \ evict-only activations. The deployment name may be empty, but not the\n\
    \ build id, if this worker was using the deprecated Build ID-only\n\
    \ feature(s).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ACK\DC2\ETXe\EOT\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETXe#F\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETXeIJ\n\
    \Q\n\
    \\EOT\EOT\NUL\STX\t\DC2\ETXg\EOT!\SUBD The last seen SDK version from the most recent WFT completed event\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ENQ\DC2\ETXg\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETXg\v\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETXg\RS \n\
    \\236\SOH\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\ETXk\EOTc\SUB\222\SOH Experimental. Optionally decide the versioning behavior that the first task of the new run should use.\n\
    \ For example, choose to AutoUpgrade on continue-as-new instead of inheriting the pinned version\n\
    \ of the previous run.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\EOT\DC2\ETXk\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ACK\DC2\ETXk\r=\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\ETXk>]\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\ETXk`b\n\
    \\148\SOH\n\
    \\EOT\EOT\NUL\STX\v\DC2\ETXo\EOT7\SUB\134\SOH True if Workflow's Target Worker Deployment Version is different from its Pinned Version and\n\
    \ the workflow is Pinned.\n\
    \ Experimental.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ENQ\DC2\ETXo\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\ETXo\t1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\ETXo46\n\
    \\v\n\
    \\STX\EOT\SOH\DC2\ENQr\NUL\154\SOH\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXr\b\GS\n\
    \\r\n\
    \\EOT\EOT\SOH\b\NUL\DC2\ENQs\EOT\153\SOH\ENQ\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETXs\n\
    \\DC1\n\
    \Y\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXu\b3\SUBL A workflow is starting, record all of the information from its start event\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXu\b\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXu\ESC.\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXu12\n\
    \^\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXw\b!\SUBQ A timer has fired, allowing whatever was waiting on it (if anything) to proceed\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXw\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXw\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXw\US \n\
    \G\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETXy\b0\SUB: Workflow was reset. The randomness seed must be updated.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETXy\b\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXy\EM+\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXy./\n\
    \\169\SOH\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX|\b)\SUB\155\SOH A request to query the workflow was received. It is guaranteed that queries (one or more)\n\
    \ always come in their own activation after other mutating jobs.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETX|\b\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX|\SYN$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX|'(\n\
    \=\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX~\b+\SUB0 A request to cancel the workflow was received.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\ETX~\b\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX~\ETB&\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX~)*\n\
    \>\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\EOT\128\SOH\b+\SUB0 A request to signal the workflow was received.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\EOT\128\SOH\b\SYN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\EOT\128\SOH\ETB&\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\EOT\128\SOH)*\n\
    \X\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\EOT\130\SOH\b-\SUBJ An activity was resolved, result could be completed, failed or cancelled\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\EOT\130\SOH\b\ETB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\EOT\130\SOH\CAN(\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\EOT\130\SOH+,\n\
    \\207\SOH\n\
    \\EOT\EOT\SOH\STX\a\DC2\EOT\134\SOH\b,\SUB\192\SOH A patch marker has been detected and lang is being told that change exists. This\n\
    \ job is strange in that it is sent pre-emptively to lang without any corresponding\n\
    \ command being sent first.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\ACK\DC2\EOT\134\SOH\b\SYN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\EOT\134\SOH\ETB'\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\EOT\134\SOH*+\n\
    \I\n\
    \\EOT\EOT\SOH\STX\b\DC2\EOT\136\SOH\bW\SUB; A child workflow execution has started or failed to start\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\ACK\DC2\EOT\136\SOH\b*\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\EOT\136\SOH+Q\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\EOT\136\SOHTV\n\
    \R\n\
    \\EOT\EOT\SOH\STX\t\DC2\EOT\138\SOH\bL\SUBD A child workflow was resolved, result could be completed or failed\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\t\ACK\DC2\EOT\138\SOH\b%\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\t\SOH\DC2\EOT\138\SOH&F\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\t\ETX\DC2\EOT\138\SOHIK\n\
    \B\n\
    \\EOT\EOT\SOH\STX\n\
    \\DC2\EOT\140\SOH\bL\SUB4 An attempt to signal an external workflow resolved\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ACK\DC2\EOT\140\SOH\b%\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\n\
    \\SOH\DC2\EOT\140\SOH&F\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ETX\DC2\EOT\140\SOHIK\n\
    \B\n\
    \\EOT\EOT\SOH\STX\v\DC2\EOT\142\SOH\b[\SUB4 An attempt to cancel an external workflow resolved\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\v\ACK\DC2\EOT\142\SOH\b,\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\v\SOH\DC2\EOT\142\SOH-U\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\v\ETX\DC2\EOT\142\SOHXZ\n\
    \6\n\
    \\EOT\EOT\SOH\STX\f\DC2\EOT\144\SOH\b \SUB( A request to handle a workflow update.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\f\ACK\DC2\EOT\144\SOH\b\DLE\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\f\SOH\DC2\EOT\144\SOH\DC1\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\f\ETX\DC2\EOT\144\SOH\GS\US\n\
    \*\n\
    \\EOT\EOT\SOH\STX\r\DC2\EOT\146\SOH\bF\SUB\FS A nexus operation started.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\r\ACK\DC2\EOT\146\SOH\b\"\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\r\SOH\DC2\EOT\146\SOH#@\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\r\ETX\DC2\EOT\146\SOHCE\n\
    \+\n\
    \\EOT\EOT\SOH\STX\SO\DC2\EOT\148\SOH\b;\SUB\GS A nexus operation resolved.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SO\ACK\DC2\EOT\148\SOH\b\GS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SO\SOH\DC2\EOT\148\SOH\RS5\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SO\ETX\DC2\EOT\148\SOH8:\n\
    \\223\SOH\n\
    \\EOT\EOT\SOH\STX\SI\DC2\EOT\152\SOH\b/\SUB\208\SOH Remove the workflow identified by the [WorkflowActivation] containing this job from the\n\
    \ cache after performing the activation. It is guaranteed that this will be the only job\n\
    \ in the activation if present.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SI\ACK\DC2\EOT\152\SOH\b\ETB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SI\SOH\DC2\EOT\152\SOH\CAN)\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SI\ETX\DC2\EOT\152\SOH,.\n\
    \)\n\
    \\STX\EOT\STX\DC2\ACK\157\SOH\NUL\229\SOH\SOH\SUB\ESC Initialize a new workflow\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\157\SOH\b\SUB\n\
    \R\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\159\SOH\EOT\GS\SUBD The identifier the lang-specific sdk uses to execute workflow code\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\EOT\159\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\159\SOH\v\CAN\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\159\SOH\ESC\FS\n\
    \;\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\161\SOH\EOT\ESC\SUB- The workflow id used on the temporal server\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\EOT\161\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\161\SOH\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\161\SOH\EM\SUB\n\
    \+\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOT\163\SOH\EOT:\SUB\GS Inputs to the workflow code\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\EOT\163\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\EOT\163\SOH\r+\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\EOT\163\SOH,5\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\EOT\163\SOH89\n\
    \\149\SOH\n\
    \\EOT\EOT\STX\STX\ETX\DC2\EOT\166\SOH\EOT\US\SUB\134\SOH The seed must be used to initialize the random generator used by SDK.\n\
    \ RandomSeedUpdatedAttributes are used to deliver seed updates.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\EOT\166\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\EOT\166\SOH\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\EOT\166\SOH\GS\RS\n\
    \p\n\
    \\EOT\EOT\STX\STX\EOT\DC2\EOT\168\SOH\EOT<\SUBb Used to add metadata e.g. for tracing and auth, meant to be read and written to by interceptors.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\ACK\DC2\EOT\168\SOH\EOT/\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\EOT\168\SOH07\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\EOT\168\SOH:;\n\
    \C\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\EOT\170\SOH\EOT\CAN\SUB5 Identity of the client who requested this execution\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\ENQ\DC2\EOT\170\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\EOT\170\SOH\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\EOT\170\SOH\SYN\ETB\n\
    \I\n\
    \\EOT\EOT\STX\STX\ACK\DC2\EOT\172\SOH\EOT@\SUB; If this workflow is a child, information about the parent\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\ACK\DC2\EOT\172\SOH\EOT&\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\EOT\172\SOH';\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\EOT\172\SOH>?\n\
    \W\n\
    \\EOT\EOT\STX\STX\a\DC2\EOT\174\SOH\EOT<\SUBI Total workflow execution timeout including retries and continue as new.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\ACK\DC2\EOT\174\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\SOH\DC2\EOT\174\SOH\GS7\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\ETX\DC2\EOT\174\SOH:;\n\
    \1\n\
    \\EOT\EOT\STX\STX\b\DC2\EOT\176\SOH\EOT6\SUB# Timeout of a single workflow run.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\b\ACK\DC2\EOT\176\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\b\SOH\DC2\EOT\176\SOH\GS1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\b\ETX\DC2\EOT\176\SOH45\n\
    \2\n\
    \\EOT\EOT\STX\STX\t\DC2\EOT\178\SOH\EOT8\SUB$ Timeout of a single workflow task.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\t\ACK\DC2\EOT\178\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\t\SOH\DC2\EOT\178\SOH\GS2\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\t\ETX\DC2\EOT\178\SOH57\n\
    \\DEL\n\
    \\EOT\EOT\STX\STX\n\
    \\DC2\EOT\181\SOH\EOT0\SUBq Run id of the previous workflow which continued-as-new or retired or cron executed into this\n\
    \ workflow, if any.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\n\
    \\ENQ\DC2\EOT\181\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\n\
    \\SOH\DC2\EOT\181\SOH\v*\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\n\
    \\ETX\DC2\EOT\181\SOH-/\n\
    \X\n\
    \\EOT\EOT\STX\STX\v\DC2\EOT\183\SOH\EOTJ\SUBJ If this workflow was a continuation, indicates the type of continuation.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\v\ACK\DC2\EOT\183\SOH\EOT0\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\v\SOH\DC2\EOT\183\SOH1D\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\v\ETX\DC2\EOT\183\SOHGI\n\
    \f\n\
    \\EOT\EOT\STX\STX\f\DC2\EOT\185\SOH\EOT;\SUBX If this workflow was a continuation and that continuation failed, the details of that.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\f\ACK\DC2\EOT\185\SOH\EOT#\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\f\SOH\DC2\EOT\185\SOH$5\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\f\ETX\DC2\EOT\185\SOH8:\n\
    \i\n\
    \\EOT\EOT\STX\STX\r\DC2\EOT\187\SOH\EOT@\SUB[ If this workflow was a continuation and that continuation completed, the details of that.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\r\ACK\DC2\EOT\187\SOH\EOT#\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\r\SOH\DC2\EOT\187\SOH$:\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\r\ETX\DC2\EOT\187\SOH=?\n\
    \c\n\
    \\EOT\EOT\STX\STX\SO\DC2\EOT\189\SOH\EOT'\SUBU This is the very first run id the workflow ever had, following continuation chains.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SO\ENQ\DC2\EOT\189\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SO\SOH\DC2\EOT\189\SOH\v!\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SO\ETX\DC2\EOT\189\SOH$&\n\
    \,\n\
    \\EOT\EOT\STX\STX\SI\DC2\EOT\191\SOH\EOT9\SUB\RS This workflow's retry policy\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SI\ACK\DC2\EOT\191\SOH\EOT&\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SI\SOH\DC2\EOT\191\SOH'3\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SI\ETX\DC2\EOT\191\SOH68\n\
    \Y\n\
    \\EOT\EOT\STX\STX\DLE\DC2\EOT\193\SOH\EOT\ETB\SUBK Starting at 1, the number of times we have tried to execute this workflow\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DLE\ENQ\DC2\EOT\193\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DLE\SOH\DC2\EOT\193\SOH\n\
    \\DC1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DLE\ETX\DC2\EOT\193\SOH\DC4\SYN\n\
    \M\n\
    \\EOT\EOT\STX\STX\DC1\DC2\EOT\195\SOH\EOT\RS\SUB? If this workflow runs on a cron schedule, it will appear here\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC1\ENQ\DC2\EOT\195\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC1\SOH\DC2\EOT\195\SOH\v\CAN\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC1\ETX\DC2\EOT\195\SOH\ESC\GS\n\
    \\143\SOH\n\
    \\EOT\EOT\STX\STX\DC2\DC2\EOT\198\SOH\EOTF\SUB\128\SOH The absolute time at which the workflow will be timed out.\n\
    \ This is passed without change to the next run/retry of a workflow.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC2\ACK\DC2\EOT\198\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC2\SOH\DC2\EOT\198\SOH\RS@\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC2\ETX\DC2\EOT\198\SOHCE\n\
    \\185\SOH\n\
    \\EOT\EOT\STX\STX\DC3\DC2\EOT\201\SOH\EOTE\SUB\170\SOH For a cron workflow, this contains the amount of time between when this iteration of\n\
    \ the cron workflow was scheduled and when it should run next per its cron_schedule.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC3\ACK\DC2\EOT\201\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC3\SOH\DC2\EOT\201\SOH\GS?\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC3\ETX\DC2\EOT\201\SOHBD\n\
    \!\n\
    \\EOT\EOT\STX\STX\DC4\DC2\EOT\203\SOH\EOT*\SUB\DC3 User-defined memo\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC4\ACK\DC2\EOT\203\SOH\EOT\US\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC4\SOH\DC2\EOT\203\SOH $\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\DC4\ETX\DC2\EOT\203\SOH')\n\
    \P\n\
    \\EOT\EOT\STX\STX\NAK\DC2\EOT\205\SOH\EOTC\SUBB Search attributes created/updated when this workflow was started\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NAK\ACK\DC2\EOT\205\SOH\EOT+\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NAK\SOH\DC2\EOT\205\SOH,=\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NAK\ETX\DC2\EOT\205\SOH@B\n\
    \K\n\
    \\EOT\EOT\STX\STX\SYN\DC2\EOT\207\SOH\EOT.\SUB= When the workflow execution started event was first written\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SYN\ACK\DC2\EOT\207\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SYN\SOH\DC2\EOT\207\SOH\RS(\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SYN\ETX\DC2\EOT\207\SOH+-\n\
    \\182\EOT\n\
    \\EOT\EOT\STX\STX\ETB\DC2\EOT\218\SOH\EOT@\SUB\167\EOT Contains information about the root workflow execution. It is possible for the namespace to\n\
    \ be different than this workflow if using OSS and cross-namespace children, but this\n\
    \ information is not retained. Users should take care to track it by other means in such\n\
    \ situations.\n\
    \\n\
    \ The root workflow execution is defined as follows:\n\
    \   1. A workflow without parent workflow is its own root workflow.\n\
    \   2. A workflow that has a parent workflow has the same root workflow as its parent workflow.\n\
    \\n\
    \ See field in WorkflowExecutionStarted for more detail.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETB\ACK\DC2\EOT\218\SOH\EOT,\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETB\SOH\DC2\EOT\218\SOH-:\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETB\ETX\DC2\EOT\218\SOH=?\n\
    \3\n\
    \\EOT\EOT\STX\STX\CAN\DC2\EOT\220\SOH\EOT2\SUB% Priority of this workflow execution\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\CAN\ACK\DC2\EOT\220\SOH\EOT#\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\CAN\SOH\DC2\EOT\220\SOH$,\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\CAN\ETX\DC2\EOT\220\SOH/1\n\
    \\134\STX\n\
    \\EOT\EOT\STX\STX\EM\DC2\EOT\224\SOH\EOT*\SUB\247\SOH The run id recorded on the `WORKFLOW_EXECUTION_STARTED` event. Unlike the execution's current\n\
    \ run id, this value is preserved across workflow resets. Mirrors the `original_execution_run_id`\n\
    \ field from `WorkflowExecutionStartedEventAttributes`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EM\ENQ\DC2\EOT\224\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EM\SOH\DC2\EOT\224\SOH\v$\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EM\ETX\DC2\EOT\224\SOH')\n\
    \\214\SOH\n\
    \\EOT\EOT\STX\STX\SUB\DC2\EOT\228\SOH\EOTe\SUB\199\SOH Serialization context of the Nexus operation handler that started this workflow, if any.\n\
    \ Lang should use it to serialize the workflow's result and failure, which are returned to the\n\
    \ Nexus caller.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SUB\ACK\DC2\EOT\228\SOH\EOT8\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SUB\SOH\DC2\EOT\228\SOH9_\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SUB\ETX\DC2\EOT\228\SOHbd\n\
    \8\n\
    \\STX\EOT\ETX\DC2\ACK\232\SOH\NUL\235\SOH\SOH\SUB* Notify a workflow that a timer has fired\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\232\SOH\b\DC1\n\
    \[\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\234\SOH\EOT\DC3\SUBM Sequence number as provided by lang in the corresponding StartTimer command\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\EOT\234\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\234\SOH\v\SO\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\234\SOH\DC1\DC2\n\
    \D\n\
    \\STX\EOT\EOT\DC2\ACK\238\SOH\NUL\245\SOH\SOH\SUB6 Notify a workflow that an activity has been resolved\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\238\SOH\b\ETB\n\
    \a\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\240\SOH\EOT\DC3\SUBS Sequence number as provided by lang in the corresponding ScheduleActivity command\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\EOT\240\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\240\SOH\v\SO\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\240\SOH\DC1\DC2\n\
    \\f\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\241\SOH\EOT2\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\EOT\241\SOH\EOT&\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\241\SOH'-\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\241\SOH01\n\
    \\145\SOH\n\
    \\EOT\EOT\EOT\STX\STX\DC2\EOT\244\SOH\EOT\SYN\SUB\130\SOH Set to true if the resolution is for a local activity. This is used internally by Core and\n\
    \ lang does not need to care about it.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\EOT\244\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\EOT\244\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\EOT\244\SOH\DC4\NAK\n\
    \x\n\
    \\STX\EOT\ENQ\DC2\ACK\249\SOH\NUL\129\STX\SOH\SUBj Notify a workflow that a start child workflow execution request has succeeded, failed or was\n\
    \ cancelled.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\249\SOH\b*\n\
    \l\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\251\SOH\EOT\DC3\SUB^ Sequence number as provided by lang in the corresponding StartChildWorkflowExecution command\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\EOT\251\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\251\SOH\v\SO\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\251\SOH\DC1\DC2\n\
    \\SO\n\
    \\EOT\EOT\ENQ\b\NUL\DC2\ACK\252\SOH\EOT\128\STX\ENQ\n\
    \\r\n\
    \\ENQ\EOT\ENQ\b\NUL\SOH\DC2\EOT\252\SOH\n\
    \\DLE\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\253\SOH\b@\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\EOT\253\SOH\b1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\253\SOH2;\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\253\SOH>?\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\EOT\254\SOH\b=\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ACK\DC2\EOT\254\SOH\b1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\EOT\254\SOH28\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\EOT\254\SOH;<\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\EOT\255\SOH\bB\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ACK\DC2\EOT\255\SOH\b3\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\EOT\255\SOH4=\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\EOT\255\SOH@A\n\
    \.\n\
    \\STX\EOT\ACK\DC2\ACK\132\STX\NUL\134\STX\SOH\SUB  Simply pass the run_id to lang\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\132\STX\b1\n\
    \\f\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\133\STX\EOT\SYN\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\EOT\133\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\133\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\133\STX\DC4\NAK\n\
    \1\n\
    \\STX\EOT\a\DC2\ACK\137\STX\NUL\143\STX\SOH\SUB# Provide lang the cause of failure\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\137\STX\b1\n\
    \\132\SOH\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\140\STX\EOT\ESC\SUBv Lang should have this information but it's more convenient to pass it back\n\
    \ for error construction on the lang side.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\EOT\140\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\140\STX\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\140\STX\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\141\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\EOT\141\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\141\STX\v\CAN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\141\STX\ESC\FS\n\
    \\f\n\
    \\EOT\EOT\a\STX\STX\DC2\EOT\142\STX\EOTD\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ACK\DC2\EOT\142\STX\EOT9\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\EOT\142\STX:?\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\EOT\142\STXBC\n\
    \\153\SOH\n\
    \\STX\EOT\b\DC2\ACK\147\STX\NUL\149\STX\SOH\SUB\138\SOH `failure` should be ChildWorkflowFailure with cause set to CancelledFailure.\n\
    \ The failure is constructed in core for lang's convenience.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\147\STX\b3\n\
    \\f\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\148\STX\EOT0\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\EOT\148\STX\EOT#\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\148\STX$+\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\148\STX./\n\
    \S\n\
    \\STX\EOT\t\DC2\ACK\152\STX\NUL\156\STX\SOH\SUBE Notify a workflow that a child workflow execution has been resolved\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\152\STX\b%\n\
    \l\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\154\STX\EOT\DC3\SUB^ Sequence number as provided by lang in the corresponding StartChildWorkflowExecution command\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\EOT\154\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\154\STX\v\SO\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\154\STX\DC1\DC2\n\
    \\f\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\155\STX\EOT2\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\EOT\155\STX\EOT&\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\155\STX'-\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\155\STX01\n\
    \1\n\
    \\STX\EOT\n\
    \\DC2\ACK\159\STX\NUL\161\STX\SOH\SUB# Update the workflow's random seed\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\159\STX\b\CAN\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\160\STX\EOT\US\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\160\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\160\STX\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\160\STX\GS\RS\n\
    \ \n\
    \\STX\EOT\v\DC2\ACK\164\STX\NUL\174\STX\SOH\SUB\DC2 Query a workflow\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\164\STX\b\NAK\n\
    \\137\STX\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\168\STX\EOT\CAN\SUB\250\SOH For PollWFTResp `query` field, this will be set to the special value `legacy`. For the\n\
    \ `queries` field, the server provides a unique identifier. If it is a `legacy` query,\n\
    \ lang cannot issue any commands in response other than to answer the query.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\EOT\168\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\168\STX\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\168\STX\SYN\ETB\n\
    \4\n\
    \\EOT\EOT\v\STX\SOH\DC2\EOT\170\STX\EOT\SUB\SUB& The query's function/method/etc name\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\EOT\170\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\EOT\170\STX\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\EOT\170\STX\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\v\STX\STX\DC2\EOT\171\STX\EOT:\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\EOT\DC2\EOT\171\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ACK\DC2\EOT\171\STX\r+\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\EOT\171\STX,5\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\EOT\171\STX89\n\
    \-\n\
    \\EOT\EOT\v\STX\ETX\DC2\EOT\173\STX\EOT<\SUB\US Headers attached to the query\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ACK\DC2\EOT\173\STX\EOT/\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\SOH\DC2\EOT\173\STX07\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ETX\DC2\EOT\173\STX:;\n\
    \)\n\
    \\STX\EOT\f\DC2\ACK\177\STX\NUL\180\STX\SOH\SUB\ESC Cancel a running workflow\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\177\STX\b\SYN\n\
    \C\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\179\STX\EOT\SYN\SUB5 User-specified reason the cancel request was issued\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\EOT\179\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\179\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\179\STX\DC4\NAK\n\
    \+\n\
    \\STX\EOT\r\DC2\ACK\183\STX\NUL\192\STX\SOH\SUB\GS Send a signal to a workflow\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\183\STX\b\SYN\n\
    \\f\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\184\STX\EOT\ESC\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\EOT\184\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\184\STX\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\184\STX\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\r\STX\SOH\DC2\EOT\185\STX\EOT6\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\EOT\DC2\EOT\185\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ACK\DC2\EOT\185\STX\r+\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\EOT\185\STX,1\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\EOT\185\STX45\n\
    \4\n\
    \\EOT\EOT\r\STX\STX\DC2\EOT\187\STX\EOT\CAN\SUB& Identity of the sender of the signal\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ENQ\DC2\EOT\187\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\SOH\DC2\EOT\187\STX\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ETX\DC2\EOT\187\STX\SYN\ETB\n\
    \.\n\
    \\EOT\EOT\r\STX\ETX\DC2\EOT\189\STX\EOT<\SUB  Headers attached to the signal\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\ACK\DC2\EOT\189\STX\EOT/\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\SOH\DC2\EOT\189\STX07\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\ETX\DC2\EOT\189\STX:;\n\
    \c\n\
    \\EOT\EOT\r\STX\EOT\DC2\EOT\191\STX\EOT#\SUBU Event ID of the `WORKFLOW_EXECUTION_SIGNALED` history event that produced this job.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\EOT\ENQ\DC2\EOT\191\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\r\STX\EOT\SOH\DC2\EOT\191\STX\n\
    \\RS\n\
    \\r\n\
    \\ENQ\EOT\r\STX\EOT\ETX\DC2\EOT\191\STX!\"\n\
    \\176\SOH\n\
    \\STX\EOT\SO\DC2\ACK\196\STX\NUL\198\STX\SOH\SUB\161\SOH Inform lang what the result of a call to `patched` or similar API should be -- this is always\n\
    \ sent pre-emptively, so any time it is sent the change is present\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\196\STX\b\SYN\n\
    \\f\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\197\STX\EOT\CAN\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\EOT\197\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\197\STX\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\197\STX\SYN\ETB\n\
    \\f\n\
    \\STX\EOT\SI\DC2\ACK\200\STX\NUL\210\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\200\STX\b%\n\
    \q\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\203\STX\EOT\DC3\SUBc Sequence number as provided by lang in the corresponding SignalExternalWorkflowExecution\n\
    \ command\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ENQ\DC2\EOT\203\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\203\STX\v\SO\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\203\STX\DC1\DC2\n\
    \v\n\
    \\EOT\EOT\SI\STX\SOH\DC2\EOT\206\STX\EOT0\SUBh If populated, this signal either failed to be sent or was cancelled depending on failure\n\
    \ type / info.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ACK\DC2\EOT\206\STX\EOT#\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\EOT\206\STX$+\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\EOT\206\STX./\n\
    \\140\SOH\n\
    \\EOT\EOT\SI\STX\STX\DC2\EOT\209\STX\EOTO\SUB~ The server-reported cause when the signal failed. Unspecified when the signal succeeded or\n\
    \ was cancelled before being sent.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ACK\DC2\EOT\209\STX\EOTD\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\SOH\DC2\EOT\209\STXEJ\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ETX\DC2\EOT\209\STXMN\n\
    \\f\n\
    \\STX\EOT\DLE\DC2\ACK\212\STX\NUL\220\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\212\STX\b,\n\
    \x\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\215\STX\EOT\DC3\SUBj Sequence number as provided by lang in the corresponding\n\
    \ RequestCancelExternalWorkflowExecution command\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\EOT\215\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\215\STX\v\SO\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\215\STX\DC1\DC2\n\
    \>\n\
    \\EOT\EOT\DLE\STX\SOH\DC2\EOT\217\STX\EOT0\SUB0 If populated, the cancellation request failed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ACK\DC2\EOT\217\STX\EOT#\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\EOT\217\STX$+\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\EOT\217\STX./\n\
    \O\n\
    \\EOT\EOT\DLE\STX\STX\DC2\EOT\219\STX\EOTO\SUBA The server-reported cause when the cancellation request failed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ACK\DC2\EOT\219\STX\EOTD\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\SOH\DC2\EOT\219\STXEJ\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ETX\DC2\EOT\219\STXMN\n\
    \\160\STX\n\
    \\STX\EOT\DC1\DC2\ACK\225\STX\NUL\247\STX\SOH\SUB\145\STX Lang is requested to invoke an update handler on the workflow. Lang should invoke the update\n\
    \ validator first (if requested). If it accepts the update, immediately invoke the update handler.\n\
    \ Lang must reply to the activation containing this job with an `UpdateResponse`.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\225\STX\b\DLE\n\
    \<\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\227\STX\EOT\DC2\SUB. A workflow-unique identifier for this update\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ENQ\DC2\EOT\227\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\227\STX\v\r\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\227\STX\DLE\DC1\n\
    \u\n\
    \\EOT\EOT\DC1\STX\SOH\DC2\EOT\230\STX\EOT$\SUBg The protocol message instance ID - this is used to uniquely track the ID server side and\n\
    \ internally.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ENQ\DC2\EOT\230\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\SOH\DC2\EOT\230\STX\v\US\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ETX\DC2\EOT\230\STX\"#\n\
    \.\n\
    \\EOT\EOT\DC1\STX\STX\DC2\EOT\232\STX\EOT\DC4\SUB  The name of the update handler\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\ENQ\DC2\EOT\232\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\SOH\DC2\EOT\232\STX\v\SI\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\ETX\DC2\EOT\232\STX\DC2\DC3\n\
    \'\n\
    \\EOT\EOT\DC1\STX\ETX\DC2\EOT\234\STX\EOT6\SUB\EM The input to the update\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ETX\EOT\DC2\EOT\234\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ETX\ACK\DC2\EOT\234\STX\r+\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ETX\SOH\DC2\EOT\234\STX,1\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ETX\ETX\DC2\EOT\234\STX45\n\
    \.\n\
    \\EOT\EOT\DC1\STX\EOT\DC2\EOT\236\STX\EOT<\SUB  Headers attached to the update\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\EOT\ACK\DC2\EOT\236\STX\EOT/\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\EOT\SOH\DC2\EOT\236\STX07\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\EOT\ETX\DC2\EOT\236\STX:;\n\
    \\165\SOH\n\
    \\EOT\EOT\DC1\STX\ENQ\DC2\EOT\239\STX\EOT)\SUB\150\SOH Remaining metadata associated with the update. The `update_id` field is stripped from here\n\
    \ and moved to `id`, since it is guaranteed to be present.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ENQ\ACK\DC2\EOT\239\STX\EOT\US\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ENQ\SOH\DC2\EOT\239\STX $\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ENQ\ETX\DC2\EOT\239\STX'(\n\
    \\179\SOH\n\
    \\EOT\EOT\DC1\STX\ACK\DC2\EOT\242\STX\EOT\ESC\SUB\164\SOH If set true, lang must run the update's validator before running the handler. This will be\n\
    \ set false during replay, since validation is not re-run during replay.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ACK\ENQ\DC2\EOT\242\STX\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ACK\SOH\DC2\EOT\242\STX\t\SYN\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ACK\ETX\DC2\EOT\242\STX\EM\SUB\n\
    \\207\SOH\n\
    \\EOT\EOT\DC1\STX\a\DC2\EOT\246\STX\EOTd\SUB\192\SOH Serialization context of the Nexus operation handler that sent this update, if any. Lang\n\
    \ should use it to serialize the update's result and failure, which are returned to the Nexus\n\
    \ caller.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\a\ACK\DC2\EOT\246\STX\EOT8\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\a\SOH\DC2\EOT\246\STX9_\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\a\ETX\DC2\EOT\246\STXbc\n\
    \\f\n\
    \\STX\EOT\DC2\DC2\ACK\249\STX\NUL\137\ETX\SOH\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\249\STX\b\"\n\
    \g\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\251\STX\EOT\DC3\SUBY Sequence number as provided by lang in the corresponding ScheduleNexusOperation command\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ENQ\DC2\EOT\251\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\251\STX\v\SO\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\251\STX\DC1\DC2\n\
    \\SO\n\
    \\EOT\EOT\DC2\b\NUL\DC2\ACK\252\STX\EOT\136\ETX\ENQ\n\
    \\r\n\
    \\ENQ\EOT\DC2\b\NUL\SOH\DC2\EOT\252\STX\n\
    \\DLE\n\
    \\211\SOH\n\
    \\EOT\EOT\DC2\STX\SOH\DC2\EOT\128\ETX\b#\SUB\196\SOH The operation started asynchronously. Contains a token that can be used to perform\n\
    \ operations on the started operation by, ex, clients. A `ResolveNexusOperation` job will\n\
    \ follow at some point.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ENQ\DC2\EOT\128\ETX\b\SO\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\SOH\DC2\EOT\128\ETX\SI\RS\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ETX\DC2\EOT\128\ETX!\"\n\
    \\156\SOH\n\
    \\EOT\EOT\DC2\STX\STX\DC2\EOT\131\ETX\b\RS\SUB\141\SOH If true the operation \"started\" but only because it's also already resolved. A\n\
    \ `ResolveNexusOperation` job will be in the same activation.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\ENQ\DC2\EOT\131\ETX\b\f\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\SOH\DC2\EOT\131\ETX\r\EM\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\ETX\DC2\EOT\131\ETX\FS\GS\n\
    \\237\SOH\n\
    \\EOT\EOT\DC2\STX\ETX\DC2\EOT\135\ETX\b3\SUB\222\SOH The operation either failed to start, was cancelled before it started, timed out, or\n\
    \ failed synchronously. Details are included inside the message. In this case, the\n\
    \ subsequent ResolveNexusOperation will never be sent.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\ACK\DC2\EOT\135\ETX\b'\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\SOH\DC2\EOT\135\ETX(.\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\ETX\DC2\EOT\135\ETX12\n\
    \\f\n\
    \\STX\EOT\DC3\DC2\ACK\139\ETX\NUL\143\ETX\SOH\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\139\ETX\b\GS\n\
    \g\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\EOT\141\ETX\EOT\DC3\SUBY Sequence number as provided by lang in the corresponding ScheduleNexusOperation command\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ENQ\DC2\EOT\141\ETX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\141\ETX\v\SO\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\141\ETX\DC1\DC2\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\SOH\DC2\EOT\142\ETX\EOT*\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ACK\DC2\EOT\142\ETX\EOT\RS\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\SOH\DC2\EOT\142\ETX\US%\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ETX\DC2\EOT\142\ETX()\n\
    \\f\n\
    \\STX\EOT\DC4\DC2\ACK\145\ETX\NUL\177\ETX\SOH\n\
    \\v\n\
    \\ETX\EOT\DC4\SOH\DC2\EOT\145\ETX\b\ETB\n\
    \\f\n\
    \\EOT\EOT\DC4\STX\NUL\DC2\EOT\146\ETX\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ENQ\DC2\EOT\146\ETX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\SOH\DC2\EOT\146\ETX\v\DC2\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ETX\DC2\EOT\146\ETX\NAK\SYN\n\
    \\SO\n\
    \\EOT\EOT\DC4\EOT\NUL\DC2\ACK\148\ETX\EOT\175\ETX\ENQ\n\
    \\r\n\
    \\ENQ\EOT\DC4\EOT\NUL\SOH\DC2\EOT\148\ETX\t\ETB\n\
    \\SO\n\
    \\ACK\EOT\DC4\EOT\NUL\STX\NUL\DC2\EOT\149\ETX\b\CAN\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\NUL\SOH\DC2\EOT\149\ETX\b\DC3\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\NUL\STX\DC2\EOT\149\ETX\SYN\ETB\n\
    \(\n\
    \\ACK\EOT\DC4\EOT\NUL\STX\SOH\DC2\EOT\151\ETX\b\ETB\SUB\CAN Workflow cache is full\n\
    \\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\SOH\SOH\DC2\EOT\151\ETX\b\DC2\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\SOH\STX\DC2\EOT\151\ETX\NAK\SYN\n\
    \\176\SOH\n\
    \\ACK\EOT\DC4\EOT\NUL\STX\STX\DC2\EOT\154\ETX\b\ETB\SUB\159\SOH Workflow received a partial task but was not in the cache. Typically it won't be in the\n\
    \ lang cache either at this point, but we send an eviction to be sure.\n\
    \\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\STX\SOH\DC2\EOT\154\ETX\b\DC2\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\STX\STX\DC2\EOT\154\ETX\NAK\SYN\n\
    \J\n\
    \\ACK\EOT\DC4\EOT\NUL\STX\ETX\DC2\EOT\156\ETX\b\ESC\SUB: The workflow produced results inconsistent with history.\n\
    \\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\ETX\SOH\DC2\EOT\156\ETX\b\SYN\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\ETX\STX\DC2\EOT\156\ETX\EM\SUB\n\
    \Q\n\
    \\ACK\EOT\DC4\EOT\NUL\STX\EOT\DC2\EOT\158\ETX\b\SYN\SUBA The lang side completed the workflow activation with a failure.\n\
    \\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\EOT\SOH\DC2\EOT\158\ETX\b\DC1\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\EOT\STX\DC2\EOT\158\ETX\DC4\NAK\n\
    \N\n\
    \\ACK\EOT\DC4\EOT\NUL\STX\ENQ\DC2\EOT\160\ETX\b\ESC\SUB> The lang side explicitly requested this workflow be evicted.\n\
    \\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\ENQ\SOH\DC2\EOT\160\ETX\b\SYN\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\ENQ\STX\DC2\EOT\160\ETX\EM\SUB\n\
    \\173\SOH\n\
    \\ACK\EOT\DC4\EOT\NUL\STX\ACK\DC2\EOT\163\ETX\b\ESC\SUB\156\SOH The workflow task we tried to respond to didn't exist. The workflow might have already\n\
    \ finished, or the WFT timed out but we didn't learn about that yet.\n\
    \\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\ACK\SOH\DC2\EOT\163\ETX\b\SYN\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\ACK\STX\DC2\EOT\163\ETX\EM\SUB\n\
    \\163\SOH\n\
    \\ACK\EOT\DC4\EOT\NUL\STX\a\DC2\EOT\166\ETX\b\RS\SUB\146\SOH There was new work that must be handled while we attempted to complete the WFT. Ex:\n\
    \ a new signal came in while trying to complete the workflow.\n\
    \\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\a\SOH\DC2\EOT\166\ETX\b\EM\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\a\STX\DC2\EOT\166\ETX\FS\GS\n\
    \\186\SOH\n\
    \\ACK\EOT\DC4\EOT\NUL\STX\b\DC2\EOT\169\ETX\b\DC2\SUB\169\SOH There was some fatal error processing the workflow, typically an internal error, but\n\
    \ can also happen if then network drops out while paginating. Check message string.\n\
    \\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\b\SOH\DC2\EOT\169\ETX\b\r\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\b\STX\DC2\EOT\169\ETX\DLE\DC1\n\
    \O\n\
    \\ACK\EOT\DC4\EOT\NUL\STX\t\DC2\EOT\171\ETX\b(\SUB? Something went wrong attempting to fetch more history events.\n\
    \\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\t\SOH\DC2\EOT\171\ETX\b#\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\t\STX\DC2\EOT\171\ETX&'\n\
    \\129\SOH\n\
    \\ACK\EOT\DC4\EOT\NUL\STX\n\
    \\DC2\EOT\174\ETX\b'\SUBq The workflow is being completed with a terminal command and we sent the WFT completion\n\
    \ to server successfully.\n\
    \\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\n\
    \\SOH\DC2\EOT\174\ETX\b!\n\
    \\SI\n\
    \\a\EOT\DC4\EOT\NUL\STX\n\
    \\STX\DC2\EOT\174\ETX$&\n\
    \\f\n\
    \\EOT\EOT\DC4\STX\SOH\DC2\EOT\176\ETX\EOT\RS\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ACK\DC2\EOT\176\ETX\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\SOH\DC2\EOT\176\ETX\DC3\EM\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ETX\DC2\EOT\176\ETX\FS\GSb\ACKproto3"