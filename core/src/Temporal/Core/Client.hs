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
  waitForConnection,
  defaultClientConfig,
  closeClient,
  withClientRuntime,
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
import Control.Monad (void, when)
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
import Foreign.Marshal hiding (void)
import Foreign.Ptr
import Foreign.Storable
import Network.BSD
import Paths_temporal_sdk_core (version)
import System.Posix.Process
import Temporal.Core.CTypes
import qualified Temporal.Core.Client.Internal.Connection as Connection
import Temporal.Internal.FFI
import Temporal.Runtime
import UnliftIO (MonadUnliftIO, withRunInIO)
import qualified UnliftIO


foreign import ccall "hs_temporal_connect_client" raw_connectClient :: Ptr Runtime -> CString -> TokioCall (CArray Word8) CoreClient


foreign import ccall "hs_temporal_drop_client" raw_freeClient :: Ptr CoreClient -> IO ()


-- These unsafe imports clone handles synchronously; they do not wait for the
-- network and they do not invoke Haskell callbacks.
foreign import ccall unsafe "hs_temporal_clone_client" raw_cloneClient :: Ptr CoreClient -> IO (Ptr CoreClient)


foreign import ccall unsafe "hs_temporal_clone_runtime" raw_cloneRuntime :: Ptr Runtime -> IO (Ptr Runtime)


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
  -- ^ If specified, connect using these TLS settings.
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


-- | Retry settings for Rust RPC calls.
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

Use 'closeClient' or 'bracketClient' to release the connection explicitly.
-}
data Client = Client
  { client :: Connection.ClientHandle (Ptr CoreClient)
  , runtime :: MVar (Maybe Runtime)
  -- ^ Owned runtime clone for scoped access, initialization, and retries; released on close.
  , warn :: Text -> IO ()
  , config :: ClientConfig
  }


clientConfig :: Client -> ClientConfig
clientConfig = config


newtype ByteVector = ByteVector {byteVector :: ByteString}


{- | Safety: we're handed a 'BS.ByteString' and are converting it directly to
a 'V.Vector Word8'; we can use conversion functions that do not take offsets
into account.
-}
byteStringToVector :: BS.ByteString -> V.Vector Word8
byteStringToVector bs = V.unsafeFromForeignPtr0 (castForeignPtr fptr) len
  where
    (fptr, len) = BS.toForeignPtr0 bs


{- | Safety: we're handed a 'V.Vector Word8' and are converting it directly to
a 'BS.ByteString'; we can use conversion functions that do not take offsets
into account.
-}
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


{- | Access the client's runtime without waiting for connection readiness or
starting recovery. Throws 'ClientClosedError' after close.

The callback's runtime remains valid even if the client is closed while it runs.
The callback must neither destroy the supplied runtime nor retain it beyond its
scope; the type does not enforce this restriction.
-}
withClientRuntime :: MonadUnliftIO m => Client -> (Runtime -> m a) -> m a
withClientRuntime c = UnliftIO.bracket (liftIO $ acquireClientRuntime c) (liftIO . destroyRuntime)


-- Call with asynchronous exceptions masked until cleanup is installed or
-- ownership transfers. Only synchronous cloning occurs under this lock.
acquireClientRuntime :: Client -> IO Runtime
acquireClientRuntime c =
  uninterruptibleMask_ $
    withMVar c.runtime $ \case
      Nothing -> throwIO ClientClosedError
      Just rt -> Runtime <$> withRuntime rt raw_cloneRuntime


{- | Run an action with a client handle.

Once acquired, the handle remains valid across 'closeClient'.

The handle is released when the action exits, including on exception.

The action must not free it or use it after returning.
-}
withClient :: Client -> (Ptr CoreClient -> IO a) -> IO a
withClient c = Connection.withHandle c.client (toException ClientClosedError) retryableConnectionError (connectClientAsync c) raw_cloneClient raw_freeClient


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


{- | Construct a 'Client' and start connecting to a Temporal server in the
background.

Returns without waiting for initialization to complete; call 'waitForConnection'
if you need to block until a connection is available, otherwise the given
'Client' will block if initialization has not completed when it is used for the
first time.

The caller must keep its runtime valid throughout construction. The client owns
an independent clone after construction.

See 'bracketClient' for examples with automatic cleanup.
-}
connectClient :: (MonadIO m, MonadLogger m, MonadUnliftIO m) => Runtime -> ClientConfig -> m Client
connectClient rt conf = do
  conf' <-
    if identity conf == ""
      then do
        ident <- liftIO defaultClientIdentity
        pure $ conf {identity = ident}
      else pure conf
  withRunInIO $ \runInIO -> mask_ $ do
    (conn, outcome) <- Connection.new
    owner <- Runtime <$> withRuntime rt raw_cloneRuntime
    let initializeClient = do
          retained <- newMVar (Just owner)
          let c = Client conn retained (\msg -> runInIO $ $(logWarn) msg) conf'
          connectClientAsync c outcome
          pure c
    initializeClient `onException` destroyRuntime owner


