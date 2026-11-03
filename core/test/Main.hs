module Main (main) where

import qualified BridgeErrorSpec
import qualified ConfigContractSpec
import Test.Hspec


main :: IO ()
main = hspec $ do
  ConfigContractSpec.spec
  BridgeErrorSpec.spec
