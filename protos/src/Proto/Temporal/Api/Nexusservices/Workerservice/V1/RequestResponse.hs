{- This file was auto-generated from temporal/api/nexusservices/workerservice/v1/request_response.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Nexusservices.Workerservice.V1.RequestResponse (
        ExecuteCommandsRequest(), ExecuteCommandsResponse()
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes as Data.ProtoLens.Encoding.Bytes
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing as Data.ProtoLens.Encoding.Growing
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2 as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8 as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
import qualified Proto.Temporal.Api.Worker.V1.Message
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexusservices.Workerservice.V1.RequestResponse_Fields.commands' @:: Lens' ExecuteCommandsRequest [Proto.Temporal.Api.Worker.V1.Message.WorkerCommand]@
         * 'Proto.Temporal.Api.Nexusservices.Workerservice.V1.RequestResponse_Fields.vec'commands' @:: Lens' ExecuteCommandsRequest (Data.Vector.Vector Proto.Temporal.Api.Worker.V1.Message.WorkerCommand)@ -}
data ExecuteCommandsRequest
  = ExecuteCommandsRequest'_constructor {_ExecuteCommandsRequest'commands :: !(Data.Vector.Vector Proto.Temporal.Api.Worker.V1.Message.WorkerCommand),
                                         _ExecuteCommandsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExecuteCommandsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ExecuteCommandsRequest "commands" [Proto.Temporal.Api.Worker.V1.Message.WorkerCommand] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExecuteCommandsRequest'commands
           (\ x__ y__ -> x__ {_ExecuteCommandsRequest'commands = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ExecuteCommandsRequest "vec'commands" (Data.Vector.Vector Proto.Temporal.Api.Worker.V1.Message.WorkerCommand) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExecuteCommandsRequest'commands
           (\ x__ y__ -> x__ {_ExecuteCommandsRequest'commands = y__}))
        Prelude.id
instance Data.ProtoLens.Message ExecuteCommandsRequest where
  messageName _
    = Data.Text.pack
        "temporal.api.nexusservices.workerservice.v1.ExecuteCommandsRequest"
  packedMessageDescriptor _
    = "\n\
      \\SYNExecuteCommandsRequest\DC2A\n\
      \\bcommands\CAN\SOH \ETX(\v2%.temporal.api.worker.v1.WorkerCommandR\bcommands"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        commands__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "commands"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Worker.V1.Message.WorkerCommand)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"commands")) ::
              Data.ProtoLens.FieldDescriptor ExecuteCommandsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, commands__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExecuteCommandsRequest'_unknownFields
        (\ x__ y__ -> x__ {_ExecuteCommandsRequest'_unknownFields = y__})
  defMessage
    = ExecuteCommandsRequest'_constructor
        {_ExecuteCommandsRequest'commands = Data.Vector.Generic.empty,
         _ExecuteCommandsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ExecuteCommandsRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Worker.V1.Message.WorkerCommand
             -> Data.ProtoLens.Encoding.Bytes.Parser ExecuteCommandsRequest
        loop x mutable'commands
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'commands <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'commands)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'commands") frozen'commands x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "commands"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'commands y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'commands
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'commands <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'commands)
          "ExecuteCommandsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'commands") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ExecuteCommandsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExecuteCommandsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ExecuteCommandsRequest'commands x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexusservices.Workerservice.V1.RequestResponse_Fields.results' @:: Lens' ExecuteCommandsResponse [Proto.Temporal.Api.Worker.V1.Message.WorkerCommandResult]@
         * 'Proto.Temporal.Api.Nexusservices.Workerservice.V1.RequestResponse_Fields.vec'results' @:: Lens' ExecuteCommandsResponse (Data.Vector.Vector Proto.Temporal.Api.Worker.V1.Message.WorkerCommandResult)@ -}
data ExecuteCommandsResponse
  = ExecuteCommandsResponse'_constructor {_ExecuteCommandsResponse'results :: !(Data.Vector.Vector Proto.Temporal.Api.Worker.V1.Message.WorkerCommandResult),
                                          _ExecuteCommandsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExecuteCommandsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ExecuteCommandsResponse "results" [Proto.Temporal.Api.Worker.V1.Message.WorkerCommandResult] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExecuteCommandsResponse'results
           (\ x__ y__ -> x__ {_ExecuteCommandsResponse'results = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ExecuteCommandsResponse "vec'results" (Data.Vector.Vector Proto.Temporal.Api.Worker.V1.Message.WorkerCommandResult) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExecuteCommandsResponse'results
           (\ x__ y__ -> x__ {_ExecuteCommandsResponse'results = y__}))
        Prelude.id
instance Data.ProtoLens.Message ExecuteCommandsResponse where
  messageName _
    = Data.Text.pack
        "temporal.api.nexusservices.workerservice.v1.ExecuteCommandsResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBExecuteCommandsResponse\DC2E\n\
      \\aresults\CAN\SOH \ETX(\v2+.temporal.api.worker.v1.WorkerCommandResultR\aresults"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        results__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "results"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Worker.V1.Message.WorkerCommandResult)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"results")) ::
              Data.ProtoLens.FieldDescriptor ExecuteCommandsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, results__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExecuteCommandsResponse'_unknownFields
        (\ x__ y__ -> x__ {_ExecuteCommandsResponse'_unknownFields = y__})
  defMessage
    = ExecuteCommandsResponse'_constructor
        {_ExecuteCommandsResponse'results = Data.Vector.Generic.empty,
         _ExecuteCommandsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ExecuteCommandsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Worker.V1.Message.WorkerCommandResult
             -> Data.ProtoLens.Encoding.Bytes.Parser ExecuteCommandsResponse
        loop x mutable'results
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'results <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'results)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'results") frozen'results x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "results"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'results y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'results
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'results <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'results)
          "ExecuteCommandsResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'results") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ExecuteCommandsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExecuteCommandsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ExecuteCommandsResponse'results x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Btemporal/api/nexusservices/workerservice/v1/request_response.proto\DC2+temporal.api.nexusservices.workerservice.v1\SUB$temporal/api/worker/v1/message.proto\"[\n\
    \\SYNExecuteCommandsRequest\DC2A\n\
    \\bcommands\CAN\SOH \ETX(\v2%.temporal.api.worker.v1.WorkerCommandR\bcommands\"`\n\
    \\ETBExecuteCommandsResponse\DC2E\n\
    \\aresults\CAN\SOH \ETX(\v2+.temporal.api.worker.v1.WorkerCommandResultR\aresultsB\237\SOH\n\
    \.io.temporal.api.nexusservices.workerservice.v1B\DC4RequestResponseProtoP\SOHZ?go.temporal.io/api/nexusservices/workerservice/v1;workerservice\170\STX-Temporalio.Api.Nexusservices.Workerservice.V1\234\STX1Temporalio::Api::Nexusservices::Workerservice::V1J\130\ENQ\n\
    \\ACK\DC2\EOT\NUL\NUL\SUB\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NULV\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\EOT\NULV\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NULG\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\ENQ\NULG\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\ACK\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL5\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\a\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULJ\n\
    \\t\n\
    \\STX\b-\DC2\ETX\b\NULJ\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULJ\n\
    \\t\n\
    \\STX\b%\DC2\ETX\t\NULJ\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\v\NUL.\n\
    \\144\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL\DC4\SOH\SUB< Request payload for the \"ExecuteCommands\" Nexus operation.\n\
    \2F (--\n\
    \ Internal Nexus service for server-to-worker communication.\n\
    \ --)\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC3\EOT?\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\DC3\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\DC3\r1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC32:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC3=>\n\
    \\165\SOH\n\
    \\STX\EOT\SOH\DC2\EOT\CAN\NUL\SUB\SOH\SUB\152\SOH Response payload for the \"ExecuteCommands\" Nexus operation.\n\
    \ The results list must be 1:1 with the commands list in the request (same size and order).\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\CAN\b\US\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\EM\EOTD\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\EM\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\EM\r7\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\EM8?\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\EMBCb\ACKproto3"