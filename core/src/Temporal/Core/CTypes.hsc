#include "temporal_bridge.h"

{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TemplateHaskell #-}
module Temporal.Core.CTypes where
import Control.Exception
import Control.Concurrent.MVar (MVar)
import Data.Aeson
import Data.Aeson.TH
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import Data.Map.Strict (Map)
import qualified Data.Vector as V
import Data.Text (Text)
import Data.Text.Foreign
import Data.Word
import Foreign.C.String
import Foreign.C.Types
import Foreign.Ptr
import Foreign.Storable

data CArray a = CArray
  { dataPtr :: !(Ptr a)
  , size :: !(#{type uintptr_t})
  }
  deriving (Show)

cArrayToByteString :: CArray Word8 -> IO ByteString
cArrayToByteString CArray{..} = BS.packCStringLen (castPtr dataPtr, fromIntegral size)

cArrayToVector :: Storable a => (a -> IO b) -> CArray a -> IO (V.Vector b)
cArrayToVector f CArray{..} = do
  let len = fromIntegral size
  V.generateM len $ \i -> do
    x <- peekElemOff dataPtr i
    f x

cArrayToText :: CArray Word8 -> IO Text
cArrayToText CArray{..} = do
  let len = fromIntegral size
  fromPtr dataPtr len

instance Storable a => Storable (CArray a) where
  sizeOf _ = #{size CArray_u8}
  alignment _ = #{alignment CArray_u8}
  peek ptr = do
    dataPtr <- #{peek CArray_u8, data_ptr} ptr
    size <- #{peek CArray_u8, size} ptr
    pure CArray {..}
  poke ptr CArray {..} = do
    #{poke CArray_u8, data_ptr} ptr dataPtr
    #{poke CArray_u8, size} ptr size

foreign import ccall "hs_temporal_drop_byte_array" rust_dropByteArray :: Ptr (CArray Word8) -> IO ()

type TryPutMVarFFI = FunPtr (Ptr CInt -> Ptr (MVar ()) -> IO ())
foreign import ccall "&hs_try_putmvar" tryPutMVarPtr :: TryPutMVarFFI

-- | Marker type for @RuntimeRef*@, a handle to the Rust Tokio runtime and thread-pool.
data CRuntime

data Periodicity
  = Periodicity
    { seconds :: Word64
    , nanoseconds :: Word32
    }

instance ToJSON Periodicity where
  toJSON Periodicity{..} = object
    [ "secs" .= seconds
    , "nanos" .= nanoseconds
    ]

data TelemetryOptions
  = OtelTelemetryOptions
    { url :: Text
    , headers :: Map Text Text
    , metricPeriodicity :: Maybe Periodicity
    , globalTags :: Map Text Text
    }
  | PrometheusTelemetryOptions
    { socketAddr :: Text
    , globalTags :: Map Text Text
    , countersTotalSuffix :: Bool
    , unitSuffix :: Bool
    }
  | NoTelemetry

deriveToJSON (defaultOptions {fieldLabelModifier = camelTo2 '_'}) ''TelemetryOptions

foreign import ccall "hs_temporal_init_runtime" initRuntime :: Ptr (CArray Word8) -> TryPutMVarFFI -> IO (Ptr CRuntime)
foreign import ccall "hs_temporal_free_runtime" freeRuntime :: Ptr CRuntime -> IO ()

data LogLevel
  = Trace
  | Debug
  | Info
  | Warn
  | Error
  deriving (Show)

instance ToJSON LogLevel where
  toJSON = \case
    Trace -> "TRACE"
    Debug -> "DEBUG"
    Info -> "INFO"
    Warn -> "WARN"
    Temporal.Core.CTypes.Error -> "ERROR"

instance FromJSON LogLevel where
  parseJSON = withText "LogLevel" $ \case
    "TRACE" -> pure Trace
    "DEBUG" -> pure Debug
    "INFO" -> pure Info
    "WARN" -> pure Warn
    "ERROR" -> pure Temporal.Core.CTypes.Error
    other -> fail $ "Invalid log level: " <> show other

data CoreLog = CoreLog
  { target :: Text
  , message :: Text
  , timestamp :: Value
  , level :: LogLevel
  , fields :: Object
  , spanContexts :: [Text]
  } deriving (Show)

deriveJSON (defaultOptions {fieldLabelModifier = camelTo2 '_'}) ''CoreLog

foreign import ccall "hs_temporal_runtime_fetch_logs" raw_fetchLogs :: Ptr CRuntime -> IO (Ptr (CArray (CArray Word8)))
foreign import ccall "hs_temporal_runtime_free_logs" raw_freeLogBuffer :: Ptr (CArray (CArray Word8)) -> IO ()

data RpcError = RpcError
  { code :: Word32
  , message :: Text
  , details :: ByteString
  }
  deriving (Show)

data CRPCError = CRPCError
  { code :: Word32
  , message :: CString
  , details :: Ptr (CArray Word8)
  }

instance Storable CRPCError where
  sizeOf _ = #{size CRPCError}
  alignment _ = #{alignment CRPCError}
  peek ptr = do
    code <- #{peek CRPCError, code} ptr
    message <- #{peek CRPCError, message} ptr
    details <- #{peek CRPCError, details} ptr
    pure CRPCError {..}
  poke ptr CRPCError {..} = do
    #{poke CRPCError, code} ptr code
    #{poke CRPCError, message} ptr message
    #{poke CRPCError, details} ptr details

foreign import ccall "hs_temporal_drop_rpc_error" rust_drop_rpc_error :: Ptr CRPCError -> IO ()

peekCRPCError :: CRPCError -> IO RpcError
peekCRPCError CRPCError{code = c, message = msgPtr, details = detPtr} = do
  message <- fromPtr0 $ castPtr msgPtr
  details <- cArrayToByteString =<< peek detPtr
  pure RpcError{code = c, ..}

-- | Raw pointer to Rust CoreClient. Use ResourceT or bracket wrappers for safe management.
newtype CoreClient = CoreClient
  { coreClientPtr :: Ptr CoreClient
  }

-- TODO, this would be better as a pair of vectors instead of a linked list
data HashMapEntries = HashMapEntries
  { key :: CString
  , keyLen :: CSize
  , value :: CString
  , valueLen :: CSize
  , next :: Ptr HashMapEntries
  }

instance Storable HashMapEntries where
  sizeOf _ = #{size HaskellHashMapEntries}
  alignment _ = #{alignment HaskellHashMapEntries}
  peek ptr = do
    key <- #{peek HaskellHashMapEntries, key} ptr
    keyLen <- #{peek HaskellHashMapEntries, key_len} ptr
    value <- #{peek HaskellHashMapEntries, value} ptr
    valueLen <- #{peek HaskellHashMapEntries, value_len} ptr
    next <- #{peek HaskellHashMapEntries, next} ptr
    pure HashMapEntries {..}
  poke ptr HashMapEntries{..} = do
    #{poke HaskellHashMapEntries, key} ptr key
    #{poke HaskellHashMapEntries, key_len} ptr keyLen
    #{poke HaskellHashMapEntries, value} ptr value
    #{poke HaskellHashMapEntries, value_len} ptr valueLen
    #{poke HaskellHashMapEntries, next} ptr next

data CRpcCall = CRpcCall
  { rpcCallReq :: Ptr (CArray Word8)
  , rpcCallRetry :: Word8
  , rpcCallMetadata :: Ptr HashMapEntries
  , rpcCallTimeoutMillis :: Ptr Word64
  }

instance Storable CRpcCall where
  sizeOf _ = #{size RpcCall}
  alignment _ = #{alignment RpcCall}
  peek ptr = do
    rpcCallReq <- #{peek RpcCall, req} ptr
    rpcCallRetry <- #{peek RpcCall, retry} ptr
    rpcCallMetadata <- #{peek RpcCall, metadata} ptr
    rpcCallTimeoutMillis <- #{peek RpcCall, timeout_millis} ptr
    pure CRpcCall {..}
  poke ptr CRpcCall {..} = do
    #{poke RpcCall, req} ptr rpcCallReq
    #{poke RpcCall, retry} ptr rpcCallRetry
    #{poke RpcCall, metadata} ptr rpcCallMetadata
    #{poke RpcCall, timeout_millis} ptr rpcCallTimeoutMillis


data WorkerErrorCode
  = SDKError
  | InitWorkerFailed
  | InitReplayWorkerFailed
  | InvalidProto
  | ReplayWorkerClosed
  | PollShutdown
  | PollFailure
  | CompletionFailure
  | InvalidWorkerConfig
  | UnknownError Word8
  deriving (Show, Eq)

instance Storable WorkerErrorCode where
  sizeOf _ = #{size WorkerErrorCode}
  alignment _ = #{alignment WorkerErrorCode}
  peek ptr = do
    code <- peek (castPtr ptr :: Ptr #{type WorkerErrorCode})
    case code of
      #{const SDKError} -> pure SDKError
      #{const InitWorkerFailed} -> pure InitWorkerFailed
      #{const InitReplayWorkerFailed} -> pure InitReplayWorkerFailed
      #{const InvalidProto} -> pure InvalidProto
      #{const ReplayWorkerClosed} -> pure ReplayWorkerClosed
      #{const PollShutdownError} -> pure PollShutdown
      #{const PollFailure} -> pure PollFailure
      #{const CompletionFailure} -> pure CompletionFailure
      #{const InvalidWorkerConfig} -> pure InvalidWorkerConfig
      _ -> pure $ UnknownError code
  poke ptr_ code = case code of
    SDKError -> poke ptr #{const SDKError}
    InitWorkerFailed -> poke ptr #{const InitWorkerFailed}
    InitReplayWorkerFailed -> poke ptr #{const InitReplayWorkerFailed}
    InvalidProto -> poke ptr #{const InvalidProto}
    ReplayWorkerClosed -> poke ptr #{const ReplayWorkerClosed}
    PollShutdown -> poke ptr #{const PollShutdownError}
    PollFailure -> poke ptr #{const PollFailure}
    CompletionFailure -> poke ptr #{const CompletionFailure}
    InvalidWorkerConfig -> poke ptr #{const InvalidWorkerConfig}
    (UnknownError errCode) -> poke ptr errCode
    where
      ptr = (castPtr ptr_ :: Ptr #{type WorkerErrorCode})

data CWorkerError = CWorkerError
  { code :: WorkerErrorCode
  , message :: CString
  }

instance Storable CWorkerError where
  sizeOf _ = #{size CWorkerError}
  alignment _ = #{alignment CWorkerError}
  peek ptr = do
    code <- #{peek CWorkerError, code} ptr
    message <- #{peek CWorkerError, message} ptr
    pure CWorkerError {..}
  poke ptr CWorkerError {..} = do
    #{poke CWorkerError, code} ptr code
    #{poke CWorkerError, message} ptr message

data WorkerError = WorkerError
  { code :: WorkerErrorCode
  , message :: Text
  } deriving (Show, Eq)

instance Exception WorkerError

peekWorkerError :: CWorkerError -> IO WorkerError
peekWorkerError CWorkerError{code = c, message = msgPtr} = do
  message <- fromPtr0 $ castPtr msgPtr
  pure WorkerError{code = c, ..}

data CWorkerValidationError = CWorkerValidationError
  { message :: CString
  }

instance Storable CWorkerValidationError where
  sizeOf _ = #{size CWorkerValidationError}
  alignment _ = #{alignment CWorkerValidationError}
  peek ptr = do
    message <- #{peek CWorkerValidationError, message} ptr
    pure CWorkerValidationError {..}
  poke ptr CWorkerValidationError {..} = do
    #{poke CWorkerValidationError, message} ptr message

data WorkerValidationError = WorkerValidationError
  { message :: Text
  } deriving (Show, Eq)

instance Exception WorkerValidationError

peekWorkerValidationError :: CWorkerValidationError -> IO WorkerValidationError
peekWorkerValidationError CWorkerValidationError{message = msgPtr} = do
  message <- fromPtr0 $ castPtr msgPtr
  pure WorkerValidationError{..}

foreign import ccall "hs_temporal_drop_worker_validation_error" rust_dropWorkerValidationError :: Ptr CWorkerValidationError -> IO ()

foreign import ccall "hs_temporal_drop_worker_error" rust_dropWorkerError :: Ptr CWorkerError -> IO ()

data CUnit = CUnit

foreign import ccall "hs_temporal_drop_unit" rust_dropUnit :: Ptr CUnit -> IO ()
