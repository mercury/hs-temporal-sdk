{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}

module Temporal.Core.EphemeralServer where

import Control.Monad (void)
import Data.Aeson
import Data.Aeson.TH
import Data.ByteString (ByteString, useAsCString)
import qualified Data.ByteString.Lazy as BL
import Data.Word
import Foreign.C.String hiding (withCString)
import Foreign.Ptr
import Foreign.Storable
import Temporal.Core.CTypes
import Temporal.Internal.FFI
import Temporal.Runtime


data SDKDefault = SDKDefault {sdkName :: String, sdkVersion :: String}


data EphemeralExeVersion
  = -- | Use a default version for the given SDK name and version.
    Default SDKDefault
  | -- | Specific version.
    Fixed String


instance ToJSON EphemeralExeVersion where
  toJSON (Default (SDKDefault name version)) =
    object
      [ "type" .= String "SDKDefault"
      , "contents"
          .= object
            [ "sdk_name" .= name
            , "sdk_version" .= version
            ]
      ]
  toJSON (Fixed version) =
    object
      [ "type" .= String "Fixed"
      , "contents" .= version
      ]


data EphemeralExe
  = -- | Existing path on the filesystem for the executable.
    ExistingPath FilePath
  | -- | Download the executable if not already there.
    CachedDownload EphemeralExeVersion (Maybe FilePath) (Maybe Word64)


instance ToJSON EphemeralExe where
  toJSON (ExistingPath path) =
    object
      [ "type" .= String "ExistingPath"
      , "contents" .= path
      ]
  toJSON (CachedDownload version destDir ttl) =
    object
      [ "type" .= String "CachedDownload"
      , "contents"
          .= object
            [ "version" .= version
            , "dest_dir" .= destDir
            ]
      , "ttl" .= ttl
      ]


data TemporalDevServerConfig = TemporalDevServerConfig
  { exe :: EphemeralExe
  , namespace :: FilePath
  , ip :: String
  , port :: Maybe Word16
  , dbFilename :: Maybe FilePath
  , ui :: Bool
  , uiPort :: Maybe Word16
  , log :: (String, String)
  , extraArgs :: [String]
  }


deriveToJSON (defaultOptions {fieldLabelModifier = camelTo2 '_'}) ''TemporalDevServerConfig


defaultTemporalDevServerConfig :: TemporalDevServerConfig
defaultTemporalDevServerConfig =
  TemporalDevServerConfig
    { exe = CachedDownload (Default $ SDKDefault "community-haskell" "0.1.0.0") Nothing Nothing
    , namespace = "default"
    , ip = "127.0.0.1"
    , port = Nothing
    , dbFilename = Nothing
    , ui = False
    , uiPort = Nothing
    , log = ("pretty", "warn")
    , extraArgs = []
    }


newtype EphemeralServer = EphemeralServer {ephemeralServerPtr :: Ptr EphemeralServer}


foreign import ccall "hs_temporal_start_dev_server"
  raw_startDevServer
    :: Ptr Runtime
    -> CString
    -> TokioCall (CArray Word8) EphemeralServer


startDevServer :: Runtime -> TemporalDevServerConfig -> IO (Either ByteString EphemeralServer)
startDevServer r c = withRuntime r $ \rp -> useAsCString (BL.toStrict (encode c)) $ \cstr ->
  withTokioAsyncCallWithAbandon
    (raw_startDevServer rp cstr)
    rust_dropByteArray
    -- Normal completion transfers this pointer to 'EphemeralServer'.
    (\_ -> pure ())
    shutdownAbandonedEphemeralServer
    ( \errPtr -> do
        arr <- peek errPtr
        cArrayToByteString arr
    )
    (pure . EphemeralServer)


foreign import ccall "hs_temporal_shutdown_ephemeral_server" raw_shutdownEphemeralServer :: Ptr EphemeralServer -> TokioCall (CArray Word8) CUnit


shutdownEphemeralServer :: EphemeralServer -> IO (Either ByteString ())
shutdownEphemeralServer (EphemeralServer ep) =
  withTokioAsyncCall
    (raw_shutdownEphemeralServer ep)
    rust_dropByteArray
    rust_dropUnit
    ( \errPtr -> do
        arr <- peek errPtr
        cArrayToByteString arr
    )
    (\_ -> return ())


{- | A completed server start transfers ownership to Haskell. If the waiting
Haskell thread has already been interrupted, consume that pointer through
the regular shutdown operation so the child process is stopped as well as
the Rust allocation being released.
-}
shutdownAbandonedEphemeralServer :: Ptr EphemeralServer -> IO ()
shutdownAbandonedEphemeralServer ep =
  void $ shutdownEphemeralServer (EphemeralServer ep)


-- TODO
-- startDevServerWithOutput

data TemporalTestServerConfig = TemporalTestServerConfig
  { exe :: EphemeralExe
  , port :: Maybe Word16
  , extraArgs :: [String]
  }


deriveToJSON (defaultOptions {fieldLabelModifier = camelTo2 '_'}) ''TemporalTestServerConfig


foreign import ccall "hs_temporal_start_test_server"
  raw_startTestServer
    :: Ptr Runtime
    -> CString
    -> TokioCall (CArray Word8) EphemeralServer


startTestServer :: Runtime -> TemporalTestServerConfig -> IO (Either ByteString EphemeralServer)
startTestServer r conf = withRuntime r $ \rp -> useAsCString (BL.toStrict $ encode conf) $ \cstr ->
  withTokioAsyncCallWithAbandon
    (raw_startTestServer rp cstr)
    rust_dropByteArray
    -- Normal completion transfers this pointer to 'EphemeralServer'.
    (\_ -> pure ())
    shutdownAbandonedEphemeralServer
    ( \errPtr -> do
        arr <- peek errPtr
        cArrayToByteString arr
    )
    (pure . EphemeralServer)
