{-# LANGUAGE CPP #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveLift #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}

{-# HLINT ignore "Unused LANGUAGE pragma" #-}

{- |
Module: Temporal.SearchAttributes
Description: Annotate Workflow Executions with key-value pairs for filtering and searching.

A Search Attribute is an indexed field used in a List Filter to filter a list of Workflow Executions that have the Search Attribute in their metadata.

Each Search Attribute is a key-value pair metadata object included in a Workflow Execution's Visibility information. This information is available in the Visibility store.

Note: Search Attribute values are not encrypted because the Temporal Server must be able to read these values from the Visibility store when retrieving Workflow Execution details.

Temporal provides some default Search Attributes, such as ExecutionStatus, the current state of your Workflow Executions. You can also create custom Search Attribute keys in your Visibility store and assign values when starting a Workflow Execution or in Workflow code.

When using Continue-As-New or a Temporal Cron Job, Search Attribute keys are carried over to the new Workflow Run by default. Search Attribute values are only available for as long as the Workflow is.

Search Attributes are most effective for search purposes or tasks requiring collection-based result sets. For business logic in which you need to get information about a Workflow Execution, consider one of the following:

* Storing state in a local variable and exposing it with a Query.
* Storing state in an external datastore through Activities and fetching it directly from the store.

If your business logic requires high throughput or low latency, store and fetch the data through Activities. You might experience lag due to time passing between the Workflow's state change and the Activity updating the Visibility store.

= Default Search Attributes

A Temporal Cluster has a set of default Search Attributes already available. Default Search Attributes are set globally in any Namespace. These Search Attributes are created when the initial index is created.

+--------------------------+--------------+--------------------------+
| NAME                     | TYPE         | DEFINITION               |
+==========================+==============+==========================+
| BatcherUser              | Keyword      | Used by internal batcher |
|                          |              | Workflow that runs in    |
|                          |              | @TemporalBatcher@        |
|                          |              | Namespace division to    |
|                          |              | indicate the user who    |
|                          |              | started the batch        |
|                          |              | operation.               |
+--------------------------+--------------+--------------------------+
| BinaryChecksums          | Keyword List | List of binary Ids of    |
|                          |              | Workers that run the     |
|                          |              | Workflow Execution.      |
|                          |              | Deprecated since server  |
|                          |              | version 1.21 in favor of |
|                          |              | the @BuildIds@ search    |
|                          |              | attribute.               |
+--------------------------+--------------+--------------------------+
| BuildIds                 | Keyword List | List of Worker Build Ids |
|                          |              | that have processed the  |
|                          |              | Workflow Execution,      |
|                          |              | formatted as             |
|                          |              | @versioned:{BuildId}@ or |
|                          |              | @unversioned:{BuildId}@, |
|                          |              | or the sentinel          |
|                          |              | @unversioned@ value.     |
|                          |              | Available from server    |
|                          |              | version 1.21.            |
+--------------------------+--------------+--------------------------+
| CloseTime                | Datetime     | The time at which the    |
|                          |              | Workflow Execution       |
|                          |              | completed.               |
+--------------------------+--------------+--------------------------+
| ExecutionDuration        | Int          | The time needed to run   |
|                          |              | the Workflow Execution   |
|                          |              | (in nanoseconds).        |
|                          |              | Available only for       |
|                          |              | closed Workflows.        |
+--------------------------+--------------+--------------------------+
| ExecutionStatus          | Keyword      | The current state of the |
|                          |              | Workflow Execution.      |
+--------------------------+--------------+--------------------------+
| ExecutionTime            | Datetime     | The time at which the    |
|                          |              | Workflow Execution       |
|                          |              | actually begins running; |
|                          |              | same as @StartTime@ for  |
|                          |              | most cases but different |
|                          |              | for Cron Workflows and   |
|                          |              | retried Workflows.       |
+--------------------------+--------------+--------------------------+
| HistoryLength            | Int          | The number of events in  |
|                          |              | the history of Workflow  |
|                          |              | Execution. Available     |
|                          |              | only for closed          |
|                          |              | Workflows.               |
+--------------------------+--------------+--------------------------+
| HistorySizeBytes         | Long         | The size of the Event    |
|                          |              | History.                 |
+--------------------------+--------------+--------------------------+
| RunId                    | Keyword      | Identifies the current   |
|                          |              | Workflow Execution Run.  |
+--------------------------+--------------+--------------------------+
| StartTime                | Datetime     | The time at which the    |
|                          |              | Workflow Execution       |
|                          |              | started.                 |
+--------------------------+--------------+--------------------------+
| StateTransitionCount     | Int          | The number of times that |
|                          |              | Workflow Execution has   |
|                          |              | persisted its state.     |
|                          |              | Available only for       |
|                          |              | closed Workflows.        |
+--------------------------+--------------+--------------------------+
| TaskQueue                | Keyword      | Task Queue used by       |
|                          |              | Workflow Execution.      |
+--------------------------+--------------+--------------------------+
| TemporalChangeVersion    | Keyword List | Stores change\/version   |
|                          |              | pairs if the GetVersion  |
|                          |              | API is enabled.          |
+--------------------------+--------------+--------------------------+
| Te                       | Datetime     | The time that the        |
| mporalScheduledStartTime |              | Workflow is schedule to  |
|                          |              | start according to the   |
|                          |              | Schedule Spec. Can be    |
|                          |              | manually triggered. Set  |
|                          |              | on Schedules.            |
+--------------------------+--------------+--------------------------+
| TemporalScheduledById    | Keyword      | The Id of the Schedule   |
|                          |              | that started the         |
|                          |              | Workflow.                |
+--------------------------+--------------+--------------------------+
| TemporalSchedulePaused   | Boolean      | Indicates whether the    |
|                          |              | Schedule has been        |
|                          |              | paused. Set on           |
|                          |              | Schedules.               |
+--------------------------+--------------+--------------------------+
| WorkflowId               | Keyword      | Identifies the Workflow  |
|                          |              | Execution.               |
+--------------------------+--------------+--------------------------+
| WorkflowType             | Keyword      | The type of Workflow.    |
+--------------------------+--------------+--------------------------+
-}
module Temporal.SearchAttributes where

import qualified Data.Aeson as A
import Data.Data
import Data.Int
import Data.Scientific (floatingOrInteger)
import Data.String (IsString)
import Data.Text (Text)
import Data.Time
#if !MIN_VERSION_time(1,14,0) && MIN_VERSION_time_compat(1,9,8)
import Data.Time.Compat ()
#endif
import Data.Vector (Vector)
import Data.Word
import GHC.TypeLits
import Instances.TH.Lift ()
import Language.Haskell.TH.Syntax (Lift (..))


class ToSearchAttribute a where
  toSearchAttribute :: a -> SearchAttributeType


instance ToSearchAttribute Bool where
  toSearchAttribute = Bool


instance ToSearchAttribute UTCTime where
  toSearchAttribute = Datetime


instance ToSearchAttribute Double where
  toSearchAttribute = Double


instance ToSearchAttribute Float where
  toSearchAttribute = Double . realToFrac


instance ToSearchAttribute Int where
  toSearchAttribute = Int . fromIntegral


instance ToSearchAttribute Int64 where
  toSearchAttribute = Int


instance ToSearchAttribute Int32 where
  toSearchAttribute = Int . fromIntegral


instance ToSearchAttribute Int16 where
  toSearchAttribute = Int . fromIntegral


instance ToSearchAttribute Int8 where
  toSearchAttribute = Int . fromIntegral


instance (TypeError ('Text "Converting a Word to a search attribute can cause a signed value overflow")) => ToSearchAttribute Word where
  toSearchAttribute = error "Converting a Word to a search attribute can cause a signed value overflow"


instance (TypeError ('Text "Converting a Word64 to a search attribute can cause a signed value overflow")) => ToSearchAttribute Word64 where
  toSearchAttribute = error "Converting a Word64 to a search attribute can cause a signed value overflow"


instance ToSearchAttribute Word32 where
  toSearchAttribute = Int . fromIntegral


instance ToSearchAttribute Word16 where
  toSearchAttribute = Int . fromIntegral


instance ToSearchAttribute Word8 where
  toSearchAttribute = Int . fromIntegral


instance ToSearchAttribute Text where
  toSearchAttribute = KeywordOrText


newtype SearchAttributeKey = SearchAttributeKey {unSearchAttributeKey :: Text}
  deriving stock (Data, Show, Lift)
  deriving newtype (Eq, Ord, A.FromJSON, A.FromJSONKey, A.ToJSON, A.ToJSONKey, IsString)


{- | A search attribute is a key-value pair that can be used to filter workflows.

Search attributes are indexed by the Temporal server

See <https://docs.temporal.io/visibility#types> for more information about search attributes.
-}
data SearchAttributeType
  = Bool Bool
  | Datetime UTCTime
  | Double Double
  | Int Int64
  | -- | Keyword and Text types are concepts taken from Elasticsearch.
    -- Each word in a Text is considered a searchable keyword.
    -- For a UUID, that can be problematic because Elasticsearch
    -- indexes each portion of the UUID separately. To have the whole string
    -- considered as a searchable keyword, use the Keyword type.
    --
    -- For example, if the key ProductId has the value of 2dd29ab7-2dd8-4668-83e0-89cae261cfb1:
    --
    -- - As a Keyword it would be matched only by ProductId = "2dd29ab7-2dd8-4668-83e0-89cae261cfb1"
    -- - As a Text it would be matched by ProductId = 2dd8, which could cause unwanted matches.
    KeywordOrText Text
  | KeywordList (Vector Text)
  deriving stock (Show, Eq, Ord, Lift, Data)

-- Lift instances for time's types: time has them from 1.14, and
-- time-compat from 1.9.8 (through Data.Time.Compat, imported above), so
-- define them only when neither does, or they are duplicates.
#if MIN_VERSION_time(1,14,0) || MIN_VERSION_time_compat(1,9,8)
#else
deriving stock instance Lift UTCTime
instance Lift DiffTime where
  lift t = let t' = toRational t in [| fromRational t' |]
  liftTyped t = let t' = toRational t in [|| (fromRational t' :: DiffTime) ||]
instance Lift NominalDiffTime where
  lift t = let t' = toRational t in [| fromRational t' |]
  liftTyped t = let t' = toRational t in [|| (fromRational t' :: NominalDiffTime) ||]
instance Lift Day where
  lift t = let t' = toModifiedJulianDay t in [| ModifiedJulianDay t' |]
  liftTyped t = let t' = toModifiedJulianDay t in [|| ModifiedJulianDay t' ||]
#endif


instance A.ToJSON SearchAttributeType where
  toJSON (Bool b) = A.toJSON b
  toJSON (Datetime t) = A.toJSON t
  toJSON (Double d) = A.toJSON d
  toJSON (Int i) = A.toJSON i
  toJSON (KeywordOrText t) = A.toJSON t
  toJSON (KeywordList ts) = A.toJSON ts


instance A.FromJSON SearchAttributeType where
  parseJSON x = case x of
    A.Bool b -> pure $ Bool b
    A.String t -> pure $ KeywordOrText t
    A.Number n -> case floatingOrInteger n of
      Left d -> pure $ Double d
      Right i -> pure $ Int i
    A.Array arr -> KeywordList <$> mapM A.parseJSON arr
    _ -> fail "Invalid search attribute type"
