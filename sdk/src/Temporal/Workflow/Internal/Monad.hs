{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

module Temporal.Workflow.Internal.Monad where

import Control.Applicative
import Control.Concurrent.Async
import Control.Monad
import qualified Control.Monad.Catch as Catch
import Control.Monad.Logger
import Control.Monad.Reader
import Data.Atomics (atomicModifyIORefCAS)
import Data.HashMap.Strict (HashMap)
import qualified Data.HashMap.Strict as HashMap
import Data.Kind
import Data.Map.Strict (Map)
import Data.Monoid (Endo (..))
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Text (Text)
import Data.Time.Clock.System (SystemTime)
import Data.Vault.Strict
import Data.Vector (Vector)
import Data.Word (Word32, Word64)
import GHC.Stack
import GHC.TypeLits
import Proto.Temporal.Sdk.Core.WorkflowActivation.WorkflowActivation
import Proto.Temporal.Sdk.Core.WorkflowCommands.WorkflowCommands (WorkflowCommand)
import RequireCallStack
import System.Random (
  genShortByteString,
  genWord16,
  genWord32,
  genWord32R,
  genWord64,
  genWord64R,
  genWord8,
 )
import System.Random.Stateful (FrozenGen (..), RandomGenM (..), StatefulGen (..), StdGen
#if MIN_VERSION_random(1,3,0)
                              , ThawedGen (..)
#endif
                              )
import Temporal.Common
import qualified Temporal.Core.Worker as Core
import Temporal.Exception
import Temporal.Payload
import Temporal.Workflow.Types
import Text.Printf
import UnliftIO


{- | The Workflow monad is a constrained execution environment that helps
developers write code that can be executed deterministically and reliably.

If a Workflow execution is interrupted, for example due to a server failure,
or otherwise fails to complete, the Temporal service will automatically
replay the Workflow execution up to the point of interruption with the same
inputs at each step in the function.

The 'st' state may be used to store information that is needed to respond to
any queries or signals that are received by the Workflow execution.

Workflow code must be deterministic. This means:

- no threading
- no randomness
- no external calls to processes
- no network I/O
- no global state mutation
- no system date or time

This might seem like a lot of restrictions, but Temporal provides a number of
functions that allow you to use similar functionality in a deterministic way.

A critical aspect of developing Workflow Definitions is ensuring they exhibit certain deterministic traits –
that is, making sure that the same Commands are emitted in the same sequence,
whenever a corresponding Workflow Function Execution (instance of the Function Definition) is re-executed.
-}
newtype Workflow a = Workflow {unWorkflow :: ContinuationEnv -> InstanceM (Result a)}


ilift :: RequireCallStack => InstanceM a -> Workflow a
ilift m = Workflow $ \_ -> Done <$> m


askInstance :: Workflow WorkflowInstance
askInstance = Workflow $ \_ -> asks Done


addCommand :: WorkflowCommand -> InstanceM ()
addCommand command = do
  inst <- ask
  atomically $ do
    modifyTVar' inst.workflowCommands $ \cmds -> push command cmds


{- | This function can be used to trace a bunch of lines to stdout when
debugging core.
-}
trace_ :: String -> a -> a
trace_ _ = id


-- trace_ = Debug.Trace.trace

data ContinuationEnv = ContinuationEnv
  { runQueueRef :: {-# UNPACK #-} !(IORef JobList)
  -- ^ runnable computations. Things get added to here when we wake up
  -- a computation that was waiting for something.  When the list is
  -- empty, either we're finished, or we're waiting for some data fetch
  -- to return.
  }


instance Functor Workflow where
  fmap f (Workflow m) = Workflow $ \env -> do
    r <- m env
    case r of
      Done a -> return (Done (f a))
      Throw e -> return (Throw e)
      Blocked ivar cont ->
        trace_ "fmap Blocked" $
          return (Blocked ivar (f :<$> cont))


instance Applicative Workflow where
  pure a = Workflow $ \_env -> return (Done a)


  -- TODO: Don't use parallelAp here, because people get too
  -- confused about what's going on.
  ff <*> aa = ff >>= \f -> aa >>= \a -> pure (f a)


-- (<*>) = parallelAp

parallelAp :: Workflow (a -> b) -> Workflow a -> Workflow b
parallelAp (Workflow ff) (Workflow aa) = Workflow $ \env -> do
  rf <- ff env
  case rf of
    Done f -> do
      ra <- aa env
      case ra of
        Done a -> trace_ "Done/Done" $ return (Done (f a))
        Throw e -> trace_ "Done/Throw" $ return (Throw e)
        Blocked ivar fcont ->
          trace_ "Done/Blocked" $
            return (Blocked ivar (f :<$> fcont))
    Throw e -> trace_ "Throw" $ return (Throw e)
    Blocked ivar1 fcont -> do
      ra <- aa env
      case ra of
        Done a ->
          trace_ "Blocked/Done" $
            return (Blocked ivar1 (($ a) :<$> fcont))
        Throw e ->
          trace_ "Blocked/Throw" $
            return (Blocked ivar1 (fcont :>>= (\_ -> throw e)))
        -- Note [Blocked/Blocked]
        Blocked ivar2 acont ->
          trace_ "Blocked/Blocked" $
            blockedBlocked env ivar1 fcont ivar2 acont


blockedBlocked
  :: ContinuationEnv
  -> IVar c
  -> Cont (a -> b)
  -> IVar d
  -> Cont a
  -> InstanceM (Result b)
blockedBlocked _ _ (Return i) ivar2 acont =
  return (Blocked ivar2 (acont :>>= getIVarApply i))
blockedBlocked _ _ (g :<$> Return i) ivar2 acont =
  return (Blocked ivar2 (acont :>>= \a -> (`g` a) <$> getIVar i))
blockedBlocked env ivar1 fcont ivar2 acont = do
  i <- newIVar
  addJob env (toWf fcont) i ivar1
  let cont = acont :>>= \a -> getIVarApply i a
  return (Blocked ivar2 cont)


-- Note [Blocked/Blocked]
--
-- This is the tricky case: we're blocked on both sides of the <*>.
-- We need to divide the computation into two pieces that may continue
-- independently when the resources they are blocked on become
-- available.  Moreover, the computation as a whole depends on the two
-- pieces.  It works like this:
--
--   ff <*> aa
--
-- becomes
--
--   (ff >>= putIVar i) <*> (a <- aa; f <- getIVar i; return (f a)
--
-- where the IVar i is a new synchronisation point.  If the right side
-- gets to the `getIVar` first, it will block until the left side has
-- called 'putIVar'.
--
-- We can also do it the other way around:
--
--   (do ff <- f; getIVar i; return (ff a)) <*> (a >>= putIVar i)

instance Monad Workflow where
  Workflow m >>= k = Workflow $ \env -> do
    e <- m env
    case e of
      Done a -> unWorkflow (k a) env
      Throw e' -> return (Throw e')
      Blocked ivar cont ->
        trace_ ">>= Blocked" $
          return (Blocked ivar (cont :>>= k))


-- A note on (>>):
--
-- Unlike Haxl, we can't use the the Applicative version here, because
-- it prevents us from sleeping between two actions. We can use (*>) ourselves
-- to opt into the Applicative version when we want to.

-- TODO If the first computation throws a value that implements 'SomeWorkflowException',
-- try the second one.
instance Alternative Workflow where
  empty = throw AlternativeInstanceFailure
  (<|>) l r = l `Temporal.Workflow.Internal.Monad.catch` \(SomeException _) -> r


instance TypeError ('Text "A workflow definition cannot directly perform IO. Use executeActivity or executeLocalActivity instead.") => MonadIO Workflow where
  liftIO = error "Unreachable"


instance TypeError ('Text "A workflow definition cannot directly perform IO. Use executeActivity or executeLocalActivity instead.") => MonadUnliftIO Workflow where
  withRunInIO _ = error "Unreachable"


instance {-# OVERLAPPABLE #-} MonadLogger Workflow where
  monadLoggerLog loc src lvl msg = Workflow $ \_ -> do
    logger <- asks workflowInstanceLogger
    fmap Done $ liftIO $ logger loc src lvl (toLogStr msg)


instance Semigroup a => Semigroup (Workflow a) where
  (<>) = liftA2 (<>)


instance Monoid a => Monoid (Workflow a) where
  mempty = pure mempty


-- -----------------------------------------------------------------------------
-- Exceptions

-- | Throw an exception in the Workflow monad
throw :: (HasCallStack, Exception e) => e -> Workflow a
throw e = Workflow $ \env -> liftIO $ raise env e


{-# INLINE raiseImpl #-}
raiseImpl :: ContinuationEnv -> SomeException -> IO (Result b)
raiseImpl _ e = return $ Throw e


raise :: Exception e => ContinuationEnv -> e -> IO (Result a)
raise env e = raiseImpl env (toException e)


-- | Catch an exception in the Workflow monad
catch :: Exception e => Workflow a -> (e -> Workflow a) -> Workflow a
catch (Workflow m) h = Workflow $ \env -> do
  r <- UnliftIO.try $ m env
  case r of
    Left e -> unWorkflow (h e) env
    Right r' -> case r' of
      Done a -> pure $ Done a
      Throw e
        | Just e' <- fromException e -> unWorkflow (h e') env
        | otherwise -> liftIO $ raise env e
      Blocked ivar k -> return $ Blocked ivar $ Cont $ Temporal.Workflow.Internal.Monad.catch (toWf k) h


-- | Catch exceptions that satisfy a predicate
catchIf
  :: Exception e
  => (e -> Bool)
  -> Workflow a
  -> (e -> Workflow a)
  -> Workflow a
catchIf cond m handler =
  Temporal.Workflow.Internal.Monad.catch m $ \e -> if cond e then handler e else throw e


{- | Returns @'Left' e@ if the computation throws an exception @e@, or
@'Right' a@ if it returns a result @a@.
-}
try :: Exception e => Workflow a -> Workflow (Either e a)
try m = (Right <$> m) `Temporal.Workflow.Internal.Monad.catch` (return . Left)


instance Catch.MonadThrow Workflow where throwM = Temporal.Workflow.Internal.Monad.throw


instance Catch.MonadCatch Workflow where catch = Temporal.Workflow.Internal.Monad.catch


newtype WorkflowGenM = WorkflowGenM {unWorkflowGenM :: IORef StdGen}


instance StatefulGen WorkflowGenM Workflow where
  uniformWord32R r = applyWorkflowGen (genWord32R r)
  {-# INLINE uniformWord32R #-}
  uniformWord64R r = applyWorkflowGen (genWord64R r)
  {-# INLINE uniformWord64R #-}
  uniformWord8 = applyWorkflowGen genWord8
  {-# INLINE uniformWord8 #-}
  uniformWord16 = applyWorkflowGen genWord16
  {-# INLINE uniformWord16 #-}
  uniformWord32 = applyWorkflowGen genWord32
  {-# INLINE uniformWord32 #-}
  uniformWord64 = applyWorkflowGen genWord64
  {-# INLINE uniformWord64 #-}
  uniformShortByteString n = applyWorkflowGen (genShortByteString n)


applyWorkflowGen :: (StdGen -> (a, StdGen)) -> WorkflowGenM -> Workflow a
applyWorkflowGen f (WorkflowGenM ref) = Workflow $ \_ -> do
  g <- readIORef ref
  case f g of
    (!a, !g') -> Done a <$ writeIORef ref g'
{-# INLINE applyWorkflowGen #-}


newWorkflowGenM :: StdGen -> Workflow WorkflowGenM
newWorkflowGenM g = Workflow $ \_ -> Done . WorkflowGenM <$> newIORef g
{-# INLINE newWorkflowGenM #-}


instance RandomGenM WorkflowGenM StdGen Workflow where
  applyRandomGenM = applyWorkflowGen


instance FrozenGen StdGen Workflow where
  type MutableGen StdGen Workflow = WorkflowGenM
  freezeGen g = Workflow $ \_ -> Done <$> readIORef (unWorkflowGenM g)

#if MIN_VERSION_random(1,3,0)
instance ThawedGen StdGen Workflow where
#endif
  thawGen = newWorkflowGenM


{-# INLINE addJob #-}
addJob :: ContinuationEnv -> Workflow b -> IVar b -> IVar a -> InstanceM ()
addJob env !wf !resultIVar IVar {ivarRef = ref} =
  join $ liftIO $ atomicModifyIORefCAS ref $ \case
    IVarEmpty list -> (IVarEmpty (JobCons env wf resultIVar list), pure ())
    full -> (full, modifyIORef' env.runQueueRef (JobCons env wf resultIVar))


{- | Yield control back to the workflow scheduler, re-queueing the current
continuation behind everything that is currently runnable.

This is a purely local yield: it appends the continuation to the instance run
queue and returns control to the scheduler, emits __no__ command, writes
__no__ history, and never reaches the flush-and-suspend boundary, does not
round-trip to the server and is invisible to replay.
-}
yield :: Workflow ()
yield = Workflow $ \env -> do
  -- NOTE: We return `Blocked gate` on a fresh, empty `IVar` so the scheduler
  -- parks the current continuation in gate's waiting list, and we append a
  -- trivial "filler" job, targeting gate, to the back of the run queue.
  --
  -- Once the scheduler drains everything ahead of it, the filler runs, fills
  -- gate, and the parked continuation is re-queued and resumed.
  --
  -- Keeping a job on the run queue for the duration of the yield is what prevents
  -- the scheduler from flushing commands and suspending.
  --
  -- The gate is intentionally untracked so this momentary block does not show
  -- up in __stack_trace queries.
  gate <- newIVar
  let filler = Workflow $ \_ -> pure (Done ())
  liftIO $ modifyIORef' env.runQueueRef $ \j ->
    appendJobList j (JobCons env filler gate JobNil)
  pure (Blocked gate (Return gate))


-- -----------------------------------------------------------------------------
-- Cont

{- | A data representation of a Workflow continuation.  This is to avoid
repeatedly traversing a left-biased tree in a continuation, leading
O(n^2) complexity for some pathalogical cases.

See "A Smart View on Datatypes", Jaskelioff/Rivas, ICFP'15
-}
data Cont a
  = Cont (Workflow a)
  | forall b. Cont b :>>= (b -> Workflow a)
  | forall b. (b -> a) :<$> (Cont b)
  | Return (IVar a)


toWf :: Cont a -> Workflow a
toWf (Cont wf) = wf
toWf (m :>>= k) = toWfBind m k
toWf (f :<$> x) = toWfFmap f x
toWf (Return i) = getIVar i


toWfBind :: Cont b -> (b -> Workflow a) -> Workflow a
toWfBind (m :>>= k) k2 = toWfBind m (k >=> k2)
toWfBind (Cont wf) k = wf >>= k
toWfBind (f :<$> x) k = toWfBind x (k . f)
toWfBind (Return i) k = getIVar i >>= k


toWfFmap :: (a -> b) -> Cont a -> Workflow b
toWfFmap f (m :>>= k) = toWfBind m (k >=> return . f)
toWfFmap f (Cont wf) = f <$> wf
toWfFmap f (g :<$> x) = toWfFmap (f . g) x
toWfFmap f (Return i) = f <$> getIVar i


-- -----------------------------------------------------------------------------
-- Result

{- | The result of a computation is either 'Done' with a value, 'Throw'
with an exception, or 'Blocked' on the result of a data fetch with
a continuation.
-}
data Result a
  = Done a
  | Throw SomeException
  | -- | The 'IVar' is what we are blocked on; 'Cont' is the
    -- continuation.  This might be wrapped further if we're
    -- nested inside multiple '>>=', before finally being added
    -- to the 'IVar'.
    forall b.
    Blocked
      {-# UNPACK #-} !(IVar b)
      (Cont a)


{- | A list of computations together with the IVar into which they
should put their result.

This could be an ordinary list, but the optimised representation
saves space and time.
-}
data JobList
  = JobNil
  | forall a.
    JobCons
      ContinuationEnv
      (Workflow a)
      {-# UNPACK #-} !(IVar a)
      JobList


appendJobList :: JobList -> JobList -> JobList
appendJobList JobNil c = c
appendJobList c JobNil = c
appendJobList (JobCons a b c d) e = JobCons a b c $! appendJobList d e


lengthJobList :: JobList -> Int
lengthJobList JobNil = 0
lengthJobList (JobCons _ _ _ j) = 1 + lengthJobList j


instance (Show a) => Show (Result a) where
  show (Done a) = printf "Done(%s)" $ show a
  show (Throw e) = printf "Throw(%s)" $ show e
  show Blocked {} = "Blocked"


data IVarContents a
  = IVarFull (ResultVal a)
  | IVarEmpty JobList


{- | A synchronisation point. It either contains a value, or a list of
computations waiting for the value.

When 'ivarId' is non-zero, the runtime tracks the call stack at the
point this IVar blocks so that @__stack_trace@ and
@__enhanced_stack_trace@ queries can report concurrent stacks.
-}
data IVar a = IVar
  { ivarId :: {-# UNPACK #-} !Word64
  , ivarRef :: {-# UNPACK #-} !(IORef (IVarContents a))
  }


{- | The contents of a full IVar.  We have to distinguish exceptions
thrown by the machinery of the library from those thrown in the
Workflow, so -- that when the result is fetched using getIVar,
we can handle the exception in the right way.
-}
data ResultVal a
  = Ok a
  | -- Unrecoverable error in the temporal library that should crash the worker
    ThrowInternal SomeException
  | -- Error in the workflow that should be returned to the caller
    ThrowWorkflow SomeException


newIVar :: MonadIO m => m (IVar a)
newIVar = do
  ivarRef <- newIORef $ IVarEmpty JobNil
  pure IVar {ivarId = 0, ..}


-- | Allocate an IVar with a unique id drawn from the per-instance counter.
-- Tracked IVars have their blocking call stacks recorded so that built-in
-- queries can report all concurrent stacks.
newTrackedIVar :: InstanceM (IVar a)
newTrackedIVar = do
  inst <- ask
  ivarId <- liftIO $ atomicModifyIORefCAS inst.workflowIVarCounter (\n -> let !n' = n + 1 in (n', n'))
  ivarRef <- newIORef $ IVarEmpty JobNil
  pure IVar {..}


getIVar :: IVar a -> Workflow a
getIVar i@(IVar {ivarId = vid, ivarRef = ref}) = Workflow $ \env -> do
  e <- readIORef ref
  case e of
    IVarFull (Ok a) -> do
      when (vid /= 0) $ removeBlockedStack vid
      pure $ Done a
    IVarFull (ThrowWorkflow e') -> do
      when (vid /= 0) $ removeBlockedStack vid
      liftIO $ raiseFromIVar env i e'
    IVarFull (ThrowInternal e') -> do
      when (vid /= 0) $ removeBlockedStack vid
      throwIO e'
    IVarEmpty _ -> do
      when (vid /= 0) $ recordBlockedStack vid
      pure $ Blocked i (Return i)


-- Just a specialised version of getIVar, for efficiency in <*>
getIVarApply :: IVar (a -> b) -> a -> Workflow b
getIVarApply i@IVar {ivarId = vid, ivarRef = ref} a = Workflow $ \env -> do
  e <- readIORef ref
  case e of
    IVarFull (Ok f) -> do
      when (vid /= 0) $ removeBlockedStack vid
      return (Done (f a))
    IVarFull (ThrowWorkflow e') -> do
      when (vid /= 0) $ removeBlockedStack vid
      liftIO $ raiseFromIVar env i e'
    IVarFull (ThrowInternal e') -> do
      when (vid /= 0) $ removeBlockedStack vid
      throwIO e'
    IVarEmpty _ -> do
      when (vid /= 0) $ recordBlockedStack vid
      return (Blocked i (Cont (getIVarApply i a)))


recordBlockedStack :: Word64 -> InstanceM ()
recordBlockedStack vid = do
  inst <- ask
  cs <- readIORef inst.workflowCallStack
  modifyIORef' inst.workflowBlockedStacks $ HashMap.insert vid cs


removeBlockedStack :: Word64 -> InstanceM ()
removeBlockedStack vid = do
  inst <- ask
  modifyIORef' inst.workflowBlockedStacks $ HashMap.delete vid


putIVar :: IVar a -> ResultVal a -> ContinuationEnv -> IO ()
putIVar IVar {ivarRef = ref} a ContinuationEnv {..} = do
  e <- readIORef ref
  case e of
    IVarEmpty jobs -> trace_ "putIVar/Empty" $ do
      writeIORef ref (IVarFull a)
      modifyIORef' runQueueRef (appendJobList jobs)
    -- An IVar is typically only meant to be written to once
    -- so it would make sense to throw an error here. But there
    -- are legitimate use-cases for writing several times.
    IVarFull {} -> trace_ "putIVar/Full" return ()


tryReadIVar :: IVar a -> Workflow (Maybe a)
tryReadIVar i@IVar {ivarRef = ref} = Workflow $ \env -> do
  e <- readIORef ref
  case e of
    IVarFull (Ok a) -> pure $ Done (Just a)
    IVarFull (ThrowWorkflow e') -> liftIO $ raiseFromIVar env i e'
    IVarFull (ThrowInternal e') -> throwIO e'
    IVarEmpty _ -> pure $ Done Nothing


raiseFromIVar :: Exception e => ContinuationEnv -> IVar a -> e -> IO (Result b)
raiseFromIVar env _ivar e = raiseImpl env (toException e)


{- | A very restricted Monad that allows for reading 'StateVar' values. This Monad
keeps track of which 'StateVar' values are read so that it can block and retry
the computation if any of the values change.
-}
newtype Condition a = Condition
  { unCondition :: ReaderT (IORef (Set Sequence)) InstanceM a
  -- ^ We track the sequence number of each accessed StateVar so that we can
  -- block and retry the condition evaluation if the state changes.
  }
  deriving newtype (Functor, Applicative, Monad)


newtype Validation a = Validation
  {unValidation :: IO a}
  deriving newtype (Functor, Applicative, Monad, Catch.MonadThrow, Catch.MonadCatch)


{- | 'StateVar' values are mutable variables scoped to a Workflow run.

'Workflow's are deterministic, so you may not use normal IORefs, since the IORef
could have been created outside of the workflow and cause nondeterminism.

However, it is totally safe to mutate state variables as long as they are scoped
to a workflow and derive their state transitions from the workflow's deterministic
execution.

StateVar values may also be read from within a query and mutated within signal handlers.
-}
data StateVar a = StateVar
  { stateVarId :: !Sequence
  , stateVarRef :: !(IORef a)
  }


instance Eq (StateVar a) where
  a == b = stateVarId a == stateVarId b


instance Ord (StateVar a) where
  compare a b = compare (stateVarId a) (stateVarId b)


newStateVar :: a -> Workflow (StateVar a)
newStateVar a = Workflow $ \_ -> do
  Done <$> (StateVar <$> nextVarIdSequence <*> newIORef a)


reevaluateDependentConditions :: StateVar a -> InstanceM ()
reevaluateDependentConditions cref = do
  inst <- ask
  join $ atomically $ do
    seqMaps <- readTVar inst.workflowSequenceMaps
    let pendingConds = seqMaps.conditionsAwaitingSignal
        (reactivateConds, unactivatedConds) =
          HashMap.foldlWithKey'
            ( \(reactivateConds', unactivatedConds') k v@(ivar, varDependencies) ->
                if cref.stateVarId `Set.member` varDependencies
                  then
                    ( reactivateConds' >> liftIO (putIVar ivar (Ok ()) inst.workflowInstanceContinuationEnv)
                    , unactivatedConds'
                    )
                  else
                    ( reactivateConds'
                    , HashMap.insert k v unactivatedConds'
                    )
            )
            (pure (), mempty)
            pendingConds
    writeTVar inst.workflowSequenceMaps (seqMaps {conditionsAwaitingSignal = unactivatedConds})
    pure reactivateConds


class MonadReadStateVar m where
  readStateVar :: StateVar a -> m a


class MonadWriteStateVar m where
  writeStateVar :: StateVar a -> a -> m ()
  modifyStateVar :: StateVar a -> (a -> a) -> m ()


instance MonadReadStateVar Condition where
  readStateVar var = Condition $ do
    touchedVars <- ask
    modifyIORef' touchedVars (Set.insert var.stateVarId)
    readIORef var.stateVarRef


instance MonadReadStateVar Validation where
  readStateVar var = Validation $ readIORef var.stateVarRef


instance MonadReadStateVar Workflow where
  readStateVar var = Workflow $ \_ -> Done <$> readIORef var.stateVarRef


instance MonadWriteStateVar Workflow where
  writeStateVar var a = Workflow $ \_ -> do
    writeIORef var.stateVarRef a
    reevaluateDependentConditions var
    pure $ Done ()
  modifyStateVar var f = Workflow $ \_ -> do
    res <- modifyIORef' var.stateVarRef f
    reevaluateDependentConditions var
    pure $ Done res


{- | The Query monad is a very constrained version of the Workflow monad. It can
only read state variables and return values. It is used to define query handlers.
-}
newtype Query a = Query (InstanceM a)
  deriving newtype (Functor, Applicative, Monad)


instance MonadReadStateVar Query where
  readStateVar var = Query $ readIORef var.stateVarRef


newtype InstanceM (a :: Type) = InstanceM {unInstanceM :: ReaderT WorkflowInstance IO a}
  deriving newtype
    ( Functor
    , Applicative
    , Monad
    , MonadIO
    , MonadReader WorkflowInstance
    , MonadUnliftIO
    , Catch.MonadThrow
    , Catch.MonadCatch
    , Catch.MonadMask
    )


instance MonadLogger InstanceM where
  monadLoggerLog loc src lvl msg = do
    logger <- asks workflowInstanceLogger
    liftIO $ logger loc src lvl (toLogStr msg)


instance MonadLoggerIO InstanceM where
  askLoggerIO = asks workflowInstanceLogger


-- Bit of a hack. This needs to be called for each workflow activity in the official SDK
updateCallStack :: RequireCallStack => InstanceM ()
updateCallStack = do
  inst <- ask
  writeIORef inst.workflowCallStack $ popCallStack callStack


updateCallStackW :: RequireCallStack => Workflow ()
updateCallStackW = Workflow $ \_ -> do
  inst <- ask
  writeIORef inst.workflowCallStack $ popCallStack callStack
  pure $ Done ()


data WorkflowUpdateImplementation = WorkflowUpdateImplementation
  { updateImplementation :: !(UpdateId -> Vector Payload -> Map Text Payload -> Workflow Payload)
  , updateValidationImplementation :: {-# UNPACK #-} !(Maybe (UpdateId -> Vector Payload -> Map Text Payload -> Validation (Either SomeException ())))
  }


data WorkflowInstance = WorkflowInstance
  { workflowInstanceInfo :: {-# UNPACK #-} !(IORef Info)
  , workflowInstanceLogger :: Loc -> LogSource -> LogLevel -> LogStr -> IO ()
  , workflowRandomnessSeed :: WorkflowGenM
  , workflowNotifiedPatches :: {-# UNPACK #-} !(IORef (Set PatchId))
  , workflowMemoizedPatches :: {-# UNPACK #-} !(IORef (HashMap PatchId Bool))
  , workflowSequences :: {-# UNPACK #-} !(IORef Sequences)
  , workflowTime :: {-# UNPACK #-} !(IORef SystemTime)
  , workflowIsReplaying :: {-# UNPACK #-} !(IORef Bool)
  , workflowCommands :: {-# UNPACK #-} !(TVar (Reversed WorkflowCommand))
  , workflowSequenceMaps :: {-# UNPACK #-} !(TVar SequenceMaps)
  , workflowSignalHandlers :: {-# UNPACK #-} !(IORef (HashMap (Maybe Text) (Vector Payload -> Workflow ())))
  , -- | Signals that arrived before their handler was registered.
    -- These are buffered and delivered when setSignalHandler is called.
    -- Uses Endo for O(1) append (diff-list style).
    workflowBufferedSignals :: {-# UNPACK #-} !(IORef (HashMap Text (Endo [Vector Payload])))
  , workflowQueryHandlers :: {-# UNPACK #-} !(IORef (HashMap (Maybe Text) (QueryId -> Vector Payload -> Map Text Payload -> IO (Either SomeException Payload))))
  , workflowUpdateHandlers :: {-# UNPACK #-} !(IORef (HashMap (Maybe Text) WorkflowUpdateImplementation))
  , workflowCallStack :: {-# UNPACK #-} !(IORef CallStack)
  , workflowIVarCounter :: {-# UNPACK #-} !(IORef Word64)
  , workflowBlockedStacks :: {-# UNPACK #-} !(IORef (HashMap Word64 CallStack))
  , workflowCompleteActivation :: !(Core.WorkflowActivationCompletion -> IO (Either Core.WorkerError ()))
  , workflowInstanceContinuationEnv :: {-# UNPACK #-} !ContinuationEnv
  , workflowCancellationVar :: {-# UNPACK #-} !(IVar ())
  , workflowDeadlockTimeout :: Maybe Int
  , workflowVault :: {-# UNPACK #-} !(IORef Vault)
  , -- These are how the instance gets its work done
    activationChannel :: {-# UNPACK #-} !(TQueue Core.WorkflowActivation)
  , executionThread :: {-# UNPACK #-} !(IORef (Async ()))
  , executionCancelled :: {-# UNPACK #-} !(IORef Bool)
  , inboundInterceptor :: {-# UNPACK #-} !WorkflowInboundInterceptor
  , outboundInterceptor :: {-# UNPACK #-} !WorkflowOutboundInterceptor
  , -- Improves error reporting
    errorConverters :: [ApplicationFailureHandler]
  , payloadProcessor :: {-# UNPACK #-} !PayloadProcessor
  }


data SomeChildWorkflowHandle = forall result. SomeChildWorkflowHandle (ChildWorkflowHandle result)


type SequenceMap a = HashMap Sequence a


data Sequences = Sequences
  { externalCancel :: {-# UNPACK #-} !Word32
  , childWorkflow :: {-# UNPACK #-} !Word32
  , externalSignal :: {-# UNPACK #-} !Word32
  , timer :: {-# UNPACK #-} !Word32
  , activity :: {-# UNPACK #-} !Word32
  , condition :: {-# UNPACK #-} !Word32
  , varId :: {-# UNPACK #-} !Word32
  , nexusOperation :: {-# UNPACK #-} !Word32
  }


-- Newtyped because the list is reversed
newtype Reversed a = Reversed [a]
  deriving newtype (Functor, Show, Eq)


fromReversed :: Reversed a -> [a]
fromReversed (Reversed xs) = reverse xs


push :: a -> Reversed a -> Reversed a
push x (Reversed xs) = Reversed (x : xs)


data NexusOperationHandles = NexusOperationHandles
  { nexusStartHandle :: {-# UNPACK #-} !(IVar NexusOperationStartResult)
  , nexusResultHandle :: {-# UNPACK #-} !(IVar NexusOperationResult)
  }


data SequenceMaps = SequenceMaps
  { timers :: {-# UNPACK #-} !(SequenceMap (IVar ()))
  , activities :: {-# UNPACK #-} !(SequenceMap (IVar ResolveActivity))
  , childWorkflows :: {-# UNPACK #-} !(SequenceMap SomeChildWorkflowHandle)
  , externalSignals :: {-# UNPACK #-} !(SequenceMap (IVar ResolveSignalExternalWorkflow))
  , externalCancels :: {-# UNPACK #-} !(SequenceMap (IVar ResolveRequestCancelExternalWorkflow))
  , conditionsAwaitingSignal :: {-# UNPACK #-} !(SequenceMap (IVar (), Set Sequence))
  , nexusOperations :: {-# UNPACK #-} !(SequenceMap NexusOperationHandles)
  }


-- | An async action handle that can be awaited or cancelled.
data Task a = Task
  { waitAction :: Workflow a
  , cancelAction :: Workflow ()
  }


instance Functor Task where
  fmap f (Task wait' cancel') = Task (fmap f wait') cancel'


instance Applicative Task where
  pure a = Task (pure a) (pure ())
  Task waitL cancelL <*> Task waitR cancelR = Task (waitL <*> waitR) (cancelL *> cancelR)


{- | Sometimes you want to alter the result of a task, but you 'Task' doesn't work as
a monad due to the 'cancel' action. This function lets you alter the result of a task
in the workflow monad.
-}
bindTask :: Task a -> (a -> Workflow b) -> Task b
bindTask (Task wait' cancel') f = Task (wait' >>= f) cancel'


{- | Handle representing an external Workflow Execution.

This handle can only be cancelled and signalled.

To call other methods, like query and result, use a WorkflowClient.getHandle inside an Activity.
-}
data ExternalWorkflowHandle (result :: Type) = ExternalWorkflowHandle
  { externalWorkflowWorkflowId :: WorkflowId
  , externalWorkflowRunId :: Maybe RunId
  }


{- | A client side handle to a single child Workflow instance.

It can be used to signal, wait for completion, and cancel the workflow.
-}
data ChildWorkflowHandle result = ChildWorkflowHandle
  { childWorkflowSequence :: Sequence
  , startHandle :: IVar ()
  , resultHandle :: IVar ResolveChildWorkflowExecution
  , childWorkflowResultConverter :: Payload -> IO result
  , childWorkflowId :: WorkflowId
  , firstExecutionRunId :: IVar RunId
  }


instance Functor ChildWorkflowHandle where
  fmap f h = h {childWorkflowResultConverter = fmap f . childWorkflowResultConverter h}


{- | This is only intended for use by interceptors. Normal workflow code should be able to use
the 'fmap' instance for simple transformations or else provide an appropriate codec.
-}
interceptorConvertChildWorkflowHandle :: ChildWorkflowHandle a -> (a -> IO b) -> ChildWorkflowHandle b
interceptorConvertChildWorkflowHandle h f =
  h
    { childWorkflowResultConverter = childWorkflowResultConverter h >=> f
    }


data ExecuteWorkflowInput = ExecuteWorkflowInput
  { executeWorkflowInputType :: WorkflowType
  , executeWorkflowInputArgs :: Vector Payload
  , executeWorkflowInputHeaders :: Map Text Payload
  , executeWorkflowInputInfo :: Info
  , executeWorkflowInputVault :: IORef Vault
  }


data WorkflowExitVariant a
  = WorkflowExitContinuedAsNew ContinueAsNewException
  | WorkflowExitCancelled WorkflowCancelRequested
  | WorkflowExitFailed SomeException
  | WorkflowExitSuccess a


data HandleQueryInput = HandleQueryInput
  { handleQueryId :: QueryId
  , handleQueryInputType :: Text
  , handleQueryInputArgs :: Vector Payload
  , handleQueryInputHeaders :: Map Text Payload
  , handleQueryWorkflowInfo :: Info
  }


data HandleUpdateInput = HandleUpdateInput
  { handleUpdateId :: UpdateId
  , handleUpdateInputType :: Text
  , handleUpdateInputArgs :: Vector Payload
  , handleUpdateInputHeaders :: Map Text Payload
  , handleUpdateWorkflowInfo :: Info
  }


data WorkflowInboundInterceptor = WorkflowInboundInterceptor
  { executeWorkflow
      :: forall a
       . ExecuteWorkflowInput
      -> (ExecuteWorkflowInput -> IO a)
      -> IO a
  , finalizeWorkflow
      :: WorkflowInstance
      -> Maybe (WorkflowExitVariant Payload)
      -> IO ()
  , handleQuery
      :: HandleQueryInput
      -> (HandleQueryInput -> IO (Either SomeException Payload))
      -> IO (Either SomeException Payload)
  , handleUpdate
      :: HandleUpdateInput
      -> (HandleUpdateInput -> Workflow Payload)
      -> Workflow Payload
  , validateUpdate
      :: HandleUpdateInput
      -> (HandleUpdateInput -> IO (Either SomeException ()))
      -> IO (Either SomeException ())
  }
interceptWorkflow
  :: WorkflowInboundInterceptor
  -> ExecuteWorkflowInput
  -> (ExecuteWorkflowInput -> IO a)
  -> IO a
interceptWorkflow WorkflowInboundInterceptor {executeWorkflow = f} = f


finalizeWorkflowExecution :: WorkflowInboundInterceptor -> WorkflowInstance -> Maybe (WorkflowExitVariant Payload) -> IO ()
finalizeWorkflowExecution WorkflowInboundInterceptor {finalizeWorkflow = f} = f


instance Semigroup WorkflowInboundInterceptor where
  a <> b =
    WorkflowInboundInterceptor
      { executeWorkflow = \input cont -> interceptWorkflow a input $ \input' -> interceptWorkflow b input' cont
      , finalizeWorkflow = \inst result -> a.finalizeWorkflow inst result >> b.finalizeWorkflow inst result
      , handleQuery = \input cont -> a.handleQuery input $ \input' -> b.handleQuery input' cont
      , handleUpdate = \input cont -> a.handleUpdate input $ \input' -> b.handleUpdate input' cont
      , validateUpdate = \input cont -> a.validateUpdate input $ \input' -> b.validateUpdate input' cont
      }


instance Monoid WorkflowInboundInterceptor where
  mempty =
    WorkflowInboundInterceptor
      { executeWorkflow = \input cont -> cont input
      , finalizeWorkflow = \_ _ -> pure ()
      , handleQuery = \input cont -> cont input
      , handleUpdate = \input cont -> cont input
      , validateUpdate = \input cont -> cont input
      }


data ActivityInput = ActivityInput
  { activityType :: Text
  , args :: Vector Payload
  , options :: StartActivityOptions
  , seq :: Sequence
  }


data LocalActivityInput = LocalActivityInput
  { localActivityType :: Text
  , localArgs :: Vector Payload
  , localOptions :: StartLocalActivityOptions
  , localSeq :: Sequence
  }


data WorkflowOutboundInterceptor = WorkflowOutboundInterceptor
  { scheduleActivity :: ActivityInput -> (ActivityInput -> IO (Task Payload)) -> IO (Task Payload)
  , scheduleLocalActivity :: LocalActivityInput -> (LocalActivityInput -> IO (Task Payload)) -> IO (Task Payload)
  , startChildWorkflowExecution :: Text -> StartChildWorkflowOptions -> (Text -> StartChildWorkflowOptions -> IO (ChildWorkflowHandle Payload)) -> IO (ChildWorkflowHandle Payload)
  , continueAsNew :: forall a. Text -> ContinueAsNewOptions -> (Text -> ContinueAsNewOptions -> IO a) -> IO a
  }


instance Semigroup WorkflowOutboundInterceptor where
  l <> r =
    WorkflowOutboundInterceptor
      { scheduleActivity = \input cont -> scheduleActivity l input $ \input' -> scheduleActivity r input' cont
      , scheduleLocalActivity = \input cont -> Temporal.Workflow.Internal.Monad.scheduleLocalActivity l input $ \input' -> Temporal.Workflow.Internal.Monad.scheduleLocalActivity r input' cont
      , startChildWorkflowExecution = \t input cont -> startChildWorkflowExecution l t input $ \t' input' -> startChildWorkflowExecution r t' input' cont
      , continueAsNew = \n input cont -> continueAsNew l n input $ \n' input' -> continueAsNew r n' input' cont
      }


instance Monoid WorkflowOutboundInterceptor where
  mempty =
    WorkflowOutboundInterceptor
      { scheduleActivity = \input cont -> cont input
      , scheduleLocalActivity = \input cont -> cont input
      , startChildWorkflowExecution = \t input cont -> cont t input
      , continueAsNew = \n input cont -> cont n input
      }


nextVarIdSequence :: InstanceM Sequence
nextVarIdSequence = do
  inst <- ask
  liftIO $ atomicModifyIORefCAS inst.workflowSequences $ \seqs ->
    let seq' = varId seqs
    in (seqs {varId = succ seq'}, Sequence seq')
