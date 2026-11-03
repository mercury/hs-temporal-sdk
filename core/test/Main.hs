module Main (main) where

import qualified BridgeErrorSpec
import qualified ConfigContractSpec
import qualified OutputContractSpec
import Test.Hspec


main :: IO ()
main = hspec $ do
  ConfigContractSpec.spec
  OutputContractSpec.spec
  BridgeErrorSpec.spec
