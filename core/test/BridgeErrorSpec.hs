{-# LANGUAGE DuplicateRecordFields #-}

module BridgeErrorSpec (spec) where

import Data.Text (Text)
import qualified Data.Text as T
import Temporal.Runtime
import Test.Hspec


spec :: Spec
spec = describe "Bridge errors" $ do
  describe "initializeRuntime" $ do
    it "throws RuntimeInitializationError for an invalid OpenTelemetry URL" $
      startRuntime (otelOptions "not a url")
        `shouldThrow` initializationErrorContaining "Invalid OpenTelemetry collector URL"

    it "throws RuntimeInitializationError for an invalid Prometheus address" $
      startRuntime (prometheusOptions "not an address")
        `shouldThrow` initializationErrorContaining "Invalid telemetry options"

    it "starts a runtime without telemetry" $
      startRuntime NoTelemetry


startRuntime :: TelemetryOptions -> IO ()
startRuntime options = bracketRuntime options (const $ pure ())


initializationErrorContaining :: Text -> Selector RuntimeInitializationError
initializationErrorContaining expected (RuntimeInitializationError message) =
  expected `T.isInfixOf` message


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
