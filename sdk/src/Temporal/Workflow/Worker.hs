{- | Poll and dispatch workflow activations without making the poll loop execute
workflow code.

Activations for different run IDs can execute concurrently. Activations for one
run ID must preserve poll order, including the race where several activations
arrive before the first handler publishes its 'WorkflowInstance'.

'workerActivationTails' supplies that ordering. For each run ID it stores only
the newest reservation: a ticket plus a completion signal. Reserving the next
activation atomically reads that signal as its predecessor and replaces the map
entry with its own signal. The forked handler waits for its predecessor before
calling 'handleActivation'. Each reservation therefore retains the preceding
link transitively, forming a short-lived per-run chain without keeping every
reservation in the map.

The chain orders dispatch into the instance's activation channel; it does not
execute workflow continuations. Each 'WorkflowInstance' has one executor for
that. A terminal cache-removal activation deletes its tail only when it is
still the newest reservation, so it cannot erase a later link.
-}
module Temporal.Workflow.Worker where

import Control.Concurrent.STM (check, throwSTM)
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
import qualified ListT
import OpenTelemetry.Context.ThreadLocal
import OpenTelemetry.Trace.Core hiding (inSpan, inSpan')
import OpenTelemetry.Trace.Monad
import qualified Proto.Temporal.Api.Common.V1.Message_Fields as Message
import qualified Proto.Temporal.Api.Failure.V1.Message_Fields as F
import qualified Proto.Temporal.Sdk.Core.Common.Common_Fields as CommonProto
import Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation
import qualified Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation_Fields as Activation
import qualified Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion as Completion
import qualified Proto.Temporal.Sdk.Core.WorkflowCompletion.WorkflowCompletion_Fields as Completion
import qualified StmContainers.Map as StmMap
import Temporal.Common
import Temporal.Common.Async
import qualified Temporal.Common.Logging as Logging
import qualified Temporal.Core.Client as C
import Temporal.Core.Worker (InactiveForReplay)
import qualified Temporal.Core.Worker as Core
import Temporal.Duration (durationFromProto)
import qualified Temporal.Exception as Err
import Temporal.Payload
import Temporal.SearchAttributes.Internal
import Temporal.Workflow.Definition
import qualified Temporal.Workflow.Internal.ActivationLoop as ActivationLoop
import Temporal.Workflow.Internal.Monad hiding (try)
import Temporal.WorkflowInstance
import UnliftIO


data EvictionWithRunID = EvictionWithRunID
  { runId :: RunId
  , eviction :: RemoveFromCache
  }
  deriving stock (Show)


data WorkflowWorker
  = forall ty.
  Core.KnownWorkerType ty =>
  WorkflowWorker
  { workerWorkflowFunctions :: {-# UNPACK #-} !(HashMap Text WorkflowDefinition)
  , runningWorkflows :: {-# UNPACK #-} !(StmMap.Map RunId WorkflowInstance)
  , workerActivationLoop :: {-# UNPACK #-} !(TVar ActivationLoop.ActivationLoop)
  , workerActivationTails :: {-# UNPACK #-} !(StmMap.Map RunId (ActivationLoop.ActivationTicket, TMVar ()))
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


{- | One node in the per-run activation dispatch chain.

The predecessor gates this handler. The completion signal releases its direct
successor. The lifecycle ticket separately accounts for shutdown draining.
-}
data ActivationReservation = ActivationReservation
  { reservationTicket :: ActivationLoop.ActivationTicket
  , reservationPredecessor :: Maybe (TMVar ())
  , reservationCompletion :: TMVar ()
  , reservationRunId :: RunId
  , reservationEndsRun :: Bool
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
execute :: (MonadUnliftIO m, MonadTracer m, MonadLoggerIO m, MonadCatch m) => WorkflowWorker -> m ()
execute worker@WorkflowWorker {workerCore} =
  flip runReaderT worker $
    whileM_ go `finally` liftIO (cancelRunningWorkflowExecutors worker)
  where
    c = Core.getWorkerConfig workerCore
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
        (Left (Core.WorkerError Core.PollShutdown _)) -> do
          Logging.logDebug "Poller shutting down"
          pure False
        (Left err) -> do
          Logging.logError $ Text.pack $ show err
          recordException s mempty Nothing err
          pure True
        (Right activation) -> do
          Logging.logDebug $ Text.pack ("Got activation " <> show activation)
          -- Reserve and chain each activation before forking. Different runs remain
          -- concurrent, while activations for one run start in poll order even before
          -- its WorkflowInstance has been published.
          activationCtxt <- getContext
          mask_ $ do
            reservation <- liftIO $ atomically $ reserveWorkflowActivation worker activation
            let finish = liftIO $ atomically $ finishWorkflowActivation worker reservation
            activator <-
              ( asyncLabelledWithUnmask (Text.unpack $ Text.concat ["temporal/worker/workflow/activate", Core.namespace c, "/", Core.taskQueue c]) $ \restore ->
                  ( do
                      liftIO $ forM_ reservation.reservationPredecessor $ atomically . readTMVar
                      _ <- attachContext activationCtxt
                      restore $ handleActivation activation
                  )
                    `finally` finish
              )
                `onException` finish
            link activator
          pure True


{- | Atomically reserve shutdown capacity and append one activation to its
run's dispatch chain.

This transaction is the ordering linearization point: two activations for the
same run observe one another in poll order even if neither handler has started.
-}
reserveWorkflowActivation :: WorkflowWorker -> Core.WorkflowActivation -> STM ActivationReservation
reserveWorkflowActivation worker activation = do
  loop <- readTVar worker.workerActivationLoop
  (reservationTicket, loop') <- either throwSTM pure $ ActivationLoop.reserveActivation loop
  let reservationRunId = RunId $ activation ^. Activation.runId
      reservationEndsRun =
        any (isJust . (^. Activation.maybe'removeFromCache)) (activation ^. Activation.jobs)
  reservationPredecessor <-
    fmap snd <$> StmMap.lookup reservationRunId worker.workerActivationTails
  reservationCompletion <- newEmptyTMVar
  StmMap.insert
    (reservationTicket, reservationCompletion)
    reservationRunId
    worker.workerActivationTails
  writeTVar worker.workerActivationLoop loop'
  pure ActivationReservation {..}


{- | Retire a handler and release the next activation for its run.

Terminal activations remove the map entry only if their reservation is still
the current tail. Older completion signals remain reachable only from their
direct successor and can be collected after that successor starts.
-}
finishWorkflowActivation :: WorkflowWorker -> ActivationReservation -> STM ()
finishWorkflowActivation worker reservation = do
  loop <- readTVar worker.workerActivationLoop
  loop' <- either throwSTM pure $ ActivationLoop.completeActivation reservation.reservationTicket loop
  writeTVar worker.workerActivationLoop loop'
  putTMVar reservation.reservationCompletion ()
  when reservation.reservationEndsRun do
    current <- StmMap.lookup reservation.reservationRunId worker.workerActivationTails
    when (fmap fst current == Just reservation.reservationTicket) $
      StmMap.delete reservation.reservationRunId worker.workerActivationTails


cancelRunningWorkflowExecutors :: WorkflowWorker -> IO ()
cancelRunningWorkflowExecutors worker = do
  -- An activation handler can still be creating an instance while the poller
  -- exits. Drain handlers before the snapshot so no executor survives Core.
  atomically $ do
    modifyTVar' worker.workerActivationLoop ActivationLoop.beginDraining
    ActivationLoop.isDrained <$> readTVar worker.workerActivationLoop >>= check
  runningWorkflows <- ListT.toList $ StmMap.listTNonAtomic worker.runningWorkflows
  mapConcurrently_
    ( \(_, inst) ->
        writeIORef inst.executionCancelled True
          >> (readIORef inst.executionThread >>= cancel)
    )
    runningWorkflows
  mapConcurrently_
    (\(_, inst) -> readIORef inst.executionThread >>= void . waitCatch)
    runningWorkflows


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
      forM_ mInst $ \inst -> do
        -- Signals in the initialization activation were already buffered into the
        -- instance (see applyStartWorkflow), so drop them here rather than
        -- delivering them a second time through the channel.
        let isInitActivation = not $ V.null activationInitializeWorkflowJobs
            keepJob job =
              isNothing (job ^. Activation.maybe'initializeWorkflow)
                && not (isInitActivation && isJust (job ^. Activation.maybe'signalWorkflow))
            withoutStart = filter keepJob (activation ^. Activation.jobs)
        case withoutStart of
          [] -> pure ()
          otherJobs -> atomically $ writeTQueue inst.activationChannel (activation & Activation.jobs .~ otherJobs)
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

    createOrFetchWorkflowInstance :: ReaderT WorkflowWorker m (Maybe WorkflowInstance)
    createOrFetchWorkflowInstance = inSpan' "createOrFetchWorkflowInstance" (defaultSpanArguments {attributes = HashMap.fromList [("temporal.activation.run_id", toAttribute $ activation ^. Activation.runId)]}) $ \s -> do
      worker@WorkflowWorker {workerCore} <- ask
      minst <- atomically $ StmMap.lookup (RunId $ activation ^. Activation.runId) worker.runningWorkflows
      case minst of
        Just inst -> do
          addAttribute s "temporal.workflow.worker.instance_state" ("existing" :: Text)
          pure $ Just inst
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
                    mask_ $ do
                      (inst, startWorker) <-
                        create
                          (\wf -> Core.completeWorkflowActivation workerCore wf)
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
                      liftIO startWorker
                      pure $ Just published
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
                    liftIO $ writeIORef wf.executionCancelled True
                    executionThread <- readIORef wf.executionThread
                    cancel executionThread
                    void $ waitCatch executionThread
                    liftIO $ finalizeWorkflowExecution wf.inboundInterceptor wf Nothing
                    Logging.logDebug $ Text.pack ("Evicting workflow instance with run ID " ++ show runId_ ++ ", message: " ++ show (removeFromCache ^. Activation.message))
        _ -> pure ()
