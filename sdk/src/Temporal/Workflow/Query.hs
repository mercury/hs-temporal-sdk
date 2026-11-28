module Temporal.Workflow.Query where

import Data.Kind
import Data.Text (Text)
import Temporal.Payload


{- |
Queries are sent from a Temporal Client to a Workflow Execution. The API call is synchronous. The Query is identified at both ends by a Query name. The Workflow must have a Query handler that is developed to handle that Query and provide data that represents the state of the Workflow Execution.

Queries are strongly consistent and are guaranteed to return the most recent state.
This means that the data reflects the state of all confirmed Events that came in before the Query was sent.
An Event is considered confirmed if the call creating the Event returned success.
Events that are created while the Query is outstanding may or may not be reflected in the Workflow state the Query result is based on.

A Query can carry arguments to specify the data it is requesting. And each Workflow can expose data to multiple types of Queries.

A Query must never mutate the state of the Workflow Execution—
that is, Queries are read-only and cannot contain any blocking code.
This means, for example, that Query handling logic cannot schedule Activity Executions.

Sending Queries to completed Workflow Executions is supported, though Query reject conditions can be configured per Query
-}
data KnownQuery (args :: [Type]) (result :: Type)
  = forall codec.
  (Codec codec result, ApplyPayloads codec args, GatherArgs codec args) =>
  KnownQuery
  { queryName :: Text
  , queryCodec :: codec
  }


class QueryRef query where
  type QueryArgs query :: [Type]
  type QueryResult query :: Type
  queryRef :: query -> KnownQuery (QueryArgs query) (QueryResult query)


instance QueryRef (KnownQuery args result) where
  type QueryArgs (KnownQuery args result) = args
  type QueryResult (KnownQuery args result) = result
  queryRef = id
