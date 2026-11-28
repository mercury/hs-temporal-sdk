{-# LANGUAGE ScopedTypeVariables #-}

module Temporal.Workflow.Signal where

import Data.Kind
import Data.Text (Text)
import Temporal.Payload


data KnownSignal (args :: [Type])
  = forall codec.
  (ApplyPayloads codec args, GatherArgs codec args) =>
  KnownSignal
  { signalName :: Text
  , signalCodec :: codec
  }


class SignalRef sig where
  type SignalArgs sig :: [Type]
  signalRef :: sig -> KnownSignal (SignalArgs sig)


instance SignalRef (KnownSignal args) where
  type SignalArgs (KnownSignal args) = args
  signalRef = id
