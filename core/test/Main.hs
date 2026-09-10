module Main (main) where

import qualified ClientConnectionSpec
import qualified RuntimeSpec
import Test.Hspec (hspec)


main :: IO ()
main = hspec $ ClientConnectionSpec.spec >> RuntimeSpec.spec
