-- | Assertions that name the property being checked in their failure message.
module Assertions (
  assertContains,
  assertThrows,
) where

import Control.Exception (Exception, try)
import Data.Text (Text)
import qualified Data.Text as T
import GHC.Stack (HasCallStack)
import Test.Hspec


assertContains :: HasCallStack => String -> Text -> Text -> Expectation
assertContains description needle haystack
  | needle `T.isInfixOf` haystack = pure ()
  | otherwise =
      expectationFailure $
        description <> ": expected " <> show haystack <> " to contain " <> show needle


assertThrows :: (HasCallStack, Exception e) => String -> IO a -> IO e
assertThrows description action = do
  result <- try action
  case result of
    Left err -> pure err
    Right _ -> do
      expectationFailure $ description <> ": expected an exception"
      error "unreachable"
