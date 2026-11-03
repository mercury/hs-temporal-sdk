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
  prepareCompletion,
  publishCompletion,
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
import Data.Traversable (for)
import Data.ProtoLens
import qualified Data.Text as T
import GHC.Stack
import Lens.Family2
import qualified Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion as Core
import qualified Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields as Completion
import Temporal.Common
import qualified Temporal.Common.Logging as Logging
import Temporal.Workflow.Internal.Monad
import Temporal.Workflow.Internal.Payload
import Temporal.Workflow.Types
import UnliftIO


runInstanceM :: WorkflowInstance -> InstanceM a -> IO a
runInstanceM worker m = runReaderT (unInstanceM m) worker


flushCommands :: HasCallStack => InstanceM ()
flushCommands = prepareCompletion >>= publishCompletion


-- | Drain pending commands and encode a successful activation completion
-- __without__ publishing it.
--
-- The command buffer is cleared before encoding, and remains empty if encoding
-- fails.
prepareCompletion :: InstanceM Core.WorkflowActivationCompletion
prepareCompletion = do
  inst <- ask
  info <- readIORef inst.workflowInstanceInfo
  cmds <- atomically $ do
    currentCmds <- readTVar inst.workflowCommands
    writeTVar inst.workflowCommands $ Reversed []
    pure currentCmds
  encoded <- liftIO $ for (fromReversed cmds) (encodeCommand inst.payloadProcessor) 
  let completionSuccessful :: Core.Success
      completionSuccessful = defMessage & Completion.commands .~ encoded
      completionMessage :: Core.WorkflowActivationCompletion
      completionMessage =
        defMessage
          & Completion.runId .~ rawRunId info.runId
          & Completion.successful .~ completionSuccessful
  pure completionMessage


publishCompletion :: HasCallStack => Core.WorkflowActivationCompletion -> InstanceM ()
publishCompletion completionMessage = do
  inst <- ask
  Logging.logDebug $ "flushCommands: " <> T.pack (show completionMessage) <> " " <> T.pack (prettyCallStack callStack)
  res <- liftIO $ inst.workflowCompleteActivation completionMessage
  case res of
    Left err -> do
      Logging.logError $ "flushCommands: failed: " <> T.pack (show err)
      throwIO err
    Right () -> pure ()


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
