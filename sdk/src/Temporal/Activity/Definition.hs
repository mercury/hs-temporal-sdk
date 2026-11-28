{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Temporal.Activity.Definition where

import Control.Applicative
import Control.Monad
import Control.Monad.Catch
import Control.Monad.Error.Class
import Control.Monad.Fix
import Control.Monad.Primitive (PrimMonad)
import Control.Monad.Reader
import Data.Kind
import Data.Text (Text)
import GHC.TypeLits
import Temporal.Activity.Types
import Temporal.Client.Types
import Temporal.Core.Client (Client)
import Temporal.Core.Worker (ActivityHeartbeat, WorkerConfig, WorkerError)
import Temporal.Payload
import Temporal.Workflow.Types
import UnliftIO
import Unsafe.Coerce


class ActivityDef a where
  type ActivityDefinitionEnv a :: Type
  activityDefinition :: a -> ActivityDefinition (ActivityDefinitionEnv a)


instance ActivityDef (ActivityDefinition env) where
  type ActivityDefinitionEnv (ActivityDefinition env) = env
  activityDefinition = id


data ProvidedActivity env f = ProvidedActivity
  { definition :: ActivityDefinition env
  , reference :: KnownActivity (ArgsOf f) (ResultOf (Activity env) f)
  }


-- | Transform the environment of an Activity.
mapActivityEnv :: (env' -> env) -> Activity env a -> Activity env' a
mapActivityEnv f (Activity m) = Activity (withReaderT (\a -> a {activityEnv = f $ activityEnv a}) m)


mapProvidedActivityEnv
  :: forall env env' f
   . ()
  => (env' -> env)
  -> ProvidedActivity env f
  -> ProvidedActivity env' (ArgsOf f :->: Activity env' (ResultOf (Activity env) f))
mapProvidedActivityEnv f (ProvidedActivity def ref) =
  ProvidedActivity
    (mapActivityDefinitionEnv f def)
    -- This seems sketchy on the face of it, but is safe because the parameters of `KnownActivity` have nothing
    -- to do with the environment. Sometimes env creeps in, but we can safely reason that reconstructing an
    -- Activity function with just a different environment is safe in terms of inputs and outputs matching types.
    (unsafeCoerce ref)


mapActivityDefinitionEnv :: (env' -> env) -> ActivityDefinition env -> ActivityDefinition env'
mapActivityDefinitionEnv f (ActivityDefinition name run) = ActivityDefinition name (mapActivityEnv f . run)


instance ActivityDef (ProvidedActivity env f) where
  type ActivityDefinitionEnv (ProvidedActivity env f) = env
  activityDefinition (ProvidedActivity def _) = def


data KnownActivity (args :: [Type]) (result :: Type)
  = forall codec.
  (FunctionSupportsCodec codec args result) =>
  KnownActivity
  { knownActivityCodec :: codec
  , knownActivityName :: Text
  }


data ActivityDefinition env = ActivityDefinition
  { activityName :: Text
  , activityRun :: ExecuteActivityInput -> Activity env (Either String Payload)
  }


data ActivityEnv env = ActivityEnv
  { activityInfo :: {-# UNPACK #-} !ActivityInfo
  , activityClientInterceptors :: {-# UNPACK #-} !ClientInterceptors
  , activityPayloadProcessor :: {-# UNPACK #-} !PayloadProcessor
  , activityRecordHeartbeat :: ActivityHeartbeat -> IO (Either WorkerError ())
  , activityWorkerConfig :: {-# UNPACK #-} !WorkerConfig
  , activityWorkerClient :: Client
  -- ^ __NOTE__: This field is /deliberately/ lazy in order to support the
  -- 'MockActivityEnvironment' type.
  --
  -- When 'runMockActivity' translates the mocked environment to 'ActivityEnv',
  -- initializes this field with a lazy exception that will only throw if the
  -- activity-under-test (illegally) accesses the worker client.
  , activityEnv :: env
  }


class ActivityRef (f :: Type) where
  type ActivityArgs f :: [Type]
  type ActivityResult f :: Type
  activityRef :: f -> KnownActivity (ActivityArgs f) (ActivityResult f)


instance VarArgs args => ActivityRef (KnownActivity args result) where
  type ActivityArgs (KnownActivity args result) = args
  type ActivityResult (KnownActivity args result) = result
  activityRef = id


instance ActivityRef (ProvidedActivity env f) where
  type ActivityArgs (ProvidedActivity env f) = ArgsOf f
  type ActivityResult (ProvidedActivity env f) = ResultOf (Activity env) f
  activityRef act = act.reference


type DirectActivityReferenceMsg =
  'Text "You can't run an 'Activity' directly in a 'Workflow' like this."
    ':$$: 'Text "A 'Workflow' must be deterministic, and 'Activity' values execute arbitrary IO."
    ':$$: 'Text "You will want to use a reference to a registered activity like 'KnownActivity' or 'RefFromFunction' to invoke the activity here."
    ':$$: 'Text "Then, you'll be able to call 'startActivity' or 'executeActivity' on it. So, instead of writing:"
    ':$$: 'Text "    > executeActivity myActivity ..."
    ':$$: 'Text "write:"
    ':$$: 'Text "    > executeActivity myActivityRef ..."


instance {-# OVERLAPPABLE #-} (f ~ (ArgsOf f :->: Activity env (ResultOf (Activity env) f)), TypeError DirectActivityReferenceMsg) => ActivityRef (a -> f) where
  type ActivityArgs (a -> f) = '[]
  type ActivityResult (a -> f) = ()
  activityRef _ = error "Should never be called"


instance TypeError DirectActivityReferenceMsg => ActivityRef (Activity env a) where
  type ActivityArgs (Activity env a) = '[]
  type ActivityResult (Activity env a) = a
  activityRef _ = error "Should never be called"


{- |
= What is an Activity?

An activity is a unit of work that is executed by a worker. It is a specialized function call
that can be executed one or more times, and can be cancelled while it is running.

Activity Definitions are executed as normal functions.

In the event of failure, the function begins at its initial state when retried (except when Activity Heartbeats are established).

Therefore, an Activity Definition has no restrictions on the code it contains.

= Idempotency

Temporal recommends that Activities be idempotent.

Idempotent means that performing an operation multiple times has the same result as performing it once. In the context of Temporal, Activities should be designed to be safely executed multiple times without causing unexpected or undesired side effects.

An Activity is idempotent if multiple Activity Task Executions do not change the state of the system beyond the first Activity Task Execution.

We recommend using idempotency keys for critical side effects.

The lack of idempotency might affect the correctness of your application but does not affect the Temporal Platform. In other words, lack of idempotency doesn't lead to a platform error.

In some cases, whether something is idempotent doesn't affect the correctness of an application. For example, if you have a monotonically incrementing counter, you might not care that retries increment the counter because you don’t care about the actual value, only that the current value is greater than a previous value.
-}
newtype Activity env a = Activity {unActivity :: ReaderT (ActivityEnv env) IO a}
  deriving newtype
    ( Functor
    , Applicative
    , Alternative
    , Monad
    , MonadFail
    , MonadFix
    , MonadError IOException
    , MonadIO
    , MonadPlus
    , MonadUnliftIO
    , MonadThrow
    , MonadCatch
    , MonadMask
    , PrimMonad
    )


runActivity :: ActivityEnv env -> Activity env a -> IO a
runActivity env (Activity m) = runReaderT m env


askActivityInfo :: Activity env ActivityInfo
askActivityInfo = Activity $ asks (.activityInfo)


askActivityRecordHeartbeat :: Activity env (ActivityHeartbeat -> IO (Either WorkerError ()))
askActivityRecordHeartbeat = Activity $ asks (.activityRecordHeartbeat)


{- | The Activity monad provides access to the underlying Temporal client
since it is very common for an Activity to interact with other Workflows.

A common use-case is to use 'Temporal.Client.signal' to signal another Workflow
from an Activity.

Using the provided client ensures that a consistent set of interceptors are used
for all relevant actions.
-}
askActivityClient :: Activity env Client
askActivityClient = Activity $ asks (.activityWorkerClient)


instance MonadReader env (Activity env) where
  ask = Activity $ asks (.activityEnv)
  local f (Activity m) = Activity $ local (\a -> a {Temporal.Activity.Definition.activityEnv = f $ Temporal.Activity.Definition.activityEnv a}) m
