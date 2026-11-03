{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE DeriveLift #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE ImpredicativeTypes #-}
{-# LANGUAGE InstanceSigs #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}

{- |
Module: Temporal.Payload
Description: Payloads are the binary data that is sent to and from the Temporal Server.

A Payload represents binary data such as input and output from Activities and Workflows. Payloads contain metadata that describe the binary data, such as its data type or other arbitrary values for use by custom encoders/converters.

When processed through the SDK, the default Data Converter serializes your data/value to a Payload before sending it to the Temporal Server. The default Data Converter processes supported type values to Payloads, and you can create a custom Payload Converter to convert your custom object types.

You can additionally apply custom codecs (such as for encryption or compression) on your Payloads to wrap them into new encoded Payloads.
-}
module Temporal.Payload (
  Payload (..),
  Codec (..),
  JSON (..),
  Null (..),
  Binary (..),
  Protobuf (..),
  Zlib (..),
  zlib,
  applyPayloads,
  Around (..),
  mkPayloadProcessor,
  addPayloadProcessor,
  PayloadProcessor (..),
  ApplyPayloads,
  ArgsOf,
  ArgsAndResult,
  ResultOf,
  (:->:),
  convertToProtoPayload,
  convertFromProtoPayload,

  -- * Vararg manipulation
  VarArgs (..),
  hoistResult,
  foldMapArgs,
  foldMArgs,
  foldMArgs_,
  withArgs,
  UnencodedPayload,
  processorEncodePayloads,
  processorDecodePayloads,
  processorTryDecodePayloads,
  AllArgs,
  GatherArgs,
  GatherArgsOf,
  FunctionSupportsCodec,
  FunctionSupportsCodec',
  ValueError (..),

  -- * Internal
  encodeJSON,
  decodeJSON,
) where

import Codec.Compression.Zlib.Internal hiding (Format (..))
import Control.Exception (Exception, throwIO)
import Control.Monad
import Control.Monad.IO.Class
import Data.Aeson hiding (decode, encode)
import qualified Data.Aeson as Aeson
#if MIN_VERSION_base64(1,0,0)
import qualified Data.Base64.Types as Base64.Types (extractBase64)
#endif
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
#if MIN_VERSION_base64(1,0,0)
import qualified Data.ByteString.Base64 as Base64 (decodeBase64Untyped, encodeBase64)
#else
import qualified Data.ByteString.Base64 as Base64 (decodeBase64, encodeBase64)
#endif
import qualified Data.ByteString.Char8 as C
import qualified Data.ByteString.Lazy as BL
import Data.Kind
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map
import Data.ProtoLens (Message (..), defMessage)
import Data.ProtoLens.Encoding (decodeMessage, encodeMessage)
import Data.Proxy
import Data.Text (Text)
import qualified Data.Text as T
import qualified Data.Text as Text
import Data.Text.Encoding (encodeUtf8)
import qualified Data.Text.Encoding as Text
import Data.Typeable
import qualified Data.Vector as V
import qualified Data.Vector.Fusion.Bundle as B
import qualified Data.Vector.Generic as VG
import GHC.TypeLits
import Language.Haskell.TH.Syntax (Lift)
import Lens.Family2
import qualified Proto.Temporal.Api.Common.V1.Message as Proto (Payload)
import qualified Proto.Temporal.Api.Common.V1.Message_Fields as Proto (data', metadata)


-- | Used to denote that a payload either failed to encode or decode
data ValueError
  = ValueError String
  deriving stock (Eq, Show)


instance Exception ValueError


{- * Parameter serialization

We want to be able to serialize & deserialize the parameters of a function using an arbitrary serialization code.
We do this by gathering the order of the parameters as a type-level list, then fold over the type level list to
build a function with the same parameters that outputs a list of serialized params.

To deserialize, we do the inverse– we progressively apply the args of the function by consuming serialized params
as we go. If there are not enough or too many params, we fail.
-}


-- | We want to be able to serialize & deserialize the parameters of a function using an arbitrary serialization format.
class Codec fmt a where
  -- | Similar to a content-type header, this is a string that identifies the format of the payload.
  -- it will be set on the 'encoding' metadata field of the payload.
  encoding :: fmt -> Proxy a -> ByteString


  messageType :: fmt -> a -> ByteString
  default messageType :: (Typeable a) => fmt -> a -> ByteString
  messageType _ _ = C.pack $ show $ typeRep (Proxy @a)
  encode :: fmt -> a -> IO Payload
  decode :: fmt -> Payload -> IO (Either String a)


insertStandardMetadata :: Codec fmt a => fmt -> a -> Payload -> Payload
insertStandardMetadata fmt x (Payload d m) =
  Payload d $
    m
      <> Map.fromList
        [ ("encoding", encoding fmt $ pure x)
        , ("messageType", messageType fmt x)
        ]


data JSON = JSON
  deriving stock (Eq, Show, Lift)


instance (Typeable a, Aeson.ToJSON a, Aeson.FromJSON a) => Codec JSON a where
  encoding _ _ = "json/plain"
  encode _ = pure . encodeJSON
  decode _ = pure . decodeJSON

-- | Pure implementation of 'encode'@ @'JSON', exposed here so that functions
-- without access to 'IO' can encode 'JSON' payloads.
--
-- For example, a function which needs to produce a 'Payload' from within a
-- 'Workflow' can call 'encodeJSON' without introducing non-determinism.
encodeJSON :: (Typeable a, Aeson.ToJSON a, Aeson.FromJSON a) => a -> Payload
encodeJSON x = insertStandardMetadata JSON x $ Payload (BL.toStrict $ Aeson.encode x) mempty

-- | Pure implementation of 'decode'@ @'JSON', exposed here so that functions
-- without access to 'IO' can decode 'JSON' payloads.
--
-- For example, a function which retrieves a 'Payload' from within a
-- 'Workflow' can call 'decodeJSON' without having to unsafely lift 'IO'.
decodeJSON :: Aeson.FromJSON a => Payload -> Either String a
decodeJSON = Aeson.eitherDecodeStrict' . payloadData

data Null = Null
  deriving stock (Eq, Show, Lift)


instance Codec Null () where
  encoding _ _ = "binary/null"
  encode c x = pure $ insertStandardMetadata c x $ Payload mempty mempty
  decode _ _ = pure $ Right ()


{- | Direct binary serialization.

A generalized instance like the one for JSON is not provided because
there are many possible binary serialization formats and libraries.

You can provide a simple version of this instance for your own codebase
using something like the cereal package:

> import Data.Serialize (Serialize)
> import qualified Data.Serialize as Serialize
> instance {\-# OVERLAPPABLE #-\} (Typeable a, Serialize a) => Codec Binary a where
>   encodingType _ _ = "binary/plain"
>   encodePayload _ x = Serialize.encode x
>   decode _ = Serialize.decode . inputPayloadData
-}
data Binary = Binary
  deriving stock (Eq, Show, Lift)


instance Codec Binary ByteString where
  encoding _ _ = "binary/plain"
  encode c x = pure $ insertStandardMetadata c x $ Payload x mempty
  decode _ = pure . Right . payloadData


data Protobuf = Protobuf
  deriving stock (Eq, Show, Lift)


instance (Message a) => Codec Protobuf a where
  messageType _ x = encodeUtf8 $ messageName $ pure x
  encoding _ _ = "binary/protobuf"
  encode c x = pure $ insertStandardMetadata c x $ Payload (encodeMessage x) mempty
  decode _ = pure . decodeMessage . payloadData


data Zlib = Zlib
  { minimumEncodingSize :: Int
  -- ^ Skip compression when the size of the response body is
  -- below this amount of bytes (default: 860.)
  --
  -- /Setting this option to less than 150 will actually increase/
  -- /the size of outgoing data if its original size is less than 150 bytes/.
  , compressParams :: CompressParams
  , decompressParams :: DecompressParams
  }


zlib :: Zlib
zlib = Zlib 860 defaultCompressParams defaultDecompressParams


instance Codec Zlib Payload where
  encoding _ _ = "binary/zlib"


  -- TODO, if we keep the original compression size, we can allocate the right size buffer for the decompressed data.
  encode Zlib {..} p =
    if BS.length msg >= minimumEncodingSize && BS.length compressed < BS.length msg
      then pure $ Payload compressed (Map.singleton "encoding" "binary/zlib")
      else pure p
    where
      msg = encodeMessage $ convertToProtoPayload p
      compressed = BL.toStrict $ compress zlibFormat compressParams $ BL.fromStrict p.payloadData
  decode Zlib {..} p = case p.payloadMetadata Map.!? "encoding" of
    -- TODO, use `decompressIO` instead of `decompress`  so we can return the error in the Left case.
    Just "binary/zlib" ->
      pure $
        fmap convertFromProtoPayload $
          decodeMessage $
            BS.toStrict $
              decompress zlibFormat decompressParams $
                BL.fromStrict p.payloadData
    _ -> pure $ Right p


{- | A codec that post-processes the payload after encoding and pre-processes before decoding.

Combining multiple 'PayloadProcessor's will apply them in the order that they are added.

For example, if you want to compress and then encrypt, you would add the compression processor
first, then the encryption processor.
-}
data PayloadProcessor = PayloadProcessor
  { payloadProcessorEncode :: Payload -> IO Payload
  , payloadProcessorDecode :: Payload -> IO (Either String Payload)
  }

-- | The order of the payload processors is important.
--
-- When encoding, the first payload processor is applied first, then the second.
--
-- When decoding, the second payload processor is applied first, then the first.
--
-- This matters because things like encryption and compression need to be applied in the correct order.
instance Semigroup PayloadProcessor where
  PayloadProcessor e1 d1 <> PayloadProcessor e2 d2 = PayloadProcessor
    { payloadProcessorEncode = e1 >=> e2
    , payloadProcessorDecode = \p -> do
        p' <- d2 p
        case p' of
          Left err -> pure $ Left err
          Right ok -> d1 ok
    }

instance Monoid PayloadProcessor where
  mempty = PayloadProcessor pure (pure . Right)

mkPayloadProcessor :: Codec fmt Payload => fmt -> PayloadProcessor
mkPayloadProcessor fmt =
  PayloadProcessor
    { payloadProcessorEncode = encode fmt
    , payloadProcessorDecode = decode fmt
    }


addPayloadProcessor :: Codec fmt Payload => fmt -> PayloadProcessor -> PayloadProcessor
addPayloadProcessor fmt PayloadProcessor {..} =
  PayloadProcessor
    { payloadProcessorEncode = \p -> do
        p' <- payloadProcessorEncode p
        encode fmt p'
    , payloadProcessorDecode = \p -> do
        p' <- decode fmt p
        case p' of
          Left err -> pure $ Left err
          Right ok -> payloadProcessorDecode ok
    }


{- | A codec that uses the base codec for actually encoding and decoding, but
supports additional pre- and post-processing. This is useful for adding
compression, encryption, or other transformations to an existing codec.
-}
data Around base = Around
  { around :: PayloadProcessor
  , baseCodec :: base
  }


instance (Typeable a, Codec base a) => Codec (Around base) a where
  encoding (Around _ base) = encoding base
  encode (Around p base) x = encode base x >>= payloadProcessorEncode p
  decode (Around p base) x =
    payloadProcessorDecode p x >>= \case
      Left err -> pure $ Left err
      Right x' -> decode base x'


type family ArgsAndResult' (f :: Type) (args :: [Type]) :: ([Type], Type) where
  ArgsAndResult' (arg -> rest) args = ArgsAndResult' rest (arg ': args)
  ArgsAndResult' result args = '(args, result)


type family ArgsAndResult (f :: Type) :: ([Type], Type) where
  ArgsAndResult f = ArgsAndResult' f '[]


type family ArgsOf f where
  ArgsOf (arg -> rest) = arg ': ArgsOf rest
  ArgsOf _ = '[]


type family ResultOf (m :: Type -> Type) f where
  ResultOf m (_ -> rest) = ResultOf m rest
  ResultOf m (m result) = result
  ResultOf m result = TypeError ('Text "This function must use the (" ':<>: 'ShowType m ':<>: 'Text ") monad." ':$$: ('Text "Current type: " ':<>: 'ShowType result))


-- | Construct a function type from a list of argument types and a result type.
type family (:->:) (args :: [Type]) (result :: Type) where
  (:->:) '[] result = result
  (:->:) (arg ': args) result = arg -> (args :->: result)


infixr 0 :->:


-- | Applies a constraint to all types in a type-level list.
type family AllArgs (c :: Type -> Constraint) (args :: [Type]) :: Constraint where
  AllArgs _ '[] = ()
  AllArgs c (arg ': args) = (c arg, AllArgs c args)


class VarArgs (args :: [Type]) where
  sequenceArgs :: Monad m => Proxy (m result) -> m (args :->: m result) -> args :->: m result


  mapResult :: (result -> result') -> (args :->: result) -> (args :->: result')


  foldlArgs :: forall c b. (AllArgs c args) => Proxy c -> (forall a. c a => b -> a -> b) -> b -> (args :->: b)


-- Instance for the base case where there are no arguments left
instance VarArgs '[] where
  sequenceArgs :: Monad m => Proxy (m result) -> m (m result) -> m result
  sequenceArgs _ = join
  {-# INLINE sequenceArgs #-}


  mapResult :: (result -> result') -> result -> result'
  mapResult f = f
  {-# INLINE mapResult #-}


  foldlArgs _ _ !x = x
  {-# INLINE foldlArgs #-}


-- Instance for the recursive case where there's at least one argument
instance (VarArgs args) => VarArgs (arg ': args) where
  sequenceArgs :: forall result (m :: Type -> Type). Monad m => Proxy (m result) -> m ((arg ': args) :->: m result) -> (arg -> (args :->: m result))
  sequenceArgs p action arg = sequenceArgs @args p $ do
    f <- action
    return (f arg)
  {-# INLINE sequenceArgs #-}


  mapResult :: forall result result'. (result -> result') -> (arg -> (args :->: result)) -> (arg -> (args :->: result'))
  mapResult f g arg = mapResult @args @result f (g arg)
  {-# INLINE mapResult #-}


  foldlArgs p f !acc arg = foldlArgs @args p f (f acc arg)
  {-# INLINE foldlArgs #-}


hoistResult :: forall args result m n. VarArgs args => (forall x. m x -> n x) -> (args :->: m result) -> (args :->: n result)
hoistResult = mapResult @args @(m result)
{-# INLINE hoistResult #-}


foldMapArgs :: forall args c m. (VarArgs args, AllArgs c args, Monoid m) => (forall a. c a => a -> m) -> args :->: m
foldMapArgs f = foldlArgs @args @c @m Proxy (\acc a -> acc `mappend` f a) mempty
{-# INLINE foldMapArgs #-}


foldMArgs :: forall args c b m. (VarArgs args, AllArgs c args, Monad m) => (forall a. c a => b -> a -> m b) -> b -> args :->: m b
foldMArgs f x = foldlArgs @args @c @(m b) Proxy (\acc y -> acc >>= \(!x') -> f x' y) (pure x)
{-# INLINE foldMArgs #-}


foldMArgs_ :: forall args c b m. (VarArgs args, AllArgs c args, Monad m) => (forall a. c a => b -> a -> m b) -> b -> args :->: m ()
foldMArgs_ f x = mapResult @args @(m b) @(m ()) void (foldMArgs @args @c @b @m f x)
{-# INLINE foldMArgs_ #-}


type UnencodedPayload = IO Payload


{- | This is the final step in the process of encoding payloads.

It takes a list of suspended payload encodings and runs them through the payload processor.
This allows us to
-}
processorEncodePayloads :: (MonadIO m, Traversable f) => PayloadProcessor -> f Payload -> m (f Payload)
processorEncodePayloads processor = liftIO . mapM (payloadProcessorEncode processor)
{-# INLINE processorEncodePayloads #-}


processorDecodePayloads :: (MonadIO m, Traversable f) => PayloadProcessor -> f Payload -> m (f Payload)
processorDecodePayloads processor = liftIO . mapM (payloadProcessorDecode processor >=> either (throwIO . ValueError) pure)
{-# INLINE processorDecodePayloads #-}


{- | Best-effort header decoding for backwards compatibility.

@DEPRECATED@ - This is a temporary fix for an oversight in the SDK where
headers were not consistently handled without payload processing codecs. Once
we've run this for awhile, we can remove this function and have callsites
convert headers directly rom protobuf payloads as-intended.
-}
processorTryDecodePayloads :: (MonadIO m, Traversable f) => PayloadProcessor -> f Payload -> m (f Payload)
processorTryDecodePayloads processor = liftIO . traverse tryDecode
  where
    tryDecode p = do
      result <- payloadProcessorDecode processor p
      pure $ either (\_ -> p) id result
{-# INLINE processorTryDecodePayloads #-}


gatherArgs :: forall args codec. (VarArgs args, AllArgs (Codec codec) args) => codec -> args :->: V.Vector UnencodedPayload
gatherArgs codec = mapResult @args @(B.Bundle V.Vector UnencodedPayload) @(V.Vector UnencodedPayload) VG.unstream (foldlArgs @args @(Codec codec) Proxy go B.empty)
  where
    go :: forall a. Codec codec a => B.Bundle V.Vector UnencodedPayload -> a -> B.Bundle V.Vector UnencodedPayload
    go acc arg = B.snoc acc (encode codec arg)
{-# INLINE gatherArgs #-}


withArgs :: forall args result codec. (VarArgs args, AllArgs (Codec codec) args) => codec -> (V.Vector UnencodedPayload -> result) -> args :->: result
withArgs codec f = mapResult @args @(V.Vector UnencodedPayload) @result f (gatherArgs @args @codec codec)
{-# INLINE withArgs #-}


data Payload = Payload
  { payloadData :: ByteString
  , payloadMetadata :: Data.Map.Strict.Map Text ByteString
  }
  deriving stock (Show, Eq, Ord, Lift)


-- Note: You'd think `decodeBase64Untyped` is the wrong function to use, but
-- there's actually no way to check the invariants that the typed versions
-- encode.
--
-- See: https://github.com/emilypi/base64/issues/65#issuecomment-2960385097
-- | Internal compatibility shim to bridge support for `base64 < 1.0`.
base64DecodeFromText :: MonadFail m => T.Text -> m ByteString
base64DecodeFromText txt =
  either (fail . Text.unpack) pure (decodeBase64 txt)
  where
    decodeBase64 =
#if MIN_VERSION_base64(1,0,0)
      Base64.decodeBase64Untyped . Text.encodeUtf8
#else
      Base64.decodeBase64 . Text.encodeUtf8
#endif


-- | Internal compatibility shim to bridge support for `base64 < 1.0`.
base64EncodeToText :: ByteString -> T.Text
base64EncodeToText =
#if MIN_VERSION_base64(1,0,0)
  Base64.Types.extractBase64 . Base64.encodeBase64
#else
  Base64.encodeBase64
#endif


instance FromJSON Payload where
  parseJSON = withObject "Payload" $ \o -> do
    rawPayloadData <- o .:? "data"
    rawPayloadMetadata <- o .:? "metadata"
    payloadData <- maybe (pure mempty) base64DecodeFromText rawPayloadData
    payloadMetadata <- maybe (pure mempty) (traverse base64DecodeFromText) rawPayloadMetadata
    pure Payload {..}


instance ToJSON Payload where
  toJSON Payload {..} =
    object $
      (if payloadData == "" then id else (("data" .= base64EncodeToText payloadData) :)) $
        (if Map.null payloadMetadata then id else (("metadata" .= fmap base64EncodeToText payloadMetadata) :))
          []
  toEncoding Payload {..} =
    pairs $
      (if payloadData == "" then mempty else "data" .= base64EncodeToText payloadData)
        <> (if Map.null payloadMetadata then mempty else "metadata" .= fmap base64EncodeToText payloadMetadata)


convertFromProtoPayload :: Proto.Payload -> Payload
convertFromProtoPayload p = Payload (p ^. Proto.data') (p ^. Proto.metadata)


convertToProtoPayload :: Payload -> Proto.Payload
convertToProtoPayload (Payload d m) =
  defMessage
    & Proto.data' .~ d
    & Proto.metadata .~ m


class ApplyPayloads codec (args :: [Type]) where
  applyPayloads
    :: codec
    -> Proxy args
    -> Proxy result
    -> (args :->: result)
    -> V.Vector Payload
    -> IO (Either String result)


instance ApplyPayloads codec '[] where
  applyPayloads _ _ _ f _ = pure $ Right f


instance (Codec codec ty, ApplyPayloads codec tys) => ApplyPayloads codec (ty ': tys) where
  applyPayloads codec _ resP f vec = case V.uncons vec of
    Nothing -> pure $ Left "Not enough arguments"
    Just (pl, rest) -> do
      res <- decode codec pl
      case res of
        Right arg -> applyPayloads codec (Proxy @tys) resP (f arg) rest
        Left err -> pure $ Left err


type GatherArgs codec args = (VarArgs args, AllArgs (Codec codec) args)


type GatherArgsOf codec f = GatherArgs codec (ArgsOf f)


type FunctionSupportsCodec codec args result = (GatherArgs codec args, Codec codec result, Typeable result, ApplyPayloads codec args)


type FunctionSupportsCodec' m codec f = (FunctionSupportsCodec codec (ArgsOf f) (ResultOf m f), f ~ (ArgsOf f :->: m (ResultOf m f)))
