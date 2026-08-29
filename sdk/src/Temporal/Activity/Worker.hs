{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}

module Temporal.Activity.Worker where

import Control.Exception.Annotated
import Control.Monad
import Control.Monad.Logger
import Control.Monad.Reader
import Data.Bifunctor
import Data.HashMap.Strict (HashMap)
import Data.Maybe (isJust)
import qualified Data.HashMap.Strict as HashMap
import Data.ProtoLens
import Data.Text (Text)
import qualified Data.Text as T
import Lens.Family2
import qualified ListT
import qualified Proto.Temporal.Api.Common.V1.Message_Fields as P
import qualified Proto.Temporal.Api.Failure.V1.Message_Fields as F
import qualified Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult as AR
import qualified Proto.Temporal.Sdk.Core.ActivityResult.ActivityResult_Fields as AR
import qualified Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask as AT
import qualified Proto.Temporal.Sdk.Core.ActivityTask.ActivityTask_Fields as AT
import qualified Proto.Temporal.Sdk.Core.CoreInterface_Fields as C
import qualified StmContainers.Map as StmMap
import Temporal.Activity.Definition
import Temporal.Activity.Types
import Temporal.Common
import Temporal.Common.Async
import qualified Temporal.Common.Logging as Logging
import qualified Temporal.Core.Worker as Core
import Temporal.Duration (durationFromProto)
import Temporal.Exception
import Temporal.Interceptor
import Temporal.Payload
import UnliftIO


