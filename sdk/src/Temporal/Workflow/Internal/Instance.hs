module Temporal.Workflow.Internal.Instance (
  InstanceM,
  runInstanceM,
  WorkflowInstance (..),
  Info (..),
  Sequences (..),
  Sequence (..),
  Reversed,
  fromReversed,
  push,
  flushCommands,
  nextExternalCancelSequence,
  nextChildWorkflowSequence,
  nextExternalSignalSequence,
  nextTimerSequence,
  nextActivitySequence,
  nextConditionSequence,
  nextNexusOperationSequence,
) where

import Control.Monad.Reader
import Data.Atomics (atomicModifyIORefCAS)
import Data.ProtoLens
import qualified Data.Text as T
import GHC.Stack
import Lens.Family2
import qualified Proto.Temporal.Api.Common.V1.Message as ProtoPayload
import qualified Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands as Command
import qualified Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields as Command
import qualified Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion as Core
import qualified Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields as Completion
import Temporal.Common
import qualified Temporal.Common.Logging as Logging
import Temporal.Payload (PayloadProcessor (..), convertFromProtoPayload, convertToProtoPayload)
import Temporal.Workflow.Internal.Monad
import Temporal.Workflow.Types
import UnliftIO


runInstanceM :: WorkflowInstance -> InstanceM a -> IO a
runInstanceM worker m = runReaderT (unInstanceM m) worker


flushCommands :: HasCallStack => InstanceM ()
flushCommands = do
  inst <- ask
  info <- readIORef inst.workflowInstanceInfo
  cmds <- atomically $ do
    currentCmds <- readTVar inst.workflowCommands
    writeTVar inst.workflowCommands $ Reversed []
    pure currentCmds
  encodedCmds <- liftIO $ traverse (encodeWorkflowCommand inst.payloadProcessor) (fromReversed cmds)
  let completionSuccessful :: Core.Success
      completionSuccessful = defMessage & Completion.commands .~ encodedCmds
      completionMessage :: Core.WorkflowActivationCompletion
      completionMessage =
        defMessage
          & Completion.runId .~ rawRunId info.runId
          & Completion.successful .~ completionSuccessful
  Logging.logDebug ("flushCommands: " <> T.pack (show completionMessage) <> " " <> T.pack (prettyCallStack callStack))
  res <- liftIO $ inst.workflowCompleteActivation completionMessage
  case res of
    Left err -> do
      Logging.logError ("flushCommands: failed: " <> T.pack (show err))
      throwIO err
    Right () -> pure ()


encodeProtoPayload :: PayloadProcessor -> ProtoPayload.Payload -> IO ProtoPayload.Payload
encodeProtoPayload processor =
  fmap convertToProtoPayload . payloadProcessorEncode processor . convertFromProtoPayload


encodeProtoPayloads :: Traversable f => PayloadProcessor -> f ProtoPayload.Payload -> IO (f ProtoPayload.Payload)
encodeProtoPayloads processor = traverse (encodeProtoPayload processor)


encodeWorkflowCommand :: PayloadProcessor -> Command.WorkflowCommand -> IO Command.WorkflowCommand
encodeWorkflowCommand processor cmd = do
  variant' <- traverse (encodeCommandVariant processor) (cmd ^. Command.maybe'variant)
  pure (cmd & Command.maybe'variant .~ variant')


