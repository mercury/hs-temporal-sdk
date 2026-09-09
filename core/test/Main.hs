module Main (main) where

import qualified ClientConnectionSpec
import Test.Hspec (hspec)


main :: IO ()
main = hspec ClientConnectionSpec.spec
