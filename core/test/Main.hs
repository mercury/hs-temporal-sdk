module Main (main) where

import qualified BridgeErrorSpec
import Test.Hspec


main :: IO ()
main = hspec BridgeErrorSpec.spec
