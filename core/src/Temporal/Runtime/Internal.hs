{-# LANGUAGE DeriveAnyClass #-}

-- | Runtime handle ownership.
module Temporal.Runtime.Internal (
  Runtime,
  RuntimeHandle,
  RuntimeClosedError (..),
  cloneHandle,
  fromHandle,
  clone,
  closeWithCleanup,
) where

import Control.Concurrent.MVar
import Control.Exception (Exception, finally, mask_, onException, throwIO, uninterruptibleMask_)
import Foreign.Ptr
import Temporal.Core.CTypes


type RuntimeHandle = Ptr CRuntime


newtype Runtime = Runtime (MVar (Maybe RuntimeHandle))


data RuntimeClosedError = RuntimeClosedError
  deriving stock (Show, Eq)
  deriving anyclass (Exception)


foreign import ccall unsafe "hs_temporal_clone_runtime" raw_cloneRuntime :: RuntimeHandle -> IO RuntimeHandle


-- Keep asynchronous exceptions masked until cleanup is installed or the
-- returned handle is passed to its new owner.
cloneHandle :: Runtime -> IO RuntimeHandle
cloneHandle (Runtime slot) = mask_ $ withMVar slot $ \case
  Nothing -> throwIO RuntimeClosedError
  Just handle -> raw_cloneRuntime handle


-- Takes ownership, freeing the handle if allocation fails. Call masked.
fromHandle :: RuntimeHandle -> IO Runtime
fromHandle handle =
  (Runtime <$> newMVar (Just handle)) `onException` freeRuntime handle


clone :: Runtime -> IO Runtime
clone rt = mask_ $ cloneHandle rt >>= fromHandle


{- | Prevent new runtime acquisitions, then run cleanup outside the lock before
releasing the native handle.

When closing a client, this lets callers waiting for it to connect receive
@ClientClosedError@ before runtime shutdown begins.

The given cleanup action will run even if the runtime is already closed, so it
must be safe to run more than once and from multiple threads at the same time.
-}
closeWithCleanup :: Runtime -> IO () -> IO ()
closeWithCleanup (Runtime slot) cleanup = mask_ $ do
  hdl <- uninterruptibleMask_ $ swapMVar slot Nothing
  cleanup `finally` maybe (pure ()) freeRuntime hdl
