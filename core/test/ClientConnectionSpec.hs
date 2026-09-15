{-# LANGUAGE NamedFieldPuns #-}

module ClientConnectionSpec (spec) where

import Control.Concurrent
import Control.Concurrent.Async
import Control.Exception
import Control.Monad (forM_, void)
import Data.IORef
import GHC.Conc (BlockReason (..), ThreadStatus (..), threadStatus)
import System.Timeout (timeout)
import qualified Temporal.Core.Client.Internal.Connection as Connection
import Test.Hspec


-- Mocks represent independently releasable native handle wrappers.
data MockHandle = MockHandle (IORef Bool)


data HandleCounter = HandleCounter {allocated :: IORef Int, released :: IORef Int}


newHandleCounter :: IO HandleCounter
newHandleCounter = HandleCounter <$> newIORef 0 <*> newIORef 0


allocate :: HandleCounter -> IO MockHandle
allocate HandleCounter {allocated} = do
  atomicModifyIORef' allocated (\n -> (n + 1, ()))
  MockHandle <$> newIORef True


use :: MockHandle -> IO ()
use (MockHandle live) = readIORef live `shouldReturn` True


release :: HandleCounter -> MockHandle -> IO ()
release HandleCounter {released} (MockHandle live) = do
  atomicModifyIORef' live (\v -> (False, v)) `shouldReturn` True
  atomicModifyIORef' released (\n -> (n + 1, ()))


clone :: HandleCounter -> MockHandle -> IO MockHandle
clone counts hdl = use hdl *> allocate counts


shouldHaveHandleCounts :: HandleCounter -> Int -> Int -> Expectation
shouldHaveHandleCounts HandleCounter {allocated, released} expectedAllocated expectedReleased = do
  readIORef allocated `shouldReturn` expectedAllocated
  readIORef released `shouldReturn` expectedReleased


data TestException = ClientClosed | ContinuationFailed | ConnectionFailed
  deriving (Eq, Show)


instance Exception TestException


bounded :: IO a -> IO a
bounded action = timeout 5000000 action >>= maybe (throwIO (userError "ownership test hung")) pure


newConnectedClientHandle :: HandleCounter -> IO (Connection.ClientHandle MockHandle)
newConnectedClientHandle counts = do
  (conn, outcome) <- Connection.new
  mask_ $ allocate counts >>= Connection.complete conn outcome (release counts) . Right
  pure conn


-- Pause cloning before allocation to hold the state lock for the test body.
-- Release the gate before joining the holder, including when an assertion fails.
withHeldConnectionLock :: HandleCounter -> Connection.ClientHandle MockHandle -> (IO () -> IO a) -> IO a
withHeldConnectionLock counts conn action = do
  entered <- newEmptyMVar
  proceed <- newEmptyMVar
  let unlock = void $ tryPutMVar proceed ()
      pausedClone hdl = do
        putMVar entered ()
        readMVar proceed
        clone counts hdl
      holdLock = Connection.withHandle conn (toException ClientClosed) (const False) (const $ pure ()) pausedClone (release counts) use
      releaseHolder holder = unlock >> wait holder
  bracket (async holdLock) releaseHolder $ \holder -> do
    link holder
    takeMVar entered
    action unlock


-- Cancellation gets its own scoped thread so the driver can still time out if
-- the lock wait regresses to being uninterruptible. Both threads are cleaned up
-- only after releasing the lock; assertions run while it is still held.
assertCancelledWhileLocked :: IO () -> IO () -> Expectation -> Expectation
assertCancelledWhileLocked unlock operation assertions = do
  let releaseThread thread = unlock >> cancel thread
  bracket (async operation) releaseThread $ \caller -> do
    waitUntilBlocked caller
    bracket (async $ cancel caller) releaseThread $ \canceller -> do
      wait caller `shouldThrow` (== AsyncCancelled)
      wait canceller
      assertions


spec :: Spec
spec = describe "Client handle ownership" $ do
  let waitingOperations =
        [ ("handle acquisition", \counts conn _ -> Connection.withHandle conn (toException ClientClosed) (const False) (const $ pure ()) (clone counts) (release counts) use)
        , ("readiness", \_ conn _ -> Connection.waitForConnection conn (toException ClientClosed) (const False) (const $ pure ()))
        , ("state inspection", \_ conn outcome -> void $ Connection.isConnecting conn outcome)
        ]
  forM_ waitingOperations $ \(name, operation) ->
    it ("can cancel " <> name <> " while the state lock is held") $ bounded $ do
      counts <- newHandleCounter
      (conn, outcome) <- Connection.new
      mask_ $ allocate counts >>= Connection.complete conn outcome (release counts) . Right
      withHeldConnectionLock counts conn $ \unlock ->
        assertCancelledWhileLocked unlock (operation counts conn outcome) $ do
          shouldHaveHandleCounts counts 1 0
      Connection.close conn (toException ClientClosed) (release counts)
      shouldHaveHandleCounts counts 2 2

  it "finishes bracket cleanup when cancellation arrives while close waits for the state lock" $ bounded $ do
    counts <- newHandleCounter
    conn <- newConnectedClientHandle counts
    let close = Connection.close conn (toException ClientClosed) (release counts)
        closeOnExit = bracket_ (pure ()) close (pure ())
    withHeldConnectionLock counts conn $ \unlock -> do
      let releaseThread thread = unlock >> cancel thread
      bracket (async $ closeOnExit >> allowInterrupt) releaseThread $ \caller -> do
        waitUntilBlocked caller
        bracket (async $ cancel caller) releaseThread $ \canceller -> do
          -- Cancellation must be pending before releasing the state lock.
          waitUntilBlockedOnException canceller
          shouldHaveHandleCounts counts 1 0
          unlock
          wait caller `shouldThrow` (== AsyncCancelled)
          wait canceller
    -- There is no second close: bracket cleanup must release the original.
    shouldHaveHandleCounts counts 2 2

  it "releases an incoming handle when completion is cancelled waiting for the state lock" $ bounded $ do
    counts <- newHandleCounter
    (conn, outcome) <- Connection.new
    mask_ $ allocate counts >>= Connection.complete conn outcome (release counts) . Right
    let complete = mask_ $ do
          incoming <- allocate counts
          Connection.complete conn outcome (release counts) $ Right incoming
    withHeldConnectionLock counts conn $ \unlock ->
      assertCancelledWhileLocked unlock complete $ do
        -- The incoming handle is released while the original remains owned.
        shouldHaveHandleCounts counts 2 1
    Connection.close conn (toException ClientClosed) (release counts)
    shouldHaveHandleCounts counts 3 3

  it "cancellation releases the callback handle without invalidating the client handle" $ bounded $ do
    counts <- newHandleCounter
    conn <- newConnectedClientHandle counts
    admitted <- newEmptyMVar
    proceed <- newEmptyMVar
    withAsync
      ( Connection.withHandle conn (toException ClientClosed) (const False) (const $ pure ()) (clone counts) (release counts) $ \hdl -> do
          use hdl
          putMVar admitted ()
          takeMVar proceed
      )
      $ \caller -> do
        link caller
        takeMVar admitted
        cancel caller
        wait caller `shouldThrow` (== AsyncCancelled)
        shouldHaveHandleCounts counts 2 1
    Connection.withHandle conn (toException ClientClosed) (const False) (const $ pure ()) (clone counts) (release counts) use
    shouldHaveHandleCounts counts 3 2
    Connection.close conn (toException ClientClosed) (release counts)
    shouldHaveHandleCounts counts 3 3

  it "a synchronous exception thrown in `withHandle` releases the handle" $ bounded $ do
    counts <- newHandleCounter
    conn <- newConnectedClientHandle counts
    Connection.withHandle conn (toException ClientClosed) (const False) (const $ pure ()) (clone counts) (release counts) (\_ -> throwIO ContinuationFailed)
      `shouldThrow` (== ContinuationFailed)
    shouldHaveHandleCounts counts 2 1
    Connection.close conn (toException ClientClosed) (release counts)
    shouldHaveHandleCounts counts 2 2

  it "close fails the pending attempt and releases any handle returned afterward" $ bounded $ do
    counts <- newHandleCounter
    (conn, outcome) <- Connection.new
    Connection.close conn (toException ClientClosed) (release counts)
    Connection.awaitOutcome outcome `shouldThrow` (== ClientClosed)
    mask_ $ allocate counts >>= Connection.complete conn outcome (release counts) . Right
    shouldHaveHandleCounts counts 1 1
    Connection.waitForConnection conn (toException ClientClosed) (const False) (const $ pure ()) `shouldThrow` (== ClientClosed)
    Connection.withHandle conn (toException ClientClosed) (const False) (const $ pure ()) (clone counts) (release counts) use `shouldThrow` (== ClientClosed)
    Connection.close conn (toException ClientClosed) (release counts)
    shouldHaveHandleCounts counts 1 1

  it "an inflight callback can still use the handle it was given after the client has been closed" $ bounded $ do
    counts <- newHandleCounter
    conn <- newConnectedClientHandle counts
    admitted <- newEmptyMVar
    proceed <- newEmptyMVar
    withAsync
      ( Connection.withHandle conn (toException ClientClosed) (const False) (const $ pure ()) (clone counts) (release counts) $ \hdl -> do
          putMVar admitted ()
          takeMVar proceed
          use hdl
      )
      $ \caller -> do
        link caller
        takeMVar admitted
        Connection.close conn (toException ClientClosed) (release counts)
        shouldHaveHandleCounts counts 2 1
        putMVar proceed ()
        wait caller
        shouldHaveHandleCounts counts 2 2

  it "readiness recovers a failed initialization and preserves the old outcome" $ bounded $ do
    counts <- newHandleCounter
    (conn, old) <- Connection.new
    Connection.complete conn old (release counts) $ Left $ toException ConnectionFailed
    let start outcome = allocate counts >>= Connection.complete conn outcome (release counts) . Right
    Connection.waitForConnection conn (toException ClientClosed) retryable start
    Connection.awaitOutcome old `shouldThrow` (== ConnectionFailed)
    Connection.close conn (toException ClientClosed) (release counts)
    shouldHaveHandleCounts counts 1 1

  it "handle acquisition recovers a failed initialization" $ bounded $ do
    counts <- newHandleCounter
    (conn, old) <- Connection.new
    Connection.complete conn old (release counts) $ Left $ toException ConnectionFailed
    let start outcome = allocate counts >>= Connection.complete conn outcome (release counts) . Right
    Connection.withHandle conn (toException ClientClosed) retryable start (clone counts) (release counts) use
    Connection.close conn (toException ClientClosed) (release counts)
    shouldHaveHandleCounts counts 2 2

  it "publishes start exceptions and does not retry unexpected failures" $ bounded $ do
    (conn, old) <- Connection.new
    Connection.complete conn old (const $ pure ()) $ Left $ toException ConnectionFailed
    launches <- newIORef (0 :: Int)
    let start _ = modifyIORef' launches (+ 1) >> throwIO ContinuationFailed
        ready = Connection.waitForConnection conn (toException ClientClosed) retryable start
    ready `shouldThrow` (== ContinuationFailed)
    ready `shouldThrow` (== ContinuationFailed)
    readIORef launches `shouldReturn` 1

  it "cancelling waitForConnection does not prevent a later call from observing a successful connection" $ bounded $ do
    counts <- newHandleCounter
    (conn, old) <- Connection.new
    Connection.complete conn old (release counts) $ Left $ toException ConnectionFailed
    launched <- newEmptyMVar
    let ready = Connection.waitForConnection conn (toException ClientClosed) retryable (putMVar launched)
    withAsync ready $ \caller -> do
      outcome <- takeMVar launched
      cancel caller
      mask_ $ allocate counts >>= Connection.complete conn outcome (release counts) . Right
      ready
    Connection.close conn (toException ClientClosed) (release counts)
    shouldHaveHandleCounts counts 1 1

  it "closing during reconnection makes waitForConnection throw ClientClosed and frees the connection handle if the attempt later succeeds" $ bounded $ do
    counts <- newHandleCounter
    (conn, old) <- Connection.new
    Connection.complete conn old (release counts) $ Left $ toException ConnectionFailed
    launched <- newEmptyMVar
    let ready = Connection.waitForConnection conn (toException ClientClosed) retryable (putMVar launched)
    withAsync ready $ \caller -> do
      outcome <- takeMVar launched
      Connection.close conn (toException ClientClosed) (release counts)
      wait caller `shouldThrow` (== ClientClosed)
      mask_ $ allocate counts >>= Connection.complete conn outcome (release counts) . Right
      ready `shouldThrow` (== ClientClosed)
    Connection.close conn (toException ClientClosed) (release counts)
    shouldHaveHandleCounts counts 1 1

  it "waitForConnection and withHandle share a reconnection attempt and both report its failure even if a later attempt succeeds" $ bounded $ do
    counts <- newHandleCounter
    (conn, old) <- Connection.new
    Connection.complete conn old (release counts) $ Left $ toException ConnectionFailed
    launched <- newEmptyMVar
    launches <- newIORef (0 :: Int)
    let start outcome = modifyIORef' launches (+ 1) >> putMVar launched outcome
        ready = Connection.waitForConnection conn (toException ClientClosed) retryable start
        rpc = Connection.withHandle conn (toException ClientClosed) retryable start (clone counts) (release counts) use
    withAsync ready $ \first -> do
      outcome <- takeMVar launched
      withAsync rpc $ \second -> do
        waitUntilBlocked first
        waitUntilBlocked second
        Connection.complete conn outcome (release counts) $ Left $ toException ConnectionFailed
        let succeed next = allocate counts >>= Connection.complete conn next (release counts) . Right
        Connection.waitForConnection conn (toException ClientClosed) retryable succeed
        wait first `shouldThrow` (== ConnectionFailed)
        wait second `shouldThrow` (== ConnectionFailed)
        readIORef launches `shouldReturn` 1
    Connection.close conn (toException ClientClosed) (release counts)
    shouldHaveHandleCounts counts 1 1


-- Observe an MVar wait. The caller must arrange which MVar can block the thread.
waitUntilBlocked :: Async a -> IO ()
waitUntilBlocked caller = do
  status <- threadStatus $ asyncThreadId caller
  case status of
    ThreadBlocked BlockedOnMVar -> pure ()
    ThreadFinished -> expectationFailure "thread finished before blocking on an MVar"
    ThreadDied -> expectationFailure "thread died before blocking on an MVar"
    _ -> yield >> waitUntilBlocked caller


retryable :: SomeException -> Bool
retryable err = fromException err == Just ConnectionFailed


-- A blocked throwTo confirms the exception has been sent to the masked thread.
waitUntilBlockedOnException :: Async a -> IO ()
waitUntilBlockedOnException caller = do
  status <- threadStatus $ asyncThreadId caller
  case status of
    ThreadBlocked BlockedOnException -> pure ()
    ThreadFinished -> expectationFailure "cancellation finished before the lock was released"
    ThreadDied -> expectationFailure "cancellation thread died"
    _ -> yield >> waitUntilBlockedOnException caller
