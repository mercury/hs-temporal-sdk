{-# LANGUAGE DuplicateRecordFields #-}
{-# OPTIONS_GHC -Werror=missing-fields #-}

{- | The Haskell config types and the Rust bridge types are hand-written
mirrors that meet as JSON. These tests send each Haskell config through the
bridge's own decoder and encoder and check that nothing is lost or added.

* A Haskell field that Rust does not know fails the bridge's
  @deny_unknown_fields@ check.
* A Rust field that Haskell does not send comes back as an extra key.
* A field whose encoding differs comes back with a different value.

Every config below sets each field to a value different from its default, so
a field that a side ignores cannot pass by accident. @-Werror=missing-fields@
makes a new Haskell field fail to compile here until it is covered.
-}
module ConfigContractSpec (spec) where

import Assertions
import Control.Exception (bracket)
import Data.Aeson
import qualified Data.Aeson.KeyMap as KeyMap
import qualified Data.ByteString.Lazy as BL
import qualified Data.HashMap.Strict as HashMap
import qualified Data.Map.Strict as Map
import GHC.Stack (HasCallStack)
import Temporal.Core.Client
import Temporal.Core.EphemeralServer
import Temporal.Core.Internal.TestFixture
import Temporal.Core.Worker
import Temporal.Runtime
import Test.Hspec


spec :: Spec
spec = describe "Haskell and Rust config mirrors" $ do
  describe "WorkerConfig" $ do
    it "round-trips a config with every field set" $
      withCustomSlotSupplierHandle $
        assertRoundTrip WorkerConfigType . fullWorkerConfig
    it "round-trips the default config" $
      assertRoundTrip WorkerConfigType defaultWorkerConfig
    it "round-trips a tuner with every slot supplier unset" $
      assertRoundTrip WorkerConfigType defaultWorkerConfig {tuner = Just emptyTunerConfig}
    it "rejects an unknown field" $
      assertRejectsUnknownField WorkerConfigType defaultWorkerConfig

  describe "ClientConfig" $ do
    it "round-trips a config with every field set" $
      assertRoundTrip ClientConfigType fullClientConfig
    it "round-trips the default config" $
      assertRoundTrip ClientConfigType defaultClientConfig
    it "round-trips TLS without client credentials" $
      assertRoundTrip ClientConfigType fullClientConfig {tlsConfig = Just minimalTlsConfig}
    it "rejects an unknown field" $
      assertRejectsUnknownField ClientConfigType defaultClientConfig

  describe "TelemetryOptions" $ do
    it "round-trips OtelTelemetryOptions" $
      assertRoundTrip TelemetryOptionsType . otelOptions . Just $
        Periodicity {seconds = 3, nanoseconds = 4}
    it "round-trips OtelTelemetryOptions without a periodicity" $
      assertRoundTrip TelemetryOptionsType $
        otelOptions Nothing
    it "round-trips PrometheusTelemetryOptions" $
      assertRoundTrip TelemetryOptionsType fullPrometheusOptions
    it "round-trips NoTelemetry" $
      assertRoundTrip TelemetryOptionsType NoTelemetry
    it "rejects an unknown field" $
      assertRejectsUnknownField TelemetryOptionsType NoTelemetry

  describe "TemporalDevServerConfig" $ do
    it "round-trips a config with every field set" $
      assertRoundTrip DevServerConfigType $
        devServerConfig fullCachedDownload
    it "round-trips the default config" $
      assertRoundTrip DevServerConfigType defaultTemporalDevServerConfig
    it "round-trips a fixed-version download without a TTL" $
      assertRoundTrip DevServerConfigType $
        devServerConfig fixedVersionDownload
    it "rejects an unknown field" $
      assertRejectsUnknownField DevServerConfigType defaultTemporalDevServerConfig

  describe "TemporalTestServerConfig" $ do
    it "round-trips a config with every field set" $
      assertRoundTrip TestServerConfigType $
        testServerConfig existingPath
    it "round-trips a cached download" $
      assertRoundTrip TestServerConfigType $
        testServerConfig fullCachedDownload
    it "rejects an unknown field" $
      assertRejectsUnknownField TestServerConfigType $
        testServerConfig existingPath


-- | Check that the bridge decodes and re-encodes @config@ without change.
assertRoundTrip :: (HasCallStack, ToJSON a) => BridgeConfigType -> a -> Expectation
assertRoundTrip configType config = do
  let sent = encode config
  expected <- assertRight "the Haskell encoding is JSON" $ eitherDecode @Value sent
  echoed <- echoBridgeConfig configType $ BL.toStrict sent
  json <- assertRight ("the bridge accepts the " <> show configType) echoed
  actual <- assertRight "the bridge returns JSON" $ eitherDecodeStrict @Value json
  assertEq ("the bridge keeps every " <> show configType <> " field") expected actual


assertRejectsUnknownField :: (HasCallStack, ToJSON a) => BridgeConfigType -> a -> Expectation
assertRejectsUnknownField configType config = do
  fields <- case toJSON config of
    Object fields -> pure fields
    other -> do
      expectationFailure $ "expected a JSON object, got " <> show other
      error "unreachable"
  let withExtraField = Object $ KeyMap.insert "unexpected_field" (Bool True) fields
  echoed <- echoBridgeConfig configType . BL.toStrict $ encode withExtraField
  err <- assertLeft ("the bridge rejects an unknown " <> show configType <> " field") echoed
  assertContains "the error names the field" "unknown field `unexpected_field`" err


withCustomSlotSupplierHandle :: (CustomSlotSupplierHandle -> IO a) -> IO a
withCustomSlotSupplierHandle =
  bracket (newCustomSlotSupplierHandle unusedSlotSupplier) freeCustomSlotSupplierHandle
  where
    -- The bridge only decodes the handle here; it never calls the supplier.
    unusedSlotSupplier :: CustomSlotSupplier
    unusedSlotSupplier =
      CustomSlotSupplier
        { reserveSlot = const $ pure ()
        , tryReserveSlot = const $ pure False
        , markSlotUsed = const $ pure ()
        , releaseSlot = const $ pure ()
        }


fullWorkerConfig :: CustomSlotSupplierHandle -> WorkerConfig
fullWorkerConfig handle =
  WorkerConfig
    { namespace = "contract-namespace"
    , taskQueue = "contract-task-queue"
    , buildId = "contract-build"
    , clientIdentityOverride = Just "contract-identity"
    , maxCachedWorkflows = 7
    , tuner = Just $ fullTunerConfig handle
    , maxOutstandingWorkflowTasks = 11
    , maxOutstandingActivities = 12
    , maxOutstandingLocalActivities = 13
    , maxOutstandingNexusTasks = Just 14
    , maxConcurrentWorkflowTaskPolls = 3
    , maxConcurrentActivityTaskPolls = 4
    , maxConcurrentNexusTaskPolls = Just 6
    , nonstickyToStickyPollRatio = 0.5
    , stickyQueueScheduleToStartTimeoutMillis = 1001
    , maxHeartbeatThrottleIntervalMillis = 1002
    , defaultHeartbeatThrottleIntervalMillis = 1003
    , maxTaskQueueActivitiesPerSecond = Just 2.5
    , maxWorkerActivitiesPerSecond = Just 3.5
    , gracefulShutdownPeriodMillis = 1004
    , nondeterminismAsWorkflowFail = True
    , nondeterminismAsWorkflowFailForTypes = ["WorkflowA", "WorkflowB"]
    , noRemoteActivities = True
    }


fullTunerConfig :: CustomSlotSupplierHandle -> TunerConfig
fullTunerConfig handle =
  TunerConfig
    { workflowSlotSupplier = Just $ FixedSizeSlotSupplier {fixedSlots = 5}
    , activitySlotSupplier =
        Just $
          ResourceBasedSlotSupplier
            { minimumSlots = Just 2
            , maximumSlots = Just 20
            , rampThrottleMs = Just 30
            }
    , localActivitySlotSupplier =
        Just $
          ResourceBasedSlotSupplier
            { minimumSlots = Nothing
            , maximumSlots = Nothing
            , rampThrottleMs = Nothing
            }
    , nexusSlotSupplier = Just $ CustomSlotSupplierConfig {customHandle = handle}
    , resourceBasedTunerOptions =
        Just $
          ResourceBasedTunerConfig
            { targetMemoryUsage = 0.5
            , targetCpuUsage = 0.75
            }
    }


emptyTunerConfig :: TunerConfig
emptyTunerConfig =
  TunerConfig
    { workflowSlotSupplier = Nothing
    , activitySlotSupplier = Nothing
    , localActivitySlotSupplier = Nothing
    , nexusSlotSupplier = Nothing
    , resourceBasedTunerOptions = Nothing
    }


fullClientConfig :: ClientConfig
fullClientConfig =
  ClientConfig
    { targetUrl = "https://temporal.example:7233"
    , clientName = "contract-client"
    , clientVersion = "1.2.3"
    , metadata = HashMap.fromList [("x-first", "1"), ("x-second", "2")]
    , apiKey = Just $ APIKey "contract-api-key"
    , identity = "contract-identity"
    , tlsConfig =
        Just
          ClientTlsConfig
            { serverRootCaCert = Just $ ByteVector "root-ca"
            , domain = Just "tls.example"
            , clientCert = Just $ ByteVector "client-cert"
            , clientPrivateKey = Just $ ByteVector "client-key"
            }
    , retryConfig =
        Just
          ClientRetryConfig
            { initialIntervalMillis = 11
            , randomizationFactor = 0.25
            , multiplier = 1.5
            , maxIntervalMillis = 22
            , maxElapsedTimeMillis = Just 33
            , maxRetries = 4
            }
    }


minimalTlsConfig :: ClientTlsConfig
minimalTlsConfig =
  ClientTlsConfig
    { serverRootCaCert = Nothing
    , domain = Nothing
    , clientCert = Nothing
    , clientPrivateKey = Nothing
    }


-- | OpenTelemetry options with every field set except the periodicity.
otelOptions :: Maybe Periodicity -> TelemetryOptions
otelOptions metricPeriodicity =
  OtelTelemetryOptions
    { url = "http://collector.example:4317"
    , headers = Map.fromList [("authorization", "Bearer token")]
    , metricPeriodicity
    , globalTags = Map.fromList [("service", "contract")]
    }


fullPrometheusOptions :: TelemetryOptions
fullPrometheusOptions =
  PrometheusTelemetryOptions
    { socketAddr = "127.0.0.1:9464"
    , globalTags = Map.fromList [("service", "contract")]
    , countersTotalSuffix = True
    , unitSuffix = True
    }


-- | A dev server config with every field set except the executable.
devServerConfig :: EphemeralExe -> TemporalDevServerConfig
devServerConfig exe =
  TemporalDevServerConfig
    { exe
    , namespace = "contract-namespace"
    , ip = "127.0.0.2"
    , port = Just 1234
    , dbFilename = Just "contract.sqlite"
    , ui = True
    , uiPort = Just 2345
    , log = ("json", "debug")
    , extraArgs = ["--contract-flag"]
    }


fullCachedDownload :: EphemeralExe
fullCachedDownload =
  CachedDownload
    (Default $ SDKDefault {sdkName = "contract-sdk", sdkVersion = "9.9.9"})
    (Just "/tmp/contract-downloads")
    (Just 3600)


fixedVersionDownload :: EphemeralExe
fixedVersionDownload = CachedDownload (Fixed "1.2.3") Nothing Nothing


existingPath :: EphemeralExe
existingPath = ExistingPath "/opt/temporal-test-server"


-- | A test server config with every field set except the executable.
testServerConfig :: EphemeralExe -> TemporalTestServerConfig
testServerConfig exe =
  TemporalTestServerConfig
    { exe
    , port = Just 4321
    , extraArgs = ["--contract-flag"]
    }
