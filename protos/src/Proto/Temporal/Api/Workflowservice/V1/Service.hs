{- This file was auto-generated from temporal/api/workflowservice/v1/service.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Workflowservice.V1.Service (
        WorkflowService(..)
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes as Data.ProtoLens.Encoding.Bytes
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing as Data.ProtoLens.Encoding.Growing
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2 as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8 as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
import qualified Proto.Google.Api.Annotations
import qualified Proto.Nexusannotations.V1.Options
import qualified Proto.Temporal.Api.Protometa.V1.Annotations
import qualified Proto.Temporal.Api.Workflowservice.V1.RequestResponse
data WorkflowService = WorkflowService {}
instance Data.ProtoLens.Service.Types.Service WorkflowService where
  type ServiceName WorkflowService = "WorkflowService"
  type ServicePackage WorkflowService = "temporal.api.workflowservice.v1"
  type ServiceMethods WorkflowService = '["countActivityExecutions",
                                          "countNexusOperationExecutions",
                                          "countSchedules",
                                          "countWorkers",
                                          "countWorkflowExecutions",
                                          "createSchedule",
                                          "createWorkerDeployment",
                                          "createWorkerDeploymentVersion",
                                          "createWorkflowRule",
                                          "deleteActivityExecution",
                                          "deleteNexusOperationExecution",
                                          "deleteSchedule",
                                          "deleteWorkerDeployment",
                                          "deleteWorkerDeploymentVersion",
                                          "deleteWorkflowExecution",
                                          "deleteWorkflowRule",
                                          "deprecateNamespace",
                                          "describeActivityExecution",
                                          "describeBatchOperation",
                                          "describeDeployment",
                                          "describeNamespace",
                                          "describeNexusOperationExecution",
                                          "describeSchedule",
                                          "describeTaskQueue",
                                          "describeWorker",
                                          "describeWorkerDeployment",
                                          "describeWorkerDeploymentVersion",
                                          "describeWorkflowExecution",
                                          "describeWorkflowRule",
                                          "executeMultiOperation",
                                          "fetchWorkerConfig",
                                          "getClusterInfo",
                                          "getCurrentDeployment",
                                          "getDeploymentReachability",
                                          "getSearchAttributes",
                                          "getSystemInfo",
                                          "getWorkerBuildIdCompatibility",
                                          "getWorkerTaskReachability",
                                          "getWorkerVersioningRules",
                                          "getWorkflowExecutionHistory",
                                          "getWorkflowExecutionHistoryReverse",
                                          "listActivityExecutions",
                                          "listArchivedWorkflowExecutions",
                                          "listBatchOperations",
                                          "listClosedWorkflowExecutions",
                                          "listDeployments",
                                          "listNamespaces",
                                          "listNexusOperationExecutions",
                                          "listOpenWorkflowExecutions",
                                          "listScheduleMatchingTimes",
                                          "listSchedules",
                                          "listTaskQueuePartitions",
                                          "listWorkerDeployments",
                                          "listWorkers",
                                          "listWorkflowExecutions",
                                          "listWorkflowRules",
                                          "patchSchedule",
                                          "pauseActivity",
                                          "pauseActivityExecution",
                                          "pauseWorkflowExecution",
                                          "pollActivityExecution",
                                          "pollActivityTaskQueue",
                                          "pollNexusOperationExecution",
                                          "pollNexusTaskQueue",
                                          "pollWorkflowExecutionTimeSkipping",
                                          "pollWorkflowExecutionUpdate",
                                          "pollWorkflowTaskQueue",
                                          "queryWorkflow",
                                          "recordActivityTaskHeartbeat",
                                          "recordActivityTaskHeartbeatById",
                                          "recordWorkerHeartbeat",
                                          "registerNamespace",
                                          "requestCancelActivityExecution",
                                          "requestCancelNexusOperationExecution",
                                          "requestCancelWorkflowExecution",
                                          "resetActivity",
                                          "resetActivityExecution",
                                          "resetStickyTaskQueue",
                                          "resetWorkflowExecution",
                                          "respondActivityTaskCanceled",
                                          "respondActivityTaskCanceledById",
                                          "respondActivityTaskCompleted",
                                          "respondActivityTaskCompletedById",
                                          "respondActivityTaskFailed",
                                          "respondActivityTaskFailedById",
                                          "respondNexusTaskCompleted",
                                          "respondNexusTaskFailed",
                                          "respondQueryTaskCompleted",
                                          "respondWorkflowTaskCompleted",
                                          "respondWorkflowTaskFailed",
                                          "scanWorkflowExecutions",
                                          "setCurrentDeployment",
                                          "setWorkerDeploymentCurrentVersion",
                                          "setWorkerDeploymentManager",
                                          "setWorkerDeploymentRampingVersion",
                                          "shutdownWorker",
                                          "signalWithStartWorkflowExecution",
                                          "signalWorkflowExecution",
                                          "startActivityExecution",
                                          "startBatchOperation",
                                          "startNexusOperationExecution",
                                          "startWorkflowExecution",
                                          "stopBatchOperation",
                                          "terminateActivityExecution",
                                          "terminateNexusOperationExecution",
                                          "terminateWorkflowExecution",
                                          "triggerWorkflowRule",
                                          "unpauseActivity",
                                          "unpauseActivityExecution",
                                          "unpauseWorkflowExecution",
                                          "updateActivityExecutionOptions",
                                          "updateActivityOptions",
                                          "updateNamespace",
                                          "updateSchedule",
                                          "updateTaskQueueConfig",
                                          "updateWorkerBuildIdCompatibility",
                                          "updateWorkerConfig",
                                          "updateWorkerDeploymentVersionComputeConfig",
                                          "updateWorkerDeploymentVersionMetadata",
                                          "updateWorkerVersioningRules",
                                          "updateWorkflowExecution",
                                          "updateWorkflowExecutionOptions",
                                          "validateWorkerDeploymentVersionComputeConfig"]
  packedServiceDescriptor _
    = "\n\
      \\SIWorkflowService\DC2\195\SOH\n\
      \\DC1RegisterNamespace\DC29.temporal.api.workflowservice.v1.RegisterNamespaceRequest\SUB:.temporal.api.workflowservice.v1.RegisterNamespaceResponse\"7\130\211\228\147\STX1\"\DC3/cluster/namespaces:\SOH*Z\ETB\"\DC2/api/v1/namespaces:\SOH*\DC2\213\SOH\n\
      \\DC1DescribeNamespace\DC29.temporal.api.workflowservice.v1.DescribeNamespaceRequest\SUB:.temporal.api.workflowservice.v1.DescribeNamespaceResponse\"I\130\211\228\147\STXC\DC2\US/cluster/namespaces/{namespace}Z \DC2\RS/api/v1/namespaces/{namespace}\DC2\180\SOH\n\
      \\SOListNamespaces\DC26.temporal.api.workflowservice.v1.ListNamespacesRequest\SUB7.temporal.api.workflowservice.v1.ListNamespacesResponse\"1\130\211\228\147\STX+\DC2\DC3/cluster/namespacesZ\DC4\DC2\DC2/api/v1/namespaces\DC2\227\SOH\n\
      \\SIUpdateNamespace\DC27.temporal.api.workflowservice.v1.UpdateNamespaceRequest\SUB8.temporal.api.workflowservice.v1.UpdateNamespaceResponse\"]\130\211\228\147\STXW\"&/cluster/namespaces/{namespace}/update:\SOH*Z*\"%/api/v1/namespaces/{namespace}/update:\SOH*\DC2\143\SOH\n\
      \\DC2DeprecateNamespace\DC2:.temporal.api.workflowservice.v1.DeprecateNamespaceRequest\SUB;.temporal.api.workflowservice.v1.DeprecateNamespaceResponse\"\NUL\DC2\198\STX\n\
      \\SYNStartWorkflowExecution\DC2>.temporal.api.workflowservice.v1.StartWorkflowExecutionRequest\SUB?.temporal.api.workflowservice.v1.StartWorkflowExecutionResponse\"\170\SOH\138\157\204\ESC.\n\
      \\DC4temporal-resource-id\DC2\SYNworkflow:{workflow_id}\130\211\228\147\STXq\"//namespaces/{namespace}/workflows/{workflow_id}:\SOH*Z;\"6/api/v1/namespaces/{namespace}/workflows/{workflow_id}:\SOH*\DC2\194\SOH\n\
      \\NAKExecuteMultiOperation\DC2=.temporal.api.workflowservice.v1.ExecuteMultiOperationRequest\SUB>.temporal.api.workflowservice.v1.ExecuteMultiOperationResponse\"*\138\157\204\ESC%\n\
      \\DC4temporal-resource-id\DC2\r{resource_id}\DC2\254\STX\n\
      \\ESCGetWorkflowExecutionHistory\DC2C.temporal.api.workflowservice.v1.GetWorkflowExecutionHistoryRequest\SUBD.temporal.api.workflowservice.v1.GetWorkflowExecutionHistoryResponse\"\211\SOH\138\157\204\ESC8\n\
      \\DC4temporal-resource-id\DC2 workflow:{execution.workflow_id}\130\211\228\147\STX\143\SOH\DC2A/namespaces/{namespace}/workflows/{execution.workflow_id}/historyZJ\DC2H/api/v1/namespaces/{namespace}/workflows/{execution.workflow_id}/history\DC2\163\ETX\n\
      \\"GetWorkflowExecutionHistoryReverse\DC2J.temporal.api.workflowservice.v1.GetWorkflowExecutionHistoryReverseRequest\SUBK.temporal.api.workflowservice.v1.GetWorkflowExecutionHistoryReverseResponse\"\227\SOH\138\157\204\ESC8\n\
      \\DC4temporal-resource-id\DC2 workflow:{execution.workflow_id}\130\211\228\147\STX\159\SOH\DC2I/namespaces/{namespace}/workflows/{execution.workflow_id}/history-reverseZR\DC2P/api/v1/namespaces/{namespace}/workflows/{execution.workflow_id}/history-reverse\DC2\205\SOH\n\
      \\NAKPollWorkflowTaskQueue\DC2=.temporal.api.workflowservice.v1.PollWorkflowTaskQueueRequest\SUB>.temporal.api.workflowservice.v1.PollWorkflowTaskQueueResponse\"5\138\157\204\ESC0\n\
      \\DC4temporal-resource-id\DC2\CANpoller:{poller_group_id}\DC2\215\SOH\n\
      \\FSRespondWorkflowTaskCompleted\DC2D.temporal.api.workflowservice.v1.RespondWorkflowTaskCompletedRequest\SUBE.temporal.api.workflowservice.v1.RespondWorkflowTaskCompletedResponse\"*\138\157\204\ESC%\n\
      \\DC4temporal-resource-id\DC2\r{resource_id}\DC2\206\SOH\n\
      \\EMRespondWorkflowTaskFailed\DC2A.temporal.api.workflowservice.v1.RespondWorkflowTaskFailedRequest\SUBB.temporal.api.workflowservice.v1.RespondWorkflowTaskFailedResponse\"*\138\157\204\ESC%\n\
      \\DC4temporal-resource-id\DC2\r{resource_id}\DC2\205\SOH\n\
      \\NAKPollActivityTaskQueue\DC2=.temporal.api.workflowservice.v1.PollActivityTaskQueueRequest\SUB>.temporal.api.workflowservice.v1.PollActivityTaskQueueResponse\"5\138\157\204\ESC0\n\
      \\DC4temporal-resource-id\DC2\CANpoller:{poller_group_id}\DC2\194\STX\n\
      \\ESCRecordActivityTaskHeartbeat\DC2C.temporal.api.workflowservice.v1.RecordActivityTaskHeartbeatRequest\SUBD.temporal.api.workflowservice.v1.RecordActivityTaskHeartbeatResponse\"\151\SOH\138\157\204\ESC%\n\
      \\DC4temporal-resource-id\DC2\r{resource_id}\130\211\228\147\STXg\"*/namespaces/{namespace}/activity-heartbeat:\SOH*Z6\"1/api/v1/namespaces/{namespace}/activity-heartbeat:\SOH*\DC2\168\EOT\n\
      \\USRecordActivityTaskHeartbeatById\DC2G.temporal.api.workflowservice.v1.RecordActivityTaskHeartbeatByIdRequest\SUBH.temporal.api.workflowservice.v1.RecordActivityTaskHeartbeatByIdResponse\"\241\STX\138\157\204\ESC%\n\
      \\DC4temporal-resource-id\DC2\r{resource_id}\130\211\228\147\STX\192\STX\":/namespaces/{namespace}/activities/{activity_id}/heartbeat:\SOH*ZF\"A/api/v1/namespaces/{namespace}/activities/{activity_id}/heartbeat:\SOH*ZW\"R/namespaces/{namespace}/workflows/{workflow_id}/activities/{activity_id}/heartbeat:\SOH*Z^\"Y/api/v1/namespaces/{namespace}/workflows/{workflow_id}/activities/{activity_id}/heartbeat:\SOH*\DC2\195\STX\n\
      \\FSRespondActivityTaskCompleted\DC2D.temporal.api.workflowservice.v1.RespondActivityTaskCompletedRequest\SUBE.temporal.api.workflowservice.v1.RespondActivityTaskCompletedResponse\"\149\SOH\138\157\204\ESC%\n\
      \\DC4temporal-resource-id\DC2\r{resource_id}\130\211\228\147\STXe\")/namespaces/{namespace}/activity-complete:\SOH*Z5\"0/api/v1/namespaces/{namespace}/activity-complete:\SOH*\DC2\167\EOT\n\
      \ RespondActivityTaskCompletedById\DC2H.temporal.api.workflowservice.v1.RespondActivityTaskCompletedByIdRequest\SUBI.temporal.api.workflowservice.v1.RespondActivityTaskCompletedByIdResponse\"\237\STX\138\157\204\ESC%\n\
      \\DC4temporal-resource-id\DC2\r{resource_id}\130\211\228\147\STX\188\STX\"9/namespaces/{namespace}/activities/{activity_id}/complete:\SOH*ZE\"@/api/v1/namespaces/{namespace}/activities/{activity_id}/complete:\SOH*ZV\"Q/namespaces/{namespace}/workflows/{workflow_id}/activities/{activity_id}/complete:\SOH*Z]\"X/api/v1/namespaces/{namespace}/workflows/{workflow_id}/activities/{activity_id}/complete:\SOH*\DC2\178\STX\n\
      \\EMRespondActivityTaskFailed\DC2A.temporal.api.workflowservice.v1.RespondActivityTaskFailedRequest\SUBB.temporal.api.workflowservice.v1.RespondActivityTaskFailedResponse\"\141\SOH\138\157\204\ESC%\n\
      \\DC4temporal-resource-id\DC2\r{resource_id}\130\211\228\147\STX]\"%/namespaces/{namespace}/activity-fail:\SOH*Z1\",/api/v1/namespaces/{namespace}/activity-fail:\SOH*\DC2\142\EOT\n\
      \\GSRespondActivityTaskFailedById\DC2E.temporal.api.workflowservice.v1.RespondActivityTaskFailedByIdRequest\SUBF.temporal.api.workflowservice.v1.RespondActivityTaskFailedByIdResponse\"\221\STX\138\157\204\ESC%\n\
      \\DC4temporal-resource-id\DC2\r{resource_id}\130\211\228\147\STX\172\STX\"5/namespaces/{namespace}/activities/{activity_id}/fail:\SOH*ZA\"</api/v1/namespaces/{namespace}/activities/{activity_id}/fail:\SOH*ZR\"M/namespaces/{namespace}/workflows/{workflow_id}/activities/{activity_id}/fail:\SOH*ZY\"T/api/v1/namespaces/{namespace}/workflows/{workflow_id}/activities/{activity_id}/fail:\SOH*\DC2\214\STX\n\
      \\ESCRespondActivityTaskCanceled\DC2C.temporal.api.workflowservice.v1.RespondActivityTaskCanceledRequest\SUBD.temporal.api.workflowservice.v1.RespondActivityTaskCanceledResponse\"\171\SOH\138\157\204\ESC%\n\
      \\DC4temporal-resource-id\DC2\r{resource_id}\130\211\228\147\STX{\"4/namespaces/{namespace}/activity-resolve-as-canceled:\SOH*Z@\";/api/v1/namespaces/{namespace}/activity-resolve-as-canceled:\SOH*\DC2\208\EOT\n\
      \\USRespondActivityTaskCanceledById\DC2G.temporal.api.workflowservice.v1.RespondActivityTaskCanceledByIdRequest\SUBH.temporal.api.workflowservice.v1.RespondActivityTaskCanceledByIdResponse\"\153\ETX\138\157\204\ESC%\n\
      \\DC4temporal-resource-id\DC2\r{resource_id}\130\211\228\147\STX\232\STX\"D/namespaces/{namespace}/activities/{activity_id}/resolve-as-canceled:\SOH*ZP\"K/api/v1/namespaces/{namespace}/activities/{activity_id}/resolve-as-canceled:\SOH*Za\"\\/namespaces/{namespace}/workflows/{workflow_id}/activities/{activity_id}/resolve-as-canceled:\SOH*Zh\"c/api/v1/namespaces/{namespace}/workflows/{workflow_id}/activities/{activity_id}/resolve-as-canceled:\SOH*\DC2\166\ETX\n\
      \\RSRequestCancelWorkflowExecution\DC2F.temporal.api.workflowservice.v1.RequestCancelWorkflowExecutionRequest\SUBG.temporal.api.workflowservice.v1.RequestCancelWorkflowExecutionResponse\"\242\SOH\138\157\204\ESCA\n\
      \\DC4temporal-resource-id\DC2)workflow:{workflow_execution.workflow_id}\130\211\228\147\STX\165\SOH\"I/namespaces/{namespace}/workflows/{workflow_execution.workflow_id}/cancel:\SOH*ZU\"P/api/v1/namespaces/{namespace}/workflows/{workflow_execution.workflow_id}/cancel:\SOH*\DC2\173\ETX\n\
      \\ETBSignalWorkflowExecution\DC2?.temporal.api.workflowservice.v1.SignalWorkflowExecutionRequest\SUB@.temporal.api.workflowservice.v1.SignalWorkflowExecutionResponse\"\142\STX\138\157\204\ESCA\n\
      \\DC4temporal-resource-id\DC2)workflow:{workflow_execution.workflow_id}\130\211\228\147\STX\193\SOH\"W/namespaces/{namespace}/workflows/{workflow_execution.workflow_id}/signal/{signal_name}:\SOH*Zc\"^/api/v1/namespaces/{namespace}/workflows/{workflow_execution.workflow_id}/signal/{signal_name}:\SOH*\DC2\178\ETX\n\
      \ SignalWithStartWorkflowExecution\DC2H.temporal.api.workflowservice.v1.SignalWithStartWorkflowExecutionRequest\SUBI.temporal.api.workflowservice.v1.SignalWithStartWorkflowExecutionResponse\"\248\SOH\210\130\EOT\t\DC2\aexposed\138\157\204\ESC.\n\
      \\DC4temporal-resource-id\DC2\SYNworkflow:{workflow_id}\130\211\228\147\STX\177\SOH\"O/namespaces/{namespace}/workflows/{workflow_id}/signal-with-start/{signal_name}:\SOH*Z[\"V/api/v1/namespaces/{namespace}/workflows/{workflow_id}/signal-with-start/{signal_name}:\SOH*\DC2\140\ETX\n\
      \\SYNResetWorkflowExecution\DC2>.temporal.api.workflowservice.v1.ResetWorkflowExecutionRequest\SUB?.temporal.api.workflowservice.v1.ResetWorkflowExecutionResponse\"\240\SOH\138\157\204\ESCA\n\
      \\DC4temporal-resource-id\DC2)workflow:{workflow_execution.workflow_id}\130\211\228\147\STX\163\SOH\"H/namespaces/{namespace}/workflows/{workflow_execution.workflow_id}/reset:\SOH*ZT\"O/api/v1/namespaces/{namespace}/workflows/{workflow_execution.workflow_id}/reset:\SOH*\DC2\160\ETX\n\
      \\SUBTerminateWorkflowExecution\DC2B.temporal.api.workflowservice.v1.TerminateWorkflowExecutionRequest\SUBC.temporal.api.workflowservice.v1.TerminateWorkflowExecutionResponse\"\248\SOH\138\157\204\ESCA\n\
      \\DC4temporal-resource-id\DC2)workflow:{workflow_execution.workflow_id}\130\211\228\147\STX\171\SOH\"L/namespaces/{namespace}/workflows/{workflow_execution.workflow_id}/terminate:\SOH*ZX\"S/api/v1/namespaces/{namespace}/workflows/{workflow_execution.workflow_id}/terminate:\SOH*\DC2\228\SOH\n\
      \\ETBDeleteWorkflowExecution\DC2?.temporal.api.workflowservice.v1.DeleteWorkflowExecutionRequest\SUB@.temporal.api.workflowservice.v1.DeleteWorkflowExecutionResponse\"F\138\157\204\ESCA\n\
      \\DC4temporal-resource-id\DC2)workflow:{workflow_execution.workflow_id}\DC2\167\SOH\n\
      \\SUBListOpenWorkflowExecutions\DC2B.temporal.api.workflowservice.v1.ListOpenWorkflowExecutionsRequest\SUBC.temporal.api.workflowservice.v1.ListOpenWorkflowExecutionsResponse\"\NUL\DC2\173\SOH\n\
      \\FSListClosedWorkflowExecutions\DC2D.temporal.api.workflowservice.v1.ListClosedWorkflowExecutionsRequest\SUBE.temporal.api.workflowservice.v1.ListClosedWorkflowExecutionsResponse\"\NUL\DC2\240\SOH\n\
      \\SYNListWorkflowExecutions\DC2>.temporal.api.workflowservice.v1.ListWorkflowExecutionsRequest\SUB?.temporal.api.workflowservice.v1.ListWorkflowExecutionsResponse\"U\130\211\228\147\STXO\DC2!/namespaces/{namespace}/workflowsZ*\DC2(/api/v1/namespaces/{namespace}/workflows\DC2\154\STX\n\
      \\RSListArchivedWorkflowExecutions\DC2F.temporal.api.workflowservice.v1.ListArchivedWorkflowExecutionsRequest\SUBG.temporal.api.workflowservice.v1.ListArchivedWorkflowExecutionsResponse\"g\130\211\228\147\STXa\DC2*/namespaces/{namespace}/archived-workflowsZ3\DC21/api/v1/namespaces/{namespace}/archived-workflows\DC2\155\SOH\n\
      \\SYNScanWorkflowExecutions\DC2>.temporal.api.workflowservice.v1.ScanWorkflowExecutionsRequest\SUB?.temporal.api.workflowservice.v1.ScanWorkflowExecutionsResponse\"\NUL\DC2\253\SOH\n\
      \\ETBCountWorkflowExecutions\DC2?.temporal.api.workflowservice.v1.CountWorkflowExecutionsRequest\SUB@.temporal.api.workflowservice.v1.CountWorkflowExecutionsResponse\"_\130\211\228\147\STXY\DC2&/namespaces/{namespace}/workflow-countZ/\DC2-/api/v1/namespaces/{namespace}/workflow-count\DC2\146\SOH\n\
      \\DC3GetSearchAttributes\DC2;.temporal.api.workflowservice.v1.GetSearchAttributesRequest\SUB<.temporal.api.workflowservice.v1.GetSearchAttributesResponse\"\NUL\DC2\217\SOH\n\
      \\EMRespondQueryTaskCompleted\DC2A.temporal.api.workflowservice.v1.RespondQueryTaskCompletedRequest\SUBB.temporal.api.workflowservice.v1.RespondQueryTaskCompletedResponse\"5\138\157\204\ESC0\n\
      \\DC4temporal-resource-id\DC2\CANpoller:{poller_group_id}\DC2\210\SOH\n\
      \\DC4ResetStickyTaskQueue\DC2<.temporal.api.workflowservice.v1.ResetStickyTaskQueueRequest\SUB=.temporal.api.workflowservice.v1.ResetStickyTaskQueueResponse\"=\138\157\204\ESC8\n\
      \\DC4temporal-resource-id\DC2 workflow:{execution.workflow_id}\DC2\131\SOH\n\
      \\SOShutdownWorker\DC26.temporal.api.workflowservice.v1.ShutdownWorkerRequest\SUB7.temporal.api.workflowservice.v1.ShutdownWorkerResponse\"\NUL\DC2\252\STX\n\
      \\rQueryWorkflow\DC25.temporal.api.workflowservice.v1.QueryWorkflowRequest\SUB6.temporal.api.workflowservice.v1.QueryWorkflowResponse\"\251\SOH\138\157\204\ESC8\n\
      \\DC4temporal-resource-id\DC2 workflow:{execution.workflow_id}\130\211\228\147\STX\183\SOH\"R/namespaces/{namespace}/workflows/{execution.workflow_id}/query/{query.query_type}:\SOH*Z^\"Y/api/v1/namespaces/{namespace}/workflows/{execution.workflow_id}/query/{query.query_type}:\SOH*\DC2\231\STX\n\
      \\EMDescribeWorkflowExecution\DC2A.temporal.api.workflowservice.v1.DescribeWorkflowExecutionRequest\SUBB.temporal.api.workflowservice.v1.DescribeWorkflowExecutionResponse\"\194\SOH\138\157\204\ESC8\n\
      \\DC4temporal-resource-id\DC2 workflow:{execution.workflow_id}\130\211\228\147\STX\DEL\DC29/namespaces/{namespace}/workflows/{execution.workflow_id}ZB\DC2@/api/v1/namespaces/{namespace}/workflows/{execution.workflow_id}\DC2\194\STX\n\
      \\DC1DescribeTaskQueue\DC29.temporal.api.workflowservice.v1.DescribeTaskQueueRequest\SUB:.temporal.api.workflowservice.v1.DescribeTaskQueueResponse\"\181\SOH\138\157\204\ESC3\n\
      \\DC4temporal-resource-id\DC2\ESCtaskqueue:{task_queue.name}\130\211\228\147\STXw\DC25/namespaces/{namespace}/task-queues/{task_queue.name}Z>\DC2</api/v1/namespaces/{namespace}/task-queues/{task_queue.name}\DC2\171\SOH\n\
      \\SOGetClusterInfo\DC26.temporal.api.workflowservice.v1.GetClusterInfoRequest\SUB7.temporal.api.workflowservice.v1.GetClusterInfoResponse\"(\130\211\228\147\STX\"\DC2\b/clusterZ\SYN\DC2\DC4/api/v1/cluster-info\DC2\171\SOH\n\
      \\rGetSystemInfo\DC25.temporal.api.workflowservice.v1.GetSystemInfoRequest\SUB6.temporal.api.workflowservice.v1.GetSystemInfoResponse\"+\130\211\228\147\STX%\DC2\f/system-infoZ\NAK\DC2\DC3/api/v1/system-info\DC2\214\SOH\n\
      \\ETBListTaskQueuePartitions\DC2?.temporal.api.workflowservice.v1.ListTaskQueuePartitionsRequest\SUB@.temporal.api.workflowservice.v1.ListTaskQueuePartitionsResponse\"8\138\157\204\ESC3\n\
      \\DC4temporal-resource-id\DC2\ESCtaskqueue:{task_queue.name}\DC2\174\STX\n\
      \\SOCreateSchedule\DC26.temporal.api.workflowservice.v1.CreateScheduleRequest\SUB7.temporal.api.workflowservice.v1.CreateScheduleResponse\"\170\SOH\138\157\204\ESC.\n\
      \\DC4temporal-resource-id\DC2\SYNschedule:{schedule_id}\130\211\228\147\STXq\"//namespaces/{namespace}/schedules/{schedule_id}:\SOH*Z;\"6/api/v1/namespaces/{namespace}/schedules/{schedule_id}:\SOH*\DC2\174\STX\n\
      \\DLEDescribeSchedule\DC28.temporal.api.workflowservice.v1.DescribeScheduleRequest\SUB9.temporal.api.workflowservice.v1.DescribeScheduleResponse\"\164\SOH\138\157\204\ESC.\n\
      \\DC4temporal-resource-id\DC2\SYNschedule:{schedule_id}\130\211\228\147\STXk\DC2//namespaces/{namespace}/schedules/{schedule_id}Z8\DC26/api/v1/namespaces/{namespace}/schedules/{schedule_id}\DC2\188\STX\n\
      \\SOUpdateSchedule\DC26.temporal.api.workflowservice.v1.UpdateScheduleRequest\SUB7.temporal.api.workflowservice.v1.UpdateScheduleResponse\"\184\SOH\138\157\204\ESC.\n\
      \\DC4temporal-resource-id\DC2\SYNschedule:{schedule_id}\130\211\228\147\STX\DEL\"6/namespaces/{namespace}/schedules/{schedule_id}/update:\SOH*ZB\"=/api/v1/namespaces/{namespace}/schedules/{schedule_id}/update:\SOH*\DC2\183\STX\n\
      \\rPatchSchedule\DC25.temporal.api.workflowservice.v1.PatchScheduleRequest\SUB6.temporal.api.workflowservice.v1.PatchScheduleResponse\"\182\SOH\138\157\204\ESC.\n\
      \\DC4temporal-resource-id\DC2\SYNschedule:{schedule_id}\130\211\228\147\STX}\"5/namespaces/{namespace}/schedules/{schedule_id}/patch:\SOH*ZA\"</api/v1/namespaces/{namespace}/schedules/{schedule_id}/patch:\SOH*\DC2\232\STX\n\
      \\EMListScheduleMatchingTimes\DC2A.temporal.api.workflowservice.v1.ListScheduleMatchingTimesRequest\SUBB.temporal.api.workflowservice.v1.ListScheduleMatchingTimesResponse\"\195\SOH\138\157\204\ESC.\n\
      \\DC4temporal-resource-id\DC2\SYNschedule:{schedule_id}\130\211\228\147\STX\137\SOH\DC2>/namespaces/{namespace}/schedules/{schedule_id}/matching-timesZG\DC2E/api/v1/namespaces/{namespace}/schedules/{schedule_id}/matching-times\DC2\168\STX\n\
      \\SODeleteSchedule\DC26.temporal.api.workflowservice.v1.DeleteScheduleRequest\SUB7.temporal.api.workflowservice.v1.DeleteScheduleResponse\"\164\SOH\138\157\204\ESC.\n\
      \\DC4temporal-resource-id\DC2\SYNschedule:{schedule_id}\130\211\228\147\STXk*//namespaces/{namespace}/schedules/{schedule_id}Z8*6/api/v1/namespaces/{namespace}/schedules/{schedule_id}\DC2\213\SOH\n\
      \\rListSchedules\DC25.temporal.api.workflowservice.v1.ListSchedulesRequest\SUB6.temporal.api.workflowservice.v1.ListSchedulesResponse\"U\130\211\228\147\STXO\DC2!/namespaces/{namespace}/schedulesZ*\DC2(/api/v1/namespaces/{namespace}/schedules\DC2\226\SOH\n\
      \\SOCountSchedules\DC26.temporal.api.workflowservice.v1.CountSchedulesRequest\SUB7.temporal.api.workflowservice.v1.CountSchedulesResponse\"_\130\211\228\147\STXY\DC2&/namespaces/{namespace}/schedule-countZ/\DC2-/api/v1/namespaces/{namespace}/schedule-count\DC2\236\SOH\n\
      \ UpdateWorkerBuildIdCompatibility\DC2H.temporal.api.workflowservice.v1.UpdateWorkerBuildIdCompatibilityRequest\SUBI.temporal.api.workflowservice.v1.UpdateWorkerBuildIdCompatibilityResponse\"3\138\157\204\ESC.\n\
      \\DC4temporal-resource-id\DC2\SYNtaskqueue:{task_queue}\DC2\148\ETX\n\
      \\GSGetWorkerBuildIdCompatibility\DC2E.temporal.api.workflowservice.v1.GetWorkerBuildIdCompatibilityRequest\SUBF.temporal.api.workflowservice.v1.GetWorkerBuildIdCompatibilityResponse\"\227\SOH\138\157\204\ESC.\n\
      \\DC4temporal-resource-id\DC2\SYNtaskqueue:{task_queue}\130\211\228\147\STX\169\SOH\DC2N/namespaces/{namespace}/task-queues/{task_queue}/worker-build-id-compatibilityZW\DC2U/api/v1/namespaces/{namespace}/task-queues/{task_queue}/worker-build-id-compatibility\DC2\221\SOH\n\
      \\ESCUpdateWorkerVersioningRules\DC2C.temporal.api.workflowservice.v1.UpdateWorkerVersioningRulesRequest\SUBD.temporal.api.workflowservice.v1.UpdateWorkerVersioningRulesResponse\"3\138\157\204\ESC.\n\
      \\DC4temporal-resource-id\DC2\SYNtaskqueue:{task_queue}\DC2\249\STX\n\
      \\CANGetWorkerVersioningRules\DC2@.temporal.api.workflowservice.v1.GetWorkerVersioningRulesRequest\SUBA.temporal.api.workflowservice.v1.GetWorkerVersioningRulesResponse\"\215\SOH\138\157\204\ESC.\n\
      \\DC4temporal-resource-id\DC2\SYNtaskqueue:{task_queue}\130\211\228\147\STX\157\SOH\DC2H/namespaces/{namespace}/task-queues/{task_queue}/worker-versioning-rulesZQ\DC2O/api/v1/namespaces/{namespace}/task-queues/{task_queue}/worker-versioning-rules\DC2\151\STX\n\
      \\EMGetWorkerTaskReachability\DC2A.temporal.api.workflowservice.v1.GetWorkerTaskReachabilityRequest\SUBB.temporal.api.workflowservice.v1.GetWorkerTaskReachabilityResponse\"s\130\211\228\147\STXm\DC20/namespaces/{namespace}/worker-task-reachabilityZ9\DC27/api/v1/namespaces/{namespace}/worker-task-reachability\DC2\200\STX\n\
      \\DC2DescribeDeployment\DC2:.temporal.api.workflowservice.v1.DescribeDeploymentRequest\SUB;.temporal.api.workflowservice.v1.DescribeDeploymentResponse\"\184\SOH\130\211\228\147\STX\177\SOH\DC2R/namespaces/{namespace}/deployments/{deployment.series_name}/{deployment.build_id}Z[\DC2Y/api/v1/namespaces/{namespace}/deployments/{deployment.series_name}/{deployment.build_id}\DC2\129\EOT\n\
      \\USDescribeWorkerDeploymentVersion\DC2G.temporal.api.workflowservice.v1.DescribeWorkerDeploymentVersionRequest\SUBH.temporal.api.workflowservice.v1.DescribeWorkerDeploymentVersionResponse\"\202\STX\138\157\204\ESCG\n\
      \\DC4temporal-resource-id\DC2/deployment:{deployment_version.deployment_name}\130\211\228\147\STX\247\SOH\DC2u/namespaces/{namespace}/worker-deployment-versions/{deployment_version.deployment_name}/{deployment_version.build_id}Z~\DC2|/api/v1/namespaces/{namespace}/worker-deployment-versions/{deployment_version.deployment_name}/{deployment_version.build_id}\DC2\223\SOH\n\
      \\SIListDeployments\DC27.temporal.api.workflowservice.v1.ListDeploymentsRequest\SUB8.temporal.api.workflowservice.v1.ListDeploymentsResponse\"Y\130\211\228\147\STXS\DC2#/namespaces/{namespace}/deploymentsZ,\DC2*/api/v1/namespaces/{namespace}/deployments\DC2\247\STX\n\
      \\EMGetDeploymentReachability\DC2A.temporal.api.workflowservice.v1.GetDeploymentReachabilityRequest\SUBB.temporal.api.workflowservice.v1.GetDeploymentReachabilityResponse\"\210\SOH\130\211\228\147\STX\203\SOH\DC2_/namespaces/{namespace}/deployments/{deployment.series_name}/{deployment.build_id}/reachabilityZh\DC2f/api/v1/namespaces/{namespace}/deployments/{deployment.series_name}/{deployment.build_id}/reachability\DC2\153\STX\n\
      \\DC4GetCurrentDeployment\DC2<.temporal.api.workflowservice.v1.GetCurrentDeploymentRequest\SUB=.temporal.api.workflowservice.v1.GetCurrentDeploymentResponse\"\131\SOH\130\211\228\147\STX}\DC28/namespaces/{namespace}/current-deployment/{series_name}ZA\DC2?/api/v1/namespaces/{namespace}/current-deployment/{series_name}\DC2\182\STX\n\
      \\DC4SetCurrentDeployment\DC2<.temporal.api.workflowservice.v1.SetCurrentDeploymentRequest\SUB=.temporal.api.workflowservice.v1.SetCurrentDeploymentResponse\"\160\SOH\130\211\228\147\STX\153\SOH\"C/namespaces/{namespace}/current-deployment/{deployment.series_name}:\SOH*ZO\"J/api/v1/namespaces/{namespace}/current-deployment/{deployment.series_name}:\SOH*\DC2\176\ETX\n\
      \!SetWorkerDeploymentCurrentVersion\DC2I.temporal.api.workflowservice.v1.SetWorkerDeploymentCurrentVersionRequest\SUBJ.temporal.api.workflowservice.v1.SetWorkerDeploymentCurrentVersionResponse\"\243\SOH\138\157\204\ESC4\n\
      \\DC4temporal-resource-id\DC2\FSdeployment:{deployment_name}\130\211\228\147\STX\179\SOH\"P/namespaces/{namespace}/worker-deployments/{deployment_name}/set-current-version:\SOH*Z\\\"W/api/v1/namespaces/{namespace}/worker-deployments/{deployment_name}/set-current-version:\SOH*\DC2\231\STX\n\
      \\CANDescribeWorkerDeployment\DC2@.temporal.api.workflowservice.v1.DescribeWorkerDeploymentRequest\SUBA.temporal.api.workflowservice.v1.DescribeWorkerDeploymentResponse\"\197\SOH\138\157\204\ESC4\n\
      \\DC4temporal-resource-id\DC2\FSdeployment:{deployment_name}\130\211\228\147\STX\133\SOH\DC2</namespaces/{namespace}/worker-deployments/{deployment_name}ZE\DC2C/api/v1/namespaces/{namespace}/worker-deployments/{deployment_name}\DC2\225\STX\n\
      \\SYNDeleteWorkerDeployment\DC2>.temporal.api.workflowservice.v1.DeleteWorkerDeploymentRequest\SUB?.temporal.api.workflowservice.v1.DeleteWorkerDeploymentResponse\"\197\SOH\138\157\204\ESC4\n\
      \\DC4temporal-resource-id\DC2\FSdeployment:{deployment_name}\130\211\228\147\STX\133\SOH*</namespaces/{namespace}/worker-deployments/{deployment_name}ZE*C/api/v1/namespaces/{namespace}/worker-deployments/{deployment_name}\DC2\251\ETX\n\
      \\GSDeleteWorkerDeploymentVersion\DC2E.temporal.api.workflowservice.v1.DeleteWorkerDeploymentVersionRequest\SUBF.temporal.api.workflowservice.v1.DeleteWorkerDeploymentVersionResponse\"\202\STX\138\157\204\ESCG\n\
      \\DC4temporal-resource-id\DC2/deployment:{deployment_version.deployment_name}\130\211\228\147\STX\247\SOH*u/namespaces/{namespace}/worker-deployment-versions/{deployment_version.deployment_name}/{deployment_version.build_id}Z~*|/api/v1/namespaces/{namespace}/worker-deployment-versions/{deployment_version.deployment_name}/{deployment_version.build_id}\DC2\176\ETX\n\
      \!SetWorkerDeploymentRampingVersion\DC2I.temporal.api.workflowservice.v1.SetWorkerDeploymentRampingVersionRequest\SUBJ.temporal.api.workflowservice.v1.SetWorkerDeploymentRampingVersionResponse\"\243\SOH\138\157\204\ESC4\n\
      \\DC4temporal-resource-id\DC2\FSdeployment:{deployment_name}\130\211\228\147\STX\179\SOH\"P/namespaces/{namespace}/worker-deployments/{deployment_name}/set-ramping-version:\SOH*Z\\\"W/api/v1/namespaces/{namespace}/worker-deployments/{deployment_name}/set-ramping-version:\SOH*\DC2\255\SOH\n\
      \\NAKListWorkerDeployments\DC2=.temporal.api.workflowservice.v1.ListWorkerDeploymentsRequest\SUB>.temporal.api.workflowservice.v1.ListWorkerDeploymentsResponse\"g\130\211\228\147\STXa\DC2*/namespaces/{namespace}/worker-deploymentsZ3\DC21/api/v1/namespaces/{namespace}/worker-deployments\DC2\231\STX\n\
      \\SYNCreateWorkerDeployment\DC2>.temporal.api.workflowservice.v1.CreateWorkerDeploymentRequest\SUB?.temporal.api.workflowservice.v1.CreateWorkerDeploymentResponse\"\203\SOH\138\157\204\ESC4\n\
      \\DC4temporal-resource-id\DC2\FSdeployment:{deployment_name}\130\211\228\147\STX\139\SOH\"</namespaces/{namespace}/worker-deployments/{deployment_name}:\SOH*ZH\"C/api/v1/namespaces/{namespace}/worker-deployments/{deployment_name}:\SOH*\DC2\197\ETX\n\
      \\GSCreateWorkerDeploymentVersion\DC2E.temporal.api.workflowservice.v1.CreateWorkerDeploymentVersionRequest\SUBF.temporal.api.workflowservice.v1.CreateWorkerDeploymentVersionResponse\"\148\STX\138\157\204\ESCG\n\
      \\DC4temporal-resource-id\DC2/deployment:{deployment_version.deployment_name}\130\211\228\147\STX\193\SOH\"W/namespaces/{namespace}/worker-deployment-versions/{deployment_version.deployment_name}:\SOH*Zc\"^/api/v1/namespaces/{namespace}/worker-deployment-versions/{deployment_version.deployment_name}:\SOH*\DC2\215\EOT\n\
      \*UpdateWorkerDeploymentVersionComputeConfig\DC2R.temporal.api.workflowservice.v1.UpdateWorkerDeploymentVersionComputeConfigRequest\SUBS.temporal.api.workflowservice.v1.UpdateWorkerDeploymentVersionComputeConfigResponse\"\255\STX\138\157\204\ESCG\n\
      \\DC4temporal-resource-id\DC2/deployment:{deployment_version.deployment_name}\130\211\228\147\STX\172\STX\"\139\SOH/namespaces/{namespace}/worker-deployment-versions/{deployment_version.deployment_name}/{deployment_version.build_id}/update-compute-config:\SOH*Z\152\SOH\"\146\SOH/api/v1/namespaces/{namespace}/worker-deployment-versions/{deployment_version.deployment_name}/{deployment_version.build_id}/update-compute-config:\SOH*\DC2\225\EOT\n\
      \,ValidateWorkerDeploymentVersionComputeConfig\DC2T.temporal.api.workflowservice.v1.ValidateWorkerDeploymentVersionComputeConfigRequest\SUBU.temporal.api.workflowservice.v1.ValidateWorkerDeploymentVersionComputeConfigResponse\"\131\ETX\138\157\204\ESCG\n\
      \\DC4temporal-resource-id\DC2/deployment:{deployment_version.deployment_name}\130\211\228\147\STX\176\STX\"\141\SOH/namespaces/{namespace}/worker-deployment-versions/{deployment_version.deployment_name}/{deployment_version.build_id}/validate-compute-config:\SOH*Z\154\SOH\"\148\SOH/api/v1/namespaces/{namespace}/worker-deployment-versions/{deployment_version.deployment_name}/{deployment_version.build_id}/validate-compute-config:\SOH*\DC2\188\EOT\n\
      \%UpdateWorkerDeploymentVersionMetadata\DC2M.temporal.api.workflowservice.v1.UpdateWorkerDeploymentVersionMetadataRequest\SUBN.temporal.api.workflowservice.v1.UpdateWorkerDeploymentVersionMetadataResponse\"\243\STX\138\157\204\ESCG\n\
      \\DC4temporal-resource-id\DC2/deployment:{deployment_version.deployment_name}\130\211\228\147\STX\160\STX\"\133\SOH/namespaces/{namespace}/worker-deployment-versions/{deployment_version.deployment_name}/{deployment_version.build_id}/update-metadata:\SOH*Z\146\SOH\"\140\SOH/api/v1/namespaces/{namespace}/worker-deployment-versions/{deployment_version.deployment_name}/{deployment_version.build_id}/update-metadata:\SOH*\DC2\139\ETX\n\
      \\SUBSetWorkerDeploymentManager\DC2B.temporal.api.workflowservice.v1.SetWorkerDeploymentManagerRequest\SUBC.temporal.api.workflowservice.v1.SetWorkerDeploymentManagerResponse\"\227\SOH\138\157\204\ESC4\n\
      \\DC4temporal-resource-id\DC2\FSdeployment:{deployment_name}\130\211\228\147\STX\163\SOH\"H/namespaces/{namespace}/worker-deployments/{deployment_name}/set-manager:\SOH*ZT\"O/api/v1/namespaces/{namespace}/worker-deployments/{deployment_name}/set-manager:\SOH*\DC2\187\ETX\n\
      \\ETBUpdateWorkflowExecution\DC2?.temporal.api.workflowservice.v1.UpdateWorkflowExecutionRequest\SUB@.temporal.api.workflowservice.v1.UpdateWorkflowExecutionResponse\"\156\STX\138\157\204\ESCA\n\
      \\DC4temporal-resource-id\DC2)workflow:{workflow_execution.workflow_id}\130\211\228\147\STX\207\SOH\"^/namespaces/{namespace}/workflows/{workflow_execution.workflow_id}/update/{request.input.name}:\SOH*Zj\"e/api/v1/namespaces/{namespace}/workflows/{workflow_execution.workflow_id}/update/{request.input.name}:\SOH*\DC2\251\SOH\n\
      \\ESCPollWorkflowExecutionUpdate\DC2C.temporal.api.workflowservice.v1.PollWorkflowExecutionUpdateRequest\SUBD.temporal.api.workflowservice.v1.PollWorkflowExecutionUpdateResponse\"Q\138\157\204\ESCL\n\
      \\DC4temporal-resource-id\DC24workflow:{update_ref.workflow_execution.workflow_id}\DC2\185\STX\n\
      \\DC3StartBatchOperation\DC2;.temporal.api.workflowservice.v1.StartBatchOperationRequest\SUB<.temporal.api.workflowservice.v1.StartBatchOperationResponse\"\166\SOH\138\157\204\ESC&\n\
      \\DC4temporal-resource-id\DC2\SObatch:{job_id}\130\211\228\147\STXu\"1/namespaces/{namespace}/batch-operations/{job_id}:\SOH*Z=\"8/api/v1/namespaces/{namespace}/batch-operations/{job_id}:\SOH*\DC2\192\STX\n\
      \\DC2StopBatchOperation\DC2:.temporal.api.workflowservice.v1.StopBatchOperationRequest\SUB;.temporal.api.workflowservice.v1.StopBatchOperationResponse\"\176\SOH\138\157\204\ESC&\n\
      \\DC4temporal-resource-id\DC2\SObatch:{job_id}\130\211\228\147\STX\DEL\"6/namespaces/{namespace}/batch-operations/{job_id}/stop:\SOH*ZB\"=/api/v1/namespaces/{namespace}/batch-operations/{job_id}/stop:\SOH*\DC2\188\STX\n\
      \\SYNDescribeBatchOperation\DC2>.temporal.api.workflowservice.v1.DescribeBatchOperationRequest\SUB?.temporal.api.workflowservice.v1.DescribeBatchOperationResponse\"\160\SOH\138\157\204\ESC&\n\
      \\DC4temporal-resource-id\DC2\SObatch:{job_id}\130\211\228\147\STXo\DC21/namespaces/{namespace}/batch-operations/{job_id}Z:\DC28/api/v1/namespaces/{namespace}/batch-operations/{job_id}\DC2\245\SOH\n\
      \\DC3ListBatchOperations\DC2;.temporal.api.workflowservice.v1.ListBatchOperationsRequest\SUB<.temporal.api.workflowservice.v1.ListBatchOperationsResponse\"c\130\211\228\147\STX]\DC2(/namespaces/{namespace}/batch-operationsZ1\DC2//api/v1/namespaces/{namespace}/batch-operations\DC2\196\SOH\n\
      \\DC2PollNexusTaskQueue\DC2:.temporal.api.workflowservice.v1.PollNexusTaskQueueRequest\SUB;.temporal.api.workflowservice.v1.PollNexusTaskQueueResponse\"5\138\157\204\ESC0\n\
      \\DC4temporal-resource-id\DC2\CANpoller:{poller_group_id}\DC2\217\SOH\n\
      \\EMRespondNexusTaskCompleted\DC2A.temporal.api.workflowservice.v1.RespondNexusTaskCompletedRequest\SUBB.temporal.api.workflowservice.v1.RespondNexusTaskCompletedResponse\"5\138\157\204\ESC0\n\
      \\DC4temporal-resource-id\DC2\CANpoller:{poller_group_id}\DC2\208\SOH\n\
      \\SYNRespondNexusTaskFailed\DC2>.temporal.api.workflowservice.v1.RespondNexusTaskFailedRequest\SUB?.temporal.api.workflowservice.v1.RespondNexusTaskFailedResponse\"5\138\157\204\ESC0\n\
      \\DC4temporal-resource-id\DC2\CANpoller:{poller_group_id}\DC2\232\STX\n\
      \\NAKUpdateActivityOptions\DC2=.temporal.api.workflowservice.v1.UpdateActivityOptionsRequest\SUB>.temporal.api.workflowservice.v1.UpdateActivityOptionsResponse\"\207\SOH\138\157\204\ESC8\n\
      \\DC4temporal-resource-id\DC2 workflow:{execution.workflow_id}\130\211\228\147\STX\139\SOH\"</namespaces/{namespace}/activities-deprecated/update-options:\SOH*ZH\"C/api/v1/namespaces/{namespace}/activities-deprecated/update-options:\SOH*\DC2\182\ETX\n\
      \\RSUpdateWorkflowExecutionOptions\DC2F.temporal.api.workflowservice.v1.UpdateWorkflowExecutionOptionsRequest\SUBG.temporal.api.workflowservice.v1.UpdateWorkflowExecutionOptionsResponse\"\130\STX\138\157\204\ESCA\n\
      \\DC4temporal-resource-id\DC2)workflow:{workflow_execution.workflow_id}\130\211\228\147\STX\181\SOH\"Q/namespaces/{namespace}/workflows/{workflow_execution.workflow_id}/update-options:\SOH*Z]\"X/api/v1/namespaces/{namespace}/workflows/{workflow_execution.workflow_id}/update-options:\SOH*\DC2\189\STX\n\
      \\rPauseActivity\DC25.temporal.api.workflowservice.v1.PauseActivityRequest\SUB6.temporal.api.workflowservice.v1.PauseActivityResponse\"\188\SOH\138\157\204\ESC8\n\
      \\DC4temporal-resource-id\DC2 workflow:{execution.workflow_id}\130\211\228\147\STXy\"3/namespaces/{namespace}/activities-deprecated/pause:\SOH*Z?\":/api/v1/namespaces/{namespace}/activities-deprecated/pause:\SOH*\DC2\199\STX\n\
      \\SIUnpauseActivity\DC27.temporal.api.workflowservice.v1.UnpauseActivityRequest\SUB8.temporal.api.workflowservice.v1.UnpauseActivityResponse\"\192\SOH\138\157\204\ESC8\n\
      \\DC4temporal-resource-id\DC2 workflow:{execution.workflow_id}\130\211\228\147\STX}\"5/namespaces/{namespace}/activities-deprecated/unpause:\SOH*ZA\"</api/v1/namespaces/{namespace}/activities-deprecated/unpause:\SOH*\DC2\189\STX\n\
      \\rResetActivity\DC25.temporal.api.workflowservice.v1.ResetActivityRequest\SUB6.temporal.api.workflowservice.v1.ResetActivityResponse\"\188\SOH\138\157\204\ESC8\n\
      \\DC4temporal-resource-id\DC2 workflow:{execution.workflow_id}\130\211\228\147\STXy\"3/namespaces/{namespace}/activities-deprecated/reset:\SOH*Z?\":/api/v1/namespaces/{namespace}/activities-deprecated/reset:\SOH*\DC2\244\SOH\n\
      \\DC2CreateWorkflowRule\DC2:.temporal.api.workflowservice.v1.CreateWorkflowRuleRequest\SUB;.temporal.api.workflowservice.v1.CreateWorkflowRuleResponse\"e\130\211\228\147\STX_\"&/namespaces/{namespace}/workflow-rules:\SOH*Z2\"-/api/v1/namespaces/{namespace}/workflow-rules:\SOH*\DC2\136\STX\n\
      \\DC4DescribeWorkflowRule\DC2<.temporal.api.workflowservice.v1.DescribeWorkflowRuleRequest\SUB=.temporal.api.workflowservice.v1.DescribeWorkflowRuleResponse\"s\130\211\228\147\STXm\DC20/namespaces/{namespace}/workflow-rules/{rule_id}Z9\DC27/api/v1/namespaces/{namespace}/workflow-rules/{rule_id}\DC2\130\STX\n\
      \\DC2DeleteWorkflowRule\DC2:.temporal.api.workflowservice.v1.DeleteWorkflowRuleRequest\SUB;.temporal.api.workflowservice.v1.DeleteWorkflowRuleResponse\"s\130\211\228\147\STXm*0/namespaces/{namespace}/workflow-rules/{rule_id}Z9*7/api/v1/namespaces/{namespace}/workflow-rules/{rule_id}\DC2\235\SOH\n\
      \\DC1ListWorkflowRules\DC29.temporal.api.workflowservice.v1.ListWorkflowRulesRequest\SUB:.temporal.api.workflowservice.v1.ListWorkflowRulesResponse\"_\130\211\228\147\STXY\DC2&/namespaces/{namespace}/workflow-rulesZ/\DC2-/api/v1/namespaces/{namespace}/workflow-rules\DC2\246\STX\n\
      \\DC3TriggerWorkflowRule\DC2;.temporal.api.workflowservice.v1.TriggerWorkflowRuleRequest\SUB<.temporal.api.workflowservice.v1.TriggerWorkflowRuleResponse\"\227\SOH\138\157\204\ESC8\n\
      \\DC4temporal-resource-id\DC2 workflow:{execution.workflow_id}\130\211\228\147\STX\159\SOH\"F/namespaces/{namespace}/workflows/{execution.workflow_id}/trigger-rule:\SOH*ZR\"M/api/v1/namespaces/{namespace}/workflows/{execution.workflow_id}/trigger-rule:\SOH*\DC2\174\STX\n\
      \\NAKRecordWorkerHeartbeat\DC2=.temporal.api.workflowservice.v1.RecordWorkerHeartbeatRequest\SUB>.temporal.api.workflowservice.v1.RecordWorkerHeartbeatResponse\"\149\SOH\138\157\204\ESC%\n\
      \\DC4temporal-resource-id\DC2\r{resource_id}\130\211\228\147\STXe\")/namespaces/{namespace}/workers/heartbeat:\SOH*Z5\"0/api/v1/namespaces/{namespace}/workers/heartbeat:\SOH*\DC2\203\SOH\n\
      \\vListWorkers\DC23.temporal.api.workflowservice.v1.ListWorkersRequest\SUB4.temporal.api.workflowservice.v1.ListWorkersResponse\"Q\130\211\228\147\STXK\DC2\US/namespaces/{namespace}/workersZ(\DC2&/api/v1/namespaces/{namespace}/workers\DC2\216\SOH\n\
      \\fCountWorkers\DC24.temporal.api.workflowservice.v1.CountWorkersRequest\SUB5.temporal.api.workflowservice.v1.CountWorkersResponse\"[\130\211\228\147\STXU\DC2$/namespaces/{namespace}/worker-countZ-\DC2+/api/v1/namespaces/{namespace}/worker-count\DC2\226\STX\n\
      \\NAKUpdateTaskQueueConfig\DC2=.temporal.api.workflowservice.v1.UpdateTaskQueueConfigRequest\SUB>.temporal.api.workflowservice.v1.UpdateTaskQueueConfigResponse\"\201\SOH\138\157\204\ESC.\n\
      \\DC4temporal-resource-id\DC2\SYNtaskqueue:{task_queue}\130\211\228\147\STX\143\SOH\">/namespaces/{namespace}/task-queues/{task_queue}/update-config:\SOH*ZJ\"E/api/v1/namespaces/{namespace}/task-queues/{task_queue}/update-config:\SOH*\DC2\168\STX\n\
      \\DC1FetchWorkerConfig\DC29.temporal.api.workflowservice.v1.FetchWorkerConfigRequest\SUB:.temporal.api.workflowservice.v1.FetchWorkerConfigResponse\"\155\SOH\138\157\204\ESC%\n\
      \\DC4temporal-resource-id\DC2\r{resource_id}\130\211\228\147\STXk\",/namespaces/{namespace}/workers/fetch-config:\SOH*Z8\"3/api/v1/namespaces/{namespace}/workers/fetch-config:\SOH*\DC2\173\STX\n\
      \\DC2UpdateWorkerConfig\DC2:.temporal.api.workflowservice.v1.UpdateWorkerConfigRequest\SUB;.temporal.api.workflowservice.v1.UpdateWorkerConfigResponse\"\157\SOH\138\157\204\ESC%\n\
      \\DC4temporal-resource-id\DC2\r{resource_id}\130\211\228\147\STXm\"-/namespaces/{namespace}/workers/update-config:\SOH*Z9\"4/api/v1/namespaces/{namespace}/workers/update-config:\SOH*\DC2\205\STX\n\
      \\SODescribeWorker\DC26.temporal.api.workflowservice.v1.DescribeWorkerRequest\SUB7.temporal.api.workflowservice.v1.DescribeWorkerResponse\"\201\SOH\138\157\204\ESC4\n\
      \\DC4temporal-resource-id\DC2\FSworker:{worker_instance_key}\130\211\228\147\STX\137\SOH\DC2>/namespaces/{namespace}/workers/describe/{worker_instance_key}ZG\DC2E/api/v1/namespaces/{namespace}/workers/describe/{worker_instance_key}\DC2\210\STX\n\
      \\SYNPauseWorkflowExecution\DC2>.temporal.api.workflowservice.v1.PauseWorkflowExecutionRequest\SUB?.temporal.api.workflowservice.v1.PauseWorkflowExecutionResponse\"\182\SOH\138\157\204\ESC.\n\
      \\DC4temporal-resource-id\DC2\SYNworkflow:{workflow_id}\130\211\228\147\STX}\"5/namespaces/{namespace}/workflows/{workflow_id}/pause:\SOH*ZA\"</api/v1/namespaces/{namespace}/workflows/{workflow_id}/pause:\SOH*\DC2\221\STX\n\
      \\CANUnpauseWorkflowExecution\DC2@.temporal.api.workflowservice.v1.UnpauseWorkflowExecutionRequest\SUBA.temporal.api.workflowservice.v1.UnpauseWorkflowExecutionResponse\"\187\SOH\138\157\204\ESC.\n\
      \\DC4temporal-resource-id\DC2\SYNworkflow:{workflow_id}\130\211\228\147\STX\129\SOH\"7/namespaces/{namespace}/workflows/{workflow_id}/unpause:\SOH*ZC\">/api/v1/namespaces/{namespace}/workflows/{workflow_id}/unpause:\SOH*\DC2\200\STX\n\
      \\SYNStartActivityExecution\DC2>.temporal.api.workflowservice.v1.StartActivityExecutionRequest\SUB?.temporal.api.workflowservice.v1.StartActivityExecutionResponse\"\172\SOH\138\157\204\ESC.\n\
      \\DC4temporal-resource-id\DC2\SYNactivity:{activity_id}\130\211\228\147\STXs\"0/namespaces/{namespace}/activities/{activity_id}:\SOH*Z<\"7/api/v1/namespaces/{namespace}/activities/{activity_id}:\SOH*\DC2\241\STX\n\
      \\FSStartNexusOperationExecution\DC2D.temporal.api.workflowservice.v1.StartNexusOperationExecutionRequest\SUBE.temporal.api.workflowservice.v1.StartNexusOperationExecutionResponse\"\195\SOH\138\157\204\ESC6\n\
      \\DC4temporal-resource-id\DC2\RSnexus-operation:{operation_id}\130\211\228\147\STX\129\SOH\"7/namespaces/{namespace}/nexus-operations/{operation_id}:\SOH*ZC\">/api/v1/namespaces/{namespace}/nexus-operations/{operation_id}:\SOH*\DC2\203\STX\n\
      \\EMDescribeActivityExecution\DC2A.temporal.api.workflowservice.v1.DescribeActivityExecutionRequest\SUBB.temporal.api.workflowservice.v1.DescribeActivityExecutionResponse\"\166\SOH\138\157\204\ESC.\n\
      \\DC4temporal-resource-id\DC2\SYNactivity:{activity_id}\130\211\228\147\STXm\DC20/namespaces/{namespace}/activities/{activity_id}Z9\DC27/api/v1/namespaces/{namespace}/activities/{activity_id}\DC2\243\STX\n\
      \\USDescribeNexusOperationExecution\DC2G.temporal.api.workflowservice.v1.DescribeNexusOperationExecutionRequest\SUBH.temporal.api.workflowservice.v1.DescribeNexusOperationExecutionResponse\"\188\SOH\138\157\204\ESC6\n\
      \\DC4temporal-resource-id\DC2\RSnexus-operation:{operation_id}\130\211\228\147\STX{\DC27/namespaces/{namespace}/nexus-operations/{operation_id}Z@\DC2>/api/v1/namespaces/{namespace}/nexus-operations/{operation_id}\DC2\207\STX\n\
      \\NAKPollActivityExecution\DC2=.temporal.api.workflowservice.v1.PollActivityExecutionRequest\SUB>.temporal.api.workflowservice.v1.PollActivityExecutionResponse\"\182\SOH\138\157\204\ESC.\n\
      \\DC4temporal-resource-id\DC2\SYNactivity:{activity_id}\130\211\228\147\STX}\DC28/namespaces/{namespace}/activities/{activity_id}/outcomeZA\DC2?/api/v1/namespaces/{namespace}/activities/{activity_id}/outcome\DC2\242\STX\n\
      \\ESCPollNexusOperationExecution\DC2C.temporal.api.workflowservice.v1.PollNexusOperationExecutionRequest\SUBD.temporal.api.workflowservice.v1.PollNexusOperationExecutionResponse\"\199\SOH\138\157\204\ESC6\n\
      \\DC4temporal-resource-id\DC2\RSnexus-operation:{operation_id}\130\211\228\147\STX\133\SOH\DC2</namespaces/{namespace}/nexus-operations/{operation_id}/pollZE\DC2C/api/v1/namespaces/{namespace}/nexus-operations/{operation_id}/poll\DC2\242\SOH\n\
      \\SYNListActivityExecutions\DC2>.temporal.api.workflowservice.v1.ListActivityExecutionsRequest\SUB?.temporal.api.workflowservice.v1.ListActivityExecutionsResponse\"W\130\211\228\147\STXQ\DC2\"/namespaces/{namespace}/activitiesZ+\DC2)/api/v1/namespaces/{namespace}/activities\DC2\144\STX\n\
      \\FSListNexusOperationExecutions\DC2D.temporal.api.workflowservice.v1.ListNexusOperationExecutionsRequest\SUBE.temporal.api.workflowservice.v1.ListNexusOperationExecutionsResponse\"c\130\211\228\147\STX]\DC2(/namespaces/{namespace}/nexus-operationsZ1\DC2//api/v1/namespaces/{namespace}/nexus-operations\DC2\253\SOH\n\
      \\ETBCountActivityExecutions\DC2?.temporal.api.workflowservice.v1.CountActivityExecutionsRequest\SUB@.temporal.api.workflowservice.v1.CountActivityExecutionsResponse\"_\130\211\228\147\STXY\DC2&/namespaces/{namespace}/activity-countZ/\DC2-/api/v1/namespaces/{namespace}/activity-count\DC2\157\STX\n\
      \\GSCountNexusOperationExecutions\DC2E.temporal.api.workflowservice.v1.CountNexusOperationExecutionsRequest\SUBF.temporal.api.workflowservice.v1.CountNexusOperationExecutionsResponse\"m\130\211\228\147\STXg\DC2-/namespaces/{namespace}/nexus-operation-countZ6\DC24/api/v1/namespaces/{namespace}/nexus-operation-count\DC2\239\STX\n\
      \\RSRequestCancelActivityExecution\DC2F.temporal.api.workflowservice.v1.RequestCancelActivityExecutionRequest\SUBG.temporal.api.workflowservice.v1.RequestCancelActivityExecutionResponse\"\187\SOH\138\157\204\ESC.\n\
      \\DC4temporal-resource-id\DC2\SYNactivity:{activity_id}\130\211\228\147\STX\129\SOH\"7/namespaces/{namespace}/activities/{activity_id}/cancel:\SOH*ZC\">/api/v1/namespaces/{namespace}/activities/{activity_id}/cancel:\SOH*\DC2\151\ETX\n\
      \$RequestCancelNexusOperationExecution\DC2L.temporal.api.workflowservice.v1.RequestCancelNexusOperationExecutionRequest\SUBM.temporal.api.workflowservice.v1.RequestCancelNexusOperationExecutionResponse\"\209\SOH\138\157\204\ESC6\n\
      \\DC4temporal-resource-id\DC2\RSnexus-operation:{operation_id}\130\211\228\147\STX\143\SOH\">/namespaces/{namespace}/nexus-operations/{operation_id}/cancel:\SOH*ZJ\"E/api/v1/namespaces/{namespace}/nexus-operations/{operation_id}/cancel:\SOH*\DC2\233\STX\n\
      \\SUBTerminateActivityExecution\DC2B.temporal.api.workflowservice.v1.TerminateActivityExecutionRequest\SUBC.temporal.api.workflowservice.v1.TerminateActivityExecutionResponse\"\193\SOH\138\157\204\ESC.\n\
      \\DC4temporal-resource-id\DC2\SYNactivity:{activity_id}\130\211\228\147\STX\135\SOH\":/namespaces/{namespace}/activities/{activity_id}/terminate:\SOH*ZF\"A/api/v1/namespaces/{namespace}/activities/{activity_id}/terminate:\SOH*\DC2\209\SOH\n\
      \\ETBDeleteActivityExecution\DC2?.temporal.api.workflowservice.v1.DeleteActivityExecutionRequest\SUB@.temporal.api.workflowservice.v1.DeleteActivityExecutionResponse\"3\138\157\204\ESC.\n\
      \\DC4temporal-resource-id\DC2\SYNactivity:{activity_id}\DC2\253\ETX\n\
      \\SYNPauseActivityExecution\DC2>.temporal.api.workflowservice.v1.PauseActivityExecutionRequest\SUB?.temporal.api.workflowservice.v1.PauseActivityExecutionResponse\"\225\STX\138\157\204\ESC%\n\
      \\DC4temporal-resource-id\DC2\r{resource_id}\130\211\228\147\STX\176\STX\"6/namespaces/{namespace}/activities/{activity_id}/pause:\SOH*ZB\"=/api/v1/namespaces/{namespace}/activities/{activity_id}/pause:\SOH*ZS\"N/namespaces/{namespace}/workflows/{workflow_id}/activities/{activity_id}/pause:\SOH*ZZ\"U/api/v1/namespaces/{namespace}/workflows/{workflow_id}/activities/{activity_id}/pause:\SOH*\DC2\253\ETX\n\
      \\SYNResetActivityExecution\DC2>.temporal.api.workflowservice.v1.ResetActivityExecutionRequest\SUB?.temporal.api.workflowservice.v1.ResetActivityExecutionResponse\"\225\STX\138\157\204\ESC%\n\
      \\DC4temporal-resource-id\DC2\r{resource_id}\130\211\228\147\STX\176\STX\"6/namespaces/{namespace}/activities/{activity_id}/reset:\SOH*ZB\"=/api/v1/namespaces/{namespace}/activities/{activity_id}/reset:\SOH*ZS\"N/namespaces/{namespace}/workflows/{workflow_id}/activities/{activity_id}/reset:\SOH*ZZ\"U/api/v1/namespaces/{namespace}/workflows/{workflow_id}/activities/{activity_id}/reset:\SOH*\DC2\139\EOT\n\
      \\CANUnpauseActivityExecution\DC2@.temporal.api.workflowservice.v1.UnpauseActivityExecutionRequest\SUBA.temporal.api.workflowservice.v1.UnpauseActivityExecutionResponse\"\233\STX\138\157\204\ESC%\n\
      \\DC4temporal-resource-id\DC2\r{resource_id}\130\211\228\147\STX\184\STX\"8/namespaces/{namespace}/activities/{activity_id}/unpause:\SOH*ZD\"?/api/v1/namespaces/{namespace}/activities/{activity_id}/unpause:\SOH*ZU\"P/namespaces/{namespace}/workflows/{workflow_id}/activities/{activity_id}/unpause:\SOH*Z\\\"W/api/v1/namespaces/{namespace}/workflows/{workflow_id}/activities/{activity_id}/unpause:\SOH*\DC2\185\EOT\n\
      \\RSUpdateActivityExecutionOptions\DC2F.temporal.api.workflowservice.v1.UpdateActivityExecutionOptionsRequest\SUBG.temporal.api.workflowservice.v1.UpdateActivityExecutionOptionsResponse\"\133\ETX\138\157\204\ESC%\n\
      \\DC4temporal-resource-id\DC2\r{resource_id}\130\211\228\147\STX\212\STX\"?/namespaces/{namespace}/activities/{activity_id}/update-options:\SOH*ZK\"F/api/v1/namespaces/{namespace}/activities/{activity_id}/update-options:\SOH*Z\\\"W/namespaces/{namespace}/workflows/{workflow_id}/activities/{activity_id}/update-options:\SOH*Zc\"^/api/v1/namespaces/{namespace}/workflows/{workflow_id}/activities/{activity_id}/update-options:\SOH*\DC2\145\ETX\n\
      \ TerminateNexusOperationExecution\DC2H.temporal.api.workflowservice.v1.TerminateNexusOperationExecutionRequest\SUBI.temporal.api.workflowservice.v1.TerminateNexusOperationExecutionResponse\"\215\SOH\138\157\204\ESC6\n\
      \\DC4temporal-resource-id\DC2\RSnexus-operation:{operation_id}\130\211\228\147\STX\149\SOH\"A/namespaces/{namespace}/nexus-operations/{operation_id}/terminate:\SOH*ZM\"H/api/v1/namespaces/{namespace}/nexus-operations/{operation_id}/terminate:\SOH*\DC2\235\SOH\n\
      \\GSDeleteNexusOperationExecution\DC2E.temporal.api.workflowservice.v1.DeleteNexusOperationExecutionRequest\SUBF.temporal.api.workflowservice.v1.DeleteNexusOperationExecutionResponse\";\138\157\204\ESC6\n\
      \\DC4temporal-resource-id\DC2\RSnexus-operation:{operation_id}\DC2\193\ETX\n\
      \!PollWorkflowExecutionTimeSkipping\DC2I.temporal.api.workflowservice.v1.PollWorkflowExecutionTimeSkippingRequest\SUBJ.temporal.api.workflowservice.v1.PollWorkflowExecutionTimeSkippingResponse\"\132\STX\138\157\204\ESCA\n\
      \\DC4temporal-resource-id\DC2)workflow:{workflow_execution.workflow_id}\130\211\228\147\STX\183\SOH\DC2U/namespaces/{namespace}/workflows/{workflow_execution.workflow_id}/time-skipping/pollZ^\DC2\\/api/v1/namespaces/{namespace}/workflows/{workflow_execution.workflow_id}/time-skipping/poll"
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "registerNamespace" where
  type MethodName WorkflowService "registerNamespace" = "RegisterNamespace"
  type MethodInput WorkflowService "registerNamespace" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RegisterNamespaceRequest
  type MethodOutput WorkflowService "registerNamespace" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RegisterNamespaceResponse
  type MethodStreamingType WorkflowService "registerNamespace" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "describeNamespace" where
  type MethodName WorkflowService "describeNamespace" = "DescribeNamespace"
  type MethodInput WorkflowService "describeNamespace" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeNamespaceRequest
  type MethodOutput WorkflowService "describeNamespace" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeNamespaceResponse
  type MethodStreamingType WorkflowService "describeNamespace" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "listNamespaces" where
  type MethodName WorkflowService "listNamespaces" = "ListNamespaces"
  type MethodInput WorkflowService "listNamespaces" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListNamespacesRequest
  type MethodOutput WorkflowService "listNamespaces" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListNamespacesResponse
  type MethodStreamingType WorkflowService "listNamespaces" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "updateNamespace" where
  type MethodName WorkflowService "updateNamespace" = "UpdateNamespace"
  type MethodInput WorkflowService "updateNamespace" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateNamespaceRequest
  type MethodOutput WorkflowService "updateNamespace" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateNamespaceResponse
  type MethodStreamingType WorkflowService "updateNamespace" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "deprecateNamespace" where
  type MethodName WorkflowService "deprecateNamespace" = "DeprecateNamespace"
  type MethodInput WorkflowService "deprecateNamespace" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DeprecateNamespaceRequest
  type MethodOutput WorkflowService "deprecateNamespace" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DeprecateNamespaceResponse
  type MethodStreamingType WorkflowService "deprecateNamespace" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "startWorkflowExecution" where
  type MethodName WorkflowService "startWorkflowExecution" = "StartWorkflowExecution"
  type MethodInput WorkflowService "startWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.StartWorkflowExecutionRequest
  type MethodOutput WorkflowService "startWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.StartWorkflowExecutionResponse
  type MethodStreamingType WorkflowService "startWorkflowExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "executeMultiOperation" where
  type MethodName WorkflowService "executeMultiOperation" = "ExecuteMultiOperation"
  type MethodInput WorkflowService "executeMultiOperation" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ExecuteMultiOperationRequest
  type MethodOutput WorkflowService "executeMultiOperation" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ExecuteMultiOperationResponse
  type MethodStreamingType WorkflowService "executeMultiOperation" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "getWorkflowExecutionHistory" where
  type MethodName WorkflowService "getWorkflowExecutionHistory" = "GetWorkflowExecutionHistory"
  type MethodInput WorkflowService "getWorkflowExecutionHistory" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.GetWorkflowExecutionHistoryRequest
  type MethodOutput WorkflowService "getWorkflowExecutionHistory" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.GetWorkflowExecutionHistoryResponse
  type MethodStreamingType WorkflowService "getWorkflowExecutionHistory" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "getWorkflowExecutionHistoryReverse" where
  type MethodName WorkflowService "getWorkflowExecutionHistoryReverse" = "GetWorkflowExecutionHistoryReverse"
  type MethodInput WorkflowService "getWorkflowExecutionHistoryReverse" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.GetWorkflowExecutionHistoryReverseRequest
  type MethodOutput WorkflowService "getWorkflowExecutionHistoryReverse" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.GetWorkflowExecutionHistoryReverseResponse
  type MethodStreamingType WorkflowService "getWorkflowExecutionHistoryReverse" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "pollWorkflowTaskQueue" where
  type MethodName WorkflowService "pollWorkflowTaskQueue" = "PollWorkflowTaskQueue"
  type MethodInput WorkflowService "pollWorkflowTaskQueue" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PollWorkflowTaskQueueRequest
  type MethodOutput WorkflowService "pollWorkflowTaskQueue" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PollWorkflowTaskQueueResponse
  type MethodStreamingType WorkflowService "pollWorkflowTaskQueue" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "respondWorkflowTaskCompleted" where
  type MethodName WorkflowService "respondWorkflowTaskCompleted" = "RespondWorkflowTaskCompleted"
  type MethodInput WorkflowService "respondWorkflowTaskCompleted" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondWorkflowTaskCompletedRequest
  type MethodOutput WorkflowService "respondWorkflowTaskCompleted" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondWorkflowTaskCompletedResponse
  type MethodStreamingType WorkflowService "respondWorkflowTaskCompleted" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "respondWorkflowTaskFailed" where
  type MethodName WorkflowService "respondWorkflowTaskFailed" = "RespondWorkflowTaskFailed"
  type MethodInput WorkflowService "respondWorkflowTaskFailed" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondWorkflowTaskFailedRequest
  type MethodOutput WorkflowService "respondWorkflowTaskFailed" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondWorkflowTaskFailedResponse
  type MethodStreamingType WorkflowService "respondWorkflowTaskFailed" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "pollActivityTaskQueue" where
  type MethodName WorkflowService "pollActivityTaskQueue" = "PollActivityTaskQueue"
  type MethodInput WorkflowService "pollActivityTaskQueue" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PollActivityTaskQueueRequest
  type MethodOutput WorkflowService "pollActivityTaskQueue" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PollActivityTaskQueueResponse
  type MethodStreamingType WorkflowService "pollActivityTaskQueue" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "recordActivityTaskHeartbeat" where
  type MethodName WorkflowService "recordActivityTaskHeartbeat" = "RecordActivityTaskHeartbeat"
  type MethodInput WorkflowService "recordActivityTaskHeartbeat" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RecordActivityTaskHeartbeatRequest
  type MethodOutput WorkflowService "recordActivityTaskHeartbeat" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RecordActivityTaskHeartbeatResponse
  type MethodStreamingType WorkflowService "recordActivityTaskHeartbeat" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "recordActivityTaskHeartbeatById" where
  type MethodName WorkflowService "recordActivityTaskHeartbeatById" = "RecordActivityTaskHeartbeatById"
  type MethodInput WorkflowService "recordActivityTaskHeartbeatById" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RecordActivityTaskHeartbeatByIdRequest
  type MethodOutput WorkflowService "recordActivityTaskHeartbeatById" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RecordActivityTaskHeartbeatByIdResponse
  type MethodStreamingType WorkflowService "recordActivityTaskHeartbeatById" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "respondActivityTaskCompleted" where
  type MethodName WorkflowService "respondActivityTaskCompleted" = "RespondActivityTaskCompleted"
  type MethodInput WorkflowService "respondActivityTaskCompleted" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondActivityTaskCompletedRequest
  type MethodOutput WorkflowService "respondActivityTaskCompleted" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondActivityTaskCompletedResponse
  type MethodStreamingType WorkflowService "respondActivityTaskCompleted" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "respondActivityTaskCompletedById" where
  type MethodName WorkflowService "respondActivityTaskCompletedById" = "RespondActivityTaskCompletedById"
  type MethodInput WorkflowService "respondActivityTaskCompletedById" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondActivityTaskCompletedByIdRequest
  type MethodOutput WorkflowService "respondActivityTaskCompletedById" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondActivityTaskCompletedByIdResponse
  type MethodStreamingType WorkflowService "respondActivityTaskCompletedById" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "respondActivityTaskFailed" where
  type MethodName WorkflowService "respondActivityTaskFailed" = "RespondActivityTaskFailed"
  type MethodInput WorkflowService "respondActivityTaskFailed" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondActivityTaskFailedRequest
  type MethodOutput WorkflowService "respondActivityTaskFailed" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondActivityTaskFailedResponse
  type MethodStreamingType WorkflowService "respondActivityTaskFailed" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "respondActivityTaskFailedById" where
  type MethodName WorkflowService "respondActivityTaskFailedById" = "RespondActivityTaskFailedById"
  type MethodInput WorkflowService "respondActivityTaskFailedById" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondActivityTaskFailedByIdRequest
  type MethodOutput WorkflowService "respondActivityTaskFailedById" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondActivityTaskFailedByIdResponse
  type MethodStreamingType WorkflowService "respondActivityTaskFailedById" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "respondActivityTaskCanceled" where
  type MethodName WorkflowService "respondActivityTaskCanceled" = "RespondActivityTaskCanceled"
  type MethodInput WorkflowService "respondActivityTaskCanceled" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondActivityTaskCanceledRequest
  type MethodOutput WorkflowService "respondActivityTaskCanceled" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondActivityTaskCanceledResponse
  type MethodStreamingType WorkflowService "respondActivityTaskCanceled" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "respondActivityTaskCanceledById" where
  type MethodName WorkflowService "respondActivityTaskCanceledById" = "RespondActivityTaskCanceledById"
  type MethodInput WorkflowService "respondActivityTaskCanceledById" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondActivityTaskCanceledByIdRequest
  type MethodOutput WorkflowService "respondActivityTaskCanceledById" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondActivityTaskCanceledByIdResponse
  type MethodStreamingType WorkflowService "respondActivityTaskCanceledById" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "requestCancelWorkflowExecution" where
  type MethodName WorkflowService "requestCancelWorkflowExecution" = "RequestCancelWorkflowExecution"
  type MethodInput WorkflowService "requestCancelWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RequestCancelWorkflowExecutionRequest
  type MethodOutput WorkflowService "requestCancelWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RequestCancelWorkflowExecutionResponse
  type MethodStreamingType WorkflowService "requestCancelWorkflowExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "signalWorkflowExecution" where
  type MethodName WorkflowService "signalWorkflowExecution" = "SignalWorkflowExecution"
  type MethodInput WorkflowService "signalWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.SignalWorkflowExecutionRequest
  type MethodOutput WorkflowService "signalWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.SignalWorkflowExecutionResponse
  type MethodStreamingType WorkflowService "signalWorkflowExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "signalWithStartWorkflowExecution" where
  type MethodName WorkflowService "signalWithStartWorkflowExecution" = "SignalWithStartWorkflowExecution"
  type MethodInput WorkflowService "signalWithStartWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.SignalWithStartWorkflowExecutionRequest
  type MethodOutput WorkflowService "signalWithStartWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.SignalWithStartWorkflowExecutionResponse
  type MethodStreamingType WorkflowService "signalWithStartWorkflowExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "resetWorkflowExecution" where
  type MethodName WorkflowService "resetWorkflowExecution" = "ResetWorkflowExecution"
  type MethodInput WorkflowService "resetWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ResetWorkflowExecutionRequest
  type MethodOutput WorkflowService "resetWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ResetWorkflowExecutionResponse
  type MethodStreamingType WorkflowService "resetWorkflowExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "terminateWorkflowExecution" where
  type MethodName WorkflowService "terminateWorkflowExecution" = "TerminateWorkflowExecution"
  type MethodInput WorkflowService "terminateWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.TerminateWorkflowExecutionRequest
  type MethodOutput WorkflowService "terminateWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.TerminateWorkflowExecutionResponse
  type MethodStreamingType WorkflowService "terminateWorkflowExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "deleteWorkflowExecution" where
  type MethodName WorkflowService "deleteWorkflowExecution" = "DeleteWorkflowExecution"
  type MethodInput WorkflowService "deleteWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DeleteWorkflowExecutionRequest
  type MethodOutput WorkflowService "deleteWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DeleteWorkflowExecutionResponse
  type MethodStreamingType WorkflowService "deleteWorkflowExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "listOpenWorkflowExecutions" where
  type MethodName WorkflowService "listOpenWorkflowExecutions" = "ListOpenWorkflowExecutions"
  type MethodInput WorkflowService "listOpenWorkflowExecutions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListOpenWorkflowExecutionsRequest
  type MethodOutput WorkflowService "listOpenWorkflowExecutions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListOpenWorkflowExecutionsResponse
  type MethodStreamingType WorkflowService "listOpenWorkflowExecutions" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "listClosedWorkflowExecutions" where
  type MethodName WorkflowService "listClosedWorkflowExecutions" = "ListClosedWorkflowExecutions"
  type MethodInput WorkflowService "listClosedWorkflowExecutions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListClosedWorkflowExecutionsRequest
  type MethodOutput WorkflowService "listClosedWorkflowExecutions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListClosedWorkflowExecutionsResponse
  type MethodStreamingType WorkflowService "listClosedWorkflowExecutions" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "listWorkflowExecutions" where
  type MethodName WorkflowService "listWorkflowExecutions" = "ListWorkflowExecutions"
  type MethodInput WorkflowService "listWorkflowExecutions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListWorkflowExecutionsRequest
  type MethodOutput WorkflowService "listWorkflowExecutions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListWorkflowExecutionsResponse
  type MethodStreamingType WorkflowService "listWorkflowExecutions" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "listArchivedWorkflowExecutions" where
  type MethodName WorkflowService "listArchivedWorkflowExecutions" = "ListArchivedWorkflowExecutions"
  type MethodInput WorkflowService "listArchivedWorkflowExecutions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListArchivedWorkflowExecutionsRequest
  type MethodOutput WorkflowService "listArchivedWorkflowExecutions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListArchivedWorkflowExecutionsResponse
  type MethodStreamingType WorkflowService "listArchivedWorkflowExecutions" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "scanWorkflowExecutions" where
  type MethodName WorkflowService "scanWorkflowExecutions" = "ScanWorkflowExecutions"
  type MethodInput WorkflowService "scanWorkflowExecutions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ScanWorkflowExecutionsRequest
  type MethodOutput WorkflowService "scanWorkflowExecutions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ScanWorkflowExecutionsResponse
  type MethodStreamingType WorkflowService "scanWorkflowExecutions" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "countWorkflowExecutions" where
  type MethodName WorkflowService "countWorkflowExecutions" = "CountWorkflowExecutions"
  type MethodInput WorkflowService "countWorkflowExecutions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.CountWorkflowExecutionsRequest
  type MethodOutput WorkflowService "countWorkflowExecutions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.CountWorkflowExecutionsResponse
  type MethodStreamingType WorkflowService "countWorkflowExecutions" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "getSearchAttributes" where
  type MethodName WorkflowService "getSearchAttributes" = "GetSearchAttributes"
  type MethodInput WorkflowService "getSearchAttributes" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.GetSearchAttributesRequest
  type MethodOutput WorkflowService "getSearchAttributes" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.GetSearchAttributesResponse
  type MethodStreamingType WorkflowService "getSearchAttributes" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "respondQueryTaskCompleted" where
  type MethodName WorkflowService "respondQueryTaskCompleted" = "RespondQueryTaskCompleted"
  type MethodInput WorkflowService "respondQueryTaskCompleted" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondQueryTaskCompletedRequest
  type MethodOutput WorkflowService "respondQueryTaskCompleted" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondQueryTaskCompletedResponse
  type MethodStreamingType WorkflowService "respondQueryTaskCompleted" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "resetStickyTaskQueue" where
  type MethodName WorkflowService "resetStickyTaskQueue" = "ResetStickyTaskQueue"
  type MethodInput WorkflowService "resetStickyTaskQueue" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ResetStickyTaskQueueRequest
  type MethodOutput WorkflowService "resetStickyTaskQueue" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ResetStickyTaskQueueResponse
  type MethodStreamingType WorkflowService "resetStickyTaskQueue" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "shutdownWorker" where
  type MethodName WorkflowService "shutdownWorker" = "ShutdownWorker"
  type MethodInput WorkflowService "shutdownWorker" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ShutdownWorkerRequest
  type MethodOutput WorkflowService "shutdownWorker" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ShutdownWorkerResponse
  type MethodStreamingType WorkflowService "shutdownWorker" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "queryWorkflow" where
  type MethodName WorkflowService "queryWorkflow" = "QueryWorkflow"
  type MethodInput WorkflowService "queryWorkflow" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.QueryWorkflowRequest
  type MethodOutput WorkflowService "queryWorkflow" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.QueryWorkflowResponse
  type MethodStreamingType WorkflowService "queryWorkflow" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "describeWorkflowExecution" where
  type MethodName WorkflowService "describeWorkflowExecution" = "DescribeWorkflowExecution"
  type MethodInput WorkflowService "describeWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeWorkflowExecutionRequest
  type MethodOutput WorkflowService "describeWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeWorkflowExecutionResponse
  type MethodStreamingType WorkflowService "describeWorkflowExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "describeTaskQueue" where
  type MethodName WorkflowService "describeTaskQueue" = "DescribeTaskQueue"
  type MethodInput WorkflowService "describeTaskQueue" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeTaskQueueRequest
  type MethodOutput WorkflowService "describeTaskQueue" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeTaskQueueResponse
  type MethodStreamingType WorkflowService "describeTaskQueue" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "getClusterInfo" where
  type MethodName WorkflowService "getClusterInfo" = "GetClusterInfo"
  type MethodInput WorkflowService "getClusterInfo" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.GetClusterInfoRequest
  type MethodOutput WorkflowService "getClusterInfo" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.GetClusterInfoResponse
  type MethodStreamingType WorkflowService "getClusterInfo" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "getSystemInfo" where
  type MethodName WorkflowService "getSystemInfo" = "GetSystemInfo"
  type MethodInput WorkflowService "getSystemInfo" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.GetSystemInfoRequest
  type MethodOutput WorkflowService "getSystemInfo" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.GetSystemInfoResponse
  type MethodStreamingType WorkflowService "getSystemInfo" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "listTaskQueuePartitions" where
  type MethodName WorkflowService "listTaskQueuePartitions" = "ListTaskQueuePartitions"
  type MethodInput WorkflowService "listTaskQueuePartitions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListTaskQueuePartitionsRequest
  type MethodOutput WorkflowService "listTaskQueuePartitions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListTaskQueuePartitionsResponse
  type MethodStreamingType WorkflowService "listTaskQueuePartitions" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "createSchedule" where
  type MethodName WorkflowService "createSchedule" = "CreateSchedule"
  type MethodInput WorkflowService "createSchedule" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.CreateScheduleRequest
  type MethodOutput WorkflowService "createSchedule" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.CreateScheduleResponse
  type MethodStreamingType WorkflowService "createSchedule" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "describeSchedule" where
  type MethodName WorkflowService "describeSchedule" = "DescribeSchedule"
  type MethodInput WorkflowService "describeSchedule" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeScheduleRequest
  type MethodOutput WorkflowService "describeSchedule" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeScheduleResponse
  type MethodStreamingType WorkflowService "describeSchedule" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "updateSchedule" where
  type MethodName WorkflowService "updateSchedule" = "UpdateSchedule"
  type MethodInput WorkflowService "updateSchedule" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateScheduleRequest
  type MethodOutput WorkflowService "updateSchedule" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateScheduleResponse
  type MethodStreamingType WorkflowService "updateSchedule" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "patchSchedule" where
  type MethodName WorkflowService "patchSchedule" = "PatchSchedule"
  type MethodInput WorkflowService "patchSchedule" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PatchScheduleRequest
  type MethodOutput WorkflowService "patchSchedule" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PatchScheduleResponse
  type MethodStreamingType WorkflowService "patchSchedule" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "listScheduleMatchingTimes" where
  type MethodName WorkflowService "listScheduleMatchingTimes" = "ListScheduleMatchingTimes"
  type MethodInput WorkflowService "listScheduleMatchingTimes" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListScheduleMatchingTimesRequest
  type MethodOutput WorkflowService "listScheduleMatchingTimes" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListScheduleMatchingTimesResponse
  type MethodStreamingType WorkflowService "listScheduleMatchingTimes" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "deleteSchedule" where
  type MethodName WorkflowService "deleteSchedule" = "DeleteSchedule"
  type MethodInput WorkflowService "deleteSchedule" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DeleteScheduleRequest
  type MethodOutput WorkflowService "deleteSchedule" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DeleteScheduleResponse
  type MethodStreamingType WorkflowService "deleteSchedule" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "listSchedules" where
  type MethodName WorkflowService "listSchedules" = "ListSchedules"
  type MethodInput WorkflowService "listSchedules" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListSchedulesRequest
  type MethodOutput WorkflowService "listSchedules" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListSchedulesResponse
  type MethodStreamingType WorkflowService "listSchedules" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "countSchedules" where
  type MethodName WorkflowService "countSchedules" = "CountSchedules"
  type MethodInput WorkflowService "countSchedules" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.CountSchedulesRequest
  type MethodOutput WorkflowService "countSchedules" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.CountSchedulesResponse
  type MethodStreamingType WorkflowService "countSchedules" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "updateWorkerBuildIdCompatibility" where
  type MethodName WorkflowService "updateWorkerBuildIdCompatibility" = "UpdateWorkerBuildIdCompatibility"
  type MethodInput WorkflowService "updateWorkerBuildIdCompatibility" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateWorkerBuildIdCompatibilityRequest
  type MethodOutput WorkflowService "updateWorkerBuildIdCompatibility" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateWorkerBuildIdCompatibilityResponse
  type MethodStreamingType WorkflowService "updateWorkerBuildIdCompatibility" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "getWorkerBuildIdCompatibility" where
  type MethodName WorkflowService "getWorkerBuildIdCompatibility" = "GetWorkerBuildIdCompatibility"
  type MethodInput WorkflowService "getWorkerBuildIdCompatibility" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.GetWorkerBuildIdCompatibilityRequest
  type MethodOutput WorkflowService "getWorkerBuildIdCompatibility" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.GetWorkerBuildIdCompatibilityResponse
  type MethodStreamingType WorkflowService "getWorkerBuildIdCompatibility" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "updateWorkerVersioningRules" where
  type MethodName WorkflowService "updateWorkerVersioningRules" = "UpdateWorkerVersioningRules"
  type MethodInput WorkflowService "updateWorkerVersioningRules" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateWorkerVersioningRulesRequest
  type MethodOutput WorkflowService "updateWorkerVersioningRules" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateWorkerVersioningRulesResponse
  type MethodStreamingType WorkflowService "updateWorkerVersioningRules" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "getWorkerVersioningRules" where
  type MethodName WorkflowService "getWorkerVersioningRules" = "GetWorkerVersioningRules"
  type MethodInput WorkflowService "getWorkerVersioningRules" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.GetWorkerVersioningRulesRequest
  type MethodOutput WorkflowService "getWorkerVersioningRules" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.GetWorkerVersioningRulesResponse
  type MethodStreamingType WorkflowService "getWorkerVersioningRules" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "getWorkerTaskReachability" where
  type MethodName WorkflowService "getWorkerTaskReachability" = "GetWorkerTaskReachability"
  type MethodInput WorkflowService "getWorkerTaskReachability" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.GetWorkerTaskReachabilityRequest
  type MethodOutput WorkflowService "getWorkerTaskReachability" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.GetWorkerTaskReachabilityResponse
  type MethodStreamingType WorkflowService "getWorkerTaskReachability" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "describeDeployment" where
  type MethodName WorkflowService "describeDeployment" = "DescribeDeployment"
  type MethodInput WorkflowService "describeDeployment" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeDeploymentRequest
  type MethodOutput WorkflowService "describeDeployment" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeDeploymentResponse
  type MethodStreamingType WorkflowService "describeDeployment" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "describeWorkerDeploymentVersion" where
  type MethodName WorkflowService "describeWorkerDeploymentVersion" = "DescribeWorkerDeploymentVersion"
  type MethodInput WorkflowService "describeWorkerDeploymentVersion" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeWorkerDeploymentVersionRequest
  type MethodOutput WorkflowService "describeWorkerDeploymentVersion" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeWorkerDeploymentVersionResponse
  type MethodStreamingType WorkflowService "describeWorkerDeploymentVersion" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "listDeployments" where
  type MethodName WorkflowService "listDeployments" = "ListDeployments"
  type MethodInput WorkflowService "listDeployments" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListDeploymentsRequest
  type MethodOutput WorkflowService "listDeployments" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListDeploymentsResponse
  type MethodStreamingType WorkflowService "listDeployments" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "getDeploymentReachability" where
  type MethodName WorkflowService "getDeploymentReachability" = "GetDeploymentReachability"
  type MethodInput WorkflowService "getDeploymentReachability" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.GetDeploymentReachabilityRequest
  type MethodOutput WorkflowService "getDeploymentReachability" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.GetDeploymentReachabilityResponse
  type MethodStreamingType WorkflowService "getDeploymentReachability" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "getCurrentDeployment" where
  type MethodName WorkflowService "getCurrentDeployment" = "GetCurrentDeployment"
  type MethodInput WorkflowService "getCurrentDeployment" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.GetCurrentDeploymentRequest
  type MethodOutput WorkflowService "getCurrentDeployment" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.GetCurrentDeploymentResponse
  type MethodStreamingType WorkflowService "getCurrentDeployment" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "setCurrentDeployment" where
  type MethodName WorkflowService "setCurrentDeployment" = "SetCurrentDeployment"
  type MethodInput WorkflowService "setCurrentDeployment" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.SetCurrentDeploymentRequest
  type MethodOutput WorkflowService "setCurrentDeployment" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.SetCurrentDeploymentResponse
  type MethodStreamingType WorkflowService "setCurrentDeployment" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "setWorkerDeploymentCurrentVersion" where
  type MethodName WorkflowService "setWorkerDeploymentCurrentVersion" = "SetWorkerDeploymentCurrentVersion"
  type MethodInput WorkflowService "setWorkerDeploymentCurrentVersion" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.SetWorkerDeploymentCurrentVersionRequest
  type MethodOutput WorkflowService "setWorkerDeploymentCurrentVersion" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.SetWorkerDeploymentCurrentVersionResponse
  type MethodStreamingType WorkflowService "setWorkerDeploymentCurrentVersion" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "describeWorkerDeployment" where
  type MethodName WorkflowService "describeWorkerDeployment" = "DescribeWorkerDeployment"
  type MethodInput WorkflowService "describeWorkerDeployment" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeWorkerDeploymentRequest
  type MethodOutput WorkflowService "describeWorkerDeployment" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeWorkerDeploymentResponse
  type MethodStreamingType WorkflowService "describeWorkerDeployment" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "deleteWorkerDeployment" where
  type MethodName WorkflowService "deleteWorkerDeployment" = "DeleteWorkerDeployment"
  type MethodInput WorkflowService "deleteWorkerDeployment" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DeleteWorkerDeploymentRequest
  type MethodOutput WorkflowService "deleteWorkerDeployment" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DeleteWorkerDeploymentResponse
  type MethodStreamingType WorkflowService "deleteWorkerDeployment" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "deleteWorkerDeploymentVersion" where
  type MethodName WorkflowService "deleteWorkerDeploymentVersion" = "DeleteWorkerDeploymentVersion"
  type MethodInput WorkflowService "deleteWorkerDeploymentVersion" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DeleteWorkerDeploymentVersionRequest
  type MethodOutput WorkflowService "deleteWorkerDeploymentVersion" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DeleteWorkerDeploymentVersionResponse
  type MethodStreamingType WorkflowService "deleteWorkerDeploymentVersion" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "setWorkerDeploymentRampingVersion" where
  type MethodName WorkflowService "setWorkerDeploymentRampingVersion" = "SetWorkerDeploymentRampingVersion"
  type MethodInput WorkflowService "setWorkerDeploymentRampingVersion" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.SetWorkerDeploymentRampingVersionRequest
  type MethodOutput WorkflowService "setWorkerDeploymentRampingVersion" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.SetWorkerDeploymentRampingVersionResponse
  type MethodStreamingType WorkflowService "setWorkerDeploymentRampingVersion" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "listWorkerDeployments" where
  type MethodName WorkflowService "listWorkerDeployments" = "ListWorkerDeployments"
  type MethodInput WorkflowService "listWorkerDeployments" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListWorkerDeploymentsRequest
  type MethodOutput WorkflowService "listWorkerDeployments" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListWorkerDeploymentsResponse
  type MethodStreamingType WorkflowService "listWorkerDeployments" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "createWorkerDeployment" where
  type MethodName WorkflowService "createWorkerDeployment" = "CreateWorkerDeployment"
  type MethodInput WorkflowService "createWorkerDeployment" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.CreateWorkerDeploymentRequest
  type MethodOutput WorkflowService "createWorkerDeployment" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.CreateWorkerDeploymentResponse
  type MethodStreamingType WorkflowService "createWorkerDeployment" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "createWorkerDeploymentVersion" where
  type MethodName WorkflowService "createWorkerDeploymentVersion" = "CreateWorkerDeploymentVersion"
  type MethodInput WorkflowService "createWorkerDeploymentVersion" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.CreateWorkerDeploymentVersionRequest
  type MethodOutput WorkflowService "createWorkerDeploymentVersion" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.CreateWorkerDeploymentVersionResponse
  type MethodStreamingType WorkflowService "createWorkerDeploymentVersion" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "updateWorkerDeploymentVersionComputeConfig" where
  type MethodName WorkflowService "updateWorkerDeploymentVersionComputeConfig" = "UpdateWorkerDeploymentVersionComputeConfig"
  type MethodInput WorkflowService "updateWorkerDeploymentVersionComputeConfig" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateWorkerDeploymentVersionComputeConfigRequest
  type MethodOutput WorkflowService "updateWorkerDeploymentVersionComputeConfig" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateWorkerDeploymentVersionComputeConfigResponse
  type MethodStreamingType WorkflowService "updateWorkerDeploymentVersionComputeConfig" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "validateWorkerDeploymentVersionComputeConfig" where
  type MethodName WorkflowService "validateWorkerDeploymentVersionComputeConfig" = "ValidateWorkerDeploymentVersionComputeConfig"
  type MethodInput WorkflowService "validateWorkerDeploymentVersionComputeConfig" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ValidateWorkerDeploymentVersionComputeConfigRequest
  type MethodOutput WorkflowService "validateWorkerDeploymentVersionComputeConfig" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ValidateWorkerDeploymentVersionComputeConfigResponse
  type MethodStreamingType WorkflowService "validateWorkerDeploymentVersionComputeConfig" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "updateWorkerDeploymentVersionMetadata" where
  type MethodName WorkflowService "updateWorkerDeploymentVersionMetadata" = "UpdateWorkerDeploymentVersionMetadata"
  type MethodInput WorkflowService "updateWorkerDeploymentVersionMetadata" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateWorkerDeploymentVersionMetadataRequest
  type MethodOutput WorkflowService "updateWorkerDeploymentVersionMetadata" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateWorkerDeploymentVersionMetadataResponse
  type MethodStreamingType WorkflowService "updateWorkerDeploymentVersionMetadata" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "setWorkerDeploymentManager" where
  type MethodName WorkflowService "setWorkerDeploymentManager" = "SetWorkerDeploymentManager"
  type MethodInput WorkflowService "setWorkerDeploymentManager" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.SetWorkerDeploymentManagerRequest
  type MethodOutput WorkflowService "setWorkerDeploymentManager" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.SetWorkerDeploymentManagerResponse
  type MethodStreamingType WorkflowService "setWorkerDeploymentManager" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "updateWorkflowExecution" where
  type MethodName WorkflowService "updateWorkflowExecution" = "UpdateWorkflowExecution"
  type MethodInput WorkflowService "updateWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateWorkflowExecutionRequest
  type MethodOutput WorkflowService "updateWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateWorkflowExecutionResponse
  type MethodStreamingType WorkflowService "updateWorkflowExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "pollWorkflowExecutionUpdate" where
  type MethodName WorkflowService "pollWorkflowExecutionUpdate" = "PollWorkflowExecutionUpdate"
  type MethodInput WorkflowService "pollWorkflowExecutionUpdate" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PollWorkflowExecutionUpdateRequest
  type MethodOutput WorkflowService "pollWorkflowExecutionUpdate" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PollWorkflowExecutionUpdateResponse
  type MethodStreamingType WorkflowService "pollWorkflowExecutionUpdate" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "startBatchOperation" where
  type MethodName WorkflowService "startBatchOperation" = "StartBatchOperation"
  type MethodInput WorkflowService "startBatchOperation" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.StartBatchOperationRequest
  type MethodOutput WorkflowService "startBatchOperation" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.StartBatchOperationResponse
  type MethodStreamingType WorkflowService "startBatchOperation" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "stopBatchOperation" where
  type MethodName WorkflowService "stopBatchOperation" = "StopBatchOperation"
  type MethodInput WorkflowService "stopBatchOperation" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.StopBatchOperationRequest
  type MethodOutput WorkflowService "stopBatchOperation" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.StopBatchOperationResponse
  type MethodStreamingType WorkflowService "stopBatchOperation" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "describeBatchOperation" where
  type MethodName WorkflowService "describeBatchOperation" = "DescribeBatchOperation"
  type MethodInput WorkflowService "describeBatchOperation" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeBatchOperationRequest
  type MethodOutput WorkflowService "describeBatchOperation" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeBatchOperationResponse
  type MethodStreamingType WorkflowService "describeBatchOperation" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "listBatchOperations" where
  type MethodName WorkflowService "listBatchOperations" = "ListBatchOperations"
  type MethodInput WorkflowService "listBatchOperations" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListBatchOperationsRequest
  type MethodOutput WorkflowService "listBatchOperations" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListBatchOperationsResponse
  type MethodStreamingType WorkflowService "listBatchOperations" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "pollNexusTaskQueue" where
  type MethodName WorkflowService "pollNexusTaskQueue" = "PollNexusTaskQueue"
  type MethodInput WorkflowService "pollNexusTaskQueue" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PollNexusTaskQueueRequest
  type MethodOutput WorkflowService "pollNexusTaskQueue" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PollNexusTaskQueueResponse
  type MethodStreamingType WorkflowService "pollNexusTaskQueue" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "respondNexusTaskCompleted" where
  type MethodName WorkflowService "respondNexusTaskCompleted" = "RespondNexusTaskCompleted"
  type MethodInput WorkflowService "respondNexusTaskCompleted" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondNexusTaskCompletedRequest
  type MethodOutput WorkflowService "respondNexusTaskCompleted" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondNexusTaskCompletedResponse
  type MethodStreamingType WorkflowService "respondNexusTaskCompleted" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "respondNexusTaskFailed" where
  type MethodName WorkflowService "respondNexusTaskFailed" = "RespondNexusTaskFailed"
  type MethodInput WorkflowService "respondNexusTaskFailed" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondNexusTaskFailedRequest
  type MethodOutput WorkflowService "respondNexusTaskFailed" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RespondNexusTaskFailedResponse
  type MethodStreamingType WorkflowService "respondNexusTaskFailed" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "updateActivityOptions" where
  type MethodName WorkflowService "updateActivityOptions" = "UpdateActivityOptions"
  type MethodInput WorkflowService "updateActivityOptions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateActivityOptionsRequest
  type MethodOutput WorkflowService "updateActivityOptions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateActivityOptionsResponse
  type MethodStreamingType WorkflowService "updateActivityOptions" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "updateWorkflowExecutionOptions" where
  type MethodName WorkflowService "updateWorkflowExecutionOptions" = "UpdateWorkflowExecutionOptions"
  type MethodInput WorkflowService "updateWorkflowExecutionOptions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateWorkflowExecutionOptionsRequest
  type MethodOutput WorkflowService "updateWorkflowExecutionOptions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateWorkflowExecutionOptionsResponse
  type MethodStreamingType WorkflowService "updateWorkflowExecutionOptions" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "pauseActivity" where
  type MethodName WorkflowService "pauseActivity" = "PauseActivity"
  type MethodInput WorkflowService "pauseActivity" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PauseActivityRequest
  type MethodOutput WorkflowService "pauseActivity" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PauseActivityResponse
  type MethodStreamingType WorkflowService "pauseActivity" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "unpauseActivity" where
  type MethodName WorkflowService "unpauseActivity" = "UnpauseActivity"
  type MethodInput WorkflowService "unpauseActivity" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UnpauseActivityRequest
  type MethodOutput WorkflowService "unpauseActivity" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UnpauseActivityResponse
  type MethodStreamingType WorkflowService "unpauseActivity" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "resetActivity" where
  type MethodName WorkflowService "resetActivity" = "ResetActivity"
  type MethodInput WorkflowService "resetActivity" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ResetActivityRequest
  type MethodOutput WorkflowService "resetActivity" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ResetActivityResponse
  type MethodStreamingType WorkflowService "resetActivity" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "createWorkflowRule" where
  type MethodName WorkflowService "createWorkflowRule" = "CreateWorkflowRule"
  type MethodInput WorkflowService "createWorkflowRule" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.CreateWorkflowRuleRequest
  type MethodOutput WorkflowService "createWorkflowRule" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.CreateWorkflowRuleResponse
  type MethodStreamingType WorkflowService "createWorkflowRule" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "describeWorkflowRule" where
  type MethodName WorkflowService "describeWorkflowRule" = "DescribeWorkflowRule"
  type MethodInput WorkflowService "describeWorkflowRule" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeWorkflowRuleRequest
  type MethodOutput WorkflowService "describeWorkflowRule" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeWorkflowRuleResponse
  type MethodStreamingType WorkflowService "describeWorkflowRule" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "deleteWorkflowRule" where
  type MethodName WorkflowService "deleteWorkflowRule" = "DeleteWorkflowRule"
  type MethodInput WorkflowService "deleteWorkflowRule" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DeleteWorkflowRuleRequest
  type MethodOutput WorkflowService "deleteWorkflowRule" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DeleteWorkflowRuleResponse
  type MethodStreamingType WorkflowService "deleteWorkflowRule" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "listWorkflowRules" where
  type MethodName WorkflowService "listWorkflowRules" = "ListWorkflowRules"
  type MethodInput WorkflowService "listWorkflowRules" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListWorkflowRulesRequest
  type MethodOutput WorkflowService "listWorkflowRules" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListWorkflowRulesResponse
  type MethodStreamingType WorkflowService "listWorkflowRules" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "triggerWorkflowRule" where
  type MethodName WorkflowService "triggerWorkflowRule" = "TriggerWorkflowRule"
  type MethodInput WorkflowService "triggerWorkflowRule" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.TriggerWorkflowRuleRequest
  type MethodOutput WorkflowService "triggerWorkflowRule" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.TriggerWorkflowRuleResponse
  type MethodStreamingType WorkflowService "triggerWorkflowRule" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "recordWorkerHeartbeat" where
  type MethodName WorkflowService "recordWorkerHeartbeat" = "RecordWorkerHeartbeat"
  type MethodInput WorkflowService "recordWorkerHeartbeat" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RecordWorkerHeartbeatRequest
  type MethodOutput WorkflowService "recordWorkerHeartbeat" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RecordWorkerHeartbeatResponse
  type MethodStreamingType WorkflowService "recordWorkerHeartbeat" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "listWorkers" where
  type MethodName WorkflowService "listWorkers" = "ListWorkers"
  type MethodInput WorkflowService "listWorkers" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListWorkersRequest
  type MethodOutput WorkflowService "listWorkers" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListWorkersResponse
  type MethodStreamingType WorkflowService "listWorkers" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "countWorkers" where
  type MethodName WorkflowService "countWorkers" = "CountWorkers"
  type MethodInput WorkflowService "countWorkers" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.CountWorkersRequest
  type MethodOutput WorkflowService "countWorkers" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.CountWorkersResponse
  type MethodStreamingType WorkflowService "countWorkers" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "updateTaskQueueConfig" where
  type MethodName WorkflowService "updateTaskQueueConfig" = "UpdateTaskQueueConfig"
  type MethodInput WorkflowService "updateTaskQueueConfig" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateTaskQueueConfigRequest
  type MethodOutput WorkflowService "updateTaskQueueConfig" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateTaskQueueConfigResponse
  type MethodStreamingType WorkflowService "updateTaskQueueConfig" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "fetchWorkerConfig" where
  type MethodName WorkflowService "fetchWorkerConfig" = "FetchWorkerConfig"
  type MethodInput WorkflowService "fetchWorkerConfig" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.FetchWorkerConfigRequest
  type MethodOutput WorkflowService "fetchWorkerConfig" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.FetchWorkerConfigResponse
  type MethodStreamingType WorkflowService "fetchWorkerConfig" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "updateWorkerConfig" where
  type MethodName WorkflowService "updateWorkerConfig" = "UpdateWorkerConfig"
  type MethodInput WorkflowService "updateWorkerConfig" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateWorkerConfigRequest
  type MethodOutput WorkflowService "updateWorkerConfig" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateWorkerConfigResponse
  type MethodStreamingType WorkflowService "updateWorkerConfig" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "describeWorker" where
  type MethodName WorkflowService "describeWorker" = "DescribeWorker"
  type MethodInput WorkflowService "describeWorker" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeWorkerRequest
  type MethodOutput WorkflowService "describeWorker" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeWorkerResponse
  type MethodStreamingType WorkflowService "describeWorker" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "pauseWorkflowExecution" where
  type MethodName WorkflowService "pauseWorkflowExecution" = "PauseWorkflowExecution"
  type MethodInput WorkflowService "pauseWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PauseWorkflowExecutionRequest
  type MethodOutput WorkflowService "pauseWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PauseWorkflowExecutionResponse
  type MethodStreamingType WorkflowService "pauseWorkflowExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "unpauseWorkflowExecution" where
  type MethodName WorkflowService "unpauseWorkflowExecution" = "UnpauseWorkflowExecution"
  type MethodInput WorkflowService "unpauseWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UnpauseWorkflowExecutionRequest
  type MethodOutput WorkflowService "unpauseWorkflowExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UnpauseWorkflowExecutionResponse
  type MethodStreamingType WorkflowService "unpauseWorkflowExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "startActivityExecution" where
  type MethodName WorkflowService "startActivityExecution" = "StartActivityExecution"
  type MethodInput WorkflowService "startActivityExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.StartActivityExecutionRequest
  type MethodOutput WorkflowService "startActivityExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.StartActivityExecutionResponse
  type MethodStreamingType WorkflowService "startActivityExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "startNexusOperationExecution" where
  type MethodName WorkflowService "startNexusOperationExecution" = "StartNexusOperationExecution"
  type MethodInput WorkflowService "startNexusOperationExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.StartNexusOperationExecutionRequest
  type MethodOutput WorkflowService "startNexusOperationExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.StartNexusOperationExecutionResponse
  type MethodStreamingType WorkflowService "startNexusOperationExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "describeActivityExecution" where
  type MethodName WorkflowService "describeActivityExecution" = "DescribeActivityExecution"
  type MethodInput WorkflowService "describeActivityExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeActivityExecutionRequest
  type MethodOutput WorkflowService "describeActivityExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeActivityExecutionResponse
  type MethodStreamingType WorkflowService "describeActivityExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "describeNexusOperationExecution" where
  type MethodName WorkflowService "describeNexusOperationExecution" = "DescribeNexusOperationExecution"
  type MethodInput WorkflowService "describeNexusOperationExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeNexusOperationExecutionRequest
  type MethodOutput WorkflowService "describeNexusOperationExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeNexusOperationExecutionResponse
  type MethodStreamingType WorkflowService "describeNexusOperationExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "pollActivityExecution" where
  type MethodName WorkflowService "pollActivityExecution" = "PollActivityExecution"
  type MethodInput WorkflowService "pollActivityExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PollActivityExecutionRequest
  type MethodOutput WorkflowService "pollActivityExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PollActivityExecutionResponse
  type MethodStreamingType WorkflowService "pollActivityExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "pollNexusOperationExecution" where
  type MethodName WorkflowService "pollNexusOperationExecution" = "PollNexusOperationExecution"
  type MethodInput WorkflowService "pollNexusOperationExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PollNexusOperationExecutionRequest
  type MethodOutput WorkflowService "pollNexusOperationExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PollNexusOperationExecutionResponse
  type MethodStreamingType WorkflowService "pollNexusOperationExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "listActivityExecutions" where
  type MethodName WorkflowService "listActivityExecutions" = "ListActivityExecutions"
  type MethodInput WorkflowService "listActivityExecutions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListActivityExecutionsRequest
  type MethodOutput WorkflowService "listActivityExecutions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListActivityExecutionsResponse
  type MethodStreamingType WorkflowService "listActivityExecutions" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "listNexusOperationExecutions" where
  type MethodName WorkflowService "listNexusOperationExecutions" = "ListNexusOperationExecutions"
  type MethodInput WorkflowService "listNexusOperationExecutions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListNexusOperationExecutionsRequest
  type MethodOutput WorkflowService "listNexusOperationExecutions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ListNexusOperationExecutionsResponse
  type MethodStreamingType WorkflowService "listNexusOperationExecutions" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "countActivityExecutions" where
  type MethodName WorkflowService "countActivityExecutions" = "CountActivityExecutions"
  type MethodInput WorkflowService "countActivityExecutions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.CountActivityExecutionsRequest
  type MethodOutput WorkflowService "countActivityExecutions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.CountActivityExecutionsResponse
  type MethodStreamingType WorkflowService "countActivityExecutions" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "countNexusOperationExecutions" where
  type MethodName WorkflowService "countNexusOperationExecutions" = "CountNexusOperationExecutions"
  type MethodInput WorkflowService "countNexusOperationExecutions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.CountNexusOperationExecutionsRequest
  type MethodOutput WorkflowService "countNexusOperationExecutions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.CountNexusOperationExecutionsResponse
  type MethodStreamingType WorkflowService "countNexusOperationExecutions" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "requestCancelActivityExecution" where
  type MethodName WorkflowService "requestCancelActivityExecution" = "RequestCancelActivityExecution"
  type MethodInput WorkflowService "requestCancelActivityExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RequestCancelActivityExecutionRequest
  type MethodOutput WorkflowService "requestCancelActivityExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RequestCancelActivityExecutionResponse
  type MethodStreamingType WorkflowService "requestCancelActivityExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "requestCancelNexusOperationExecution" where
  type MethodName WorkflowService "requestCancelNexusOperationExecution" = "RequestCancelNexusOperationExecution"
  type MethodInput WorkflowService "requestCancelNexusOperationExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RequestCancelNexusOperationExecutionRequest
  type MethodOutput WorkflowService "requestCancelNexusOperationExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.RequestCancelNexusOperationExecutionResponse
  type MethodStreamingType WorkflowService "requestCancelNexusOperationExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "terminateActivityExecution" where
  type MethodName WorkflowService "terminateActivityExecution" = "TerminateActivityExecution"
  type MethodInput WorkflowService "terminateActivityExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.TerminateActivityExecutionRequest
  type MethodOutput WorkflowService "terminateActivityExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.TerminateActivityExecutionResponse
  type MethodStreamingType WorkflowService "terminateActivityExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "deleteActivityExecution" where
  type MethodName WorkflowService "deleteActivityExecution" = "DeleteActivityExecution"
  type MethodInput WorkflowService "deleteActivityExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DeleteActivityExecutionRequest
  type MethodOutput WorkflowService "deleteActivityExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DeleteActivityExecutionResponse
  type MethodStreamingType WorkflowService "deleteActivityExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "pauseActivityExecution" where
  type MethodName WorkflowService "pauseActivityExecution" = "PauseActivityExecution"
  type MethodInput WorkflowService "pauseActivityExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PauseActivityExecutionRequest
  type MethodOutput WorkflowService "pauseActivityExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PauseActivityExecutionResponse
  type MethodStreamingType WorkflowService "pauseActivityExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "resetActivityExecution" where
  type MethodName WorkflowService "resetActivityExecution" = "ResetActivityExecution"
  type MethodInput WorkflowService "resetActivityExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ResetActivityExecutionRequest
  type MethodOutput WorkflowService "resetActivityExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.ResetActivityExecutionResponse
  type MethodStreamingType WorkflowService "resetActivityExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "unpauseActivityExecution" where
  type MethodName WorkflowService "unpauseActivityExecution" = "UnpauseActivityExecution"
  type MethodInput WorkflowService "unpauseActivityExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UnpauseActivityExecutionRequest
  type MethodOutput WorkflowService "unpauseActivityExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UnpauseActivityExecutionResponse
  type MethodStreamingType WorkflowService "unpauseActivityExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "updateActivityExecutionOptions" where
  type MethodName WorkflowService "updateActivityExecutionOptions" = "UpdateActivityExecutionOptions"
  type MethodInput WorkflowService "updateActivityExecutionOptions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateActivityExecutionOptionsRequest
  type MethodOutput WorkflowService "updateActivityExecutionOptions" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.UpdateActivityExecutionOptionsResponse
  type MethodStreamingType WorkflowService "updateActivityExecutionOptions" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "terminateNexusOperationExecution" where
  type MethodName WorkflowService "terminateNexusOperationExecution" = "TerminateNexusOperationExecution"
  type MethodInput WorkflowService "terminateNexusOperationExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.TerminateNexusOperationExecutionRequest
  type MethodOutput WorkflowService "terminateNexusOperationExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.TerminateNexusOperationExecutionResponse
  type MethodStreamingType WorkflowService "terminateNexusOperationExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "deleteNexusOperationExecution" where
  type MethodName WorkflowService "deleteNexusOperationExecution" = "DeleteNexusOperationExecution"
  type MethodInput WorkflowService "deleteNexusOperationExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DeleteNexusOperationExecutionRequest
  type MethodOutput WorkflowService "deleteNexusOperationExecution" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DeleteNexusOperationExecutionResponse
  type MethodStreamingType WorkflowService "deleteNexusOperationExecution" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WorkflowService "pollWorkflowExecutionTimeSkipping" where
  type MethodName WorkflowService "pollWorkflowExecutionTimeSkipping" = "PollWorkflowExecutionTimeSkipping"
  type MethodInput WorkflowService "pollWorkflowExecutionTimeSkipping" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PollWorkflowExecutionTimeSkippingRequest
  type MethodOutput WorkflowService "pollWorkflowExecutionTimeSkipping" = Proto.Temporal.Api.Workflowservice.V1.RequestResponse.PollWorkflowExecutionTimeSkippingResponse
  type MethodStreamingType WorkflowService "pollWorkflowExecutionTimeSkipping" = 'Data.ProtoLens.Service.Types.NonStreaming