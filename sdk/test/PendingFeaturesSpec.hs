module PendingFeaturesSpec where

import Test.Hspec


spec :: Spec
spec = do


  describe "GRPC Connection (TS)" $ do
    it "native connection with custom options" $ const pending
    it "connection headers" $ const pending
    it "connection retry per gRPC code" $ const pending
    it "client namespace errors" $ const pending
    it "TLS configuration" $ const pending
    it "health service check" $ const pending
    it "lazy client initialization" $ const pending
    it "cloud client authentication" $ const pending

  describe "Async Activity Completion (Py/TS)" $ do
    it "complete async activity by token" $ const pending
    it "fail async activity by token" $ const pending
    it "heartbeat async activity by token" $ const pending
    it "cancel async activity by token" $ const pending
    it "complete async activity by ID" $ const pending
    it "fail async activity by ID" $ const pending
    it "non-existing activity errors (complete)" $ const pending
    it "non-existing activity errors (fail)" $ const pending
    it "non-existing activity errors (heartbeat)" $ const pending
    it "non-existing activity errors (cancel)" $ const pending
    it "async completion with activity env access" $ const pending
    it "async completion cancellation flow" $ const pending
    it "async completion failure flow" $ const pending

  describe "Worker Tuner (Py/TS)" $ do
    it "configure slot supplier" $ const pending
    it "resource-based tuner" $ const pending

  describe "Worker Poller Autoscale (TS)" $ do
    it "autoscale poller based on load" $ const pending

  describe "Metrics (Py/TS)" $ do
    it "custom metrics" $ const pending
    it "Prometheus metrics" $ const pending
    it "OpenTelemetry metrics" $ const pending
    it "buffered metrics" $ const pending

  describe "OpenTelemetry (Py/TS)" $ do
    it "OTel interceptor spans connected" $ const pending
    it "OTel error status includes message" $ const pending
    it "OTel replay compatibility" $ const pending

  describe "Unfinished Handlers (Py/TS)" $ do
    it "unfinished update handler warning" $ const pending
    it "unfinished signal handler warning" $ const pending
    it "unfinished handler with workflow return" $ const pending
    it "unfinished handler with CaN" $ const pending
    it "unfinished handler with workflow failure" $ const pending

  describe "Activity Advanced (Py/TS)" $ do
    it "activity pause / unpause" $ const pending
    it "activity reset" $ const pending

  describe "Build ID / Worker Versioning (Py/TS)" $ do
    it "build ID interactions" $ const pending
    it "worker deployment versioning" $ const pending

  describe "Workflow Advanced (Py/TS)" $ do
    it "user metadata on workflow, timer, activity, child" $ const pending

  describe "Isolation / Sandbox (TS)" $ do
    it "workflow isolation" $ const pending
    it "global state isolation" $ const pending

  describe "Ephemeral Server (Py/TS)" $ do
    it "start test server" $ const pending
    it "start dev server" $ const pending
    it "server options" $ const pending

  describe "Runtime (Py/TS)" $ do
    it "runtime configuration" $ const pending
    it "runtime shutdown" $ const pending

  describe "Replay Advanced (Py/TS)" $ do
    it "empty histories replay returns empty result" $ const pending
    it "task failure fails replay" $ const pending

  describe "Update handler executing activity (Py/TS)" $ do
    it "update timeout or cancel" $ const pending
    it "update separate handle" $ const pending
    it "updateWithStart" $ const pending

  describe "Worker Lifecycle (Py/TS)" $ do
    it "worker allows heartbeating after shutdown" $ const pending
    it "worker fails unknown namespace" $ const pending
    it "worker connection replacement" $ const pending
    it "worker exposes abort controller equivalent" $ const pending
    it "worker heartbeat management" $ const pending

  describe "Query Advanced (Py/TS)" $ do
    it "query workflow metadata" $ const pending
