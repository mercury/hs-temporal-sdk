{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}

module Temporal.Core.Client (
  -- * Connecting to the server
  Client,
  clientConfig,
  connectClient,
  reconnectClient,
  defaultClientConfig,
  closeClient,
  clientRuntime,
  CoreClient,
  ClientConfig (..),
  ClientTlsConfig (..),
  ByteVector (..),
  ClientRetryConfig (..),
  APIKey (..),

  -- * Making calls to the server

  --
  -- Generally you should not need to use 'call' directly, but instead should
  -- use the supplied functions in 'Temporal.Core.Client.WorkflowService' and
  -- other service modules.
  --
  -- For higher-level access, see the@@temporal-sdk@ package for a more
  -- idiomatic Haskell API.
  call,
  RpcCall (..),
  RpcError (..),
  ClientError (..),

  -- * Primitive access
  CRpcCall,
  TokioCall,
  TokioResult,
  PrimRpcCall,
  -- | Use the underlying Rust client pointer
  withClient,

  -- * Resource-safe wrappers
  bracketClient,
) where

import Control.Concurrent
import Control.Exception
import Control.Monad.IO.Class
import Control.Monad.Logger
import Data.Aeson
import Data.Aeson.TH
import Data.ByteString (ByteString)
import qualified Data.ByteString as BL
import qualified Data.ByteString as BS
import qualified Data.ByteString.Internal as BS
import Data.HashMap.Strict (HashMap)
import Data.ProtoLens.Encoding
import Data.ProtoLens.Service.Types
import Data.Text (Text)
import qualified Data.Text as T
import qualified Data.Vector.Storable as V
import Data.Version (showVersion)
import Data.Word
import Foreign.C.String
import Foreign.ForeignPtr (castForeignPtr)
import Foreign.Marshal
import Foreign.Ptr
import Foreign.Storable
import Network.BSD
import Paths_temporal_sdk_core (version)
import System.Posix.Process
import Temporal.Core.CTypes
import Temporal.Internal.FFI
import Temporal.Runtime
import UnliftIO (MonadUnliftIO, withRunInIO)
import qualified UnliftIO


foreign import ccall "hs_temporal_connect_client" raw_connectClient :: Ptr Runtime -> CString -> TokioCall (CArray Word8) CoreClient


foreign import ccall "hs_temporal_drop_client" raw_freeClient :: Ptr CoreClient -> IO ()


-- | Configuration options for 'connectClient'.
data ClientConfig = ClientConfig
  { targetUrl :: Text
  -- ^ The server to connect to.
  , clientName :: Text
  -- ^ The name of the SDK being implemented on top of the Rust core SDK.
  --
  -- Tis is used to set the @client-name@ header in all RPC calls.
  , clientVersion :: Text
  -- ^ The version of the SDK being implemented on top of the Rust core SDK.
  --
  -- This is used to set the @client-version@ header in all RPC calls; the
  -- server decides if the client is supported based on this.
  , metadata :: HashMap Text Text
  -- ^ HTTP headers to include on every RPC call.
  --
  -- These must be valid gRPC metadata keys; invalid keys or values will return
  -- an error upon connection.
  , apiKey :: Maybe APIKey
  -- ^ An API key to use for authentication; if set, TLS will be enabled by default.
  , identity :: Text
  -- ^ A human-readable string that can identify this process.
  , tlsConfig :: Maybe ClientTlsConfig
  -- ^ If specified, the client will establish a TLS connection as defined by
  -- the options provided in 'ClientTlsConfig'.
  , retryConfig :: Maybe ClientRetryConfig
  -- ^ Client retry configuration; if unset, the default retry options provided
  -- by the underlying Rust SDK shall be used.
  }


-- | Configuration options for TLS and, optionally, mTLS.
data ClientTlsConfig = ClientTlsConfig
  { serverRootCaCert :: Maybe ByteVector
  -- ^ Bytes representing the root CA certificate used by the server.
  --
  -- If not set, the SDK will fall back to the operating system's root CA
  -- certificate store.
  , domain :: Maybe Text
  -- ^ Sets the domain name against which to verify the server's TLS certificates.
  --
  -- If not provided, the SDK will fall back to extracting the domain name from
  -- the URL used to connect.
  , clientCert :: Maybe ByteVector
  -- ^ The PEM-encoded certificate this client should use for mTLS authentication.
  , clientPrivateKey :: Maybe ByteVector
  -- ^ The PEM-encoded private key this client should use for mTLS authentication.
  }


