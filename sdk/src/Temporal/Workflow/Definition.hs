{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE InstanceSigs #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilyDependencies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}

module Temporal.Workflow.Definition (
  WorkflowDef (..),
  WorkflowRef (..),
  WorkflowDefinition (..),
  KnownWorkflow (..),
  KnownUpdate (..),
  SignalRef (..),
  WorkflowSignalDefinition (..),
  -- , StartChildWorkflow(..)
  provideWorkflow,
  ProvidedWorkflow (..),
  provideUpdate,
  ProvidedUpdate (..),
  GatherArgs,
) where

import Control.Monad.IO.Class
import Data.Kind
import Data.Text (Text)
import Data.Typeable
import Data.Vector (Vector)
import RequireCallStack
import Temporal.Payload
import Temporal.Workflow.Internal.Monad
import Temporal.Workflow.Signal
import Temporal.Workflow.Update


{- | This is a Workflow function that can be called from the outside world.

You can create a definition via 'Temporal.Workflow.provideWorkflow'.

To make a worker use this definition, you must add it to the 'WorkerConfig' via 'Temporal.Workflow.addWorkflow'.
-}
data WorkflowDefinition = WorkflowDefinition
  { workflowName :: Text
  , workflowRun :: Vector Payload -> IO (Either String (Workflow Payload))
  }


class WorkflowDef a where
  workflowDefinition :: a -> WorkflowDefinition


instance WorkflowDef WorkflowDefinition where
  workflowDefinition = id


class WorkflowRef (f :: Type) where
  type WorkflowArgs f :: [Type]
  type WorkflowResult f :: Type
  workflowRef :: f -> KnownWorkflow (WorkflowArgs f) (WorkflowResult f)


instance WorkflowRef (KnownWorkflow args result) where
  type WorkflowArgs (KnownWorkflow args result) = args
  type WorkflowResult (KnownWorkflow args result) = result
  workflowRef = id


{- | A 'KnownWorkflow' is a handle that contains all the information needed to start a
Workflow either as a child workflow or as a top-level workflow via a 'Client'.
-}
data KnownWorkflow (args :: [Type]) (result :: Type)
  = forall codec.
  (FunctionSupportsCodec codec args result) =>
  KnownWorkflow
  { knownWorkflowCodec :: codec
  , knownWorkflowName :: Text
  }


-- gatherStartChildWorkflowArgs
--   :: forall args result codec. GatherArgs codec args
--   => codec
--   -> ([IO Payload] -> Workflow (ChildWorkflowHandle result))
--   -> (args :->: Workflow (ChildWorkflowHandle result))
-- gatherStartChildWorkflowArgs c f = gatherArgs (Proxy @args) c id f

data ProvidedWorkflow f = ProvidedWorkflow
  { definition :: WorkflowDefinition
  , reference :: KnownWorkflow (ArgsOf f) (ResultOf Workflow f)
  }


data ProvidedUpdate f err = ProvidedUpdate
  { updateDefinition :: WorkflowUpdateDefinition
  , updateReference :: KnownUpdate (ArgsOf f) (ResultOf Workflow f) err
  }


instance VarArgs (ArgsOf f) => UpdateRef (ProvidedUpdate f) where
  type UpdateArgs (ProvidedUpdate f) = ArgsOf f
  type UpdateResult (ProvidedUpdate f) = ResultOf Workflow f
  updateRef :: ProvidedUpdate f err -> KnownUpdate (UpdateArgs (ProvidedUpdate f)) (UpdateResult (ProvidedUpdate f)) err
  updateRef = updateReference


instance WorkflowDef (ProvidedWorkflow f) where
  workflowDefinition :: ProvidedWorkflow f -> WorkflowDefinition
  workflowDefinition = definition


instance VarArgs (ArgsOf f) => WorkflowRef (ProvidedWorkflow f) where
  type WorkflowArgs (ProvidedWorkflow f) = ArgsOf f
  type WorkflowResult (ProvidedWorkflow f) = ResultOf Workflow f
  workflowRef :: ProvidedWorkflow f -> KnownWorkflow (WorkflowArgs (ProvidedWorkflow f)) (WorkflowResult (ProvidedWorkflow f))
  workflowRef = reference


{- | A utility function for constructing a 'WorkflowDefinition' from a function as well as
a 'KnownWorkflow' value. This is useful for keeping the argument, codec, and result types
in sync with each other so that changes to the function are reflected at their use sites.

> myWorkflow :: Workflow () () Int
> myWorkflow = pure 1
>
> myWorkflowDef :: ProvidedWorkflow () () Int
> myWorkflowDef = provideWorkflow
>   JSON -- codec
>   @"myWorkflow" -- visible name of the workflow
>   () -- initial state
>   myWorkflow -- the workflow function
-}
provideWorkflow
  :: forall codec f
   . ( f ~ (ArgsOf f :->: Workflow (ResultOf Workflow f))
     , FunctionSupportsCodec codec (ArgsOf f) (ResultOf Workflow f)
     )
  => codec
  -> Text
  -> (RequireCallStackImpl => f)
  -> ProvidedWorkflow f
provideWorkflow codec name f =
  provideCallStack $
    ProvidedWorkflow
      { definition =
          WorkflowDefinition
            { workflowName = name
            , workflowRun = \payloads -> do
                eWf <-
                  applyPayloads
                    codec
                    (Proxy @(ArgsOf f))
                    (Proxy @(Workflow (ResultOf Workflow f)))
                    f
                    payloads
                pure $ fmap (\wf -> wf >>= \result -> ilift (liftIO $ encode codec result)) eWf
            }
      , reference =
          KnownWorkflow
            { knownWorkflowCodec = codec
            , knownWorkflowName = name
            }
      }


-- TODO: Support a validator
provideUpdate
  :: forall codec f err
   . ( f ~ (ArgsOf f :->: Workflow (ResultOf Workflow f))
     , FunctionSupportsCodec codec (ArgsOf f) (ResultOf Workflow f)
     )
  => codec
  -> Text
  -> f
  -> ProvidedUpdate f err
provideUpdate codec name f =
  provideCallStack $
    ProvidedUpdate
      { updateDefinition =
          WorkflowUpdateDefinition
            { updateName = name
            , updateCodec = codec
            , updateFunction = f
            , updateValidator = Nothing
            , updateRunner = \f' payloads -> do
                eRes <-
                  applyPayloads
                    codec
                    (Proxy @(ArgsOf f))
                    (Proxy @(Workflow (ResultOf Workflow f)))
                    f'
                    payloads
                pure $ fmap (\wf -> wf >>= \result -> ilift (liftIO $ encode codec result)) eRes
            }
      , updateReference =
          KnownUpdate
            { knownUpdateCodec = codec
            , knownUpdateName = name
            }
      }


{- |
A Signal is an asynchronous request to a Workflow Execution.

A Signal delivers data to a running Workflow Execution. It cannot return data to the caller;
to do so, use a Query instead. The Workflow code that handles a Signal can mutate Workflow state.
A Signal can be sent from a Temporal Client or a Workflow.
When a Signal is sent, it is received by the Cluster and recorded as an Event to the Workflow Execution Event History.
A successful response from the Cluster means that the Signal has been persisted and will be delivered at least once to
the Workflow Execution.

A Signal must include a destination (Namespace and Workflow Id) and name. It can include a list of arguments.

Signal handlers are Workflow functions that listen for Signals by the Signal name.
Signals are delivered in the order they are received by the Cluster.
If multiple deliveries of a Signal would be a problem for your Workflow, add idempotency logic to your Signal handler
that checks for duplicates.
-}
data WorkflowSignalDefinition
  = forall codec f.
    (FunctionSupportsCodec codec (ArgsOf f) (ResultOf Workflow f), ResultOf Workflow f ~ ()) =>
    WorkflowSignalDefinition
      Text -- name
      codec
      f
      (f -> Vector Payload -> IO (Either String (Workflow ())))


-- { workflowSignalName :: Text
-- , workflowSignalHandler :: [Payload] -> IO ()
-- }

data WorkflowUpdateDefinition
  = forall codec f.
  (FunctionSupportsCodec codec (ArgsOf f) (ResultOf Workflow f)) =>
  WorkflowUpdateDefinition
  { updateName :: Text -- name
  , updateCodec :: codec
  , updateFunction :: f
  , updateValidator :: Maybe (ArgsOf f :->: Condition Bool)
  , updateRunner :: f -> Vector Payload -> IO (Either String (Workflow Payload))
  }
