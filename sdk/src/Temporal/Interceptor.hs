{- |
Module: Temporal.Interceptor
Description: Define interceptors for Temporal workflows and activities.

Temporal interceptors allow you to customize and extend the behavior of
workflows and activities by intercepting and modifying their execution at
various points. Interceptors can be used to add cross-cutting concerns,
such as logging, security, or monitoring, to your Temporal applications.

This module provides types and functions for defining and composing
interceptors for different parts of Temporal workflows and activities.

Types for different types of interceptors:

* 'WorkflowInboundInterceptor': An interceptor for workflows, invoked for
  commands sent to workflow execution.
* 'WorkflowOutboundInterceptor': An interceptor for workflows, invoked for
  commands sent from a workflow.
* 'ActivityInboundInterceptor': An interceptor for activities, invoked for
  commands sent to an activity.
* 'ActivityOutboundInterceptor': An interceptor for activities, invoked for
  actions executed by an activity.
* 'ClientInterceptors': Interceptors for Temporal clients.

Functions for composing interceptors:

* 'interceptorConvertChildWorkflowHandle': A function for converting child
  workflow handles within interceptors.

Example usage of interceptors:

* Define a custom interceptor for activities using 'ActivityInboundInterceptor'.

   > myActivityInterceptor :: ActivityInboundInterceptor
   > myActivityInterceptor = ActivityInboundInterceptor
   >   { executeActivity = \input next -> do
   >       -- Perform custom logic before calling the activity function
   >       result <- next input
   >       -- Perform custom logic after the activity function completes
   >       return result
   >   }

* Compose multiple interceptors using 'Semigroup' instances.

   > combinedInterceptor :: Interceptor
   > combinedInterceptor = bugsnagInterceptor <> encryptionInterceptor <> otelInterceptor

* Provide the interceptors to the Temporal Workflow client and worker.
-}
module Temporal.Interceptor (
  Interceptors (..),
  ExecuteWorkflowInput (..),
  WorkflowInboundInterceptor (..),
  HandleQueryInput (..),
  HandleUpdateInput (..),
  WorkflowOutboundInterceptor (..),
  ActivityInput (..),
  LocalActivityInput (..),
  ActivityInboundInterceptor (..),
  ExecuteActivityInput (..),
  ActivityOutboundInterceptor (..),
  WorkflowExitVariant (..),
  ClientInterceptors (..),
  QueryWorkflowInput (..),
  UpdateWorkflowInput (..),
  SignalWithStartWorkflowInput (..),
  ScheduleClientInterceptors (..),
  StartWorkflowOptions (..),
  interceptorConvertChildWorkflowHandle,
  workflowInstanceInterceptorVault,
) where

import Data.IORef (IORef)
import Data.Vault.Strict
import Temporal.Client.Types
import Temporal.Payload
import Temporal.Workflow.Internal.Monad
import Temporal.Workflow.Types


data ActivityInboundInterceptor env = ActivityInboundInterceptor
  { executeActivity :: env -> ExecuteActivityInput -> (env -> ExecuteActivityInput -> IO (Either String Payload)) -> IO (Either String Payload)
  }


instance Semigroup (ActivityInboundInterceptor env) where
  l <> r =
    ActivityInboundInterceptor
      { executeActivity = \env input next -> executeActivity l env input $ \env' input' -> executeActivity r env' input' next
      }


instance Monoid (ActivityInboundInterceptor env) where
  mempty =
    ActivityInboundInterceptor
      { executeActivity = \env input next -> next env input
      }


data ActivityOutboundInterceptor env = ActivityOutboundInterceptor {}


instance Semigroup (ActivityOutboundInterceptor env) where
  ActivityOutboundInterceptor <> ActivityOutboundInterceptor = ActivityOutboundInterceptor


instance Monoid (ActivityOutboundInterceptor env) where
  mempty = ActivityOutboundInterceptor


data Interceptors env = Interceptors
  { workflowInboundInterceptors :: {-# UNPACK #-} !WorkflowInboundInterceptor
  , workflowOutboundInterceptors :: {-# UNPACK #-} !WorkflowOutboundInterceptor
  , activityInboundInterceptors :: !(ActivityInboundInterceptor env)
  , activityOutboundInterceptors :: !(ActivityOutboundInterceptor env)
  , clientInterceptors :: {-# UNPACK #-} !ClientInterceptors
  , scheduleClientInterceptors :: {-# UNPACK #-} !ScheduleClientInterceptors
  , interceptorVault :: {-# UNPACK #-} !Vault
  }


instance Semigroup (Interceptors env) where
  Interceptors a b c d e f g <> Interceptors a' b' c' d' e' f' g' = Interceptors (a <> a') (b <> b') (c <> c') (d <> d') (e <> e') (f <> f') (g <> g')


instance Monoid (Interceptors env) where
  mempty = Interceptors mempty mempty mempty mempty mempty mempty mempty


data ScheduleClientInterceptors = ScheduleClientInterceptors
  { scheduleWorkflowAction :: StartWorkflowOptions -> [Payload] -> IO StartWorkflowOptions
  -- ^ Unlike the other interceptors, this one is invoked on the construction of the workflow start options
  }


instance Semigroup ScheduleClientInterceptors where
  ScheduleClientInterceptors a <> ScheduleClientInterceptors b =
    ScheduleClientInterceptors
      { scheduleWorkflowAction = \opts input -> do
          opts' <- a opts input
          b opts' input
      }


instance Monoid ScheduleClientInterceptors where
  mempty =
    ScheduleClientInterceptors
      { scheduleWorkflowAction = \opts _ -> return opts
      }


{- | Per-workflow storage shared between inbound interceptor callbacks.

Store values during 'executeWorkflow' and retrieve them from
'finalizeWorkflow'. The SDK clears the vault when the workflow instance is
finalized.
-}
workflowInstanceInterceptorVault :: WorkflowInstance -> IORef Vault
workflowInstanceInterceptorVault = (.workflowVault)
