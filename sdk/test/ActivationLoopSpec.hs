module ActivationLoopSpec where

import Control.Monad (foldM, forM_)
import Data.Either (isLeft)
import qualified Data.IntSet as IntSet
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map
import Hedgehog
import qualified Hedgehog.Gen as Gen
import qualified Hedgehog.Range as Range
import Temporal.Workflow.Internal.ActivationLoop
import Test.Hspec
import Test.Hspec.Hedgehog


data LifecycleAction
  = Reserve
  | CompleteActive Int
  | RepeatCompletion
  | CompleteUnknown Int
  | BeginDrain
  deriving stock (Eq, Show)


data Model = Model
  { loop :: ActivationLoop
  , completed :: [ActivationTicket]
  }


data ActiveClass
  = NoActive
  | OneActive
  | ManyActive
  deriving stock (Eq, Ord, Show)


data AbstractLoop = AbstractLoop Phase ActiveClass
  deriving stock (Eq, Ord, Show)


data AbstractCommand
  = AbstractReserve
  | AbstractComplete
  | AbstractBeginDrain
  deriving stock (Eq, Show)


spec :: Spec
spec = describe "activation loop lifecycle" do
  it "issues unique reservations" $ hedgehog do
    count <- forAll $ Gen.int (Range.linear 0 10_000)
    (_, tickets) <- evalEither $ reserveMany count initialActivationLoop
    length tickets === IntSet.size (IntSet.fromList $ ticketValue <$> tickets)

  it "conserves reservations through hostile command sequences" $ hedgehog do
    actions <- forAll $ Gen.list (Range.linear 0 1_000) genAction
    final <- foldM applyAction (Model initialActivationLoop []) actions
    assert $ all ((`IntSet.notMember` activeActivationTickets final.loop) . ticketValue) final.completed
    evalEither $ validateState final.loop

  it "rejects every reservation after draining begins" $ hedgehog do
    count <- forAll $ Gen.int (Range.linear 0 1_000)
    (loop, _) <- evalEither $ reserveMany count initialActivationLoop
    reserveActivation (beginDraining loop) === Left ReserveAfterDraining

  it "drains exactly after every reserved activation completes" $ hedgehog do
    count <- forAll $ Gen.int (Range.linear 0 1_000)
    (loop, tickets) <- evalEither $ reserveMany count initialActivationLoop
    let draining = beginDraining loop
    isDrained draining === null tickets
    completedLoop <- evalEither $ foldM (flip completeActivation) draining tickets
    assert $ isDrained completedLoop
    phase completedLoop === Draining

  it "detects duplicate completion" $ hedgehog do
    (ticket, loop) <- evalEither $ reserveActivation initialActivationLoop
    completedLoop <- evalEither $ completeActivation ticket loop
    assert $ isLeft $ completeActivation ticket completedLoop

  it "does not let a stale completion retire a newer activation" do
    (staleTicket, firstActive) <- expectRight $ reserveActivation initialActivationLoop
    firstComplete <- expectRight $ completeActivation staleTicket firstActive
    (currentTicket, currentActive) <- expectRight $ reserveActivation firstComplete
    completeActivation staleTicket currentActive `shouldBe` Left (UnknownActivationTicket staleTicket)
    IntSet.member (ticketValue currentTicket) (activeActivationTickets currentActive) `shouldBe` True

  it "keeps shutdown blocked when a handler disappears before finalizing" do
    (_, active) <- expectRight $ reserveActivation initialActivationLoop
    let draining = beginDraining active
    isDrained draining `shouldBe` False
    reserveActivation draining `shouldBe` Left ReserveAfterDraining

  it "serializes the reservation-drain race without losing admitted work" do
    let drainWins = beginDraining initialActivationLoop
    reserveActivation drainWins `shouldBe` Left ReserveAfterDraining
    (ticket, reservationWins) <- expectRight $ reserveActivation initialActivationLoop
    let draining = beginDraining reservationWins
    isDrained draining `shouldBe` False
    completeActivation ticket draining `shouldSatisfy` either (const False) isDrained

  it "exhausts successful state changes modulo ticket identity and count" do
    let reachable = reachableAbstractStates
    Map.size reachable `shouldBe` 6
    forM_ (Map.toList reachable) $ \(loop, trace) ->
      case validateAbstractState loop of
        Left err -> expectationFailure $ unlines [err, "Trace:", show trace, "State:", show loop]
        Right () -> pure ()


genAction :: Gen LifecycleAction
genAction =
  Gen.choice
    [ pure Reserve
    , CompleteActive <$> Gen.int (Range.linear 0 10_000)
    , pure RepeatCompletion
    , CompleteUnknown <$> Gen.int (Range.linear 0 10_000)
    , pure BeginDrain
    ]