-- | Configuration for retrying requests to the server.
data ClientRetryConfig = ClientRetryConfig
  { initialIntervalMillis :: Word64
  -- ^ Initial wait time before the first retry, in milliseconds.
  , randomizationFactor :: Double
  -- ^ Fractional value used to determine jitter that should be added to, or
  -- subtracted from, the retry interval length.
  --
  -- For example, a factor of `0.2` will jitter by ±20%.
  , multiplier :: Double
  -- ^ Rate at which retry time should be increased, until it reaches
  -- 'maxIntervalMillis'.
  , maxIntervalMillis :: Word64
  -- ^ Maximum amount of time to wait between retries, in milliseconds.
  , maxElapsedTimeMillis :: Maybe Word64
  -- ^ Maximum total amount of time requests should be retried for, in milliseconds.
  -- 
  -- If Nothing, then no limit will be applied.
  , maxRetries :: Word64
  -- ^ Maximum number of retry attempts.
  }


newtype APIKey = APIKey {unAPIKey :: Text}


instance ToJSON APIKey where
  toJSON (APIKey text) = toJSON text


instance FromJSON APIKey where
  parseJSON = fmap APIKey . parseJSON


{- | A client connection to the Temporal server.

The client is thread-safe and can be shared across threads.

Clients are expensive to create, so you should generally create one per
process and share it across your application..

The client doesn't have an explicit close method, but will be cleaned up
when it is garbage collected.
-}
data Client = Client
  { client :: MVar CoreClient
  , runtime :: Runtime
  , config :: ClientConfig
  }


clientConfig :: Client -> ClientConfig
clientConfig = config


clientRuntime :: Client -> Runtime
clientRuntime = runtime


withClient :: Client -> (Ptr CoreClient -> IO a) -> IO a
withClient c f = do
  (CoreClient cPtr) <- readMVar c.client
  withRuntime c.runtime $ \_ ->
    f cPtr


newtype ByteVector = ByteVector {byteVector :: ByteString}


-- | Safety: we're handed a 'BS.ByteString' and are converting it directly to
-- a 'V.Vector Word8'; we can use conversion functions that do not take offsets
-- into account.
byteStringToVector :: BS.ByteString -> V.Vector Word8
byteStringToVector bs = V.unsafeFromForeignPtr0 (castForeignPtr fptr) len
  where
    (fptr, len) = BS.toForeignPtr0 bs


-- | Safety: we're handed a 'V.Vector Word8' and are converting it directly to
-- a 'BS.ByteString'; we can use conversion functions that do not take offsets
-- into account.
vectorToByteString :: V.Vector Word8 -> BS.ByteString
vectorToByteString vec = BS.fromForeignPtr0 (castForeignPtr fptr) len
  where
    (fptr, len) = V.unsafeToForeignPtr0 vec


instance ToJSON ByteVector where
  toJSON = toJSON . byteStringToVector . byteVector


instance FromJSON ByteVector where
  parseJSON = fmap (ByteVector . vectorToByteString) . parseJSON


deriveJSON (defaultOptions {fieldLabelModifier = camelTo2 '_'}) ''ClientTlsConfig


deriveJSON (defaultOptions {fieldLabelModifier = camelTo2 '_'}) ''ClientRetryConfig


deriveJSON (defaultOptions {fieldLabelModifier = camelTo2 '_'}) ''ClientConfig


data RpcCall a = RpcCall
  { req :: a
  , retry :: Bool
  , metadata :: HashMap Text Text
  , timeoutMillis :: Maybe Word64
  }


data ClientError
  = ClientConnectionError Text
  | ClientClosedError
  deriving (Show)


instance Exception ClientError


defaultClientConfig :: ClientConfig
defaultClientConfig =
  ClientConfig
    { targetUrl = "http://localhost:7233"
    , clientName = "temporal-haskell"
    , clientVersion = T.pack (showVersion version)
    , metadata = mempty
    , identity = ""
    , tlsConfig = Nothing
    , retryConfig = Nothing
    , apiKey = Nothing
    }


defaultClientIdentity :: IO Text
defaultClientIdentity = do
  pid <- getProcessID
  host <- getHostName
  pure (T.pack $ show pid <> "@" <> host)


