{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE TypeApplications #-}

{- | Async activity completion client.

When an activity calls 'Temporal.Activity.Worker.completeAsync', the worker
signals that the activity will be completed out-of-band. This module provides
the client-side API to complete, fail, heartbeat, or cancel such activities.

Activities can be addressed either by 'TaskToken' (obtained from
'Temporal.Activity.Types.taskToken' on 'ActivityInfo') or by ID
(namespace + workflow ID + run ID + activity ID).
-}
module Temporal.Client.AsyncActivity (
  -- * Client
  AsyncCompletionClient (..),
  asyncCompletionClient,
  asyncCompletionClientWithProcessor,

  -- * Token-based operations
  complete,
  Temporal.Client.AsyncActivity.fail,
  heartbeat,
  reportCancellation,

  -- * ID-based operations
  completeById,
  failById,
  heartbeatById,
  reportCancellationById,
) where

import Control.Exception (throwIO)
import Data.ProtoLens (defMessage)
import Data.ProtoLens.Field (field)
import qualified Data.Vector as V
import Data.Function ((&))
import Lens.Family2 ((.~))
import Data.Text (Text)
import Temporal.Common
import Temporal.Core.Client (Client)
import qualified Temporal.Core.Client.WorkflowService as RPC
import Temporal.Exception (ApplicationFailure, applicationFailureToFailureProto, coreRpcErrorToRpcError)
import Temporal.Payload


{- | Client for completing activities that signalled async completion.

Construct with 'asyncCompletionClient'.
-}
data AsyncCompletionClient = AsyncCompletionClient
  { client :: !Client
  , namespace :: !Namespace
  , identity :: !Text
  , payloadProcessor :: !PayloadProcessor
  }


-- | Build an 'AsyncCompletionClient' from a raw gRPC 'Client', namespace, and caller identity.
-- Uses the identity 'PayloadProcessor' (no encoding).
asyncCompletionClient :: Client -> Namespace -> Text -> AsyncCompletionClient
asyncCompletionClient c ns ident =
  AsyncCompletionClient c ns ident (PayloadProcessor pure (pure . Right))


-- | Build an 'AsyncCompletionClient' with a custom 'PayloadProcessor'.
asyncCompletionClientWithProcessor :: Client -> Namespace -> Text -> PayloadProcessor -> AsyncCompletionClient
asyncCompletionClientWithProcessor = AsyncCompletionClient


-- Token-based operations -------------------------------------------------------

-- | Complete an async activity by task token with a result payload.
complete :: AsyncCompletionClient -> TaskToken -> Payload -> IO ()
complete c tok result = do
  encoded <- payloadProcessorEncode c.payloadProcessor result
  let req =
        defMessage
          & field @"taskToken" .~ rawTaskToken tok
          & field @"namespace" .~ rawNamespace c.namespace
          & field @"identity" .~ c.identity
          & field @"result"
            .~ ( defMessage
                  & field @"vec'payloads" .~ V.singleton (convertToProtoPayload encoded)
               )
  res <- RPC.respondActivityTaskCompleted c.client req
  case res of
    Left err -> throwIO $ coreRpcErrorToRpcError err
    Right _ -> pure ()


-- | Fail an async activity by task token with an 'ApplicationFailure'.
fail :: AsyncCompletionClient -> TaskToken -> ApplicationFailure -> IO ()
fail c tok appFailure = do
  let req =
        defMessage
          & field @"taskToken" .~ rawTaskToken tok
          & field @"namespace" .~ rawNamespace c.namespace
          & field @"identity" .~ c.identity
          & field @"failure" .~ applicationFailureToFailureProto appFailure
  res <- RPC.respondActivityTaskFailed c.client req
  case res of
    Left err -> throwIO $ coreRpcErrorToRpcError err
    Right _ -> pure ()


-- | Record a heartbeat for an async activity by task token.
heartbeat :: AsyncCompletionClient -> TaskToken -> [Payload] -> IO ()
heartbeat c tok details = do
  let req =
        defMessage
          & field @"taskToken" .~ rawTaskToken tok
          & field @"namespace" .~ rawNamespace c.namespace
          & field @"identity" .~ c.identity
          & field @"details"
            .~ ( defMessage
                  & field @"vec'payloads" .~ V.fromList (fmap convertToProtoPayload details)
               )
  res <- RPC.recordActivityTaskHeartbeat c.client req
  case res of
    Left err -> throwIO $ coreRpcErrorToRpcError err
    Right _ -> pure ()


-- | Report cancellation of an async activity by task token.
reportCancellation :: AsyncCompletionClient -> TaskToken -> [Payload] -> IO ()
reportCancellation c tok details = do
  let req =
        defMessage
          & field @"taskToken" .~ rawTaskToken tok
          & field @"namespace" .~ rawNamespace c.namespace
          & field @"identity" .~ c.identity
          & field @"details"
            .~ ( defMessage
                  & field @"vec'payloads" .~ V.fromList (fmap convertToProtoPayload details)
               )
  res <- RPC.respondActivityTaskCanceled c.client req
  case res of
    Left err -> throwIO $ coreRpcErrorToRpcError err
    Right _ -> pure ()


-- ID-based operations ----------------------------------------------------------

-- | Complete an async activity by workflow\/activity ID.
completeById :: AsyncCompletionClient -> WorkflowId -> RunId -> ActivityId -> Payload -> IO ()
completeById c wfId runId actId result = do
  encoded <- payloadProcessorEncode c.payloadProcessor result
  let req =
        defMessage
          & field @"namespace" .~ rawNamespace c.namespace
          & field @"identity" .~ c.identity
          & field @"workflowId" .~ rawWorkflowId wfId
          & field @"runId" .~ rawRunId runId
          & field @"activityId" .~ rawActivityId actId
          & field @"result"
            .~ ( defMessage
                  & field @"vec'payloads" .~ V.singleton (convertToProtoPayload encoded)
               )
  res <- RPC.respondActivityTaskCompletedById c.client req
  case res of
    Left err -> throwIO $ coreRpcErrorToRpcError err
    Right _ -> pure ()


-- | Fail an async activity by workflow\/activity ID.
failById :: AsyncCompletionClient -> WorkflowId -> RunId -> ActivityId -> ApplicationFailure -> IO ()
failById c wfId runId actId appFailure = do
  let req =
        defMessage
          & field @"namespace" .~ rawNamespace c.namespace
          & field @"identity" .~ c.identity
          & field @"workflowId" .~ rawWorkflowId wfId
          & field @"runId" .~ rawRunId runId
          & field @"activityId" .~ rawActivityId actId
          & field @"failure" .~ applicationFailureToFailureProto appFailure
  res <- RPC.respondActivityTaskFailedById c.client req
  case res of
    Left err -> throwIO $ coreRpcErrorToRpcError err
    Right _ -> pure ()


-- | Record a heartbeat for an async activity by workflow\/activity ID.
heartbeatById :: AsyncCompletionClient -> WorkflowId -> RunId -> ActivityId -> [Payload] -> IO ()
heartbeatById c wfId runId actId details = do
  let req =
        defMessage
          & field @"namespace" .~ rawNamespace c.namespace
          & field @"identity" .~ c.identity
          & field @"workflowId" .~ rawWorkflowId wfId
          & field @"runId" .~ rawRunId runId
          & field @"activityId" .~ rawActivityId actId
          & field @"details"
            .~ ( defMessage
                  & field @"vec'payloads" .~ V.fromList (fmap convertToProtoPayload details)
               )
  res <- RPC.recordActivityTaskHeartbeatById c.client req
  case res of
    Left err -> throwIO $ coreRpcErrorToRpcError err
    Right _ -> pure ()


-- | Report cancellation of an async activity by workflow\/activity ID.
reportCancellationById :: AsyncCompletionClient -> WorkflowId -> RunId -> ActivityId -> [Payload] -> IO ()
reportCancellationById c wfId runId actId details = do
  let req =
        defMessage
          & field @"namespace" .~ rawNamespace c.namespace
          & field @"identity" .~ c.identity
          & field @"workflowId" .~ rawWorkflowId wfId
          & field @"runId" .~ rawRunId runId
          & field @"activityId" .~ rawActivityId actId
          & field @"details"
            .~ ( defMessage
                  & field @"vec'payloads" .~ V.fromList (fmap convertToProtoPayload details)
               )
  res <- RPC.respondActivityTaskCanceledById c.client req
  case res of
    Left err -> throwIO $ coreRpcErrorToRpcError err
    Right _ -> pure ()
