module Temporal.Workflow.Internal.Payload (
  -- * Decode
  decodeActivation,
  decodeInitialization,
  decodeSignal,

  -- * Encode
  encodeCommand,

  -- * Error Handling
  PayloadProcessingFailure,
) where

import Control.Monad ((>=>))
import Data.Functor ((<&>))
import Lens.Family2 (Traversal')
import Lens.Family2.Stock (just_)
import qualified Proto.Temporal.Api.Common.V1.Message as Message
import qualified Proto.Temporal.Api.Common.V1.Message_Fields as Message
import qualified Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult as ActivityResult
import qualified Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields as ActivityResult
import qualified Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow as ChildWorkflow
import qualified Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow_Fields as ChildWorkflow
import qualified Proto.Temporal.Sdk.Core.Nexus.Nexus as Nexus
import qualified Proto.Temporal.Sdk.Core.Nexus.Nexus_Fields as Nexus
import qualified Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation as Activation
import qualified Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields as Activation
import qualified Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands as Command
import qualified Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields as Command
import Temporal.Payload (
  PayloadProcessor (..),
  ValueError (..),
  convertFromProtoPayload,
  convertToProtoPayload,
 )
import UnliftIO


decodeActivation :: PayloadProcessor -> Activation.WorkflowActivation -> IO Activation.WorkflowActivation
decodeActivation processor = (Activation.vec'jobs . traverse . Activation.maybe'variant . just_) decodeJob
  where
    decodeJob = \case
      Activation.WorkflowActivationJob'InitializeWorkflow start ->
        decodeInitialization processor start <&> Activation.WorkflowActivationJob'InitializeWorkflow
      Activation.WorkflowActivationJob'SignalWorkflow signal ->
        decodeSignal processor signal <&> Activation.WorkflowActivationJob'SignalWorkflow
      Activation.WorkflowActivationJob'QueryWorkflow query ->
        decodeQuery query <&> Activation.WorkflowActivationJob'QueryWorkflow
      Activation.WorkflowActivationJob'DoUpdate update ->
        decodeUpdate update <&> Activation.WorkflowActivationJob'DoUpdate
      Activation.WorkflowActivationJob'ResolveActivity result ->
        activityResultPayload (decodePayload processor) result <&> Activation.WorkflowActivationJob'ResolveActivity
      Activation.WorkflowActivationJob'ResolveChildWorkflowExecution result ->
        childResultPayload (decodePayload processor) result <&> Activation.WorkflowActivationJob'ResolveChildWorkflowExecution
      Activation.WorkflowActivationJob'ResolveNexusOperation result ->
        nexusResultPayload (decodePayload processor) result <&> Activation.WorkflowActivationJob'ResolveNexusOperation
      other -> pure other

    decodeQuery :: Activation.QueryWorkflow -> IO Activation.QueryWorkflow
    decodeQuery =
      (Activation.vec'arguments . traverse) (decodePayload processor)
        >=> (Activation.headers . traverse) (decodeHeader processor)

    decodeUpdate :: Activation.DoUpdate -> IO Activation.DoUpdate
    decodeUpdate =
      (Activation.vec'input . traverse) (decodePayload processor)
        >=> (Activation.headers . traverse) (decodeHeader processor)

    -- Select successful payloads with generated prisms. Unlike a oneof's
    -- maybe'completed lens, a prism preserves the other alternatives on a miss.
    activityResultPayload :: Traversal' Activation.ResolveActivity Message.Payload
    activityResultPayload =
      Activation.result
        . ActivityResult.maybe'status
        . just_
        . ActivityResult._ActivityResolution'Completed
        . ActivityResult.result

    childResultPayload :: Traversal' Activation.ResolveChildWorkflowExecution Message.Payload
    childResultPayload =
      Activation.result
        . ChildWorkflow.maybe'status
        . just_
        . ChildWorkflow._ChildWorkflowResult'Completed
        . ChildWorkflow.result

    nexusResultPayload :: Traversal' Activation.ResolveNexusOperation Message.Payload
    nexusResultPayload =
      Activation.result . Nexus.maybe'status . just_ . Nexus._NexusOperationResult'Completed


decodeInitialization :: PayloadProcessor -> Activation.InitializeWorkflow -> IO Activation.InitializeWorkflow
decodeInitialization processor =
  (Activation.vec'arguments . traverse) (decodePayload processor)
    >=> (Activation.headers . traverse) (decodeHeader processor)
    >=> (Activation.memo . Message.fields . traverse) (decodePayload processor)


decodeSignal :: PayloadProcessor -> Activation.SignalWorkflow -> IO Activation.SignalWorkflow
decodeSignal processor = (Activation.vec'input . traverse) (decodePayload processor)


-- Encode payloads in buffered commands before publishing the completion.
encodeCommand :: PayloadProcessor -> Command.WorkflowCommand -> IO Command.WorkflowCommand
encodeCommand processor = (Command.maybe'variant . just_) encodeVariant
  where
    encodeVariant = \case
      Command.WorkflowCommand'ScheduleActivity activity ->
        (Command.vec'arguments . traverse) (encodePayload processor) activity <&> Command.WorkflowCommand'ScheduleActivity
      Command.WorkflowCommand'ScheduleLocalActivity activity ->
        encodeLocalActivity activity <&> Command.WorkflowCommand'ScheduleLocalActivity
      Command.WorkflowCommand'ScheduleNexusOperation operation ->
        (Command.maybe'input . just_) (encodePayload processor) operation <&> Command.WorkflowCommand'ScheduleNexusOperation
      Command.WorkflowCommand'StartChildWorkflowExecution child ->
        encodeChildWorkflow child <&> Command.WorkflowCommand'StartChildWorkflowExecution
      Command.WorkflowCommand'SignalExternalWorkflowExecution signal ->
        (Command.vec'args . traverse) (encodePayload processor) signal <&> Command.WorkflowCommand'SignalExternalWorkflowExecution
      Command.WorkflowCommand'RespondToQuery query ->
        queryResultPayload (encodePayload processor) query <&> Command.WorkflowCommand'RespondToQuery
      Command.WorkflowCommand'UpdateResponse update ->
        updateResultPayload (encodePayload processor) update <&> Command.WorkflowCommand'UpdateResponse
      Command.WorkflowCommand'CompleteWorkflowExecution completion ->
        Command.result (encodePayload processor) completion <&> Command.WorkflowCommand'CompleteWorkflowExecution
      Command.WorkflowCommand'ContinueAsNewWorkflowExecution continuation ->
        encodeContinueAsNew continuation <&> Command.WorkflowCommand'ContinueAsNewWorkflowExecution
      other -> pure other

    -- Local activity headers have historically been encoded; remote headers have not.
    encodeLocalActivity :: Command.ScheduleLocalActivity -> IO Command.ScheduleLocalActivity
    encodeLocalActivity =
      (Command.headers . traverse) (encodePayload processor)
        >=> (Command.vec'arguments . traverse) (encodePayload processor)

    encodeChildWorkflow :: Command.StartChildWorkflowExecution -> IO Command.StartChildWorkflowExecution
    encodeChildWorkflow =
      (Command.vec'input . traverse) (encodePayload processor)
        >=> (Command.memo . traverse) (encodePayload processor)

    queryResultPayload :: Traversal' Command.QueryResult Message.Payload
    queryResultPayload =
      Command.maybe'variant . just_ . Command._QueryResult'Succeeded . Command.response

    updateResultPayload :: Traversal' Command.UpdateResponse Message.Payload
    updateResultPayload =
      Command.maybe'response . just_ . Command._UpdateResponse'Completed

    encodeContinueAsNew :: Command.ContinueAsNewWorkflowExecution -> IO Command.ContinueAsNewWorkflowExecution
    encodeContinueAsNew =
      (Command.vec'arguments . traverse) (encodePayload processor)
        >=> (Command.memo . traverse) (encodePayload processor)


newtype PayloadProcessingFailure = PayloadProcessingFailure SomeException
  deriving stock (Show)


instance Exception PayloadProcessingFailure


decodePayload :: PayloadProcessor -> Message.Payload -> IO Message.Payload
decodePayload processor payload =
  handle (throwIO . PayloadProcessingFailure) $
    payloadProcessorDecode processor (convertFromProtoPayload payload) >>= \case
      Left message -> throwIO $ ValueError message
      Right decoded -> evaluate $ convertToProtoPayload decoded


-- Preserve headers the processor can't decode; they may still be meaningful to
-- some other consumer that isn't us.
decodeHeader :: PayloadProcessor -> Message.Payload -> IO Message.Payload
decodeHeader processor payload =
  handle (throwIO . PayloadProcessingFailure) $
    payloadProcessorDecode processor (convertFromProtoPayload payload) >>= \case
      Left _ -> pure payload
      Right decoded -> evaluate $ convertToProtoPayload decoded


-- We evaluate converted payloads inside the handler so conversion failures
-- are also reported as PayloadProcessingFailures.
--
-- If they're lazy it's possible that some work could be carried forward into a
-- step that trips the deadlock detector.
encodePayload :: PayloadProcessor -> Message.Payload -> IO Message.Payload
encodePayload processor payload =
  handle (throwIO . PayloadProcessingFailure) $ do
    encoded <- payloadProcessorEncode processor (convertFromProtoPayload payload)
    evaluate . convertToProtoPayload $ encoded