data ActivityWorker env = ActivityWorker
  { activityEnv :: {-# UNPACK #-} !(IORef env)
  , definitions :: {-# UNPACK #-} !(HashMap Text (ActivityDefinition env))
  , runningActivities :: {-# UNPACK #-} !(StmMap.Map TaskToken (Async ()))
  , workerCore :: {-# UNPACK #-} !(Core.Worker 'Core.Real)
  , activityInboundInterceptors :: {-# UNPACK #-} !(ActivityInboundInterceptor env)
  , activityOutboundInterceptors :: {-# UNPACK #-} !(ActivityOutboundInterceptor env)
  , clientInterceptors :: {-# UNPACK #-} !ClientInterceptors
  , activityErrorConverters :: {-# UNPACK #-} ![ApplicationFailureHandler]
  , payloadProcessor :: {-# UNPACK #-} !PayloadProcessor
  }


newtype ActivityWorkerM env m a = ActivityWorkerM {unActivityWorkerM :: ReaderT (ActivityWorker env) m a}
  deriving newtype
    ( Functor
    , Applicative
    , Monad
    , MonadIO
    , MonadReader (ActivityWorker env)
    , MonadUnliftIO
    , MonadLogger
    , MonadLoggerIO
    )


runActivityWorker :: (MonadUnliftIO m, MonadLogger m) => ActivityWorker env -> ActivityWorkerM env m a -> m a
runActivityWorker w m = runReaderT (unActivityWorkerM m) w


execute :: (MonadUnliftIO m, MonadLogger m) => ActivityWorker actEnv -> m ()
execute worker = withRunInIO $ \runInIO -> do
  -- NOTE: The poll loop /must/ recurse in a concrete type (in this case that's
  -- 'IO', but it could be a concrete transformer stack) as opposed to the
  -- polymorphic 'm' that this function is constrained by.
  --
  -- Recursing in 'm' means that GHC can't specialize binds, which results in
  -- a space leak per iteration; in this case that gives us an unbounded space
  -- leak roughly proportional to the number of activity tasks handled by this
  -- worker.
  --
  -- Pinning the type to 'IO' and dispatching the task's work to whatever its
  -- 'm' is via 'runInIO' eliminates the space leak.
  let go = do
        eTask <- Core.pollActivityTask worker.workerCore
        case eTask of
          Left (Core.WorkerError Core.PollShutdown _) -> pure ()
          Left e -> do
            runInIO $ Logging.logError (T.pack $ show e)
            throwIO e
          Right task ->
            runInIO (runActivityWorker worker $ applyActivityTask task) *> go
  go


activityInfoFromProto :: MonadIO m => TaskToken -> TaskQueue -> AT.Start -> ActivityWorkerM actEnv m ActivityInfo
activityInfoFromProto tt tq msg = do
  w <- ask
  hdrs <- processorTryDecodePayloads w.payloadProcessor (fmap convertFromProtoPayload (msg ^. AT.headerFields))
  heartbeats <- processorDecodePayloads w.payloadProcessor (fmap convertFromProtoPayload (msg ^. AT.vec'heartbeatDetails))
  heartbeatsRef <- newIORef heartbeats
  pure $
    ActivityInfo
      { workflowNamespace = Namespace $ msg ^. AT.workflowNamespace
      , workflowType = WorkflowType $ msg ^. AT.workflowType
      , workflowId = WorkflowId $ msg ^. AT.workflowExecution . P.workflowId
      , runId = RunId $ msg ^. AT.workflowExecution . P.runId
      , activityId = ActivityId $ msg ^. AT.activityId
      , activityType = msg ^. AT.activityType
      , headerFields = hdrs
      , rawHeartbeatDetails = heartbeatsRef
      , scheduledTime = msg ^. AT.scheduledTime . to timespecFromTimestamp
      , currentAttemptScheduledTime = msg ^. AT.currentAttemptScheduledTime . to timespecFromTimestamp
      , startedTime = msg ^. AT.startedTime . to timespecFromTimestamp
      , attempt = msg ^. AT.attempt
      , scheduleToCloseTimeout = fmap durationFromProto (msg ^. AT.maybe'scheduleToCloseTimeout)
      , startToCloseTimeout = fmap durationFromProto (msg ^. AT.maybe'startToCloseTimeout)
      , heartbeatTimeout = fmap durationFromProto (msg ^. AT.maybe'heartbeatTimeout)
      , retryPolicy = fmap retryPolicyFromProto (msg ^. AT.maybe'retryPolicy)
      , isLocal = msg ^. AT.isLocal
      , taskToken = tt
      , taskQueue = tq
      }


{- | Signal to the Temporal worker that the activity will be completed asynchronously (out of band).

In order to complete the activity once it has been moved to async, use 'Temporal.Client.AsyncActivity.complete', 'Temporal.Client.AsyncActivity.fail', or 'Temporal.Client.AsyncActivity.reportCancellation'.

Note: Under the hood, this throws a 'CompleteAsync' exception, which is caught and handled by the Temporal worker.

Make sure that your own code does not swallow or rewrap this exception, otherwise the activity will fail instead
of signalling that it will be completed asynchronously.
-}
completeAsync :: MonadIO m => m ()
completeAsync = throwIO CompleteAsync


applyActivityTask :: (MonadUnliftIO m, MonadLogger m) => AT.ActivityTask -> ActivityWorkerM actEnv m ()
applyActivityTask task = case task ^. AT.maybe'variant of
  Nothing -> throwIO $ RuntimeError "Activity task has no variant or an unknown variant"
  Just (AT.ActivityTask'Start msg) -> applyActivityTaskStart task tt msg
  Just (AT.ActivityTask'Cancel msg) -> applyActivityTaskCancel tt msg
  where
    tt = TaskToken $ task ^. AT.taskToken


requireActivityNotRunning :: MonadUnliftIO m => TaskToken -> ActivityWorkerM actEnv m () -> ActivityWorkerM actEnv m ()
requireActivityNotRunning tt m = do
  w <- ask
  running <- atomically $ StmMap.lookup tt w.runningActivities
  case running of
    Just _ -> throwIO $ RuntimeError "Activity task already running"
    Nothing -> m


applyActivityTaskStart :: (MonadUnliftIO m, MonadLogger m) => AT.ActivityTask -> TaskToken -> AT.Start -> ActivityWorkerM actEnv m ()
applyActivityTaskStart _tsk tt msg = do
  w <- ask
  let c = Core.getWorkerConfig w.workerCore
      tq = Core.taskQueue c
  info <- activityInfoFromProto tt (TaskQueue tq) msg
  Logging.logInfo $
    T.concat
      [ "Starting activity: "
      , "namespace="
      , Core.namespace c
      , " "
      , "taskQueue="
      , Core.taskQueue c
      , " "
      , "workflowType="
      , rawWorkflowType info.workflowType
      , " "
      , "workflowId="
      , rawWorkflowId info.workflowId
      , " "
      , "activityType="
      , info.activityType
      , " "
      , "activityId="
      , rawActivityId info.activityId
      ]
  requireActivityNotRunning tt $ do
    args <- processorDecodePayloads w.payloadProcessor (fmap convertFromProtoPayload (msg ^. AT.vec'input))
    env <- readIORef w.activityEnv
    let
      actEnv =
        ActivityEnv
          info
          w.clientInterceptors
          w.payloadProcessor
          (Core.recordActivityHeartbeat w.workerCore)
          (Core.getWorkerConfig w.workerCore)
          (Core.getWorkerClient w.workerCore)
      input =
        ExecuteActivityInput
          args
          info.headerFields
          info
    -- We mask here to ensure that the activity is definitely registered
    -- before we start running it. This is important because we need to be able to cancel
    -- it later if the orchestrator requests it.
    mask_ $ do
      finished <- newTVarIO False
      runningActivity <- asyncLabelledWithUnmask (T.unpack $ T.concat ["temporal/worker/activity/start/", Core.namespace c, "/", Core.taskQueue c]) $ \unmask -> do
        -- The activity /must/ be run in an unmasked context, so it can receive
        -- exceptions and run finalizers during worker shutdown.
        (ef :: Either SomeException (Either String Payload)) <- unmask . liftIO . UnliftIO.trySyncOrAsync $
          w.activityInboundInterceptors.executeActivity env input $ \env' input' ->
            ( case HashMap.lookup info.activityType w.definitions of
                Nothing -> throwIO $ RuntimeError ("Activity type not found: " <> T.unpack info.activityType)
                Just ActivityDefinition {..} ->
                  runReaderT (unActivity $ activityRun input') (actEnv env')
            )
              `finally` atomically (writeTVar finished True *> StmMap.delete tt w.runningActivities)
        completionMsg <- case ef >>= first (toException . ValueError) of
          Left err@(SomeException _wrappedErr) -> do
            Logging.logDebug (T.pack (show err))
            let appFailure = mkApplicationFailure err w.activityErrorConverters
                enrichedApplicationFailure = applicationFailureToFailureProto appFailure
            pure $
              defMessage
                & C.taskToken .~ rawTaskToken tt
                & C.result .~
                  if isJust (fromException @CompleteAsync err)
                    then defMessage & AR.willCompleteAsync .~ defMessage
                    else case fromException err of
                      Just (_cancelled :: ActivityCancelReason) ->
                        defMessage
                          & AR.cancelled
                            .~ ( defMessage
                                  & AR.failure
                                    .~ ( defMessage
                                          & F.message .~ "Activity cancelled"
                                          & F.canceledFailureInfo
                                            .~ ( defMessage
                                                  -- FIXME: provide some details if we have them
                                                  & F.details .~ defMessage
                                               )
                                       )
                               )
                      Nothing ->
                        defMessage
                          & AR.failed
                            .~ (defMessage & AR.failure .~ enrichedApplicationFailure)
          Right ok -> do
            Logging.logDebug "Got activity result"
            ok' <- liftIO $ payloadProcessorEncode w.payloadProcessor ok
            pure $
              defMessage
                & C.taskToken .~ rawTaskToken tt
                & C.result
                  .~ ( defMessage
                        & AR.completed
                          .~ (defMessage & AR.result .~ convertToProtoPayload ok')
                     )
        Logging.logDebug ("Activity completion message: " <> T.pack (show completionMsg))
        Logging.logInfo $
          T.concat
            [ "Completed activity: "
            , "namespace="
            , Core.namespace c
            , " "
            , "taskQueue="
            , Core.taskQueue c
            , " "
            , "workflowType="
            , rawWorkflowType info.workflowType
            , " "
            , "workflowId="
            , rawWorkflowId info.workflowId
            , " "
            , "activityType="
            , info.activityType
            , " "
            , "activityId="
            , rawActivityId info.activityId
            , " "
            , "status="
            , statusFromCompletion completionMsg
            ]
        completionResult <- liftIO $ Core.completeActivityTask w.workerCore completionMsg
        case completionResult of
          Left err -> throwIO err
          Right _ -> pure ()

      -- Register the running activity /unless/ it finished asynchronously &
      -- deregistered itself before we even got here.
      atomically $ do
        alreadyFinished <- readTVar finished
        unless alreadyFinished $ StmMap.insert runningActivity tt w.runningActivities
      -- We should only be throwing this exception if the activity has a logical error
      -- that is an internal error to the Temporal worker. If the activity throws an
      -- exception, that should be caught and fed to completeActivityTask.
      --
      -- We use link here to kill the worker thread if the activity throws an exception.
      link runningActivity
  where
    statusFromCompletion :: Core.ActivityTaskCompletion -> Text
    statusFromCompletion completionMsg = case completionMsg ^. C.maybe'result of
      Just result -> case result ^. AR.maybe'status of
        Just status -> case status of
          AR.ActivityExecutionResult'Completed _ -> "success"
          AR.ActivityExecutionResult'Failed _ -> "failed"
          AR.ActivityExecutionResult'Cancelled _ -> "cancelled"
          AR.ActivityExecutionResult'WillCompleteAsync _ -> "will-complete-async"
        Nothing -> "unknown"
      Nothing -> "unknown"


applyActivityTaskCancel :: (MonadUnliftIO m, MonadLogger m) => TaskToken -> AT.Cancel -> ActivityWorkerM actEnv m ()
applyActivityTaskCancel tt msg = do
  w <- ask
  Logging.logDebug $ "Cancelling activity: " <> T.pack (show tt)
  running <- atomically $ StmMap.lookup tt w.runningActivities
  let cancelReason = case msg ^. AT.reason of
        AT.NOT_FOUND -> NotFound
        AT.CANCELLED -> CancelRequested
        AT.TIMED_OUT -> Timeout
        AT.WORKER_SHUTDOWN -> WorkerShutdown
        -- TODO: PAUSED and RESET need dedicated ActivityCancelReason constructors (follow-up)
        _ -> UnknownCancellationReason
  forM_ running $ \a ->
    cancelWith a cancelReason `finally` atomically (StmMap.delete tt w.runningActivities)
