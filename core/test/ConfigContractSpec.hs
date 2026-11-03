{-# LANGUAGE DuplicateRecordFields #-}
{-# OPTIONS_GHC -Werror=missing-fields #-}

{- | The Haskell config types and the Rust bridge types are hand-written
mirrors that meet as JSON. Each test encodes a Haskell config, decodes it with
the bridge's parser, serializes the result with the bridge's serializer, and
compares the two JSON values. A key that only one side knows, or a value that
the two sides encode differently, fails the test.

Each 'Maybe' field is 'Just' in at least one test, so every nested encoding
reaches the bridge. @-Werror=missing-fields@ makes a new Haskell field fail to
compile here until a test sets it.

The round trip cannot tell which Haskell field a key comes from, because the
expected JSON is the Haskell encoding itself. So the hand-written Haskell
encoders are also compared with JSON that is written out from the Rust field
names, with a different value in each field.
-}
module ConfigContractSpec (spec) where

import Control.Exception (bracket)
import Data.Aeson
import qualified Data.Aeson.KeyMap as KeyMap
import qualified Data.ByteString.Lazy as BL
import qualified Data.HashMap.Strict as HashMap
import qualified Data.Map.Strict as Map
import qualified Data.Text as T
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
    it "puts each TunerConfig field under the matching bridge key" $
      toJSON (fullTunerConfig FixedSizeSlotSupplier {fixedSlots = 6}) `shouldBe` fullTunerConfigJson
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
      assertRoundTrip TelemetryOptionsType . otelOptions $
        Just fullPeriodicity
    it "round-trips OtelTelemetryOptions without a periodicity" $
      assertRoundTrip TelemetryOptionsType $
        otelOptions Nothing
    it "round-trips PrometheusTelemetryOptions" $
      assertRoundTrip TelemetryOptionsType fullPrometheusOptions
    it "round-trips NoTelemetry" $
      assertRoundTrip TelemetryOptionsType NoTelemetry
    it "puts each Periodicity field under the matching bridge key" $
      toJSON fullPeriodicity `shouldBe` object ["secs" .= Number 3, "nanos" .= Number 4]
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
    it "puts each CachedDownload field under the matching bridge key" $
      toJSON fullCachedDownload `shouldBe` fullCachedDownloadJson
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


assertRoundTrip :: (HasCallStack, ToJSON a) => BridgeConfigType -> a -> Expectation
assertRoundTrip configType config = do
  let sent = encode config
  echoed <- echoBridgeConfig configType $ BL.toStrict sent
  fmap (decodeStrict @Value) echoed `shouldBe` Right (decode @Value sent)


assertRejectsUnknownField :: (HasCallStack, ToJSON a) => BridgeConfigType -> a -> Expectation
assertRejectsUnknownField configType config = do
  echoed <- echoBridgeConfig configType . BL.toStrict . encode . withUnknownField $ toJSON config
  echoed `shouldSatisfy` either ("unknown field `unexpected_field`" `T.isInfixOf`) (const False)
  where
    withUnknownField :: Value -> Value
    withUnknownField (Object fields) = Object $ KeyMap.insert "unexpected_field" (Bool True) fields
    withUnknownField other = other


withCustomSlotSupplierHandle :: (CustomSlotSupplierHandle -> IO a) -> IO a
withCustomSlotSupplierHandle =
  bracket (newCustomSlotSupplierHandle unusedSlotSupplier) freeCustomSlotSupplierHandle
  where
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
    , tuner = Just . fullTunerConfig $ CustomSlotSupplierConfig {customHandle = handle}
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


fullTunerConfig :: SlotSupplierConfig -> TunerConfig
fullTunerConfig nexusSlotSupplier =
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
    , nexusSlotSupplier = Just nexusSlotSupplier
    , resourceBasedTunerOptions =
        Just $
          ResourceBasedTunerConfig
            { targetMemoryUsage = 0.5
            , targetCpuUsage = 0.75
            }
    }


fullTunerConfigJson :: Value
fullTunerConfigJson =
  object
    [ "workflow_slot_supplier" .= object ["type" .= String "fixed_size", "slots" .= Number 5]
    , "activity_slot_supplier"
        .= object
          [ "type" .= String "resource_based"
          , "minimum_slots" .= Number 2
          , "maximum_slots" .= Number 20
          , "ramp_throttle_ms" .= Number 30
          ]
    , "local_activity_slot_supplier"
        .= object
          [ "type" .= String "resource_based"
          , "minimum_slots" .= Null
          , "maximum_slots" .= Null
          , "ramp_throttle_ms" .= Null
          ]
    , "nexus_slot_supplier" .= object ["type" .= String "fixed_size", "slots" .= Number 6]
    , "resource_based_tuner_options"
        .= object ["target_memory_usage" .= Number 0.5, "target_cpu_usage" .= Number 0.75]
    ]


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


fullPeriodicity :: Periodicity
fullPeriodicity = Periodicity {seconds = 3, nanoseconds = 4}


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


fullCachedDownloadJson :: Value
fullCachedDownloadJson =
  object
    [ "type" .= String "CachedDownload"
    , "contents"
        .= object
          [ "version"
              .= object
                [ "type" .= String "SDKDefault"
                , "contents" .= object ["sdk_name" .= String "contract-sdk", "sdk_version" .= String "9.9.9"]
                ]
          , "dest_dir" .= String "/tmp/contract-downloads"
          , "ttl" .= object ["secs" .= Number 3600, "nanos" .= Number 0]
          ]
    ]


fixedVersionDownload :: EphemeralExe
fixedVersionDownload = CachedDownload (Fixed "1.2.3") Nothing Nothing


existingPath :: EphemeralExe
existingPath = ExistingPath "/opt/temporal-test-server"


testServerConfig :: EphemeralExe -> TemporalTestServerConfig
testServerConfig exe =
  TemporalTestServerConfig
    { exe
    , port = Just 4321
    , extraArgs = ["--contract-flag"]
    }
