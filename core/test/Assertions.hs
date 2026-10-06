-- | Assertions that name the property being checked in their failure message.
module Assertions (
  assertEq,
  assertRight,
  assertLeft,
  assertContains,
  assertThrows,
) where

import Control.Exception (Exception, try)
import Data.Text (Text)
import qualified Data.Text as T
import GHC.Stack (HasCallStack)
import Test.Hspec


assertEq :: (HasCallStack, Eq a, Show a) => String -> a -> a -> Expectation
assertEq description expected actual
  | expected == actual = pure ()
  | otherwise =
      expectationFailure $
        description <> "\n  expected: " <> show expected <> "\n  actual:   " <> show actual


assertRight :: (HasCallStack, Show e) => String -> Either e a -> IO a
assertRight description = either failure pure
  where
    failure err = do
      expectationFailure $ description <> ": expected Right, got Left " <> show err
      error "unreachable"


assertLeft :: (HasCallStack, Show a) => String -> Either e a -> IO e
assertLeft description = either pure failure
  where
    failure value = do
      expectationFailure $ description <> ": expected Left, got Right " <> show value
      error "unreachable"


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
