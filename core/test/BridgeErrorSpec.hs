{-# LANGUAGE DuplicateRecordFields #-}

{- | Invalid caller input must reach Haskell as an ordinary failure. Before
these checks, the Rust bridge panicked across the C ABI and aborted the
process.
-}
module BridgeErrorSpec (spec) where

import Assertions
import Data.Text (Text)
import Temporal.Runtime
import Test.Hspec


spec :: Spec
spec = describe "Bridge errors" $ do
  describe "initializeRuntime" $ do
    it "throws RuntimeInitializationError for an invalid OpenTelemetry URL" $ do
      message <- runtimeInitializationError $ otelOptions "not a url"
      assertContains "names the bad setting" "Invalid OpenTelemetry collector URL" message

    it "throws RuntimeInitializationError for an invalid Prometheus address" $ do
      message <- runtimeInitializationError $ prometheusOptions "not an address"
      assertContains "names the bad setting" "Invalid telemetry options" message

    it "starts a runtime without telemetry" $
      bracketRuntime NoTelemetry (const $ pure ())


runtimeInitializationError :: TelemetryOptions -> IO Text
runtimeInitializationError options = do
  RuntimeInitializationError message <-
    assertThrows "runtime initialization fails" $ bracketRuntime options (const $ pure ())
  pure message


otelOptions :: Text -> TelemetryOptions
otelOptions url =
  OtelTelemetryOptions
    { url
    , headers = mempty
    , metricPeriodicity = Nothing
    , globalTags = mempty
    }


prometheusOptions :: Text -> TelemetryOptions
prometheusOptions socketAddr =
  PrometheusTelemetryOptions
    { socketAddr
    , globalTags = mempty
    , countersTotalSuffix = False
    , unitSuffix = False
    }