{- | Wait for a 'Client' to fully initialize its connection to a Temporal
server. A previous 'ClientConnectionError' starts a fresh bounded initialization;
unexpected exceptions remain terminal. Each caller observes one outcome.
-}
waitForConnection :: MonadIO m => Client -> m ()
waitForConnection c = liftIO $ Connection.waitForConnection c.client (toException ClientClosedError) retryableConnectionError (connectClientAsync c)


{- | Connect to the client asynchronously, retaining a clone of the runtime
handle until connection attempts finish.
-}
connectClientAsync :: Client -> Connection.Outcome -> IO ()
connectClientAsync c outcome =
  mask_ $
    bracketOnError (acquireClientRuntime c) destroyRuntime spawn `catch` failed
  where
    failed err = Connection.complete c.client outcome raw_freeClient $ Left err
    -- Once started, the background thread is responsible for releasing this runtime handle.
    spawn rt = void $ forkIOWithUnmask $ \unmask ->
      (unmask (withRuntime rt $ connectWithRetry c c.warn outcome) `catch` failed) `finally` destroyRuntime rt


connectWithRetry :: Client -> (Text -> IO ()) -> Connection.Outcome -> Ptr Runtime -> IO ()
connectWithRetry c warn outcome rt = do
  bytes <- evaluate $ BL.toStrict $ encode c.config
  let go attempt = do
        pending <- Connection.isConnecting c.client outcome
        result <- if pending then connectOnce c outcome rt bytes else pure Nothing
        case result of
          Nothing -> pure ()
          Just err -> do
            warn err
            micros <- case nextConnectionRetryDelay c.config attempt of
              Nothing -> throwIO $ ClientConnectionError err
              Just delay -> pure delay
            stillPending <- Connection.isConnecting c.client outcome
            when stillPending $
              threadDelay micros *> go (attempt + 1)
  go 1


connectOnce :: Client -> Connection.Outcome -> Ptr Runtime -> BS.ByteString -> IO (Maybe Text)
connectOnce c outcome rt bytes = mask $ \restore -> do
  -- Keep acquisition masked until shared state adopts or releases the handle.
  result <- BS.useAsCString bytes $ \confPtr ->
    makeTokioAsyncCall (raw_connectClient rt confPtr) rust_dropByteArray raw_freeClient
  case result of
    Right hdl -> do
      Connection.complete c.client outcome raw_freeClient $ Right hdl
      pure Nothing
    Left errPtr -> do
      message <- restore (peek errPtr >>= cArrayToText) `finally` rust_dropByteArray errPtr
      pure $ Just $ "Error connecting to Temporal server: " <> message


-- | Choose the delay before retrying a failed connection attempt.
nextConnectionRetryDelay :: ClientConfig -> Integer -> Maybe Int
nextConnectionRetryDelay config attempt = do
  retryConf <- retryConfig config
  let delayMillis = fromIntegral (initialIntervalMillis retryConf) * multiplier retryConf ^ attempt
      delayMicros = delayMillis * 1000
  if (fmap fromIntegral (maxElapsedTimeMillis retryConf) < Just delayMillis) || (toInteger (maxRetries retryConf) <= attempt)
    then Nothing
    else Just $ round delayMicros


-- Only expected connection errors permit another initialization operation.
retryableConnectionError :: SomeException -> Bool
retryableConnectionError err = case fromException err of
  Just (ClientConnectionError _) -> True
  _ -> False


{- | Close and wake pending callers immediately.

Subsequent attempts to acquire a handle throw 'ClientClosedError'.

Closing does not wait for existing uses or cancel an in-flight connection
attempt.

Handles already acquired remain valid, so operations using them may finish
after 'closeClient' returns.

If a connection attempt succeeds after this function is called, the connection
handle returned is immediately released.
-}
closeClient :: MonadIO m => Client -> m ()
closeClient c = liftIO $ mask_ $ do
  owner <- uninterruptibleMask_ $ swapMVar c.runtime Nothing
  Connection.close c.client (toException ClientClosedError) raw_freeClient
    `finally` maybe (pure ()) destroyRuntime owner


type PrimRpcCall = Ptr CoreClient -> Ptr CRpcCall -> TokioCall CRPCError (CArray Word8)


{- | Make an RPC call through the client.

The client handle is retained through submission, after which Rust owns the
resources needed to complete the RPC.

Cancelling the caller does not cancel the Rust RPC task; a cleanup thread
waits for the task to finish, then frees the response buffer or error
returned by Rust.
-}
call :: forall svc t. (HasMethodImpl svc t) => PrimRpcCall -> Client -> MethodInput svc t -> IO (Either RpcError (MethodOutput svc t))
call f c req_ = do
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
          (\sp cap errSlot resultSlot -> withClient c $ \cPtr -> f cPtr rpcCallPtr sp cap errSlot resultSlot)
          rust_drop_rpc_error
          rust_dropByteArray
          (\errPtr -> peek errPtr >>= peekCRPCError)
          ( \resultPtr -> do
              arr <- peek resultPtr
              bs <- cArrayToByteString arr
              pure $ decodeMessageOrDie bs
          )


-- | Bracket client acquisition and release.
bracketClient :: (MonadUnliftIO m, MonadLogger m) => Runtime -> ClientConfig -> (Client -> m a) -> m a
bracketClient rt conf = UnliftIO.bracket (connectClient rt conf) closeClient
