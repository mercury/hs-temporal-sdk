{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE UndecidableInstances #-}

module Temporal.Worker.Types where

import Control.Monad.Logger
import Control.Monad.Reader
import Data.HashMap.Strict (HashMap)
import Data.Text (Text)
import OpenTelemetry.Trace.Core
import Temporal.Activity.Definition (ActivityDefinition)
import Temporal.Activity.Worker (ActivityWorker)
import Temporal.Common
import Temporal.Core.Worker (InactiveForReplay)
import qualified Temporal.Core.Worker as Core
import Temporal.Exception (ApplicationFailureHandler)
import Temporal.Interceptor
import qualified Temporal.Nexus.Worker as Nexus
import Temporal.Payload
import Temporal.Workflow.Definition (WorkflowDefinition)
import Temporal.Workflow.Internal.Monad
import Temporal.Workflow.Worker (WorkflowWorker)
import UnliftIO hiding (race)


data WorkerConfig activityEnv = WorkerConfig
  { deadlockTimeout :: Maybe Int
  , wfDefs :: HashMap Text WorkflowDefinition
  , actEnv :: activityEnv
  , actDefs :: HashMap Text (ActivityDefinition activityEnv)
  , coreConfig :: Core.WorkerConfig
  , interceptorConfig :: Interceptors activityEnv
  , applicationErrorConverters :: [ApplicationFailureHandler]
  , tracerProvider :: TracerProvider
  -- ^ This TracerProvider should only need to be supplied if you want to observe
  -- Worker-internal traces for debugging purposes.
  , logger :: Loc -> LogSource -> LogLevel -> LogStr -> IO ()
  , payloadProcessor :: PayloadProcessor
  , nexusServiceHandlers :: [Nexus.NexusServiceHandler]
  }


data Worker (ty :: Core.WorkerType) activityEnv = Worker
  { workerCore :: Core.Worker ty
  , workerTaskQueue :: TaskQueue
  , workerConfig :: WorkerConfig activityEnv
  , workerLogFn :: Loc -> LogSource -> LogLevel -> LogStr -> IO ()
  , workflowWorker :: WorkflowWorker
  , activityWorker :: InactiveForReplay ty (ActivityWorker activityEnv)
  }


newtype WorkerM ty activityEnv a = WorkerM {unWorkerM :: ReaderT (Worker ty activityEnv) IO a}
  deriving newtype (Functor, Applicative, Monad, MonadIO, MonadReader (Worker ty activityEnv), MonadUnliftIO)


instance MonadLogger (WorkerM ty activityEnv) where
  monadLoggerLog loc src level msg = do
    worker <- ask
    liftIO $ worker.workerLogFn loc src level (toLogStr msg)


instance MonadLoggerIO (WorkerM ty activityEnv) where
  askLoggerIO = do
    worker <- ask
    pure worker.workerLogFn


{- | Values that were blocking waiting for an activation, and have now
been unblocked.  The worker adds these to a queue ('activationResults') using
'putResult'; the scheduler collects them from the queue and unblocks
the relevant computations.
-}
data ActivationResult
  = forall a.
    ActivationResult
      (ResultVal a)
      !(IVar a)


runWorkerM :: Worker ty actEnv -> WorkerM ty actEnv a -> IO a
runWorkerM worker m = runReaderT (unWorkerM m) worker
