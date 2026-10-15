{-# LANGUAGE CPP #-}
{-# LANGUAGE OverloadedStrings #-}

module Temporal.WorkflowInstance (
  WorkflowInstance,
  Info (..),
  RootExecution (..),
  WorkflowExecutionContext (..),
  workflowExecutionContextKey,
  create,
  activate,
  addCommand,
  nextActivitySequence,
  nextChildWorkflowSequence,
  nextExternalCancelSequence,
  nextExternalSignalSequence,
  nextTimerSequence,
  nextConditionSequence,
  nextNexusOperationSequence,
  addBuiltinQueryHandlers,
) where

import Control.Applicative
import qualified Control.Exception as E
import Control.Monad
import qualified Control.Monad.Catch as Catch
import Control.Monad.Logger
import Control.Monad.Reader
import qualified Data.Aeson as Aeson


#if __GLASGOW_HASKELL__ < 910
import Data.Foldable (foldl', for_, traverse_)
#else
import Data.Foldable (for_, traverse_)
#endif
import Data.Functor.Identity
import qualified Data.HashMap.Strict as HashMap
import Data.Maybe (isJust, mapMaybe)
import Data.Monoid (Endo (..))
import Data.ProtoLens
import Data.Proxy
import Data.Set (Set)
import qualified Data.Set as Set
import qualified Data.Text as Text
import Data.Time.Clock.System (SystemTime (..))
import Data.Vault.Strict (Vault)
import qualified Data.Vault.Strict as Vault
import Data.Vector (Vector)
import qualified Data.Vector as V
import Data.Version (showVersion)
import GHC.IO (unsafePerformIO)
import GHC.Stack (HasCallStack, emptyCallStack, getCallStack)
import qualified GHC.Stack
import Lens.Family2
import Paths_temporal_sdk (version)
import qualified Proto.Temporal.Api.Common.V1.Message_Fields as Message
import qualified Proto.Temporal.Api.Failure.V1.Message_Fields as F
import qualified Proto.Temporal.Api.Failure.V1.Message_Fields as Failure
import Proto.Temporal.Sdk.Core.ChildWorkflow.ChildWorkflow (
  StartChildWorkflowExecutionFailedCause (..),
 )
import Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation (
  CancelWorkflow,
  DoUpdate,
  FireTimer,
  InitializeWorkflow,
  NotifyHasPatch,
  QueryWorkflow,
  ResolveActivity,
  ResolveChildWorkflowExecution,
  ResolveChildWorkflowExecutionStart,
  ResolveChildWorkflowExecutionStart'Status (..),
  ResolveNexusOperation,
  ResolveNexusOperationStart,
  ResolveNexusOperationStart'Status (..),
  ResolveRequestCancelExternalWorkflow,
  ResolveSignalExternalWorkflow,
  SignalWorkflow,
  UpdateRandomSeed,
  WorkflowActivation,
  WorkflowActivationJob,
  WorkflowActivationJob'Variant (..),
 )
import qualified Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields as Activation
import qualified Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands as Command
import qualified Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands_Fields as Command
import qualified Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion as Completion
import qualified Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields as Completion
import RequireCallStack (provideCallStack)
import System.Random (mkStdGen)
import Temporal.Common
import Temporal.Common.Async (asyncLabelled)
import qualified Temporal.Common.Logging as Logging
import qualified Temporal.Core.Worker as Core
import Temporal.Coroutine
import Temporal.Duration
import Temporal.Exception
import qualified Temporal.Exception as Err
import Temporal.Payload
import Temporal.SearchAttributes.Internal
import Temporal.Workflow.Eval (ActivationResult (..), SuspendableWorkflowExecution, injectWorkflowSignalOrUpdate, rethrowAsyncExceptions, runWorkflow)
import Temporal.Workflow.Internal.Instance
import Temporal.Workflow.Internal.Monad
import Temporal.Workflow.Internal.Payload
import Temporal.Workflow.Types
import UnliftIO


{- | Restores an instance's ambient execution context around one activation.

Interceptors install this in the per-instance vault. The workflow executor uses
it whenever a later activation resumes the saved continuation.
-}
newtype WorkflowExecutionContext = WorkflowExecutionContext
  { runWorkflowExecutionContext :: forall a. IO a -> IO a
  }


workflowExecutionContextKey :: Vault.Key WorkflowExecutionContext
workflowExecutionContextKey = unsafePerformIO Vault.newKey
{-# NOINLINE workflowExecutionContextKey #-}


create
  :: (HasCallStack, MonadLoggerIO m)
  => (Core.WorkflowActivationCompletion -> IO (Either Core.WorkerError ()))
  -> (Vector Payload -> IO (Either String (Workflow Payload)))
  -> Maybe Int
  -- ^ Deadlock timeout, in microseconds.
  -> [ApplicationFailureHandler]
  -> WorkflowInboundInterceptor
  -> WorkflowOutboundInterceptor
  -> Vault
  -> PayloadProcessor
  -> Info
  -> InitializeWorkflow
  -> [SignalWorkflow]
  -- ^ Signals delivered with the start job, buffered before the workflow body runs.
  -> m (WorkflowInstance, IO ())
create
  workflowCompleteActivation
  workflowFn
  workflowDeadlockTimeout
  errorConverters
  inboundInterceptor
  outboundInterceptor
  baseWorkflowVault
  payloadProcessor
  info
  start
  initialSignals = do
    Logging.logDebug "Instantiating workflow instance"
    workflowInstanceLogger <- askLoggerIO
    workflowRandomnessSeed <- WorkflowGenM <$> newIORef (mkStdGen 0)
    workflowNotifiedPatches <- newIORef mempty
    workflowMemoizedPatches <- newIORef mempty
    workflowSequences <-
      newIORef
        Sequences
          { externalCancel = 1
          , childWorkflow = 1
          , externalSignal = 1
          , timer = 1
          , activity = 1
          , condition = 1
          , varId = 1
          , nexusOperation = 1
          }
    workflowTime <- newIORef $ MkSystemTime 0 0
    workflowIsReplaying <- newIORef False
    workflowSequenceMaps <- newTVarIO $ SequenceMaps mempty mempty mempty mempty mempty mempty mempty
    workflowCommands <- newTVarIO $ Reversed []
    workflowSignalHandlers <- newIORef mempty
    workflowBufferedSignals <- newIORef mempty
    workflowQueryHandlers <- newIORef mempty
    workflowCallStack <- newIORef emptyCallStack
    workflowIVarCounter <- newIORef 1
    workflowBlockedStacks <- newIORef mempty
    workflowUpdateHandlers <- newIORef mempty
    workflowInstanceInfo <- newIORef info
    workflowInstanceContinuationEnv <- ContinuationEnv <$> newIORef JobNil
    workflowCancellationVar <- newIVar
    workflowVault <- newIORef baseWorkflowVault
    workflowFinalized <- newIORef False
    activationChannel <- newTQueueIO
    executionThread <- newIORef (error "Workflow thread not yet started")
    executionCancelled <- newIORef False
    -- The instance must be fully initialized and published before its executor
    -- starts. Delaying the fork also ensures an exception during registration
    -- cannot leave a worker thread blocked forever without an owner.
    let inst = WorkflowInstance {..}
        startWorker = E.mask_ $ do
          workerThread <-
            asyncLabelled ("temporal/workflow/executor/" <> Text.unpack (rawRunId info.runId)) $ do
              result <-
                E.try @SomeException $
                  runInstanceM inst $ do
                    decodedStart <- liftIO $ decodeInitialization inst.payloadProcessor start
                    decodedSignals <- liftIO $ traverse (decodeSignal inst.payloadProcessor) initialSignals
                    exec <- setUpWorkflowExecution decodedStart
                    res <-
                      liftIO $
                        interceptWorkflow inboundInterceptor exec $ \exec' ->
                          runInstanceM inst $ runTopLevel $ do
                            Logging.logDebug "Executing workflow"
                            wf <- applyStartWorkflow decodedSignals exec' workflowFn
                            runWorkflowToCompletion wf
                    finishWorkflow res
              case result of
                Left err -> do
                  cancelled <- readIORef executionCancelled
                  case (cancelled, E.fromException err :: Maybe E.SomeAsyncException) of
                    (True, _) -> pure ()
                    (_, Just _) -> E.throwIO err
                    _ -> do
                      -- An inbound interceptor can fail outside 'runTopLevel',
                      -- so no 'finishWorkflow' call would otherwise publish the
                      -- failure to lifecycle observers before eviction.
                      finalizeWorkflowExecution inboundInterceptor inst (Just $ WorkflowExitFailed err)
                      runInstanceM inst $ failWorkflowActivation err
                Right () -> pure ()
          writeIORef executionThread workerThread
          link workerThread
    pure (inst, startWorker)


failWorkflowActivation :: SomeException -> InstanceM ()
failWorkflowActivation err = do
  Logging.logWarn ("Failed activation on workflow: " <> Text.pack (show err))
  inst <- ask
  info <- liftIO $ readIORef inst.workflowInstanceInfo
  let failure =
        defMessage
          & Completion.failure .~ (defMessage & Failure.message .~ Text.pack (show err))
      completion =
        defMessage
          & Completion.runId .~ rawRunId info.runId
          & Completion.failed .~ failure
  liftIO (inst.workflowCompleteActivation completion >>= either throwIO pure)


finishWorkflow :: WorkflowExitVariant Payload -> InstanceM ()
finishWorkflow res = do
  inst <- ask
  Logging.logDebug "Workflow execution completed"
  addCommand =<< convertExitVariantToCommand res
  -- Encoding must succeed before finalizers observe success, and finalizers
  -- must finish before publication makes the result observable.
  completion <- prepareCompletion
  liftIO $ finalizeWorkflowExecution inst.inboundInterceptor inst (Just res)
  publishCompletion completion
  Logging.logDebug "Handling leftover queries"
  handleQueriesAfterCompletion


runWithWorkflowExecutionContext :: WorkflowInstance -> InstanceM a -> InstanceM a
runWithWorkflowExecutionContext inst action = do
  vault <- liftIO $ readIORef inst.workflowVault
  case Vault.lookup workflowExecutionContextKey vault of
    Nothing -> action
    Just WorkflowExecutionContext {runWorkflowExecutionContext} ->
      liftIO $ runWorkflowExecutionContext $ runInstanceM inst action


-- Processor IO runs outside these timed execution sections.
withWatchdog :: WorkflowInstance -> InstanceM a -> InstanceM a
withWatchdog inst action = case inst.workflowDeadlockTimeout of
  Nothing -> action
  Just budget -> do
    UnliftIO.timeout budget action >>= \case
      Nothing -> throwIO $ LogicBug WorkflowActivationDeadlock
      Just result -> pure result


runWorkflowToCompletion :: HasCallStack => SuspendableWorkflowExecution Payload -> InstanceM Payload
runWorkflowToCompletion wf = do
  inst <- ask
  let resumeWithDeadline current = withWatchdog inst $ resume current
      completeStep suspension = do
        Logging.logDebug "Awaiting activation results from workflow"
        activation <- join $ atomically $ do
          mActivation <- tryReadTQueue inst.activationChannel
          case mActivation of
            Nothing -> do
              pure $ do
                flushCommands
                atomically $ readTQueue inst.activationChannel
            Just act -> pure $ pure act
        runWithWorkflowExecutionContext inst $ do
          decoded <- liftIO $ decodeActivation inst.payloadProcessor activation
          runIdentity <$> activate decoded (Identity suspension)

      runSteps current = do
        step <- resumeWithDeadline current
        case step of
          Right result -> pure result
          Left suspension -> completeStep suspension >>= runSteps
  runSteps wf


{- | Handle queries received after workflow completion until eviction cancels
the instance executor.

Each completed query flushes its response before the next activation. Cancellation
may still interrupt a query that is in progress during eviction.
-}
handleQueriesAfterCompletion :: InstanceM ()
handleQueriesAfterCompletion = forever $ do
  inst <- ask
  activation <- atomically $ readTQueue inst.activationChannel
  completion <- runWithWorkflowExecutionContext inst $ UnliftIO.try $ do
    decoded <- liftIO $ decodeActivation inst.payloadProcessor activation
    void $ activate decoded Proxy
    prepareCompletion
  case completion of
    Left err -> do
      Logging.logDebug ("Workflow failure: " <> Text.pack (show err))
      let appFailure = mkApplicationFailure err inst.errorConverters
          enrichedApplicationFailure = applicationFailureToFailureProto appFailure

          failureProto :: Completion.Failure
          failureProto = defMessage & Completion.failure .~ enrichedApplicationFailure

          completionMessage =
            defMessage
              & Completion.runId .~ (activation ^. Activation.runId)
              & Completion.failed .~ failureProto
      liftIO (inst.workflowCompleteActivation completionMessage >>= either throwIO pure)
    -- Let the executor handle publication failures.
    Right prepared -> publishCompletion prepared


isBuiltinQuery :: Text.Text -> Bool
isBuiltinQuery name =
  "__stack_trace" == name
    || "__enhanced_stack_trace" == name
    || "__temporal_workflow_metadata" == name
    || "__temporal_" `Text.isPrefixOf` name


{- | Register built-in query handlers on a workflow instance.

These are the special queries that all Temporal SDKs provide:

  * @__stack_trace@ — returns a human-readable call stack (used by the Temporal UI)
  * @__enhanced_stack_trace@ — returns structured stack trace with SDK info
  * @__temporal_workflow_metadata@ — returns the workflow type and registered handler definitions
-}
addBuiltinQueryHandlers :: WorkflowInstance -> IO ()
addBuiltinQueryHandlers inst = do
  modifyIORef' inst.workflowQueryHandlers $ \handlers ->
    HashMap.insert (Just "__stack_trace") stackTraceHandler
      . HashMap.insert (Just "__enhanced_stack_trace") enhancedStackTraceHandler
      . HashMap.insert (Just "__temporal_workflow_metadata") workflowMetadataHandler
      $ handlers
  where
    stackTraceHandler _ _ _ = do
      stacks <- readIORef inst.workflowBlockedStacks
      formatted <- case HashMap.elems stacks of
        [] -> do
          cs <- readIORef inst.workflowCallStack
          pure $ Text.pack $ Temporal.Exception.prettyCallStack cs
        css ->
          pure $ Text.intercalate "\n\n" $ fmap (Text.pack . Temporal.Exception.prettyCallStack) css
      Right <$> Temporal.Payload.encode JSON formatted

    enhancedStackTraceHandler _ _ _ = do
      blockedStacks <- readIORef inst.workflowBlockedStacks
      css <- case HashMap.elems blockedStacks of
        [] -> do
          cs <- readIORef inst.workflowCallStack
          pure [cs]
        xs -> pure xs
      let stacksJson = fmap (\cs -> Aeson.object ["locations" Aeson..= fmap stackFrameToJSON (getCallStack cs)]) css
          stackObj =
            Aeson.object
              [ "sdk" Aeson..= Aeson.object ["name" Aeson..= ("haskell" :: Text.Text), "version" Aeson..= sdkVersion]
              , "stacks" Aeson..= stacksJson
              , "sources" Aeson..= Aeson.object []
              ]
      Right <$> Temporal.Payload.encode JSON stackObj

    stackFrameToJSON (fnName, srcLoc) =
      Aeson.object
        [ "file_path" Aeson..= GHC.Stack.srcLocFile srcLoc
        , "function_name" Aeson..= fnName
        , "line" Aeson..= GHC.Stack.srcLocStartLine srcLoc
        , "column" Aeson..= GHC.Stack.srcLocStartCol srcLoc
        , "internal_code" Aeson..= False
        ]

    workflowMetadataHandler _ _ _ = do
      wfInfo <- readIORef inst.workflowInstanceInfo
      queryHandlers <- readIORef inst.workflowQueryHandlers
      signalHandlers <- readIORef inst.workflowSignalHandlers
      updateHandlers <- readIORef inst.workflowUpdateHandlers
      let queryDefs = handlerDefsFromKeys queryHandlers
          signalDefs = handlerDefsFromKeys signalHandlers
          updateDefs = handlerDefsFromKeys updateHandlers
          metadataObj =
            Aeson.object
              [ "definition"
                  Aeson..= Aeson.object
                    [ "type" Aeson..= rawWorkflowType wfInfo.workflowType
                    , "queryDefinitions" Aeson..= queryDefs
                    , "signalDefinitions" Aeson..= signalDefs
                    , "updateDefinitions" Aeson..= updateDefs
                    ]
              ]
      Right <$> Temporal.Payload.encode JSON metadataObj

    handlerDefsFromKeys :: HashMap.HashMap (Maybe Text.Text) v -> [Aeson.Value]
    handlerDefsFromKeys m =
      mapMaybe
        (fmap (\name -> Aeson.object ["name" Aeson..= name]))
        (HashMap.keys m)

    sdkVersion :: Text.Text
    sdkVersion = Text.pack (showVersion version)


{- | Apply an activation.

__NOTE__: Payloads must have already been decoded by 'decodeActivation', and
any associated payload processor IO must have run before this function is
called so that it won't count towards workflow execution timeout.
-}
activate
  :: Functor f
  => WorkflowActivation
  -> f (Await [ActivationResult] (SuspendableWorkflowExecution Payload))
  -> InstanceM (f (SuspendableWorkflowExecution Payload))
activate act suspension = do
  inst <- ask
  _ <- atomicModifyIORef' inst.workflowInstanceInfo $ \info ->
    let info' =
          info
            { historyLength = act ^. Activation.historyLength
            , continueAsNewSuggested = act ^. Activation.continueAsNewSuggested
            }
    in (info', info')
  writeIORef inst.workflowTime (act ^. Activation.timestamp . to timespecFromTimestamp)
  writeIORef inst.workflowIsReplaying (act ^. Activation.isReplaying)
  eResult <- withWatchdog inst $ applyJobs (act ^. Activation.vec'jobs) suspension
  either throwIO pure eResult


-- | Initialize workflow state from inputs that have already been decoded.
setUpWorkflowExecution :: InitializeWorkflow -> InstanceM ExecuteWorkflowInput
setUpWorkflowExecution initializeWorkflow = do
  inst <- ask
  let (WorkflowGenM genRef) = inst.workflowRandomnessSeed
  writeIORef genRef (mkStdGen $ fromIntegral $ initializeWorkflow ^. Activation.randomnessSeed)
  writeIORef inst.workflowTime (initializeWorkflow ^. Activation.startTime . to timespecFromTimestamp)
  info <- readIORef inst.workflowInstanceInfo

  let hdrs = fmap convertFromProtoPayload (initializeWorkflow ^. Activation.headers)
      decodedInfo = info {headers = hdrs, rawMemo = fmap convertFromProtoPayload (initializeWorkflow ^. Activation.memo . Message.fields)}
  writeIORef inst.workflowInstanceInfo decodedInfo
  pure $
    ExecuteWorkflowInput
      { executeWorkflowInputType = WorkflowType (initializeWorkflow ^. Activation.workflowType)
      , executeWorkflowInputArgs = fmap convertFromProtoPayload (initializeWorkflow ^. Command.vec'arguments)
      , executeWorkflowInputHeaders = hdrs
      , executeWorkflowInputInfo = decodedInfo
      , executeWorkflowInputVault = inst.workflowVault
      }


applyStartWorkflow :: [SignalWorkflow] -> ExecuteWorkflowInput -> (Vector Payload -> IO (Either String (Workflow Payload))) -> InstanceM (SuspendableWorkflowExecution Payload)
applyStartWorkflow initialSignals execInput workflowFn = do
  inst <- ask
  let executeWorkflowBase input = runInstanceM inst $ do
        Logging.logInfo $
          Text.concat
            [ "Starting workflow: "
            , "namespace="
            , rawNamespace input.executeWorkflowInputInfo.namespace
            , " "
            , "taskQueue="
            , rawTaskQueue input.executeWorkflowInputInfo.taskQueue
            , " "
            , "workflowType="
            , rawWorkflowType input.executeWorkflowInputType
            , " "
            , "workflowId="
            , rawWorkflowId input.executeWorkflowInputInfo.workflowId
            ]
        eAct <- liftIO (workflowFn input.executeWorkflowInputArgs)
        case eAct of
          Left msg -> do
            Logging.logError $ Text.pack ("Failed to decode workflow arguments: " <> msg)
            throwIO (ValueError msg)
          Right act -> do
            Logging.logDebug "Calling runWorkflow"
            -- Apply any signals that arrived with the start job before running the
            -- workflow body.
            --
            -- No handler is registered yet, so they land in the signal buffer,
            -- which setSignalHandler drains when the body installs its handler.
            --
            -- Safe on replay: the first activation carries the same signals,
            -- and buffering emits no commands.
            pure . runWorkflow $ traverse_ applySignalWorkflow initialSignals *> act
  liftIO $ executeWorkflowBase execInput


applyUpdateRandomSeed :: UpdateRandomSeed -> InstanceM ()
applyUpdateRandomSeed updateRandomSeed = do
  inst <- ask
  let (WorkflowGenM genRef) = inst.workflowRandomnessSeed
  writeIORef genRef (mkStdGen $ fromIntegral $ updateRandomSeed ^. Activation.randomnessSeed)


applyQueryWorkflow :: HasCallStack => QueryWorkflow -> InstanceM ()
applyQueryWorkflow queryWorkflow = do
  inst <- ask
  instInfo <- readIORef inst.workflowInstanceInfo
  handles <- readIORef inst.workflowQueryHandlers
  Logging.logDebug $ Text.pack ("Applying query: " <> show (queryWorkflow ^. Activation.queryType))
  let args = convertFromProtoPayload <$> queryWorkflow ^. Command.vec'arguments
      hdrs = convertFromProtoPayload <$> queryWorkflow ^. Activation.headers
  let baseInput =
        HandleQueryInput
          { handleQueryId = QueryId (queryWorkflow ^. Activation.queryId)
          , handleQueryInputType = queryWorkflow ^. Activation.queryType
          , handleQueryInputArgs = args
          , handleQueryInputHeaders = hdrs
          , handleQueryWorkflowInfo = instInfo
          }
      lookupHandler input =
        let handlerOrDefault =
              HashMap.lookup (Just input.handleQueryInputType) handles
                <|> HashMap.lookup Nothing handles
        in case handlerOrDefault of
            Nothing -> do
              pure $ Left $ toException $ QueryNotFound $ Text.unpack input.handleQueryInputType
            Just h ->
              liftIO $
                h
                  input.handleQueryId
                  input.handleQueryInputArgs
                  input.handleQueryInputHeaders
  res <-
    if isBuiltinQuery (queryWorkflow ^. Activation.queryType)
      then liftIO $ lookupHandler baseInput
      else liftIO $ inst.inboundInterceptor.handleQuery baseInput lookupHandler
  let cmd = case res of
        -- TODO, more useful error message
        Left err ->
          defMessage
            & Command.queryId .~ rawQueryId baseInput.handleQueryId
            & Command.failed .~ (defMessage & F.message .~ Text.pack (show err))
        Right ok ->
          defMessage
            & Command.queryId .~ rawQueryId baseInput.handleQueryId
            & Command.succeeded .~ (defMessage & Command.response .~ convertToProtoPayload ok)
  addCommand $ defMessage & Command.respondToQuery .~ cmd


applySignalWorkflow :: SignalWorkflow -> Workflow ()
applySignalWorkflow signalWorkflow = join $ do
  Workflow $ \_ -> do
    inst <- ask
    handlers <- readIORef inst.workflowSignalHandlers
    let signalName = signalWorkflow ^. Activation.signalName
        handlerOrDefault =
          HashMap.lookup (Just signalName) handlers
            <|> HashMap.lookup Nothing handlers
    let args = convertFromProtoPayload <$> signalWorkflow ^. Command.vec'input
    case handlerOrDefault of
      Nothing -> do
        -- Buffer the signal until a handler is registered.
        Logging.logDebug . Text.pack $ "Buffering signal (no handler registered yet): " <> show signalName
        liftIO . modifyIORef' inst.workflowBufferedSignals $
          HashMap.insertWith (flip (<>)) signalName (Endo (args :))
        pure . Done $ pure ()
      Just handler -> pure . Done $ do
        Logging.logDebug . Text.pack $ "Applying signal handler for signal: " <> show signalName
        handler args


applyDoUpdateWorkflow :: DoUpdate -> Workflow ()
applyDoUpdateWorkflow update = provideCallStack do
  acceptedAction <- ilift $ prepareUpdate update
  for_ acceptedAction $ \action -> do
    result <- Temporal.Workflow.Internal.Monad.try action
    Workflow $ \_env -> case result of
      Left err -> Throw err <$ rejectUpdate update err
      Right payload -> Done () <$ completeUpdate update payload


-- | Validate an update and enqueue its acceptance or rejection.
prepareUpdate :: DoUpdate -> InstanceM (Maybe (Workflow Payload))
prepareUpdate update = do
  inst <- ask
  info <- readIORef inst.workflowInstanceInfo
  handlers <- readIORef inst.workflowUpdateHandlers
  let name = update ^. Activation.name
      implementation =
        HashMap.lookup (Just name) handlers
          <|> HashMap.lookup Nothing handlers
  case implementation of
    Nothing -> do
      let message = Text.pack $ "No update handler found for update: " <> show name
      Logging.logWarn message
      rejectUpdate update . toException $ UpdateNotFound message
      pure Nothing
    Just handler -> do
      let input = mkHandleUpdateInput info
          action = inst.inboundInterceptor.handleUpdate input $ \intercepted ->
            handler.updateImplementation
              intercepted.handleUpdateId
              intercepted.handleUpdateInputArgs
              intercepted.handleUpdateInputHeaders
      runUpdateValidator inst input handler >>= \case
        Left err -> Nothing <$ rejectUpdate update err
        Right () -> Just action <$ acceptUpdate update
  where
    mkHandleUpdateInput :: Info -> HandleUpdateInput
    mkHandleUpdateInput info =
      HandleUpdateInput
        { handleUpdateId = UpdateId $ update ^. Activation.id
        , handleUpdateInputType = update ^. Activation.name
        , handleUpdateInputArgs = convertFromProtoPayload <$> update ^. Activation.vec'input
        , handleUpdateInputHeaders = convertFromProtoPayload <$> update ^. Activation.headers
        , handleUpdateWorkflowInfo = info
        }

    runUpdateValidator :: WorkflowInstance -> HandleUpdateInput -> WorkflowUpdateImplementation -> InstanceM (Either SomeException ())
    runUpdateValidator inst input handler =
      case (update ^. Activation.runValidator, handler.updateValidationImplementation) of
        (True, Just validator) -> do
          result <- UnliftIO.try . liftIO . inst.inboundInterceptor.validateUpdate input $ \intercepted ->
            unValidation $
              validator
                intercepted.handleUpdateId
                intercepted.handleUpdateInputArgs
                intercepted.handleUpdateInputHeaders
          pure $ join result
        _ -> pure $ Right ()


acceptUpdate :: DoUpdate -> InstanceM ()
acceptUpdate update =
  addCommand $
    defMessage
      & Command.updateResponse . Command.protocolInstanceId .~ (update ^. Activation.protocolInstanceId)
      & Command.updateResponse . Command.accepted .~ defMessage


rejectUpdate :: DoUpdate -> SomeException -> InstanceM ()
rejectUpdate update err = do
  inst <- ask
  addCommand $
    defMessage
      & Command.updateResponse . Command.protocolInstanceId .~ (update ^. Activation.protocolInstanceId)
      & Command.updateResponse . Command.rejected .~ applicationFailureToFailureProto (mkApplicationFailure err inst.errorConverters)


completeUpdate :: DoUpdate -> Payload -> InstanceM ()
completeUpdate update payload =
  addCommand $
    defMessage
      & Command.updateResponse . Command.protocolInstanceId .~ (update ^. Activation.protocolInstanceId)
      & Command.updateResponse . Command.completed .~ convertToProtoPayload payload


applyNotifyHasPatch :: NotifyHasPatch -> InstanceM ()
applyNotifyHasPatch notifyHasPatch = do
  inst <- ask
  let patches :: IORef (Set PatchId)
      patches = inst.workflowNotifiedPatches
  atomicModifyIORef' patches $ \patchSet -> (Set.insert (notifyHasPatch ^. Activation.patchId . to PatchId) patchSet, ())


data PendingJob
  = PendingJobResolveActivity ResolveActivity
  | PendingJobResolveChildWorkflowExecutionStart ResolveChildWorkflowExecutionStart
  | PendingJobResolveChildWorkflowExecution ResolveChildWorkflowExecution
  | PendingJobResolveSignalExternalWorkflow ResolveSignalExternalWorkflow
  | PendingJobResolveRequestCancelExternalWorkflow ResolveRequestCancelExternalWorkflow
  | PendingJobFireTimer FireTimer
  | PendingWorkflowCancellation CancelWorkflow
  | PendingJobResolveNexusOperationStart ResolveNexusOperationStart
  | PendingJobResolveNexusOperation ResolveNexusOperation


data JobGroups = JobGroups
  { patchNotifications :: !(InstanceM ())
  , updateWorkflows :: ![Workflow ()]
  , signalWorkflows :: ![Workflow ()]
  , queryWorkflows :: !(InstanceM ())
  , resolutions :: ![PendingJob]
  , otherJobs :: !(InstanceM ())
  }


applyJobs
  :: Functor f
  => Vector WorkflowActivationJob
  -- We use the functor here because we need to call applyJobs both before and after a workflow has completed.
  -- During workflow execution, identity is the functor, but after a workflow has completed, Proxy is the functor
  -- since we don't actually have any continuation to run.
  -> f (Await [ActivationResult] (SuspendableWorkflowExecution Payload))
  -> InstanceM (Either SomeException (f (SuspendableWorkflowExecution Payload)))
applyJobs jobs fAwait = UnliftIO.try $ do
  Logging.logDebug $ Text.pack ("Applying jobs: " <> show jobs)
  let JobGroups {..} = getJobGroups
  patchNotifications
  queryWorkflows
  otherJobs
  activationResults <- applyResolutions resolutions
  let activations = activationResults
  pure $
    ( \(Await wf) ->
        -- If we don't have any activations or signals, then no useful state could have changed.
        -- This happens when we receive non-resolving jobs like queries. If we reactivate
        -- the workflow, it will just block again, which we don't want, because it confuses
        -- the SDK core's state machine.

        case activations of
          [] -> case updateWorkflows ++ signalWorkflows of
            [] -> suspend (Await wf)
            jobs' -> lift (traverse injectWorkflowSignalOrUpdate jobs') *> wf []
          _ -> case updateWorkflows ++ signalWorkflows of
            [] -> wf activations
            jobs' -> lift (traverse injectWorkflowSignalOrUpdate jobs') *> wf activations
    )
      <$> fAwait
  where
    getJobGroups =
      V.foldr
        ( \job jobGroups -> case job ^. Activation.maybe'variant of
            Just (WorkflowActivationJob'NotifyHasPatch n) -> jobGroups {patchNotifications = applyNotifyHasPatch n *> jobGroups.patchNotifications}
            Just (WorkflowActivationJob'SignalWorkflow sig) -> jobGroups {signalWorkflows = applySignalWorkflow sig : jobGroups.signalWorkflows}
            Just (WorkflowActivationJob'QueryWorkflow q) -> jobGroups {queryWorkflows = applyQueryWorkflow q *> jobGroups.queryWorkflows}
            -- We collect these in bulk and resolve them in one go by pushing them into the completed queue. This reactivates the suspended workflow
            -- and it tries to execute further.
            Just (WorkflowActivationJob'FireTimer r) -> jobGroups {resolutions = PendingJobFireTimer r : jobGroups.resolutions}
            Just (WorkflowActivationJob'ResolveActivity r) -> jobGroups {resolutions = PendingJobResolveActivity r : jobGroups.resolutions}
            Just (WorkflowActivationJob'ResolveChildWorkflowExecutionStart r) -> jobGroups {resolutions = PendingJobResolveChildWorkflowExecutionStart r : jobGroups.resolutions}
            Just (WorkflowActivationJob'ResolveChildWorkflowExecution r) -> jobGroups {resolutions = PendingJobResolveChildWorkflowExecution r : jobGroups.resolutions}
            Just (WorkflowActivationJob'ResolveSignalExternalWorkflow r) -> jobGroups {resolutions = PendingJobResolveSignalExternalWorkflow r : jobGroups.resolutions}
            Just (WorkflowActivationJob'ResolveRequestCancelExternalWorkflow r) -> jobGroups {resolutions = PendingJobResolveRequestCancelExternalWorkflow r : jobGroups.resolutions}
            Just (WorkflowActivationJob'UpdateRandomSeed updateRandomSeed) -> jobGroups {otherJobs = jobGroups.otherJobs *> applyUpdateRandomSeed updateRandomSeed}
            Just (WorkflowActivationJob'CancelWorkflow cancelWorkflow) -> jobGroups {resolutions = PendingWorkflowCancellation cancelWorkflow : jobGroups.resolutions}
            -- By the time we get here, the workflow should already be running.
            Just (WorkflowActivationJob'InitializeWorkflow _initializeWorkflow) -> jobGroups
            -- Handled in the worker.
            Just (WorkflowActivationJob'RemoveFromCache _removeFromCache) -> jobGroups
            Just (WorkflowActivationJob'DoUpdate u) -> jobGroups {updateWorkflows = applyDoUpdateWorkflow u : jobGroups.updateWorkflows}
            Just (WorkflowActivationJob'ResolveNexusOperation r) -> jobGroups {resolutions = PendingJobResolveNexusOperation r : jobGroups.resolutions}
            Just (WorkflowActivationJob'ResolveNexusOperationStart r) -> jobGroups {resolutions = PendingJobResolveNexusOperationStart r : jobGroups.resolutions}
            Nothing -> E.throw $ RuntimeError "Uncrecognized workflow activation job variant"
        )
        ( JobGroups
            { patchNotifications = pure ()
            , updateWorkflows = []
            , signalWorkflows = []
            , queryWorkflows = pure ()
            , resolutions = []
            , otherJobs = pure ()
            }
        )
        jobs


applyResolutions :: [PendingJob] -> InstanceM [ActivationResult]
applyResolutions [] = pure []
applyResolutions rs = do
  inst <- ask
  atomically $ do
    sequenceMaps <- readTVar inst.workflowSequenceMaps
    let makeCompletion :: ([ActivationResult], SequenceMaps) -> PendingJob -> ([ActivationResult], SequenceMaps)
        makeCompletion (!completions, !sequenceMaps') pj = case pj of
          PendingJobResolveActivity msg -> do
            let existingIVar = HashMap.lookup (msg ^. Activation.seq . to Sequence) sequenceMaps'.activities
            case existingIVar of
              Nothing ->
                E.throw $ RuntimeError "Activity handle not found"
              Just existing ->
                ( ActivationResult (Ok msg) existing : completions
                , sequenceMaps'
                    { activities = HashMap.delete (msg ^. Activation.seq . to Sequence) sequenceMaps'.activities
                    }
                )
          PendingJobResolveChildWorkflowExecutionStart msg -> do
            let existingHandle = HashMap.lookup (msg ^. Activation.seq . to Sequence) sequenceMaps'.childWorkflows
            case existingHandle of
              Nothing ->
                E.throw $ RuntimeError "Child workflow not found"
              Just (SomeChildWorkflowHandle existing) -> case msg ^. Activation.maybe'status of
                Nothing ->
                  E.throw $ RuntimeError "Child workflow start did not have a known status"
                Just status -> case status of
                  ResolveChildWorkflowExecutionStart'Succeeded succeeded ->
                    ( ActivationResult (Ok ()) existing.startHandle
                        : ActivationResult (Ok (succeeded ^. Activation.runId . to RunId)) existing.firstExecutionRunId
                        : completions
                    , sequenceMaps'
                    )
                  ResolveChildWorkflowExecutionStart'Failed failed ->
                    let updatedMaps =
                          sequenceMaps'
                            { childWorkflows = HashMap.delete (msg ^. Activation.seq . to Sequence) sequenceMaps'.childWorkflows
                            }
                    in case failed ^. Activation.cause of
                        START_CHILD_WORKFLOW_EXECUTION_FAILED_CAUSE_WORKFLOW_ALREADY_EXISTS ->
                          let failure :: forall v. ResultVal v
                              failure =
                                ThrowWorkflow $
                                  toException $
                                    WorkflowAlreadyStarted
                                      { workflowAlreadyStartedWorkflowId = WorkflowId (failed ^. Activation.workflowId)
                                      , workflowAlreadyStartedWorkflowType = WorkflowType (failed ^. Activation.workflowType)
                                      }
                          in ( ActivationResult failure existing.startHandle
                                : ActivationResult failure existing.firstExecutionRunId
                                : completions
                             , updatedMaps
                             )
                        _ ->
                          ( ActivationResult
                              (ThrowInternal $ toException $ RuntimeError ("Unknown child workflow start failure: " <> show (failed ^. Activation.cause)))
                              existing.startHandle
                              : completions
                          , updatedMaps
                          )
                  ResolveChildWorkflowExecutionStart'Cancelled _cancelled ->
                    ( ActivationResult (Ok ()) existing.startHandle
                        : ActivationResult (ThrowWorkflow $ toException ChildWorkflowCancelled) existing.firstExecutionRunId
                        : ActivationResult (ThrowWorkflow $ toException ChildWorkflowCancelled) existing.resultHandle
                        : completions
                    , sequenceMaps'
                        { childWorkflows = HashMap.delete (msg ^. Activation.seq . to Sequence) sequenceMaps'.childWorkflows
                        }
                    )
          PendingWorkflowCancellation _ -> (ActivationResult (Ok ()) inst.workflowCancellationVar : completions, sequenceMaps')
          PendingJobResolveChildWorkflowExecution msg -> do
            let existingHandle = HashMap.lookup (msg ^. Activation.seq . to Sequence) sequenceMaps'.childWorkflows
            case existingHandle of
              Nothing -> E.throw $ RuntimeError "Child Workflow Execution not found"
              Just (SomeChildWorkflowHandle h) ->
                ( ActivationResult (Ok msg) h.resultHandle : completions
                , sequenceMaps'
                    { childWorkflows = HashMap.delete (msg ^. Activation.seq . to Sequence) sequenceMaps'.childWorkflows
                    }
                )
          PendingJobResolveSignalExternalWorkflow msg -> do
            let mresVar = HashMap.lookup (msg ^. Activation.seq . to Sequence) sequenceMaps'.externalSignals
            case mresVar of
              Nothing -> E.throw $ RuntimeError "External Signal IVar for sequence not found"
              Just resVar ->
                ( ActivationResult (Ok msg) resVar : completions
                , sequenceMaps'
                    { externalSignals = HashMap.delete (msg ^. Activation.seq . to Sequence) sequenceMaps'.externalSignals
                    }
                )
          PendingJobResolveRequestCancelExternalWorkflow msg -> do
            let mresVar = HashMap.lookup (msg ^. Activation.seq . to Sequence) sequenceMaps'.externalCancels
            case mresVar of
              Nothing -> E.throw $ RuntimeError "External Cancel IVar for sequence not found"
              Just resVar ->
                ( ActivationResult (Ok msg) resVar : completions
                , sequenceMaps'
                    { externalCancels = HashMap.delete (msg ^. Activation.seq . to Sequence) sequenceMaps'.externalCancels
                    }
                )
          PendingJobFireTimer msg -> do
            let existingIVar = HashMap.lookup (msg ^. Activation.seq . to Sequence) sequenceMaps'.timers
            case existingIVar of
              Nothing -> E.throw $ RuntimeError "Timer not found"
              Just existing ->
                ( ActivationResult (Ok ()) existing : completions
                , sequenceMaps'
                    { timers = HashMap.delete (msg ^. Activation.seq . to Sequence) sequenceMaps'.timers
                    }
                )
          PendingJobResolveNexusOperationStart msg -> do
            let existingHandles = HashMap.lookup (msg ^. Activation.seq . to Sequence) sequenceMaps'.nexusOperations
            case existingHandles of
              Nothing -> E.throw $ RuntimeError "Nexus operation not found for start resolution"
              Just handles -> case msg ^. Activation.maybe'status of
                Nothing -> E.throw $ RuntimeError "Nexus operation start had no status"
                Just (ResolveNexusOperationStart'OperationToken token) ->
                  ( ActivationResult (Ok (NexusOperationStartedAsync token)) handles.nexusStartHandle : completions
                  , sequenceMaps'
                  )
                Just (ResolveNexusOperationStart'StartedSync _) ->
                  ( ActivationResult (Ok NexusOperationStartedSync) handles.nexusStartHandle : completions
                  , sequenceMaps'
                  )
                Just (ResolveNexusOperationStart'Failed failure) ->
                  ( ActivationResult (ThrowWorkflow $ toException $ NexusOperationStartFailed (failure ^. Activation.message)) handles.nexusStartHandle
                      : ActivationResult (ThrowWorkflow $ toException $ NexusOperationStartFailed (failure ^. Activation.message)) handles.nexusResultHandle
                      : completions
                  , sequenceMaps'
                      { nexusOperations = HashMap.delete (msg ^. Activation.seq . to Sequence) sequenceMaps'.nexusOperations
                      }
                  )
          PendingJobResolveNexusOperation msg -> do
            let existingHandles = HashMap.lookup (msg ^. Activation.seq . to Sequence) sequenceMaps'.nexusOperations
            case existingHandles of
              Nothing -> E.throw $ RuntimeError "Nexus operation not found for result resolution"
              Just handles -> case msg ^. Activation.maybe'result of
                Nothing -> E.throw $ RuntimeError "Nexus operation resolution had no result"
                Just result ->
                  ( ActivationResult (Ok result) handles.nexusResultHandle : completions
                  , sequenceMaps'
                      { nexusOperations = HashMap.delete (msg ^. Activation.seq . to Sequence) sequenceMaps'.nexusOperations
                      }
                  )

    let (newCompletions, updatedSequenceMaps) = foldl' makeCompletion ([], sequenceMaps) rs
    writeTVar inst.workflowSequenceMaps updatedSequenceMaps
    pure newCompletions


convertExitVariantToCommand :: WorkflowExitVariant Payload -> InstanceM Command.WorkflowCommand
convertExitVariantToCommand variant = do
  inst <- ask
  case variant of
    WorkflowExitSuccess result ->
      pure $
        defMessage
          & Command.completeWorkflowExecution .~ (defMessage & Command.result .~ convertToProtoPayload result)
    WorkflowExitContinuedAsNew (ContinueAsNewException {..}) -> do
      i <- readIORef inst.workflowInstanceInfo
      searchAttrs <-
        liftIO $
          searchAttributesToProto
            ( if continueAsNewOptions.searchAttributes == mempty
                then i.searchAttributes
                else continueAsNewOptions.searchAttributes
            )
      let args = continueAsNewArguments
          memo = continueAsNewOptions.memo
      pure $
        defMessage
          & Command.continueAsNewWorkflowExecution
            .~ ( defMessage
                  & Command.workflowType .~ rawWorkflowType continueAsNewWorkflowType
                  & Command.taskQueue .~ maybe "" rawTaskQueue continueAsNewOptions.taskQueue
                  & Command.vec'arguments .~ fmap convertToProtoPayload args
                  & Command.maybe'retryPolicy .~ (retryPolicyToProto <$> continueAsNewOptions.retryPolicy)
                  & Command.searchAttributes .~ searchAttrs
                  & Command.headers .~ fmap convertToProtoPayload continueAsNewOptions.headers
                  & Command.memo .~ fmap convertToProtoPayload memo
                  & Command.maybe'workflowTaskTimeout .~ (durationToProto <$> continueAsNewOptions.taskTimeout)
                  & Command.maybe'workflowRunTimeout .~ (durationToProto <$> continueAsNewOptions.runTimeout)
               )
    WorkflowExitCancelled WorkflowCancelRequested -> do
      pure $ defMessage & Command.cancelWorkflowExecution .~ defMessage
    WorkflowExitFailed e | Just (actFailure :: ActivityFailure) <- fromException e -> do
      let appFailure = actFailure.cause
          enrichedApplicationFailure =
            defMessage
              & F.message .~ actFailure.message
              & F.source .~ "hs-temporal-sdk"
              & F.activityFailureInfo .~ actFailure.original
              & F.stackTrace .~ actFailure.stack
              & F.cause
                .~ ( defMessage
                      & F.message .~ appFailure.message
                      & F.source .~ "hs-temporal-sdk"
                      & F.stackTrace .~ appFailure.stack
                      & F.applicationFailureInfo
                        .~ ( defMessage
                              & F.type' .~ Err.type' appFailure
                              & F.nonRetryable .~ Err.nonRetryable appFailure
                           )
                   )
      pure $
        defMessage
          & Command.failWorkflowExecution
            .~ ( defMessage
                  & Command.failure .~ enrichedApplicationFailure
               )
    WorkflowExitFailed e -> do
      w <- ask
      let appFailure = mkApplicationFailure e w.errorConverters
          enrichedApplicationFailure = applicationFailureToFailureProto appFailure
      pure $
        defMessage
          & Command.failWorkflowExecution
            .~ ( defMessage
                  & Command.failure .~ enrichedApplicationFailure
               )


-- Note: this is intended to exclusively handle top-level workflow execution.
--
-- Don't use elsewhere.
workflowExitFromException :: SomeException -> WorkflowExitVariant a
workflowExitFromException err
  | Just continueAsNew <- E.fromException err = WorkflowExitContinuedAsNew continueAsNew
  | Just cancelled <- E.fromException err = WorkflowExitCancelled cancelled
  | otherwise = WorkflowExitFailed err


handleTopLevelException :: SomeException -> InstanceM (WorkflowExitVariant Payload)
handleTopLevelException err = do
  rethrowAsyncExceptions err
  when (isJust (E.fromException @PayloadProcessingFailure err)) $
    throwIO err
  -- SDK watchdog and invariant failures belong to the workflow task. Let the
  -- executor publish a failed activation instead of terminating the workflow.
  when (isJust (E.fromException @LogicBug err)) $
    throwIO err
  pure $ workflowExitFromException err


runTopLevel :: InstanceM Payload -> InstanceM (WorkflowExitVariant Payload)
runTopLevel m =
  (WorkflowExitSuccess <$> m)
    `Catch.catches` [Catch.Handler handleTopLevelException]
