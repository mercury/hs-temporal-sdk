{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveLift #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE InstanceSigs #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE UndecidableSuperClasses #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}

{-# HLINT ignore "Use ++" #-}

{- |
Module      : Temporal.TH
Description : Template Haskell utilities for Temporal Workflow and Activity definitions
Stability   : experimental
Portability : POSIX

The `Temporal.TH` module provides Template Haskell-based utilities for defining,
configuring, and registering Temporal Workflows and Activities in a type-safe and
declarative manner. This module simplifies the process of integrating Temporal
with Haskell applications by automating much of the boilerplate code typically
required for setting up Workflows and Activities.

= Registration Functions

The module provides several registration functions that automatically discover and
register Workflow and Activity functions from declaration groups:

== Basic Registration

@
-- Simple registration with default options
\$(register [d|
  myWorkflow :: Int -> Workflow Bool
  myWorkflow x = pure (x > 0)

  myActivity :: String -> Activity () String
  myActivity s = pure $ "Hello " ++ s
  |])
@

== Advanced Registration with Configuration

@
-- Registration with custom configuration functions
\$(registerWithConfig (RegistrationConfig
  -- Custom workflow configuration
  (\name typ -> defaultWorkflowConfig
    { workflowConfigNameOverride = Just $ "custom-" <> Text.pack (show name)
    , workflowConfigAliases = ["alias-" <> Text.pack (show name)]
    })
  -- Custom activity configuration
  (\name typ -> defaultActivityConfig
    { activityConfigNameOverride = Just $ "custom-" <> Text.pack (show name)
    , activityConfigAliases = ["alias-" <> Text.pack (show name)]
    })
  ) [d|
  complexWorkflow :: String -> Int -> Workflow (String, Int)
  complexWorkflow s n = pure (s, n * 2)

  complexActivity :: Bool -> Activity () Int
  complexActivity b = pure $ if b then 1 else 0
  |])
@

= Key Features

1. **Automatic Discovery**: Functions are automatically detected based on their return types
2. **Type Safety**: All registration is type-safe and checked at compile time
3. **Flexible Configuration**: Custom configuration functions allow dynamic setup
4. **Batch Registration**: Register multiple functions in a single declaration group
5. **Extensible Design**: The configuration record structure allows easy extension

= Function Detection

The registration functions automatically detect:

- **Workflow Functions**: Functions returning @Workflow a@ for any type @a@
- **Activity Functions**: Functions returning @Activity env a@ for any environment @env@ and type @a@

Functions must have explicit type signatures to be detected. Functions without type signatures are ignored.

= Configuration Options

== Workflow Configuration

@
data WorkflowConfig codec = WorkflowConfig
  { workflowConfigNameOverride :: Maybe Text.Text  -- ^ Override the workflow name
  , workflowConfigAliases :: [Text.Text]           -- ^ Additional names for the workflow
  , workflowConfigCodec :: codec                   -- ^ Codec for serialization
  }
@

== Activity Configuration

@
data ActivityConfig codec = ActivityConfig
  { activityConfigNameOverride :: Maybe Text.Text  -- ^ Override the activity name
  , activityConfigAliases :: [Text.Text]           -- ^ Additional names for the activity
  , activityConfigCodec :: codec                   -- ^ Codec for serialization
  }
@

= Usage Patterns

== Simple Workflow Registration

@
\$(register [d|
  simpleWorkflow :: Int -> Workflow Bool
  simpleWorkflow x = pure (x == 0)
  |])

-- Use newDeclarationGroup to separate Template Haskell splices
\$(newDeclarationGroup)

-- Reference the registered workflow
myWorkflow :: Workflow ()
myWorkflow = do
  result <- startChildWorkflow SimpleWorkflow defaultChildWorkflowOptions 42
  pure ()
@

== Mixed Workflow and Activity Registration

@
\$(register [d|
  -- Workflows
  workflow1 :: String -> Workflow Int
  workflow1 s = pure (length s)

  workflow2 :: Bool -> Workflow String
  workflow2 b = pure $ if b then "true" else "false"

  -- Activities
  activity1 :: Activity () Int
  activity1 = pure 42

  activity2 :: String -> Activity () String
  activity2 s = pure $ "Processed: " ++ s
  |])
@

== Custom Configuration Based on Function Type

@
\$(registerWithConfig (RegistrationConfig
  -- Configure workflows based on their argument types
  (\name typ -> case typ of
    -- Functions taking String -> Workflow a get special handling
    TH.AppT (TH.AppT TH.ArrowT (TH.ConT ''String)) _ ->
      defaultWorkflowConfig { workflowConfigNameOverride = Just $ "string-" <> Text.pack (show name) }
    -- Functions taking Int -> Workflow a get different handling
    TH.AppT (TH.AppT TH.ArrowT (TH.ConT ''Int)) _ ->
      defaultWorkflowConfig { workflowConfigNameOverride = Just $ "int-" <> Text.pack (show name) }
    -- Default configuration
    _ -> defaultWorkflowConfig)

  -- Configure activities based on their environment type
  (\name typ -> case typ of
    -- Functions with () environment get simple config
    TH.AppT (TH.AppT (TH.ConT ''Activity) (TH.TupleT 0)) _ ->
      defaultActivityConfig { activityConfigNameOverride = Just $ "simple-" <> Text.pack (show name) }
    -- Functions with custom environment get complex config
    _ -> defaultActivityConfig { activityConfigNameOverride = Just $ "complex-" <> Text.pack (show name) })
  ) [d|
  stringWorkflow :: String -> Workflow Int
  stringWorkflow s = pure (length s)

  intWorkflow :: Int -> Workflow Bool
  intWorkflow n = pure (n > 0)

  simpleActivity :: Activity () String
  simpleActivity = pure "simple"

  complexActivity :: Activity MyEnv Int
  complexActivity = pure 42
  |])
@

= Generated Code

When you register functions, the following code is automatically generated:

1. **Data Types**: A new data type is created for each function (capitalized version of the function name)
2. **Type Class Instances**: Instances for @Fn@, @WorkflowFn@/@ActivityFn@, @WorkflowRef@/@ActivityRef@, and @WorkflowDef@/@ActivityDef@
3. **Deriving Clauses**: Automatic deriving via @WorkflowImpl@/@ActivityImpl@

Example generated code for a workflow:

@
data MyWorkflow = MyWorkflow

instance Fn MyWorkflow where
  type FnType MyWorkflow = Int -> Workflow Bool
  fnName _ = "myWorkflow"
  fnDefinition _ = myWorkflow
  fnSing = MyWorkflow

instance WorkflowFn MyWorkflow where
  workflowConfig _ = defaultWorkflowConfig

deriving via (WorkflowImpl MyWorkflow) instance WorkflowRef MyWorkflow
deriving via (WorkflowImpl MyWorkflow) instance WorkflowDef MyWorkflow
@

The main functions provided by this module are:

- 'register': Simple registration with default options
- 'registerWithConfig': Registration with custom configuration functions
- 'registerAdvanced': Advanced registration that returns discovery information
- 'registerWorkflow' and 'registerWorkflowWithOptions': For registering individual Workflow functions
- 'registerActivity' and 'registerActivityWithOptions': For registering individual Activity functions
- 'discoverDefinitions': For automatically discovering and collecting all defined Workflows and Activities

When you apply the registration functions to your Workflow and Activity functions,
a number of things happen automatically:

1. The registration functions generate a new data type with the same name as your Workflow or Activity function (capitalized).
   Example: If you define a Workflow function named @myWorkflow@, the generated data type will be named @MyWorkflow@.
2. A number of type classes are generated or derived for your Workflow or Activity function to support invoking them.

Example usage:

@
{\-# LANGUAGE DerivingVia #-\}
{\-# LANGUAGE TemplateHaskell #-\}
{\-# LANGUAGE ImportQualifiedPost #-\}

module MyWorkflows where

import Language.Haskell.TH (newDeclarationGroup)
import RequireCallStack (provideCallStack)
import Temporal.Activity
import Temporal.TH
import Temporal.TH.Options
import Temporal.Workflow
import Temporal.Client qualified as Client

-- Simple activity registration
actWithoutTimeoutDefault :: Activity () ()
actWithoutTimeoutDefault = pure ()
\$(registerActivity 'actWithoutTimeoutDefault)

-- Activity registration with name override
actWithNameOverride :: Activity () ()
actWithNameOverride = pure ()
\$(registerActivityWithOptions 'actWithNameOverride defaultActivityConfiguration
  { actNameOverride = Just "my-name"
  })

-- Activity registration with aliases
actWithAliases :: Activity () ()
actWithAliases = pure ()
\$(registerActivityWithOptions 'actWithAliases defaultActivityConfiguration
  { actAliases = ["alias1", "alias2"]
  })

-- Workflow registration
myWorkflow :: Int -> Workflow ()
myWorkflow _ = pure ()
\$(registerWorkflow 'myWorkflow)

-- Use newDeclarationGroup to separate Template Haskell splices
\$(newDeclarationGroup)

-- Workflow referencing a child workflow
workflowReferencingChild :: Workflow ()
workflowReferencingChild = provideCallStack do
  _ <- startChildWorkflow MyWorkflow defaultChildWorkflowOptions 0
  executeChildWorkflow MyWorkflow defaultChildWorkflowOptions 1

-- Activity referencing a workflow
actionReferencingWorkflow :: Activity () ()
actionReferencingWorkflow = provideCallStack do
  _ <- Client.start MyWorkflow "1" (Client.startWorkflowOptions (TaskQueue "foo")) 1
  Client.execute MyWorkflow "2" (Client.startWorkflowOptions (TaskQueue "foo")) 1
@

Note the use of 'newDeclarationGroup' from "Language.Haskell.TH" to separate
Template Haskell splices, which can be necessary in some cases to avoid
compilation errors– namely, when you want to invoke a Workflow or Activity later
in the same module.

The one use case where the TH mechanism struggles is when you want to use the
'continueAsNew' function from "Temporal.Workflow" in a Workflow to start a new
instance of the same Workflow. In this case, you can define the machinery manually:

@
workflowThatContinuesAsNew :: Int -> Workflow ()
workflowThatContinuesAsNew x = do
  if x < 1000
  then continueAsNew WorkflowThatContinuesAsNew defaultContinueAsNewOptions (x + 1)
  else return ()

data WorkflowThatContinuesAsNew = WorkflowThatContinuesAsNew
  deriving anyclass (WorkflowFn)
  deriving (WorkflowDef, WorkflowRef) via WorkflowImpl WorkflowThatContinuesAsNew

instance Fn WorkflowThatContinuesAsNew where
  fnName = Text.pack $ show 'workflowThatContinuesAsNew
  fnDefinition _ = provideCallStack workflowThatContinuesAsNew
  fnSing = WorkflowThatContinuesAsNew
@
-}
module Temporal.TH (
  discoverDefinitions,
  SomeDict,
  SomeDictOf (..),
  registerActivity,
  registerActivityWithOptions,
  registerActivityWithOptionsAndType,
  ActivityConfig (..),
  defaultActivityConfig,
  registerWorkflow,
  registerWorkflowWithOptions,
  registerWorkflowWithOptionsAndType,
  WorkflowConfig (..),
  defaultWorkflowConfig,
  registerWorkflows,
  registerActivities,
  register,
  registerWithConfig,
  registerAdvanced,
  RegistrationConfig (..),
  defaultRegistrationConfig,
  RegistrationResult (..),
  Fn (..),
  WorkflowFn (..),
  WorkflowRef (..),
  WorkflowDef (..),
  ActivityFn (..),
  ActivityRef (..),
  ActivityDef (..),
  fnSingE,
  fnSingDataAndConName,
  ActivityImpl (..),
  WorkflowImpl (..),
  bringRegisteredTemporalFunctionsIntoScope,
) where

import qualified Data.HashMap.Strict as HashMap
import qualified Data.Map.Strict as Map
import Data.Typeable
import DiscoverInstances
import qualified Language.Haskell.TH as TH
import Language.Haskell.TH.Lib
import qualified Language.Haskell.TH.Syntax as TH
import qualified Temporal.Activity as Act
import Temporal.Activity.Definition (ActivityDef (..))
import Temporal.Payload (JSON (..))
import Temporal.TH.Classes
import Temporal.TH.Internal (fnSingDataAndConName, fnSingE, isActivityFunction, isWorkflowFunction, makeFnDecls)
import Temporal.Worker (Definitions (..))
import Temporal.Workflow
import qualified Temporal.Workflow as Wf
import Temporal.Workflow.Definition (WorkflowDef (..))
import Text.Read (readMaybe)


{- | Utility to convert "Data.Typeable" 'TypeRep' to a 'Type'. Note that
this function is known to not yet work for many cases, but it does
work for normal user datatypes.
-}
typeRepToType :: TypeRep -> TH.Q TH.Type
typeRepToType tr = do
  let (con, args) = splitTyConApp tr
      modName = tyConModule con
      name pn mn cn = TH.Name (TH.OccName cn) (TH.NameG TH.TcClsName (TH.PkgName pn) (TH.ModName mn))
      conName = tyConName con
      t
        | modName == tupleMod = TH.TupleT $ length args
        | modName == listMod && conName == listCon = TH.ListT
        | modName == typeLitsMod =
            case tyConName con of
              s@('"' : _) -> TH.LitT . TH.StrTyLit $ read s
              s -> case readMaybe s of
                Just n -> TH.LitT $ TH.NumTyLit n
                _ -> error $ "Unrecognized type literal name: " ++ s
        | otherwise = TH.ConT $ name (tyConPackage con) modName conName
  resultArgs <- mapM typeRepToType args
  return (appsT t resultArgs)
  where
    typeLitsMod = tyConModule . typeRepTyCon . typeRep $ Proxy @42
    tupleMod = tyConModule . typeRepTyCon . typeRep $ Proxy @((), ())
    listMod = tyConModule . typeRepTyCon . typeRep $ Proxy @[()]
    listCon = tyConName . typeRepTyCon . typeRep $ Proxy @[()]
    appsT t [] = t
    appsT t (x : xs) = appsT (TH.AppT t x) xs


registerActivityWithOptions :: forall codec m. (TH.Quote m, TH.Quasi m, TH.Lift codec, Typeable codec) => TH.Name -> ActivityConfig codec -> m [TH.Dec]
registerActivityWithOptions n conf = do
  fnType <- TH.qReifyType n
  registerActivityWithOptionsAndType n conf fnType


registerActivityWithOptionsAndType :: forall codec m. (TH.Quote m, TH.Quasi m, TH.Lift codec, Typeable codec) => TH.Name -> ActivityConfig codec -> TH.Type -> m [TH.Dec]
registerActivityWithOptionsAndType n conf fnType = do
  let dataName = conT $ fnSingDataAndConName n
  baseDecls <- makeFnDecls n fnType
  -- Check if codec is JSON by comparing TypeReps
  let codecRep = typeRep (Proxy @codec)
      jsonRep = typeRep (Proxy @JSON)
      isDefaultCodec = codecRep == jsonRep
  actDefs <-
    if isDefaultCodec
      then -- Use default (no type family instance needed)
        [d|
          instance Temporal.TH.Classes.ActivityFn $dataName where
            activityConfig _ = conf


          deriving via (Temporal.TH.Classes.ActivityImpl $dataName) instance ActivityRef $dataName


          deriving via (Temporal.TH.Classes.ActivityImpl $dataName) instance ActivityDef $dataName
          |]
      else do
        -- Custom codec: set the type family
        codecType <- TH.runQ $ typeRepToType codecRep
        [d|
          instance Temporal.TH.Classes.ActivityFn $dataName where
            type ActivityCodec $dataName = $(pure codecType)
            activityConfig _ = conf


          deriving via (Temporal.TH.Classes.ActivityImpl $dataName) instance ActivityRef $dataName


          deriving via (Temporal.TH.Classes.ActivityImpl $dataName) instance ActivityDef $dataName
          |]
  pure $ concat [baseDecls, actDefs]


registerActivity :: forall m. (TH.Quote m, TH.Quasi m) => TH.Name -> m [TH.Dec]
registerActivity n = registerActivityWithOptions n defaultActivityConfig


registerWorkflowWithOptions :: forall codec m. (TH.Quote m, TH.Quasi m, TH.Lift codec, Typeable codec) => TH.Name -> WorkflowConfig codec -> m [TH.Dec]
registerWorkflowWithOptions n conf = do
  fnType <- TH.qReifyType n
  registerWorkflowWithOptionsAndType n conf fnType


registerWorkflowWithOptionsAndType :: forall codec m. (TH.Quote m, TH.Quasi m, TH.Lift codec, Typeable codec) => TH.Name -> WorkflowConfig codec -> TH.Type -> m [TH.Dec]
registerWorkflowWithOptionsAndType n conf fnType = do
  let dataName = conT $ fnSingDataAndConName n
  baseDecls <- makeFnDecls n fnType
  -- Check if codec is JSON by comparing TypeReps
  let codecRep = typeRep (Proxy @codec)
      jsonRep = typeRep (Proxy @JSON)
      isDefaultCodec = codecRep == jsonRep
  additionalDecls <-
    if isDefaultCodec
      then -- Use default (no type family instance needed)
        [d|
          instance Temporal.TH.Classes.WorkflowFn $dataName where
            workflowConfig _ = conf


          deriving via (Temporal.TH.Classes.WorkflowImpl $dataName) instance WorkflowRef $dataName


          deriving via (Temporal.TH.Classes.WorkflowImpl $dataName) instance WorkflowDef $dataName
          |]
      else do
        -- Custom codec: set the type family
        codecType <- TH.runQ $ typeRepToType codecRep
        [d|
          instance Temporal.TH.Classes.WorkflowFn $dataName where
            type WorkflowCodec $dataName = $(pure codecType)
            workflowConfig _ = conf


          deriving via (Temporal.TH.Classes.WorkflowImpl $dataName) instance WorkflowRef $dataName


          deriving via (Temporal.TH.Classes.WorkflowImpl $dataName) instance WorkflowDef $dataName
          |]

  pure $ concat [baseDecls, additionalDecls]


registerWorkflow :: forall m. (TH.Quote m, TH.Quasi m) => TH.Name -> m [TH.Dec]
registerWorkflow n = registerWorkflowWithOptions n defaultWorkflowConfig


-- | Alias for 'newDeclarationGroup' that makes the intent a bit more clear.
bringRegisteredTemporalFunctionsIntoScope :: TH.Q [TH.Dec]
bringRegisteredTemporalFunctionsIntoScope = TH.newDeclarationGroup


---------------------------------------------------------------------------------------
-- Produce dictionaries

discoverDefinitions
  :: forall env
   . (RequireCallStack, Typeable env)
  => [SomeDict WorkflowFn]
  -> [SomeDict ActivityFn]
  -> Definitions env
discoverDefinitions wfs acts =
  let
    aliasedWfs =
      concatMap
        ( \(SomeDictOf inst) ->
            let def = Wf.definition $ Temporal.TH.Classes.workflowImpl $ fn inst
            in (Wf.workflowName def, def) : map (\alias -> (alias, def {Wf.workflowName = alias})) (workflowConfigAliases $ workflowConfig $ fn inst)
        )
        wfs
    aliasedActs =
      concatMap
        ( \(SomeDictOf inst) -> case cast (Act.definition $ Temporal.TH.Classes.activityImpl $ fn inst) of
            Just (def :: Act.ActivityDefinition env) ->
              (Act.activityName def, def) : map (\alias -> (alias, def {Act.activityName = alias})) (activityConfigAliases $ activityConfig $ fn inst)
            Nothing -> []
        )
        acts
  in
    Definitions
      (HashMap.fromListWith (\l _ -> error ("Encountered duplicate Workflow definition names: " ++ show (Wf.workflowName l))) aliasedWfs)
      (HashMap.fromListWith (\l _ -> error ("Encountered duplicate Activity definition names: " ++ show (Act.activityName l))) aliasedActs)


-- | Helper function to map over a list and concatenate the results
concatMapM :: (Monad m) => (a -> m [b]) -> [a] -> m [b]
concatMapM f xs = do
  results <- mapM f xs
  pure $ concat results


{- | Register multiple workflow functions from a list of declarations.
This function processes the given declarations and automatically registers
all functions that return a 'Workflow' monad.

Example usage:
@
-}

{- $(registerWorkflows [d|
  foo :: Int -> Workflow Bool
  foo x = pure (x == 0)

  bar :: String -> Int -> Workflow String
  bar s n = pure $ s ++ show n
  |])
@
-}


registerWorkflows :: forall m. (TH.Quote m, TH.Quasi m) => m [TH.Dec] -> m [TH.Dec]
registerWorkflows decls = do
  originalDecls <- decls
  let workflowFunctions = extractWorkflowFunctions originalDecls
  registrationDecls <- concatMapM registerWorkflowWithType workflowFunctions
  pure $ originalDecls ++ registrationDecls
  where
    extractWorkflowFunctions :: [TH.Dec] -> [(TH.Name, TH.Type)]
    extractWorkflowFunctions = concatMap extractFromDecl
      where
        extractFromDecl :: TH.Dec -> [(TH.Name, TH.Type)]
        extractFromDecl = \case
          TH.SigD name typ
            | isWorkflowFunction typ -> [(name, typ)]
            | otherwise -> []
          TH.FunD _ _ ->
            -- For function declarations without type signatures, we can't determine
            -- if they're workflow functions, so we skip them
            []
          _ -> []

    registerWorkflowWithType :: (TH.Name, TH.Type) -> m [TH.Dec]
    registerWorkflowWithType (name, typ) = registerWorkflowWithOptionsAndType name defaultWorkflowConfig typ


{- | Register multiple activity functions from a list of declarations.
This function processes the given declarations and automatically registers
all functions that return an 'Activity' monad.

Example usage:
@
-}

{- $(registerActivities [d|
  act1 :: Activity () Bool
  act1 = pure True

  act2 :: String -> Activity () String
  act2 s = pure $ "Hello " ++ s
  |])
@
-}


registerActivities :: forall m. (TH.Quote m, TH.Quasi m) => m [TH.Dec] -> m [TH.Dec]
registerActivities decls = do
  originalDecls <- decls
  let activityFunctions = extractActivityFunctions originalDecls
  registrationDecls <- concatMapM registerActivityWithType activityFunctions
  pure $ originalDecls ++ registrationDecls
  where
    extractActivityFunctions :: [TH.Dec] -> [(TH.Name, TH.Type)]
    extractActivityFunctions = concatMap extractFromDecl
      where
        extractFromDecl :: TH.Dec -> [(TH.Name, TH.Type)]
        extractFromDecl = \case
          TH.SigD name typ
            | isActivityFunction typ -> [(name, typ)]
            | otherwise -> []
          TH.FunD _ _ ->
            -- For function declarations without type signatures, we can't determine
            -- if they're activity functions, so we skip them
            []
          _ -> []

    registerActivityWithType :: (TH.Name, TH.Type) -> m [TH.Dec]
    registerActivityWithType (name, typ) = registerActivityWithOptionsAndType name defaultActivityConfig typ


{- | Record containing configuration functions for registration

This record contains functions that generate configuration options for workflows
and activities based on their names and types. This allows for dynamic configuration
that can adapt to the specific characteristics of each function.

@since 1.0.0
-}
data RegistrationConfig codec = RegistrationConfig
  { workflowConfigFn :: TH.Name -> TH.Type -> WorkflowConfig codec
  -- ^ Function to generate workflow configuration based on function name and type
  --
  -- This function is called for each discovered workflow function. It receives:
  --
  -- * The function name (e.g., 'myWorkflow)
  -- * The function type (e.g., @Int -> Workflow Bool@)
  --
  -- Example:
  -- @
  -- workflowConfigFn :: TH.Name -> TH.Type -> WorkflowConfig JSON
  -- workflowConfigFn name typ = case typ of
  --   -- Functions taking String get special handling
  --   TH.AppT (TH.AppT TH.ArrowT (TH.ConT ''String)) _ ->
  --     defaultWorkflowConfig { workflowConfigNameOverride = Just $ "string-" <> Text.pack (show name) }
  --   -- Default configuration
  --   _ -> defaultWorkflowConfig
  -- @
  , activityConfigFn :: TH.Name -> TH.Type -> ActivityConfig codec
  -- ^ Function to generate activity configuration based on function name and type
  --
  -- This function is called for each discovered activity function. It receives:
  --
  -- * The function name (e.g., 'myActivity)
  -- * The function type (e.g., @String -> Activity () Int@)
  --
  -- Example:
  -- @
  -- activityConfigFn :: TH.Name -> TH.Type -> ActivityConfig JSON
  -- activityConfigFn name typ = case typ of
  --   -- Functions with () environment get simple config
  --   TH.AppT (TH.AppT (TH.ConT ''Activity) (TH.TupleT 0)) _ ->
  --     defaultActivityConfig { activityConfigNameOverride = Just $ "simple-" <> Text.pack (show name) }
  --   -- Functions with custom environment get complex config
  --   _ -> defaultActivityConfig { activityConfigNameOverride = Just $ "complex-" <> Text.pack (show name) }
  -- @
  }


{- | Default registration config using default configs for both workflows and activities

This provides a simple configuration that uses the default settings for all
workflows and activities. It's equivalent to:

@
RegistrationConfig
  { workflowConfigFn = \\_ _ -> defaultWorkflowConfig
  , activityConfigFn = \\_ _ -> defaultActivityConfig
  }
@

@since 1.0.0
-}
defaultRegistrationConfig :: RegistrationConfig JSON
defaultRegistrationConfig =
  RegistrationConfig
    { workflowConfigFn = \_ _ -> defaultWorkflowConfig
    , activityConfigFn = \_ _ -> defaultActivityConfig
    }


{- | Record containing the result of registration discovery

This record is returned by 'registerAdvanced' and contains information about
what was discovered and registered during the registration process.

@since 1.0.0
-}
data RegistrationResult = RegistrationResult
  { registrationDeclarations :: [TH.Dec]
  -- ^ The complete set of declarations including original declarations plus generated registration code
  --
  -- This includes:
  -- * The original function declarations
  -- * Generated data types for each function
  -- * Generated type class instances
  -- * Generated deriving clauses
  , discoveredWorkflows :: Map.Map TH.Name TH.Type
  -- ^ Mapping of discovered workflow function names to their types
  --
  -- This map contains all workflow functions that were found in the declaration group,
  -- indexed by their function names. The types are the full function types as they
  -- appeared in the original signatures.
  --
  -- Example:
  -- @
  -- Map.fromList
  --   [ ('myWorkflow, TH.AppT (TH.AppT TH.ArrowT (TH.ConT ''Int)) (TH.AppT (TH.ConT ''Workflow) (TH.ConT ''Bool)))
  --   , ('otherWorkflow, TH.AppT (TH.ConT ''Workflow) (TH.ConT ''String))
  --   ]
  -- @
  , discoveredActivities :: Map.Map TH.Name TH.Type
  -- ^ Mapping of discovered activity function names to their types
  --
  -- This map contains all activity functions that were found in the declaration group,
  -- indexed by their function names. The types are the full function types as they
  -- appeared in the original signatures.
  --
  -- Example:
  -- @
  -- Map.fromList
  --   [ ('myActivity, TH.AppT (TH.AppT (TH.ConT ''Activity) (TH.TupleT 0)) (TH.ConT ''String))
  --   , ('otherActivity, TH.AppT (TH.AppT TH.ArrowT (TH.ConT ''Int)) (TH.AppT (TH.AppT (TH.ConT ''Activity) (TH.TupleT 0)) (TH.ConT ''Bool)))
  --   ]
  -- @
  }


{- | Advanced registration function that discovers and registers both workflows and activities
Returns the original declarations plus registration code, along with mappings of discovered functions

This function provides the most detailed information about the registration process.
It returns a 'RegistrationResult' that contains:

* The complete set of declarations (original + generated)
* A map of discovered workflow functions
* A map of discovered activity functions

This is useful when you need to:

* Inspect what functions were discovered
* Process the discovered functions further
* Generate additional code based on the discoveries
* Debug registration issues

Example:
@
result <- runQ $ registerAdvanced [d|
  myWorkflow :: Int -> Workflow Bool
  myWorkflow x = pure (x > 0)

  myActivity :: String -> Activity () Int
  myActivity s = pure (length s)
  |]

-- Access the discovered functions
let workflows = discoveredWorkflows result
    activities = discoveredActivities result
    declarations = registrationDeclarations result

-- Process the discoveries
putStrLn $ "Found " ++ show (Map.size workflows) ++ " workflows"
putStrLn $ "Found " ++ show (Map.size activities) ++ " activities"

-- Use the declarations
pure declarations
@

@since 1.0.0
-}
registerAdvanced :: forall m. (TH.Quote m, TH.Quasi m) => m [TH.Dec] -> m RegistrationResult
registerAdvanced decls = do
  originalDecls <- decls
  let (workflowFunctions, activityFunctions) = extractFunctions originalDecls
  workflowDecls <- concatMapM registerWorkflowWithType workflowFunctions
  activityDecls <- concatMapM registerActivityWithType activityFunctions
  pure $
    RegistrationResult
      { registrationDeclarations = originalDecls ++ workflowDecls ++ activityDecls
      , discoveredWorkflows = Map.fromList workflowFunctions
      , discoveredActivities = Map.fromList activityFunctions
      }
  where
    extractFunctions :: [TH.Dec] -> ([(TH.Name, TH.Type)], [(TH.Name, TH.Type)])
    extractFunctions = foldr extractFromDecl ([], [])
      where
        extractFromDecl :: TH.Dec -> ([(TH.Name, TH.Type)], [(TH.Name, TH.Type)]) -> ([(TH.Name, TH.Type)], [(TH.Name, TH.Type)])
        extractFromDecl (TH.SigD name typ) (wfs, acts)
          | isWorkflowFunction typ = ((name, typ) : wfs, acts)
          | isActivityFunction typ = (wfs, (name, typ) : acts)
          | otherwise = (wfs, acts)
        extractFromDecl _ (wfs, acts) = (wfs, acts)

    registerWorkflowWithType :: (TH.Name, TH.Type) -> m [TH.Dec]
    registerWorkflowWithType (name, typ) = registerWorkflowWithOptionsAndType name defaultWorkflowConfig typ

    registerActivityWithType :: (TH.Name, TH.Type) -> m [TH.Dec]
    registerActivityWithType (name, typ) = registerActivityWithOptionsAndType name defaultActivityConfig typ


{- | Registration function that takes a configuration record with functions to generate options
based on the function name and type

This function provides the most flexible registration option. It takes a 'RegistrationConfig'
record that contains functions for generating configuration options based on the discovered
function names and types.

The configuration functions are called for each discovered function, allowing you to:

* Customize configuration based on function names
* Customize configuration based on function types
* Apply different configurations to different categories of functions
* Implement complex naming schemes
* Add validation or transformation logic

Example with simple configuration:
@
-}

{- $(registerWithConfig (RegistrationConfig
  -- Add prefix to all workflow names
  (\name _ -> defaultWorkflowConfig { workflowConfigNameOverride = Just $ "wf-" <> Text.pack (show name) })
  -- Add prefix to all activity names
  (\name _ -> defaultActivityConfig { activityConfigNameOverride = Just $ "act-" <> Text.pack (show name) })
  ) [d|
  myWorkflow :: Int -> Workflow Bool
  myWorkflow x = pure (x > 0)

  myActivity :: String -> Activity () Int
  myActivity s = pure (length s)
  |])
@

Example with type-based configuration:
@
-}


{- $(registerWithConfig (RegistrationConfig
  -- Configure workflows based on their argument types
  (\name typ -> case typ of
    -- Functions taking String get special handling
    TH.AppT (TH.AppT TH.ArrowT (TH.ConT ''String)) _ ->
      defaultWorkflowConfig
        { workflowConfigNameOverride = Just $ "string-" <> Text.pack (show name)
        , workflowConfigAliases = ["string-workflow-" <> Text.pack (show name)]
        }
    -- Functions taking Int get different handling
    TH.AppT (TH.AppT TH.ArrowT (TH.ConT ''Int)) _ ->
      defaultWorkflowConfig
        { workflowConfigNameOverride = Just $ "int-" <> Text.pack (show name)
        , workflowConfigAliases = ["int-workflow-" <> Text.pack (show name)]
        }
    -- Default configuration
    _ -> defaultWorkflowConfig)

  -- Configure activities based on their environment type
  (\name typ -> case typ of
    -- Functions with () environment get simple config
    TH.AppT (TH.AppT (TH.ConT ''Activity) (TH.TupleT 0)) _ ->
      defaultActivityConfig
        { activityConfigNameOverride = Just $ "simple-" <> Text.pack (show name)
        , activityConfigAliases = ["simple-activity-" <> Text.pack (show name)]
        }
    -- Functions with custom environment get complex config
    _ -> defaultActivityConfig
        { activityConfigNameOverride = Just $ "complex-" <> Text.pack (show name)
        , activityConfigAliases = ["complex-activity-" <> Text.pack (show name)]
        })
  ) [d|
  stringWorkflow :: String -> Workflow Int
  stringWorkflow s = pure (length s)

  intWorkflow :: Int -> Workflow Bool
  intWorkflow n = pure (n > 0)

  simpleActivity :: Activity () String
  simpleActivity = pure "simple"

  complexActivity :: Activity MyEnv Int
  complexActivity = pure 42
  |])
@

@since 1.0.0
-}


registerWithConfig
  :: forall codec m
   . (TH.Quote m, TH.Quasi m, TH.Lift codec, Typeable codec)
  => RegistrationConfig codec
  -- ^ Configuration record with functions to generate configs
  -> m [TH.Dec]
  -> m [TH.Dec]
registerWithConfig config decls = do
  originalDecls <- decls
  let (workflowFunctions, activityFunctions) = extractFunctions originalDecls
  workflowDecls <- concatMapM registerWorkflowWithConfig workflowFunctions
  activityDecls <- concatMapM registerActivityWithConfig activityFunctions
  pure $ originalDecls ++ workflowDecls ++ activityDecls
  where
    extractFunctions :: [TH.Dec] -> ([(TH.Name, TH.Type)], [(TH.Name, TH.Type)])
    extractFunctions = foldr extractFromDecl ([], [])
      where
        extractFromDecl :: TH.Dec -> ([(TH.Name, TH.Type)], [(TH.Name, TH.Type)]) -> ([(TH.Name, TH.Type)], [(TH.Name, TH.Type)])
        extractFromDecl (TH.SigD name typ) (wfs, acts)
          | isWorkflowFunction typ = ((name, typ) : wfs, acts)
          | isActivityFunction typ = (wfs, (name, typ) : acts)
          | otherwise = (wfs, acts)
        extractFromDecl _ (wfs, acts) = (wfs, acts)

    registerWorkflowWithConfig :: (TH.Name, TH.Type) -> m [TH.Dec]
    registerWorkflowWithConfig (name, typ) = registerWorkflowWithOptionsAndType name (workflowConfigFn config name typ) typ

    registerActivityWithConfig :: (TH.Name, TH.Type) -> m [TH.Dec]
    registerActivityWithConfig (name, typ) = registerActivityWithOptionsAndType name (activityConfigFn config name typ) typ


{- | Simple registration function using default options

This is the simplest registration function. It automatically discovers and registers
all workflow and activity functions in the declaration group using default configuration
options.

This function is equivalent to @registerWithConfig defaultRegistrationConfig@.

Example:
@
-}

{- $(register [d|
  -- Workflows
  myWorkflow :: Int -> Workflow Bool
  myWorkflow x = pure (x > 0)

  anotherWorkflow :: String -> Workflow String
  anotherWorkflow s = pure $ "Hello " ++ s

  -- Activities
  myActivity :: Activity () Int
  myActivity = pure 42

  anotherActivity :: String -> Activity () String
  anotherActivity s = pure $ "Processed: " ++ s
  |])

-- Use newDeclarationGroup to separate Template Haskell splices
-}


{- $(newDeclarationGroup)

-- Reference the registered functions
testWorkflow :: Workflow ()
testWorkflow = do
  result <- startChildWorkflow MyWorkflow defaultChildWorkflowOptions 42
  _ <- executeActivity MyActivity (defaultStartActivityOptions $ StartToClose $ seconds 1)
  pure ()
@

The function will:

* Automatically detect functions returning @Workflow a@ as workflows
* Automatically detect functions returning @Activity env a@ as activities
* Generate appropriate data types and type class instances
* Use default configuration options for all functions
* Skip functions without explicit type signatures

@since 1.0.0
-}


register :: forall m. (TH.Quote m, TH.Quasi m) => m [TH.Dec] -> m [TH.Dec]
register = registerWithConfig defaultRegistrationConfig
