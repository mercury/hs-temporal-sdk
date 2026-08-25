{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Unused LANGUAGE pragma" #-}

module IntegrationSpec.Updates where

import Control.Exception
import Control.Monad
import RequireCallStack (provideCallStack)
import Temporal.Duration
import Temporal.Payload
import Temporal.TH
import Temporal.Workflow


testUpdate :: KnownUpdate '[Int] Int SomeException
testUpdate =
  KnownUpdate
    { knownUpdateCodec = JSON
    , knownUpdateName = "test-update"
    }


updateWithoutValidator :: Workflow Int
updateWithoutValidator = provideCallStack do
  stateVar <- newStateVar (0 :: Int)
  let handleUpdate arg = do
        modifyStateVar stateVar (+ arg)
        readStateVar stateVar
  setUpdateHandler testUpdate handleUpdate Nothing
  waitCondition do
    x <- readStateVar stateVar
    pure $ x > 0
  readStateVar stateVar


registerWorkflow 'updateWithoutValidator


updateWithValidator :: Workflow Int
updateWithValidator = provideCallStack do
  stateVar <- newStateVar (0 :: Int)
  let handleUpdate arg = do
        modifyStateVar stateVar (+ arg)
        readStateVar stateVar
  let validateUpdate arg = do
        val <- readStateVar stateVar
        when
          (arg == 5)
          (error "5 is the WORST number")
        if arg + val >= 0
          then pure $ Right ()
          else pure $ Left $ toException $ ErrorCall "in a bad state!!!"
  setUpdateHandler testUpdate handleUpdate $ Just validateUpdate
  waitCondition do
    x <- readStateVar stateVar
    pure $ x > 0
  readStateVar stateVar


registerWorkflow 'updateWithValidator


updateThatThrows :: Workflow Int
updateThatThrows = provideCallStack do
  stateVar <- newStateVar (0 :: Int)
  let handleUpdate _ = error "we're blowing up"
  setUpdateHandler testUpdate handleUpdate Nothing
  waitCondition do
    x <- readStateVar stateVar
    pure $ x > 0
  readStateVar stateVar


registerWorkflow 'updateThatThrows


updateWithValidatorThatThrows :: Workflow Int
updateWithValidatorThatThrows = provideCallStack do
  stateVar <- newStateVar (0 :: Int)
  let handleUpdate arg = do
        modifyStateVar stateVar (+ arg)
        readStateVar stateVar
  let validateUpdate _ = error "validator blowing up!"
  setUpdateHandler testUpdate handleUpdate $ Just validateUpdate
  waitCondition do
    x <- readStateVar stateVar
    pure $ x > 0
  readStateVar stateVar


registerWorkflow 'updateWithValidatorThatThrows


updateThatSleeps :: Workflow Int
updateThatSleeps = provideCallStack do
  stateVar <- newStateVar (0 :: Int)
  let handleUpdate arg = do
        sleep $ seconds 1
        modifyStateVar stateVar (+ arg)
        readStateVar stateVar
  setUpdateHandler testUpdate handleUpdate Nothing
  waitCondition do
    x <- readStateVar stateVar
    pure $ x > 0
  readStateVar stateVar


registerWorkflow 'updateThatSleeps


{- | Completes after two updates have been applied. Each handler sleeps for
its argument in seconds, so an earlier update can finish before a later
one: the handlers' lifetimes overlap without nesting.
-}
concurrentSleepingUpdates :: Workflow Int
concurrentSleepingUpdates = provideCallStack do
  stateVar <- newStateVar (0 :: Int)
  let handleUpdate arg = do
        sleep $ seconds $ fromIntegral arg
        modifyStateVar stateVar (+ arg)
        readStateVar stateVar
  setUpdateHandler testUpdate handleUpdate Nothing
  waitCondition do
    x <- readStateVar stateVar
    pure $ x >= 3
  readStateVar stateVar


registerWorkflow 'concurrentSleepingUpdates


workflowThatThrowsBeforeTheUpdate :: Workflow Int
workflowThatThrowsBeforeTheUpdate = provideCallStack do
  stateVar <- newStateVar (0 :: Int)
  let handleUpdate arg = do
        modifyStateVar stateVar (+ arg)
        readStateVar stateVar
      validateUpdate _ = pure $ Right ()
  setUpdateHandler testUpdate handleUpdate (Just validateUpdate)
  x <- readStateVar stateVar
  void $ error $ "Current state var: " <> show x
  waitCondition do
    x' <- readStateVar stateVar
    pure $ x' > 0
  readStateVar stateVar


registerWorkflow 'workflowThatThrowsBeforeTheUpdate


workflowThatThrowsAfterTheUpdate :: Workflow Int
workflowThatThrowsAfterTheUpdate = provideCallStack do
  stateVar <- newStateVar (0 :: Int)
  let handleUpdate arg = do
        modifyStateVar stateVar (+ arg)
        readStateVar stateVar
      validateUpdate _ = pure $ Right ()
  setUpdateHandler testUpdate handleUpdate (Just validateUpdate)
  waitCondition do
    x <- readStateVar stateVar
    pure $ x > 0
  x <- readStateVar stateVar
  void $ error $ "Current state var: " <> show x
  readStateVar stateVar


registerWorkflow 'workflowThatThrowsAfterTheUpdate