{- | Connect to the Temporal server using a given runtime.

Throws 'ClientConnectionError' if the connection fails.
-}
connectClient :: (MonadIO m, MonadLogger m, MonadUnliftIO m) => Runtime -> ClientConfig -> m Client
connectClient rt conf = do
  conf' <-
    if identity conf == ""
      then do
        ident <- liftIO defaultClientIdentity
        pure $ conf {identity = ident}
      else pure conf

  clientPtrSlot <- liftIO newEmptyMVar
  _ <- withRunInIO $ \runInIO -> do
    forkIO $ runInIO $ do
      liftIO $ withRuntime rt $ \rtPtr -> BS.useAsCString (BL.toStrict $ encode conf') $ \confPtr -> do
        let tryConnect =
              makeTokioAsyncCall
                (raw_connectClient rtPtr confPtr)
                rust_dropByteArray
                raw_freeClient
            go attempt = do
              result <- tryConnect
              case result of
                Left errPtr -> do
                  -- Exception-safe: use bracket to ensure error is freed
                  err <- bracket
                    (pure errPtr)
                    rust_dropByteArray
                    (\ptr -> do
                      errArr <- peek ptr
                      cArrayToText errArr)
                  let err' = "Error connecting to Temporal server: " <> err
                  runInIO $ $(logWarn) err'
                  case retryConfig conf of
                    Nothing -> liftIO $ putMVar clientPtrSlot (throw $ ClientConnectionError err')
                    Just retryConf -> do
                      let delayMillis = fromIntegral (initialIntervalMillis retryConf) * multiplier retryConf ^ attempt
                          delayMicros = delayMillis * 1000
                      if (fmap fromIntegral (maxElapsedTimeMillis retryConf) < Just delayMillis) || (maxRetries retryConf <= attempt)
                        then liftIO $ putMVar clientPtrSlot (throw $ ClientConnectionError err')
                        else do
                          liftIO $ threadDelay $ round delayMicros
                          go (attempt + 1)
                Right clientPtr -> liftIO $ putMVar clientPtrSlot (CoreClient clientPtr)
        go 1
  pure $ Client clientPtrSlot rt conf'


reconnectClient :: (MonadIO m, MonadLogger m, MonadUnliftIO m) => Client -> m ()
reconnectClient (Client clientPtrSlot rt conf) = UnliftIO.mask $ \restore -> do
  (CoreClient oldClientPtr) <- liftIO $ takeMVar clientPtrSlot
  -- Exception-safe: if connectClient fails, restore old client and free it properly
  (Client newClientPtr _ _) <- restore (connectClient rt conf) `UnliftIO.catch`
    (\c -> liftIO $ do
      putMVar clientPtrSlot (throw (c :: ClientError))
      raw_freeClient oldClientPtr  -- Free old client even on failure
      throwIO c)
  liftIO $ do
    -- Success path: free old client and install new one
    raw_freeClient oldClientPtr
    takeMVar newClientPtr >>= putMVar clientPtrSlot


-- | Explicitly close a client connection.
--
-- After calling this, the client must not be used again.
closeClient :: MonadIO m => Client -> m ()
closeClient (Client clientPtrSlot _ _) = liftIO $ mask_ $ do
  (CoreClient clientPtr) <- takeMVar clientPtrSlot
  raw_freeClient clientPtr
  putMVar clientPtrSlot (throw ClientClosedError)


type PrimRpcCall = Ptr CoreClient -> Ptr CRpcCall -> TokioCall CRPCError (CArray Word8)


-- | Make an RPC call through the client.
--
-- This function is async-exception-safe: all Rust allocations are properly
-- freed even if an async exception occurs during processing.
call :: forall svc t. (HasMethodImpl svc t) => PrimRpcCall -> Client -> MethodInput svc t -> IO (Either RpcError (MethodOutput svc t))
call f c req_ = withClient c $ \cPtr -> do
  let msgBytes = encodeMessage req_
  BS.useAsCStringLen msgBytes $ \(msgPtr, msgLen) -> do
    alloca $ \cArrayPtr -> do
      poke cArrayPtr (CArray msgPtr (fromIntegral msgLen))
      let rpcCall =
            CRpcCall
              { rpcCallReq = castPtr cArrayPtr
              , rpcCallRetry = if False then 0 else 1
              , rpcCallMetadata = nullPtr
              , rpcCallTimeoutMillis = nullPtr
              }
      alloca $ \rpcCallPtr -> do
        poke rpcCallPtr rpcCall
        withTokioAsyncCall
          (f cPtr rpcCallPtr)
          rust_drop_rpc_error
          rust_dropByteArray
          (\errPtr -> peek errPtr >>= peekCRPCError)
          (\resultPtr -> do
            arr <- peek resultPtr
            bs <- cArrayToByteString arr
            return (decodeMessageOrDie bs))


-- | Bracket-style wrapper for Client that ensures proper cleanup.
--
-- Example:
--
-- @
-- bracketClient rt clientConfig $ \\client -> do
--   ...
-- @
bracketClient :: (MonadUnliftIO m, MonadLogger m) => Runtime -> ClientConfig -> (Client -> m a) -> m a
bracketClient rt conf = UnliftIO.bracket (connectClient rt conf) closeClient
