{-# OPTIONS_GHC -Werror=missing-fields #-}

{- | The bridge sends slot supplier contexts and log lines to Haskell as JSON.
Each test decodes fixed samples, which the bridge builds with the same
functions as the real documents, and compares them with the Haskell values
that they should decode to. Each field has a different value, so a key that
the two sides name differently, or a decoder that reads a field from the
wrong key, fails the test.

The expected values must match the samples in @core/rust/src/test_fixtures.rs@.
-}
module OutputContractSpec (spec) where

import Data.Aeson (FromJSON, Value (..), eitherDecodeStrict, object, (.=))
import qualified Data.Aeson.KeyMap as KeyMap
import Temporal.Core.Internal.TestFixture
import Temporal.Core.Worker (
  MarkSlotUsedContext (..),
  ReleaseSlotContext (..),
  SlotInfo (..),
  SlotReservationContext (..),
 )
import Temporal.Runtime (CoreLog (..), LogLevel (..))
import Test.Hspec


spec :: Spec
spec = describe "JSON that the bridge sends to Haskell" $ do
  it "decodes a SlotReservationContext" $
    assertDecodes
      SlotReservationContextOutput
      [ SlotReservationContext
          { slotCtxTaskQueue = "contract-task-queue"
          , slotCtxWorkerIdentity = "contract-identity"
          , slotCtxNumIssuedSlots = 3
          , slotCtxIsSticky = True
          }
      ]
  it "decodes a MarkSlotUsedContext for each kind of slot" $
    assertDecodes MarkSlotUsedContextOutput $
      fmap
        MarkSlotUsedContext
        [ WorkflowSlotInfo {workflowType = "contract-workflow", slotIsSticky = True}
        , activitySlotInfo
        , LocalActivitySlotInfo {localActivityType = "contract-local-activity"}
        , NexusSlotInfo {nexusService = "contract-service", nexusOperation = "contract-operation"}
        ]
  it "decodes a ReleaseSlotContext with and without slot info" $
    assertDecodes
      ReleaseSlotContextOutput
      [ ReleaseSlotContext {releaseSlotInfo = Just activitySlotInfo}
      , ReleaseSlotContext {releaseSlotInfo = Nothing}
      ]
  it "decodes a CoreLog at each level" $
    assertDecodes CoreLogOutput $
      fmap coreLog [Trace, Debug, Info, Warn, Error]


assertDecodes :: (HasCallStack, FromJSON a, Eq a, Show a) => BridgeOutputType -> [a] -> Expectation
assertDecodes outputType expected = do
  json <- sampleBridgeOutput outputType
  eitherDecodeStrict json `shouldBe` Right expected


activitySlotInfo :: SlotInfo
activitySlotInfo = ActivitySlotInfo {activityType = "contract-activity"}


coreLog :: LogLevel -> CoreLog
coreLog level =
  CoreLog
    { target = "contract_target"
    , message = "contract message"
    , timestamp = object ["secs_since_epoch" .= Number 1_700_000_000, "nanos_since_epoch" .= Number 5]
    , level
    , fields = KeyMap.fromList [("contract_field", object ["nested" .= [Number 1, String "two"]])]
    , spanContexts = ["outer_span", "inner_span"]
    }