encodeCommandVariant :: PayloadProcessor -> Command.WorkflowCommand'Variant -> IO Command.WorkflowCommand'Variant
encodeCommandVariant processor = \case
  Command.WorkflowCommand'ScheduleActivity act -> do
    args <- encodeProtoPayloads processor (act ^. Command.vec'arguments)
    pure $ Command.WorkflowCommand'ScheduleActivity (act & Command.vec'arguments .~ args)
  Command.WorkflowCommand'ScheduleLocalActivity act -> do
    args <- encodeProtoPayloads processor (act ^. Command.vec'arguments)
    hdrs <- encodeProtoPayloads processor (act ^. Command.headers)
    pure $
      Command.WorkflowCommand'ScheduleLocalActivity
        ( act
            & Command.vec'arguments .~ args
            & Command.headers .~ hdrs
        )
  Command.WorkflowCommand'StartChildWorkflowExecution child -> do
    inp <- encodeProtoPayloads processor (child ^. Command.vec'input)
    memo' <- encodeProtoPayloads processor (child ^. Command.memo)
    pure $
      Command.WorkflowCommand'StartChildWorkflowExecution
        ( child
            & Command.vec'input .~ inp
            & Command.memo .~ memo'
        )
  Command.WorkflowCommand'SignalExternalWorkflowExecution sig -> do
    args <- encodeProtoPayloads processor (sig ^. Command.vec'args)
    pure $ Command.WorkflowCommand'SignalExternalWorkflowExecution (sig & Command.vec'args .~ args)
  Command.WorkflowCommand'ScheduleNexusOperation nexus -> do
    inp <- encodeProtoPayloads processor (nexus ^. Command.maybe'input)
    pure $ Command.WorkflowCommand'ScheduleNexusOperation (nexus & Command.maybe'input .~ inp)
  Command.WorkflowCommand'RespondToQuery qry -> do
    variant' <- case qry ^. Command.maybe'variant of
      Nothing -> pure Nothing
      Just (Command.QueryResult'Succeeded s) -> do
        resp <- encodeProtoPayload processor (s ^. Command.response)
        pure $ Just $ Command.QueryResult'Succeeded (s & Command.response .~ resp)
      Just (Command.QueryResult'Failed f) ->
        pure $ Just (Command.QueryResult'Failed f)
    pure $ Command.WorkflowCommand'RespondToQuery (qry & Command.maybe'variant .~ variant')
  Command.WorkflowCommand'UpdateResponse upd -> do
    resp' <- case upd ^. Command.maybe'response of
      Nothing -> pure Nothing
      Just (Command.UpdateResponse'Accepted a) ->
        pure $ Just (Command.UpdateResponse'Accepted a)
      Just (Command.UpdateResponse'Rejected r) ->
        pure $ Just (Command.UpdateResponse'Rejected r)
      Just (Command.UpdateResponse'Completed p) -> do
        p' <- encodeProtoPayload processor p
        pure $ Just (Command.UpdateResponse'Completed p')
    pure $ Command.WorkflowCommand'UpdateResponse (upd & Command.maybe'response .~ resp')
  Command.WorkflowCommand'CompleteWorkflowExecution comp -> do
    res <- encodeProtoPayload processor (comp ^. Command.result)
    pure $ Command.WorkflowCommand'CompleteWorkflowExecution (comp & Command.result .~ res)
  Command.WorkflowCommand'ContinueAsNewWorkflowExecution cont -> do
    args <- encodeProtoPayloads processor (cont ^. Command.vec'arguments)
    memo' <- encodeProtoPayloads processor (cont ^. Command.memo)
    pure $
      Command.WorkflowCommand'ContinueAsNewWorkflowExecution
        ( cont
            & Command.vec'arguments .~ args
            & Command.memo .~ memo'
        )
  v@(Command.WorkflowCommand'StartTimer _) -> pure v
  v@(Command.WorkflowCommand'RequestCancelActivity _) -> pure v
  v@(Command.WorkflowCommand'CancelTimer _) -> pure v
  v@(Command.WorkflowCommand'FailWorkflowExecution _) -> pure v
  v@(Command.WorkflowCommand'CancelWorkflowExecution _) -> pure v
  v@(Command.WorkflowCommand'SetPatchMarker _) -> pure v
  v@(Command.WorkflowCommand'CancelChildWorkflowExecution _) -> pure v
  v@(Command.WorkflowCommand'RequestCancelExternalWorkflowExecution _) -> pure v
  v@(Command.WorkflowCommand'CancelSignalWorkflow _) -> pure v
  v@(Command.WorkflowCommand'RequestCancelLocalActivity _) -> pure v
  v@(Command.WorkflowCommand'UpsertWorkflowSearchAttributes _) -> pure v
  v@(Command.WorkflowCommand'ModifyWorkflowProperties _) -> pure v
  v@(Command.WorkflowCommand'RequestCancelNexusOperation _) -> pure v


nextExternalCancelSequence :: InstanceM Sequence
nextExternalCancelSequence = do
  inst <- ask
  liftIO $ atomicModifyIORefCAS inst.workflowSequences $ \seqs ->
    let seq' = externalCancel seqs
    in (seqs {externalCancel = succ seq'}, Sequence seq')


nextChildWorkflowSequence :: InstanceM Sequence
nextChildWorkflowSequence = do
  inst <- ask
  liftIO $ atomicModifyIORefCAS inst.workflowSequences $ \seqs ->
    let seq' = childWorkflow seqs
    in (seqs {childWorkflow = succ seq'}, Sequence seq')


nextExternalSignalSequence :: InstanceM Sequence
nextExternalSignalSequence = do
  inst <- ask
  liftIO $ atomicModifyIORefCAS inst.workflowSequences $ \seqs ->
    let seq' = externalSignal seqs
    in (seqs {externalSignal = succ seq'}, Sequence seq')


nextTimerSequence :: InstanceM Sequence
nextTimerSequence = do
  inst <- ask
  liftIO $ atomicModifyIORefCAS inst.workflowSequences $ \seqs ->
    let seq' = timer seqs
    in (seqs {timer = succ seq'}, Sequence seq')


nextActivitySequence :: InstanceM Sequence
nextActivitySequence = do
  inst <- ask
  liftIO $ atomicModifyIORefCAS inst.workflowSequences $ \seqs ->
    let seq' = activity seqs
    in (seqs {activity = succ seq'}, Sequence seq')


nextConditionSequence :: InstanceM Sequence
nextConditionSequence = do
  inst <- ask
  liftIO $ atomicModifyIORefCAS inst.workflowSequences $ \seqs ->
    let seq' = condition seqs
    in (seqs {condition = succ seq'}, Sequence seq')


nextNexusOperationSequence :: InstanceM Sequence
nextNexusOperationSequence = do
  inst <- ask
  liftIO $ atomicModifyIORefCAS inst.workflowSequences $ \seqs ->
    let seq' = nexusOperation seqs
    in (seqs {nexusOperation = succ seq'}, Sequence seq')
