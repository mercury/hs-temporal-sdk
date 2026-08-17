{- | Pure admission and completion model for workflow activations.

The worker reserves a ticket before forking each handler and completes that
ticket from the handler's finalizer. Entering 'Draining' closes admission;
shutdown may proceed only after every previously admitted handler completes.
The STM interpreter uses these transitions directly. Tests exercise the
concrete model and exhaust its finite quotient over ticket identity and count.
-}
module Temporal.Workflow.Internal.ActivationLoop (
  ActivationLoop,
  ActivationTicket (..),
  CompletionError (..),
  Phase (..),
  ReserveError (..),
  activeActivationTickets,
  beginDraining,
  completeActivation,
  initialActivationLoop,
  isDrained,
  phase,
  reserveActivation,
) where

import Control.Exception (Exception (displayException))
import Data.IntSet (IntSet)
import qualified Data.IntSet as IntSet


-- | Whether the poll loop still admits new activation handlers.
data Phase
  = Polling
  | Draining
  deriving stock (Eq, Ord, Show)


{- | Process-local identity for one admitted activation handler.

Tickets increase monotonically and are never reused during a worker's
lifetime. Completion removes them from the active 'IntSet'; workflow eviction
does not recycle identities. The counter resets when the worker is recreated,
long before a process could exhaust the positive 'Int' range.
-}
newtype ActivationTicket = ActivationTicket Int
  deriving stock (Eq, Show)


{- | State shared by polling, handler finalizers, and worker shutdown.

Active tickets are precisely the handlers admitted but not yet finalized.
'Draining' is irreversible, so an empty active set in that phase is a stable
shutdown condition.
-}
data ActivationLoop = ActivationLoop
  { activationLoopPhase :: Phase
  , activationLoopNextTicket :: Int
  , activationLoopActiveTickets :: IntSet
  }
  deriving stock (Eq, Show)


-- | Reservation failed because shutdown has closed admission.
data ReserveError = ReserveAfterDraining
  deriving stock (Eq, Show)


instance Exception ReserveError where
  displayException ReserveAfterDraining =
    "Cannot reserve a workflow activation after worker draining begins"


-- | Completion failed because the ticket was never active or already completed.
data CompletionError = UnknownActivationTicket ActivationTicket
  deriving stock (Eq, Show)


instance Exception CompletionError where
  displayException (UnknownActivationTicket _) =
    "Cannot complete an unknown or already completed workflow activation ticket"


-- | A polling loop with no admitted handlers.
initialActivationLoop :: ActivationLoop
initialActivationLoop =
  ActivationLoop
    { activationLoopPhase = Polling
    , activationLoopNextTicket = 0
    , activationLoopActiveTickets = IntSet.empty
    }


-- | Current admission phase.
phase :: ActivationLoop -> Phase
phase = activationLoopPhase


-- | Unboxed ticket values for handlers that have not finalized.
activeActivationTickets :: ActivationLoop -> IntSet
activeActivationTickets = activationLoopActiveTickets


-- | Admit one handler, assigning a fresh ticket while polling remains open.
reserveActivation :: ActivationLoop -> Either ReserveError (ActivationTicket, ActivationLoop)
reserveActivation loop = case phase loop of
  Draining -> Left ReserveAfterDraining
  Polling ->
    let ticket@(ActivationTicket ticketValue) = ActivationTicket loop.activationLoopNextTicket
    in Right
        ( ticket
        , loop
            { activationLoopNextTicket = loop.activationLoopNextTicket + 1
            , activationLoopActiveTickets = IntSet.insert ticketValue loop.activationLoopActiveTickets
            }
        )


-- | Retire one active handler exactly once.
completeActivation :: ActivationTicket -> ActivationLoop -> Either CompletionError ActivationLoop
completeActivation ticket@(ActivationTicket ticketValue) loop
  | IntSet.member ticketValue loop.activationLoopActiveTickets =
      Right loop {activationLoopActiveTickets = IntSet.delete ticketValue loop.activationLoopActiveTickets}
  | otherwise = Left (UnknownActivationTicket ticket)


-- | Irreversibly close admission while preserving outstanding handlers.
beginDraining :: ActivationLoop -> ActivationLoop
beginDraining loop = loop {activationLoopPhase = Draining}


-- | Whether shutdown has closed admission and every admitted handler finalized.
isDrained :: ActivationLoop -> Bool
isDrained loop = phase loop == Draining && IntSet.null loop.activationLoopActiveTickets
