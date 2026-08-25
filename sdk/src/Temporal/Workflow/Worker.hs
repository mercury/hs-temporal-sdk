module Temporal.Workflow.Worker where

import qualified Control.Exception.Annotated as Ann
import Control.Monad
import Control.Monad.Catch (MonadCatch)
import Control.Monad.Logger
import Control.Monad.Reader
import Data.HashMap.Strict (HashMap)
import qualified Data.HashMap.Strict as HashMap
import Data.Maybe
import Data.ProtoLens
import Data.Text (Text)
import qualified Data.Text as Text
import Data.Vault.Strict (Vault)
import qualified Data.Vector as V
import qualified Focus
import Lens.Family2
import OpenTelemetry.Context.ThreadLocal ()
import OpenTelemetry.Trace.Core hiding (inSpan, inSpan')
import OpenTelemetry.Trace.Monad
import qualified Proto.Temporal.Api.Common.V1.Message_Fields as Message
import qualified Proto.Temporal.Api.Failure.V1.Message_Fields as F
import qualified Proto.Temporal.Sdk.Core.Common.Common_Fields as CommonProto
import Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation
import qualified Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields as Activation
import qualified Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion as Completion
import qualified Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields as Completion
import RequireCallStack
import qualified StmContainers.Map as StmMap
import Temporal.Common
import qualified Temporal.Common.Logging as Logging
import qualified Temporal.Core.Client as C
import Temporal.Core.Worker (InactiveForReplay)
import qualified Temporal.Core.Worker as Core
import Temporal.Duration (durationFromProto)
import qualified Temporal.Exception as Err
import Temporal.Payload
import Temporal.SearchAttributes.Internal
import Temporal.Workflow.Definition
import Temporal.Workflow.Internal.Instance (runInstanceM)
import Temporal.Workflow.Internal.Monad hiding (try)
import Temporal.WorkflowInstance
import UnliftIO


data EvictionWithRunID = EvictionWithRunID
  { runId :: RunId
  , eviction :: RemoveFromCache
  }
  deriving stock (Show)


data WorkflowWorker = forall ty.
  Core.KnownWorkerType ty =>
  WorkflowWorker
  { workerWorkflowFunctions :: {-# UNPACK #-} !(HashMap Text WorkflowDefinition)
  , runningWorkflows :: {-# UNPACK #-} !(StmMap.Map RunId WorkflowInstance)
  , workerClient :: InactiveForReplay ty C.Client
  , workerCore :: Core.Worker ty
  , workerInboundInterceptors :: {-# UNPACK #-} !WorkflowInboundInterceptor
  , workerOutboundInterceptors :: {-# UNPACK #-} !WorkflowOutboundInterceptor
  , workerDeadlockTimeout :: Maybe Int
  , workerTaskQueue :: TaskQueue
  , workerErrorConverters :: [Err.ApplicationFailureHandler]
  , processor :: {-# UNPACK #-} !PayloadProcessor
  , workerEvictionEmitter :: {-# UNPACK #-} !(TChan EvictionWithRunID)
  , workerVault :: {-# UNPACK #-} !Vault
  }


pollWorkflowActivation :: (MonadLoggerIO m) => ReaderT WorkflowWorker m (Either Core.WorkerError Core.WorkflowActivation)
pollWorkflowActivation = do
  WorkflowWorker {workerCore} <- ask
  liftIO $ Core.pollWorkflowActivation workerCore


upsertWorkflowInstance :: (MonadLoggerIO m) => RunId -> WorkflowInstance -> ReaderT WorkflowWorker m WorkflowInstance
upsertWorkflowInstance r inst = do
  worker <- ask
  liftIO $ atomically $ do
    let modifier =
          \case
            Nothing ->
              Just inst
            Just exists ->
              Just exists

    StmMap.focus (Focus.alter modifier >> Focus.lookupWithDefault inst) r worker.runningWorkflows


-- | Execute an action repeatedly as long as it returns True.
whileM_ :: (Monad m) => m Bool -> m ()
whileM_ p = go
  where
    go = do
      x <- p
      when x go


{- | Execute this worker until poller shutdown or failure. If there is a failure, this may
need to be called a second time after shutdown initiated to ensure workflow activations
are drained.

The Async handle only completes successfully on poller shutdown.
-}
execute :: (MonadLoggerIO m, MonadUnliftIO m, MonadCatch m, MonadTracer m, RequireCallStack) => WorkflowWorker -> m ()
execute worker = flip runReaderT worker $ do
  Logging.logDebug "Starting workflow worker"
  whileM_ go
  where
    go = inSpan' "Workflow activation step" defaultSpanArguments $ \s -> do
      -- logs <- liftIO $ fetchLogs globalRuntime
      -- forM_ logs $ \l -> case l.level of
      --   Trace -> Logging.logDebug l.message
      --   Debug -> Logging.logDebug l.message
      --   Temporal.Runtime.Info -> Logging.logInfo l.message
      --   Warn -> Logging.logWarn l.message
      --   Error -> Logging.logError l.message
      eActivation <- pollWorkflowActivation
      case eActivation of
        -- TODO should we do anything else on shutdown?
        (Left (Core.WorkerError Core.PollShutdown _)) -> do
          Logging.logDebug "Poller shutting down"
          pure False
        (Left err) -> do
          Logging.logError $ Text.pack $ show err
          recordException s mempty Nothing err
          pure True
        (Right activation) -> do
          Logging.logDebug $ Text.pack ("Got activation " <> show activation)
          handleActivation activation
          pure True


handleActivation :: forall m. (MonadUnliftIO m, MonadLoggerIO m, MonadCatch m, MonadTracer m) => Core.WorkflowActivation -> ReaderT WorkflowWorker m ()
handleActivation activation = inSpan' "handleActivation" (defaultSpanArguments {attributes = HashMap.fromList [("temporal.activation.run_id", toAttribute $ activation ^. Activation.runId)]}) $ \_s -> do
  Logging.logDebug ("Handling activation: RunId " <> Text.pack (show (activation ^. Activation.runId)))
  forM_ (activation ^. Activation.jobs) $ \job -> do
    Logging.logDebug ("Job: " <> Text.pack (show job))
  WorkflowWorker {workerCore} <- ask
  {-
  Run jobs
  -}
  if shouldRun
    then do
      mInst <- createOrFetchWorkflowInstance
      forM_ mInst $ \(inst, handledInitialJobs) -> do
        unless handledInitialJobs do
          -- Signals in the initialization activation were already buffered into the
          -- instance (see applyStartWorkflow), so drop them here rather than
          -- delivering them a second time.
          let isInitActivation = not $ V.null activationInitializeWorkflowJobs
              keepJob job =
                isNothing (job ^. Activation.maybe'initializeWorkflow)
                  && not (isInitActivation && isJust (job ^. Activation.maybe'signalWorkflow))
              withoutStart = filter keepJob (activation ^. Activation.jobs)
          unless (null withoutStart) $
            liftIO $
              runInstanceM inst $
                advanceWorkflow (activation & Activation.jobs .~ withoutStart)
    else do
      Logging.logDebug "Workflow does not need to run."
      let completionMessage =
            defMessage
              & Completion.runId .~ activation ^. Activation.runId
              & Completion.successful .~ defMessage
      liftIO (Core.completeWorkflowActivation workerCore completionMessage >>= either throwIO pure)

  removeEvictedWorkflowInstances
  where
    shouldRun :: Bool
    shouldRun = moreThanOneJob || not removeFromCacheJob
      where
        jobs = activation ^. Activation.vec'jobs
        removeFromCacheJob = V.any (\j -> isJust (j ^. Activation.maybe'removeFromCache)) jobs
        moreThanOneJob = V.length jobs > 1

    activationInitializeWorkflowJobs :: V.Vector (WorkflowActivationJob, InitializeWorkflow)
    activationInitializeWorkflowJobs =
      V.mapMaybe
        ( \rawJob ->
            case rawJob ^. Activation.maybe'variant of
              Just (WorkflowActivationJob'InitializeWorkflow initializeWorkflow) -> Just (rawJob, initializeWorkflow)
              _ -> Nothing
        )
        (activation ^. Activation.vec'jobs)

    createOrFetchWorkflowInstance :: ReaderT WorkflowWorker m (Maybe (WorkflowInstance, Bool))
    createOrFetchWorkflowInstance = inSpan' "createOrFetchWorkflowInstance" (defaultSpanArguments {attributes = HashMap.fromList [("temporal.activation.run_id", toAttribute $ activation ^. Activation.runId)]}) $ \s -> do
      worker@WorkflowWorker {workerCore} <- ask
      minst <- atomically $ StmMap.lookup (RunId $ activation ^. Activation.runId) worker.runningWorkflows
      case minst of
        Just inst -> do
          addAttribute s "temporal.workflow.worker.instance_state" ("existing" :: Text)
          pure $ Just (inst, False)
        Nothing -> do
          addAttribute s "temporal.workflow.worker.instance_state" ("new" :: Text)
          vExistingInstance <- forM activationInitializeWorkflowJobs $ \(_job, initializeWorkflow) -> do
            addAttribute s "temporal.workflow.type" (initializeWorkflow ^. Activation.workflowType)
            ePayloads <- Ann.try $ do
              searchAttrs <- liftIO $ do
                decodedAttrs <- initializeWorkflow ^. Activation.searchAttributes . Message.indexedFields . to searchAttributesFromProto
                either (throwIO . ValueError) pure decodedAttrs
              hdrs <- processorTryDecodePayloads worker.processor (initializeWorkflow ^. Activation.headers . to (fmap convertFromProtoPayload))
              memo <- processorDecodePayloads worker.processor (initializeWorkflow ^. Activation.memo . Message.fields . to (fmap convertFromProtoPayload))
              pure (searchAttrs, hdrs, memo)
            case ePayloads of
              Left err -> do
                let appFailure = Err.mkApplicationFailure err worker.workerErrorConverters
                    enrichedApplicationFailure =
                      defMessage
                        & F.message .~ appFailure.message
                        & F.source .~ "hs-temporal-sdk"
                        & F.stackTrace .~ appFailure.stack
                        & F.applicationFailureInfo
                          .~ ( defMessage
                                & F.type' .~ Err.type' appFailure
                                & F.nonRetryable .~ Err.nonRetryable appFailure
                             )
                    failureProto :: Completion.Failure
                    failureProto = defMessage & Completion.failure .~ enrichedApplicationFailure

                    completionMessage =
                      defMessage
                        & Completion.runId .~ (activation ^. Activation.runId)
                        & Completion.failed .~ failureProto
                _ <- liftIO $ Core.completeWorkflowActivation workerCore completionMessage
                pure Nothing
              Right (searchAttrs, hdrs, memo) -> do
                let runId_ = RunId $ activation ^. CommonProto.runId
                    parentProto = initializeWorkflow ^. Activation.maybe'parentWorkflowInfo
                    parentInfo = case parentProto of
                      Nothing -> Nothing
                      Just parent ->
                        Just
                          ParentInfo
                            { parentNamespace = Namespace $ parent ^. CommonProto.namespace
                            , parentRunId = RunId $ parent ^. CommonProto.runId
                            , parentWorkflowId = WorkflowId $ parent ^. CommonProto.workflowId
                            }
                    rootExec = do
                      rootWf <- initializeWorkflow ^. Activation.maybe'rootWorkflow
                      let rWfId = rootWf ^. CommonProto.workflowId
                          rRunId = rootWf ^. CommonProto.runId
                      if Text.null rWfId
                        then Nothing
                        else
                          Just
                            RootExecution
                              { rootWorkflowId = WorkflowId rWfId
                              , rootRunId = RunId rRunId
                              }
                    workflowInfo =
                      Temporal.WorkflowInstance.Info
                        { historyLength = activation ^. Activation.historyLength
                        , attempt = fromIntegral $ initializeWorkflow ^. Activation.attempt
                        , buildId = Core.buildId $ Core.getWorkerConfig workerCore
                        , taskQueue = worker.workerTaskQueue
                        , workflowId = WorkflowId $ initializeWorkflow ^. Activation.workflowId
                        , workflowType = initializeWorkflow ^. Activation.workflowType . to WorkflowType
                        , continuedRunId = fmap RunId $ initializeWorkflow ^. Activation.continuedFromExecutionRunId . to nonEmptyString
                        , continuedFailure = initializeWorkflow ^. Activation.maybe'continuedFailure
                        , cronSchedule = initializeWorkflow ^. Activation.cronSchedule . to nonEmptyString
                        , taskTimeout = initializeWorkflow ^. Activation.workflowTaskTimeout . to durationFromProto
                        , executionTimeout = fmap durationFromProto $ initializeWorkflow ^. Activation.maybe'workflowExecutionTimeout
                        , firstExecutionRunId = RunId $ initializeWorkflow ^. Activation.firstExecutionRunId
                        , namespace = Namespace $ Core.namespace $ Core.getWorkerConfig workerCore
                        , parent = parentInfo
                        , headers = hdrs
                        , rawMemo = memo
                        , searchAttributes = searchAttrs
                        , retryPolicy = retryPolicyFromProto <$> initializeWorkflow ^. Activation.maybe'retryPolicy
                        , rootExecution = rootExec
                        , runId = RunId $ activation ^. CommonProto.runId
                        , runTimeout = fmap durationFromProto $ initializeWorkflow ^. Activation.maybe'workflowRunTimeout
                        , startTime =
                            timespecFromTimestamp $
                              fromMaybe
                                (activation ^. Activation.timestamp)
                                (initializeWorkflow ^. Activation.maybe'startTime)
                        , continueAsNewSuggested = False
                        }
                case HashMap.lookup (initializeWorkflow ^. Activation.workflowType) worker.workerWorkflowFunctions of
                  Nothing -> do
                    setStatus s (Error "No workflow definition found")
                    Logging.logInfo "No workflow definition found"
                    let failureProto =
                          defMessage
                            & Completion.failure
                              .~ ( defMessage
                                    & F.message .~ "No workflow definition found"
                                    & F.applicationFailureInfo
                                      .~ ( defMessage
                                            & F.type' .~ "NotFound"
                                            & F.nonRetryable .~ False
                                         )
                                 )
                        completionMessage =
                          defMessage
                            & Completion.runId .~ (activation ^. Activation.runId)
                            & Completion.failed .~ failureProto
                    liftIO (Core.completeWorkflowActivation workerCore completionMessage >>= either throwIO pure)
                    pure Nothing
                  Just (WorkflowDefinition _ f) -> do
                    -- Signals arriving with the start job (e.g. signalWithStart) get
                    -- buffered before the workflow body runs; handleActivation drops
                    -- them from the activation channel so they aren't delivered twice.
                    let initialSignals =
                          V.toList $
                            V.mapMaybe (^. Activation.maybe'signalWorkflow) (activation ^. Activation.vec'jobs)
                        keepJob job =
                          isNothing (job ^. Activation.maybe'initializeWorkflow)
                            && isNothing (job ^. Activation.maybe'signalWorkflow)
                        withoutStart = filter keepJob (activation ^. Activation.jobs)
                    (inst, startWorkflow) <-
                      create
                        ( \wf -> do
                            Core.completeWorkflowActivation workerCore wf
                        )
                        f
                        worker.workerDeadlockTimeout
                        worker.workerErrorConverters
                        worker.workerInboundInterceptors
                        worker.workerOutboundInterceptors
                        worker.workerVault
                        worker.processor
                        workflowInfo
                        initializeWorkflow
                        initialSignals
                    liftIO $ addBuiltinQueryHandlers inst
                    published <- upsertWorkflowInstance runId_ inst
                    liftIO $
                      startWorkflow $
                        if null withoutStart
                          then Nothing
                          else Just (activation & Activation.jobs .~ withoutStart)
                    pure $ Just (published, True)
          pure $ join (vExistingInstance V.!? 0)

    removeEvictedWorkflowInstances :: ReaderT WorkflowWorker m ()
    removeEvictedWorkflowInstances = forM_ (activation ^. Activation.vec'jobs) $ \job -> do
      case job ^. Activation.maybe'variant of
        Just (WorkflowActivationJob'RemoveFromCache removeFromCache) -> do
          let spanAttrs =
                HashMap.fromList
                  [ ("temporal.workflow.worker.instance_state", toAttribute ("evicted" :: Text))
                  , ("temporal.activation.run_id", toAttribute $ activation ^. CommonProto.runId)
                  ]
          inSpan' "removeEvictedWorkflowInstance" (defaultSpanArguments {attributes = spanAttrs}) $ \s -> do
            worker <- ask
            let runId_ = RunId $ activation ^. CommonProto.runId
            join $ atomically $ do
              mworkflow <- StmMap.focus Focus.lookupAndDelete runId_ worker.runningWorkflows
              writeTChan worker.workerEvictionEmitter EvictionWithRunID {runId = runId_, eviction = removeFromCache}
              case mworkflow of
                Nothing -> do
                  let msg = Text.pack ("Eviction request on an unknown workflow with run ID " ++ show runId_ ++ ", message: " ++ show (removeFromCache ^. Activation.message))
                  pure $ do
                    setStatus s $ Error msg
                    Logging.logDebug msg
                Just wf -> do
                  pure $ do
                    liftIO $ finalizeWorkflowExecution wf.inboundInterceptor wf Nothing
                    Logging.logDebug $ Text.pack ("Evicting workflow instance with run ID " ++ show runId_ ++ ", message: " ++ show (removeFromCache ^. Activation.message))
        _ -> pure ()
