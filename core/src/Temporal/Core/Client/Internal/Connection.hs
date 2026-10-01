-- | Coordinate client connection state and client handle ownership.
module Temporal.Core.Client.Internal.Connection (
  ClientHandle,
  Outcome,
  new,
  withHandle,
  waitForConnection,
  close,
  isConnecting,
  complete,
  awaitOutcome,
) where

import Control.Concurrent
import Control.Exception
import Control.Monad (unless, void)
import Data.Foldable (for_, traverse_)


{- | A shared client handle that tracks connection state.

Retryable failures may recover on the next use; closed connections cannot
be reopened.
-}
newtype ClientHandle a = ClientHandle (MVar (ConnectionState a))


data ClientState a
  = Ready a
  | AwaitingConnection Outcome
  | Rejected SomeException


data ConnectionState a
  = Connecting Outcome
  | Connected a
  | ConnectionFailed SomeException
  | Closed


-- | Shared success or failure of establishing a connection, including retries.
newtype Outcome = Outcome (MVar (Either SomeException ()))
  deriving (Eq)


{- | Create a lifecycle in the connecting state with an empty connection outcome.
Does not start connecting to the server.
-}
new :: IO (ClientHandle a, Outcome)
new = do
  outcome <- Outcome <$> newEmptyMVar
  conn <- fmap ClientHandle . newMVar $ Connecting outcome
  pure (conn, outcome)


{- | Wait for a connection and run the continuation, or throw if connection
failed or the client is closed.

The continuation must not release the supplied handle or use it after
returning.

The destructor must not throw.
-}
withHandle
  :: ClientHandle a
  -> SomeException
  -> (SomeException -> Bool)
  -> (Outcome -> IO ())
  -> (a -> IO a)
  -> (a -> IO ())
  -> (a -> IO b)
  -> IO b
withHandle conn closed retryable start clone destroy use = mask $ \restore -> do
  state <- prepareClient conn closed retryable start (fmap Ready . clone)
  case state of
    Ready hdl -> restore (use hdl) `finally` destroy hdl
    Rejected err -> throwIO err
    AwaitingConnection outcome -> restore $ do
      awaitOutcome outcome
      withHandle conn closed retryable start clone destroy use


{- | Wait for the 'ClientHandle' to connect.

A client whose initial connection attempt failed can still be awaited upon
at a later point in time, kicking off the retry loop again.
-}
waitForConnection :: ClientHandle a -> SomeException -> (SomeException -> Bool) -> (Outcome -> IO ()) -> IO ()
waitForConnection conn closed retryable start = mask $ \restore -> do
  state <- prepareClient conn closed retryable start (const $ pure $ Ready ())
  case state of
    Ready () -> pure ()
    Rejected err -> throwIO err
    AwaitingConnection outcome -> restore $ do
      awaitOutcome outcome
      waitForConnection conn closed retryable start


prepareClient
  :: ClientHandle a
  -> SomeException
  -> (SomeException -> Bool)
  -> (Outcome -> IO ())
  -> (a -> IO (ClientState b))
  -> IO (ClientState b)
prepareClient conn closed retryable start connected = do
  (state, fresh) <- modifyConnState conn $ \s -> case s of
    Connected hdl -> do
      state <- connected hdl
      pure (s, (state, Nothing))
    Connecting outcome -> pure (s, (AwaitingConnection outcome, Nothing))
    ConnectionFailed err | retryable err -> do
      outcome <- Outcome <$> newEmptyMVar
      pure (Connecting outcome, (AwaitingConnection outcome, Just outcome))
    ConnectionFailed err -> pure (s, (Rejected err, Nothing))
    Closed -> pure (s, (Rejected closed, Nothing))
  for_ fresh $ \outcome ->
    start outcome
      `catch` \err -> complete conn outcome (const $ pure ()) (Left err)
  pure state


{- | Close the connection and release the associated handle, if any.

Calls waiting for a connection are notified immediately.

In-flight connection work is not cancelled; if it succeeds after close,
the new connection handle is released.

The destructor must not throw.
-}
close :: ClientHandle a -> SomeException -> (a -> IO ()) -> IO ()
close conn closed destroy = mask_ $ do
  old <- uninterruptibleMask_ $ modifyConnState conn $ \s -> do
    case s of
      Connecting outcome -> notifyOutcome outcome $ Left closed
      _ -> pure ()
    pure (Closed, connectedHandle s)
  traverse_ destroy old


{- | Store the new connection handle if this connection attempt is still pending;
otherwise release the handle.

If the attempt failed, record the exception only if the attempt is still pending.

The calling thread must keep asynchronous exceptions masked from the moment
it receives the connection handle until this function returns.

Cancellation while waiting for the state lock releases the incoming handle
without changing the connection state.

The destructor must not throw.
-}
complete
  :: ClientHandle a
  -> Outcome
  -> (a -> IO ())
  -> Either SomeException a
  -> IO ()
complete conn outcome destroy result = mask_ $ do
  let adopt = modifyConnState conn $ \s -> case s of
        Connecting current | current == outcome -> do
          notifyOutcome outcome $ void result
          pure (either ConnectionFailed Connected result, True)
        _ -> pure (s, False)
  accepted <- adopt `onException` traverse_ destroy result
  unless accepted $ traverse_ destroy result


connectedHandle :: ConnectionState a -> Maybe a
connectedHandle (Connected hdl) = Just hdl
connectedHandle _ = Nothing


-- Lock acquisition remains interruptible. Once acquired, transitions must not
-- block after transferring ownership or notifying an outcome: those effects
-- cannot be rolled back when modifyMVar restores the previous state on exception.
withConnState :: ClientHandle a -> (ConnectionState a -> IO b) -> IO b
withConnState (ClientHandle var) f = mask_ $ withMVar var f


modifyConnState :: ClientHandle a -> (ConnectionState a -> IO (ConnectionState a, b)) -> IO b
modifyConnState (ClientHandle var) f = mask_ $ modifyMVar var f


-- | Wait interruptibly for the shared outcome, throwing on failure.
awaitOutcome :: Outcome -> IO ()
awaitOutcome outcome = readOutcome outcome >>= either throwIO pure


readOutcome :: Outcome -> IO (Either SomeException ())
readOutcome (Outcome outcome) = readMVar outcome


notifyOutcome :: Outcome -> Either SomeException () -> IO ()
notifyOutcome (Outcome outcome) result = void $ tryPutMVar outcome result


-- | Check whether this connection attempt is still pending.
isConnecting :: ClientHandle a -> Outcome -> IO Bool
isConnecting conn outcome =
  withConnState conn $
    pure . \case
      Connecting current -> current == outcome
      _ -> False
