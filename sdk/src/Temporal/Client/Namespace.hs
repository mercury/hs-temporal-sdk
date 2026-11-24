{-# LANGUAGE DuplicateRecordFields #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
module Temporal.Client.Namespace
  ( Temporal.Client.Namespace.listNamespaces
  , ListNamespacesRequest(..)
  , DescribeNamespaceResponse(..)
  , NamespaceFilter(..)
  , NamespaceState(..)
  , NamespaceInfo(..)
  , NamespaceCapabilities(..)
  , ArchivalState(..)
  , BadBinaryInfo(..)
  , BadBinaries(..)
  , NamespaceConfig(..)
  , NamespaceReplicationConfig(..)
  , FailoverStatus(..)
  ) where

import Prelude hiding (filter)
import Control.Monad.IO.Class
import Conduit
import Data.Int (Int64, Int32)
import Data.Map.Strict (Map)
import Data.Text (Text)
import Data.Time.Clock.System (SystemTime)
import qualified Data.Vector as V
import Temporal.Duration (Duration, durationFromProto)
import Temporal.Client (HasWorkflowClient (..))
import Temporal.Core.Client.WorkflowService (listNamespaces)
import Temporal.Exception
import Lens.Family2
import qualified Proto.Temporal.Api.Workflowservice.V1.RequestResponse as RR
import qualified Proto.Temporal.Api.Workflowservice.V1.RequestResponse_Fields as RR
import qualified Proto.Temporal.Api.Namespace.V1.Message as M
import qualified Proto.Temporal.Api.Namespace.V1.Message_Fields as M
import qualified Proto.Temporal.Api.Enums.V1.Namespace as M
import qualified Proto.Temporal.Api.Replication.V1.Message as R
import qualified Proto.Temporal.Api.Replication.V1.Message_Fields as R
import Temporal.Client.Types

import UnliftIO
import Data.ProtoLens
import Control.Monad
import qualified Data.ByteString as BS
import Temporal.Common

data NamespaceFilter = NamespaceFilter
  { includeDeleted :: !Bool
  } deriving stock (Show, Eq, Ord)

namespaceFilterToProto :: NamespaceFilter -> M.NamespaceFilter
namespaceFilterToProto NamespaceFilter{..} = defMessage
  & M.includeDeleted .~ includeDeleted

data NamespaceState
  = NamespaceStateUnspecified
  | NamespaceStateRegistered
  | NamespaceStateDeprecated
  | NamespaceStateDeleted
  | NamespaceStateUnrecognized
  deriving stock (Show, Eq, Ord)

namespaceStateFromProto :: M.NamespaceState -> NamespaceState
namespaceStateFromProto = \case
  M.NAMESPACE_STATE_UNSPECIFIED -> NamespaceStateUnspecified
  M.NAMESPACE_STATE_REGISTERED -> NamespaceStateRegistered
  M.NAMESPACE_STATE_DEPRECATED -> NamespaceStateDeprecated
  M.NAMESPACE_STATE_DELETED -> NamespaceStateDeleted
  M.NAMESPACE_STATE_SOFT_DELETED -> NamespaceStateUnrecognized
  (M.NamespaceState'Unrecognized _) -> NamespaceStateUnrecognized

data NamespaceInfo = NamespaceInfo
  { name :: !Text
  , state :: !NamespaceState
  , description :: !Text
  , ownerEmail :: !Text
  , id :: !Text
  , data' :: !(Map Text Text)
  -- ^ A key-value map for any customized purpose.
  , capabilities :: !(Maybe NamespaceCapabilities)
  , supportsSchedules :: !Bool
  } deriving stock (Show, Eq, Ord)

namespaceInfoFromProto :: M.NamespaceInfo -> NamespaceInfo
namespaceInfoFromProto x = NamespaceInfo
  { name = x ^. M.name
  , state = namespaceStateFromProto (x ^. M.state)
  , description = x ^. M.description
  , ownerEmail = x ^. M.ownerEmail
  , id = x ^. M.id
  , data' = x ^. M.data'
  , capabilities = namespaceCapabilitiesFromProto <$> (x ^. M.maybe'capabilities)
  , supportsSchedules = x ^. M.supportsSchedules
  }

data NamespaceCapabilities = NamespaceCapabilities
  { eagerWorkflowStart :: !Bool
  , syncUpdate :: !Bool
  , asyncUpdate :: !Bool
  } deriving stock (Show, Eq, Ord)

namespaceCapabilitiesFromProto :: M.NamespaceInfo'Capabilities -> NamespaceCapabilities
namespaceCapabilitiesFromProto x = NamespaceCapabilities
  { eagerWorkflowStart = x ^. M.eagerWorkflowStart
  , syncUpdate = x ^. M.syncUpdate
  , asyncUpdate = x ^. M.asyncUpdate
  }

data ArchivalState
  = ArchivalStateUnspecified
  | ArchivalStateDisabled
  | ArchivalStateEnabled
  | ArchivalStateUnrecognized
  deriving stock (Show, Eq, Ord)

archivalStateFromProto :: M.ArchivalState -> ArchivalState
archivalStateFromProto = \case
  M.ARCHIVAL_STATE_UNSPECIFIED -> ArchivalStateUnspecified
  M.ARCHIVAL_STATE_DISABLED -> ArchivalStateDisabled
  M.ARCHIVAL_STATE_ENABLED -> ArchivalStateEnabled
  (M.ArchivalState'Unrecognized _) -> ArchivalStateUnrecognized

data BadBinaryInfo = BadBinaryInfo
  { reason :: !Text
  , operator :: !Text
  , createTime :: !SystemTime
  } deriving stock (Show, Eq, Ord)

badBinaryInfoFromProto :: M.BadBinaryInfo -> BadBinaryInfo
badBinaryInfoFromProto x = BadBinaryInfo
  { reason = x ^. M.reason
  , operator = x ^. M.operator
  , createTime = timespecFromTimestamp (x ^. M.createTime)
  }

data BadBinaries = BadBinaries
  { binaries :: !(Map Text BadBinaryInfo)
  } deriving stock (Show, Eq, Ord)

badBinariesFromProto :: M.BadBinaries -> BadBinaries
badBinariesFromProto x = BadBinaries
  { binaries = badBinaryInfoFromProto <$> (x ^. M.binaries)
  }

data NamespaceConfig = NamespaceConfig
  { workflowExecutionRetentionTtl :: !(Maybe Duration)
  , badBinaries :: !(Maybe BadBinaries)
  , historyArchivalState :: !ArchivalState
  , historyArchivalUri :: !Text
  , visibilityArchivalState :: !ArchivalState
  , visibilityArchivalUri :: !Text
  , customSearchAttributeAliases :: !(Map Text Text)
  } deriving stock (Show, Eq, Ord)

namespaceConfigFromProto :: M.NamespaceConfig -> NamespaceConfig
namespaceConfigFromProto x = NamespaceConfig
  { workflowExecutionRetentionTtl = durationFromProto <$> (x ^. M.maybe'workflowExecutionRetentionTtl)
  , badBinaries = badBinariesFromProto <$> (x ^. M.maybe'badBinaries)
  , historyArchivalState = archivalStateFromProto (x ^. M.historyArchivalState)
  , historyArchivalUri = x ^. M.historyArchivalUri
  , visibilityArchivalState = archivalStateFromProto (x ^. M.visibilityArchivalState)
  , visibilityArchivalUri = x ^. M.visibilityArchivalUri
  , customSearchAttributeAliases = x ^. M.customSearchAttributeAliases
  }

data ReplicationState
  = ReplicationStateUnspecified
  | ReplicationStateNormal
  | ReplicationStateHandover
  | ReplicationStateUnrecognized
  deriving stock (Show, Eq, Ord)

replicationStateFromProto :: M.ReplicationState -> ReplicationState
replicationStateFromProto = \case
  M.REPLICATION_STATE_UNSPECIFIED -> ReplicationStateUnspecified
  M.REPLICATION_STATE_NORMAL -> ReplicationStateNormal
  M.REPLICATION_STATE_HANDOVER -> ReplicationStateHandover
  (M.ReplicationState'Unrecognized _) -> ReplicationStateUnrecognized

data ClusterReplicationConfig = ClusterReplicationConfig
  { clusterName :: !Text
  } deriving stock (Show, Eq, Ord)

clusterReplicationConfigFromProto :: R.ClusterReplicationConfig -> ClusterReplicationConfig
clusterReplicationConfigFromProto x = ClusterReplicationConfig
  { clusterName = x ^. R.clusterName
  }

data NamespaceReplicationConfig = NamespaceReplicationConfig
  { activeClusterName :: !Text
  , clusters :: !(V.Vector ClusterReplicationConfig)
  , state :: !ReplicationState
  } deriving stock (Show, Eq, Ord)

namespaceReplicationConfigFromProto :: R.NamespaceReplicationConfig -> NamespaceReplicationConfig
namespaceReplicationConfigFromProto x = NamespaceReplicationConfig
  { activeClusterName = x ^. R.activeClusterName
  , clusters = clusterReplicationConfigFromProto <$> (x ^. R.vec'clusters)
  , state = replicationStateFromProto (x ^. M.state)
  }

data FailoverStatus = FailoverStatus
  { failoverTime :: !SystemTime
  , failoverVersion :: !Int64
  } deriving stock (Show, Eq, Ord)

failoverStatusFromProto :: R.FailoverStatus -> FailoverStatus
failoverStatusFromProto x = FailoverStatus
  { failoverTime = timespecFromTimestamp (x ^. R.failoverTime)
  , failoverVersion = x ^. R.failoverVersion
  }

data DescribeNamespaceResponse = DescribeNamespaceResponse
  { namespaceInfo :: !NamespaceInfo
  , config :: !NamespaceConfig
  , replicationConfig :: !NamespaceReplicationConfig
  , failoverVersion :: !Int64
  , isGlobalNamespace :: !Bool
  , failoverHistory :: !(V.Vector FailoverStatus)
  } deriving stock (Show, Eq, Ord)

describeNamespaceResponseFromProto :: RR.DescribeNamespaceResponse -> DescribeNamespaceResponse
describeNamespaceResponseFromProto x = DescribeNamespaceResponse
  { namespaceInfo = namespaceInfoFromProto (x ^. RR.namespaceInfo)
  , config = namespaceConfigFromProto (x ^. RR.config)
  , replicationConfig = namespaceReplicationConfigFromProto (x ^. RR.replicationConfig)
  , failoverVersion = x ^. RR.failoverVersion
  , isGlobalNamespace = x ^. RR.isGlobalNamespace
  , failoverHistory = failoverStatusFromProto <$> (x ^. RR.vec'failoverHistory)
  }

data ListNamespacesRequest = ListNamespacesRequest
  { filter :: !(Maybe NamespaceFilter)
  , pageSize :: !Int32
  } deriving stock (Show, Eq, Ord)

listNamespacesRequestToProto :: ListNamespacesRequest -> RR.ListNamespacesRequest
listNamespacesRequestToProto ListNamespacesRequest{..} = defMessage
  & RR.maybe'namespaceFilter .~ (namespaceFilterToProto <$> filter)
  & RR.pageSize .~ pageSize

-- | Returns the information and configuration for all namespaces.
listNamespaces :: (MonadIO m, HasWorkflowClient m) => ListNamespacesRequest -> ConduitT () DescribeNamespaceResponse m ()
listNamespaces req = do
  client <- askWorkflowClient
  let go reqMsg = do
        res <- liftIO $ Temporal.Core.Client.WorkflowService.listNamespaces client.clientCore reqMsg
        case res of
          Left err -> throwIO $ Temporal.Exception.coreRpcErrorToRpcError err
          Right x -> do
            let namespaces = x ^. RR.vec'namespaces
            yieldMany $ describeNamespaceResponseFromProto <$> namespaces
            unless (BS.null (x ^. RR.nextPageToken) || V.null (x ^. RR.vec'namespaces)) do
              let reqMsg' = defMessage
                    & RR.nextPageToken .~ (x ^. RR.nextPageToken)
              go reqMsg'
  go $ listNamespacesRequestToProto req