reserveMany :: Int -> ActivationLoop -> Either ReserveError (ActivationLoop, [ActivationTicket])
reserveMany count = go count []
  where
    go remaining tickets loop
      | remaining <= 0 = Right (loop, reverse tickets)
      | otherwise = do
          (ticket, loop') <- reserveActivation loop
          go (remaining - 1) (ticket : tickets) loop'


applyAction :: Model -> LifecycleAction -> PropertyT IO Model
applyAction model = \case
  Reserve -> case reserveActivation model.loop of
    Left ReserveAfterDraining -> do
      phase model.loop === Draining
      pure model
    Right (ticket, loop') -> do
      IntSet.size (activeActivationTickets loop') === IntSet.size (activeActivationTickets model.loop) + 1
      assert $ IntSet.member (ticketValue ticket) (activeActivationTickets loop')
      pure model {loop = loop'}
  CompleteActive index
    | IntSet.null active -> pure model
    | otherwise ->
        case drop (index `mod` IntSet.size active) (IntSet.toAscList active) of
          [] -> failure
          ticketValue' : _ -> do
            let ticket = ActivationTicket ticketValue'
            loop' <- evalEither $ completeActivation ticket model.loop
            IntSet.size (activeActivationTickets loop') === IntSet.size active - 1
            pure model {loop = loop', completed = ticket : model.completed}
    where
      active = activeActivationTickets model.loop
  CompleteUnknown index -> do
    let ticket = ActivationTicket (-index - 1)
    completeActivation ticket model.loop === Left (UnknownActivationTicket ticket)
    pure model
  RepeatCompletion -> case model.completed of
    [] -> pure model
    ticket : _ -> do
      assert $ isLeft $ completeActivation ticket model.loop
      pure model
  BeginDrain -> do
    let loop' = beginDraining model.loop
    phase loop' === Draining
    activeActivationTickets loop' === activeActivationTickets model.loop
    pure model {loop = loop'}


-- Ticket values are symmetric for lifecycle safety. Saturating cardinality at
-- two retains every distinct transition: completing many handlers may leave
-- either one or many, while reservation keeps the state in many.
reachableAbstractStates :: Map AbstractLoop [AbstractCommand]
reachableAbstractStates = go initial initial
  where
    initial = Map.singleton (AbstractLoop Polling NoActive) []
    go seen frontier
      | Map.null frontier = seen
      | otherwise =
          let discovered =
                Map.fromList $
                  concatMap (discoverFromState seen) (Map.toList frontier)
              seen' = Map.union seen discovered
          in go seen' discovered
    discoverFromState seen (loop, trace) =
      concatMap
        ( \(command, next) ->
            if Map.member next seen
              then []
              else [(next, trace <> [command])]
        )
        (abstractTransitions loop)


abstractTransitions :: AbstractLoop -> [(AbstractCommand, AbstractLoop)]
abstractTransitions loop@(AbstractLoop loopPhase activeClass) =
  reserveTransition <> completionTransitions <> drainTransition
  where
    reserveTransition = case loopPhase of
      Polling -> [(AbstractReserve, AbstractLoop Polling $ incrementActive activeClass)]
      Draining -> []
    completionTransitions = case activeClass of
      NoActive -> []
      OneActive -> [(AbstractComplete, AbstractLoop loopPhase NoActive)]
      ManyActive ->
        [ (AbstractComplete, AbstractLoop loopPhase OneActive)
        , (AbstractComplete, loop)
        ]
    drainTransition = case loopPhase of
      Polling -> [(AbstractBeginDrain, AbstractLoop Draining activeClass)]
      Draining -> []


incrementActive :: ActiveClass -> ActiveClass
incrementActive = \case
  NoActive -> OneActive
  OneActive -> ManyActive
  ManyActive -> ManyActive


validateAbstractState :: AbstractLoop -> Either String ()
validateAbstractState loop@(AbstractLoop loopPhase activeClass)
  | abstractTransitions loop == expectedTransitions = Right ()
  | otherwise =
      Left $
        unlines
          [ "abstract transitions did not match the lifecycle specification"
          , "Expected: " <> show expectedTransitions
          , "Actual: " <> show (abstractTransitions loop)
          ]
  where
    expectedTransitions =
      expectedReservation <> expectedCompletions <> expectedDrain
    expectedReservation = case loopPhase of
      Polling -> [(AbstractReserve, AbstractLoop Polling $ incrementActive activeClass)]
      Draining -> []
    expectedCompletions = case activeClass of
      NoActive -> []
      OneActive -> [(AbstractComplete, AbstractLoop loopPhase NoActive)]
      ManyActive ->
        [ (AbstractComplete, AbstractLoop loopPhase OneActive)
        , (AbstractComplete, loop)
        ]
    expectedDrain = case loopPhase of
      Polling -> [(AbstractBeginDrain, AbstractLoop Draining activeClass)]
      Draining -> []


validateState :: ActivationLoop -> Either String ()
validateState loop = do
  if isDrained loop == (phase loop == Draining && IntSet.null (activeActivationTickets loop))
    then Right ()
    else Left "isDrained does not match phase plus an empty active set"
  case phase loop of
    Draining
      | reserveActivation loop == Left ReserveAfterDraining -> Right ()
      | otherwise -> Left "draining state accepted a new reservation"
    Polling -> case reserveActivation loop of
      Left err -> Left $ "polling state rejected a reservation: " <> show err
      Right (ticket, next)
        | IntSet.member (ticketValue ticket) (activeActivationTickets loop) -> Left "reservation reused an active ticket"
        | activeActivationTickets next /= IntSet.insert (ticketValue ticket) (activeActivationTickets loop) -> Left "reservation changed more than its issued ticket"
        | otherwise -> Right ()
  forM_ (IntSet.toList $ activeActivationTickets loop) $ \ticketValue' ->
    let ticket = ActivationTicket ticketValue'
    in case completeActivation ticket loop of
        Left err -> Left $ "active ticket could not complete: " <> show err
        Right next
          | phase next /= phase loop -> Left "completion changed the loop phase"
          | activeActivationTickets next /= IntSet.delete ticketValue' (activeActivationTickets loop) -> Left "completion changed more than its own ticket"
          | otherwise -> Right ()


ticketValue :: ActivationTicket -> Int
ticketValue (ActivationTicket value) = value


expectRight :: Show err => Either err value -> IO value
expectRight = either (fail . show) pure
