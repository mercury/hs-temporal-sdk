{- This file was auto-generated from temporal/api/export/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Export.V1.Message (
        ActivityExecution(), ExportedExecutions(), WorkflowExecution(),
        WorkflowExecutions()
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
import qualified Proto.Temporal.Api.History.V1.Message
import qualified Proto.Temporal.Api.Workflowservice.V1.RequestResponse
{- | Fields :
     
         * 'Proto.Temporal.Api.Export.V1.Message_Fields.activity' @:: Lens' ActivityExecution Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeActivityExecutionResponse@
         * 'Proto.Temporal.Api.Export.V1.Message_Fields.maybe'activity' @:: Lens' ActivityExecution (Prelude.Maybe Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeActivityExecutionResponse)@ -}
data ActivityExecution
  = ActivityExecution'_constructor {_ActivityExecution'activity :: !(Prelude.Maybe Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeActivityExecutionResponse),
                                    _ActivityExecution'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ActivityExecution where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ActivityExecution "activity" Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeActivityExecutionResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecution'activity
           (\ x__ y__ -> x__ {_ActivityExecution'activity = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecution "maybe'activity" (Prelude.Maybe Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeActivityExecutionResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecution'activity
           (\ x__ y__ -> x__ {_ActivityExecution'activity = y__}))
        Prelude.id
instance Data.ProtoLens.Message ActivityExecution where
  messageName _
    = Data.Text.pack "temporal.api.export.v1.ActivityExecution"
  packedMessageDescriptor _
    = "\n\
      \\DC1ActivityExecution\DC2^\n\
      \\bactivity\CAN\SOH \SOH(\v2B.temporal.api.workflowservice.v1.DescribeActivityExecutionResponseR\bactivity"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        activity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Workflowservice.V1.RequestResponse.DescribeActivityExecutionResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'activity")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecution
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, activity__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ActivityExecution'_unknownFields
        (\ x__ y__ -> x__ {_ActivityExecution'_unknownFields = y__})
  defMessage
    = ActivityExecution'_constructor
        {_ActivityExecution'activity = Prelude.Nothing,
         _ActivityExecution'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ActivityExecution
          -> Data.ProtoLens.Encoding.Bytes.Parser ActivityExecution
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
                                       "activity"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"activity") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ActivityExecution"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'activity") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ActivityExecution where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ActivityExecution'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ActivityExecution'activity x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Export.V1.Message_Fields.workflows' @:: Lens' ExportedExecutions [WorkflowExecution]@
         * 'Proto.Temporal.Api.Export.V1.Message_Fields.vec'workflows' @:: Lens' ExportedExecutions (Data.Vector.Vector WorkflowExecution)@
         * 'Proto.Temporal.Api.Export.V1.Message_Fields.activities' @:: Lens' ExportedExecutions [ActivityExecution]@
         * 'Proto.Temporal.Api.Export.V1.Message_Fields.vec'activities' @:: Lens' ExportedExecutions (Data.Vector.Vector ActivityExecution)@ -}
data ExportedExecutions
  = ExportedExecutions'_constructor {_ExportedExecutions'workflows :: !(Data.Vector.Vector WorkflowExecution),
                                     _ExportedExecutions'activities :: !(Data.Vector.Vector ActivityExecution),
                                     _ExportedExecutions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExportedExecutions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ExportedExecutions "workflows" [WorkflowExecution] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExportedExecutions'workflows
           (\ x__ y__ -> x__ {_ExportedExecutions'workflows = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ExportedExecutions "vec'workflows" (Data.Vector.Vector WorkflowExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExportedExecutions'workflows
           (\ x__ y__ -> x__ {_ExportedExecutions'workflows = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExportedExecutions "activities" [ActivityExecution] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExportedExecutions'activities
           (\ x__ y__ -> x__ {_ExportedExecutions'activities = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ExportedExecutions "vec'activities" (Data.Vector.Vector ActivityExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExportedExecutions'activities
           (\ x__ y__ -> x__ {_ExportedExecutions'activities = y__}))
        Prelude.id
instance Data.ProtoLens.Message ExportedExecutions where
  messageName _
    = Data.Text.pack "temporal.api.export.v1.ExportedExecutions"
  packedMessageDescriptor _
    = "\n\
      \\DC2ExportedExecutions\DC2G\n\
      \\tworkflows\CAN\SOH \ETX(\v2).temporal.api.export.v1.WorkflowExecutionR\tworkflows\DC2I\n\
      \\n\
      \activities\CAN\STX \ETX(\v2).temporal.api.export.v1.ActivityExecutionR\n\
      \activities"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        workflows__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflows"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WorkflowExecution)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"workflows")) ::
              Data.ProtoLens.FieldDescriptor ExportedExecutions
        activities__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activities"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ActivityExecution)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"activities")) ::
              Data.ProtoLens.FieldDescriptor ExportedExecutions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, workflows__field_descriptor),
           (Data.ProtoLens.Tag 2, activities__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExportedExecutions'_unknownFields
        (\ x__ y__ -> x__ {_ExportedExecutions'_unknownFields = y__})
  defMessage
    = ExportedExecutions'_constructor
        {_ExportedExecutions'workflows = Data.Vector.Generic.empty,
         _ExportedExecutions'activities = Data.Vector.Generic.empty,
         _ExportedExecutions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ExportedExecutions
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ActivityExecution
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld WorkflowExecution
                -> Data.ProtoLens.Encoding.Bytes.Parser ExportedExecutions
        loop x mutable'activities mutable'workflows
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'activities <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'activities)
                      frozen'workflows <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'workflows)
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
                              (Data.ProtoLens.Field.field @"vec'activities") frozen'activities
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'workflows") frozen'workflows x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "workflows"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'workflows y)
                                loop x mutable'activities v
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "activities"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'activities y)
                                loop x v mutable'workflows
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'activities mutable'workflows
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'activities <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              mutable'workflows <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'activities mutable'workflows)
          "ExportedExecutions"
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
                   (Data.ProtoLens.Field.field @"vec'workflows") _x))
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
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'activities") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ExportedExecutions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExportedExecutions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ExportedExecutions'workflows x__)
                (Control.DeepSeq.deepseq (_ExportedExecutions'activities x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Export.V1.Message_Fields.history' @:: Lens' WorkflowExecution Proto.Temporal.Api.History.V1.Message.History@
         * 'Proto.Temporal.Api.Export.V1.Message_Fields.maybe'history' @:: Lens' WorkflowExecution (Prelude.Maybe Proto.Temporal.Api.History.V1.Message.History)@ -}
data WorkflowExecution
  = WorkflowExecution'_constructor {_WorkflowExecution'history :: !(Prelude.Maybe Proto.Temporal.Api.History.V1.Message.History),
                                    _WorkflowExecution'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkflowExecution where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkflowExecution "history" Proto.Temporal.Api.History.V1.Message.History where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowExecution'history
           (\ x__ y__ -> x__ {_WorkflowExecution'history = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkflowExecution "maybe'history" (Prelude.Maybe Proto.Temporal.Api.History.V1.Message.History) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowExecution'history
           (\ x__ y__ -> x__ {_WorkflowExecution'history = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkflowExecution where
  messageName _
    = Data.Text.pack "temporal.api.export.v1.WorkflowExecution"
  packedMessageDescriptor _
    = "\n\
      \\DC1WorkflowExecution\DC2:\n\
      \\ahistory\CAN\SOH \SOH(\v2 .temporal.api.history.v1.HistoryR\ahistory"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        history__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "history"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.History.V1.Message.History)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'history")) ::
              Data.ProtoLens.FieldDescriptor WorkflowExecution
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, history__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkflowExecution'_unknownFields
        (\ x__ y__ -> x__ {_WorkflowExecution'_unknownFields = y__})
  defMessage
    = WorkflowExecution'_constructor
        {_WorkflowExecution'history = Prelude.Nothing,
         _WorkflowExecution'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkflowExecution
          -> Data.ProtoLens.Encoding.Bytes.Parser WorkflowExecution
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
                                       "history"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"history") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WorkflowExecution"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'history") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData WorkflowExecution where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkflowExecution'_unknownFields x__)
             (Control.DeepSeq.deepseq (_WorkflowExecution'history x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Export.V1.Message_Fields.items' @:: Lens' WorkflowExecutions [WorkflowExecution]@
         * 'Proto.Temporal.Api.Export.V1.Message_Fields.vec'items' @:: Lens' WorkflowExecutions (Data.Vector.Vector WorkflowExecution)@ -}
data WorkflowExecutions
  = WorkflowExecutions'_constructor {_WorkflowExecutions'items :: !(Data.Vector.Vector WorkflowExecution),
                                     _WorkflowExecutions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkflowExecutions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkflowExecutions "items" [WorkflowExecution] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowExecutions'items
           (\ x__ y__ -> x__ {_WorkflowExecutions'items = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField WorkflowExecutions "vec'items" (Data.Vector.Vector WorkflowExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkflowExecutions'items
           (\ x__ y__ -> x__ {_WorkflowExecutions'items = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkflowExecutions where
  messageName _
    = Data.Text.pack "temporal.api.export.v1.WorkflowExecutions"
  packedMessageDescriptor _
    = "\n\
      \\DC2WorkflowExecutions\DC2?\n\
      \\ENQitems\CAN\SOH \ETX(\v2).temporal.api.export.v1.WorkflowExecutionR\ENQitems"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        items__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "items"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WorkflowExecution)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"items")) ::
              Data.ProtoLens.FieldDescriptor WorkflowExecutions
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, items__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkflowExecutions'_unknownFields
        (\ x__ y__ -> x__ {_WorkflowExecutions'_unknownFields = y__})
  defMessage
    = WorkflowExecutions'_constructor
        {_WorkflowExecutions'items = Data.Vector.Generic.empty,
         _WorkflowExecutions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkflowExecutions
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld WorkflowExecution
             -> Data.ProtoLens.Encoding.Bytes.Parser WorkflowExecutions
        loop x mutable'items
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'items <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'items)
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
                              (Data.ProtoLens.Field.field @"vec'items") frozen'items x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "items"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'items y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'items
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'items <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'items)
          "WorkflowExecutions"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'items") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData WorkflowExecutions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkflowExecutions'_unknownFields x__)
             (Control.DeepSeq.deepseq (_WorkflowExecutions'items x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \$temporal/api/export/v1/message.proto\DC2\SYNtemporal.api.export.v1\SUB%temporal/api/history/v1/message.proto\SUB6temporal/api/workflowservice/v1/request_response.proto\"O\n\
    \\DC1WorkflowExecution\DC2:\n\
    \\ahistory\CAN\SOH \SOH(\v2 .temporal.api.history.v1.HistoryR\ahistory\"U\n\
    \\DC2WorkflowExecutions\DC2?\n\
    \\ENQitems\CAN\SOH \ETX(\v2).temporal.api.export.v1.WorkflowExecutionR\ENQitems\"s\n\
    \\DC1ActivityExecution\DC2^\n\
    \\bactivity\CAN\SOH \SOH(\v2B.temporal.api.workflowservice.v1.DescribeActivityExecutionResponseR\bactivity\"\168\SOH\n\
    \\DC2ExportedExecutions\DC2G\n\
    \\tworkflows\CAN\SOH \ETX(\v2).temporal.api.export.v1.WorkflowExecutionR\tworkflows\DC2I\n\
    \\n\
    \activities\CAN\STX \ETX(\v2).temporal.api.export.v1.ActivityExecutionR\n\
    \activitiesB\137\SOH\n\
    \\EMio.temporal.api.export.v1B\fMessageProtoP\SOHZ#go.temporal.io/api/export/v1;export\170\STX\CANTemporalio.Api.Export.V1\234\STX\ESCTemporalio::Api::Export::V1J\145\a\n\
    \\ACK\DC2\EOT\NUL\NUL!\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\US\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NUL:\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\EOT\NUL:\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NUL2\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\ENQ\NUL2\n\
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
    \\SOH\b\DC2\ETX\b\NUL4\n\
    \\t\n\
    \\STX\b-\DC2\ETX\b\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL5\n\
    \\t\n\
    \\STX\b%\DC2\ETX\t\NUL5\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\v\NUL/\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\f\NUL@\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\SO\NUL\DLE\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SO\b\EM\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SI\EOT0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\SI\EOT#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SI$+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SI./\n\
    \\155\SOH\n\
    \\STX\EOT\SOH\DC2\EOT\DC4\NUL\SYN\SOH\SUB\142\SOH WorkflowExecutions is the legacy Cloud Export file format containing only workflow executions.\n\
    \ New exporters should use ExportedExecutions.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DC4\b\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\NAK\EOT)\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\NAK\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\NAK\r\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\NAK\US$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\NAK'(\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\CAN\NUL\SUB\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\CAN\b\EM\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\EM\EOTS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX\EM\EOTE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\EMFN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\EMQR\n\
    \\187\SOH\n\
    \\STX\EOT\ETX\DC2\EOT\RS\NUL!\SOH\SUB\174\SOH ExportedExecutions is used by the Cloud Export feature to deserialize the exported file.\n\
    \ It encapsulates workflow execution information and contains other execution types.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\RS\b\SUB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\US\EOT-\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\US\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETX\US\r\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\US\US(\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\US+,\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX \EOT.\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX \EOT\f\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETX \r\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX \US)\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX ,-b\ACKproto3"