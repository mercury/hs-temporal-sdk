{- | Abstractions built on top of 'MVar', drawn from Neil Mitchell's
<https://neilmitchell.blogspot.com/2012/06/flavours-of-mvar_04.html The Flavours of MVar>.
-}
module Control.Concurrent.MVar.Extra (
  Barrier,
  newBarrier,
  signalBarrier,
  waitBarrier,
) where

import Control.Concurrent.MVar
import Control.Monad (unless)


-- | A value that is written once and may be read any number of times.
newtype Barrier a = Barrier (MVar a)


newBarrier :: IO (Barrier a)
newBarrier = Barrier <$> newEmptyMVar


{- | Signal the barrier.

Signaling a barrier more than once throws an IO exception.
-}
signalBarrier :: Barrier a -> a -> IO ()
signalBarrier (Barrier cell) value = do
  signaled <- tryPutMVar cell value
  unless signaled $ ioError (userError "Barrier has already been signaled")


-- | Wait for the value without consuming it.
waitBarrier :: Barrier a -> IO a
waitBarrier (Barrier cell) = readMVar cell
