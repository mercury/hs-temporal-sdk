{-# LANGUAGE DuplicateRecordFields #-}
{-# OPTIONS_GHC -Wno-partial-fields #-}

module Temporal.Exception (
  -- * Common types
  ActivityType (..),
  RetryState (..),

  -- * Runtime errors
  RuntimeError (..),
  ShutdownBlockedByActivities (..),
  WorkflowNotFound (..),
  ActivityNotFound (..),
  QueryNotFound (..),
  UpdateNotFound (..),
  UpdateFailure (..),

  -- * Workflow exceptions
  LogicBug (..),
  LogicBugType (..),
  WorkflowAlreadyStarted (..),
  ChildWorkflowFailed (..),
  ChildWorkflowCancelled (..),
  NexusOperationStartFailed (..),
  NexusOperationFailed (..),
  NexusOperationCancelled (..),
  NexusOperationTimedOut (..),
  NexusHandlerException (..),
  SignalExternalWorkflowFailed (..),
  ContinueAsNewException (..),
  AlternativeInstanceFailure (..),
  CancelExternalWorkflowFailed (..),
  WorkflowCancelRequested (..),

  -- * Activity exceptions
  ActivityCancelled (..),
  ApplicationFailure (..),
  ActivityFailure (..),
  CompleteAsync (..),
  ActivityCancelReason (..),

  -- * Annotations for errors
  NonRetryableError (..),
  annotateNonRetryableError,
  annotateRetryableError,
  NextRetryDelay (..),
  annotateNextRetryDelay,
  annotateNoRetryDelay,

  -- * Execution closure
  WorkflowExecutionClosed (..),
  WorkflowExecutionFailedAttributes (..),

  -- * RPC errors
  RPCStatusCode (..),
  Temporal.Exception.RpcError (..),
  RpcErrorDetails (..),
  coreRpcErrorToRpcError,

  -- * ApplicationFailure conversion
  applicationFailureToException,
  applicationFailureFromException,
  ToApplicationFailure (..),
  SomeApplicationFailure (..),
  ApplicationFailureHandler (..),
  mkApplicationFailure,
  applicationFailureToFailureProto,
  Temporal.Exception.prettyCallStack,
  standardApplicationFailureHandlers,
  mkAnnotatedHandlers,
) where

import Control.Applicative (Alternative (..))
import Control.Exception
import Control.Exception.Annotated
import Data.Annotation
import qualified Data.ByteString as BS
import qualified Data.HashMap.Strict as HashMap
import Data.Int
import Data.ProtoLens (Message (..), decodeMessage, decodeMessageOrDie)
import Data.ProtoLens.Field (field)
import Data.Text (Text, breakOnEnd, pack)
import Data.Typeable
import Data.Vector (Vector)
import qualified Data.Vector as V
import GHC.Stack
import Lens.Family2
import Proto.Google.Protobuf.Any (Any)
import Proto.Rpc.Status (Status)
import qualified Proto.Rpc.Status_Fields as Status
import qualified Proto.Temporal.Api.Common.V1.Message as Common
import qualified Proto.Temporal.Api.Common.V1.Message_Fields as Common
import Proto.Temporal.Api.Errordetails.V1.Message
import Proto.Temporal.Api.Failure.V1.Message
import qualified Proto.Temporal.Api.Failure.V1.Message as F
import qualified Proto.Temporal.Api.Failure.V1.Message as Proto
import qualified Proto.Temporal.Api.Failure.V1.Message_Fields as F
import Proto.Temporal.Api.History.V1.Message
import Temporal.Common
import Temporal.Core.Client (RpcError (..))
import Temporal.Duration
import Temporal.Payload
import Temporal.Workflow.Types


---------------------------------------------------------------------
-- Unpacking errors from protobuf Any values

-- NOTE: fields are partial by design

{- | A description of a failure during `unpack` to decode an `Any` message
into the expected type.
-}
data UnpackError
  = DifferentType
      { expectedMessageType :: Text
      -- ^ The expected @packagename.messagename@
      , actualUrl :: Text
      -- ^ The typeUrl in the 'Any' being unpacked
      }
  | -- | The error from decodeMessage
    DecodingError Text
  deriving stock (Show, Eq)


instance Exception UnpackError


{- | Unpacks the given 'Any' into the given message type.  Returns 'Nothing'
if the type doesn't match or parsing the payload has failed.

Ignores the type URL prefix.
-}
unpackAny :: forall a. Message a => Any -> Either UnpackError a
unpackAny a
  | expectedName /= snd (breakOnEnd "/" $ a ^. field @"typeUrl") =
      Left
        DifferentType
          { expectedMessageType = expectedName
          , actualUrl = a ^. field @"typeUrl"
          }
  | otherwise = case decodeMessage (a ^. field @"value") of
      Left e -> Left $ DecodingError $ pack e
      Right x -> Right x
  where
    expectedName = messageName (Proxy @a)


---------------------------------------------------------------------
-- SDK failures

data SomeWorkerException = forall e. Exception e => SomeWorkerException e


instance Show SomeWorkerException where
  show (SomeWorkerException e) = show e


instance Exception SomeWorkerException


workerExceptionToException :: Exception e => e -> SomeException
workerExceptionToException = toException . SomeWorkerException


workerExceptionFromException :: Exception e => SomeException -> Maybe e
workerExceptionFromException x = do
  SomeWorkerException a <- fromException x
  cast a


-- type SomeFailure = Failure (Maybe FailureInfo)

-- data Failure = Failure
--   { message :: Text
--   , source :: Text
--   , stackTrace :: Text
--   , encodedAttributes :: Maybe Payload
--   , cause :: Maybe Failure
--   , failureInfo :: Maybe FailureInfo
--   }

-- data FailureInfo
--   = ApplicationFailureInfo ApplicationFailure
--   | TimeoutFailureInfo TimeoutFailure
--   | CanceledFailureInfo CanceledFailure
--   | TerminatedFailureInfo TerminatedFailure
--   | ServerFailureInfo ServerFailure
--   | ResetWorkflowFailureInfo ResetWorkflowFailure
--   | ActivityFailureInfo ActivityFailure
--   | ChildWorkflowExecutionFailureInfo ChildWorkflowExecutionFailure

-- data ApplicationFailureInfo = ApplicationFailureInfo
--   { type' :: Text
--   , nonRetryable :: Bool
--   , details :: Vector Payload
--   }

-- data TimeoutFailureInfo = TimeoutFailureInfo
--   { timeoutType :: TimeoutTime
--   , lastHeartbeatDetails :: Vector Payload
--   }

-- data CanceledFailureInfo = CanceledFailureInfo
--   { details :: Vector Payload
--   }

-- data ResetWorkflowFailureInfo = ResetWorkflowFailureInfo
--   { lastHeartbeatDetails :: Vector Payload
--   }

-- data TerminatedFailure = TerminatedFailure

-- data ServerFailure = ServerFailure
--   { nonRetryable :: Bool
--   }

-- data ActivityFailure = ActivityFailure
--   { scheduledEventId :: Int64
--   , startedEventId :: Int64
--   , identity :: Text
--   , activityType :: ActivityType
--   , activityId :: ActivityId
--   , retryState :: RetryState
--   }

-- data ChildWorkflowExecutionFailure = ChildWorkflowExecutionFailure
--   { namespace :: Text
--   , workflowExecution :: WorkflowExecution
--   , workflowType :: WorkflowType
--   , initiatedEventId :: Int64
--   , startedEventId :: Int64
--   , retryState :: RetryState
--   }

{- | Errors that are an issue with the worker itself, not the workflow

These errors should cause the worker to exit, and imply an issue with the
SDK itself.
-}
data RuntimeError = RuntimeError String
  deriving stock (Show)


instance Exception RuntimeError where
  toException = workerExceptionToException
  fromException = workerExceptionFromException


{- | A worker's graceful shutdown period elapsed while activities were still running.

Unlike 'RuntimeError', this does not indicate a fault in the SDK: it means
'gracefulShutdownPeriodMillis' was too short for the activities this worker had in
flight, so they were not given long enough to tear themselves down.

Callers that can afford to wait may retry the shutdown; callers that cannot
should expect the server to time the surviving activities out on their
start-to-close deadlines.

The count is the worker's own view, taken when shutdown gave up, and excludes
activities whose handler has finished but whose completion is still in flight.
-}
data ShutdownBlockedByActivities = ShutdownBlockedByActivities
  { outstandingActivities :: Int
  , namespace :: Text
  , taskQueue :: Text
  }
  deriving stock (Show)


instance Exception ShutdownBlockedByActivities where
  toException = workerExceptionToException
  fromException = workerExceptionFromException


-- | Errors that are the fault of the developer, not the SDK.
data WorkflowNotFound = WorkflowNotFound String
  deriving stock (Show)


instance Exception WorkflowNotFound where
  toException = workerExceptionToException
  fromException = workerExceptionFromException


data ActivityNotFound = ActivityNotFound String
  deriving stock (Show)


instance Exception ActivityNotFound where
  toException = workerExceptionToException
  fromException = workerExceptionFromException


data QueryNotFound = QueryNotFound String
  deriving stock (Show)


instance Exception QueryNotFound where
  toException = workerExceptionToException
  fromException = workerExceptionFromException


data UpdateNotFound = UpdateNotFound Text
  deriving stock (Show)


instance Exception UpdateNotFound where
  toException = workerExceptionToException
  fromException = workerExceptionFromException


-- TODO: Convert this into something more user-friendly where we're
-- not exposing the protobuf thing to users
data UpdateFailure = UpdateFailure F.Failure
  deriving stock (Show)


instance Exception UpdateFailure


---------------------------------------------------------------------
-- Workflow exceptions

data LogicBugType
  = ReadingCompletionsFailedRun
  | WorkflowActivationDeadlock
  deriving stock (Show)


data LogicBug = LogicBug LogicBugType
  deriving stock (Show)


instance Exception LogicBug


data WorkflowAlreadyStarted = WorkflowAlreadyStarted
  { workflowAlreadyStartedWorkflowId :: WorkflowId
  , workflowAlreadyStartedWorkflowType :: WorkflowType
  }
  deriving stock (Show)


instance Exception WorkflowAlreadyStarted


data ChildWorkflowFailed = ChildWorkflowFailed Proto.Failure
  deriving stock (Show)


instance Exception ChildWorkflowFailed


data ChildWorkflowCancelled = ChildWorkflowCancelled
  deriving stock (Show, Eq)


-- { childWorkflowCancelledWorkflowId :: WorkflowId
-- , childWorkflowCancelledWorkflowType :: WorkflowType
-- , childWorkflowCancelledRunId :: Text
-- } deriving (Show)

instance Exception ChildWorkflowCancelled


-- | Thrown when a Nexus operation fails to start (e.g. handler error during start).
newtype NexusOperationStartFailed = NexusOperationStartFailed Text
  deriving stock (Show, Eq)


instance Exception NexusOperationStartFailed


-- | Thrown when a Nexus operation fails after starting.
data NexusOperationFailed = NexusOperationFailed
  { nexusFailureMessage :: Text
  , nexusOperationId :: Maybe Text
  }
  deriving stock (Show, Eq)


instance Exception NexusOperationFailed


-- | Thrown when a Nexus operation is cancelled.
data NexusOperationCancelled = NexusOperationCancelled
  deriving stock (Show, Eq)


instance Exception NexusOperationCancelled


-- | Thrown when a Nexus operation times out.
data NexusOperationTimedOut = NexusOperationTimedOut
  deriving stock (Show, Eq)


instance Exception NexusOperationTimedOut


-- | Errors from a Nexus handler, suitable for returning to the caller.
data NexusHandlerException = NexusHandlerException
  { nexusHandlerErrorType :: Text
  , nexusHandlerErrorMessage :: Text
  , nexusHandlerRetryable :: Bool
  }
  deriving stock (Show, Eq)


instance Exception NexusHandlerException


data SignalExternalWorkflowFailed = SignalExternalWorkflowFailed Proto.Failure
  deriving stock (Show)


instance Exception SignalExternalWorkflowFailed


-- This does not need to be in the exception hierarchy,
-- since we don't want to catch it in the workflow code.
data ContinueAsNewException = ContinueAsNewException
  { continueAsNewWorkflowType :: WorkflowType
  , continueAsNewArguments :: Vector Payload
  , continueAsNewOptions :: ContinueAsNewOptions
  }
  deriving stock (Show)


instance Exception ContinueAsNewException


data AlternativeInstanceFailure = AlternativeInstanceFailure
  deriving stock (Show)


instance Exception AlternativeInstanceFailure


data CancelExternalWorkflowFailed = CancelExternalWorkflowFailed Proto.Failure
  deriving stock (Show)


instance Exception CancelExternalWorkflowFailed


-- TODO, include the payload?
data WorkflowCancelRequested = WorkflowCancelRequested
  deriving stock (Show)


instance Exception WorkflowCancelRequested


data ActivityCancelled = ActivityCancelled Proto.Temporal.Api.Failure.V1.Message.Failure
  deriving stock (Show, Eq)


instance Exception ActivityCancelled


data ApplicationFailure = ApplicationFailure
  { type' :: Text
  , message :: Text
  , nonRetryable :: Bool
  , details :: [Payload]
  , stack :: Text
  , nextRetryDelay :: Maybe Duration
  }
  deriving stock (Show, Eq)


applicationFailureToFailureProto :: ApplicationFailure -> F.Failure
applicationFailureToFailureProto appFailure =
  defMessage
    & F.message .~ appFailure.message
    & F.source .~ "hs-temporal-sdk"
    & F.stackTrace .~ appFailure.stack
    & F.applicationFailureInfo
      .~ ( defMessage
            & F.type' .~ appFailure.type'
            & F.details .~ (defMessage @Common.Payloads & Common.payloads .~ fmap convertToProtoPayload appFailure.details)
            & F.nonRetryable .~ appFailure.nonRetryable
            & F.maybe'nextRetryDelay .~ fmap durationToProto appFailure.nextRetryDelay
         )


instance Exception ApplicationFailure where
  fromException (SomeException e) =
    cast e <|> (cause <$> cast e)


class ToApplicationFailure e where
  toApplicationFailure :: e -> ApplicationFailure


data SomeApplicationFailure = forall e. (Exception e, ToApplicationFailure e) => SomeApplicationFailure e


instance Show SomeApplicationFailure where
  show :: SomeApplicationFailure -> String
  show (SomeApplicationFailure e) = show e


instance Exception SomeApplicationFailure


{- | A type of exception thrown to a running activity to cancel it due to things happening
with the worker, such as a shutdown. This differs from a normal activity cancellation, which
uses the 'cancel' function from the 'async' package.
-}
data ActivityCancelReason
  = -- | The activity no longer exists on the server (may already be completed or its workflow
    -- may be completed).
    NotFound
  | -- | The activity was explicitly cancelled.
    CancelRequested
  | -- | Activity timeout caused the activity to be marked cancelled.
    Timeout
  | -- | The worker the activity is running on is shutting down.
    WorkerShutdown
  | -- | We received a cancellation reason that we don't know how to handle.
    UnknownCancellationReason
  deriving stock (Show)


instance Exception ActivityCancelReason where
  toException = asyncExceptionToException
  fromException = asyncExceptionFromException


applicationFailureToException :: (Exception e, ToApplicationFailure e) => e -> SomeException
applicationFailureToException e = toException $ SomeApplicationFailure e


applicationFailureFromException :: Exception e => SomeException -> Maybe e
applicationFailureFromException e = do
  (SomeApplicationFailure e') <- fromException e
  cast e'


data ApplicationFailureHandler where
  ApplicationFailureHandler :: Exception e => (e -> ApplicationFailure) -> ApplicationFailureHandler


-- Stripped down callstack rendering to work better in the Temporal UI.
prettySrcLoc :: SrcLoc -> String
prettySrcLoc SrcLoc {..} =
  mconcat
    [ srcLocFile
    , ":"
    , show srcLocStartLine
    , ":"
    , show srcLocStartCol
    , " in "
    , srcLocPackage
    , ":"
    , srcLocModule
    ]


{- | Pretty print a 'CallStack'.

@since 4.9.0.0
-}
prettyCallStack :: CallStack -> String
prettyCallStack = Prelude.unlines . prettyCallStackLines


prettyCallStackLines :: CallStack -> [String]
prettyCallStackLines cs = case getCallStack cs of
  [] -> []
  stk -> Prelude.map prettyCallSite stk
  where
    prettyCallSite (f, loc) = f ++ ", called at " ++ Temporal.Exception.prettySrcLoc loc


mkApplicationFailure :: SomeException -> [ApplicationFailureHandler] -> ApplicationFailure
mkApplicationFailure e@(SomeException e') = Prelude.foldr tryHandler (basicHandler e')
  where
    tryHandler (ApplicationFailureHandler hndlr) acc = maybe acc hndlr $ fromException e


annToPayload :: Annotation -> Payload
annToPayload = encodeJSON . show


annotationHandler :: Exception e => (e -> ApplicationFailure) -> AnnotatedException e -> ApplicationFailure
annotationHandler hndlr (AnnotatedException anns e) =
  let
    -- wrapped = toException
    base = hndlr e
    (stack', annsWithoutStack) = tryAnnotations anns
    (nonRetryable', annsWithoutStackOrRetry) = tryAnnotations annsWithoutStack
    (nextRetryDelay', annsWithoutDelay) = tryAnnotations annsWithoutStackOrRetry
  in
    base
      { stack =
          if base.stack == ""
            then case stack' of
              (cs : _) -> pack $ Temporal.Exception.prettyCallStack cs
              _ -> base.stack
            else base.stack
      , details = Prelude.map annToPayload annsWithoutDelay ++ base.details
      , nonRetryable = case nonRetryable' of
          (NonRetryableError b : _) -> b || nonRetryable base
          _ -> nonRetryable base
      , nextRetryDelay = case nextRetryDelay' of
          (NextRetryDelay d : _) -> d <|> nextRetryDelay base
          _ -> nextRetryDelay base
      }


basicHandler :: Exception e => e -> ApplicationFailure
basicHandler e = case toException e of
  (SomeException e') ->
    ApplicationFailure
      { type' = pack $ show $ typeOf e'
      , message = pack $ displayException e'
      , nonRetryable = False
      , details = []
      , stack = ""
      , nextRetryDelay = Nothing
      }


mkAnnotatedHandlers :: [ApplicationFailureHandler] -> [ApplicationFailureHandler]
mkAnnotatedHandlers xs =
  ( xs >>= \(ApplicationFailureHandler hndlr) ->
      [ ApplicationFailureHandler hndlr
      , ApplicationFailureHandler $ \e -> annotationHandler hndlr e
      ]
  )
    ++ [ApplicationFailureHandler $ \e -> annotationHandler basicHandler (e :: AnnotatedException SomeException)]


standardApplicationFailureHandlers :: [ApplicationFailureHandler]
standardApplicationFailureHandlers =
  [ ApplicationFailureHandler $ \h@ApplicationFailure {} -> h
  , ApplicationFailureHandler $ \(SomeApplicationFailure e) -> toApplicationFailure e
  , ApplicationFailureHandler $ \(ErrorCallWithLocation msg loc) ->
      ApplicationFailure
        { type' = "ErrorCallWithLocation"
        , message = pack msg
        , nonRetryable = False
        , details = []
        , stack = pack loc
        , nextRetryDelay = Nothing
        }
  ]


data ActivityFailure = ActivityFailure
  { message :: Text
  , activityType :: ActivityType
  , activityId :: ActivityId
  , retryState :: RetryState
  , identity :: Text
  , cause :: ApplicationFailure
  , scheduledEventId :: Int64
  , startedEventId :: Int64
  , original :: ActivityFailureInfo
  , stack :: Text
  }
  deriving stock (Show, Eq)


instance Exception ActivityFailure


data NonRetryableError = NonRetryableError Bool
  deriving stock (Show, Eq)


annotateNonRetryableError :: Annotation
annotateNonRetryableError = Annotation $ NonRetryableError True


annotateRetryableError :: Annotation
annotateRetryableError = Annotation $ NonRetryableError False


data NextRetryDelay = NextRetryDelay (Maybe Duration)
  deriving stock (Show, Eq)


annotateNextRetryDelay :: Duration -> Annotation
annotateNextRetryDelay = Annotation . NextRetryDelay . pure


annotateNoRetryDelay :: Annotation
annotateNoRetryDelay = Annotation $ NextRetryDelay Nothing


---------------------------------------------------------------------
-- Activity exceptions

data SomeActivityException = forall e. Exception e => SomeActivityException e


instance Show SomeActivityException where
  show (SomeActivityException e) = show e


instance Exception SomeActivityException


activityExceptionToException :: Exception e => e -> SomeException
activityExceptionToException = toException . SomeActivityException


activityExceptionFromException :: Exception e => SomeException -> Maybe e
activityExceptionFromException x = do
  SomeActivityException a <- fromException x
  cast a


{- |
Asynchronous Activity Completion is a feature that enables an Activity Function to return without causing the Activity Execution to complete. The Temporal Client can then be used to both Heartbeat Activity Execution progress and eventually provide a result.

The intended use-case for this feature is when an external system has the final result of a computation, started by an Activity.

Consider using Asynchronous Activities instead of Signals if the external process is unreliable and might fail to send critical status updates through a Signal.

Consider using Signals as an alternative to Asynchronous Activities to return data back to a Workflow Execution if there is a human in the process loop. The reason is that a human in the loop means multiple steps in the process. The first is the Activity Function that stores state in an external system and at least one other step where a human would "complete" the activity. If the first step fails, you want to detect that quickly and retry instead of waiting for the entire process, which could be significantly longer when humans are involved.
-}
data CompleteAsync = CompleteAsync
  deriving stock (Show)


instance Exception CompleteAsync where
  toException = activityExceptionToException
  fromException = activityExceptionFromException


data WorkflowExecutionClosed
  = WorkflowExecutionFailed WorkflowExecutionFailedEventAttributes
  | WorkflowExecutionTimedOut
  | WorkflowExecutionCanceled
  | WorkflowExecutionTerminated
  | WorkflowExecutionContinuedAsNew
  deriving stock (Show, Eq)


instance Exception WorkflowExecutionClosed


data WorkflowExecutionFailedAttributes = WorkflowExecutionFailedAttributes
  { failure :: Maybe Failure
  , retryState :: RetryState
  , workflowTaskCompletedEventId :: Int64
  , newExecutionRunId :: Maybe RunId
  }
  deriving stock (Show, Eq)


data RPCStatusCode
  = -- | Not an error; returned on success. Use 'StatusOk' for successful operations.
    StatusOk
  | -- | The operation was cancelled, typically by the caller. Use 'StatusCancelled' when operations are aborted.
    StatusCancelled
  | -- | Unknown error. For example, use 'StatusUnknown' when a Status value received from another address
    -- space belongs to an error space that is not known in this address space. Also errors raised by APIs that do
    -- not return enough error information may be converted to this error.
    StatusUnknown
  | -- | The client specified an invalid argument. Note that this differs from 'StatusFailedPrecondition'.
    -- 'StatusInvalidArgument' indicates arguments that are problematic regardless of the state of the system
    -- (e.g., a malformed file name).
    StatusInvalidArgument
  | -- | The deadline expired before the operation could complete. For operations that change the state
    -- of the system, 'StatusDeadlineExceeded' may be returned even if the operation has completed successfully. For example,
    -- a successful response from a server could have been delayed long enough for the deadline to expire.
    StatusDeadlineExceeded
  | -- | Some requested entity (e.g., file or directory) was not found. Note to server developers: if a request
    -- is denied for an entire class of users, such as gradual feature rollout or undocumented allowlist,
    -- 'StatusNotFound' may be used. If a request is denied for some users within a class of users, such as user-based access control, 'StatusPermissionDenied' must be used.
    StatusNotFound
  | -- | The entity that a client attempted to create (e.g., file or directory) already exists.
    StatusAlreadyExists
  | -- | The caller does not have permission to execute the specified operation. 'StatusPermissionDenied' must not be
    -- used for rejections caused by exhausting some resource (use 'StatusResourceExhausted' instead for those errors).
    -- 'StatusPermissionDenied' must not be used if the caller cannot be identified (use 'StatusUnauthenticated' instead for those errors).
    -- This error code does not imply the request is valid or the requested entity exists or satisfies other pre-conditions.
    StatusPermissionDenied
  | -- | Some resource has been exhausted, perhaps a per-user quota, or perhaps the entire file system is out of space.
    StatusResourceExhausted
  | -- | The operation was rejected because the system is not in a state required for the operation's execution.
    -- For example, the directory to be deleted is non-empty, an rmdir operation is applied to a non-directory, etc.
    -- Service implementors can use the following guidelines to decide between 'StatusFailedPrecondition', 'StatusAborted', and 'StatusUnavailable':
    --
    -- (a) Use 'StatusUnavailable' if the client can retry just the failing call.
    -- (b) Use 'StatusAborted' if the client should retry at a higher level (e.g., when a client-specified test-and-set fails,
    -- indicating the client should restart a read-modify-write sequence).
    -- (c) Use 'StatusFailedPrecondition' if the client should not retry until the system state has been explicitly fixed.
    -- E.g., if an "rmdir" fails because the directory is non-empty, 'StatusFailedPrecondition' should be returned since the
    -- client should not retry unless the files are deleted from the directory.
    StatusFailedPrecondition
  | -- | The operation was aborted, typically due to a concurrency issue such as a sequencer check failure or
    -- transaction abort. See the guidelines above for deciding between 'StatusFailedPrecondition', 'StatusAborted', and 'StatusUnavailable'.
    StatusAborted
  | -- | The operation was attempted past the valid range. E.g., seeking or reading past end-of-file.
    -- Unlike 'StatusInvalidArgument', this error indicates a problem that may be fixed if the system state changes.
    -- For example, a 32-bit file system will generate 'StatusInvalidArgument' if asked to read at an offset that is not in
    -- the range [0,2^32-1], but it will generate 'StatusOutOfRange' if asked to read from an offset past the current
    -- file size.
    StatusOutOfRange
  | -- | The operation is not implemented or is not supported/enabled in this service.
    StatusUnimplemented
  | -- | Internal errors. This means that some invariants expected by the underlying system have been broken.
    -- This error code is reserved for serious errors.
    StatusInternal
  | -- | The service is currently unavailable. This is most likely a transient condition, which can be
    -- corrected by retrying with a backoff. Note that it is not always safe to retry non-idempotent operations.
    StatusUnavailable
  | -- | Unrecoverable data loss or corruption.
    StatusDataLoss
  | -- | The request does not have valid authentication credentials for the operation.
    StatusUnauthenticated
  deriving stock (Show, Eq)


instance Enum RPCStatusCode where
  fromEnum = \case
    StatusOk -> 0
    StatusCancelled -> 1
    StatusUnknown -> 2
    StatusInvalidArgument -> 3
    StatusDeadlineExceeded -> 4
    StatusNotFound -> 5
    StatusAlreadyExists -> 6
    StatusPermissionDenied -> 7
    StatusResourceExhausted -> 8
    StatusFailedPrecondition -> 9
    StatusAborted -> 10
    StatusOutOfRange -> 11
    StatusUnimplemented -> 12
    StatusInternal -> 13
    StatusUnavailable -> 14
    StatusDataLoss -> 15
    StatusUnauthenticated -> 16
  toEnum = \case
    0 -> StatusOk
    1 -> StatusCancelled
    2 -> StatusUnknown
    3 -> StatusInvalidArgument
    4 -> StatusDeadlineExceeded
    5 -> StatusNotFound
    6 -> StatusAlreadyExists
    7 -> StatusPermissionDenied
    8 -> StatusResourceExhausted
    9 -> StatusFailedPrecondition
    10 -> StatusAborted
    11 -> StatusOutOfRange
    12 -> StatusUnimplemented
    13 -> StatusInternal
    14 -> StatusUnavailable
    15 -> StatusDataLoss
    16 -> StatusUnauthenticated
    n -> error $ "Invalid RPCStatusCode: " <> show n


instance Bounded RPCStatusCode where
  minBound = minBound
  maxBound = maxBound


{- | Detailed error information for various types of RPC errors returned by the Temporal server.
This type provides specific error payloads depending on the kind of error that occurred.
The Temporal API returns these details within the gRPC status, which this SDK unpacks
into this more usable form.
-}
data RpcErrorDetails
  = -- | Indicates that a cancellation was already requested for the target execution.
    RpcErrorCancellationAlreadyRequested CancellationAlreadyRequestedFailure
  | -- | The client version is not supported by the server.
    RpcErrorClientVersionNotSupported ClientVersionNotSupportedFailure
  | -- | Multiple operations on the same workflow execution were attempted concurrently.
    RpcErrorMultiOperationExecution MultiOperationExecutionFailure
  | -- | A namespace creation was attempted, but the namespace already exists.
    RpcErrorNamespaceAlreadyExists NamespaceAlreadyExistsFailure
  | -- | The namespace is in an invalid state for the requested operation.
    RpcErrorNamespaceInvalidState NamespaceInvalidStateFailure
  | -- | The namespace is not in active state.
    RpcErrorNamespaceNotActive NamespaceNotActiveFailure
  | -- | The specified namespace was not found.
    RpcErrorNamespaceNotFound NamespaceNotFoundFailure
  | -- | The namespace is currently unavailable.
    RpcErrorNamespaceUnavailable NamespaceUnavailableFailure
  | -- | A newer build exists for the workflow type.
    RpcErrorNewerBuildExists NewerBuildExistsFailure
  | -- | The requested entity was not found.
    RpcErrorNotFound NotFoundFailure
  | -- | The caller doesn't have permission to perform the operation.
    RpcErrorPermissionDenied PermissionDeniedFailure
  | -- | A query to the workflow failed.
    RpcErrorQueryFailed QueryFailedFailure
  | -- | The server is experiencing resource exhaustion (e.g., rate limits exceeded).
    RpcErrorResourceExhausted ResourceExhaustedFailure
  | -- | The server version is not supported by the client.
    RpcErrorServerVersionNotSupported ServerVersionNotSupportedFailure
  | -- | The operation was attempted on a system workflow.
    RpcErrorSystemWorkflow SystemWorkflowFailure
  | -- | A workflow execution with the same ID is already running.
    RpcErrorWorkflowExecutionAlreadyStarted WorkflowExecutionAlreadyStartedFailure
  | -- | The workflow is not ready to handle the operation.
    RpcErrorWorkflowNotReady WorkflowNotReadyFailure
  | -- | An unrecognized error type was received from the server.
    RpcErrorUnrecognized Any
  deriving stock (Show, Eq)


errorRegistry :: HashMap.HashMap Text (Any -> Either UnpackError RpcErrorDetails)
errorRegistry =
  HashMap.fromList
    [ register RpcErrorCancellationAlreadyRequested
    , register RpcErrorClientVersionNotSupported
    , register RpcErrorMultiOperationExecution
    , register RpcErrorNamespaceAlreadyExists
    , register RpcErrorNamespaceInvalidState
    , register RpcErrorNamespaceNotActive
    , register RpcErrorNamespaceNotFound
    , register RpcErrorNamespaceUnavailable
    , register RpcErrorNewerBuildExists
    , register RpcErrorNotFound
    , register RpcErrorPermissionDenied
    , register RpcErrorQueryFailed
    , register RpcErrorResourceExhausted
    , register RpcErrorServerVersionNotSupported
    , register RpcErrorSystemWorkflow
    , register RpcErrorWorkflowExecutionAlreadyStarted
    , register RpcErrorWorkflowNotReady
    ]
  where
    register :: forall msg. Message msg => (msg -> RpcErrorDetails) -> (Text, Any -> Either UnpackError RpcErrorDetails)
    register f =
      ( "type.googleapis.com/" <> messageName (Proxy @msg)
      , fmap f . unpackAny
      )


applyRegistry :: HashMap.HashMap Text (Any -> Either UnpackError RpcErrorDetails) -> Any -> RpcErrorDetails
applyRegistry m x = case HashMap.lookup (x ^. field @"typeUrl") m of
  Nothing -> RpcErrorUnrecognized x
  Just f -> case f x of
    Left _ -> RpcErrorUnrecognized x
    Right details -> details


{- | Represents an RPC error returned from the Temporal server.

RPC errors can occur during any communication with the server, and provide
both a status code indicating the general category of error, a human-readable
message, and structured details with more specific error information.

For workflow execution operations, common errors include:
- Workflow already exists
- Namespace not found
- Permission denied
- Resource exhausted (often due to rate limiting or request/response body size limits)
-}
data RpcError = RpcError
  { code :: RPCStatusCode
  -- ^ The status code of the error, providing the general category
  , message :: Text
  -- ^ A human-readable message describing the error
  , details :: [RpcErrorDetails]
  -- ^ Detailed, structured information about the error(s)
  }
  deriving stock (Show, Eq)


instance Exception Temporal.Exception.RpcError


coreRpcErrorToRpcError :: Temporal.Core.Client.RpcError -> Temporal.Exception.RpcError
coreRpcErrorToRpcError err =
  Temporal.Exception.RpcError
    { code = toEnum $ fromIntegral err.code
    , message = err.message
    , details = fmap (applyRegistry errorRegistry) ((decodeMessageOrDie @Status err.details) ^. field @"details")
    }
