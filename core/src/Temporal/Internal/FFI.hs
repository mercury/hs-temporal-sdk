{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeFamilies #-}

module Temporal.Internal.FFI where

import Control.Concurrent
import Control.Exception
import Control.Monad
import Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString
import Data.Text (Text)
import qualified Data.Text.Foreign as Text
import qualified Data.Vector.Storable as Vector
import Data.Word
import Foreign.Marshal.Alloc
import qualified Foreign.Marshal.Utils as Marshal
import Foreign.Ptr
import Foreign.StablePtr
import Foreign.Storable
import GHC.Conc (PrimMVar, newStablePtrPrimMVar)
import Temporal.Core.CTypes


withCArray :: Storable a => Vector.Vector a -> (Ptr (CArray a) -> IO b) -> IO b
withCArray v f = Vector.unsafeWith v $ \vPtr ->
  Marshal.with (CArray vPtr (fromIntegral (Vector.length v))) f


withCArrayBS :: ByteString -> (Ptr (CArray Word8) -> IO b) -> IO b
withCArrayBS bs f = ByteString.useAsCStringLen bs $ \(bytes, len) ->
  Marshal.with (CArray (castPtr bytes) (fromIntegral len)) f


withCArrayText :: Text -> (Ptr (CArray Word8) -> IO b) -> IO b
withCArrayText txt f = Text.withCStringLen txt $ \(bytes, len) ->
  Marshal.with (CArray (castPtr bytes) (fromIntegral len)) f


{- | Peek the result from a Tokio slot. Returns the raw pointer or Nothing.
The caller is responsible for freeing the pointer using the appropriate drop function.
-}
peekTokioResult :: TokioSlot a -> IO (Maybe (Ptr a))
peekTokioResult slot = do
  inner <- peek slot
  if inner == nullPtr
    then return Nothing
    else return (Just inner)


type TokioCall e a = StablePtr PrimMVar -> Int -> TokioSlot e -> TokioSlot a -> IO ()


type TokioSlot a = Ptr (Ptr a)


-- | Storage for Tokio async operation results
type TokioResult a = Ptr (Ptr a)


allocateTokioSlots :: IO (TokioSlot err, TokioSlot res)
allocateTokioSlots = mask_ $ do
  errorSlot <- malloc
  resultSlot <- malloc `onException` free errorSlot
  let freeSlots = free errorSlot *> free resultSlot
  (poke errorSlot nullPtr *> poke resultSlot nullPtr) `onException` freeSlots
  pure (errorSlot, resultSlot)


{- | Make an async call to Rust via Tokio. Returns raw Ptr that MUST be freed by the caller
using the appropriate drop function.

The caller is responsible for:
1. Calling the appropriate rust_drop* function on the result
2. Not using the pointer after freeing it

The cleanup functions are used only when the wait is interrupted, after Rust
has finished writing the result. On normal return, ownership of the returned
pointer passes to the caller.

IMPORTANT: This is a low-level function. Prefer using withTokioAsyncCall
for automatic memory management and exception safety.
-}
makeTokioAsyncCall
  :: TokioCall err res
  -> (Ptr err -> IO ())
  -> (Ptr res -> IO ())
  -> IO (Either (Ptr err) (Ptr res))
makeTokioAsyncCall call freeErr freeRes = mask $ \restore -> do
  -- The slots must outlive an interrupted wait because Rust may write to them
  -- after this call has unwound. Heap allocation lets the cleanup thread take
  -- ownership in that case.
  (errorSlot, resultSlot) <- allocateTokioSlots
  mvar <- newEmptyMVar
  sp <- newStablePtrPrimMVar mvar
  (cap, _) <- threadCapability =<< myThreadId
  let freeSlots = free errorSlot *> free resultSlot
      -- On interruption, hand ownership of the slots to a thread that waits for
      -- the task to finish. Freeing them here would let Rust write into freed
      -- memory. The cleanup functions release whichever Rust result the task
      -- eventually produces.
      reapAfterInterrupt = void $ forkIO $ do
        _ <- takeMVar mvar
        errPtr <- peek errorSlot
        resPtr <- peek resultSlot
        when (errPtr /= nullPtr) (freeErr errPtr)
        when (resPtr /= nullPtr) (freeRes resPtr)
        freeSlots
  call sp cap errorSlot resultSlot `onException` freeSlots

  -- Only the wait itself hands ownership off: once 'takeMVar' has returned, the
  -- task is done and this thread owns the slots again, so a failure after that
  -- point must not also be reaped (that would double-free).
  () <- restore (takeMVar mvar) `onException` reapAfterInterrupt
  errPtr <- peek errorSlot
  resPtr <- peek resultSlot
  freeSlots
  if errPtr /= nullPtr
    then return (Left errPtr)
    else
      if resPtr /= nullPtr
        then return (Right resPtr)
        else error "Both error and result are null from Tokio call"


{- | Exception-safe wrapper for Tokio async calls.

This function ensures that Rust-allocated memory is properly freed even if an async
exception occurs during processing. It uses bracket to guarantee cleanup.

Parameters:
  - call: The FFI call to make
  - freeErr: Function to free error pointers
  - freeRes: Function to free result pointers
  - processErr: Function to extract Haskell value from error pointer
  - processRes: Function to extract Haskell value from result pointer
-}
withTokioAsyncCall
  :: TokioCall err res
  -> (Ptr err -> IO ())
  -- ^ Free error
  -> (Ptr res -> IO ())
  -- ^ Free result
  -> (Ptr err -> IO e)
  -- ^ Process error
  -> (Ptr res -> IO a)
  -- ^ Process result
  -> IO (Either e a)
withTokioAsyncCall call freeErr freeRes processErr processRes =
  mask $ \restore -> do
    -- The slots must outlive an interrupted wait because Rust may write to them
    -- after this call has unwound. Heap allocation lets the cleanup thread take
    -- ownership in that case.
    (errorSlot, resultSlot) <- allocateTokioSlots
    mvar <- newEmptyMVar
    sp <- newStablePtrPrimMVar mvar
    (cap, _) <- threadCapability =<< myThreadId
    let freeSlots = free errorSlot *> free resultSlot
    call sp cap errorSlot resultSlot `onException` freeSlots

    -- If the wait is interrupted, ownership of the slots and of whatever the
    -- task eventually produces passes to this thread. The Rust bridge keeps its
    -- runtime alive through the callback, so this thread does not release the
    -- slots or any Rust-owned result until the MVar has been filled.
    let reapAfterInterrupt = void $ forkIO $ do
          _ <- takeMVar mvar
          errPtr <- peek errorSlot
          resPtr <- peek resultSlot
          when (errPtr /= nullPtr) (freeErr errPtr)
          when (resPtr /= nullPtr) (freeRes resPtr)
          freeSlots

    -- Only the wait hands ownership off. Once 'takeMVar' returns, the task is
    -- done and this thread owns the slots again, so a later failure must not
    -- also be reaped -- that would double-free.
    _ <- restore (takeMVar mvar) `onException` reapAfterInterrupt

    -- Completed: the slot storage can be released before processing the
    -- Rust-owned result. Bracket that result so a decoder exception cannot
    -- leak it.
    errPtr <- peek errorSlot
    resPtr <- peek resultSlot
    freeSlots
    if errPtr /= nullPtr
      then Left <$> bracket (pure errPtr) freeErr processErr
      else
        if resPtr /= nullPtr
          then Right <$> bracket (pure resPtr) freeRes processRes
          else error "Both error and result are null from Tokio call"
