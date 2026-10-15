module WatchdogSpec where

import Control.Concurrent (myThreadId)
import Control.Concurrent.MVar.Extra
import qualified Control.Exception as E
import Control.Monad (void, (>=>))
import Data.Either (isLeft)
import Data.Foldable (for_)
import qualified Temporal.Common.Watchdog as Watchdog
import Temporal.Duration (microseconds, nanoseconds, seconds)
import Test.Hspec
import UnliftIO


spec :: Spec
spec = describe "Watchdog" do
  describe "pausing and resuming the timer" do
    it "counts only unpaused time across repeated pauses and resumes" do
      let first = Watchdog.Paused $ nanoseconds 80
      Watchdog.pauseState (Watchdog.Instant 20) (Watchdog.Armed (Watchdog.Instant 100))
        `shouldBe` (True, first)
      Watchdog.pauseState (Watchdog.Instant 50) first
        `shouldBe` (False, first)

      let resumed = Watchdog.resumeState (Watchdog.Instant 200) first
      resumed
        `shouldBe` Watchdog.Armed (Watchdog.Instant 280)

      let second = Watchdog.Paused $ nanoseconds 30
      Watchdog.pauseState (Watchdog.Instant 250) resumed
        `shouldBe` (True, second)
      Watchdog.resumeState (Watchdog.Instant 1000) second
        `shouldBe` Watchdog.Armed (Watchdog.Instant 1030)

    it "does not rearm an expired or disarmed timer" do
      Watchdog.pauseState (Watchdog.Instant 100) (Watchdog.Armed (Watchdog.Instant 100))
        `shouldBe` (False, Watchdog.Expired)
      Watchdog.pauseState (Watchdog.Instant 101) (Watchdog.Armed (Watchdog.Instant 100))
        `shouldBe` (False, Watchdog.Expired)

      for_ [Watchdog.Expired, Watchdog.Disarmed] $ \state -> do
        Watchdog.pauseState (Watchdog.Instant 200) state
          `shouldBe` (False, state)
        Watchdog.resumeState (Watchdog.Instant 200) state
          `shouldBe` state

  -- Bound every concurrency test so a broken watchdog can't block forever.
  around_ (timeout 10_000_000 >=> (`shouldBe` Just ())) do
    it "runs the action on the caller's thread and preserves masking state during pauses" do
      hdl <- Watchdog.new $ Just $ seconds 60
      caller <- myThreadId

      Watchdog.run hdl myThreadId
        `shouldReturn` Just caller

      Watchdog.run hdl (Watchdog.pause hdl E.getMaskingState)
        `shouldReturn` Just E.Unmasked
      E.mask_ (Watchdog.run hdl $ Watchdog.pause hdl E.getMaskingState)
        `shouldReturn` Just E.MaskedInterruptible

    it "runs with no timeout or a negative timeout, but skips the action for zero" do
      for_ [Nothing, Just (microseconds (-1))] $ \setting -> do
        hdl <- Watchdog.new setting
        Watchdog.run hdl (Watchdog.pause hdl $ pure True)
          `shouldReturn` Just True

      zero <- Watchdog.new $ Just $ microseconds 0
      Watchdog.run zero (E.throwIO $ userError "must not run")
        `shouldReturn` (Nothing :: Maybe ())

    it "resumes the countdown after paused work returns" do
      hdl <- Watchdog.new $ Just $ microseconds 100_000
      resumed <- newIORef False
      blocked <- newBarrier

      result <- Watchdog.run hdl do
        Watchdog.pause hdl $ pure ()
        writeIORef resumed True
        void $ waitBarrier blocked

      result `shouldBe` Nothing
      readIORef resumed `shouldReturn` True

    it "resumes the countdown after paused work throws" do
      hdl <- Watchdog.new $ Just $ microseconds 100_000
      resumed <- newIORef False
      blocked <- newBarrier

      result <- Watchdog.run hdl do
        Watchdog.pause hdl (E.throwIO $ userError "processor")
          `shouldThrow` anyIOException
        writeIORef resumed True
        void $ waitBarrier blocked

      result `shouldBe` Nothing
      readIORef resumed `shouldReturn` True

    it "keeps the countdown paused until the outer pause ends" do
      hdl <- Watchdog.new $ Just $ microseconds 100_000
      blocked <- newBarrier

      result <- Watchdog.run hdl $ Watchdog.pause hdl do
        Watchdog.pause hdl $ pure ()
        timeout 200_000 $ void $ waitBarrier blocked

      result `shouldBe` Just Nothing

    it "times out through tryAny and allows the handle to be reused" do
      hdl <- Watchdog.new $ Just $ microseconds 100_000
      caught <- newIORef False
      blocked <- newBarrier

      Watchdog.run hdl (tryAny (waitBarrier blocked) *> writeIORef caught True)
        `shouldReturn` Nothing

      -- Returning Nothing alone would also pass if tryAny swallowed expiry:
      -- disarm checks the deadline again after the action returns.
      readIORef caught `shouldReturn` False

      Watchdog.run hdl (Watchdog.pause hdl $ pure True)
        `shouldReturn` Just True

    it "runs finalizers when paused work is cancelled and allows the handle to be reused" do
      hdl <- Watchdog.new $ Just $ seconds 60
      entered <- newBarrier
      blocked <- newBarrier
      finalized <- newBarrier

      let pausedWork = do
            signalBarrier entered ()
            void $ waitBarrier blocked
          work =
            Watchdog.run hdl $
              Watchdog.pause hdl $
                pausedWork `finally` signalBarrier finalized ()

      withAsync work $ \worker -> do
        waitBarrier entered

        cancel worker
        outcome <- waitCatch worker
        outcome `shouldSatisfy` isLeft

      waitBarrier finalized

      Watchdog.run hdl (Watchdog.pause hdl $ pure ())
        `shouldReturn` Just ()

    it "keeps counting down when another thread calls pause" do
      hdl <- Watchdog.new $ Just $ microseconds 100_000
      entered <- newBarrier
      blocked <- newBarrier

      result <- Watchdog.run hdl $
        withAsync (Watchdog.pause hdl $ signalBarrier entered () *> waitBarrier blocked) $ \_ -> do
          waitBarrier entered
          void $ waitBarrier blocked

      result `shouldBe` Nothing
      waitBarrier entered

    it "allows an enclosing watchdog to time out and leaves the inner handle reusable" do
      outer <- Watchdog.new $ Just $ microseconds 100_000
      inner <- Watchdog.new $ Just $ seconds 60
      blocked <- newBarrier

      Watchdog.run outer (Watchdog.run inner $ void $ waitBarrier blocked)
        `shouldReturn` Nothing

      Watchdog.run inner (pure ())
        `shouldReturn` Just ()

    it "rejects a concurrent run on the same handle while allowing the original run to finish" do
      hdl <- Watchdog.new $ Just $ seconds 60
      entered <- newBarrier
      release <- newBarrier

      withAsync (Watchdog.run hdl $ Watchdog.pause hdl $ signalBarrier entered () *> waitBarrier release) $ \worker -> do
        waitBarrier entered

        Watchdog.run hdl (pure ())
          `shouldThrow` anyIOException

        signalBarrier release ()
        wait worker `shouldReturn` Just ()
