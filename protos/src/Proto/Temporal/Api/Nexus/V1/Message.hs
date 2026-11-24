{- This file was auto-generated from temporal/api/nexus/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Nexus.V1.Message (
        CancelOperationRequest(), CancelOperationResponse(), Endpoint(),
        EndpointSpec(), EndpointTarget(), EndpointTarget'Variant(..),
        _EndpointTarget'Worker', _EndpointTarget'External',
        EndpointTarget'External(), EndpointTarget'Worker(), Failure(),
        Failure'MetadataEntry(), HandlerError(), Link(),
        NexusOperationExecutionCancellationInfo(),
        NexusOperationExecutionInfo(),
        NexusOperationExecutionInfo'NexusHeaderEntry(),
        NexusOperationExecutionListInfo(),
        PropagatedSerializationContext(), Request(), Request'Variant(..),
        _Request'StartOperation, _Request'CancelOperation,
        Request'Capabilities(), Request'HeaderEntry(), Response(),
        Response'Variant(..), _Response'StartOperation,
        _Response'CancelOperation, StartOperationRequest(),
        StartOperationRequest'CallbackHeaderEntry(),
        StartOperationResponse(), StartOperationResponse'Variant(..),
        _StartOperationResponse'SyncSuccess,
        _StartOperationResponse'AsyncSuccess,
        _StartOperationResponse'OperationError,
        _StartOperationResponse'Failure, StartOperationResponse'Async(),
        StartOperationResponse'Sync(), UnsuccessfulOperationError()
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
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Temporal.Api.Common.V1.Message
import qualified Proto.Temporal.Api.Enums.V1.Common
import qualified Proto.Temporal.Api.Enums.V1.Nexus
import qualified Proto.Temporal.Api.Failure.V1.Message
import qualified Proto.Temporal.Api.Sdk.V1.UserMetadata
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.service' @:: Lens' CancelOperationRequest Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operation' @:: Lens' CancelOperationRequest Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operationId' @:: Lens' CancelOperationRequest Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operationToken' @:: Lens' CancelOperationRequest Data.Text.Text@ -}
data CancelOperationRequest
  = CancelOperationRequest'_constructor {_CancelOperationRequest'service :: !Data.Text.Text,
                                         _CancelOperationRequest'operation :: !Data.Text.Text,
                                         _CancelOperationRequest'operationId :: !Data.Text.Text,
                                         _CancelOperationRequest'operationToken :: !Data.Text.Text,
                                         _CancelOperationRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CancelOperationRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CancelOperationRequest "service" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelOperationRequest'service
           (\ x__ y__ -> x__ {_CancelOperationRequest'service = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CancelOperationRequest "operation" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelOperationRequest'operation
           (\ x__ y__ -> x__ {_CancelOperationRequest'operation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CancelOperationRequest "operationId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelOperationRequest'operationId
           (\ x__ y__ -> x__ {_CancelOperationRequest'operationId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CancelOperationRequest "operationToken" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelOperationRequest'operationToken
           (\ x__ y__ -> x__ {_CancelOperationRequest'operationToken = y__}))
        Prelude.id
instance Data.ProtoLens.Message CancelOperationRequest where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.CancelOperationRequest"
  packedMessageDescriptor _
    = "\n\
      \\SYNCancelOperationRequest\DC2\CAN\n\
      \\aservice\CAN\SOH \SOH(\tR\aservice\DC2\FS\n\
      \\toperation\CAN\STX \SOH(\tR\toperation\DC2%\n\
      \\foperation_id\CAN\ETX \SOH(\tR\voperationIdB\STX\CAN\SOH\DC2'\n\
      \\SIoperation_token\CAN\EOT \SOH(\tR\SOoperationToken"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        service__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"service")) ::
              Data.ProtoLens.FieldDescriptor CancelOperationRequest
        operation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operation")) ::
              Data.ProtoLens.FieldDescriptor CancelOperationRequest
        operationId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operationId")) ::
              Data.ProtoLens.FieldDescriptor CancelOperationRequest
        operationToken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_token"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operationToken")) ::
              Data.ProtoLens.FieldDescriptor CancelOperationRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, service__field_descriptor),
           (Data.ProtoLens.Tag 2, operation__field_descriptor),
           (Data.ProtoLens.Tag 3, operationId__field_descriptor),
           (Data.ProtoLens.Tag 4, operationToken__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CancelOperationRequest'_unknownFields
        (\ x__ y__ -> x__ {_CancelOperationRequest'_unknownFields = y__})
  defMessage
    = CancelOperationRequest'_constructor
        {_CancelOperationRequest'service = Data.ProtoLens.fieldDefault,
         _CancelOperationRequest'operation = Data.ProtoLens.fieldDefault,
         _CancelOperationRequest'operationId = Data.ProtoLens.fieldDefault,
         _CancelOperationRequest'operationToken = Data.ProtoLens.fieldDefault,
         _CancelOperationRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CancelOperationRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser CancelOperationRequest
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "service"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"service") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operation") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operationId") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation_token"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"operationToken") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CancelOperationRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"service") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operation") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"operationId") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"operationToken") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData CancelOperationRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CancelOperationRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CancelOperationRequest'service x__)
                (Control.DeepSeq.deepseq
                   (_CancelOperationRequest'operation x__)
                   (Control.DeepSeq.deepseq
                      (_CancelOperationRequest'operationId x__)
                      (Control.DeepSeq.deepseq
                         (_CancelOperationRequest'operationToken x__) ()))))
{- | Fields :
      -}
data CancelOperationResponse
  = CancelOperationResponse'_constructor {_CancelOperationResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CancelOperationResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message CancelOperationResponse where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.CancelOperationResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBCancelOperationResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CancelOperationResponse'_unknownFields
        (\ x__ y__ -> x__ {_CancelOperationResponse'_unknownFields = y__})
  defMessage
    = CancelOperationResponse'_constructor
        {_CancelOperationResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CancelOperationResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser CancelOperationResponse
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CancelOperationResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData CancelOperationResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CancelOperationResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.version' @:: Lens' Endpoint Data.Int.Int64@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.id' @:: Lens' Endpoint Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.spec' @:: Lens' Endpoint EndpointSpec@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'spec' @:: Lens' Endpoint (Prelude.Maybe EndpointSpec)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.createdTime' @:: Lens' Endpoint Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'createdTime' @:: Lens' Endpoint (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.lastModifiedTime' @:: Lens' Endpoint Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'lastModifiedTime' @:: Lens' Endpoint (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.urlPrefix' @:: Lens' Endpoint Data.Text.Text@ -}
data Endpoint
  = Endpoint'_constructor {_Endpoint'version :: !Data.Int.Int64,
                           _Endpoint'id :: !Data.Text.Text,
                           _Endpoint'spec :: !(Prelude.Maybe EndpointSpec),
                           _Endpoint'createdTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                           _Endpoint'lastModifiedTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                           _Endpoint'urlPrefix :: !Data.Text.Text,
                           _Endpoint'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Endpoint where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Endpoint "version" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'version (\ x__ y__ -> x__ {_Endpoint'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Endpoint "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'id (\ x__ y__ -> x__ {_Endpoint'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Endpoint "spec" EndpointSpec where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'spec (\ x__ y__ -> x__ {_Endpoint'spec = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Endpoint "maybe'spec" (Prelude.Maybe EndpointSpec) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'spec (\ x__ y__ -> x__ {_Endpoint'spec = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Endpoint "createdTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'createdTime
           (\ x__ y__ -> x__ {_Endpoint'createdTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Endpoint "maybe'createdTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'createdTime
           (\ x__ y__ -> x__ {_Endpoint'createdTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Endpoint "lastModifiedTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'lastModifiedTime
           (\ x__ y__ -> x__ {_Endpoint'lastModifiedTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Endpoint "maybe'lastModifiedTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'lastModifiedTime
           (\ x__ y__ -> x__ {_Endpoint'lastModifiedTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Endpoint "urlPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'urlPrefix (\ x__ y__ -> x__ {_Endpoint'urlPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Message Endpoint where
  messageName _ = Data.Text.pack "temporal.api.nexus.v1.Endpoint"
  packedMessageDescriptor _
    = "\n\
      \\bEndpoint\DC2\CAN\n\
      \\aversion\CAN\SOH \SOH(\ETXR\aversion\DC2\SO\n\
      \\STXid\CAN\STX \SOH(\tR\STXid\DC27\n\
      \\EOTspec\CAN\ETX \SOH(\v2#.temporal.api.nexus.v1.EndpointSpecR\EOTspec\DC2=\n\
      \\fcreated_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\vcreatedTime\DC2H\n\
      \\DC2last_modified_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\DLElastModifiedTime\DC2\GS\n\
      \\n\
      \url_prefix\CAN\ACK \SOH(\tR\turlPrefix"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor Endpoint
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor Endpoint
        spec__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "spec"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EndpointSpec)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'spec")) ::
              Data.ProtoLens.FieldDescriptor Endpoint
        createdTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "created_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'createdTime")) ::
              Data.ProtoLens.FieldDescriptor Endpoint
        lastModifiedTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_modified_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastModifiedTime")) ::
              Data.ProtoLens.FieldDescriptor Endpoint
        urlPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "url_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"urlPrefix")) ::
              Data.ProtoLens.FieldDescriptor Endpoint
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, version__field_descriptor),
           (Data.ProtoLens.Tag 2, id__field_descriptor),
           (Data.ProtoLens.Tag 3, spec__field_descriptor),
           (Data.ProtoLens.Tag 4, createdTime__field_descriptor),
           (Data.ProtoLens.Tag 5, lastModifiedTime__field_descriptor),
           (Data.ProtoLens.Tag 6, urlPrefix__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Endpoint'_unknownFields
        (\ x__ y__ -> x__ {_Endpoint'_unknownFields = y__})
  defMessage
    = Endpoint'_constructor
        {_Endpoint'version = Data.ProtoLens.fieldDefault,
         _Endpoint'id = Data.ProtoLens.fieldDefault,
         _Endpoint'spec = Prelude.Nothing,
         _Endpoint'createdTime = Prelude.Nothing,
         _Endpoint'lastModifiedTime = Prelude.Nothing,
         _Endpoint'urlPrefix = Data.ProtoLens.fieldDefault,
         _Endpoint'_unknownFields = []}
  parseMessage
    = let
        loop :: Endpoint -> Data.ProtoLens.Encoding.Bytes.Parser Endpoint
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "spec"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"spec") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "created_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"createdTime") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_modified_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastModifiedTime") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "url_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"urlPrefix") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Endpoint"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'spec") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'createdTime") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'lastModifiedTime") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         ((Data.Monoid.<>)
                            (let
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"urlPrefix") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((Prelude..)
                                        (\ bs
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8 _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData Endpoint where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Endpoint'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Endpoint'version x__)
                (Control.DeepSeq.deepseq
                   (_Endpoint'id x__)
                   (Control.DeepSeq.deepseq
                      (_Endpoint'spec x__)
                      (Control.DeepSeq.deepseq
                         (_Endpoint'createdTime x__)
                         (Control.DeepSeq.deepseq
                            (_Endpoint'lastModifiedTime x__)
                            (Control.DeepSeq.deepseq (_Endpoint'urlPrefix x__) ()))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.name' @:: Lens' EndpointSpec Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.description' @:: Lens' EndpointSpec Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'description' @:: Lens' EndpointSpec (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.target' @:: Lens' EndpointSpec EndpointTarget@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'target' @:: Lens' EndpointSpec (Prelude.Maybe EndpointTarget)@ -}
data EndpointSpec
  = EndpointSpec'_constructor {_EndpointSpec'name :: !Data.Text.Text,
                               _EndpointSpec'description :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                               _EndpointSpec'target :: !(Prelude.Maybe EndpointTarget),
                               _EndpointSpec'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EndpointSpec where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EndpointSpec "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointSpec'name (\ x__ y__ -> x__ {_EndpointSpec'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EndpointSpec "description" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointSpec'description
           (\ x__ y__ -> x__ {_EndpointSpec'description = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EndpointSpec "maybe'description" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointSpec'description
           (\ x__ y__ -> x__ {_EndpointSpec'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EndpointSpec "target" EndpointTarget where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointSpec'target
           (\ x__ y__ -> x__ {_EndpointSpec'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EndpointSpec "maybe'target" (Prelude.Maybe EndpointTarget) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointSpec'target
           (\ x__ y__ -> x__ {_EndpointSpec'target = y__}))
        Prelude.id
instance Data.ProtoLens.Message EndpointSpec where
  messageName _ = Data.Text.pack "temporal.api.nexus.v1.EndpointSpec"
  packedMessageDescriptor _
    = "\n\
      \\fEndpointSpec\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2A\n\
      \\vdescription\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\vdescription\DC2=\n\
      \\ACKtarget\CAN\ETX \SOH(\v2%.temporal.api.nexus.v1.EndpointTargetR\ACKtarget"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor EndpointSpec
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'description")) ::
              Data.ProtoLens.FieldDescriptor EndpointSpec
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EndpointTarget)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor EndpointSpec
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, description__field_descriptor),
           (Data.ProtoLens.Tag 3, target__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EndpointSpec'_unknownFields
        (\ x__ y__ -> x__ {_EndpointSpec'_unknownFields = y__})
  defMessage
    = EndpointSpec'_constructor
        {_EndpointSpec'name = Data.ProtoLens.fieldDefault,
         _EndpointSpec'description = Prelude.Nothing,
         _EndpointSpec'target = Prelude.Nothing,
         _EndpointSpec'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EndpointSpec -> Data.ProtoLens.Encoding.Bytes.Parser EndpointSpec
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "target"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EndpointSpec"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'description") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData EndpointSpec where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EndpointSpec'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EndpointSpec'name x__)
                (Control.DeepSeq.deepseq
                   (_EndpointSpec'description x__)
                   (Control.DeepSeq.deepseq (_EndpointSpec'target x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'variant' @:: Lens' EndpointTarget (Prelude.Maybe EndpointTarget'Variant)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'worker' @:: Lens' EndpointTarget (Prelude.Maybe EndpointTarget'Worker)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.worker' @:: Lens' EndpointTarget EndpointTarget'Worker@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'external' @:: Lens' EndpointTarget (Prelude.Maybe EndpointTarget'External)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.external' @:: Lens' EndpointTarget EndpointTarget'External@ -}
data EndpointTarget
  = EndpointTarget'_constructor {_EndpointTarget'variant :: !(Prelude.Maybe EndpointTarget'Variant),
                                 _EndpointTarget'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EndpointTarget where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data EndpointTarget'Variant
  = EndpointTarget'Worker' !EndpointTarget'Worker |
    EndpointTarget'External' !EndpointTarget'External
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField EndpointTarget "maybe'variant" (Prelude.Maybe EndpointTarget'Variant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointTarget'variant
           (\ x__ y__ -> x__ {_EndpointTarget'variant = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EndpointTarget "maybe'worker" (Prelude.Maybe EndpointTarget'Worker) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointTarget'variant
           (\ x__ y__ -> x__ {_EndpointTarget'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (EndpointTarget'Worker' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap EndpointTarget'Worker' y__))
instance Data.ProtoLens.Field.HasField EndpointTarget "worker" EndpointTarget'Worker where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointTarget'variant
           (\ x__ y__ -> x__ {_EndpointTarget'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (EndpointTarget'Worker' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap EndpointTarget'Worker' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField EndpointTarget "maybe'external" (Prelude.Maybe EndpointTarget'External) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointTarget'variant
           (\ x__ y__ -> x__ {_EndpointTarget'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (EndpointTarget'External' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap EndpointTarget'External' y__))
instance Data.ProtoLens.Field.HasField EndpointTarget "external" EndpointTarget'External where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointTarget'variant
           (\ x__ y__ -> x__ {_EndpointTarget'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (EndpointTarget'External' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap EndpointTarget'External' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message EndpointTarget where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.EndpointTarget"
  packedMessageDescriptor _
    = "\n\
      \\SOEndpointTarget\DC2F\n\
      \\ACKworker\CAN\SOH \SOH(\v2,.temporal.api.nexus.v1.EndpointTarget.WorkerH\NULR\ACKworker\DC2L\n\
      \\bexternal\CAN\STX \SOH(\v2..temporal.api.nexus.v1.EndpointTarget.ExternalH\NULR\bexternal\SUBE\n\
      \\ACKWorker\DC2\FS\n\
      \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2\GS\n\
      \\n\
      \task_queue\CAN\STX \SOH(\tR\ttaskQueue\SUB\FS\n\
      \\bExternal\DC2\DLE\n\
      \\ETXurl\CAN\SOH \SOH(\tR\ETXurlB\t\n\
      \\avariant"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        worker__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "worker"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EndpointTarget'Worker)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'worker")) ::
              Data.ProtoLens.FieldDescriptor EndpointTarget
        external__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "external"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EndpointTarget'External)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'external")) ::
              Data.ProtoLens.FieldDescriptor EndpointTarget
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, worker__field_descriptor),
           (Data.ProtoLens.Tag 2, external__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EndpointTarget'_unknownFields
        (\ x__ y__ -> x__ {_EndpointTarget'_unknownFields = y__})
  defMessage
    = EndpointTarget'_constructor
        {_EndpointTarget'variant = Prelude.Nothing,
         _EndpointTarget'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EndpointTarget
          -> Data.ProtoLens.Encoding.Bytes.Parser EndpointTarget
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "worker"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"worker") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "external"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"external") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EndpointTarget"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'variant") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (EndpointTarget'Worker' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (EndpointTarget'External' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData EndpointTarget where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EndpointTarget'_unknownFields x__)
             (Control.DeepSeq.deepseq (_EndpointTarget'variant x__) ())
instance Control.DeepSeq.NFData EndpointTarget'Variant where
  rnf (EndpointTarget'Worker' x__) = Control.DeepSeq.rnf x__
  rnf (EndpointTarget'External' x__) = Control.DeepSeq.rnf x__
_EndpointTarget'Worker' ::
  Data.ProtoLens.Prism.Prism' EndpointTarget'Variant EndpointTarget'Worker
_EndpointTarget'Worker'
  = Data.ProtoLens.Prism.prism'
      EndpointTarget'Worker'
      (\ p__
         -> case p__ of
              (EndpointTarget'Worker' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_EndpointTarget'External' ::
  Data.ProtoLens.Prism.Prism' EndpointTarget'Variant EndpointTarget'External
_EndpointTarget'External'
  = Data.ProtoLens.Prism.prism'
      EndpointTarget'External'
      (\ p__
         -> case p__ of
              (EndpointTarget'External' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.url' @:: Lens' EndpointTarget'External Data.Text.Text@ -}
data EndpointTarget'External
  = EndpointTarget'External'_constructor {_EndpointTarget'External'url :: !Data.Text.Text,
                                          _EndpointTarget'External'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EndpointTarget'External where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EndpointTarget'External "url" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointTarget'External'url
           (\ x__ y__ -> x__ {_EndpointTarget'External'url = y__}))
        Prelude.id
instance Data.ProtoLens.Message EndpointTarget'External where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.EndpointTarget.External"
  packedMessageDescriptor _
    = "\n\
      \\bExternal\DC2\DLE\n\
      \\ETXurl\CAN\SOH \SOH(\tR\ETXurl"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        url__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"url")) ::
              Data.ProtoLens.FieldDescriptor EndpointTarget'External
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, url__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EndpointTarget'External'_unknownFields
        (\ x__ y__ -> x__ {_EndpointTarget'External'_unknownFields = y__})
  defMessage
    = EndpointTarget'External'_constructor
        {_EndpointTarget'External'url = Data.ProtoLens.fieldDefault,
         _EndpointTarget'External'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EndpointTarget'External
          -> Data.ProtoLens.Encoding.Bytes.Parser EndpointTarget'External
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "url"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"url") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "External"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"url") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData EndpointTarget'External where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EndpointTarget'External'_unknownFields x__)
             (Control.DeepSeq.deepseq (_EndpointTarget'External'url x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.namespace' @:: Lens' EndpointTarget'Worker Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.taskQueue' @:: Lens' EndpointTarget'Worker Data.Text.Text@ -}
data EndpointTarget'Worker
  = EndpointTarget'Worker'_constructor {_EndpointTarget'Worker'namespace :: !Data.Text.Text,
                                        _EndpointTarget'Worker'taskQueue :: !Data.Text.Text,
                                        _EndpointTarget'Worker'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EndpointTarget'Worker where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EndpointTarget'Worker "namespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointTarget'Worker'namespace
           (\ x__ y__ -> x__ {_EndpointTarget'Worker'namespace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EndpointTarget'Worker "taskQueue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointTarget'Worker'taskQueue
           (\ x__ y__ -> x__ {_EndpointTarget'Worker'taskQueue = y__}))
        Prelude.id
instance Data.ProtoLens.Message EndpointTarget'Worker where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.EndpointTarget.Worker"
  packedMessageDescriptor _
    = "\n\
      \\ACKWorker\DC2\FS\n\
      \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2\GS\n\
      \\n\
      \task_queue\CAN\STX \SOH(\tR\ttaskQueue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        namespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "namespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"namespace")) ::
              Data.ProtoLens.FieldDescriptor EndpointTarget'Worker
        taskQueue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"taskQueue")) ::
              Data.ProtoLens.FieldDescriptor EndpointTarget'Worker
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, namespace__field_descriptor),
           (Data.ProtoLens.Tag 2, taskQueue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EndpointTarget'Worker'_unknownFields
        (\ x__ y__ -> x__ {_EndpointTarget'Worker'_unknownFields = y__})
  defMessage
    = EndpointTarget'Worker'_constructor
        {_EndpointTarget'Worker'namespace = Data.ProtoLens.fieldDefault,
         _EndpointTarget'Worker'taskQueue = Data.ProtoLens.fieldDefault,
         _EndpointTarget'Worker'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EndpointTarget'Worker
          -> Data.ProtoLens.Encoding.Bytes.Parser EndpointTarget'Worker
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "namespace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"namespace") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "task_queue"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskQueue") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Worker"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"namespace") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"taskQueue") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData EndpointTarget'Worker where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EndpointTarget'Worker'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EndpointTarget'Worker'namespace x__)
                (Control.DeepSeq.deepseq
                   (_EndpointTarget'Worker'taskQueue x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.message' @:: Lens' Failure Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.stackTrace' @:: Lens' Failure Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.metadata' @:: Lens' Failure (Data.Map.Map Data.Text.Text Data.Text.Text)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.details' @:: Lens' Failure Data.ByteString.ByteString@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.cause' @:: Lens' Failure Failure@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'cause' @:: Lens' Failure (Prelude.Maybe Failure)@ -}
data Failure
  = Failure'_constructor {_Failure'message :: !Data.Text.Text,
                          _Failure'stackTrace :: !Data.Text.Text,
                          _Failure'metadata :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                          _Failure'details :: !Data.ByteString.ByteString,
                          _Failure'cause :: !(Prelude.Maybe Failure),
                          _Failure'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Failure where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Failure "message" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'message (\ x__ y__ -> x__ {_Failure'message = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Failure "stackTrace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'stackTrace (\ x__ y__ -> x__ {_Failure'stackTrace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Failure "metadata" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'metadata (\ x__ y__ -> x__ {_Failure'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Failure "details" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'details (\ x__ y__ -> x__ {_Failure'details = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Failure "cause" Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'cause (\ x__ y__ -> x__ {_Failure'cause = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Failure "maybe'cause" (Prelude.Maybe Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'cause (\ x__ y__ -> x__ {_Failure'cause = y__}))
        Prelude.id
instance Data.ProtoLens.Message Failure where
  messageName _ = Data.Text.pack "temporal.api.nexus.v1.Failure"
  packedMessageDescriptor _
    = "\n\
      \\aFailure\DC2\CAN\n\
      \\amessage\CAN\SOH \SOH(\tR\amessage\DC2\US\n\
      \\vstack_trace\CAN\EOT \SOH(\tR\n\
      \stackTrace\DC2H\n\
      \\bmetadata\CAN\STX \ETX(\v2,.temporal.api.nexus.v1.Failure.MetadataEntryR\bmetadata\DC2\CAN\n\
      \\adetails\CAN\ETX \SOH(\fR\adetails\DC24\n\
      \\ENQcause\CAN\ENQ \SOH(\v2\RS.temporal.api.nexus.v1.FailureR\ENQcause\SUB;\n\
      \\rMetadataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        message__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"message")) ::
              Data.ProtoLens.FieldDescriptor Failure
        stackTrace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stack_trace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stackTrace")) ::
              Data.ProtoLens.FieldDescriptor Failure
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Failure'MetadataEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor Failure
        details__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "details"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"details")) ::
              Data.ProtoLens.FieldDescriptor Failure
        cause__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cause"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cause")) ::
              Data.ProtoLens.FieldDescriptor Failure
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, message__field_descriptor),
           (Data.ProtoLens.Tag 4, stackTrace__field_descriptor),
           (Data.ProtoLens.Tag 2, metadata__field_descriptor),
           (Data.ProtoLens.Tag 3, details__field_descriptor),
           (Data.ProtoLens.Tag 5, cause__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Failure'_unknownFields
        (\ x__ y__ -> x__ {_Failure'_unknownFields = y__})
  defMessage
    = Failure'_constructor
        {_Failure'message = Data.ProtoLens.fieldDefault,
         _Failure'stackTrace = Data.ProtoLens.fieldDefault,
         _Failure'metadata = Data.Map.empty,
         _Failure'details = Data.ProtoLens.fieldDefault,
         _Failure'cause = Prelude.Nothing, _Failure'_unknownFields = []}
  parseMessage
    = let
        loop :: Failure -> Data.ProtoLens.Encoding.Bytes.Parser Failure
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "message"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"message") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "stack_trace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stackTrace") y x)
                        18
                          -> do !(entry :: Failure'MetadataEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                           Data.ProtoLens.Encoding.Bytes.isolate
                                                                             (Prelude.fromIntegral
                                                                                len)
                                                                             Data.ProtoLens.parseMessage)
                                                                       "metadata"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"metadata")
                                        (\ !t -> Data.Map.insert key value t) x))
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "details"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"details") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cause"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cause") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Failure"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"message") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"stackTrace") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (Data.Monoid.mconcat
                      (Prelude.map
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"value") (Prelude.snd _v)
                                          (Data.ProtoLens.defMessage :: Failure'MetadataEntry)))))
                         (Data.Map.toList
                            (Lens.Family2.view (Data.ProtoLens.Field.field @"metadata") _x))))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"details") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                               ((\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cause") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData Failure where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Failure'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Failure'message x__)
                (Control.DeepSeq.deepseq
                   (_Failure'stackTrace x__)
                   (Control.DeepSeq.deepseq
                      (_Failure'metadata x__)
                      (Control.DeepSeq.deepseq
                         (_Failure'details x__)
                         (Control.DeepSeq.deepseq (_Failure'cause x__) ())))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.key' @:: Lens' Failure'MetadataEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.value' @:: Lens' Failure'MetadataEntry Data.Text.Text@ -}
data Failure'MetadataEntry
  = Failure'MetadataEntry'_constructor {_Failure'MetadataEntry'key :: !Data.Text.Text,
                                        _Failure'MetadataEntry'value :: !Data.Text.Text,
                                        _Failure'MetadataEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Failure'MetadataEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Failure'MetadataEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'MetadataEntry'key
           (\ x__ y__ -> x__ {_Failure'MetadataEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Failure'MetadataEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'MetadataEntry'value
           (\ x__ y__ -> x__ {_Failure'MetadataEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Failure'MetadataEntry where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.Failure.MetadataEntry"
  packedMessageDescriptor _
    = "\n\
      \\rMetadataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor Failure'MetadataEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor Failure'MetadataEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Failure'MetadataEntry'_unknownFields
        (\ x__ y__ -> x__ {_Failure'MetadataEntry'_unknownFields = y__})
  defMessage
    = Failure'MetadataEntry'_constructor
        {_Failure'MetadataEntry'key = Data.ProtoLens.fieldDefault,
         _Failure'MetadataEntry'value = Data.ProtoLens.fieldDefault,
         _Failure'MetadataEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Failure'MetadataEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser Failure'MetadataEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MetadataEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Failure'MetadataEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Failure'MetadataEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Failure'MetadataEntry'key x__)
                (Control.DeepSeq.deepseq (_Failure'MetadataEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.errorType' @:: Lens' HandlerError Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.failure' @:: Lens' HandlerError Failure@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'failure' @:: Lens' HandlerError (Prelude.Maybe Failure)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.retryBehavior' @:: Lens' HandlerError Proto.Temporal.Api.Enums.V1.Nexus.NexusHandlerErrorRetryBehavior@ -}
data HandlerError
  = HandlerError'_constructor {_HandlerError'errorType :: !Data.Text.Text,
                               _HandlerError'failure :: !(Prelude.Maybe Failure),
                               _HandlerError'retryBehavior :: !Proto.Temporal.Api.Enums.V1.Nexus.NexusHandlerErrorRetryBehavior,
                               _HandlerError'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HandlerError where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HandlerError "errorType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HandlerError'errorType
           (\ x__ y__ -> x__ {_HandlerError'errorType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HandlerError "failure" Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HandlerError'failure
           (\ x__ y__ -> x__ {_HandlerError'failure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HandlerError "maybe'failure" (Prelude.Maybe Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HandlerError'failure
           (\ x__ y__ -> x__ {_HandlerError'failure = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HandlerError "retryBehavior" Proto.Temporal.Api.Enums.V1.Nexus.NexusHandlerErrorRetryBehavior where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HandlerError'retryBehavior
           (\ x__ y__ -> x__ {_HandlerError'retryBehavior = y__}))
        Prelude.id
instance Data.ProtoLens.Message HandlerError where
  messageName _ = Data.Text.pack "temporal.api.nexus.v1.HandlerError"
  packedMessageDescriptor _
    = "\n\
      \\fHandlerError\DC2\GS\n\
      \\n\
      \error_type\CAN\SOH \SOH(\tR\terrorType\DC28\n\
      \\afailure\CAN\STX \SOH(\v2\RS.temporal.api.nexus.v1.FailureR\afailure\DC2\\\n\
      \\SOretry_behavior\CAN\ETX \SOH(\SO25.temporal.api.enums.v1.NexusHandlerErrorRetryBehaviorR\rretryBehavior"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        errorType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"errorType")) ::
              Data.ProtoLens.FieldDescriptor HandlerError
        failure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failure")) ::
              Data.ProtoLens.FieldDescriptor HandlerError
        retryBehavior__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_behavior"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Nexus.NexusHandlerErrorRetryBehavior)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"retryBehavior")) ::
              Data.ProtoLens.FieldDescriptor HandlerError
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, errorType__field_descriptor),
           (Data.ProtoLens.Tag 2, failure__field_descriptor),
           (Data.ProtoLens.Tag 3, retryBehavior__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HandlerError'_unknownFields
        (\ x__ y__ -> x__ {_HandlerError'_unknownFields = y__})
  defMessage
    = HandlerError'_constructor
        {_HandlerError'errorType = Data.ProtoLens.fieldDefault,
         _HandlerError'failure = Prelude.Nothing,
         _HandlerError'retryBehavior = Data.ProtoLens.fieldDefault,
         _HandlerError'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HandlerError -> Data.ProtoLens.Encoding.Bytes.Parser HandlerError
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "error_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"errorType") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "failure"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"failure") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "retry_behavior"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"retryBehavior") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HandlerError"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"errorType") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'failure") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"retryBehavior") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                               Prelude.fromEnum _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData HandlerError where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HandlerError'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HandlerError'errorType x__)
                (Control.DeepSeq.deepseq
                   (_HandlerError'failure x__)
                   (Control.DeepSeq.deepseq (_HandlerError'retryBehavior x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.url' @:: Lens' Link Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.type'' @:: Lens' Link Data.Text.Text@ -}
data Link
  = Link'_constructor {_Link'url :: !Data.Text.Text,
                       _Link'type' :: !Data.Text.Text,
                       _Link'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Link where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Link "url" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'url (\ x__ y__ -> x__ {_Link'url = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Link "type'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'type' (\ x__ y__ -> x__ {_Link'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Message Link where
  messageName _ = Data.Text.pack "temporal.api.nexus.v1.Link"
  packedMessageDescriptor _
    = "\n\
      \\EOTLink\DC2\DLE\n\
      \\ETXurl\CAN\SOH \SOH(\tR\ETXurl\DC2\DC2\n\
      \\EOTtype\CAN\STX \SOH(\tR\EOTtype"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        url__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"url")) ::
              Data.ProtoLens.FieldDescriptor Link
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor Link
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, url__field_descriptor),
           (Data.ProtoLens.Tag 2, type'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Link'_unknownFields
        (\ x__ y__ -> x__ {_Link'_unknownFields = y__})
  defMessage
    = Link'_constructor
        {_Link'url = Data.ProtoLens.fieldDefault,
         _Link'type' = Data.ProtoLens.fieldDefault,
         _Link'_unknownFields = []}
  parseMessage
    = let
        loop :: Link -> Data.ProtoLens.Encoding.Bytes.Parser Link
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "url"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"url") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Link"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"url") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Link where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Link'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Link'url x__) (Control.DeepSeq.deepseq (_Link'type' x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.requestedTime' @:: Lens' NexusOperationExecutionCancellationInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'requestedTime' @:: Lens' NexusOperationExecutionCancellationInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.state' @:: Lens' NexusOperationExecutionCancellationInfo Proto.Temporal.Api.Enums.V1.Common.NexusOperationCancellationState@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.attempt' @:: Lens' NexusOperationExecutionCancellationInfo Data.Int.Int32@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.lastAttemptCompleteTime' @:: Lens' NexusOperationExecutionCancellationInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'lastAttemptCompleteTime' @:: Lens' NexusOperationExecutionCancellationInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.lastAttemptFailure' @:: Lens' NexusOperationExecutionCancellationInfo Proto.Temporal.Api.Failure.V1.Message.Failure@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'lastAttemptFailure' @:: Lens' NexusOperationExecutionCancellationInfo (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.nextAttemptScheduleTime' @:: Lens' NexusOperationExecutionCancellationInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'nextAttemptScheduleTime' @:: Lens' NexusOperationExecutionCancellationInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.blockedReason' @:: Lens' NexusOperationExecutionCancellationInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.reason' @:: Lens' NexusOperationExecutionCancellationInfo Data.Text.Text@ -}
data NexusOperationExecutionCancellationInfo
  = NexusOperationExecutionCancellationInfo'_constructor {_NexusOperationExecutionCancellationInfo'requestedTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                          _NexusOperationExecutionCancellationInfo'state :: !Proto.Temporal.Api.Enums.V1.Common.NexusOperationCancellationState,
                                                          _NexusOperationExecutionCancellationInfo'attempt :: !Data.Int.Int32,
                                                          _NexusOperationExecutionCancellationInfo'lastAttemptCompleteTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                          _NexusOperationExecutionCancellationInfo'lastAttemptFailure :: !(Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure),
                                                          _NexusOperationExecutionCancellationInfo'nextAttemptScheduleTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                          _NexusOperationExecutionCancellationInfo'blockedReason :: !Data.Text.Text,
                                                          _NexusOperationExecutionCancellationInfo'reason :: !Data.Text.Text,
                                                          _NexusOperationExecutionCancellationInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NexusOperationExecutionCancellationInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NexusOperationExecutionCancellationInfo "requestedTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionCancellationInfo'requestedTime
           (\ x__ y__
              -> x__
                   {_NexusOperationExecutionCancellationInfo'requestedTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NexusOperationExecutionCancellationInfo "maybe'requestedTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionCancellationInfo'requestedTime
           (\ x__ y__
              -> x__
                   {_NexusOperationExecutionCancellationInfo'requestedTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionCancellationInfo "state" Proto.Temporal.Api.Enums.V1.Common.NexusOperationCancellationState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionCancellationInfo'state
           (\ x__ y__
              -> x__ {_NexusOperationExecutionCancellationInfo'state = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionCancellationInfo "attempt" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionCancellationInfo'attempt
           (\ x__ y__
              -> x__ {_NexusOperationExecutionCancellationInfo'attempt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionCancellationInfo "lastAttemptCompleteTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionCancellationInfo'lastAttemptCompleteTime
           (\ x__ y__
              -> x__
                   {_NexusOperationExecutionCancellationInfo'lastAttemptCompleteTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NexusOperationExecutionCancellationInfo "maybe'lastAttemptCompleteTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionCancellationInfo'lastAttemptCompleteTime
           (\ x__ y__
              -> x__
                   {_NexusOperationExecutionCancellationInfo'lastAttemptCompleteTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionCancellationInfo "lastAttemptFailure" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionCancellationInfo'lastAttemptFailure
           (\ x__ y__
              -> x__
                   {_NexusOperationExecutionCancellationInfo'lastAttemptFailure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NexusOperationExecutionCancellationInfo "maybe'lastAttemptFailure" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionCancellationInfo'lastAttemptFailure
           (\ x__ y__
              -> x__
                   {_NexusOperationExecutionCancellationInfo'lastAttemptFailure = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionCancellationInfo "nextAttemptScheduleTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionCancellationInfo'nextAttemptScheduleTime
           (\ x__ y__
              -> x__
                   {_NexusOperationExecutionCancellationInfo'nextAttemptScheduleTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NexusOperationExecutionCancellationInfo "maybe'nextAttemptScheduleTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionCancellationInfo'nextAttemptScheduleTime
           (\ x__ y__
              -> x__
                   {_NexusOperationExecutionCancellationInfo'nextAttemptScheduleTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionCancellationInfo "blockedReason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionCancellationInfo'blockedReason
           (\ x__ y__
              -> x__
                   {_NexusOperationExecutionCancellationInfo'blockedReason = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionCancellationInfo "reason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionCancellationInfo'reason
           (\ x__ y__
              -> x__ {_NexusOperationExecutionCancellationInfo'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Message NexusOperationExecutionCancellationInfo where
  messageName _
    = Data.Text.pack
        "temporal.api.nexus.v1.NexusOperationExecutionCancellationInfo"
  packedMessageDescriptor _
    = "\n\
      \'NexusOperationExecutionCancellationInfo\DC2A\n\
      \\SOrequested_time\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\rrequestedTime\DC2L\n\
      \\ENQstate\CAN\STX \SOH(\SO26.temporal.api.enums.v1.NexusOperationCancellationStateR\ENQstate\DC2\CAN\n\
      \\aattempt\CAN\ETX \SOH(\ENQR\aattempt\DC2W\n\
      \\SUBlast_attempt_complete_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\ETBlastAttemptCompleteTime\DC2R\n\
      \\DC4last_attempt_failure\CAN\ENQ \SOH(\v2 .temporal.api.failure.v1.FailureR\DC2lastAttemptFailure\DC2W\n\
      \\SUBnext_attempt_schedule_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\ETBnextAttemptScheduleTime\DC2%\n\
      \\SOblocked_reason\CAN\a \SOH(\tR\rblockedReason\DC2\SYN\n\
      \\ACKreason\CAN\b \SOH(\tR\ACKreason"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        requestedTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "requested_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestedTime")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionCancellationInfo
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Common.NexusOperationCancellationState)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"state")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionCancellationInfo
        attempt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attempt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"attempt")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionCancellationInfo
        lastAttemptCompleteTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_attempt_complete_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastAttemptCompleteTime")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionCancellationInfo
        lastAttemptFailure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_attempt_failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastAttemptFailure")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionCancellationInfo
        nextAttemptScheduleTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "next_attempt_schedule_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nextAttemptScheduleTime")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionCancellationInfo
        blockedReason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "blocked_reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"blockedReason")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionCancellationInfo
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"reason")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionCancellationInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, requestedTime__field_descriptor),
           (Data.ProtoLens.Tag 2, state__field_descriptor),
           (Data.ProtoLens.Tag 3, attempt__field_descriptor),
           (Data.ProtoLens.Tag 4, lastAttemptCompleteTime__field_descriptor),
           (Data.ProtoLens.Tag 5, lastAttemptFailure__field_descriptor),
           (Data.ProtoLens.Tag 6, nextAttemptScheduleTime__field_descriptor),
           (Data.ProtoLens.Tag 7, blockedReason__field_descriptor),
           (Data.ProtoLens.Tag 8, reason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NexusOperationExecutionCancellationInfo'_unknownFields
        (\ x__ y__
           -> x__
                {_NexusOperationExecutionCancellationInfo'_unknownFields = y__})
  defMessage
    = NexusOperationExecutionCancellationInfo'_constructor
        {_NexusOperationExecutionCancellationInfo'requestedTime = Prelude.Nothing,
         _NexusOperationExecutionCancellationInfo'state = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionCancellationInfo'attempt = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionCancellationInfo'lastAttemptCompleteTime = Prelude.Nothing,
         _NexusOperationExecutionCancellationInfo'lastAttemptFailure = Prelude.Nothing,
         _NexusOperationExecutionCancellationInfo'nextAttemptScheduleTime = Prelude.Nothing,
         _NexusOperationExecutionCancellationInfo'blockedReason = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionCancellationInfo'reason = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionCancellationInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NexusOperationExecutionCancellationInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser NexusOperationExecutionCancellationInfo
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "requested_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestedTime") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "state"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"state") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "attempt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"attempt") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_attempt_complete_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastAttemptCompleteTime") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_attempt_failure"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastAttemptFailure") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "next_attempt_schedule_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"nextAttemptScheduleTime") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "blocked_reason"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"blockedReason") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "reason"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reason") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "NexusOperationExecutionCancellationInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'requestedTime") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"state") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"attempt") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'lastAttemptCompleteTime") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'lastAttemptFailure") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'nextAttemptScheduleTime") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"blockedReason") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                        ((Prelude..)
                                           (\ bs
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                           Data.Text.Encoding.encodeUtf8 _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view (Data.ProtoLens.Field.field @"reason") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                           ((Prelude..)
                                              (\ bs
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Data.Text.Encoding.encodeUtf8 _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData NexusOperationExecutionCancellationInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NexusOperationExecutionCancellationInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NexusOperationExecutionCancellationInfo'requestedTime x__)
                (Control.DeepSeq.deepseq
                   (_NexusOperationExecutionCancellationInfo'state x__)
                   (Control.DeepSeq.deepseq
                      (_NexusOperationExecutionCancellationInfo'attempt x__)
                      (Control.DeepSeq.deepseq
                         (_NexusOperationExecutionCancellationInfo'lastAttemptCompleteTime
                            x__)
                         (Control.DeepSeq.deepseq
                            (_NexusOperationExecutionCancellationInfo'lastAttemptFailure x__)
                            (Control.DeepSeq.deepseq
                               (_NexusOperationExecutionCancellationInfo'nextAttemptScheduleTime
                                  x__)
                               (Control.DeepSeq.deepseq
                                  (_NexusOperationExecutionCancellationInfo'blockedReason x__)
                                  (Control.DeepSeq.deepseq
                                     (_NexusOperationExecutionCancellationInfo'reason x__)
                                     ()))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operationId' @:: Lens' NexusOperationExecutionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.runId' @:: Lens' NexusOperationExecutionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.endpoint' @:: Lens' NexusOperationExecutionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.service' @:: Lens' NexusOperationExecutionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operation' @:: Lens' NexusOperationExecutionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.status' @:: Lens' NexusOperationExecutionInfo Proto.Temporal.Api.Enums.V1.Nexus.NexusOperationExecutionStatus@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.state' @:: Lens' NexusOperationExecutionInfo Proto.Temporal.Api.Enums.V1.Common.PendingNexusOperationState@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.scheduleToCloseTimeout' @:: Lens' NexusOperationExecutionInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'scheduleToCloseTimeout' @:: Lens' NexusOperationExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.scheduleToStartTimeout' @:: Lens' NexusOperationExecutionInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'scheduleToStartTimeout' @:: Lens' NexusOperationExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.startToCloseTimeout' @:: Lens' NexusOperationExecutionInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'startToCloseTimeout' @:: Lens' NexusOperationExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.attempt' @:: Lens' NexusOperationExecutionInfo Data.Int.Int32@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.scheduleTime' @:: Lens' NexusOperationExecutionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'scheduleTime' @:: Lens' NexusOperationExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.expirationTime' @:: Lens' NexusOperationExecutionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'expirationTime' @:: Lens' NexusOperationExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.closeTime' @:: Lens' NexusOperationExecutionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'closeTime' @:: Lens' NexusOperationExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.lastAttemptCompleteTime' @:: Lens' NexusOperationExecutionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'lastAttemptCompleteTime' @:: Lens' NexusOperationExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.lastAttemptFailure' @:: Lens' NexusOperationExecutionInfo Proto.Temporal.Api.Failure.V1.Message.Failure@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'lastAttemptFailure' @:: Lens' NexusOperationExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.nextAttemptScheduleTime' @:: Lens' NexusOperationExecutionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'nextAttemptScheduleTime' @:: Lens' NexusOperationExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.executionDuration' @:: Lens' NexusOperationExecutionInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'executionDuration' @:: Lens' NexusOperationExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.cancellationInfo' @:: Lens' NexusOperationExecutionInfo NexusOperationExecutionCancellationInfo@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'cancellationInfo' @:: Lens' NexusOperationExecutionInfo (Prelude.Maybe NexusOperationExecutionCancellationInfo)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.blockedReason' @:: Lens' NexusOperationExecutionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.requestId' @:: Lens' NexusOperationExecutionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operationToken' @:: Lens' NexusOperationExecutionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.stateTransitionCount' @:: Lens' NexusOperationExecutionInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.searchAttributes' @:: Lens' NexusOperationExecutionInfo Proto.Temporal.Api.Common.V1.Message.SearchAttributes@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'searchAttributes' @:: Lens' NexusOperationExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.nexusHeader' @:: Lens' NexusOperationExecutionInfo (Data.Map.Map Data.Text.Text Data.Text.Text)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.userMetadata' @:: Lens' NexusOperationExecutionInfo Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'userMetadata' @:: Lens' NexusOperationExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.links' @:: Lens' NexusOperationExecutionInfo [Proto.Temporal.Api.Common.V1.Message.Link]@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.vec'links' @:: Lens' NexusOperationExecutionInfo (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Link)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.identity' @:: Lens' NexusOperationExecutionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.stateSizeBytes' @:: Lens' NexusOperationExecutionInfo Data.Int.Int64@ -}
data NexusOperationExecutionInfo
  = NexusOperationExecutionInfo'_constructor {_NexusOperationExecutionInfo'operationId :: !Data.Text.Text,
                                              _NexusOperationExecutionInfo'runId :: !Data.Text.Text,
                                              _NexusOperationExecutionInfo'endpoint :: !Data.Text.Text,
                                              _NexusOperationExecutionInfo'service :: !Data.Text.Text,
                                              _NexusOperationExecutionInfo'operation :: !Data.Text.Text,
                                              _NexusOperationExecutionInfo'status :: !Proto.Temporal.Api.Enums.V1.Nexus.NexusOperationExecutionStatus,
                                              _NexusOperationExecutionInfo'state :: !Proto.Temporal.Api.Enums.V1.Common.PendingNexusOperationState,
                                              _NexusOperationExecutionInfo'scheduleToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                              _NexusOperationExecutionInfo'scheduleToStartTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                              _NexusOperationExecutionInfo'startToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                              _NexusOperationExecutionInfo'attempt :: !Data.Int.Int32,
                                              _NexusOperationExecutionInfo'scheduleTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                              _NexusOperationExecutionInfo'expirationTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                              _NexusOperationExecutionInfo'closeTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                              _NexusOperationExecutionInfo'lastAttemptCompleteTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                              _NexusOperationExecutionInfo'lastAttemptFailure :: !(Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure),
                                              _NexusOperationExecutionInfo'nextAttemptScheduleTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                              _NexusOperationExecutionInfo'executionDuration :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                              _NexusOperationExecutionInfo'cancellationInfo :: !(Prelude.Maybe NexusOperationExecutionCancellationInfo),
                                              _NexusOperationExecutionInfo'blockedReason :: !Data.Text.Text,
                                              _NexusOperationExecutionInfo'requestId :: !Data.Text.Text,
                                              _NexusOperationExecutionInfo'operationToken :: !Data.Text.Text,
                                              _NexusOperationExecutionInfo'stateTransitionCount :: !Data.Int.Int64,
                                              _NexusOperationExecutionInfo'searchAttributes :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes),
                                              _NexusOperationExecutionInfo'nexusHeader :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                                              _NexusOperationExecutionInfo'userMetadata :: !(Prelude.Maybe Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata),
                                              _NexusOperationExecutionInfo'links :: !(Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Link),
                                              _NexusOperationExecutionInfo'identity :: !Data.Text.Text,
                                              _NexusOperationExecutionInfo'stateSizeBytes :: !Data.Int.Int64,
                                              _NexusOperationExecutionInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NexusOperationExecutionInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "operationId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'operationId
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'operationId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "runId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'runId
           (\ x__ y__ -> x__ {_NexusOperationExecutionInfo'runId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "endpoint" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'endpoint
           (\ x__ y__ -> x__ {_NexusOperationExecutionInfo'endpoint = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "service" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'service
           (\ x__ y__ -> x__ {_NexusOperationExecutionInfo'service = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "operation" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'operation
           (\ x__ y__ -> x__ {_NexusOperationExecutionInfo'operation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "status" Proto.Temporal.Api.Enums.V1.Nexus.NexusOperationExecutionStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'status
           (\ x__ y__ -> x__ {_NexusOperationExecutionInfo'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "state" Proto.Temporal.Api.Enums.V1.Common.PendingNexusOperationState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'state
           (\ x__ y__ -> x__ {_NexusOperationExecutionInfo'state = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "scheduleToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'scheduleToCloseTimeout
           (\ x__ y__
              -> x__
                   {_NexusOperationExecutionInfo'scheduleToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "maybe'scheduleToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'scheduleToCloseTimeout
           (\ x__ y__
              -> x__
                   {_NexusOperationExecutionInfo'scheduleToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "scheduleToStartTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'scheduleToStartTimeout
           (\ x__ y__
              -> x__
                   {_NexusOperationExecutionInfo'scheduleToStartTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "maybe'scheduleToStartTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'scheduleToStartTimeout
           (\ x__ y__
              -> x__
                   {_NexusOperationExecutionInfo'scheduleToStartTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "startToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'startToCloseTimeout
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'startToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "maybe'startToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'startToCloseTimeout
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'startToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "attempt" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'attempt
           (\ x__ y__ -> x__ {_NexusOperationExecutionInfo'attempt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "scheduleTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'scheduleTime
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'scheduleTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "maybe'scheduleTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'scheduleTime
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'scheduleTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "expirationTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'expirationTime
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'expirationTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "maybe'expirationTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'expirationTime
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'expirationTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "closeTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'closeTime
           (\ x__ y__ -> x__ {_NexusOperationExecutionInfo'closeTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "maybe'closeTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'closeTime
           (\ x__ y__ -> x__ {_NexusOperationExecutionInfo'closeTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "lastAttemptCompleteTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'lastAttemptCompleteTime
           (\ x__ y__
              -> x__
                   {_NexusOperationExecutionInfo'lastAttemptCompleteTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "maybe'lastAttemptCompleteTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'lastAttemptCompleteTime
           (\ x__ y__
              -> x__
                   {_NexusOperationExecutionInfo'lastAttemptCompleteTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "lastAttemptFailure" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'lastAttemptFailure
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'lastAttemptFailure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "maybe'lastAttemptFailure" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'lastAttemptFailure
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'lastAttemptFailure = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "nextAttemptScheduleTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'nextAttemptScheduleTime
           (\ x__ y__
              -> x__
                   {_NexusOperationExecutionInfo'nextAttemptScheduleTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "maybe'nextAttemptScheduleTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'nextAttemptScheduleTime
           (\ x__ y__
              -> x__
                   {_NexusOperationExecutionInfo'nextAttemptScheduleTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "executionDuration" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'executionDuration
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'executionDuration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "maybe'executionDuration" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'executionDuration
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'executionDuration = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "cancellationInfo" NexusOperationExecutionCancellationInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'cancellationInfo
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'cancellationInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "maybe'cancellationInfo" (Prelude.Maybe NexusOperationExecutionCancellationInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'cancellationInfo
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'cancellationInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "blockedReason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'blockedReason
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'blockedReason = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "requestId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'requestId
           (\ x__ y__ -> x__ {_NexusOperationExecutionInfo'requestId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "operationToken" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'operationToken
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'operationToken = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "stateTransitionCount" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'stateTransitionCount
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'stateTransitionCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "searchAttributes" Proto.Temporal.Api.Common.V1.Message.SearchAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'searchAttributes
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'searchAttributes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "maybe'searchAttributes" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'searchAttributes
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'searchAttributes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "nexusHeader" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'nexusHeader
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'nexusHeader = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "userMetadata" Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'userMetadata
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'userMetadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "maybe'userMetadata" (Prelude.Maybe Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'userMetadata
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'userMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "links" [Proto.Temporal.Api.Common.V1.Message.Link] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'links
           (\ x__ y__ -> x__ {_NexusOperationExecutionInfo'links = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "vec'links" (Data.Vector.Vector Proto.Temporal.Api.Common.V1.Message.Link) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'links
           (\ x__ y__ -> x__ {_NexusOperationExecutionInfo'links = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'identity
           (\ x__ y__ -> x__ {_NexusOperationExecutionInfo'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo "stateSizeBytes" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'stateSizeBytes
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'stateSizeBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Message NexusOperationExecutionInfo where
  messageName _
    = Data.Text.pack
        "temporal.api.nexus.v1.NexusOperationExecutionInfo"
  packedMessageDescriptor _
    = "\n\
      \\ESCNexusOperationExecutionInfo\DC2!\n\
      \\foperation_id\CAN\SOH \SOH(\tR\voperationId\DC2\NAK\n\
      \\ACKrun_id\CAN\STX \SOH(\tR\ENQrunId\DC2\SUB\n\
      \\bendpoint\CAN\ETX \SOH(\tR\bendpoint\DC2\CAN\n\
      \\aservice\CAN\EOT \SOH(\tR\aservice\DC2\FS\n\
      \\toperation\CAN\ENQ \SOH(\tR\toperation\DC2L\n\
      \\ACKstatus\CAN\ACK \SOH(\SO24.temporal.api.enums.v1.NexusOperationExecutionStatusR\ACKstatus\DC2G\n\
      \\ENQstate\CAN\a \SOH(\SO21.temporal.api.enums.v1.PendingNexusOperationStateR\ENQstate\DC2T\n\
      \\EMschedule_to_close_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2T\n\
      \\EMschedule_to_start_timeout\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout\DC2N\n\
      \\SYNstart_to_close_timeout\CAN\n\
      \ \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\DC2\CAN\n\
      \\aattempt\CAN\v \SOH(\ENQR\aattempt\DC2?\n\
      \\rschedule_time\CAN\f \SOH(\v2\SUB.google.protobuf.TimestampR\fscheduleTime\DC2C\n\
      \\SIexpiration_time\CAN\r \SOH(\v2\SUB.google.protobuf.TimestampR\SOexpirationTime\DC29\n\
      \\n\
      \close_time\CAN\SO \SOH(\v2\SUB.google.protobuf.TimestampR\tcloseTime\DC2W\n\
      \\SUBlast_attempt_complete_time\CAN\SI \SOH(\v2\SUB.google.protobuf.TimestampR\ETBlastAttemptCompleteTime\DC2R\n\
      \\DC4last_attempt_failure\CAN\DLE \SOH(\v2 .temporal.api.failure.v1.FailureR\DC2lastAttemptFailure\DC2W\n\
      \\SUBnext_attempt_schedule_time\CAN\DC1 \SOH(\v2\SUB.google.protobuf.TimestampR\ETBnextAttemptScheduleTime\DC2H\n\
      \\DC2execution_duration\CAN\DC2 \SOH(\v2\EM.google.protobuf.DurationR\DC1executionDuration\DC2k\n\
      \\DC1cancellation_info\CAN\DC3 \SOH(\v2>.temporal.api.nexus.v1.NexusOperationExecutionCancellationInfoR\DLEcancellationInfo\DC2%\n\
      \\SOblocked_reason\CAN\DC4 \SOH(\tR\rblockedReason\DC2\GS\n\
      \\n\
      \request_id\CAN\NAK \SOH(\tR\trequestId\DC2'\n\
      \\SIoperation_token\CAN\SYN \SOH(\tR\SOoperationToken\DC24\n\
      \\SYNstate_transition_count\CAN\ETB \SOH(\ETXR\DC4stateTransitionCount\DC2U\n\
      \\DC1search_attributes\CAN\CAN \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC2f\n\
      \\fnexus_header\CAN\EM \ETX(\v2C.temporal.api.nexus.v1.NexusOperationExecutionInfo.NexusHeaderEntryR\vnexusHeader\DC2F\n\
      \\ruser_metadata\CAN\SUB \SOH(\v2!.temporal.api.sdk.v1.UserMetadataR\fuserMetadata\DC22\n\
      \\ENQlinks\CAN\ESC \ETX(\v2\FS.temporal.api.common.v1.LinkR\ENQlinks\DC2\SUB\n\
      \\bidentity\CAN\FS \SOH(\tR\bidentity\DC2(\n\
      \\DLEstate_size_bytes\CAN\GS \SOH(\ETXR\SOstateSizeBytes\SUB>\n\
      \\DLENexusHeaderEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operationId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operationId")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        runId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "run_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"runId")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        endpoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"endpoint")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        service__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"service")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        operation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operation")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Nexus.NexusOperationExecutionStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Common.PendingNexusOperationState)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"state")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        scheduleToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        scheduleToStartTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_start_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToStartTimeout")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        startToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        attempt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attempt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"attempt")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        scheduleTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleTime")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        expirationTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expiration_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'expirationTime")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        closeTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "close_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'closeTime")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        lastAttemptCompleteTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_attempt_complete_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastAttemptCompleteTime")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        lastAttemptFailure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_attempt_failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastAttemptFailure")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        nextAttemptScheduleTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "next_attempt_schedule_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nextAttemptScheduleTime")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        executionDuration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "execution_duration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'executionDuration")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        cancellationInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancellation_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NexusOperationExecutionCancellationInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cancellationInfo")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        blockedReason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "blocked_reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"blockedReason")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        requestId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestId")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        operationToken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_token"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operationToken")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        stateTransitionCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state_transition_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stateTransitionCount")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        searchAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "search_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.SearchAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'searchAttributes")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        nexusHeader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nexus_header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NexusOperationExecutionInfo'NexusHeaderEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"nexusHeader")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        userMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "user_metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'userMetadata")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        links__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "links"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Link)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"links")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        identity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "identity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"identity")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
        stateSizeBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state_size_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stateSizeBytes")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operationId__field_descriptor),
           (Data.ProtoLens.Tag 2, runId__field_descriptor),
           (Data.ProtoLens.Tag 3, endpoint__field_descriptor),
           (Data.ProtoLens.Tag 4, service__field_descriptor),
           (Data.ProtoLens.Tag 5, operation__field_descriptor),
           (Data.ProtoLens.Tag 6, status__field_descriptor),
           (Data.ProtoLens.Tag 7, state__field_descriptor),
           (Data.ProtoLens.Tag 8, scheduleToCloseTimeout__field_descriptor),
           (Data.ProtoLens.Tag 9, scheduleToStartTimeout__field_descriptor),
           (Data.ProtoLens.Tag 10, startToCloseTimeout__field_descriptor),
           (Data.ProtoLens.Tag 11, attempt__field_descriptor),
           (Data.ProtoLens.Tag 12, scheduleTime__field_descriptor),
           (Data.ProtoLens.Tag 13, expirationTime__field_descriptor),
           (Data.ProtoLens.Tag 14, closeTime__field_descriptor),
           (Data.ProtoLens.Tag 15, lastAttemptCompleteTime__field_descriptor),
           (Data.ProtoLens.Tag 16, lastAttemptFailure__field_descriptor),
           (Data.ProtoLens.Tag 17, nextAttemptScheduleTime__field_descriptor),
           (Data.ProtoLens.Tag 18, executionDuration__field_descriptor),
           (Data.ProtoLens.Tag 19, cancellationInfo__field_descriptor),
           (Data.ProtoLens.Tag 20, blockedReason__field_descriptor),
           (Data.ProtoLens.Tag 21, requestId__field_descriptor),
           (Data.ProtoLens.Tag 22, operationToken__field_descriptor),
           (Data.ProtoLens.Tag 23, stateTransitionCount__field_descriptor),
           (Data.ProtoLens.Tag 24, searchAttributes__field_descriptor),
           (Data.ProtoLens.Tag 25, nexusHeader__field_descriptor),
           (Data.ProtoLens.Tag 26, userMetadata__field_descriptor),
           (Data.ProtoLens.Tag 27, links__field_descriptor),
           (Data.ProtoLens.Tag 28, identity__field_descriptor),
           (Data.ProtoLens.Tag 29, stateSizeBytes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NexusOperationExecutionInfo'_unknownFields
        (\ x__ y__
           -> x__ {_NexusOperationExecutionInfo'_unknownFields = y__})
  defMessage
    = NexusOperationExecutionInfo'_constructor
        {_NexusOperationExecutionInfo'operationId = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionInfo'runId = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionInfo'endpoint = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionInfo'service = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionInfo'operation = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionInfo'status = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionInfo'state = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionInfo'scheduleToCloseTimeout = Prelude.Nothing,
         _NexusOperationExecutionInfo'scheduleToStartTimeout = Prelude.Nothing,
         _NexusOperationExecutionInfo'startToCloseTimeout = Prelude.Nothing,
         _NexusOperationExecutionInfo'attempt = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionInfo'scheduleTime = Prelude.Nothing,
         _NexusOperationExecutionInfo'expirationTime = Prelude.Nothing,
         _NexusOperationExecutionInfo'closeTime = Prelude.Nothing,
         _NexusOperationExecutionInfo'lastAttemptCompleteTime = Prelude.Nothing,
         _NexusOperationExecutionInfo'lastAttemptFailure = Prelude.Nothing,
         _NexusOperationExecutionInfo'nextAttemptScheduleTime = Prelude.Nothing,
         _NexusOperationExecutionInfo'executionDuration = Prelude.Nothing,
         _NexusOperationExecutionInfo'cancellationInfo = Prelude.Nothing,
         _NexusOperationExecutionInfo'blockedReason = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionInfo'requestId = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionInfo'operationToken = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionInfo'stateTransitionCount = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionInfo'searchAttributes = Prelude.Nothing,
         _NexusOperationExecutionInfo'nexusHeader = Data.Map.empty,
         _NexusOperationExecutionInfo'userMetadata = Prelude.Nothing,
         _NexusOperationExecutionInfo'links = Data.Vector.Generic.empty,
         _NexusOperationExecutionInfo'identity = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionInfo'stateSizeBytes = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NexusOperationExecutionInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Temporal.Api.Common.V1.Message.Link
             -> Data.ProtoLens.Encoding.Bytes.Parser NexusOperationExecutionInfo
        loop x mutable'links
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'links <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'links)
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
                              (Data.ProtoLens.Field.field @"vec'links") frozen'links x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operationId") y x)
                                  mutable'links
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "run_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"runId") y x)
                                  mutable'links
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "endpoint"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endpoint") y x)
                                  mutable'links
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "service"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"service") y x)
                                  mutable'links
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operation") y x)
                                  mutable'links
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                                  mutable'links
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "state"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"state") y x)
                                  mutable'links
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToCloseTimeout") y x)
                                  mutable'links
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_start_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToStartTimeout") y x)
                                  mutable'links
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_to_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startToCloseTimeout") y x)
                                  mutable'links
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "attempt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"attempt") y x)
                                  mutable'links
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleTime") y x)
                                  mutable'links
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "expiration_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"expirationTime") y x)
                                  mutable'links
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "close_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"closeTime") y x)
                                  mutable'links
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_attempt_complete_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastAttemptCompleteTime") y x)
                                  mutable'links
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_attempt_failure"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastAttemptFailure") y x)
                                  mutable'links
                        138
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "next_attempt_schedule_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"nextAttemptScheduleTime") y x)
                                  mutable'links
                        146
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "execution_duration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"executionDuration") y x)
                                  mutable'links
                        154
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cancellation_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cancellationInfo") y x)
                                  mutable'links
                        162
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "blocked_reason"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"blockedReason") y x)
                                  mutable'links
                        170
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "request_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"requestId") y x)
                                  mutable'links
                        178
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation_token"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"operationToken") y x)
                                  mutable'links
                        184
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "state_transition_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stateTransitionCount") y x)
                                  mutable'links
                        194
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "search_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"searchAttributes") y x)
                                  mutable'links
                        202
                          -> do !(entry :: NexusOperationExecutionInfo'NexusHeaderEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                              (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                    (Prelude.fromIntegral
                                                                                                       len)
                                                                                                    Data.ProtoLens.parseMessage)
                                                                                              "nexus_header"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"nexusHeader")
                                        (\ !t -> Data.Map.insert key value t) x)
                                     mutable'links)
                        210
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "user_metadata"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"userMetadata") y x)
                                  mutable'links
                        218
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "links"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'links y)
                                loop x v
                        226
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "identity"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"identity") y x)
                                  mutable'links
                        232
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "state_size_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stateSizeBytes") y x)
                                  mutable'links
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'links
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'links <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'links)
          "NexusOperationExecutionInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"operationId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"runId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"endpoint") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"service") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operation") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((Prelude..)
                                     (\ bs
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     Data.Text.Encoding.encodeUtf8 _v))
                         ((Data.Monoid.<>)
                            (let
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           Prelude.fromIntegral)
                                        Prelude.fromEnum _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v = Lens.Family2.view (Data.ProtoLens.Field.field @"state") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        ((Prelude..)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              Prelude.fromIntegral)
                                           Prelude.fromEnum _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field
                                            @"maybe'scheduleToCloseTimeout")
                                         _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field
                                               @"maybe'scheduleToStartTimeout")
                                            _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field
                                                  @"maybe'startToCloseTimeout")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field @"attempt") _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                    ((Prelude..)
                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       Prelude.fromIntegral _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'scheduleTime")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                                        ((Prelude..)
                                                           (\ bs
                                                              -> (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      (Prelude.fromIntegral
                                                                         (Data.ByteString.length
                                                                            bs)))
                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                      bs))
                                                           Data.ProtoLens.encodeMessage _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'expirationTime")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              106)
                                                           ((Prelude..)
                                                              (\ bs
                                                                 -> (Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         (Prelude.fromIntegral
                                                                            (Data.ByteString.length
                                                                               bs)))
                                                                      (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                         bs))
                                                              Data.ProtoLens.encodeMessage _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'closeTime")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 114)
                                                              ((Prelude..)
                                                                 (\ bs
                                                                    -> (Data.Monoid.<>)
                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                            (Prelude.fromIntegral
                                                                               (Data.ByteString.length
                                                                                  bs)))
                                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                            bs))
                                                                 Data.ProtoLens.encodeMessage _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'lastAttemptCompleteTime")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    122)
                                                                 ((Prelude..)
                                                                    (\ bs
                                                                       -> (Data.Monoid.<>)
                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                               (Prelude.fromIntegral
                                                                                  (Data.ByteString.length
                                                                                     bs)))
                                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                               bs))
                                                                    Data.ProtoLens.encodeMessage
                                                                    _v))
                                                       ((Data.Monoid.<>)
                                                          (case
                                                               Lens.Family2.view
                                                                 (Data.ProtoLens.Field.field
                                                                    @"maybe'lastAttemptFailure")
                                                                 _x
                                                           of
                                                             Prelude.Nothing -> Data.Monoid.mempty
                                                             (Prelude.Just _v)
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       130)
                                                                    ((Prelude..)
                                                                       (\ bs
                                                                          -> (Data.Monoid.<>)
                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                  (Prelude.fromIntegral
                                                                                     (Data.ByteString.length
                                                                                        bs)))
                                                                               (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                  bs))
                                                                       Data.ProtoLens.encodeMessage
                                                                       _v))
                                                          ((Data.Monoid.<>)
                                                             (case
                                                                  Lens.Family2.view
                                                                    (Data.ProtoLens.Field.field
                                                                       @"maybe'nextAttemptScheduleTime")
                                                                    _x
                                                              of
                                                                Prelude.Nothing
                                                                  -> Data.Monoid.mempty
                                                                (Prelude.Just _v)
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          138)
                                                                       ((Prelude..)
                                                                          (\ bs
                                                                             -> (Data.Monoid.<>)
                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                     (Prelude.fromIntegral
                                                                                        (Data.ByteString.length
                                                                                           bs)))
                                                                                  (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                     bs))
                                                                          Data.ProtoLens.encodeMessage
                                                                          _v))
                                                             ((Data.Monoid.<>)
                                                                (case
                                                                     Lens.Family2.view
                                                                       (Data.ProtoLens.Field.field
                                                                          @"maybe'executionDuration")
                                                                       _x
                                                                 of
                                                                   Prelude.Nothing
                                                                     -> Data.Monoid.mempty
                                                                   (Prelude.Just _v)
                                                                     -> (Data.Monoid.<>)
                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             146)
                                                                          ((Prelude..)
                                                                             (\ bs
                                                                                -> (Data.Monoid.<>)
                                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                        (Prelude.fromIntegral
                                                                                           (Data.ByteString.length
                                                                                              bs)))
                                                                                     (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                        bs))
                                                                             Data.ProtoLens.encodeMessage
                                                                             _v))
                                                                ((Data.Monoid.<>)
                                                                   (case
                                                                        Lens.Family2.view
                                                                          (Data.ProtoLens.Field.field
                                                                             @"maybe'cancellationInfo")
                                                                          _x
                                                                    of
                                                                      Prelude.Nothing
                                                                        -> Data.Monoid.mempty
                                                                      (Prelude.Just _v)
                                                                        -> (Data.Monoid.<>)
                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                154)
                                                                             ((Prelude..)
                                                                                (\ bs
                                                                                   -> (Data.Monoid.<>)
                                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                           (Prelude.fromIntegral
                                                                                              (Data.ByteString.length
                                                                                                 bs)))
                                                                                        (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                           bs))
                                                                                Data.ProtoLens.encodeMessage
                                                                                _v))
                                                                   ((Data.Monoid.<>)
                                                                      (let
                                                                         _v
                                                                           = Lens.Family2.view
                                                                               (Data.ProtoLens.Field.field
                                                                                  @"blockedReason")
                                                                               _x
                                                                       in
                                                                         if (Prelude.==)
                                                                              _v
                                                                              Data.ProtoLens.fieldDefault then
                                                                             Data.Monoid.mempty
                                                                         else
                                                                             (Data.Monoid.<>)
                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                  162)
                                                                               ((Prelude..)
                                                                                  (\ bs
                                                                                     -> (Data.Monoid.<>)
                                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                             (Prelude.fromIntegral
                                                                                                (Data.ByteString.length
                                                                                                   bs)))
                                                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                             bs))
                                                                                  Data.Text.Encoding.encodeUtf8
                                                                                  _v))
                                                                      ((Data.Monoid.<>)
                                                                         (let
                                                                            _v
                                                                              = Lens.Family2.view
                                                                                  (Data.ProtoLens.Field.field
                                                                                     @"requestId")
                                                                                  _x
                                                                          in
                                                                            if (Prelude.==)
                                                                                 _v
                                                                                 Data.ProtoLens.fieldDefault then
                                                                                Data.Monoid.mempty
                                                                            else
                                                                                (Data.Monoid.<>)
                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                     170)
                                                                                  ((Prelude..)
                                                                                     (\ bs
                                                                                        -> (Data.Monoid.<>)
                                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                (Prelude.fromIntegral
                                                                                                   (Data.ByteString.length
                                                                                                      bs)))
                                                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                bs))
                                                                                     Data.Text.Encoding.encodeUtf8
                                                                                     _v))
                                                                         ((Data.Monoid.<>)
                                                                            (let
                                                                               _v
                                                                                 = Lens.Family2.view
                                                                                     (Data.ProtoLens.Field.field
                                                                                        @"operationToken")
                                                                                     _x
                                                                             in
                                                                               if (Prelude.==)
                                                                                    _v
                                                                                    Data.ProtoLens.fieldDefault then
                                                                                   Data.Monoid.mempty
                                                                               else
                                                                                   (Data.Monoid.<>)
                                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                        178)
                                                                                     ((Prelude..)
                                                                                        (\ bs
                                                                                           -> (Data.Monoid.<>)
                                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                   (Prelude.fromIntegral
                                                                                                      (Data.ByteString.length
                                                                                                         bs)))
                                                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                   bs))
                                                                                        Data.Text.Encoding.encodeUtf8
                                                                                        _v))
                                                                            ((Data.Monoid.<>)
                                                                               (let
                                                                                  _v
                                                                                    = Lens.Family2.view
                                                                                        (Data.ProtoLens.Field.field
                                                                                           @"stateTransitionCount")
                                                                                        _x
                                                                                in
                                                                                  if (Prelude.==)
                                                                                       _v
                                                                                       Data.ProtoLens.fieldDefault then
                                                                                      Data.Monoid.mempty
                                                                                  else
                                                                                      (Data.Monoid.<>)
                                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                           184)
                                                                                        ((Prelude..)
                                                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                           Prelude.fromIntegral
                                                                                           _v))
                                                                               ((Data.Monoid.<>)
                                                                                  (case
                                                                                       Lens.Family2.view
                                                                                         (Data.ProtoLens.Field.field
                                                                                            @"maybe'searchAttributes")
                                                                                         _x
                                                                                   of
                                                                                     Prelude.Nothing
                                                                                       -> Data.Monoid.mempty
                                                                                     (Prelude.Just _v)
                                                                                       -> (Data.Monoid.<>)
                                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                               194)
                                                                                            ((Prelude..)
                                                                                               (\ bs
                                                                                                  -> (Data.Monoid.<>)
                                                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                          (Prelude.fromIntegral
                                                                                                             (Data.ByteString.length
                                                                                                                bs)))
                                                                                                       (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                          bs))
                                                                                               Data.ProtoLens.encodeMessage
                                                                                               _v))
                                                                                  ((Data.Monoid.<>)
                                                                                     (Data.Monoid.mconcat
                                                                                        (Prelude.map
                                                                                           (\ _v
                                                                                              -> (Data.Monoid.<>)
                                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                      202)
                                                                                                   ((Prelude..)
                                                                                                      (\ bs
                                                                                                         -> (Data.Monoid.<>)
                                                                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                 (Prelude.fromIntegral
                                                                                                                    (Data.ByteString.length
                                                                                                                       bs)))
                                                                                                              (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                 bs))
                                                                                                      Data.ProtoLens.encodeMessage
                                                                                                      (Lens.Family2.set
                                                                                                         (Data.ProtoLens.Field.field
                                                                                                            @"key")
                                                                                                         (Prelude.fst
                                                                                                            _v)
                                                                                                         (Lens.Family2.set
                                                                                                            (Data.ProtoLens.Field.field
                                                                                                               @"value")
                                                                                                            (Prelude.snd
                                                                                                               _v)
                                                                                                            (Data.ProtoLens.defMessage ::
                                                                                                               NexusOperationExecutionInfo'NexusHeaderEntry)))))
                                                                                           (Data.Map.toList
                                                                                              (Lens.Family2.view
                                                                                                 (Data.ProtoLens.Field.field
                                                                                                    @"nexusHeader")
                                                                                                 _x))))
                                                                                     ((Data.Monoid.<>)
                                                                                        (case
                                                                                             Lens.Family2.view
                                                                                               (Data.ProtoLens.Field.field
                                                                                                  @"maybe'userMetadata")
                                                                                               _x
                                                                                         of
                                                                                           Prelude.Nothing
                                                                                             -> Data.Monoid.mempty
                                                                                           (Prelude.Just _v)
                                                                                             -> (Data.Monoid.<>)
                                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                     210)
                                                                                                  ((Prelude..)
                                                                                                     (\ bs
                                                                                                        -> (Data.Monoid.<>)
                                                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                (Prelude.fromIntegral
                                                                                                                   (Data.ByteString.length
                                                                                                                      bs)))
                                                                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                bs))
                                                                                                     Data.ProtoLens.encodeMessage
                                                                                                     _v))
                                                                                        ((Data.Monoid.<>)
                                                                                           (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                                              (\ _v
                                                                                                 -> (Data.Monoid.<>)
                                                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                         218)
                                                                                                      ((Prelude..)
                                                                                                         (\ bs
                                                                                                            -> (Data.Monoid.<>)
                                                                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                    (Prelude.fromIntegral
                                                                                                                       (Data.ByteString.length
                                                                                                                          bs)))
                                                                                                                 (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                    bs))
                                                                                                         Data.ProtoLens.encodeMessage
                                                                                                         _v))
                                                                                              (Lens.Family2.view
                                                                                                 (Data.ProtoLens.Field.field
                                                                                                    @"vec'links")
                                                                                                 _x))
                                                                                           ((Data.Monoid.<>)
                                                                                              (let
                                                                                                 _v
                                                                                                   = Lens.Family2.view
                                                                                                       (Data.ProtoLens.Field.field
                                                                                                          @"identity")
                                                                                                       _x
                                                                                               in
                                                                                                 if (Prelude.==)
                                                                                                      _v
                                                                                                      Data.ProtoLens.fieldDefault then
                                                                                                     Data.Monoid.mempty
                                                                                                 else
                                                                                                     (Data.Monoid.<>)
                                                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                          226)
                                                                                                       ((Prelude..)
                                                                                                          (\ bs
                                                                                                             -> (Data.Monoid.<>)
                                                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                     (Prelude.fromIntegral
                                                                                                                        (Data.ByteString.length
                                                                                                                           bs)))
                                                                                                                  (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                     bs))
                                                                                                          Data.Text.Encoding.encodeUtf8
                                                                                                          _v))
                                                                                              ((Data.Monoid.<>)
                                                                                                 (let
                                                                                                    _v
                                                                                                      = Lens.Family2.view
                                                                                                          (Data.ProtoLens.Field.field
                                                                                                             @"stateSizeBytes")
                                                                                                          _x
                                                                                                  in
                                                                                                    if (Prelude.==)
                                                                                                         _v
                                                                                                         Data.ProtoLens.fieldDefault then
                                                                                                        Data.Monoid.mempty
                                                                                                    else
                                                                                                        (Data.Monoid.<>)
                                                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                             232)
                                                                                                          ((Prelude..)
                                                                                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                             Prelude.fromIntegral
                                                                                                             _v))
                                                                                                 (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                                                    (Lens.Family2.view
                                                                                                       Data.ProtoLens.unknownFields
                                                                                                       _x))))))))))))))))))))))))))))))
instance Control.DeepSeq.NFData NexusOperationExecutionInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NexusOperationExecutionInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NexusOperationExecutionInfo'operationId x__)
                (Control.DeepSeq.deepseq
                   (_NexusOperationExecutionInfo'runId x__)
                   (Control.DeepSeq.deepseq
                      (_NexusOperationExecutionInfo'endpoint x__)
                      (Control.DeepSeq.deepseq
                         (_NexusOperationExecutionInfo'service x__)
                         (Control.DeepSeq.deepseq
                            (_NexusOperationExecutionInfo'operation x__)
                            (Control.DeepSeq.deepseq
                               (_NexusOperationExecutionInfo'status x__)
                               (Control.DeepSeq.deepseq
                                  (_NexusOperationExecutionInfo'state x__)
                                  (Control.DeepSeq.deepseq
                                     (_NexusOperationExecutionInfo'scheduleToCloseTimeout x__)
                                     (Control.DeepSeq.deepseq
                                        (_NexusOperationExecutionInfo'scheduleToStartTimeout x__)
                                        (Control.DeepSeq.deepseq
                                           (_NexusOperationExecutionInfo'startToCloseTimeout x__)
                                           (Control.DeepSeq.deepseq
                                              (_NexusOperationExecutionInfo'attempt x__)
                                              (Control.DeepSeq.deepseq
                                                 (_NexusOperationExecutionInfo'scheduleTime x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_NexusOperationExecutionInfo'expirationTime
                                                       x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_NexusOperationExecutionInfo'closeTime x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_NexusOperationExecutionInfo'lastAttemptCompleteTime
                                                             x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_NexusOperationExecutionInfo'lastAttemptFailure
                                                                x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_NexusOperationExecutionInfo'nextAttemptScheduleTime
                                                                   x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_NexusOperationExecutionInfo'executionDuration
                                                                      x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_NexusOperationExecutionInfo'cancellationInfo
                                                                         x__)
                                                                      (Control.DeepSeq.deepseq
                                                                         (_NexusOperationExecutionInfo'blockedReason
                                                                            x__)
                                                                         (Control.DeepSeq.deepseq
                                                                            (_NexusOperationExecutionInfo'requestId
                                                                               x__)
                                                                            (Control.DeepSeq.deepseq
                                                                               (_NexusOperationExecutionInfo'operationToken
                                                                                  x__)
                                                                               (Control.DeepSeq.deepseq
                                                                                  (_NexusOperationExecutionInfo'stateTransitionCount
                                                                                     x__)
                                                                                  (Control.DeepSeq.deepseq
                                                                                     (_NexusOperationExecutionInfo'searchAttributes
                                                                                        x__)
                                                                                     (Control.DeepSeq.deepseq
                                                                                        (_NexusOperationExecutionInfo'nexusHeader
                                                                                           x__)
                                                                                        (Control.DeepSeq.deepseq
                                                                                           (_NexusOperationExecutionInfo'userMetadata
                                                                                              x__)
                                                                                           (Control.DeepSeq.deepseq
                                                                                              (_NexusOperationExecutionInfo'links
                                                                                                 x__)
                                                                                              (Control.DeepSeq.deepseq
                                                                                                 (_NexusOperationExecutionInfo'identity
                                                                                                    x__)
                                                                                                 (Control.DeepSeq.deepseq
                                                                                                    (_NexusOperationExecutionInfo'stateSizeBytes
                                                                                                       x__)
                                                                                                    ())))))))))))))))))))))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.key' @:: Lens' NexusOperationExecutionInfo'NexusHeaderEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.value' @:: Lens' NexusOperationExecutionInfo'NexusHeaderEntry Data.Text.Text@ -}
data NexusOperationExecutionInfo'NexusHeaderEntry
  = NexusOperationExecutionInfo'NexusHeaderEntry'_constructor {_NexusOperationExecutionInfo'NexusHeaderEntry'key :: !Data.Text.Text,
                                                               _NexusOperationExecutionInfo'NexusHeaderEntry'value :: !Data.Text.Text,
                                                               _NexusOperationExecutionInfo'NexusHeaderEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NexusOperationExecutionInfo'NexusHeaderEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo'NexusHeaderEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'NexusHeaderEntry'key
           (\ x__ y__
              -> x__ {_NexusOperationExecutionInfo'NexusHeaderEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionInfo'NexusHeaderEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionInfo'NexusHeaderEntry'value
           (\ x__ y__
              -> x__
                   {_NexusOperationExecutionInfo'NexusHeaderEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message NexusOperationExecutionInfo'NexusHeaderEntry where
  messageName _
    = Data.Text.pack
        "temporal.api.nexus.v1.NexusOperationExecutionInfo.NexusHeaderEntry"
  packedMessageDescriptor _
    = "\n\
      \\DLENexusHeaderEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo'NexusHeaderEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionInfo'NexusHeaderEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NexusOperationExecutionInfo'NexusHeaderEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_NexusOperationExecutionInfo'NexusHeaderEntry'_unknownFields = y__})
  defMessage
    = NexusOperationExecutionInfo'NexusHeaderEntry'_constructor
        {_NexusOperationExecutionInfo'NexusHeaderEntry'key = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionInfo'NexusHeaderEntry'value = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionInfo'NexusHeaderEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NexusOperationExecutionInfo'NexusHeaderEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser NexusOperationExecutionInfo'NexusHeaderEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NexusHeaderEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData NexusOperationExecutionInfo'NexusHeaderEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NexusOperationExecutionInfo'NexusHeaderEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NexusOperationExecutionInfo'NexusHeaderEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_NexusOperationExecutionInfo'NexusHeaderEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operationId' @:: Lens' NexusOperationExecutionListInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.runId' @:: Lens' NexusOperationExecutionListInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.endpoint' @:: Lens' NexusOperationExecutionListInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.service' @:: Lens' NexusOperationExecutionListInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operation' @:: Lens' NexusOperationExecutionListInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.scheduleTime' @:: Lens' NexusOperationExecutionListInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'scheduleTime' @:: Lens' NexusOperationExecutionListInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.closeTime' @:: Lens' NexusOperationExecutionListInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'closeTime' @:: Lens' NexusOperationExecutionListInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.status' @:: Lens' NexusOperationExecutionListInfo Proto.Temporal.Api.Enums.V1.Nexus.NexusOperationExecutionStatus@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.searchAttributes' @:: Lens' NexusOperationExecutionListInfo Proto.Temporal.Api.Common.V1.Message.SearchAttributes@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'searchAttributes' @:: Lens' NexusOperationExecutionListInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.stateTransitionCount' @:: Lens' NexusOperationExecutionListInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.executionDuration' @:: Lens' NexusOperationExecutionListInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'executionDuration' @:: Lens' NexusOperationExecutionListInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.stateSizeBytes' @:: Lens' NexusOperationExecutionListInfo Data.Int.Int64@ -}
data NexusOperationExecutionListInfo
  = NexusOperationExecutionListInfo'_constructor {_NexusOperationExecutionListInfo'operationId :: !Data.Text.Text,
                                                  _NexusOperationExecutionListInfo'runId :: !Data.Text.Text,
                                                  _NexusOperationExecutionListInfo'endpoint :: !Data.Text.Text,
                                                  _NexusOperationExecutionListInfo'service :: !Data.Text.Text,
                                                  _NexusOperationExecutionListInfo'operation :: !Data.Text.Text,
                                                  _NexusOperationExecutionListInfo'scheduleTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                  _NexusOperationExecutionListInfo'closeTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                                  _NexusOperationExecutionListInfo'status :: !Proto.Temporal.Api.Enums.V1.Nexus.NexusOperationExecutionStatus,
                                                  _NexusOperationExecutionListInfo'searchAttributes :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes),
                                                  _NexusOperationExecutionListInfo'stateTransitionCount :: !Data.Int.Int64,
                                                  _NexusOperationExecutionListInfo'executionDuration :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                  _NexusOperationExecutionListInfo'stateSizeBytes :: !Data.Int.Int64,
                                                  _NexusOperationExecutionListInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NexusOperationExecutionListInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NexusOperationExecutionListInfo "operationId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionListInfo'operationId
           (\ x__ y__
              -> x__ {_NexusOperationExecutionListInfo'operationId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionListInfo "runId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionListInfo'runId
           (\ x__ y__ -> x__ {_NexusOperationExecutionListInfo'runId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionListInfo "endpoint" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionListInfo'endpoint
           (\ x__ y__
              -> x__ {_NexusOperationExecutionListInfo'endpoint = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionListInfo "service" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionListInfo'service
           (\ x__ y__
              -> x__ {_NexusOperationExecutionListInfo'service = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionListInfo "operation" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionListInfo'operation
           (\ x__ y__
              -> x__ {_NexusOperationExecutionListInfo'operation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionListInfo "scheduleTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionListInfo'scheduleTime
           (\ x__ y__
              -> x__ {_NexusOperationExecutionListInfo'scheduleTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NexusOperationExecutionListInfo "maybe'scheduleTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionListInfo'scheduleTime
           (\ x__ y__
              -> x__ {_NexusOperationExecutionListInfo'scheduleTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionListInfo "closeTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionListInfo'closeTime
           (\ x__ y__
              -> x__ {_NexusOperationExecutionListInfo'closeTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NexusOperationExecutionListInfo "maybe'closeTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionListInfo'closeTime
           (\ x__ y__
              -> x__ {_NexusOperationExecutionListInfo'closeTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionListInfo "status" Proto.Temporal.Api.Enums.V1.Nexus.NexusOperationExecutionStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionListInfo'status
           (\ x__ y__ -> x__ {_NexusOperationExecutionListInfo'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionListInfo "searchAttributes" Proto.Temporal.Api.Common.V1.Message.SearchAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionListInfo'searchAttributes
           (\ x__ y__
              -> x__ {_NexusOperationExecutionListInfo'searchAttributes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NexusOperationExecutionListInfo "maybe'searchAttributes" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionListInfo'searchAttributes
           (\ x__ y__
              -> x__ {_NexusOperationExecutionListInfo'searchAttributes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionListInfo "stateTransitionCount" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionListInfo'stateTransitionCount
           (\ x__ y__
              -> x__
                   {_NexusOperationExecutionListInfo'stateTransitionCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionListInfo "executionDuration" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionListInfo'executionDuration
           (\ x__ y__
              -> x__ {_NexusOperationExecutionListInfo'executionDuration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NexusOperationExecutionListInfo "maybe'executionDuration" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionListInfo'executionDuration
           (\ x__ y__
              -> x__ {_NexusOperationExecutionListInfo'executionDuration = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NexusOperationExecutionListInfo "stateSizeBytes" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NexusOperationExecutionListInfo'stateSizeBytes
           (\ x__ y__
              -> x__ {_NexusOperationExecutionListInfo'stateSizeBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Message NexusOperationExecutionListInfo where
  messageName _
    = Data.Text.pack
        "temporal.api.nexus.v1.NexusOperationExecutionListInfo"
  packedMessageDescriptor _
    = "\n\
      \\USNexusOperationExecutionListInfo\DC2!\n\
      \\foperation_id\CAN\SOH \SOH(\tR\voperationId\DC2\NAK\n\
      \\ACKrun_id\CAN\STX \SOH(\tR\ENQrunId\DC2\SUB\n\
      \\bendpoint\CAN\ETX \SOH(\tR\bendpoint\DC2\CAN\n\
      \\aservice\CAN\EOT \SOH(\tR\aservice\DC2\FS\n\
      \\toperation\CAN\ENQ \SOH(\tR\toperation\DC2?\n\
      \\rschedule_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\fscheduleTime\DC29\n\
      \\n\
      \close_time\CAN\a \SOH(\v2\SUB.google.protobuf.TimestampR\tcloseTime\DC2L\n\
      \\ACKstatus\CAN\b \SOH(\SO24.temporal.api.enums.v1.NexusOperationExecutionStatusR\ACKstatus\DC2U\n\
      \\DC1search_attributes\CAN\t \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC24\n\
      \\SYNstate_transition_count\CAN\n\
      \ \SOH(\ETXR\DC4stateTransitionCount\DC2H\n\
      \\DC2execution_duration\CAN\v \SOH(\v2\EM.google.protobuf.DurationR\DC1executionDuration\DC2(\n\
      \\DLEstate_size_bytes\CAN\f \SOH(\ETXR\SOstateSizeBytes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operationId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operationId")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionListInfo
        runId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "run_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"runId")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionListInfo
        endpoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"endpoint")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionListInfo
        service__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"service")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionListInfo
        operation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operation")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionListInfo
        scheduleTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleTime")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionListInfo
        closeTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "close_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'closeTime")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionListInfo
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Nexus.NexusOperationExecutionStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionListInfo
        searchAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "search_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.SearchAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'searchAttributes")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionListInfo
        stateTransitionCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state_transition_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stateTransitionCount")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionListInfo
        executionDuration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "execution_duration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'executionDuration")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionListInfo
        stateSizeBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state_size_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stateSizeBytes")) ::
              Data.ProtoLens.FieldDescriptor NexusOperationExecutionListInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operationId__field_descriptor),
           (Data.ProtoLens.Tag 2, runId__field_descriptor),
           (Data.ProtoLens.Tag 3, endpoint__field_descriptor),
           (Data.ProtoLens.Tag 4, service__field_descriptor),
           (Data.ProtoLens.Tag 5, operation__field_descriptor),
           (Data.ProtoLens.Tag 6, scheduleTime__field_descriptor),
           (Data.ProtoLens.Tag 7, closeTime__field_descriptor),
           (Data.ProtoLens.Tag 8, status__field_descriptor),
           (Data.ProtoLens.Tag 9, searchAttributes__field_descriptor),
           (Data.ProtoLens.Tag 10, stateTransitionCount__field_descriptor),
           (Data.ProtoLens.Tag 11, executionDuration__field_descriptor),
           (Data.ProtoLens.Tag 12, stateSizeBytes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NexusOperationExecutionListInfo'_unknownFields
        (\ x__ y__
           -> x__ {_NexusOperationExecutionListInfo'_unknownFields = y__})
  defMessage
    = NexusOperationExecutionListInfo'_constructor
        {_NexusOperationExecutionListInfo'operationId = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionListInfo'runId = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionListInfo'endpoint = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionListInfo'service = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionListInfo'operation = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionListInfo'scheduleTime = Prelude.Nothing,
         _NexusOperationExecutionListInfo'closeTime = Prelude.Nothing,
         _NexusOperationExecutionListInfo'status = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionListInfo'searchAttributes = Prelude.Nothing,
         _NexusOperationExecutionListInfo'stateTransitionCount = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionListInfo'executionDuration = Prelude.Nothing,
         _NexusOperationExecutionListInfo'stateSizeBytes = Data.ProtoLens.fieldDefault,
         _NexusOperationExecutionListInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NexusOperationExecutionListInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser NexusOperationExecutionListInfo
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operationId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "run_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"runId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "endpoint"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endpoint") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "service"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"service") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operation") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleTime") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "close_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"closeTime") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "search_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"searchAttributes") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "state_transition_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stateTransitionCount") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "execution_duration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"executionDuration") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "state_size_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stateSizeBytes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "NexusOperationExecutionListInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"operationId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"runId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"endpoint") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"service") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operation") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((Prelude..)
                                     (\ bs
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     Data.Text.Encoding.encodeUtf8 _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'scheduleTime") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'closeTime") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                           ((Prelude..)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 Prelude.fromIntegral)
                                              Prelude.fromEnum _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'searchAttributes")
                                            _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field
                                                    @"stateTransitionCount")
                                                 _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                 ((Prelude..)
                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    Prelude.fromIntegral _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'executionDuration")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                     ((Prelude..)
                                                        (\ bs
                                                           -> (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                        Data.ProtoLens.encodeMessage _v))
                                           ((Data.Monoid.<>)
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"stateSizeBytes")
                                                       _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                       ((Prelude..)
                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          Prelude.fromIntegral _v))
                                              (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                 (Lens.Family2.view
                                                    Data.ProtoLens.unknownFields _x)))))))))))))
instance Control.DeepSeq.NFData NexusOperationExecutionListInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NexusOperationExecutionListInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NexusOperationExecutionListInfo'operationId x__)
                (Control.DeepSeq.deepseq
                   (_NexusOperationExecutionListInfo'runId x__)
                   (Control.DeepSeq.deepseq
                      (_NexusOperationExecutionListInfo'endpoint x__)
                      (Control.DeepSeq.deepseq
                         (_NexusOperationExecutionListInfo'service x__)
                         (Control.DeepSeq.deepseq
                            (_NexusOperationExecutionListInfo'operation x__)
                            (Control.DeepSeq.deepseq
                               (_NexusOperationExecutionListInfo'scheduleTime x__)
                               (Control.DeepSeq.deepseq
                                  (_NexusOperationExecutionListInfo'closeTime x__)
                                  (Control.DeepSeq.deepseq
                                     (_NexusOperationExecutionListInfo'status x__)
                                     (Control.DeepSeq.deepseq
                                        (_NexusOperationExecutionListInfo'searchAttributes x__)
                                        (Control.DeepSeq.deepseq
                                           (_NexusOperationExecutionListInfo'stateTransitionCount
                                              x__)
                                           (Control.DeepSeq.deepseq
                                              (_NexusOperationExecutionListInfo'executionDuration
                                                 x__)
                                              (Control.DeepSeq.deepseq
                                                 (_NexusOperationExecutionListInfo'stateSizeBytes
                                                    x__)
                                                 ()))))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.endpoint' @:: Lens' PropagatedSerializationContext Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.service' @:: Lens' PropagatedSerializationContext Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operation' @:: Lens' PropagatedSerializationContext Data.Text.Text@ -}
data PropagatedSerializationContext
  = PropagatedSerializationContext'_constructor {_PropagatedSerializationContext'endpoint :: !Data.Text.Text,
                                                 _PropagatedSerializationContext'service :: !Data.Text.Text,
                                                 _PropagatedSerializationContext'operation :: !Data.Text.Text,
                                                 _PropagatedSerializationContext'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PropagatedSerializationContext where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PropagatedSerializationContext "endpoint" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PropagatedSerializationContext'endpoint
           (\ x__ y__
              -> x__ {_PropagatedSerializationContext'endpoint = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PropagatedSerializationContext "service" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PropagatedSerializationContext'service
           (\ x__ y__ -> x__ {_PropagatedSerializationContext'service = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PropagatedSerializationContext "operation" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PropagatedSerializationContext'operation
           (\ x__ y__
              -> x__ {_PropagatedSerializationContext'operation = y__}))
        Prelude.id
instance Data.ProtoLens.Message PropagatedSerializationContext where
  messageName _
    = Data.Text.pack
        "temporal.api.nexus.v1.PropagatedSerializationContext"
  packedMessageDescriptor _
    = "\n\
      \\RSPropagatedSerializationContext\DC2\SUB\n\
      \\bendpoint\CAN\SOH \SOH(\tR\bendpoint\DC2\CAN\n\
      \\aservice\CAN\STX \SOH(\tR\aservice\DC2\FS\n\
      \\toperation\CAN\ETX \SOH(\tR\toperation"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        endpoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"endpoint")) ::
              Data.ProtoLens.FieldDescriptor PropagatedSerializationContext
        service__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"service")) ::
              Data.ProtoLens.FieldDescriptor PropagatedSerializationContext
        operation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operation")) ::
              Data.ProtoLens.FieldDescriptor PropagatedSerializationContext
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, endpoint__field_descriptor),
           (Data.ProtoLens.Tag 2, service__field_descriptor),
           (Data.ProtoLens.Tag 3, operation__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PropagatedSerializationContext'_unknownFields
        (\ x__ y__
           -> x__ {_PropagatedSerializationContext'_unknownFields = y__})
  defMessage
    = PropagatedSerializationContext'_constructor
        {_PropagatedSerializationContext'endpoint = Data.ProtoLens.fieldDefault,
         _PropagatedSerializationContext'service = Data.ProtoLens.fieldDefault,
         _PropagatedSerializationContext'operation = Data.ProtoLens.fieldDefault,
         _PropagatedSerializationContext'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PropagatedSerializationContext
          -> Data.ProtoLens.Encoding.Bytes.Parser PropagatedSerializationContext
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "endpoint"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endpoint") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "service"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"service") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operation") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "PropagatedSerializationContext"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"endpoint") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"service") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operation") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData PropagatedSerializationContext where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PropagatedSerializationContext'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PropagatedSerializationContext'endpoint x__)
                (Control.DeepSeq.deepseq
                   (_PropagatedSerializationContext'service x__)
                   (Control.DeepSeq.deepseq
                      (_PropagatedSerializationContext'operation x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.header' @:: Lens' Request (Data.Map.Map Data.Text.Text Data.Text.Text)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.scheduledTime' @:: Lens' Request Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'scheduledTime' @:: Lens' Request (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.capabilities' @:: Lens' Request Request'Capabilities@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'capabilities' @:: Lens' Request (Prelude.Maybe Request'Capabilities)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.endpoint' @:: Lens' Request Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'variant' @:: Lens' Request (Prelude.Maybe Request'Variant)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'startOperation' @:: Lens' Request (Prelude.Maybe StartOperationRequest)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.startOperation' @:: Lens' Request StartOperationRequest@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'cancelOperation' @:: Lens' Request (Prelude.Maybe CancelOperationRequest)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.cancelOperation' @:: Lens' Request CancelOperationRequest@ -}
data Request
  = Request'_constructor {_Request'header :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                          _Request'scheduledTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                          _Request'capabilities :: !(Prelude.Maybe Request'Capabilities),
                          _Request'endpoint :: !Data.Text.Text,
                          _Request'variant :: !(Prelude.Maybe Request'Variant),
                          _Request'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Request where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Request'Variant
  = Request'StartOperation !StartOperationRequest |
    Request'CancelOperation !CancelOperationRequest
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Request "header" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'header (\ x__ y__ -> x__ {_Request'header = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Request "scheduledTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'scheduledTime
           (\ x__ y__ -> x__ {_Request'scheduledTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Request "maybe'scheduledTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'scheduledTime
           (\ x__ y__ -> x__ {_Request'scheduledTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Request "capabilities" Request'Capabilities where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'capabilities
           (\ x__ y__ -> x__ {_Request'capabilities = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Request "maybe'capabilities" (Prelude.Maybe Request'Capabilities) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'capabilities
           (\ x__ y__ -> x__ {_Request'capabilities = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Request "endpoint" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'endpoint (\ x__ y__ -> x__ {_Request'endpoint = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Request "maybe'variant" (Prelude.Maybe Request'Variant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'variant (\ x__ y__ -> x__ {_Request'variant = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Request "maybe'startOperation" (Prelude.Maybe StartOperationRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'variant (\ x__ y__ -> x__ {_Request'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Request'StartOperation x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Request'StartOperation y__))
instance Data.ProtoLens.Field.HasField Request "startOperation" StartOperationRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'variant (\ x__ y__ -> x__ {_Request'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Request'StartOperation x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Request'StartOperation y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Request "maybe'cancelOperation" (Prelude.Maybe CancelOperationRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'variant (\ x__ y__ -> x__ {_Request'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Request'CancelOperation x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Request'CancelOperation y__))
instance Data.ProtoLens.Field.HasField Request "cancelOperation" CancelOperationRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'variant (\ x__ y__ -> x__ {_Request'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Request'CancelOperation x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Request'CancelOperation y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Request where
  messageName _ = Data.Text.pack "temporal.api.nexus.v1.Request"
  packedMessageDescriptor _
    = "\n\
      \\aRequest\DC2B\n\
      \\ACKheader\CAN\SOH \ETX(\v2*.temporal.api.nexus.v1.Request.HeaderEntryR\ACKheader\DC2A\n\
      \\SOscheduled_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\rscheduledTime\DC2O\n\
      \\fcapabilities\CANd \SOH(\v2+.temporal.api.nexus.v1.Request.CapabilitiesR\fcapabilities\DC2W\n\
      \\SIstart_operation\CAN\ETX \SOH(\v2,.temporal.api.nexus.v1.StartOperationRequestH\NULR\SOstartOperation\DC2Z\n\
      \\DLEcancel_operation\CAN\EOT \SOH(\v2-.temporal.api.nexus.v1.CancelOperationRequestH\NULR\SIcancelOperation\DC2\SUB\n\
      \\bendpoint\CAN\n\
      \ \SOH(\tR\bendpoint\SUBL\n\
      \\fCapabilities\DC2<\n\
      \\SUBtemporal_failure_responses\CAN\SOH \SOH(\bR\CANtemporalFailureResponses\SUB9\n\
      \\vHeaderEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOHB\t\n\
      \\avariant"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Request'HeaderEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"header")) ::
              Data.ProtoLens.FieldDescriptor Request
        scheduledTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scheduled_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduledTime")) ::
              Data.ProtoLens.FieldDescriptor Request
        capabilities__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "capabilities"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Request'Capabilities)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'capabilities")) ::
              Data.ProtoLens.FieldDescriptor Request
        endpoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"endpoint")) ::
              Data.ProtoLens.FieldDescriptor Request
        startOperation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_operation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StartOperationRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startOperation")) ::
              Data.ProtoLens.FieldDescriptor Request
        cancelOperation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancel_operation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CancelOperationRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cancelOperation")) ::
              Data.ProtoLens.FieldDescriptor Request
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, header__field_descriptor),
           (Data.ProtoLens.Tag 2, scheduledTime__field_descriptor),
           (Data.ProtoLens.Tag 100, capabilities__field_descriptor),
           (Data.ProtoLens.Tag 10, endpoint__field_descriptor),
           (Data.ProtoLens.Tag 3, startOperation__field_descriptor),
           (Data.ProtoLens.Tag 4, cancelOperation__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Request'_unknownFields
        (\ x__ y__ -> x__ {_Request'_unknownFields = y__})
  defMessage
    = Request'_constructor
        {_Request'header = Data.Map.empty,
         _Request'scheduledTime = Prelude.Nothing,
         _Request'capabilities = Prelude.Nothing,
         _Request'endpoint = Data.ProtoLens.fieldDefault,
         _Request'variant = Prelude.Nothing, _Request'_unknownFields = []}
  parseMessage
    = let
        loop :: Request -> Data.ProtoLens.Encoding.Bytes.Parser Request
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !(entry :: Request'HeaderEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                     (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                         Data.ProtoLens.Encoding.Bytes.isolate
                                                                           (Prelude.fromIntegral
                                                                              len)
                                                                           Data.ProtoLens.parseMessage)
                                                                     "header"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"header")
                                        (\ !t -> Data.Map.insert key value t) x))
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "scheduled_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduledTime") y x)
                        802
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "capabilities"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"capabilities") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "endpoint"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endpoint") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_operation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startOperation") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cancel_operation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cancelOperation") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Request"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.Monoid.mconcat
                (Prelude.map
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"value") (Prelude.snd _v)
                                    (Data.ProtoLens.defMessage :: Request'HeaderEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"header") _x))))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'scheduledTime") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'capabilities") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 802)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"endpoint") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'variant") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just (Request'StartOperation v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage v)
                            (Prelude.Just (Request'CancelOperation v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData Request where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Request'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Request'header x__)
                (Control.DeepSeq.deepseq
                   (_Request'scheduledTime x__)
                   (Control.DeepSeq.deepseq
                      (_Request'capabilities x__)
                      (Control.DeepSeq.deepseq
                         (_Request'endpoint x__)
                         (Control.DeepSeq.deepseq (_Request'variant x__) ())))))
instance Control.DeepSeq.NFData Request'Variant where
  rnf (Request'StartOperation x__) = Control.DeepSeq.rnf x__
  rnf (Request'CancelOperation x__) = Control.DeepSeq.rnf x__
_Request'StartOperation ::
  Data.ProtoLens.Prism.Prism' Request'Variant StartOperationRequest
_Request'StartOperation
  = Data.ProtoLens.Prism.prism'
      Request'StartOperation
      (\ p__
         -> case p__ of
              (Request'StartOperation p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Request'CancelOperation ::
  Data.ProtoLens.Prism.Prism' Request'Variant CancelOperationRequest
_Request'CancelOperation
  = Data.ProtoLens.Prism.prism'
      Request'CancelOperation
      (\ p__
         -> case p__ of
              (Request'CancelOperation p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.temporalFailureResponses' @:: Lens' Request'Capabilities Prelude.Bool@ -}
data Request'Capabilities
  = Request'Capabilities'_constructor {_Request'Capabilities'temporalFailureResponses :: !Prelude.Bool,
                                       _Request'Capabilities'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Request'Capabilities where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Request'Capabilities "temporalFailureResponses" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'Capabilities'temporalFailureResponses
           (\ x__ y__
              -> x__ {_Request'Capabilities'temporalFailureResponses = y__}))
        Prelude.id
instance Data.ProtoLens.Message Request'Capabilities where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.Request.Capabilities"
  packedMessageDescriptor _
    = "\n\
      \\fCapabilities\DC2<\n\
      \\SUBtemporal_failure_responses\CAN\SOH \SOH(\bR\CANtemporalFailureResponses"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        temporalFailureResponses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "temporal_failure_responses"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"temporalFailureResponses")) ::
              Data.ProtoLens.FieldDescriptor Request'Capabilities
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, 
            temporalFailureResponses__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Request'Capabilities'_unknownFields
        (\ x__ y__ -> x__ {_Request'Capabilities'_unknownFields = y__})
  defMessage
    = Request'Capabilities'_constructor
        {_Request'Capabilities'temporalFailureResponses = Data.ProtoLens.fieldDefault,
         _Request'Capabilities'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Request'Capabilities
          -> Data.ProtoLens.Encoding.Bytes.Parser Request'Capabilities
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "temporal_failure_responses"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"temporalFailureResponses") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Capabilities"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"temporalFailureResponses") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Request'Capabilities where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Request'Capabilities'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Request'Capabilities'temporalFailureResponses x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.key' @:: Lens' Request'HeaderEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.value' @:: Lens' Request'HeaderEntry Data.Text.Text@ -}
data Request'HeaderEntry
  = Request'HeaderEntry'_constructor {_Request'HeaderEntry'key :: !Data.Text.Text,
                                      _Request'HeaderEntry'value :: !Data.Text.Text,
                                      _Request'HeaderEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Request'HeaderEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Request'HeaderEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'HeaderEntry'key
           (\ x__ y__ -> x__ {_Request'HeaderEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Request'HeaderEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'HeaderEntry'value
           (\ x__ y__ -> x__ {_Request'HeaderEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Request'HeaderEntry where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.Request.HeaderEntry"
  packedMessageDescriptor _
    = "\n\
      \\vHeaderEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor Request'HeaderEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor Request'HeaderEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Request'HeaderEntry'_unknownFields
        (\ x__ y__ -> x__ {_Request'HeaderEntry'_unknownFields = y__})
  defMessage
    = Request'HeaderEntry'_constructor
        {_Request'HeaderEntry'key = Data.ProtoLens.fieldDefault,
         _Request'HeaderEntry'value = Data.ProtoLens.fieldDefault,
         _Request'HeaderEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Request'HeaderEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser Request'HeaderEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HeaderEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Request'HeaderEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Request'HeaderEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Request'HeaderEntry'key x__)
                (Control.DeepSeq.deepseq (_Request'HeaderEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'variant' @:: Lens' Response (Prelude.Maybe Response'Variant)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'startOperation' @:: Lens' Response (Prelude.Maybe StartOperationResponse)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.startOperation' @:: Lens' Response StartOperationResponse@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'cancelOperation' @:: Lens' Response (Prelude.Maybe CancelOperationResponse)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.cancelOperation' @:: Lens' Response CancelOperationResponse@ -}
data Response
  = Response'_constructor {_Response'variant :: !(Prelude.Maybe Response'Variant),
                           _Response'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Response where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Response'Variant
  = Response'StartOperation !StartOperationResponse |
    Response'CancelOperation !CancelOperationResponse
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Response "maybe'variant" (Prelude.Maybe Response'Variant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'variant (\ x__ y__ -> x__ {_Response'variant = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Response "maybe'startOperation" (Prelude.Maybe StartOperationResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'variant (\ x__ y__ -> x__ {_Response'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Response'StartOperation x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Response'StartOperation y__))
instance Data.ProtoLens.Field.HasField Response "startOperation" StartOperationResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'variant (\ x__ y__ -> x__ {_Response'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Response'StartOperation x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Response'StartOperation y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Response "maybe'cancelOperation" (Prelude.Maybe CancelOperationResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'variant (\ x__ y__ -> x__ {_Response'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Response'CancelOperation x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Response'CancelOperation y__))
instance Data.ProtoLens.Field.HasField Response "cancelOperation" CancelOperationResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'variant (\ x__ y__ -> x__ {_Response'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Response'CancelOperation x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Response'CancelOperation y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Response where
  messageName _ = Data.Text.pack "temporal.api.nexus.v1.Response"
  packedMessageDescriptor _
    = "\n\
      \\bResponse\DC2X\n\
      \\SIstart_operation\CAN\SOH \SOH(\v2-.temporal.api.nexus.v1.StartOperationResponseH\NULR\SOstartOperation\DC2[\n\
      \\DLEcancel_operation\CAN\STX \SOH(\v2..temporal.api.nexus.v1.CancelOperationResponseH\NULR\SIcancelOperationB\t\n\
      \\avariant"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        startOperation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_operation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StartOperationResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startOperation")) ::
              Data.ProtoLens.FieldDescriptor Response
        cancelOperation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancel_operation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CancelOperationResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cancelOperation")) ::
              Data.ProtoLens.FieldDescriptor Response
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, startOperation__field_descriptor),
           (Data.ProtoLens.Tag 2, cancelOperation__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Response'_unknownFields
        (\ x__ y__ -> x__ {_Response'_unknownFields = y__})
  defMessage
    = Response'_constructor
        {_Response'variant = Prelude.Nothing,
         _Response'_unknownFields = []}
  parseMessage
    = let
        loop :: Response -> Data.ProtoLens.Encoding.Bytes.Parser Response
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_operation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startOperation") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cancel_operation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cancelOperation") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Response"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'variant") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (Response'StartOperation v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Response'CancelOperation v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Response where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Response'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Response'variant x__) ())
instance Control.DeepSeq.NFData Response'Variant where
  rnf (Response'StartOperation x__) = Control.DeepSeq.rnf x__
  rnf (Response'CancelOperation x__) = Control.DeepSeq.rnf x__
_Response'StartOperation ::
  Data.ProtoLens.Prism.Prism' Response'Variant StartOperationResponse
_Response'StartOperation
  = Data.ProtoLens.Prism.prism'
      Response'StartOperation
      (\ p__
         -> case p__ of
              (Response'StartOperation p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Response'CancelOperation ::
  Data.ProtoLens.Prism.Prism' Response'Variant CancelOperationResponse
_Response'CancelOperation
  = Data.ProtoLens.Prism.prism'
      Response'CancelOperation
      (\ p__
         -> case p__ of
              (Response'CancelOperation p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.service' @:: Lens' StartOperationRequest Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operation' @:: Lens' StartOperationRequest Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.requestId' @:: Lens' StartOperationRequest Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.callback' @:: Lens' StartOperationRequest Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.payload' @:: Lens' StartOperationRequest Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'payload' @:: Lens' StartOperationRequest (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.callbackHeader' @:: Lens' StartOperationRequest (Data.Map.Map Data.Text.Text Data.Text.Text)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.links' @:: Lens' StartOperationRequest [Link]@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.vec'links' @:: Lens' StartOperationRequest (Data.Vector.Vector Link)@ -}
data StartOperationRequest
  = StartOperationRequest'_constructor {_StartOperationRequest'service :: !Data.Text.Text,
                                        _StartOperationRequest'operation :: !Data.Text.Text,
                                        _StartOperationRequest'requestId :: !Data.Text.Text,
                                        _StartOperationRequest'callback :: !Data.Text.Text,
                                        _StartOperationRequest'payload :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                        _StartOperationRequest'callbackHeader :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                                        _StartOperationRequest'links :: !(Data.Vector.Vector Link),
                                        _StartOperationRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StartOperationRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StartOperationRequest "service" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'service
           (\ x__ y__ -> x__ {_StartOperationRequest'service = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationRequest "operation" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'operation
           (\ x__ y__ -> x__ {_StartOperationRequest'operation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationRequest "requestId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'requestId
           (\ x__ y__ -> x__ {_StartOperationRequest'requestId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationRequest "callback" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'callback
           (\ x__ y__ -> x__ {_StartOperationRequest'callback = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationRequest "payload" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'payload
           (\ x__ y__ -> x__ {_StartOperationRequest'payload = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartOperationRequest "maybe'payload" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'payload
           (\ x__ y__ -> x__ {_StartOperationRequest'payload = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationRequest "callbackHeader" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'callbackHeader
           (\ x__ y__ -> x__ {_StartOperationRequest'callbackHeader = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationRequest "links" [Link] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'links
           (\ x__ y__ -> x__ {_StartOperationRequest'links = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StartOperationRequest "vec'links" (Data.Vector.Vector Link) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'links
           (\ x__ y__ -> x__ {_StartOperationRequest'links = y__}))
        Prelude.id
instance Data.ProtoLens.Message StartOperationRequest where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.StartOperationRequest"
  packedMessageDescriptor _
    = "\n\
      \\NAKStartOperationRequest\DC2\CAN\n\
      \\aservice\CAN\SOH \SOH(\tR\aservice\DC2\FS\n\
      \\toperation\CAN\STX \SOH(\tR\toperation\DC2\GS\n\
      \\n\
      \request_id\CAN\ETX \SOH(\tR\trequestId\DC2\SUB\n\
      \\bcallback\CAN\EOT \SOH(\tR\bcallback\DC29\n\
      \\apayload\CAN\ENQ \SOH(\v2\US.temporal.api.common.v1.PayloadR\apayload\DC2i\n\
      \\SIcallback_header\CAN\ACK \ETX(\v2@.temporal.api.nexus.v1.StartOperationRequest.CallbackHeaderEntryR\SOcallbackHeader\DC21\n\
      \\ENQlinks\CAN\a \ETX(\v2\ESC.temporal.api.nexus.v1.LinkR\ENQlinks\SUBA\n\
      \\DC3CallbackHeaderEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        service__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"service")) ::
              Data.ProtoLens.FieldDescriptor StartOperationRequest
        operation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operation")) ::
              Data.ProtoLens.FieldDescriptor StartOperationRequest
        requestId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestId")) ::
              Data.ProtoLens.FieldDescriptor StartOperationRequest
        callback__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "callback"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"callback")) ::
              Data.ProtoLens.FieldDescriptor StartOperationRequest
        payload__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payload"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'payload")) ::
              Data.ProtoLens.FieldDescriptor StartOperationRequest
        callbackHeader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "callback_header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StartOperationRequest'CallbackHeaderEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"callbackHeader")) ::
              Data.ProtoLens.FieldDescriptor StartOperationRequest
        links__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "links"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Link)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"links")) ::
              Data.ProtoLens.FieldDescriptor StartOperationRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, service__field_descriptor),
           (Data.ProtoLens.Tag 2, operation__field_descriptor),
           (Data.ProtoLens.Tag 3, requestId__field_descriptor),
           (Data.ProtoLens.Tag 4, callback__field_descriptor),
           (Data.ProtoLens.Tag 5, payload__field_descriptor),
           (Data.ProtoLens.Tag 6, callbackHeader__field_descriptor),
           (Data.ProtoLens.Tag 7, links__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StartOperationRequest'_unknownFields
        (\ x__ y__ -> x__ {_StartOperationRequest'_unknownFields = y__})
  defMessage
    = StartOperationRequest'_constructor
        {_StartOperationRequest'service = Data.ProtoLens.fieldDefault,
         _StartOperationRequest'operation = Data.ProtoLens.fieldDefault,
         _StartOperationRequest'requestId = Data.ProtoLens.fieldDefault,
         _StartOperationRequest'callback = Data.ProtoLens.fieldDefault,
         _StartOperationRequest'payload = Prelude.Nothing,
         _StartOperationRequest'callbackHeader = Data.Map.empty,
         _StartOperationRequest'links = Data.Vector.Generic.empty,
         _StartOperationRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StartOperationRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Link
             -> Data.ProtoLens.Encoding.Bytes.Parser StartOperationRequest
        loop x mutable'links
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'links <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'links)
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
                              (Data.ProtoLens.Field.field @"vec'links") frozen'links x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "service"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"service") y x)
                                  mutable'links
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operation") y x)
                                  mutable'links
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "request_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"requestId") y x)
                                  mutable'links
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "callback"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"callback") y x)
                                  mutable'links
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "payload"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"payload") y x)
                                  mutable'links
                        50
                          -> do !(entry :: StartOperationRequest'CallbackHeaderEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                           (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                               Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                 (Prelude.fromIntegral
                                                                                                    len)
                                                                                                 Data.ProtoLens.parseMessage)
                                                                                           "callback_header"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"callbackHeader")
                                        (\ !t -> Data.Map.insert key value t) x)
                                     mutable'links)
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "links"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'links y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'links
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'links <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'links)
          "StartOperationRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"service") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operation") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"requestId") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"callback") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'payload") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         ((Data.Monoid.<>)
                            (Data.Monoid.mconcat
                               (Prelude.map
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                                (Lens.Family2.set
                                                   (Data.ProtoLens.Field.field @"value")
                                                   (Prelude.snd _v)
                                                   (Data.ProtoLens.defMessage ::
                                                      StartOperationRequest'CallbackHeaderEntry)))))
                                  (Data.Map.toList
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"callbackHeader") _x))))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage _v))
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'links") _x))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData StartOperationRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StartOperationRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StartOperationRequest'service x__)
                (Control.DeepSeq.deepseq
                   (_StartOperationRequest'operation x__)
                   (Control.DeepSeq.deepseq
                      (_StartOperationRequest'requestId x__)
                      (Control.DeepSeq.deepseq
                         (_StartOperationRequest'callback x__)
                         (Control.DeepSeq.deepseq
                            (_StartOperationRequest'payload x__)
                            (Control.DeepSeq.deepseq
                               (_StartOperationRequest'callbackHeader x__)
                               (Control.DeepSeq.deepseq
                                  (_StartOperationRequest'links x__) ())))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.key' @:: Lens' StartOperationRequest'CallbackHeaderEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.value' @:: Lens' StartOperationRequest'CallbackHeaderEntry Data.Text.Text@ -}
data StartOperationRequest'CallbackHeaderEntry
  = StartOperationRequest'CallbackHeaderEntry'_constructor {_StartOperationRequest'CallbackHeaderEntry'key :: !Data.Text.Text,
                                                            _StartOperationRequest'CallbackHeaderEntry'value :: !Data.Text.Text,
                                                            _StartOperationRequest'CallbackHeaderEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StartOperationRequest'CallbackHeaderEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StartOperationRequest'CallbackHeaderEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'CallbackHeaderEntry'key
           (\ x__ y__
              -> x__ {_StartOperationRequest'CallbackHeaderEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationRequest'CallbackHeaderEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'CallbackHeaderEntry'value
           (\ x__ y__
              -> x__ {_StartOperationRequest'CallbackHeaderEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message StartOperationRequest'CallbackHeaderEntry where
  messageName _
    = Data.Text.pack
        "temporal.api.nexus.v1.StartOperationRequest.CallbackHeaderEntry"
  packedMessageDescriptor _
    = "\n\
      \\DC3CallbackHeaderEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor StartOperationRequest'CallbackHeaderEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor StartOperationRequest'CallbackHeaderEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StartOperationRequest'CallbackHeaderEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_StartOperationRequest'CallbackHeaderEntry'_unknownFields = y__})
  defMessage
    = StartOperationRequest'CallbackHeaderEntry'_constructor
        {_StartOperationRequest'CallbackHeaderEntry'key = Data.ProtoLens.fieldDefault,
         _StartOperationRequest'CallbackHeaderEntry'value = Data.ProtoLens.fieldDefault,
         _StartOperationRequest'CallbackHeaderEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StartOperationRequest'CallbackHeaderEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser StartOperationRequest'CallbackHeaderEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CallbackHeaderEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData StartOperationRequest'CallbackHeaderEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StartOperationRequest'CallbackHeaderEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StartOperationRequest'CallbackHeaderEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_StartOperationRequest'CallbackHeaderEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'variant' @:: Lens' StartOperationResponse (Prelude.Maybe StartOperationResponse'Variant)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'syncSuccess' @:: Lens' StartOperationResponse (Prelude.Maybe StartOperationResponse'Sync)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.syncSuccess' @:: Lens' StartOperationResponse StartOperationResponse'Sync@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'asyncSuccess' @:: Lens' StartOperationResponse (Prelude.Maybe StartOperationResponse'Async)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.asyncSuccess' @:: Lens' StartOperationResponse StartOperationResponse'Async@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'operationError' @:: Lens' StartOperationResponse (Prelude.Maybe UnsuccessfulOperationError)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operationError' @:: Lens' StartOperationResponse UnsuccessfulOperationError@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'failure' @:: Lens' StartOperationResponse (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.failure' @:: Lens' StartOperationResponse Proto.Temporal.Api.Failure.V1.Message.Failure@ -}
data StartOperationResponse
  = StartOperationResponse'_constructor {_StartOperationResponse'variant :: !(Prelude.Maybe StartOperationResponse'Variant),
                                         _StartOperationResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StartOperationResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data StartOperationResponse'Variant
  = StartOperationResponse'SyncSuccess !StartOperationResponse'Sync |
    StartOperationResponse'AsyncSuccess !StartOperationResponse'Async |
    StartOperationResponse'OperationError !UnsuccessfulOperationError |
    StartOperationResponse'Failure !Proto.Temporal.Api.Failure.V1.Message.Failure
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField StartOperationResponse "maybe'variant" (Prelude.Maybe StartOperationResponse'Variant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'variant
           (\ x__ y__ -> x__ {_StartOperationResponse'variant = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationResponse "maybe'syncSuccess" (Prelude.Maybe StartOperationResponse'Sync) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'variant
           (\ x__ y__ -> x__ {_StartOperationResponse'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StartOperationResponse'SyncSuccess x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StartOperationResponse'SyncSuccess y__))
instance Data.ProtoLens.Field.HasField StartOperationResponse "syncSuccess" StartOperationResponse'Sync where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'variant
           (\ x__ y__ -> x__ {_StartOperationResponse'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StartOperationResponse'SyncSuccess x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StartOperationResponse'SyncSuccess y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField StartOperationResponse "maybe'asyncSuccess" (Prelude.Maybe StartOperationResponse'Async) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'variant
           (\ x__ y__ -> x__ {_StartOperationResponse'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StartOperationResponse'AsyncSuccess x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StartOperationResponse'AsyncSuccess y__))
instance Data.ProtoLens.Field.HasField StartOperationResponse "asyncSuccess" StartOperationResponse'Async where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'variant
           (\ x__ y__ -> x__ {_StartOperationResponse'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StartOperationResponse'AsyncSuccess x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StartOperationResponse'AsyncSuccess y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField StartOperationResponse "maybe'operationError" (Prelude.Maybe UnsuccessfulOperationError) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'variant
           (\ x__ y__ -> x__ {_StartOperationResponse'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StartOperationResponse'OperationError x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap StartOperationResponse'OperationError y__))
instance Data.ProtoLens.Field.HasField StartOperationResponse "operationError" UnsuccessfulOperationError where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'variant
           (\ x__ y__ -> x__ {_StartOperationResponse'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StartOperationResponse'OperationError x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap StartOperationResponse'OperationError y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField StartOperationResponse "maybe'failure" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'variant
           (\ x__ y__ -> x__ {_StartOperationResponse'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StartOperationResponse'Failure x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StartOperationResponse'Failure y__))
instance Data.ProtoLens.Field.HasField StartOperationResponse "failure" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'variant
           (\ x__ y__ -> x__ {_StartOperationResponse'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StartOperationResponse'Failure x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StartOperationResponse'Failure y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message StartOperationResponse where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.StartOperationResponse"
  packedMessageDescriptor _
    = "\n\
      \\SYNStartOperationResponse\DC2W\n\
      \\fsync_success\CAN\SOH \SOH(\v22.temporal.api.nexus.v1.StartOperationResponse.SyncH\NULR\vsyncSuccess\DC2Z\n\
      \\rasync_success\CAN\STX \SOH(\v23.temporal.api.nexus.v1.StartOperationResponse.AsyncH\NULR\fasyncSuccess\DC2`\n\
      \\SIoperation_error\CAN\ETX \SOH(\v21.temporal.api.nexus.v1.UnsuccessfulOperationErrorH\NULR\SOoperationErrorB\STX\CAN\SOH\DC2<\n\
      \\afailure\CAN\EOT \SOH(\v2 .temporal.api.failure.v1.FailureH\NULR\afailure\SUBt\n\
      \\EOTSync\DC29\n\
      \\apayload\CAN\SOH \SOH(\v2\US.temporal.api.common.v1.PayloadR\apayload\DC21\n\
      \\ENQlinks\CAN\STX \ETX(\v2\ESC.temporal.api.nexus.v1.LinkR\ENQlinks\SUB\138\SOH\n\
      \\ENQAsync\DC2%\n\
      \\foperation_id\CAN\SOH \SOH(\tR\voperationIdB\STX\CAN\SOH\DC21\n\
      \\ENQlinks\CAN\STX \ETX(\v2\ESC.temporal.api.nexus.v1.LinkR\ENQlinks\DC2'\n\
      \\SIoperation_token\CAN\ETX \SOH(\tR\SOoperationTokenB\t\n\
      \\avariant"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        syncSuccess__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sync_success"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StartOperationResponse'Sync)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'syncSuccess")) ::
              Data.ProtoLens.FieldDescriptor StartOperationResponse
        asyncSuccess__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "async_success"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StartOperationResponse'Async)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'asyncSuccess")) ::
              Data.ProtoLens.FieldDescriptor StartOperationResponse
        operationError__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_error"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UnsuccessfulOperationError)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'operationError")) ::
              Data.ProtoLens.FieldDescriptor StartOperationResponse
        failure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failure")) ::
              Data.ProtoLens.FieldDescriptor StartOperationResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, syncSuccess__field_descriptor),
           (Data.ProtoLens.Tag 2, asyncSuccess__field_descriptor),
           (Data.ProtoLens.Tag 3, operationError__field_descriptor),
           (Data.ProtoLens.Tag 4, failure__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StartOperationResponse'_unknownFields
        (\ x__ y__ -> x__ {_StartOperationResponse'_unknownFields = y__})
  defMessage
    = StartOperationResponse'_constructor
        {_StartOperationResponse'variant = Prelude.Nothing,
         _StartOperationResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StartOperationResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser StartOperationResponse
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "sync_success"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"syncSuccess") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "async_success"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"asyncSuccess") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "operation_error"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"operationError") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "failure"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"failure") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StartOperationResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'variant") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (StartOperationResponse'SyncSuccess v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (StartOperationResponse'AsyncSuccess v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (StartOperationResponse'OperationError v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (StartOperationResponse'Failure v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData StartOperationResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StartOperationResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_StartOperationResponse'variant x__) ())
instance Control.DeepSeq.NFData StartOperationResponse'Variant where
  rnf (StartOperationResponse'SyncSuccess x__)
    = Control.DeepSeq.rnf x__
  rnf (StartOperationResponse'AsyncSuccess x__)
    = Control.DeepSeq.rnf x__
  rnf (StartOperationResponse'OperationError x__)
    = Control.DeepSeq.rnf x__
  rnf (StartOperationResponse'Failure x__) = Control.DeepSeq.rnf x__
_StartOperationResponse'SyncSuccess ::
  Data.ProtoLens.Prism.Prism' StartOperationResponse'Variant StartOperationResponse'Sync
_StartOperationResponse'SyncSuccess
  = Data.ProtoLens.Prism.prism'
      StartOperationResponse'SyncSuccess
      (\ p__
         -> case p__ of
              (StartOperationResponse'SyncSuccess p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StartOperationResponse'AsyncSuccess ::
  Data.ProtoLens.Prism.Prism' StartOperationResponse'Variant StartOperationResponse'Async
_StartOperationResponse'AsyncSuccess
  = Data.ProtoLens.Prism.prism'
      StartOperationResponse'AsyncSuccess
      (\ p__
         -> case p__ of
              (StartOperationResponse'AsyncSuccess p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StartOperationResponse'OperationError ::
  Data.ProtoLens.Prism.Prism' StartOperationResponse'Variant UnsuccessfulOperationError
_StartOperationResponse'OperationError
  = Data.ProtoLens.Prism.prism'
      StartOperationResponse'OperationError
      (\ p__
         -> case p__ of
              (StartOperationResponse'OperationError p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StartOperationResponse'Failure ::
  Data.ProtoLens.Prism.Prism' StartOperationResponse'Variant Proto.Temporal.Api.Failure.V1.Message.Failure
_StartOperationResponse'Failure
  = Data.ProtoLens.Prism.prism'
      StartOperationResponse'Failure
      (\ p__
         -> case p__ of
              (StartOperationResponse'Failure p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operationId' @:: Lens' StartOperationResponse'Async Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.links' @:: Lens' StartOperationResponse'Async [Link]@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.vec'links' @:: Lens' StartOperationResponse'Async (Data.Vector.Vector Link)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operationToken' @:: Lens' StartOperationResponse'Async Data.Text.Text@ -}
data StartOperationResponse'Async
  = StartOperationResponse'Async'_constructor {_StartOperationResponse'Async'operationId :: !Data.Text.Text,
                                               _StartOperationResponse'Async'links :: !(Data.Vector.Vector Link),
                                               _StartOperationResponse'Async'operationToken :: !Data.Text.Text,
                                               _StartOperationResponse'Async'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StartOperationResponse'Async where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StartOperationResponse'Async "operationId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'Async'operationId
           (\ x__ y__
              -> x__ {_StartOperationResponse'Async'operationId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationResponse'Async "links" [Link] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'Async'links
           (\ x__ y__ -> x__ {_StartOperationResponse'Async'links = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StartOperationResponse'Async "vec'links" (Data.Vector.Vector Link) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'Async'links
           (\ x__ y__ -> x__ {_StartOperationResponse'Async'links = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationResponse'Async "operationToken" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'Async'operationToken
           (\ x__ y__
              -> x__ {_StartOperationResponse'Async'operationToken = y__}))
        Prelude.id
instance Data.ProtoLens.Message StartOperationResponse'Async where
  messageName _
    = Data.Text.pack
        "temporal.api.nexus.v1.StartOperationResponse.Async"
  packedMessageDescriptor _
    = "\n\
      \\ENQAsync\DC2%\n\
      \\foperation_id\CAN\SOH \SOH(\tR\voperationIdB\STX\CAN\SOH\DC21\n\
      \\ENQlinks\CAN\STX \ETX(\v2\ESC.temporal.api.nexus.v1.LinkR\ENQlinks\DC2'\n\
      \\SIoperation_token\CAN\ETX \SOH(\tR\SOoperationToken"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operationId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operationId")) ::
              Data.ProtoLens.FieldDescriptor StartOperationResponse'Async
        links__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "links"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Link)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"links")) ::
              Data.ProtoLens.FieldDescriptor StartOperationResponse'Async
        operationToken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_token"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operationToken")) ::
              Data.ProtoLens.FieldDescriptor StartOperationResponse'Async
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operationId__field_descriptor),
           (Data.ProtoLens.Tag 2, links__field_descriptor),
           (Data.ProtoLens.Tag 3, operationToken__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StartOperationResponse'Async'_unknownFields
        (\ x__ y__
           -> x__ {_StartOperationResponse'Async'_unknownFields = y__})
  defMessage
    = StartOperationResponse'Async'_constructor
        {_StartOperationResponse'Async'operationId = Data.ProtoLens.fieldDefault,
         _StartOperationResponse'Async'links = Data.Vector.Generic.empty,
         _StartOperationResponse'Async'operationToken = Data.ProtoLens.fieldDefault,
         _StartOperationResponse'Async'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StartOperationResponse'Async
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Link
             -> Data.ProtoLens.Encoding.Bytes.Parser StartOperationResponse'Async
        loop x mutable'links
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'links <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'links)
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
                              (Data.ProtoLens.Field.field @"vec'links") frozen'links x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operationId") y x)
                                  mutable'links
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "links"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'links y)
                                loop x v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation_token"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"operationToken") y x)
                                  mutable'links
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'links
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'links <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'links)
          "Async"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"operationId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'links") _x))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"operationToken") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData StartOperationResponse'Async where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StartOperationResponse'Async'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StartOperationResponse'Async'operationId x__)
                (Control.DeepSeq.deepseq
                   (_StartOperationResponse'Async'links x__)
                   (Control.DeepSeq.deepseq
                      (_StartOperationResponse'Async'operationToken x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.payload' @:: Lens' StartOperationResponse'Sync Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'payload' @:: Lens' StartOperationResponse'Sync (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.links' @:: Lens' StartOperationResponse'Sync [Link]@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.vec'links' @:: Lens' StartOperationResponse'Sync (Data.Vector.Vector Link)@ -}
data StartOperationResponse'Sync
  = StartOperationResponse'Sync'_constructor {_StartOperationResponse'Sync'payload :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                              _StartOperationResponse'Sync'links :: !(Data.Vector.Vector Link),
                                              _StartOperationResponse'Sync'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StartOperationResponse'Sync where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StartOperationResponse'Sync "payload" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'Sync'payload
           (\ x__ y__ -> x__ {_StartOperationResponse'Sync'payload = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartOperationResponse'Sync "maybe'payload" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'Sync'payload
           (\ x__ y__ -> x__ {_StartOperationResponse'Sync'payload = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationResponse'Sync "links" [Link] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'Sync'links
           (\ x__ y__ -> x__ {_StartOperationResponse'Sync'links = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StartOperationResponse'Sync "vec'links" (Data.Vector.Vector Link) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'Sync'links
           (\ x__ y__ -> x__ {_StartOperationResponse'Sync'links = y__}))
        Prelude.id
instance Data.ProtoLens.Message StartOperationResponse'Sync where
  messageName _
    = Data.Text.pack
        "temporal.api.nexus.v1.StartOperationResponse.Sync"
  packedMessageDescriptor _
    = "\n\
      \\EOTSync\DC29\n\
      \\apayload\CAN\SOH \SOH(\v2\US.temporal.api.common.v1.PayloadR\apayload\DC21\n\
      \\ENQlinks\CAN\STX \ETX(\v2\ESC.temporal.api.nexus.v1.LinkR\ENQlinks"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        payload__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payload"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'payload")) ::
              Data.ProtoLens.FieldDescriptor StartOperationResponse'Sync
        links__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "links"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Link)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"links")) ::
              Data.ProtoLens.FieldDescriptor StartOperationResponse'Sync
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, payload__field_descriptor),
           (Data.ProtoLens.Tag 2, links__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StartOperationResponse'Sync'_unknownFields
        (\ x__ y__
           -> x__ {_StartOperationResponse'Sync'_unknownFields = y__})
  defMessage
    = StartOperationResponse'Sync'_constructor
        {_StartOperationResponse'Sync'payload = Prelude.Nothing,
         _StartOperationResponse'Sync'links = Data.Vector.Generic.empty,
         _StartOperationResponse'Sync'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StartOperationResponse'Sync
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Link
             -> Data.ProtoLens.Encoding.Bytes.Parser StartOperationResponse'Sync
        loop x mutable'links
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'links <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'links)
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
                              (Data.ProtoLens.Field.field @"vec'links") frozen'links x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "payload"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"payload") y x)
                                  mutable'links
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "links"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'links y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'links
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'links <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'links)
          "Sync"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'payload") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'links") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData StartOperationResponse'Sync where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StartOperationResponse'Sync'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StartOperationResponse'Sync'payload x__)
                (Control.DeepSeq.deepseq
                   (_StartOperationResponse'Sync'links x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operationState' @:: Lens' UnsuccessfulOperationError Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.failure' @:: Lens' UnsuccessfulOperationError Failure@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'failure' @:: Lens' UnsuccessfulOperationError (Prelude.Maybe Failure)@ -}
data UnsuccessfulOperationError
  = UnsuccessfulOperationError'_constructor {_UnsuccessfulOperationError'operationState :: !Data.Text.Text,
                                             _UnsuccessfulOperationError'failure :: !(Prelude.Maybe Failure),
                                             _UnsuccessfulOperationError'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UnsuccessfulOperationError where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UnsuccessfulOperationError "operationState" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnsuccessfulOperationError'operationState
           (\ x__ y__
              -> x__ {_UnsuccessfulOperationError'operationState = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UnsuccessfulOperationError "failure" Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnsuccessfulOperationError'failure
           (\ x__ y__ -> x__ {_UnsuccessfulOperationError'failure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UnsuccessfulOperationError "maybe'failure" (Prelude.Maybe Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnsuccessfulOperationError'failure
           (\ x__ y__ -> x__ {_UnsuccessfulOperationError'failure = y__}))
        Prelude.id
instance Data.ProtoLens.Message UnsuccessfulOperationError where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.UnsuccessfulOperationError"
  packedMessageDescriptor _
    = "\n\
      \\SUBUnsuccessfulOperationError\DC2'\n\
      \\SIoperation_state\CAN\SOH \SOH(\tR\SOoperationState\DC28\n\
      \\afailure\CAN\STX \SOH(\v2\RS.temporal.api.nexus.v1.FailureR\afailure"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operationState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operationState")) ::
              Data.ProtoLens.FieldDescriptor UnsuccessfulOperationError
        failure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failure")) ::
              Data.ProtoLens.FieldDescriptor UnsuccessfulOperationError
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operationState__field_descriptor),
           (Data.ProtoLens.Tag 2, failure__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UnsuccessfulOperationError'_unknownFields
        (\ x__ y__
           -> x__ {_UnsuccessfulOperationError'_unknownFields = y__})
  defMessage
    = UnsuccessfulOperationError'_constructor
        {_UnsuccessfulOperationError'operationState = Data.ProtoLens.fieldDefault,
         _UnsuccessfulOperationError'failure = Prelude.Nothing,
         _UnsuccessfulOperationError'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UnsuccessfulOperationError
          -> Data.ProtoLens.Encoding.Bytes.Parser UnsuccessfulOperationError
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation_state"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"operationState") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "failure"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"failure") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UnsuccessfulOperationError"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"operationState") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'failure") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData UnsuccessfulOperationError where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UnsuccessfulOperationError'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UnsuccessfulOperationError'operationState x__)
                (Control.DeepSeq.deepseq
                   (_UnsuccessfulOperationError'failure x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \#temporal/api/nexus/v1/message.proto\DC2\NAKtemporal.api.nexus.v1\SUB\RSgoogle/protobuf/duration.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB$temporal/api/common/v1/message.proto\SUB\"temporal/api/enums/v1/common.proto\SUB!temporal/api/enums/v1/nexus.proto\SUB%temporal/api/failure/v1/message.proto\SUB'temporal/api/sdk/v1/user_metadata.proto\"t\n\
    \\RSPropagatedSerializationContext\DC2\SUB\n\
    \\bendpoint\CAN\SOH \SOH(\tR\bendpoint\DC2\CAN\n\
    \\aservice\CAN\STX \SOH(\tR\aservice\DC2\FS\n\
    \\toperation\CAN\ETX \SOH(\tR\toperation\"\155\STX\n\
    \\aFailure\DC2\CAN\n\
    \\amessage\CAN\SOH \SOH(\tR\amessage\DC2\US\n\
    \\vstack_trace\CAN\EOT \SOH(\tR\n\
    \stackTrace\DC2H\n\
    \\bmetadata\CAN\STX \ETX(\v2,.temporal.api.nexus.v1.Failure.MetadataEntryR\bmetadata\DC2\CAN\n\
    \\adetails\CAN\ETX \SOH(\fR\adetails\DC24\n\
    \\ENQcause\CAN\ENQ \SOH(\v2\RS.temporal.api.nexus.v1.FailureR\ENQcause\SUB;\n\
    \\rMetadataEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH\"\197\SOH\n\
    \\fHandlerError\DC2\GS\n\
    \\n\
    \error_type\CAN\SOH \SOH(\tR\terrorType\DC28\n\
    \\afailure\CAN\STX \SOH(\v2\RS.temporal.api.nexus.v1.FailureR\afailure\DC2\\\n\
    \\SOretry_behavior\CAN\ETX \SOH(\SO25.temporal.api.enums.v1.NexusHandlerErrorRetryBehaviorR\rretryBehavior\"\DEL\n\
    \\SUBUnsuccessfulOperationError\DC2'\n\
    \\SIoperation_state\CAN\SOH \SOH(\tR\SOoperationState\DC28\n\
    \\afailure\CAN\STX \SOH(\v2\RS.temporal.api.nexus.v1.FailureR\afailure\",\n\
    \\EOTLink\DC2\DLE\n\
    \\ETXurl\CAN\SOH \SOH(\tR\ETXurl\DC2\DC2\n\
    \\EOTtype\CAN\STX \SOH(\tR\EOTtype\"\166\ETX\n\
    \\NAKStartOperationRequest\DC2\CAN\n\
    \\aservice\CAN\SOH \SOH(\tR\aservice\DC2\FS\n\
    \\toperation\CAN\STX \SOH(\tR\toperation\DC2\GS\n\
    \\n\
    \request_id\CAN\ETX \SOH(\tR\trequestId\DC2\SUB\n\
    \\bcallback\CAN\EOT \SOH(\tR\bcallback\DC29\n\
    \\apayload\CAN\ENQ \SOH(\v2\US.temporal.api.common.v1.PayloadR\apayload\DC2i\n\
    \\SIcallback_header\CAN\ACK \ETX(\v2@.temporal.api.nexus.v1.StartOperationRequest.CallbackHeaderEntryR\SOcallbackHeader\DC21\n\
    \\ENQlinks\CAN\a \ETX(\v2\ESC.temporal.api.nexus.v1.LinkR\ENQlinks\SUBA\n\
    \\DC3CallbackHeaderEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH\"\160\SOH\n\
    \\SYNCancelOperationRequest\DC2\CAN\n\
    \\aservice\CAN\SOH \SOH(\tR\aservice\DC2\FS\n\
    \\toperation\CAN\STX \SOH(\tR\toperation\DC2%\n\
    \\foperation_id\CAN\ETX \SOH(\tR\voperationIdB\STX\CAN\SOH\DC2'\n\
    \\SIoperation_token\CAN\EOT \SOH(\tR\SOoperationToken\"\198\EOT\n\
    \\aRequest\DC2B\n\
    \\ACKheader\CAN\SOH \ETX(\v2*.temporal.api.nexus.v1.Request.HeaderEntryR\ACKheader\DC2A\n\
    \\SOscheduled_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\rscheduledTime\DC2O\n\
    \\fcapabilities\CANd \SOH(\v2+.temporal.api.nexus.v1.Request.CapabilitiesR\fcapabilities\DC2W\n\
    \\SIstart_operation\CAN\ETX \SOH(\v2,.temporal.api.nexus.v1.StartOperationRequestH\NULR\SOstartOperation\DC2Z\n\
    \\DLEcancel_operation\CAN\EOT \SOH(\v2-.temporal.api.nexus.v1.CancelOperationRequestH\NULR\SIcancelOperation\DC2\SUB\n\
    \\bendpoint\CAN\n\
    \ \SOH(\tR\bendpoint\SUBL\n\
    \\fCapabilities\DC2<\n\
    \\SUBtemporal_failure_responses\CAN\SOH \SOH(\bR\CANtemporalFailureResponses\SUB9\n\
    \\vHeaderEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOHB\t\n\
    \\avariant\"\251\EOT\n\
    \\SYNStartOperationResponse\DC2W\n\
    \\fsync_success\CAN\SOH \SOH(\v22.temporal.api.nexus.v1.StartOperationResponse.SyncH\NULR\vsyncSuccess\DC2Z\n\
    \\rasync_success\CAN\STX \SOH(\v23.temporal.api.nexus.v1.StartOperationResponse.AsyncH\NULR\fasyncSuccess\DC2`\n\
    \\SIoperation_error\CAN\ETX \SOH(\v21.temporal.api.nexus.v1.UnsuccessfulOperationErrorH\NULR\SOoperationErrorB\STX\CAN\SOH\DC2<\n\
    \\afailure\CAN\EOT \SOH(\v2 .temporal.api.failure.v1.FailureH\NULR\afailure\SUBt\n\
    \\EOTSync\DC29\n\
    \\apayload\CAN\SOH \SOH(\v2\US.temporal.api.common.v1.PayloadR\apayload\DC21\n\
    \\ENQlinks\CAN\STX \ETX(\v2\ESC.temporal.api.nexus.v1.LinkR\ENQlinks\SUB\138\SOH\n\
    \\ENQAsync\DC2%\n\
    \\foperation_id\CAN\SOH \SOH(\tR\voperationIdB\STX\CAN\SOH\DC21\n\
    \\ENQlinks\CAN\STX \ETX(\v2\ESC.temporal.api.nexus.v1.LinkR\ENQlinks\DC2'\n\
    \\SIoperation_token\CAN\ETX \SOH(\tR\SOoperationTokenB\t\n\
    \\avariant\"\EM\n\
    \\ETBCancelOperationResponse\"\204\SOH\n\
    \\bResponse\DC2X\n\
    \\SIstart_operation\CAN\SOH \SOH(\v2-.temporal.api.nexus.v1.StartOperationResponseH\NULR\SOstartOperation\DC2[\n\
    \\DLEcancel_operation\CAN\STX \SOH(\v2..temporal.api.nexus.v1.CancelOperationResponseH\NULR\SIcancelOperationB\t\n\
    \\avariant\"\149\STX\n\
    \\bEndpoint\DC2\CAN\n\
    \\aversion\CAN\SOH \SOH(\ETXR\aversion\DC2\SO\n\
    \\STXid\CAN\STX \SOH(\tR\STXid\DC27\n\
    \\EOTspec\CAN\ETX \SOH(\v2#.temporal.api.nexus.v1.EndpointSpecR\EOTspec\DC2=\n\
    \\fcreated_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\vcreatedTime\DC2H\n\
    \\DC2last_modified_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\DLElastModifiedTime\DC2\GS\n\
    \\n\
    \url_prefix\CAN\ACK \SOH(\tR\turlPrefix\"\164\SOH\n\
    \\fEndpointSpec\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2A\n\
    \\vdescription\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\vdescription\DC2=\n\
    \\ACKtarget\CAN\ETX \SOH(\v2%.temporal.api.nexus.v1.EndpointTargetR\ACKtarget\"\150\STX\n\
    \\SOEndpointTarget\DC2F\n\
    \\ACKworker\CAN\SOH \SOH(\v2,.temporal.api.nexus.v1.EndpointTarget.WorkerH\NULR\ACKworker\DC2L\n\
    \\bexternal\CAN\STX \SOH(\v2..temporal.api.nexus.v1.EndpointTarget.ExternalH\NULR\bexternal\SUBE\n\
    \\ACKWorker\DC2\FS\n\
    \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2\GS\n\
    \\n\
    \task_queue\CAN\STX \SOH(\tR\ttaskQueue\SUB\FS\n\
    \\bExternal\DC2\DLE\n\
    \\ETXurl\CAN\SOH \SOH(\tR\ETXurlB\t\n\
    \\avariant\"\153\EOT\n\
    \'NexusOperationExecutionCancellationInfo\DC2A\n\
    \\SOrequested_time\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\rrequestedTime\DC2L\n\
    \\ENQstate\CAN\STX \SOH(\SO26.temporal.api.enums.v1.NexusOperationCancellationStateR\ENQstate\DC2\CAN\n\
    \\aattempt\CAN\ETX \SOH(\ENQR\aattempt\DC2W\n\
    \\SUBlast_attempt_complete_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\ETBlastAttemptCompleteTime\DC2R\n\
    \\DC4last_attempt_failure\CAN\ENQ \SOH(\v2 .temporal.api.failure.v1.FailureR\DC2lastAttemptFailure\DC2W\n\
    \\SUBnext_attempt_schedule_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\ETBnextAttemptScheduleTime\DC2%\n\
    \\SOblocked_reason\CAN\a \SOH(\tR\rblockedReason\DC2\SYN\n\
    \\ACKreason\CAN\b \SOH(\tR\ACKreason\"\188\SO\n\
    \\ESCNexusOperationExecutionInfo\DC2!\n\
    \\foperation_id\CAN\SOH \SOH(\tR\voperationId\DC2\NAK\n\
    \\ACKrun_id\CAN\STX \SOH(\tR\ENQrunId\DC2\SUB\n\
    \\bendpoint\CAN\ETX \SOH(\tR\bendpoint\DC2\CAN\n\
    \\aservice\CAN\EOT \SOH(\tR\aservice\DC2\FS\n\
    \\toperation\CAN\ENQ \SOH(\tR\toperation\DC2L\n\
    \\ACKstatus\CAN\ACK \SOH(\SO24.temporal.api.enums.v1.NexusOperationExecutionStatusR\ACKstatus\DC2G\n\
    \\ENQstate\CAN\a \SOH(\SO21.temporal.api.enums.v1.PendingNexusOperationStateR\ENQstate\DC2T\n\
    \\EMschedule_to_close_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2T\n\
    \\EMschedule_to_start_timeout\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout\DC2N\n\
    \\SYNstart_to_close_timeout\CAN\n\
    \ \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\DC2\CAN\n\
    \\aattempt\CAN\v \SOH(\ENQR\aattempt\DC2?\n\
    \\rschedule_time\CAN\f \SOH(\v2\SUB.google.protobuf.TimestampR\fscheduleTime\DC2C\n\
    \\SIexpiration_time\CAN\r \SOH(\v2\SUB.google.protobuf.TimestampR\SOexpirationTime\DC29\n\
    \\n\
    \close_time\CAN\SO \SOH(\v2\SUB.google.protobuf.TimestampR\tcloseTime\DC2W\n\
    \\SUBlast_attempt_complete_time\CAN\SI \SOH(\v2\SUB.google.protobuf.TimestampR\ETBlastAttemptCompleteTime\DC2R\n\
    \\DC4last_attempt_failure\CAN\DLE \SOH(\v2 .temporal.api.failure.v1.FailureR\DC2lastAttemptFailure\DC2W\n\
    \\SUBnext_attempt_schedule_time\CAN\DC1 \SOH(\v2\SUB.google.protobuf.TimestampR\ETBnextAttemptScheduleTime\DC2H\n\
    \\DC2execution_duration\CAN\DC2 \SOH(\v2\EM.google.protobuf.DurationR\DC1executionDuration\DC2k\n\
    \\DC1cancellation_info\CAN\DC3 \SOH(\v2>.temporal.api.nexus.v1.NexusOperationExecutionCancellationInfoR\DLEcancellationInfo\DC2%\n\
    \\SOblocked_reason\CAN\DC4 \SOH(\tR\rblockedReason\DC2\GS\n\
    \\n\
    \request_id\CAN\NAK \SOH(\tR\trequestId\DC2'\n\
    \\SIoperation_token\CAN\SYN \SOH(\tR\SOoperationToken\DC24\n\
    \\SYNstate_transition_count\CAN\ETB \SOH(\ETXR\DC4stateTransitionCount\DC2U\n\
    \\DC1search_attributes\CAN\CAN \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC2f\n\
    \\fnexus_header\CAN\EM \ETX(\v2C.temporal.api.nexus.v1.NexusOperationExecutionInfo.NexusHeaderEntryR\vnexusHeader\DC2F\n\
    \\ruser_metadata\CAN\SUB \SOH(\v2!.temporal.api.sdk.v1.UserMetadataR\fuserMetadata\DC22\n\
    \\ENQlinks\CAN\ESC \ETX(\v2\FS.temporal.api.common.v1.LinkR\ENQlinks\DC2\SUB\n\
    \\bidentity\CAN\FS \SOH(\tR\bidentity\DC2(\n\
    \\DLEstate_size_bytes\CAN\GS \SOH(\ETXR\SOstateSizeBytes\SUB>\n\
    \\DLENexusHeaderEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH\"\250\EOT\n\
    \\USNexusOperationExecutionListInfo\DC2!\n\
    \\foperation_id\CAN\SOH \SOH(\tR\voperationId\DC2\NAK\n\
    \\ACKrun_id\CAN\STX \SOH(\tR\ENQrunId\DC2\SUB\n\
    \\bendpoint\CAN\ETX \SOH(\tR\bendpoint\DC2\CAN\n\
    \\aservice\CAN\EOT \SOH(\tR\aservice\DC2\FS\n\
    \\toperation\CAN\ENQ \SOH(\tR\toperation\DC2?\n\
    \\rschedule_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\fscheduleTime\DC29\n\
    \\n\
    \close_time\CAN\a \SOH(\v2\SUB.google.protobuf.TimestampR\tcloseTime\DC2L\n\
    \\ACKstatus\CAN\b \SOH(\SO24.temporal.api.enums.v1.NexusOperationExecutionStatusR\ACKstatus\DC2U\n\
    \\DC1search_attributes\CAN\t \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC24\n\
    \\SYNstate_transition_count\CAN\n\
    \ \SOH(\ETXR\DC4stateTransitionCount\DC2H\n\
    \\DC2execution_duration\CAN\v \SOH(\v2\EM.google.protobuf.DurationR\DC1executionDuration\DC2(\n\
    \\DLEstate_size_bytes\CAN\f \SOH(\ETXR\SOstateSizeBytesB\132\SOH\n\
    \\CANio.temporal.api.nexus.v1B\fMessageProtoP\SOHZ!go.temporal.io/api/nexus/v1;nexus\170\STX\ETBTemporalio.Api.Nexus.V1\234\STX\SUBTemporalio::Api::Nexus::V1J\190~\n\
    \\a\DC2\ENQ\NUL\NUL\249\STX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NUL8\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\EOT\NUL8\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NUL1\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\ENQ\NUL1\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\ACK\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL-\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\a\NUL-\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL3\n\
    \\t\n\
    \\STX\b-\DC2\ETX\b\NUL3\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL4\n\
    \\t\n\
    \\STX\b%\DC2\ETX\t\NUL4\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\v\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\f\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\r\NUL.\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\SO\NUL,\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\SI\NUL+\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\DLE\NUL/\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\DC1\NUL1\n\
    \t\n\
    \\STX\EOT\NUL\DC2\EOT\DC4\NUL\CAN\SOH\SUBh PropagatedSerializationContext represents the context of the Nexus caller that started this execution.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b&\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\NAK\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\NAK\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\NAK\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\NAK\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SYN\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\SYN\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SYN\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SYN\NAK\SYN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\ETB\EOT\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\ETB\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\ETB\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\ETB\ETB\CAN\n\
    \q\n\
    \\STX\EOT\SOH\DC2\EOT\FS\NUL#\SOH\SUBe A general purpose failure message.\n\
    \ See: https://github.com/nexus-rpc/api/blob/main/SPEC.md#failure\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\FS\b\SI\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\GS\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\GS\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\GS\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\GS\NAK\SYN\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\RS\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\RS\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\RS\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\RS\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\US\EOT%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX\US\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\US\CAN \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\US#$\n\
    \7\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX!\EOT\SYN\SUB* UTF-8 encoded JSON serializable details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX!\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX!\n\
    \\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX!\DC4\NAK\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX\"\EOT\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\ETX\"\EOT\v\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX\"\f\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX\"\DC4\NAK\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT%\NUL+\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX%\b\DC4\n\
    \`\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX'\EOT\SUB\SUBS See https://github.com/nexus-rpc/api/blob/main/SPEC.md#predefined-handler-errors.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX'\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX'\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX'\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX(\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX(\EOT\v\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX(\f\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX(\SYN\ETB\n\
    \g\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX*\EOTL\SUBZ Retry behavior, defaults to the retry behavior of the error type as defined in the spec.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETX*\EOT8\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX*9G\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX*JK\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT-\NUL1\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX-\b\"\n\
    \T\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX/\EOT\US\SUBG See https://github.com/nexus-rpc/api/blob/main/SPEC.md#operationinfo.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX/\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX/\v\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX/\GS\RS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX0\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETX0\EOT\v\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX0\f\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX0\SYN\ETB\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT3\NUL7\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX3\b\f\n\
    \L\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX5\EOT\DC3\SUB? See https://github.com/nexus-rpc/api/blob/main/SPEC.md#links.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX5\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX5\v\SO\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX5\DC1\DC2\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX6\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX6\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX6\v\SI\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX6\DC2\DC3\n\
    \.\n\
    \\STX\EOT\ENQ\DC2\EOT:\NULI\SOH\SUB\" A request to start an operation.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX:\b\GS\n\
    \9\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX<\EOT\ETB\SUB, Name of service to start the operation in.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX<\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX<\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX<\NAK\SYN\n\
    \*\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX>\EOT\EM\SUB\GS Type of operation to start.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX>\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX>\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX>\ETB\CAN\n\
    \F\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETX@\EOT\SUB\SUB9 A request ID that can be used as an idempotentency key.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETX@\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETX@\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETX@\CAN\EM\n\
    \V\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\ETXB\EOT\CAN\SUBI Callback URL to call upon completion if the started operation is async.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ENQ\DC2\ETXB\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\ETXB\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\ETXB\SYN\ETB\n\
    \@\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\ETXD\EOT/\SUB3 Full request body from the incoming HTTP request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ACK\DC2\ETXD\EOT\"\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\ETXD#*\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\ETXD-.\n\
    \k\n\
    \\EOT\EOT\ENQ\STX\ENQ\DC2\ETXF\EOT,\SUB^ Header that is expected to be attached to the callback request when the operation completes.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ACK\DC2\ETXF\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\SOH\DC2\ETXF\CAN'\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ETX\DC2\ETXF*+\n\
    \m\n\
    \\EOT\EOT\ENQ\STX\ACK\DC2\ETXH\EOT\FS\SUB` Links contain caller information and can be attached to the operations started by the handler.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\EOT\DC2\ETXH\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\ACK\DC2\ETXH\r\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\SOH\DC2\ETXH\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\ETX\DC2\ETXH\SUB\ESC\n\
    \/\n\
    \\STX\EOT\ACK\DC2\EOTL\NULX\SOH\SUB# A request to cancel an operation.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXL\b\RS\n\
    \\FS\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXN\EOT\ETB\SUB\SI Service name.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXN\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXN\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXN\NAK\SYN\n\
    \+\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETXP\EOT\EM\SUB\RS Type of operation to cancel.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETXP\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXP\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXP\ETB\CAN\n\
    \k\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETXT\EOT0\SUB^ Operation ID as originally generated by a Handler.\n\
    \\n\
    \ Deprecated. Renamed to operation_token.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETXT\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETXT\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETXT\SUB\ESC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\b\DC2\ETXT\FS/\n\
    \\r\n\
    \\ACK\EOT\ACK\STX\STX\b\ETX\DC2\ETXT\GS.\n\
    \D\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\ETXW\EOT\US\SUB7 Operation token as originally generated by a Handler.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ENQ\DC2\ETXW\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\ETXW\v\SUB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\ETXW\GS\RS\n\
    \\RS\n\
    \\STX\EOT\a\DC2\EOT[\NULu\SOH\SUB\DC2 A Nexus request.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX[\b\SI\n\
    \\f\n\
    \\EOT\EOT\a\ETX\NUL\DC2\EOT\\\EOT`\ENQ\n\
    \\f\n\
    \\ENQ\EOT\a\ETX\NUL\SOH\DC2\ETX\\\f\CAN\n\
    \\210\SOH\n\
    \\ACK\EOT\a\ETX\NUL\STX\NUL\DC2\ETX_\b,\SUB\194\SOH If set, handlers may use temporal.api.failure.v1.Failure instances to return failures to the server.\n\
    \ This also allows handler and operation errors to have their own messages and stack traces.\n\
    \\n\
    \\SO\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\ENQ\DC2\ETX_\b\f\n\
    \\SO\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\SOH\DC2\ETX_\r'\n\
    \\SO\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\ETX\DC2\ETX_*+\n\
    \\181\SOH\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETXd\EOT#\SUB\167\SOH Headers extracted from the original request in the Temporal frontend.\n\
    \ When using Nexus over HTTP, this includes the request's HTTP headers ignoring multiple values.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\ETXd\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETXd\CAN\RS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETXd!\"\n\
    \\192\SOH\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETXi\EOT1\SUB\178\SOH The timestamp when the request was scheduled in the frontend.\n\
    \ (-- api-linter: core::0142::time-field-names=disabled\n\
    \     aip.dev/not-precedent: Not following linter rules. --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\ETXi\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETXi\RS,\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETXi/0\n\
    \\v\n\
    \\EOT\EOT\a\STX\STX\DC2\ETXk\EOT$\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ACK\DC2\ETXk\EOT\DLE\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\ETXk\DC1\GS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\ETXk #\n\
    \\f\n\
    \\EOT\EOT\a\b\NUL\DC2\EOTm\EOTp\ENQ\n\
    \\f\n\
    \\ENQ\EOT\a\b\NUL\SOH\DC2\ETXm\n\
    \\DC1\n\
    \\v\n\
    \\EOT\EOT\a\STX\ETX\DC2\ETXn\b2\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ACK\DC2\ETXn\b\GS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\ETXn\RS-\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\ETXn01\n\
    \\v\n\
    \\EOT\EOT\a\STX\EOT\DC2\ETXo\b4\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\ACK\DC2\ETXo\b\RS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\SOH\DC2\ETXo\US/\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\ETX\DC2\ETXo23\n\
    \\129\SOH\n\
    \\EOT\EOT\a\STX\ENQ\DC2\ETXt\EOT\EM\SUBt The endpoint this request was addressed to before forwarding to the worker.\n\
    \ Supported from server version 1.30.0.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ENQ\ENQ\DC2\ETXt\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ENQ\SOH\DC2\ETXt\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ENQ\ETX\DC2\ETXt\SYN\CAN\n\
    \:\n\
    \\STX\EOT\b\DC2\ENQx\NUL\146\SOH\SOH\SUB- Response variant for StartOperationRequest.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXx\b\RS\n\
    \4\n\
    \\EOT\EOT\b\ETX\NUL\DC2\EOTz\EOT}\ENQ\SUB& An operation completed successfully.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\ETX\NUL\SOH\DC2\ETXz\f\DLE\n\
    \\r\n\
    \\ACK\EOT\b\ETX\NUL\STX\NUL\DC2\ETX{\b3\n\
    \\SO\n\
    \\a\EOT\b\ETX\NUL\STX\NUL\ACK\DC2\ETX{\b&\n\
    \\SO\n\
    \\a\EOT\b\ETX\NUL\STX\NUL\SOH\DC2\ETX{'.\n\
    \\SO\n\
    \\a\EOT\b\ETX\NUL\STX\NUL\ETX\DC2\ETX{12\n\
    \\r\n\
    \\ACK\EOT\b\ETX\NUL\STX\SOH\DC2\ETX|\b \n\
    \\SO\n\
    \\a\EOT\b\ETX\NUL\STX\SOH\EOT\DC2\ETX|\b\DLE\n\
    \\SO\n\
    \\a\EOT\b\ETX\NUL\STX\SOH\ACK\DC2\ETX|\DC1\NAK\n\
    \\SO\n\
    \\a\EOT\b\ETX\NUL\STX\SOH\SOH\DC2\ETX|\SYN\ESC\n\
    \\SO\n\
    \\a\EOT\b\ETX\NUL\STX\SOH\ETX\DC2\ETX|\RS\US\n\
    \w\n\
    \\EOT\EOT\b\ETX\SOH\DC2\ACK\129\SOH\EOT\134\SOH\ENQ\SUBg The operation will complete asynchronously.\n\
    \ The returned ID can be used to reference this operation.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\ETX\SOH\SOH\DC2\EOT\129\SOH\f\DC1\n\
    \9\n\
    \\ACK\EOT\b\ETX\SOH\STX\NUL\DC2\EOT\131\SOH\b4\SUB) Deprecated. Renamed to operation_token.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\NUL\ENQ\DC2\EOT\131\SOH\b\SO\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\NUL\SOH\DC2\EOT\131\SOH\SI\ESC\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\NUL\ETX\DC2\EOT\131\SOH\RS\US\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\NUL\b\DC2\EOT\131\SOH 3\n\
    \\DLE\n\
    \\b\EOT\b\ETX\SOH\STX\NUL\b\ETX\DC2\EOT\131\SOH!2\n\
    \\SO\n\
    \\ACK\EOT\b\ETX\SOH\STX\SOH\DC2\EOT\132\SOH\b \n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\SOH\EOT\DC2\EOT\132\SOH\b\DLE\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\SOH\ACK\DC2\EOT\132\SOH\DC1\NAK\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\SOH\SOH\DC2\EOT\132\SOH\SYN\ESC\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\SOH\ETX\DC2\EOT\132\SOH\RS\US\n\
    \\SO\n\
    \\ACK\EOT\b\ETX\SOH\STX\STX\DC2\EOT\133\SOH\b#\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\STX\ENQ\DC2\EOT\133\SOH\b\SO\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\STX\SOH\DC2\EOT\133\SOH\SI\RS\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\STX\ETX\DC2\EOT\133\SOH!\"\n\
    \\SO\n\
    \\EOT\EOT\b\b\NUL\DC2\ACK\136\SOH\EOT\145\SOH\ENQ\n\
    \\r\n\
    \\ENQ\EOT\b\b\NUL\SOH\DC2\EOT\136\SOH\n\
    \\DC1\n\
    \\f\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\137\SOH\b\RS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\EOT\137\SOH\b\f\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\137\SOH\r\EM\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\137\SOH\FS\GS\n\
    \\f\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\138\SOH\b \n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ACK\DC2\EOT\138\SOH\b\r\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\138\SOH\SO\ESC\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\138\SOH\RS\US\n\
    \z\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT\141\SOH\bK\SUBl The operation completed unsuccessfully (failed or canceled).\n\
    \ Deprecated. Use the failure variant instead.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ACK\DC2\EOT\141\SOH\b\"\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\141\SOH#2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\141\SOH56\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\b\DC2\EOT\141\SOH7J\n\
    \\SO\n\
    \\ACK\EOT\b\STX\STX\b\ETX\DC2\EOT\141\SOH8I\n\
    \\163\SOH\n\
    \\EOT\EOT\b\STX\ETX\DC2\EOT\144\SOH\b4\SUB\148\SOH The operation completed unsuccessfully (failed or canceled).\n\
    \ Failure object must contain an ApplicationFailureInfo or CanceledFailureInfo object.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ACK\DC2\EOT\144\SOH\b'\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\EOT\144\SOH(/\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\EOT\144\SOH23\n\
    \<\n\
    \\STX\EOT\t\DC2\ACK\149\SOH\NUL\150\SOH\SOH\SUB. Response variant for CancelOperationRequest.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\149\SOH\b\US\n\
    \\\\n\
    \\STX\EOT\n\
    \\DC2\ACK\153\SOH\NUL\159\SOH\SOH\SUBN A response indicating that the handler has successfully processed a request.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\153\SOH\b\DLE\n\
    \P\n\
    \\EOT\EOT\n\
    \\b\NUL\DC2\ACK\155\SOH\EOT\158\SOH\ENQ\SUB@ Variant must correlate to the corresponding Request's variant.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\b\NUL\SOH\DC2\EOT\155\SOH\n\
    \\DC1\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\156\SOH\b3\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ACK\DC2\EOT\156\SOH\b\RS\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\156\SOH\US.\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\156\SOH12\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\157\SOH\b5\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ACK\DC2\EOT\157\SOH\b\US\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\157\SOH 0\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\157\SOH34\n\
    \q\n\
    \\STX\EOT\v\DC2\ACK\162\SOH\NUL\185\SOH\SOH\SUBc A cluster-global binding from an endpoint ID to a target for dispatching incoming Nexus requests.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\162\SOH\b\DLE\n\
    \t\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\164\SOH\EOT\SYN\SUBf Data version for this endpoint, incremented for every update issued via the UpdateNexusEndpoint API.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\EOT\164\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\164\SOH\n\
    \\DC1\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\164\SOH\DC4\NAK\n\
    \4\n\
    \\EOT\EOT\v\STX\SOH\DC2\EOT\166\SOH\EOT\DC2\SUB& Unique server-generated endpoint ID.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\EOT\166\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\EOT\166\SOH\v\r\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\EOT\166\SOH\DLE\DC1\n\
    \&\n\
    \\EOT\EOT\v\STX\STX\DC2\EOT\168\SOH\EOT\SUB\SUB\CAN Spec for the endpoint.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ACK\DC2\EOT\168\SOH\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\EOT\168\SOH\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\EOT\168\SOH\CAN\EM\n\
    \\180\SOH\n\
    \\EOT\EOT\v\STX\ETX\DC2\EOT\173\SOH\EOT/\SUB\165\SOH The date and time when the endpoint was created.\n\
    \ (-- api-linter: core::0142::time-field-names=disabled\n\
    \     aip.dev/not-precedent: Not following linter rules. --)\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ACK\DC2\EOT\173\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\SOH\DC2\EOT\173\SOH\RS*\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ETX\DC2\EOT\173\SOH-.\n\
    \\244\SOH\n\
    \\EOT\EOT\v\STX\EOT\DC2\EOT\179\SOH\EOT5\SUB\229\SOH The date and time when the endpoint was last modified.\n\
    \ Will not be set if the endpoint has never been modified.\n\
    \ (-- api-linter: core::0142::time-field-names=disabled\n\
    \     aip.dev/not-precedent: Not following linter rules. --)\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\ACK\DC2\EOT\179\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\SOH\DC2\EOT\179\SOH\RS0\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\ETX\DC2\EOT\179\SOH34\n\
    \\130\STX\n\
    \\EOT\EOT\v\STX\ENQ\DC2\EOT\184\SOH\EOT\SUB\SUB\243\SOH Server exposed URL prefix for invocation of operations on this endpoint.\n\
    \ This doesn't include the protocol, hostname or port as the server does not know how it should be accessed\n\
    \ publicly. The URL is stable in the face of endpoint renames.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ENQ\ENQ\DC2\EOT\184\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ENQ\SOH\DC2\EOT\184\SOH\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ENQ\ETX\DC2\EOT\184\SOH\CAN\EM\n\
    \8\n\
    \\STX\EOT\f\DC2\ACK\188\SOH\NUL\200\SOH\SOH\SUB* Contains mutable fields for an Endpoint.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\188\SOH\b\DC4\n\
    \\201\SOH\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\191\SOH\EOT\DC4\SUB\186\SOH Endpoint name, unique for this cluster. Must match `[a-zA-Z_][a-zA-Z0-9_]*`.\n\
    \ Renaming an endpoint breaks all workflow callers that reference this endpoint, causing operations to fail.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\EOT\191\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\191\SOH\v\SI\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\191\SOH\DC2\DC3\n\
    \\255\SOH\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\196\SOH\EOT3\SUB\240\SOH Markdown description serialized as a single JSON string.\n\
    \ If the Payload is encrypted, the UI and CLI may decrypt with the configured codec server endpoint.\n\
    \ By default, the server enforces a limit of 20,000 bytes for this entire payload.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ACK\DC2\EOT\196\SOH\EOT\"\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\196\SOH#.\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\196\SOH12\n\
    \,\n\
    \\EOT\EOT\f\STX\STX\DC2\EOT\199\SOH\EOT\RS\SUB\RS Target to route requests to.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ACK\DC2\EOT\199\SOH\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\SOH\DC2\EOT\199\SOH\DC3\EM\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ETX\DC2\EOT\199\SOH\FS\GS\n\
    \,\n\
    \\STX\EOT\r\DC2\ACK\203\SOH\NUL\224\SOH\SOH\SUB\RS Target to route requests to.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\203\SOH\b\SYN\n\
    \X\n\
    \\EOT\EOT\r\ETX\NUL\DC2\ACK\205\SOH\EOT\210\SOH\ENQ\SUBH Target a worker polling on a Nexus task queue in a specific namespace.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\ETX\NUL\SOH\DC2\EOT\205\SOH\f\DC2\n\
    \1\n\
    \\ACK\EOT\r\ETX\NUL\STX\NUL\DC2\EOT\207\SOH\b\GS\SUB! Namespace to route requests to.\n\
    \\n\
    \\SI\n\
    \\a\EOT\r\ETX\NUL\STX\NUL\ENQ\DC2\EOT\207\SOH\b\SO\n\
    \\SI\n\
    \\a\EOT\r\ETX\NUL\STX\NUL\SOH\DC2\EOT\207\SOH\SI\CAN\n\
    \\SI\n\
    \\a\EOT\r\ETX\NUL\STX\NUL\ETX\DC2\EOT\207\SOH\ESC\FS\n\
    \8\n\
    \\ACK\EOT\r\ETX\NUL\STX\SOH\DC2\EOT\209\SOH\b\RS\SUB( Nexus task queue to route requests to.\n\
    \\n\
    \\SI\n\
    \\a\EOT\r\ETX\NUL\STX\SOH\ENQ\DC2\EOT\209\SOH\b\SO\n\
    \\SI\n\
    \\a\EOT\r\ETX\NUL\STX\SOH\SOH\DC2\EOT\209\SOH\SI\EM\n\
    \\SI\n\
    \\a\EOT\r\ETX\NUL\STX\SOH\ETX\DC2\EOT\209\SOH\FS\GS\n\
    \\206\SOH\n\
    \\EOT\EOT\r\ETX\SOH\DC2\ACK\215\SOH\EOT\218\SOH\ENQ\SUB\189\SOH Target an external server by URL.\n\
    \ At a later point, this will support providing credentials, in the meantime, an http.RoundTripper can be injected\n\
    \ into the server to modify the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\ETX\SOH\SOH\DC2\EOT\215\SOH\f\DC4\n\
    \\RS\n\
    \\ACK\EOT\r\ETX\SOH\STX\NUL\DC2\EOT\217\SOH\b\ETB\SUB\SO URL to call.\n\
    \\n\
    \\SI\n\
    \\a\EOT\r\ETX\SOH\STX\NUL\ENQ\DC2\EOT\217\SOH\b\SO\n\
    \\SI\n\
    \\a\EOT\r\ETX\SOH\STX\NUL\SOH\DC2\EOT\217\SOH\SI\DC2\n\
    \\SI\n\
    \\a\EOT\r\ETX\SOH\STX\NUL\ETX\DC2\EOT\217\SOH\NAK\SYN\n\
    \\SO\n\
    \\EOT\EOT\r\b\NUL\DC2\ACK\220\SOH\EOT\223\SOH\ENQ\n\
    \\r\n\
    \\ENQ\EOT\r\b\NUL\SOH\DC2\EOT\220\SOH\n\
    \\DC1\n\
    \\f\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\221\SOH\b\SUB\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ACK\DC2\EOT\221\SOH\b\SO\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\221\SOH\SI\NAK\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\221\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\r\STX\SOH\DC2\EOT\222\SOH\b\RS\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ACK\DC2\EOT\222\SOH\b\DLE\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\EOT\222\SOH\DC1\EM\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\EOT\222\SOH\FS\GS\n\
    \m\n\
    \\STX\EOT\SO\DC2\ACK\227\SOH\NUL\249\SOH\SOH\SUB_ NexusOperationExecutionCancellationInfo contains the state of a Nexus operation cancellation.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\227\SOH\b/\n\
    \9\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\229\SOH\EOT1\SUB+ The time when cancellation was requested.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ACK\DC2\EOT\229\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\229\SOH\RS,\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\229\SOH/0\n\
    \\f\n\
    \\EOT\EOT\SO\STX\SOH\DC2\EOT\231\SOH\EOTD\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ACK\DC2\EOT\231\SOH\EOT9\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\EOT\231\SOH:?\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\EOT\231\SOHBC\n\
    \\187\SOH\n\
    \\EOT\EOT\SO\STX\STX\DC2\EOT\235\SOH\EOT\SYN\SUB\172\SOH The number of attempts made to deliver the cancel operation request.\n\
    \ This number represents a minimum bound since the attempt is incremented after the request completes.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ENQ\DC2\EOT\235\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\SOH\DC2\EOT\235\SOH\n\
    \\DC1\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ETX\DC2\EOT\235\SOH\DC4\NAK\n\
    \9\n\
    \\EOT\EOT\SO\STX\ETX\DC2\EOT\238\SOH\EOT=\SUB+ The time when the last attempt completed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\ACK\DC2\EOT\238\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\SOH\DC2\EOT\238\SOH\RS8\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\ETX\DC2\EOT\238\SOH;<\n\
    \3\n\
    \\EOT\EOT\SO\STX\EOT\DC2\EOT\240\SOH\EOT=\SUB% The last attempt's failure, if any.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EOT\ACK\DC2\EOT\240\SOH\EOT#\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EOT\SOH\DC2\EOT\240\SOH$8\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EOT\ETX\DC2\EOT\240\SOH;<\n\
    \<\n\
    \\EOT\EOT\SO\STX\ENQ\DC2\EOT\242\SOH\EOT=\SUB. The time when the next attempt is scheduled.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ENQ\ACK\DC2\EOT\242\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ENQ\SOH\DC2\EOT\242\SOH\RS8\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ENQ\ETX\DC2\EOT\242\SOH;<\n\
    \X\n\
    \\EOT\EOT\SO\STX\ACK\DC2\EOT\245\SOH\EOT\RS\SUBJ If the state is BLOCKED, blocked reason provides additional information.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ACK\ENQ\DC2\EOT\245\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ACK\SOH\DC2\EOT\245\SOH\v\EM\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ACK\ETX\DC2\EOT\245\SOH\FS\GS\n\
    \R\n\
    \\EOT\EOT\SO\STX\a\DC2\EOT\248\SOH\EOT\SYN\SUBD A reason that may be specified in the CancelNexusOperationRequest.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\a\ENQ\DC2\EOT\248\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\a\SOH\DC2\EOT\248\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\a\ETX\DC2\EOT\248\SOH\DC4\NAK\n\
    \b\n\
    \\STX\EOT\SI\DC2\ACK\252\SOH\NUL\213\STX\SOH\SUBT Full current state of a standalone Nexus operation, as of the time of the request.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\252\SOH\b#\n\
    \i\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\254\SOH\EOT\FS\SUB[ Unique identifier of this Nexus operation within its namespace along with run ID (below).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ENQ\DC2\EOT\254\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\254\SOH\v\ETB\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\254\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT\SI\STX\SOH\DC2\EOT\255\SOH\EOT\SYN\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ENQ\DC2\EOT\255\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\EOT\255\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\EOT\255\SOH\DC4\NAK\n\
    \U\n\
    \\EOT\EOT\SI\STX\STX\DC2\EOT\130\STX\EOT\CAN\SUBG Endpoint name, resolved to a URL via the cluster's endpoint registry.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ENQ\DC2\EOT\130\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\SOH\DC2\EOT\130\STX\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ETX\DC2\EOT\130\STX\SYN\ETB\n\
    \\GS\n\
    \\EOT\EOT\SI\STX\ETX\DC2\EOT\132\STX\EOT\ETB\SUB\SI Service name.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ENQ\DC2\EOT\132\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\SOH\DC2\EOT\132\STX\v\DC2\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ETX\DC2\EOT\132\STX\NAK\SYN\n\
    \\US\n\
    \\EOT\EOT\SI\STX\EOT\DC2\EOT\134\STX\EOT\EM\SUB\DC1 Operation name.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\ENQ\DC2\EOT\134\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\SOH\DC2\EOT\134\STX\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\ETX\DC2\EOT\134\STX\ETB\CAN\n\
    \\234\SOH\n\
    \\EOT\EOT\SI\STX\ENQ\DC2\EOT\138\STX\EOTC\SUB\219\SOH A general status for this operation, indicates whether it is currently running or in one of the terminal statuses.\n\
    \ Updated once when the operation is originally scheduled, and again when it reaches a terminal status.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\ACK\DC2\EOT\138\STX\EOT7\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\SOH\DC2\EOT\138\STX8>\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\ETX\DC2\EOT\138\STXAB\n\
    \T\n\
    \\EOT\EOT\SI\STX\ACK\DC2\EOT\140\STX\EOT?\SUBF More detailed breakdown of NEXUS_OPERATION_EXECUTION_STATUS_RUNNING.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ACK\ACK\DC2\EOT\140\STX\EOT4\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ACK\SOH\DC2\EOT\140\STX5:\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ACK\ETX\DC2\EOT\140\STX=>\n\
    \\180\SOH\n\
    \\EOT\EOT\SI\STX\a\DC2\EOT\145\STX\EOT;\SUB\165\SOH Schedule-to-close timeout for this operation.\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\a\ACK\DC2\EOT\145\STX\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\a\SOH\DC2\EOT\145\STX\GS6\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\a\ETX\DC2\EOT\145\STX9:\n\
    \\180\SOH\n\
    \\EOT\EOT\SI\STX\b\DC2\EOT\150\STX\EOT;\SUB\165\SOH Schedule-to-start timeout for this operation.\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\b\ACK\DC2\EOT\150\STX\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\b\SOH\DC2\EOT\150\STX\GS6\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\b\ETX\DC2\EOT\150\STX9:\n\
    \\177\SOH\n\
    \\EOT\EOT\SI\STX\t\DC2\EOT\155\STX\EOT9\SUB\162\SOH Start-to-close timeout for this operation.\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\t\ACK\DC2\EOT\155\STX\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\t\SOH\DC2\EOT\155\STX\GS3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\t\ETX\DC2\EOT\155\STX68\n\
    \\180\STX\n\
    \\EOT\EOT\SI\STX\n\
    \\DC2\EOT\161\STX\EOT\ETB\SUB\165\STX The number of attempts made to deliver the start operation request.\n\
    \ This number is approximate, it is incremented when a task is added to the history queue.\n\
    \ In practice, there could be more attempts if a task is executed but fails to commit, or less attempts if a task\n\
    \ was never executed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\n\
    \\ENQ\DC2\EOT\161\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\n\
    \\SOH\DC2\EOT\161\STX\n\
    \\DC1\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\n\
    \\ETX\DC2\EOT\161\STX\DC4\SYN\n\
    \^\n\
    \\EOT\EOT\SI\STX\v\DC2\EOT\164\STX\EOT1\SUBP Time the operation was originally scheduled via a StartNexusOperation request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\v\ACK\DC2\EOT\164\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\v\SOH\DC2\EOT\164\STX\RS+\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\v\ETX\DC2\EOT\164\STX.0\n\
    \;\n\
    \\EOT\EOT\SI\STX\f\DC2\EOT\166\STX\EOT3\SUB- Scheduled time + schedule to close timeout.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\f\ACK\DC2\EOT\166\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\f\SOH\DC2\EOT\166\STX\RS-\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\f\ETX\DC2\EOT\166\STX02\n\
    \G\n\
    \\EOT\EOT\SI\STX\r\DC2\EOT\168\STX\EOT.\SUB9 Time when the operation transitioned to a closed state.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\r\ACK\DC2\EOT\168\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\r\SOH\DC2\EOT\168\STX\RS(\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\r\ETX\DC2\EOT\168\STX+-\n\
    \9\n\
    \\EOT\EOT\SI\STX\SO\DC2\EOT\171\STX\EOT>\SUB+ The time when the last attempt completed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SO\ACK\DC2\EOT\171\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SO\SOH\DC2\EOT\171\STX\RS8\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SO\ETX\DC2\EOT\171\STX;=\n\
    \3\n\
    \\EOT\EOT\SI\STX\SI\DC2\EOT\173\STX\EOT>\SUB% The last attempt's failure, if any.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SI\ACK\DC2\EOT\173\STX\EOT#\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SI\SOH\DC2\EOT\173\STX$8\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SI\ETX\DC2\EOT\173\STX;=\n\
    \<\n\
    \\EOT\EOT\SI\STX\DLE\DC2\EOT\175\STX\EOT>\SUB. The time when the next attempt is scheduled.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\DLE\ACK\DC2\EOT\175\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\DLE\SOH\DC2\EOT\175\STX\RS8\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\DLE\ETX\DC2\EOT\175\STX;=\n\
    \\172\SOH\n\
    \\EOT\EOT\SI\STX\DC1\DC2\EOT\179\STX\EOT5\SUB\157\SOH Elapsed time from schedule_time to now for running operations or to close_time for closed\n\
    \ operations, including all attempts and backoff between attempts.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\DC1\ACK\DC2\EOT\179\STX\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\DC1\SOH\DC2\EOT\179\STX\GS/\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\DC1\ETX\DC2\EOT\179\STX24\n\
    \\f\n\
    \\EOT\EOT\SI\STX\DC2\DC2\EOT\181\STX\EOTC\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\DC2\ACK\DC2\EOT\181\STX\EOT+\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\DC2\SOH\DC2\EOT\181\STX,=\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\DC2\ETX\DC2\EOT\181\STX@B\n\
    \X\n\
    \\EOT\EOT\SI\STX\DC3\DC2\EOT\184\STX\EOT\US\SUBJ If the state is BLOCKED, blocked reason provides additional information.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\DC3\ENQ\DC2\EOT\184\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\DC3\SOH\DC2\EOT\184\STX\v\EM\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\DC3\ETX\DC2\EOT\184\STX\FS\RS\n\
    \\135\STX\n\
    \\EOT\EOT\SI\STX\DC4\DC2\EOT\189\STX\EOT\ESC\SUB\248\SOH Server-generated request ID used as an idempotency token when submitting start requests to\n\
    \ the handler. Distinct from the request_id in StartNexusOperationRequest, which is the\n\
    \ caller-side idempotency key for the StartNexusOperation RPC itself.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\DC4\ENQ\DC2\EOT\189\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\DC4\SOH\DC2\EOT\189\STX\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\DC4\ETX\DC2\EOT\189\STX\CAN\SUB\n\
    \m\n\
    \\EOT\EOT\SI\STX\NAK\DC2\EOT\192\STX\EOT \SUB_ Operation token. Only set for asynchronous operations after a successful StartOperation call.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NAK\ENQ\DC2\EOT\192\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NAK\SOH\DC2\EOT\192\STX\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NAK\ETX\DC2\EOT\192\STX\GS\US\n\
    \V\n\
    \\EOT\EOT\SI\STX\SYN\DC2\EOT\195\STX\EOT&\SUBH Incremented each time the operation's state is mutated in persistence.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SYN\ENQ\DC2\EOT\195\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SYN\SOH\DC2\EOT\195\STX\n\
    \ \n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SYN\ETX\DC2\EOT\195\STX#%\n\
    \\f\n\
    \\EOT\EOT\SI\STX\ETB\DC2\EOT\197\STX\EOTC\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETB\ACK\DC2\EOT\197\STX\EOT+\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETB\SOH\DC2\EOT\197\STX,=\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETB\ETX\DC2\EOT\197\STX@B\n\
    \D\n\
    \\EOT\EOT\SI\STX\CAN\DC2\EOT\200\STX\EOT*\SUB6 Header for context propagation and tracing purposes.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\CAN\ACK\DC2\EOT\200\STX\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\CAN\SOH\DC2\EOT\200\STX\CAN$\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\CAN\ETX\DC2\EOT\200\STX')\n\
    \z\n\
    \\EOT\EOT\SI\STX\EM\DC2\EOT\203\STX\EOT8\SUBl Metadata for use by user interfaces to display the fixed as-of-start summary and details of the operation.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EM\ACK\DC2\EOT\203\STX\EOT$\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EM\SOH\DC2\EOT\203\STX%2\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EM\ETX\DC2\EOT\203\STX57\n\
    \W\n\
    \\EOT\EOT\SI\STX\SUB\DC2\EOT\206\STX\EOT4\SUBI Links attached by the handler of this operation on start or completion.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SUB\EOT\DC2\EOT\206\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SUB\ACK\DC2\EOT\206\STX\r(\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SUB\SOH\DC2\EOT\206\STX).\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SUB\ETX\DC2\EOT\206\STX13\n\
    \F\n\
    \\EOT\EOT\SI\STX\ESC\DC2\EOT\209\STX\EOT\EM\SUB8 The identity of the client who started this operation.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ESC\ENQ\DC2\EOT\209\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ESC\SOH\DC2\EOT\209\STX\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ESC\ETX\DC2\EOT\209\STX\SYN\CAN\n\
    \F\n\
    \\EOT\EOT\SI\STX\FS\DC2\EOT\212\STX\EOT \SUB8 Updated once on scheduled and once on terminal status.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\FS\ENQ\DC2\EOT\212\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\FS\SOH\DC2\EOT\212\STX\n\
    \\SUB\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\FS\ETX\DC2\EOT\212\STX\GS\US\n\
    \\139\STX\n\
    \\STX\EOT\DLE\DC2\ACK\218\STX\NUL\249\STX\SOH\SUB\252\SOH Limited Nexus operation information returned in the list response.\n\
    \ When adding fields here, ensure that it is also present in NexusOperationExecutionInfo (note that it may already be present in\n\
    \ NexusOperationExecutionInfo but not at the top-level).\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\218\STX\b'\n\
    \e\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\220\STX\EOT\FS\SUBW A unique identifier of this operation within its namespace along with run ID (below).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\EOT\220\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\220\STX\v\ETB\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\220\STX\SUB\ESC\n\
    \=\n\
    \\EOT\EOT\DLE\STX\SOH\DC2\EOT\222\STX\EOT\SYN\SUB/ The run ID of the standalone Nexus operation.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ENQ\DC2\EOT\222\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\EOT\222\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\EOT\222\STX\DC4\NAK\n\
    \\RS\n\
    \\EOT\EOT\DLE\STX\STX\DC2\EOT\225\STX\EOT\CAN\SUB\DLE Endpoint name.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ENQ\DC2\EOT\225\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\SOH\DC2\EOT\225\STX\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ETX\DC2\EOT\225\STX\SYN\ETB\n\
    \\GS\n\
    \\EOT\EOT\DLE\STX\ETX\DC2\EOT\227\STX\EOT\ETB\SUB\SI Service name.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\ENQ\DC2\EOT\227\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\SOH\DC2\EOT\227\STX\v\DC2\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\ETX\DC2\EOT\227\STX\NAK\SYN\n\
    \\US\n\
    \\EOT\EOT\DLE\STX\EOT\DC2\EOT\229\STX\EOT\EM\SUB\DC1 Operation name.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\EOT\ENQ\DC2\EOT\229\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\EOT\SOH\DC2\EOT\229\STX\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\EOT\ETX\DC2\EOT\229\STX\ETB\CAN\n\
    \^\n\
    \\EOT\EOT\DLE\STX\ENQ\DC2\EOT\232\STX\EOT0\SUBP Time the operation was originally scheduled via a StartNexusOperation request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ENQ\ACK\DC2\EOT\232\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ENQ\SOH\DC2\EOT\232\STX\RS+\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ENQ\ETX\DC2\EOT\232\STX./\n\
    \\131\SOH\n\
    \\EOT\EOT\DLE\STX\ACK\DC2\EOT\234\STX\EOT-\SUBu If the operation is in a terminal status, this field represents the time the operation transitioned to that status.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ACK\ACK\DC2\EOT\234\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ACK\SOH\DC2\EOT\234\STX\RS(\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ACK\ETX\DC2\EOT\234\STX+,\n\
    \\144\SOH\n\
    \\EOT\EOT\DLE\STX\a\DC2\EOT\236\STX\EOTC\SUB\129\SOH The status is updated once, when the operation is originally scheduled, and again when the operation reaches a terminal status.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\a\ACK\DC2\EOT\236\STX\EOT7\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\a\SOH\DC2\EOT\236\STX8>\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\a\ETX\DC2\EOT\236\STXAB\n\
    \9\n\
    \\EOT\EOT\DLE\STX\b\DC2\EOT\239\STX\EOTB\SUB+ Search attributes from the start request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\b\ACK\DC2\EOT\239\STX\EOT+\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\b\SOH\DC2\EOT\239\STX,=\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\b\ETX\DC2\EOT\239\STX@A\n\
    \+\n\
    \\EOT\EOT\DLE\STX\t\DC2\EOT\242\STX\EOT&\SUB\GS Updated on terminal status.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\t\ENQ\DC2\EOT\242\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\t\SOH\DC2\EOT\242\STX\n\
    \ \n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\t\ETX\DC2\EOT\242\STX#%\n\
    \\DEL\n\
    \\EOT\EOT\DLE\STX\n\
    \\DC2\EOT\245\STX\EOT5\SUBq The difference between close time and scheduled time.\n\
    \ This field is only populated if the operation is closed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\n\
    \\ACK\DC2\EOT\245\STX\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\n\
    \\SOH\DC2\EOT\245\STX\GS/\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\n\
    \\ETX\DC2\EOT\245\STX24\n\
    \F\n\
    \\EOT\EOT\DLE\STX\v\DC2\EOT\248\STX\EOT \SUB8 Updated once on scheduled and once on terminal status.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\v\ENQ\DC2\EOT\248\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\v\SOH\DC2\EOT\248\STX\n\
    \\SUB\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\v\ETX\DC2\EOT\248\STX\GS\USb\ACKproto3"