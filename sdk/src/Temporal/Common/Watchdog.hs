{-# LANGUAGE NoFieldSelectors #-}

module Temporal.Common.Watchdog (
  Watchdog,
  new,
  run,
  pause,

  -- * Internals exposed for testing
  State (..),
  Instant (..),
  pauseState,
  resumeState,
) where

import Control.Concurrent (ThreadId, myThreadId, throwTo)
import Control.Concurrent.Async (withAsync)
import Control.Concurrent.STM
import qualified Control.Exception as E
import Control.Monad (when)
import Data.Unique (Unique, newUnique)
import GHC.Clock (getMonotonicTimeNSec)
import Temporal.Duration (Duration)
import qualified Temporal.Duration as Duration


-- | A reusable timer for work that /must/ finish within some duration.
data Watchdog = Disabled | Enabled Duration (TVar (Maybe Timer))


data Timer = Timer
  { target :: ThreadId
  , token :: Unique
  , state :: TVar State
  }


-- | An instant on the watchdog's monotonic clock, in nanoseconds.
newtype Instant = Instant Integer
  deriving stock (Eq, Ord, Show)


{- | The state of the timer for an action passed to 'run'.

An 'Armed' timer holds the deadline at which it expires, while a 'Paused'
timer holds the remaining time.
-}
data State
  = -- | Absolute deadline on the monotonic clock.
    Armed !Instant
  | -- | The remaining time.
    Paused !Duration
  | -- | The budget ran out.
    Expired
  | -- | The timer has been stopped.
    Disarmed
  deriving stock (Eq, Show)


{- | An asynchronous exception raised when a watchdog expires.

A 'run' invocation only catches timeout exceptions carrying the 'Unique' it
created, which means nested watchdogs cannot interfere with one another.
-}
newtype TimedOut = TimedOut Unique
  deriving stock (Eq)


instance Show TimedOut where
  show _ = "Watchdog expired"


instance E.Exception TimedOut where
  toException = E.asyncExceptionToException
  fromException = E.asyncExceptionFromException


{- | Create a 'Watchdog' that expires after the given 'Duration'.

Passing a negative 'Duration', or 'Nothing', produces a 'Disabled' watchdog.
-}
new :: Maybe Duration -> IO Watchdog
new Nothing = pure Disabled
new (Just limit)
  | limit < mempty = pure Disabled
  | otherwise = Enabled limit <$> newTVarIO Nothing


{- | Run an 'IO' action under the given 'Watchdog'; returns 'Nothing' if the
watchdog timeout was tripped.
-}
run :: Watchdog -> IO a -> IO (Maybe a)
run Disabled action = Just <$> action
run (Enabled limit _) _ | limit == mempty = pure Nothing
run (Enabled limit active) action = do
  token <- newUnique
  catchTimeout token $ E.mask $ \restore ->
    withTimer limit active token $ \timer ->
      withAsync (watch timer) $ \_ -> do
        result <- restore action
        expired <- disarm timer
        when expired $ E.throwIO $ TimedOut token
        pure $ Just result


-- | Pause the given 'Watchdog' for the duration of the 'IO' action provided.
pause :: Watchdog -> IO a -> IO a
pause Disabled action = action
pause (Enabled _ active) action = E.mask $ \restore -> do
  caller <- myThreadId
  current <- readTVarIO active
  case current of
    Just timer | timer.target == caller -> do
      now <- monotonicTime
      didPause <- atomically $ do
        old <- readTVar timer.state
        let (didPause, next) = pauseState now old
        when (next == Expired) $ throwSTM $ TimedOut timer.token
        didPause <$ writeTVar timer.state next
      if didPause
        then
          restore action `E.finally` do
            resumedAt <- monotonicTime
            atomically $ modifyTVar' timer.state (resumeState resumedAt)
        else restore action
    _ -> restore action


-- | The pause transition and whether the caller is responsible for resuming.
pauseState :: Instant -> State -> (Bool, State)
pauseState now = \case
  Armed deadline
    | now >= deadline -> (False, Expired)
    | otherwise -> (True, Paused (remaining now deadline))
  current -> (False, current)


resumeState :: Instant -> State -> State
resumeState now = \case
  Paused budget -> Armed (deadlineAfter now budget)
  current -> current


-- Return Nothing only for this run's TimedOut exception.
--
-- Wrap cleanup too, because the watcher's throwTo may deliver the exception
-- during cleanup.
catchTimeout :: Unique -> IO (Maybe a) -> IO (Maybe a)
catchTimeout token = E.handleJust matching (\() -> pure Nothing)
  where
    matching err
      | err == TimedOut token = Just ()
      | otherwise = Nothing


withTimer :: Duration -> TVar (Maybe Timer) -> Unique -> (Timer -> IO a) -> IO a
withTimer limit active token = E.bracket (arm limit active token) cleanup
  where
    cleanup timer = do
      _ <- disarm timer
      atomically $ writeTVar active Nothing


arm :: Duration -> TVar (Maybe Timer) -> Unique -> IO Timer
arm limit active token = do
  thread <- myThreadId
  now <- monotonicTime
  timerState <- newTVarIO $ Armed (deadlineAfter now limit)
  let timer = Timer thread token timerState
  atomically $
    readTVar active >>= \case
      Nothing -> writeTVar active (Just timer)
      Just _ -> throwSTM $ userError "Overlapping watchdog scopes"
  pure timer


{- | Stop the timer and report whether it expired or not.

Check the clock too: the watcher might not have been scheduled before the
action completed.
-}
disarm :: Timer -> IO Bool
disarm timer = do
  now <- monotonicTime
  atomically $ do
    current <- readTVar timer.state
    writeTVar timer.state Disarmed
    pure $ case current of
      Armed deadline -> now >= deadline
      Expired -> True
      _ -> False


watch :: Timer -> IO ()
watch timer = do
  deadline <- atomically $ awaitDeadline timer.state
  case deadline of
    Nothing -> pure ()
    Just at -> do
      wait timer.state at
      expired <- expire timer.state at
      if expired
        then throwTo timer.target (TimedOut timer.token)
        else watch timer


awaitDeadline :: TVar State -> STM (Maybe Instant)
awaitDeadline timerState =
  readTVar timerState >>= \case
    Armed deadline -> pure $ Just deadline
    Paused _ -> retry
    Expired -> pure Nothing
    Disarmed -> pure Nothing


wait :: TVar State -> Instant -> IO ()
wait timerState deadline = do
  now <- monotonicTime
  -- Round up, and cap conversion to Int. Long waits are rechecked.
  let micros = max 0 $ min (toInteger (maxBound :: Int)) ((toNanoseconds (remaining now deadline) + 999) `div` 1000)
  alarm <- registerDelay (fromInteger micros)
  atomically $ do
    current <- readTVar timerState
    fired <- readTVar alarm
    check (current /= Armed deadline || fired)


-- Expire only if the deadline has passed and has not changed while we waited.
expire :: TVar State -> Instant -> IO Bool
expire timerState deadline = do
  now <- monotonicTime
  atomically $ do
    current <- readTVar timerState
    if current == Armed deadline && now >= deadline
      then writeTVar timerState Expired *> pure True
      else pure False


monotonicTime :: IO Instant
monotonicTime = Instant . toInteger <$> getMonotonicTimeNSec


deadlineAfter :: Instant -> Duration -> Instant
deadlineAfter (Instant now) duration = Instant (now + toNanoseconds duration)


remaining :: Instant -> Instant -> Duration
remaining (Instant now) (Instant deadline) = Duration.nanoseconds $ max 0 (deadline - now)


toNanoseconds :: Duration -> Integer
toNanoseconds duration =
  toInteger (Duration.durationSeconds duration) * 1_000_000_000
    + toInteger (Duration.durationNanoseconds duration)
