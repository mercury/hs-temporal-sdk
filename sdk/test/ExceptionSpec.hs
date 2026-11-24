module ExceptionSpec where

import Control.Exception (ErrorCall (..), toException)
import Data.ProtoLens
import Data.ProtoLens.Field (field)
import qualified Data.Text as Text
import Lens.Family2
import Proto.Temporal.Api.Failure.V1.Message ()
import qualified Temporal.Core.Client as Core
import Temporal.Exception (
  ApplicationFailure (..),
  RPCStatusCode (..),
  RpcError (..),
  RpcErrorDetails (..),
  coreRpcErrorToRpcError,
  mkApplicationFailure,
  standardApplicationFailureHandlers,
 )
import Test.Hspec


exampleError :: Core.RpcError
exampleError =
  Core.RpcError
    { Core.code = 6
    , Core.message = "Workflow execution is already running. WorkflowId: zendesk/organization/c4e43516-a488-11eb-bbd4-1b5d0069e6eb, RunId: 0195f782-4076-7e1f-8d9f-6567e745033e."
    , Core.details = "\b\ACK\DC2\154\SOHWorkflow execution is already running. WorkflowId: zendesk/organization/c4e43516-a488-11eb-bbd4-1b5d0069e6eb, RunId: 0195f782-4076-7e1f-8d9f-6567e745033e.\SUB\167\SOH\nWtype.googleapis.com/temporal.api.errordetails.v1.WorkflowExecutionAlreadyStartedFailure\DC2L\n$3f7d236b-fcda-4482-a02d-834c225e5e91\DC2$0195f782-4076-7e1f-8d9f-6567e745033e"
    }


spec :: Spec
spec = do
  describe "RpcError conversion" do
    specify "Core RpcError values should convert to useful Temporal.Exception.RpcError values" $ do
      let rpcError = coreRpcErrorToRpcError exampleError
      rpcError.code `shouldBe` StatusAlreadyExists
      rpcError.message `shouldBe` "Workflow execution is already running. WorkflowId: zendesk/organization/c4e43516-a488-11eb-bbd4-1b5d0069e6eb, RunId: 0195f782-4076-7e1f-8d9f-6567e745033e."
      rpcError.details
        `shouldBe` [ RpcErrorWorkflowExecutionAlreadyStarted $
                      defMessage
                        & field @"startRequestId"
                        .~ "3f7d236b-fcda-4482-a02d-834c225e5e91"
                        & field @"runId"
                        .~ "0195f782-4076-7e1f-8d9f-6567e745033e"
                   ]

  describe "ApplicationFailure conversion" do
    -- Since base 4.21, the location of the deprecated ErrorCallWithLocation
    -- pattern is an error thunk. The failure must not keep it, or encoding the
    -- failure throws instead of reporting it.
    specify "an ErrorCall becomes a failure whose fields can all be evaluated" $ do
      let failure = mkApplicationFailure (toException (ErrorCall "boom")) standardApplicationFailureHandlers
      failure.type' `shouldBe` "ErrorCallWithLocation"
      failure.message `shouldBe` "boom"
      Text.length failure.stack `shouldSatisfy` (>= 0)
