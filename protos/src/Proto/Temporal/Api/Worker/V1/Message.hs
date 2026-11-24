{- This file was auto-generated from temporal/api/worker/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Worker.V1.Message (
        CancelActivityCommand(), CancelActivityResult(), EnvironmentInfo(),
        EnvironmentInfo'Architecture(..), EnvironmentInfo'Architecture(),
        EnvironmentInfo'Architecture'UnrecognizedValue,
        EnvironmentInfo'HostingEnvironment(),
        EnvironmentInfo'HostingEnvironment'HostingEnvironmentType(..),
        EnvironmentInfo'HostingEnvironment'HostingEnvironmentType(),
        EnvironmentInfo'HostingEnvironment'HostingEnvironmentType'UnrecognizedValue,
        EnvironmentInfo'LinuxPlatform(),
        EnvironmentInfo'LinuxPlatform'Libc(..),
        EnvironmentInfo'LinuxPlatform'Libc(),
        EnvironmentInfo'LinuxPlatform'Libc'UnrecognizedValue,
        EnvironmentInfo'MacOSPlatform(), EnvironmentInfo'Platform(),
        EnvironmentInfo'Platform'Variant(..),
        _EnvironmentInfo'Platform'Linux, _EnvironmentInfo'Platform'Macos,
        _EnvironmentInfo'Platform'Windows, EnvironmentInfo'Runtime(),
        EnvironmentInfo'Runtime'RuntimeType(..),
        EnvironmentInfo'Runtime'RuntimeType(),
        EnvironmentInfo'Runtime'RuntimeType'UnrecognizedValue,
        EnvironmentInfo'WindowsPlatform(),
        EnvironmentInfo'WindowsPlatform'Crt(..),
        EnvironmentInfo'WindowsPlatform'Crt(),
        EnvironmentInfo'WindowsPlatform'Crt'UnrecognizedValue,
        PluginInfo(), StorageDriverInfo(), WorkerCommand(),
        WorkerCommand'Type(..), _WorkerCommand'CancelActivity,
        WorkerCommandResult(), WorkerCommandResult'Type(..),
        _WorkerCommandResult'CancelActivity, WorkerHeartbeat(),
        WorkerHostInfo(), WorkerInfo(), WorkerListInfo(),
        WorkerPollerInfo(), WorkerSlotsInfo()
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
import qualified Proto.Temporal.Api.Deployment.V1.Message
import qualified Proto.Temporal.Api.Enums.V1.Common
{- | Fields :
     
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.taskToken' @:: Lens' CancelActivityCommand Data.ByteString.ByteString@ -}
data CancelActivityCommand
  = CancelActivityCommand'_constructor {_CancelActivityCommand'taskToken :: !Data.ByteString.ByteString,
                                        _CancelActivityCommand'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CancelActivityCommand where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CancelActivityCommand "taskToken" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelActivityCommand'taskToken
           (\ x__ y__ -> x__ {_CancelActivityCommand'taskToken = y__}))
        Prelude.id
instance Data.ProtoLens.Message CancelActivityCommand where
  messageName _
    = Data.Text.pack "temporal.api.worker.v1.CancelActivityCommand"
  packedMessageDescriptor _
    = "\n\
      \\NAKCancelActivityCommand\DC2\GS\n\
      \\n\
      \task_token\CAN\SOH \SOH(\fR\ttaskToken"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        taskToken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_token"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"taskToken")) ::
              Data.ProtoLens.FieldDescriptor CancelActivityCommand
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, taskToken__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CancelActivityCommand'_unknownFields
        (\ x__ y__ -> x__ {_CancelActivityCommand'_unknownFields = y__})
  defMessage
    = CancelActivityCommand'_constructor
        {_CancelActivityCommand'taskToken = Data.ProtoLens.fieldDefault,
         _CancelActivityCommand'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CancelActivityCommand
          -> Data.ProtoLens.Encoding.Bytes.Parser CancelActivityCommand
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "task_token"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskToken") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CancelActivityCommand"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"taskToken") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CancelActivityCommand where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CancelActivityCommand'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CancelActivityCommand'taskToken x__) ())
{- | Fields :
      -}
data CancelActivityResult
  = CancelActivityResult'_constructor {_CancelActivityResult'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CancelActivityResult where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message CancelActivityResult where
  messageName _
    = Data.Text.pack "temporal.api.worker.v1.CancelActivityResult"
  packedMessageDescriptor _
    = "\n\
      \\DC4CancelActivityResult"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CancelActivityResult'_unknownFields
        (\ x__ y__ -> x__ {_CancelActivityResult'_unknownFields = y__})
  defMessage
    = CancelActivityResult'_constructor
        {_CancelActivityResult'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CancelActivityResult
          -> Data.ProtoLens.Encoding.Bytes.Parser CancelActivityResult
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
          (do loop Data.ProtoLens.defMessage) "CancelActivityResult"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData CancelActivityResult where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CancelActivityResult'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.runtimes' @:: Lens' EnvironmentInfo [EnvironmentInfo'Runtime]@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.vec'runtimes' @:: Lens' EnvironmentInfo (Data.Vector.Vector EnvironmentInfo'Runtime)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.hostingEnvironments' @:: Lens' EnvironmentInfo [EnvironmentInfo'HostingEnvironment]@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.vec'hostingEnvironments' @:: Lens' EnvironmentInfo (Data.Vector.Vector EnvironmentInfo'HostingEnvironment)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.platform' @:: Lens' EnvironmentInfo EnvironmentInfo'Platform@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'platform' @:: Lens' EnvironmentInfo (Prelude.Maybe EnvironmentInfo'Platform)@ -}
data EnvironmentInfo
  = EnvironmentInfo'_constructor {_EnvironmentInfo'runtimes :: !(Data.Vector.Vector EnvironmentInfo'Runtime),
                                  _EnvironmentInfo'hostingEnvironments :: !(Data.Vector.Vector EnvironmentInfo'HostingEnvironment),
                                  _EnvironmentInfo'platform :: !(Prelude.Maybe EnvironmentInfo'Platform),
                                  _EnvironmentInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EnvironmentInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EnvironmentInfo "runtimes" [EnvironmentInfo'Runtime] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'runtimes
           (\ x__ y__ -> x__ {_EnvironmentInfo'runtimes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField EnvironmentInfo "vec'runtimes" (Data.Vector.Vector EnvironmentInfo'Runtime) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'runtimes
           (\ x__ y__ -> x__ {_EnvironmentInfo'runtimes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EnvironmentInfo "hostingEnvironments" [EnvironmentInfo'HostingEnvironment] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'hostingEnvironments
           (\ x__ y__ -> x__ {_EnvironmentInfo'hostingEnvironments = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField EnvironmentInfo "vec'hostingEnvironments" (Data.Vector.Vector EnvironmentInfo'HostingEnvironment) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'hostingEnvironments
           (\ x__ y__ -> x__ {_EnvironmentInfo'hostingEnvironments = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EnvironmentInfo "platform" EnvironmentInfo'Platform where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'platform
           (\ x__ y__ -> x__ {_EnvironmentInfo'platform = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EnvironmentInfo "maybe'platform" (Prelude.Maybe EnvironmentInfo'Platform) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'platform
           (\ x__ y__ -> x__ {_EnvironmentInfo'platform = y__}))
        Prelude.id
instance Data.ProtoLens.Message EnvironmentInfo where
  messageName _
    = Data.Text.pack "temporal.api.worker.v1.EnvironmentInfo"
  packedMessageDescriptor _
    = "\n\
      \\SIEnvironmentInfo\DC2K\n\
      \\bruntimes\CAN\SOH \ETX(\v2/.temporal.api.worker.v1.EnvironmentInfo.RuntimeR\bruntimes\DC2m\n\
      \\DC4hosting_environments\CAN\STX \ETX(\v2:.temporal.api.worker.v1.EnvironmentInfo.HostingEnvironmentR\DC3hostingEnvironments\DC2L\n\
      \\bplatform\CAN\ETX \SOH(\v20.temporal.api.worker.v1.EnvironmentInfo.PlatformR\bplatform\SUB\216\ETX\n\
      \\aRuntime\DC2O\n\
      \\EOTtype\CAN\SOH \SOH(\SO2;.temporal.api.worker.v1.EnvironmentInfo.Runtime.RuntimeTypeR\EOTtype\DC2\CAN\n\
      \\aversion\CAN\STX \SOH(\tR\aversion\"\225\STX\n\
      \\vRuntimeType\DC2\FS\n\
      \\CANRUNTIME_TYPE_UNSPECIFIED\DLE\NUL\DC2\DC4\n\
      \\DLERUNTIME_TYPE_JVM\DLE\SOH\DC2\CAN\n\
      \\DC4RUNTIME_TYPE_CPYTHON\DLE\STX\DC2\NAK\n\
      \\DC1RUNTIME_TYPE_NODE\DLE\ETX\DC2\DC4\n\
      \\DLERUNTIME_TYPE_BUN\DLE\EOT\DC2\SYN\n\
      \\DC2RUNTIME_TYPE_CRUBY\DLE\ENQ\DC2\DC3\n\
      \\SIRUNTIME_TYPE_GO\DLE\ACK\DC2!\n\
      \\GSRUNTIME_TYPE_DOTNET_FRAMEWORK\DLE\a\DC2\FS\n\
      \\CANRUNTIME_TYPE_DOTNET_CORE\DLE\b\DC2\ETB\n\
      \\DC3RUNTIME_TYPE_NATIVE\DLE\t\DC2\ESC\n\
      \\ETBRUNTIME_TYPE_ROADRUNNER\DLE\n\
      \\DC2\SUB\n\
      \\SYNRUNTIME_TYPE_GRAAL_AOT\DLE\v\DC2\ETB\n\
      \\DC3RUNTIME_TYPE_KOTLIN\DLE\f\SUB\224\EOT\n\
      \\DC2HostingEnvironment\DC2e\n\
      \\EOTtype\CAN\SOH \SOH(\SO2Q.temporal.api.worker.v1.EnvironmentInfo.HostingEnvironment.HostingEnvironmentTypeR\EOTtype\DC2\CAN\n\
      \\aversion\CAN\STX \SOH(\tR\aversion\"\200\ETX\n\
      \\SYNHostingEnvironmentType\DC2(\n\
      \$HOSTING_ENVIRONMENT_TYPE_UNSPECIFIED\DLE\NUL\DC2#\n\
      \\USHOSTING_ENVIRONMENT_TYPE_DOCKER\DLE\SOH\DC2 \n\
      \\FSHOSTING_ENVIRONMENT_TYPE_K8S\DLE\STX\DC2'\n\
      \#HOSTING_ENVIRONMENT_TYPE_AWS_LAMBDA\DLE\ETX\DC2$\n\
      \ HOSTING_ENVIRONMENT_TYPE_AWS_ECS\DLE\EOT\DC2-\n\
      \)HOSTING_ENVIRONMENT_TYPE_GOOGLE_CLOUD_RUN\DLE\ACK\DC2.\n\
      \*HOSTING_ENVIRONMENT_TYPE_GOOGLE_APP_ENGINE\DLE\a\DC2.\n\
      \*HOSTING_ENVIRONMENT_TYPE_AZURE_APP_SERVICE\DLE\b\DC2,\n\
      \(HOSTING_ENVIRONMENT_TYPE_AZURE_FUNCTIONS\DLE\t\DC21\n\
      \-HOSTING_ENVIRONMENT_TYPE_AZURE_CONTAINER_APPS\DLE\n\
      \\SUB\136\STX\n\
      \\bPlatform\DC2M\n\
      \\ENQlinux\CAN\SOH \SOH(\v25.temporal.api.worker.v1.EnvironmentInfo.LinuxPlatformH\NULR\ENQlinux\DC2M\n\
      \\ENQmacos\CAN\STX \SOH(\v25.temporal.api.worker.v1.EnvironmentInfo.MacOSPlatformH\NULR\ENQmacos\DC2S\n\
      \\awindows\CAN\ETX \SOH(\v27.temporal.api.worker.v1.EnvironmentInfo.WindowsPlatformH\NULR\awindowsB\t\n\
      \\avariant\SUB\144\STX\n\
      \\rLinuxPlatform\DC2\CAN\n\
      \\aversion\CAN\SOH \SOH(\tR\aversion\DC2X\n\
      \\farchitecture\CAN\STX \SOH(\SO24.temporal.api.worker.v1.EnvironmentInfo.ArchitectureR\farchitecture\DC2N\n\
      \\EOTlibc\CAN\ETX \SOH(\SO2:.temporal.api.worker.v1.EnvironmentInfo.LinuxPlatform.LibcR\EOTlibc\";\n\
      \\EOTLibc\DC2\DC4\n\
      \\DLELIBC_UNSPECIFIED\DLE\NUL\DC2\SO\n\
      \\n\
      \LIBC_GLIBC\DLE\SOH\DC2\r\n\
      \\tLIBC_MUSL\DLE\STX\SUB\131\SOH\n\
      \\rMacOSPlatform\DC2\CAN\n\
      \\aversion\CAN\SOH \SOH(\tR\aversion\DC2X\n\
      \\farchitecture\CAN\STX \SOH(\SO24.temporal.api.worker.v1.EnvironmentInfo.ArchitectureR\farchitecture\SUB\173\STX\n\
      \\SIWindowsPlatform\DC2\CAN\n\
      \\aversion\CAN\SOH \SOH(\tR\aversion\DC2X\n\
      \\farchitecture\CAN\STX \SOH(\SO24.temporal.api.worker.v1.EnvironmentInfo.ArchitectureR\farchitecture\DC2M\n\
      \\ETXcrt\CAN\ETX \SOH(\SO2;.temporal.api.worker.v1.EnvironmentInfo.WindowsPlatform.CrtR\ETXcrt\"W\n\
      \\ETXCrt\DC2\DC3\n\
      \\SICRT_UNSPECIFIED\DLE\NUL\DC2\f\n\
      \\bCRT_UCRT\DLE\SOH\DC2\SO\n\
      \\n\
      \CRT_MSVCRT\DLE\STX\DC2\r\n\
      \\tCRT_MINGW\DLE\ETX\DC2\SO\n\
      \\n\
      \CRT_CYGWIN\DLE\EOT\"\\\n\
      \\fArchitecture\DC2\FS\n\
      \\CANARCHITECTURE_UNSPECIFIED\DLE\NUL\DC2\SYN\n\
      \\DC2ARCHITECTURE_AMD64\DLE\SOH\DC2\SYN\n\
      \\DC2ARCHITECTURE_ARM64\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        runtimes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "runtimes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EnvironmentInfo'Runtime)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"runtimes")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentInfo
        hostingEnvironments__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hosting_environments"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EnvironmentInfo'HostingEnvironment)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"hostingEnvironments")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentInfo
        platform__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "platform"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EnvironmentInfo'Platform)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'platform")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, runtimes__field_descriptor),
           (Data.ProtoLens.Tag 2, hostingEnvironments__field_descriptor),
           (Data.ProtoLens.Tag 3, platform__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EnvironmentInfo'_unknownFields
        (\ x__ y__ -> x__ {_EnvironmentInfo'_unknownFields = y__})
  defMessage
    = EnvironmentInfo'_constructor
        {_EnvironmentInfo'runtimes = Data.Vector.Generic.empty,
         _EnvironmentInfo'hostingEnvironments = Data.Vector.Generic.empty,
         _EnvironmentInfo'platform = Prelude.Nothing,
         _EnvironmentInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EnvironmentInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld EnvironmentInfo'HostingEnvironment
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld EnvironmentInfo'Runtime
                -> Data.ProtoLens.Encoding.Bytes.Parser EnvironmentInfo
        loop x mutable'hostingEnvironments mutable'runtimes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'hostingEnvironments <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'hostingEnvironments)
                      frozen'runtimes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'runtimes)
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
                              (Data.ProtoLens.Field.field @"vec'hostingEnvironments")
                              frozen'hostingEnvironments
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'runtimes") frozen'runtimes x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "runtimes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'runtimes y)
                                loop x mutable'hostingEnvironments v
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "hosting_environments"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'hostingEnvironments y)
                                loop x v mutable'runtimes
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "platform"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"platform") y x)
                                  mutable'hostingEnvironments mutable'runtimes
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'hostingEnvironments mutable'runtimes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'hostingEnvironments <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              mutable'runtimes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'hostingEnvironments
                mutable'runtimes)
          "EnvironmentInfo"
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
                   (Data.ProtoLens.Field.field @"vec'runtimes") _x))
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
                      (Data.ProtoLens.Field.field @"vec'hostingEnvironments") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'platform") _x
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
instance Control.DeepSeq.NFData EnvironmentInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EnvironmentInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EnvironmentInfo'runtimes x__)
                (Control.DeepSeq.deepseq
                   (_EnvironmentInfo'hostingEnvironments x__)
                   (Control.DeepSeq.deepseq (_EnvironmentInfo'platform x__) ())))
newtype EnvironmentInfo'Architecture'UnrecognizedValue
  = EnvironmentInfo'Architecture'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data EnvironmentInfo'Architecture
  = EnvironmentInfo'ARCHITECTURE_UNSPECIFIED |
    EnvironmentInfo'ARCHITECTURE_AMD64 |
    EnvironmentInfo'ARCHITECTURE_ARM64 |
    EnvironmentInfo'Architecture'Unrecognized !EnvironmentInfo'Architecture'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum EnvironmentInfo'Architecture where
  maybeToEnum 0
    = Prelude.Just EnvironmentInfo'ARCHITECTURE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just EnvironmentInfo'ARCHITECTURE_AMD64
  maybeToEnum 2 = Prelude.Just EnvironmentInfo'ARCHITECTURE_ARM64
  maybeToEnum k
    = Prelude.Just
        (EnvironmentInfo'Architecture'Unrecognized
           (EnvironmentInfo'Architecture'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum EnvironmentInfo'ARCHITECTURE_UNSPECIFIED
    = "ARCHITECTURE_UNSPECIFIED"
  showEnum EnvironmentInfo'ARCHITECTURE_AMD64 = "ARCHITECTURE_AMD64"
  showEnum EnvironmentInfo'ARCHITECTURE_ARM64 = "ARCHITECTURE_ARM64"
  showEnum
    (EnvironmentInfo'Architecture'Unrecognized (EnvironmentInfo'Architecture'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "ARCHITECTURE_UNSPECIFIED"
    = Prelude.Just EnvironmentInfo'ARCHITECTURE_UNSPECIFIED
    | (Prelude.==) k "ARCHITECTURE_AMD64"
    = Prelude.Just EnvironmentInfo'ARCHITECTURE_AMD64
    | (Prelude.==) k "ARCHITECTURE_ARM64"
    = Prelude.Just EnvironmentInfo'ARCHITECTURE_ARM64
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded EnvironmentInfo'Architecture where
  minBound = EnvironmentInfo'ARCHITECTURE_UNSPECIFIED
  maxBound = EnvironmentInfo'ARCHITECTURE_ARM64
instance Prelude.Enum EnvironmentInfo'Architecture where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Architecture: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum EnvironmentInfo'ARCHITECTURE_UNSPECIFIED = 0
  fromEnum EnvironmentInfo'ARCHITECTURE_AMD64 = 1
  fromEnum EnvironmentInfo'ARCHITECTURE_ARM64 = 2
  fromEnum
    (EnvironmentInfo'Architecture'Unrecognized (EnvironmentInfo'Architecture'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ EnvironmentInfo'ARCHITECTURE_ARM64
    = Prelude.error
        "EnvironmentInfo'Architecture.succ: bad argument EnvironmentInfo'ARCHITECTURE_ARM64. This value would be out of bounds."
  succ EnvironmentInfo'ARCHITECTURE_UNSPECIFIED
    = EnvironmentInfo'ARCHITECTURE_AMD64
  succ EnvironmentInfo'ARCHITECTURE_AMD64
    = EnvironmentInfo'ARCHITECTURE_ARM64
  succ (EnvironmentInfo'Architecture'Unrecognized _)
    = Prelude.error
        "EnvironmentInfo'Architecture.succ: bad argument: unrecognized value"
  pred EnvironmentInfo'ARCHITECTURE_UNSPECIFIED
    = Prelude.error
        "EnvironmentInfo'Architecture.pred: bad argument EnvironmentInfo'ARCHITECTURE_UNSPECIFIED. This value would be out of bounds."
  pred EnvironmentInfo'ARCHITECTURE_AMD64
    = EnvironmentInfo'ARCHITECTURE_UNSPECIFIED
  pred EnvironmentInfo'ARCHITECTURE_ARM64
    = EnvironmentInfo'ARCHITECTURE_AMD64
  pred (EnvironmentInfo'Architecture'Unrecognized _)
    = Prelude.error
        "EnvironmentInfo'Architecture.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault EnvironmentInfo'Architecture where
  fieldDefault = EnvironmentInfo'ARCHITECTURE_UNSPECIFIED
instance Control.DeepSeq.NFData EnvironmentInfo'Architecture where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.type'' @:: Lens' EnvironmentInfo'HostingEnvironment EnvironmentInfo'HostingEnvironment'HostingEnvironmentType@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.version' @:: Lens' EnvironmentInfo'HostingEnvironment Data.Text.Text@ -}
data EnvironmentInfo'HostingEnvironment
  = EnvironmentInfo'HostingEnvironment'_constructor {_EnvironmentInfo'HostingEnvironment'type' :: !EnvironmentInfo'HostingEnvironment'HostingEnvironmentType,
                                                     _EnvironmentInfo'HostingEnvironment'version :: !Data.Text.Text,
                                                     _EnvironmentInfo'HostingEnvironment'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EnvironmentInfo'HostingEnvironment where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EnvironmentInfo'HostingEnvironment "type'" EnvironmentInfo'HostingEnvironment'HostingEnvironmentType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'HostingEnvironment'type'
           (\ x__ y__
              -> x__ {_EnvironmentInfo'HostingEnvironment'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EnvironmentInfo'HostingEnvironment "version" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'HostingEnvironment'version
           (\ x__ y__
              -> x__ {_EnvironmentInfo'HostingEnvironment'version = y__}))
        Prelude.id
instance Data.ProtoLens.Message EnvironmentInfo'HostingEnvironment where
  messageName _
    = Data.Text.pack
        "temporal.api.worker.v1.EnvironmentInfo.HostingEnvironment"
  packedMessageDescriptor _
    = "\n\
      \\DC2HostingEnvironment\DC2e\n\
      \\EOTtype\CAN\SOH \SOH(\SO2Q.temporal.api.worker.v1.EnvironmentInfo.HostingEnvironment.HostingEnvironmentTypeR\EOTtype\DC2\CAN\n\
      \\aversion\CAN\STX \SOH(\tR\aversion\"\200\ETX\n\
      \\SYNHostingEnvironmentType\DC2(\n\
      \$HOSTING_ENVIRONMENT_TYPE_UNSPECIFIED\DLE\NUL\DC2#\n\
      \\USHOSTING_ENVIRONMENT_TYPE_DOCKER\DLE\SOH\DC2 \n\
      \\FSHOSTING_ENVIRONMENT_TYPE_K8S\DLE\STX\DC2'\n\
      \#HOSTING_ENVIRONMENT_TYPE_AWS_LAMBDA\DLE\ETX\DC2$\n\
      \ HOSTING_ENVIRONMENT_TYPE_AWS_ECS\DLE\EOT\DC2-\n\
      \)HOSTING_ENVIRONMENT_TYPE_GOOGLE_CLOUD_RUN\DLE\ACK\DC2.\n\
      \*HOSTING_ENVIRONMENT_TYPE_GOOGLE_APP_ENGINE\DLE\a\DC2.\n\
      \*HOSTING_ENVIRONMENT_TYPE_AZURE_APP_SERVICE\DLE\b\DC2,\n\
      \(HOSTING_ENVIRONMENT_TYPE_AZURE_FUNCTIONS\DLE\t\DC21\n\
      \-HOSTING_ENVIRONMENT_TYPE_AZURE_CONTAINER_APPS\DLE\n"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor EnvironmentInfo'HostingEnvironment'HostingEnvironmentType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentInfo'HostingEnvironment
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentInfo'HostingEnvironment
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, version__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EnvironmentInfo'HostingEnvironment'_unknownFields
        (\ x__ y__
           -> x__ {_EnvironmentInfo'HostingEnvironment'_unknownFields = y__})
  defMessage
    = EnvironmentInfo'HostingEnvironment'_constructor
        {_EnvironmentInfo'HostingEnvironment'type' = Data.ProtoLens.fieldDefault,
         _EnvironmentInfo'HostingEnvironment'version = Data.ProtoLens.fieldDefault,
         _EnvironmentInfo'HostingEnvironment'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EnvironmentInfo'HostingEnvironment
          -> Data.ProtoLens.Encoding.Bytes.Parser EnvironmentInfo'HostingEnvironment
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
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HostingEnvironment"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
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
instance Control.DeepSeq.NFData EnvironmentInfo'HostingEnvironment where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EnvironmentInfo'HostingEnvironment'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EnvironmentInfo'HostingEnvironment'type' x__)
                (Control.DeepSeq.deepseq
                   (_EnvironmentInfo'HostingEnvironment'version x__) ()))
newtype EnvironmentInfo'HostingEnvironment'HostingEnvironmentType'UnrecognizedValue
  = EnvironmentInfo'HostingEnvironment'HostingEnvironmentType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data EnvironmentInfo'HostingEnvironment'HostingEnvironmentType
  = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_UNSPECIFIED |
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_DOCKER |
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_K8S |
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AWS_LAMBDA |
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AWS_ECS |
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_GOOGLE_CLOUD_RUN |
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_GOOGLE_APP_ENGINE |
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_APP_SERVICE |
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_FUNCTIONS |
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_CONTAINER_APPS |
    EnvironmentInfo'HostingEnvironment'HostingEnvironmentType'Unrecognized !EnvironmentInfo'HostingEnvironment'HostingEnvironmentType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum EnvironmentInfo'HostingEnvironment'HostingEnvironmentType where
  maybeToEnum 0
    = Prelude.Just
        EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just
        EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_DOCKER
  maybeToEnum 2
    = Prelude.Just
        EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_K8S
  maybeToEnum 3
    = Prelude.Just
        EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AWS_LAMBDA
  maybeToEnum 4
    = Prelude.Just
        EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AWS_ECS
  maybeToEnum 6
    = Prelude.Just
        EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_GOOGLE_CLOUD_RUN
  maybeToEnum 7
    = Prelude.Just
        EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_GOOGLE_APP_ENGINE
  maybeToEnum 8
    = Prelude.Just
        EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_APP_SERVICE
  maybeToEnum 9
    = Prelude.Just
        EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_FUNCTIONS
  maybeToEnum 10
    = Prelude.Just
        EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_CONTAINER_APPS
  maybeToEnum k
    = Prelude.Just
        (EnvironmentInfo'HostingEnvironment'HostingEnvironmentType'Unrecognized
           (EnvironmentInfo'HostingEnvironment'HostingEnvironmentType'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_UNSPECIFIED
    = "HOSTING_ENVIRONMENT_TYPE_UNSPECIFIED"
  showEnum
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_DOCKER
    = "HOSTING_ENVIRONMENT_TYPE_DOCKER"
  showEnum
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_K8S
    = "HOSTING_ENVIRONMENT_TYPE_K8S"
  showEnum
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AWS_LAMBDA
    = "HOSTING_ENVIRONMENT_TYPE_AWS_LAMBDA"
  showEnum
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AWS_ECS
    = "HOSTING_ENVIRONMENT_TYPE_AWS_ECS"
  showEnum
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_GOOGLE_CLOUD_RUN
    = "HOSTING_ENVIRONMENT_TYPE_GOOGLE_CLOUD_RUN"
  showEnum
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_GOOGLE_APP_ENGINE
    = "HOSTING_ENVIRONMENT_TYPE_GOOGLE_APP_ENGINE"
  showEnum
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_APP_SERVICE
    = "HOSTING_ENVIRONMENT_TYPE_AZURE_APP_SERVICE"
  showEnum
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_FUNCTIONS
    = "HOSTING_ENVIRONMENT_TYPE_AZURE_FUNCTIONS"
  showEnum
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_CONTAINER_APPS
    = "HOSTING_ENVIRONMENT_TYPE_AZURE_CONTAINER_APPS"
  showEnum
    (EnvironmentInfo'HostingEnvironment'HostingEnvironmentType'Unrecognized (EnvironmentInfo'HostingEnvironment'HostingEnvironmentType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "HOSTING_ENVIRONMENT_TYPE_UNSPECIFIED"
    = Prelude.Just
        EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_UNSPECIFIED
    | (Prelude.==) k "HOSTING_ENVIRONMENT_TYPE_DOCKER"
    = Prelude.Just
        EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_DOCKER
    | (Prelude.==) k "HOSTING_ENVIRONMENT_TYPE_K8S"
    = Prelude.Just
        EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_K8S
    | (Prelude.==) k "HOSTING_ENVIRONMENT_TYPE_AWS_LAMBDA"
    = Prelude.Just
        EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AWS_LAMBDA
    | (Prelude.==) k "HOSTING_ENVIRONMENT_TYPE_AWS_ECS"
    = Prelude.Just
        EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AWS_ECS
    | (Prelude.==) k "HOSTING_ENVIRONMENT_TYPE_GOOGLE_CLOUD_RUN"
    = Prelude.Just
        EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_GOOGLE_CLOUD_RUN
    | (Prelude.==) k "HOSTING_ENVIRONMENT_TYPE_GOOGLE_APP_ENGINE"
    = Prelude.Just
        EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_GOOGLE_APP_ENGINE
    | (Prelude.==) k "HOSTING_ENVIRONMENT_TYPE_AZURE_APP_SERVICE"
    = Prelude.Just
        EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_APP_SERVICE
    | (Prelude.==) k "HOSTING_ENVIRONMENT_TYPE_AZURE_FUNCTIONS"
    = Prelude.Just
        EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_FUNCTIONS
    | (Prelude.==) k "HOSTING_ENVIRONMENT_TYPE_AZURE_CONTAINER_APPS"
    = Prelude.Just
        EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_CONTAINER_APPS
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded EnvironmentInfo'HostingEnvironment'HostingEnvironmentType where
  minBound
    = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_UNSPECIFIED
  maxBound
    = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_CONTAINER_APPS
instance Prelude.Enum EnvironmentInfo'HostingEnvironment'HostingEnvironmentType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum HostingEnvironmentType: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_UNSPECIFIED
    = 0
  fromEnum
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_DOCKER
    = 1
  fromEnum
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_K8S
    = 2
  fromEnum
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AWS_LAMBDA
    = 3
  fromEnum
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AWS_ECS
    = 4
  fromEnum
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_GOOGLE_CLOUD_RUN
    = 6
  fromEnum
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_GOOGLE_APP_ENGINE
    = 7
  fromEnum
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_APP_SERVICE
    = 8
  fromEnum
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_FUNCTIONS
    = 9
  fromEnum
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_CONTAINER_APPS
    = 10
  fromEnum
    (EnvironmentInfo'HostingEnvironment'HostingEnvironmentType'Unrecognized (EnvironmentInfo'HostingEnvironment'HostingEnvironmentType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_CONTAINER_APPS
    = Prelude.error
        "EnvironmentInfo'HostingEnvironment'HostingEnvironmentType.succ: bad argument EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_CONTAINER_APPS. This value would be out of bounds."
  succ
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_UNSPECIFIED
    = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_DOCKER
  succ
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_DOCKER
    = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_K8S
  succ
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_K8S
    = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AWS_LAMBDA
  succ
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AWS_LAMBDA
    = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AWS_ECS
  succ
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AWS_ECS
    = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_GOOGLE_CLOUD_RUN
  succ
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_GOOGLE_CLOUD_RUN
    = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_GOOGLE_APP_ENGINE
  succ
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_GOOGLE_APP_ENGINE
    = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_APP_SERVICE
  succ
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_APP_SERVICE
    = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_FUNCTIONS
  succ
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_FUNCTIONS
    = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_CONTAINER_APPS
  succ
    (EnvironmentInfo'HostingEnvironment'HostingEnvironmentType'Unrecognized _)
    = Prelude.error
        "EnvironmentInfo'HostingEnvironment'HostingEnvironmentType.succ: bad argument: unrecognized value"
  pred
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_UNSPECIFIED
    = Prelude.error
        "EnvironmentInfo'HostingEnvironment'HostingEnvironmentType.pred: bad argument EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_UNSPECIFIED. This value would be out of bounds."
  pred
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_DOCKER
    = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_UNSPECIFIED
  pred
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_K8S
    = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_DOCKER
  pred
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AWS_LAMBDA
    = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_K8S
  pred
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AWS_ECS
    = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AWS_LAMBDA
  pred
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_GOOGLE_CLOUD_RUN
    = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AWS_ECS
  pred
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_GOOGLE_APP_ENGINE
    = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_GOOGLE_CLOUD_RUN
  pred
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_APP_SERVICE
    = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_GOOGLE_APP_ENGINE
  pred
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_FUNCTIONS
    = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_APP_SERVICE
  pred
    EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_CONTAINER_APPS
    = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_AZURE_FUNCTIONS
  pred
    (EnvironmentInfo'HostingEnvironment'HostingEnvironmentType'Unrecognized _)
    = Prelude.error
        "EnvironmentInfo'HostingEnvironment'HostingEnvironmentType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault EnvironmentInfo'HostingEnvironment'HostingEnvironmentType where
  fieldDefault
    = EnvironmentInfo'HostingEnvironment'HOSTING_ENVIRONMENT_TYPE_UNSPECIFIED
instance Control.DeepSeq.NFData EnvironmentInfo'HostingEnvironment'HostingEnvironmentType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.version' @:: Lens' EnvironmentInfo'LinuxPlatform Data.Text.Text@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.architecture' @:: Lens' EnvironmentInfo'LinuxPlatform EnvironmentInfo'Architecture@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.libc' @:: Lens' EnvironmentInfo'LinuxPlatform EnvironmentInfo'LinuxPlatform'Libc@ -}
data EnvironmentInfo'LinuxPlatform
  = EnvironmentInfo'LinuxPlatform'_constructor {_EnvironmentInfo'LinuxPlatform'version :: !Data.Text.Text,
                                                _EnvironmentInfo'LinuxPlatform'architecture :: !EnvironmentInfo'Architecture,
                                                _EnvironmentInfo'LinuxPlatform'libc :: !EnvironmentInfo'LinuxPlatform'Libc,
                                                _EnvironmentInfo'LinuxPlatform'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EnvironmentInfo'LinuxPlatform where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EnvironmentInfo'LinuxPlatform "version" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'LinuxPlatform'version
           (\ x__ y__ -> x__ {_EnvironmentInfo'LinuxPlatform'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EnvironmentInfo'LinuxPlatform "architecture" EnvironmentInfo'Architecture where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'LinuxPlatform'architecture
           (\ x__ y__
              -> x__ {_EnvironmentInfo'LinuxPlatform'architecture = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EnvironmentInfo'LinuxPlatform "libc" EnvironmentInfo'LinuxPlatform'Libc where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'LinuxPlatform'libc
           (\ x__ y__ -> x__ {_EnvironmentInfo'LinuxPlatform'libc = y__}))
        Prelude.id
instance Data.ProtoLens.Message EnvironmentInfo'LinuxPlatform where
  messageName _
    = Data.Text.pack
        "temporal.api.worker.v1.EnvironmentInfo.LinuxPlatform"
  packedMessageDescriptor _
    = "\n\
      \\rLinuxPlatform\DC2\CAN\n\
      \\aversion\CAN\SOH \SOH(\tR\aversion\DC2X\n\
      \\farchitecture\CAN\STX \SOH(\SO24.temporal.api.worker.v1.EnvironmentInfo.ArchitectureR\farchitecture\DC2N\n\
      \\EOTlibc\CAN\ETX \SOH(\SO2:.temporal.api.worker.v1.EnvironmentInfo.LinuxPlatform.LibcR\EOTlibc\";\n\
      \\EOTLibc\DC2\DC4\n\
      \\DLELIBC_UNSPECIFIED\DLE\NUL\DC2\SO\n\
      \\n\
      \LIBC_GLIBC\DLE\SOH\DC2\r\n\
      \\tLIBC_MUSL\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentInfo'LinuxPlatform
        architecture__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "architecture"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor EnvironmentInfo'Architecture)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"architecture")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentInfo'LinuxPlatform
        libc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "libc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor EnvironmentInfo'LinuxPlatform'Libc)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"libc")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentInfo'LinuxPlatform
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, version__field_descriptor),
           (Data.ProtoLens.Tag 2, architecture__field_descriptor),
           (Data.ProtoLens.Tag 3, libc__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EnvironmentInfo'LinuxPlatform'_unknownFields
        (\ x__ y__
           -> x__ {_EnvironmentInfo'LinuxPlatform'_unknownFields = y__})
  defMessage
    = EnvironmentInfo'LinuxPlatform'_constructor
        {_EnvironmentInfo'LinuxPlatform'version = Data.ProtoLens.fieldDefault,
         _EnvironmentInfo'LinuxPlatform'architecture = Data.ProtoLens.fieldDefault,
         _EnvironmentInfo'LinuxPlatform'libc = Data.ProtoLens.fieldDefault,
         _EnvironmentInfo'LinuxPlatform'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EnvironmentInfo'LinuxPlatform
          -> Data.ProtoLens.Encoding.Bytes.Parser EnvironmentInfo'LinuxPlatform
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
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "architecture"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"architecture") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "libc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"libc") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "LinuxPlatform"
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"architecture") _x
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
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"libc") _x
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
instance Control.DeepSeq.NFData EnvironmentInfo'LinuxPlatform where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EnvironmentInfo'LinuxPlatform'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EnvironmentInfo'LinuxPlatform'version x__)
                (Control.DeepSeq.deepseq
                   (_EnvironmentInfo'LinuxPlatform'architecture x__)
                   (Control.DeepSeq.deepseq
                      (_EnvironmentInfo'LinuxPlatform'libc x__) ())))
newtype EnvironmentInfo'LinuxPlatform'Libc'UnrecognizedValue
  = EnvironmentInfo'LinuxPlatform'Libc'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data EnvironmentInfo'LinuxPlatform'Libc
  = EnvironmentInfo'LinuxPlatform'LIBC_UNSPECIFIED |
    EnvironmentInfo'LinuxPlatform'LIBC_GLIBC |
    EnvironmentInfo'LinuxPlatform'LIBC_MUSL |
    EnvironmentInfo'LinuxPlatform'Libc'Unrecognized !EnvironmentInfo'LinuxPlatform'Libc'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum EnvironmentInfo'LinuxPlatform'Libc where
  maybeToEnum 0
    = Prelude.Just EnvironmentInfo'LinuxPlatform'LIBC_UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just EnvironmentInfo'LinuxPlatform'LIBC_GLIBC
  maybeToEnum 2
    = Prelude.Just EnvironmentInfo'LinuxPlatform'LIBC_MUSL
  maybeToEnum k
    = Prelude.Just
        (EnvironmentInfo'LinuxPlatform'Libc'Unrecognized
           (EnvironmentInfo'LinuxPlatform'Libc'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum EnvironmentInfo'LinuxPlatform'LIBC_UNSPECIFIED
    = "LIBC_UNSPECIFIED"
  showEnum EnvironmentInfo'LinuxPlatform'LIBC_GLIBC = "LIBC_GLIBC"
  showEnum EnvironmentInfo'LinuxPlatform'LIBC_MUSL = "LIBC_MUSL"
  showEnum
    (EnvironmentInfo'LinuxPlatform'Libc'Unrecognized (EnvironmentInfo'LinuxPlatform'Libc'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "LIBC_UNSPECIFIED"
    = Prelude.Just EnvironmentInfo'LinuxPlatform'LIBC_UNSPECIFIED
    | (Prelude.==) k "LIBC_GLIBC"
    = Prelude.Just EnvironmentInfo'LinuxPlatform'LIBC_GLIBC
    | (Prelude.==) k "LIBC_MUSL"
    = Prelude.Just EnvironmentInfo'LinuxPlatform'LIBC_MUSL
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded EnvironmentInfo'LinuxPlatform'Libc where
  minBound = EnvironmentInfo'LinuxPlatform'LIBC_UNSPECIFIED
  maxBound = EnvironmentInfo'LinuxPlatform'LIBC_MUSL
instance Prelude.Enum EnvironmentInfo'LinuxPlatform'Libc where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Libc: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum EnvironmentInfo'LinuxPlatform'LIBC_UNSPECIFIED = 0
  fromEnum EnvironmentInfo'LinuxPlatform'LIBC_GLIBC = 1
  fromEnum EnvironmentInfo'LinuxPlatform'LIBC_MUSL = 2
  fromEnum
    (EnvironmentInfo'LinuxPlatform'Libc'Unrecognized (EnvironmentInfo'LinuxPlatform'Libc'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ EnvironmentInfo'LinuxPlatform'LIBC_MUSL
    = Prelude.error
        "EnvironmentInfo'LinuxPlatform'Libc.succ: bad argument EnvironmentInfo'LinuxPlatform'LIBC_MUSL. This value would be out of bounds."
  succ EnvironmentInfo'LinuxPlatform'LIBC_UNSPECIFIED
    = EnvironmentInfo'LinuxPlatform'LIBC_GLIBC
  succ EnvironmentInfo'LinuxPlatform'LIBC_GLIBC
    = EnvironmentInfo'LinuxPlatform'LIBC_MUSL
  succ (EnvironmentInfo'LinuxPlatform'Libc'Unrecognized _)
    = Prelude.error
        "EnvironmentInfo'LinuxPlatform'Libc.succ: bad argument: unrecognized value"
  pred EnvironmentInfo'LinuxPlatform'LIBC_UNSPECIFIED
    = Prelude.error
        "EnvironmentInfo'LinuxPlatform'Libc.pred: bad argument EnvironmentInfo'LinuxPlatform'LIBC_UNSPECIFIED. This value would be out of bounds."
  pred EnvironmentInfo'LinuxPlatform'LIBC_GLIBC
    = EnvironmentInfo'LinuxPlatform'LIBC_UNSPECIFIED
  pred EnvironmentInfo'LinuxPlatform'LIBC_MUSL
    = EnvironmentInfo'LinuxPlatform'LIBC_GLIBC
  pred (EnvironmentInfo'LinuxPlatform'Libc'Unrecognized _)
    = Prelude.error
        "EnvironmentInfo'LinuxPlatform'Libc.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault EnvironmentInfo'LinuxPlatform'Libc where
  fieldDefault = EnvironmentInfo'LinuxPlatform'LIBC_UNSPECIFIED
instance Control.DeepSeq.NFData EnvironmentInfo'LinuxPlatform'Libc where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.version' @:: Lens' EnvironmentInfo'MacOSPlatform Data.Text.Text@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.architecture' @:: Lens' EnvironmentInfo'MacOSPlatform EnvironmentInfo'Architecture@ -}
data EnvironmentInfo'MacOSPlatform
  = EnvironmentInfo'MacOSPlatform'_constructor {_EnvironmentInfo'MacOSPlatform'version :: !Data.Text.Text,
                                                _EnvironmentInfo'MacOSPlatform'architecture :: !EnvironmentInfo'Architecture,
                                                _EnvironmentInfo'MacOSPlatform'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EnvironmentInfo'MacOSPlatform where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EnvironmentInfo'MacOSPlatform "version" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'MacOSPlatform'version
           (\ x__ y__ -> x__ {_EnvironmentInfo'MacOSPlatform'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EnvironmentInfo'MacOSPlatform "architecture" EnvironmentInfo'Architecture where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'MacOSPlatform'architecture
           (\ x__ y__
              -> x__ {_EnvironmentInfo'MacOSPlatform'architecture = y__}))
        Prelude.id
instance Data.ProtoLens.Message EnvironmentInfo'MacOSPlatform where
  messageName _
    = Data.Text.pack
        "temporal.api.worker.v1.EnvironmentInfo.MacOSPlatform"
  packedMessageDescriptor _
    = "\n\
      \\rMacOSPlatform\DC2\CAN\n\
      \\aversion\CAN\SOH \SOH(\tR\aversion\DC2X\n\
      \\farchitecture\CAN\STX \SOH(\SO24.temporal.api.worker.v1.EnvironmentInfo.ArchitectureR\farchitecture"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentInfo'MacOSPlatform
        architecture__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "architecture"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor EnvironmentInfo'Architecture)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"architecture")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentInfo'MacOSPlatform
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, version__field_descriptor),
           (Data.ProtoLens.Tag 2, architecture__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EnvironmentInfo'MacOSPlatform'_unknownFields
        (\ x__ y__
           -> x__ {_EnvironmentInfo'MacOSPlatform'_unknownFields = y__})
  defMessage
    = EnvironmentInfo'MacOSPlatform'_constructor
        {_EnvironmentInfo'MacOSPlatform'version = Data.ProtoLens.fieldDefault,
         _EnvironmentInfo'MacOSPlatform'architecture = Data.ProtoLens.fieldDefault,
         _EnvironmentInfo'MacOSPlatform'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EnvironmentInfo'MacOSPlatform
          -> Data.ProtoLens.Encoding.Bytes.Parser EnvironmentInfo'MacOSPlatform
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
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "architecture"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"architecture") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MacOSPlatform"
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"architecture") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData EnvironmentInfo'MacOSPlatform where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EnvironmentInfo'MacOSPlatform'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EnvironmentInfo'MacOSPlatform'version x__)
                (Control.DeepSeq.deepseq
                   (_EnvironmentInfo'MacOSPlatform'architecture x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'variant' @:: Lens' EnvironmentInfo'Platform (Prelude.Maybe EnvironmentInfo'Platform'Variant)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'linux' @:: Lens' EnvironmentInfo'Platform (Prelude.Maybe EnvironmentInfo'LinuxPlatform)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.linux' @:: Lens' EnvironmentInfo'Platform EnvironmentInfo'LinuxPlatform@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'macos' @:: Lens' EnvironmentInfo'Platform (Prelude.Maybe EnvironmentInfo'MacOSPlatform)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.macos' @:: Lens' EnvironmentInfo'Platform EnvironmentInfo'MacOSPlatform@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'windows' @:: Lens' EnvironmentInfo'Platform (Prelude.Maybe EnvironmentInfo'WindowsPlatform)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.windows' @:: Lens' EnvironmentInfo'Platform EnvironmentInfo'WindowsPlatform@ -}
data EnvironmentInfo'Platform
  = EnvironmentInfo'Platform'_constructor {_EnvironmentInfo'Platform'variant :: !(Prelude.Maybe EnvironmentInfo'Platform'Variant),
                                           _EnvironmentInfo'Platform'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EnvironmentInfo'Platform where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data EnvironmentInfo'Platform'Variant
  = EnvironmentInfo'Platform'Linux !EnvironmentInfo'LinuxPlatform |
    EnvironmentInfo'Platform'Macos !EnvironmentInfo'MacOSPlatform |
    EnvironmentInfo'Platform'Windows !EnvironmentInfo'WindowsPlatform
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField EnvironmentInfo'Platform "maybe'variant" (Prelude.Maybe EnvironmentInfo'Platform'Variant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'Platform'variant
           (\ x__ y__ -> x__ {_EnvironmentInfo'Platform'variant = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EnvironmentInfo'Platform "maybe'linux" (Prelude.Maybe EnvironmentInfo'LinuxPlatform) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'Platform'variant
           (\ x__ y__ -> x__ {_EnvironmentInfo'Platform'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (EnvironmentInfo'Platform'Linux x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap EnvironmentInfo'Platform'Linux y__))
instance Data.ProtoLens.Field.HasField EnvironmentInfo'Platform "linux" EnvironmentInfo'LinuxPlatform where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'Platform'variant
           (\ x__ y__ -> x__ {_EnvironmentInfo'Platform'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (EnvironmentInfo'Platform'Linux x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap EnvironmentInfo'Platform'Linux y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField EnvironmentInfo'Platform "maybe'macos" (Prelude.Maybe EnvironmentInfo'MacOSPlatform) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'Platform'variant
           (\ x__ y__ -> x__ {_EnvironmentInfo'Platform'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (EnvironmentInfo'Platform'Macos x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap EnvironmentInfo'Platform'Macos y__))
instance Data.ProtoLens.Field.HasField EnvironmentInfo'Platform "macos" EnvironmentInfo'MacOSPlatform where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'Platform'variant
           (\ x__ y__ -> x__ {_EnvironmentInfo'Platform'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (EnvironmentInfo'Platform'Macos x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap EnvironmentInfo'Platform'Macos y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField EnvironmentInfo'Platform "maybe'windows" (Prelude.Maybe EnvironmentInfo'WindowsPlatform) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'Platform'variant
           (\ x__ y__ -> x__ {_EnvironmentInfo'Platform'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (EnvironmentInfo'Platform'Windows x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap EnvironmentInfo'Platform'Windows y__))
instance Data.ProtoLens.Field.HasField EnvironmentInfo'Platform "windows" EnvironmentInfo'WindowsPlatform where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'Platform'variant
           (\ x__ y__ -> x__ {_EnvironmentInfo'Platform'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (EnvironmentInfo'Platform'Windows x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap EnvironmentInfo'Platform'Windows y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message EnvironmentInfo'Platform where
  messageName _
    = Data.Text.pack "temporal.api.worker.v1.EnvironmentInfo.Platform"
  packedMessageDescriptor _
    = "\n\
      \\bPlatform\DC2M\n\
      \\ENQlinux\CAN\SOH \SOH(\v25.temporal.api.worker.v1.EnvironmentInfo.LinuxPlatformH\NULR\ENQlinux\DC2M\n\
      \\ENQmacos\CAN\STX \SOH(\v25.temporal.api.worker.v1.EnvironmentInfo.MacOSPlatformH\NULR\ENQmacos\DC2S\n\
      \\awindows\CAN\ETX \SOH(\v27.temporal.api.worker.v1.EnvironmentInfo.WindowsPlatformH\NULR\awindowsB\t\n\
      \\avariant"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        linux__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "linux"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EnvironmentInfo'LinuxPlatform)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'linux")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentInfo'Platform
        macos__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "macos"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EnvironmentInfo'MacOSPlatform)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'macos")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentInfo'Platform
        windows__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "windows"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EnvironmentInfo'WindowsPlatform)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'windows")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentInfo'Platform
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, linux__field_descriptor),
           (Data.ProtoLens.Tag 2, macos__field_descriptor),
           (Data.ProtoLens.Tag 3, windows__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EnvironmentInfo'Platform'_unknownFields
        (\ x__ y__ -> x__ {_EnvironmentInfo'Platform'_unknownFields = y__})
  defMessage
    = EnvironmentInfo'Platform'_constructor
        {_EnvironmentInfo'Platform'variant = Prelude.Nothing,
         _EnvironmentInfo'Platform'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EnvironmentInfo'Platform
          -> Data.ProtoLens.Encoding.Bytes.Parser EnvironmentInfo'Platform
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
                                       "linux"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"linux") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "macos"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"macos") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "windows"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"windows") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Platform"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'variant") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (EnvironmentInfo'Platform'Linux v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (EnvironmentInfo'Platform'Macos v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (EnvironmentInfo'Platform'Windows v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData EnvironmentInfo'Platform where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EnvironmentInfo'Platform'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EnvironmentInfo'Platform'variant x__) ())
instance Control.DeepSeq.NFData EnvironmentInfo'Platform'Variant where
  rnf (EnvironmentInfo'Platform'Linux x__) = Control.DeepSeq.rnf x__
  rnf (EnvironmentInfo'Platform'Macos x__) = Control.DeepSeq.rnf x__
  rnf (EnvironmentInfo'Platform'Windows x__)
    = Control.DeepSeq.rnf x__
_EnvironmentInfo'Platform'Linux ::
  Data.ProtoLens.Prism.Prism' EnvironmentInfo'Platform'Variant EnvironmentInfo'LinuxPlatform
_EnvironmentInfo'Platform'Linux
  = Data.ProtoLens.Prism.prism'
      EnvironmentInfo'Platform'Linux
      (\ p__
         -> case p__ of
              (EnvironmentInfo'Platform'Linux p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_EnvironmentInfo'Platform'Macos ::
  Data.ProtoLens.Prism.Prism' EnvironmentInfo'Platform'Variant EnvironmentInfo'MacOSPlatform
_EnvironmentInfo'Platform'Macos
  = Data.ProtoLens.Prism.prism'
      EnvironmentInfo'Platform'Macos
      (\ p__
         -> case p__ of
              (EnvironmentInfo'Platform'Macos p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_EnvironmentInfo'Platform'Windows ::
  Data.ProtoLens.Prism.Prism' EnvironmentInfo'Platform'Variant EnvironmentInfo'WindowsPlatform
_EnvironmentInfo'Platform'Windows
  = Data.ProtoLens.Prism.prism'
      EnvironmentInfo'Platform'Windows
      (\ p__
         -> case p__ of
              (EnvironmentInfo'Platform'Windows p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.type'' @:: Lens' EnvironmentInfo'Runtime EnvironmentInfo'Runtime'RuntimeType@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.version' @:: Lens' EnvironmentInfo'Runtime Data.Text.Text@ -}
data EnvironmentInfo'Runtime
  = EnvironmentInfo'Runtime'_constructor {_EnvironmentInfo'Runtime'type' :: !EnvironmentInfo'Runtime'RuntimeType,
                                          _EnvironmentInfo'Runtime'version :: !Data.Text.Text,
                                          _EnvironmentInfo'Runtime'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EnvironmentInfo'Runtime where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EnvironmentInfo'Runtime "type'" EnvironmentInfo'Runtime'RuntimeType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'Runtime'type'
           (\ x__ y__ -> x__ {_EnvironmentInfo'Runtime'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EnvironmentInfo'Runtime "version" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'Runtime'version
           (\ x__ y__ -> x__ {_EnvironmentInfo'Runtime'version = y__}))
        Prelude.id
instance Data.ProtoLens.Message EnvironmentInfo'Runtime where
  messageName _
    = Data.Text.pack "temporal.api.worker.v1.EnvironmentInfo.Runtime"
  packedMessageDescriptor _
    = "\n\
      \\aRuntime\DC2O\n\
      \\EOTtype\CAN\SOH \SOH(\SO2;.temporal.api.worker.v1.EnvironmentInfo.Runtime.RuntimeTypeR\EOTtype\DC2\CAN\n\
      \\aversion\CAN\STX \SOH(\tR\aversion\"\225\STX\n\
      \\vRuntimeType\DC2\FS\n\
      \\CANRUNTIME_TYPE_UNSPECIFIED\DLE\NUL\DC2\DC4\n\
      \\DLERUNTIME_TYPE_JVM\DLE\SOH\DC2\CAN\n\
      \\DC4RUNTIME_TYPE_CPYTHON\DLE\STX\DC2\NAK\n\
      \\DC1RUNTIME_TYPE_NODE\DLE\ETX\DC2\DC4\n\
      \\DLERUNTIME_TYPE_BUN\DLE\EOT\DC2\SYN\n\
      \\DC2RUNTIME_TYPE_CRUBY\DLE\ENQ\DC2\DC3\n\
      \\SIRUNTIME_TYPE_GO\DLE\ACK\DC2!\n\
      \\GSRUNTIME_TYPE_DOTNET_FRAMEWORK\DLE\a\DC2\FS\n\
      \\CANRUNTIME_TYPE_DOTNET_CORE\DLE\b\DC2\ETB\n\
      \\DC3RUNTIME_TYPE_NATIVE\DLE\t\DC2\ESC\n\
      \\ETBRUNTIME_TYPE_ROADRUNNER\DLE\n\
      \\DC2\SUB\n\
      \\SYNRUNTIME_TYPE_GRAAL_AOT\DLE\v\DC2\ETB\n\
      \\DC3RUNTIME_TYPE_KOTLIN\DLE\f"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor EnvironmentInfo'Runtime'RuntimeType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentInfo'Runtime
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentInfo'Runtime
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, version__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EnvironmentInfo'Runtime'_unknownFields
        (\ x__ y__ -> x__ {_EnvironmentInfo'Runtime'_unknownFields = y__})
  defMessage
    = EnvironmentInfo'Runtime'_constructor
        {_EnvironmentInfo'Runtime'type' = Data.ProtoLens.fieldDefault,
         _EnvironmentInfo'Runtime'version = Data.ProtoLens.fieldDefault,
         _EnvironmentInfo'Runtime'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EnvironmentInfo'Runtime
          -> Data.ProtoLens.Encoding.Bytes.Parser EnvironmentInfo'Runtime
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
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Runtime"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
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
instance Control.DeepSeq.NFData EnvironmentInfo'Runtime where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EnvironmentInfo'Runtime'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EnvironmentInfo'Runtime'type' x__)
                (Control.DeepSeq.deepseq
                   (_EnvironmentInfo'Runtime'version x__) ()))
newtype EnvironmentInfo'Runtime'RuntimeType'UnrecognizedValue
  = EnvironmentInfo'Runtime'RuntimeType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data EnvironmentInfo'Runtime'RuntimeType
  = EnvironmentInfo'Runtime'RUNTIME_TYPE_UNSPECIFIED |
    EnvironmentInfo'Runtime'RUNTIME_TYPE_JVM |
    EnvironmentInfo'Runtime'RUNTIME_TYPE_CPYTHON |
    EnvironmentInfo'Runtime'RUNTIME_TYPE_NODE |
    EnvironmentInfo'Runtime'RUNTIME_TYPE_BUN |
    EnvironmentInfo'Runtime'RUNTIME_TYPE_CRUBY |
    EnvironmentInfo'Runtime'RUNTIME_TYPE_GO |
    EnvironmentInfo'Runtime'RUNTIME_TYPE_DOTNET_FRAMEWORK |
    EnvironmentInfo'Runtime'RUNTIME_TYPE_DOTNET_CORE |
    EnvironmentInfo'Runtime'RUNTIME_TYPE_NATIVE |
    EnvironmentInfo'Runtime'RUNTIME_TYPE_ROADRUNNER |
    EnvironmentInfo'Runtime'RUNTIME_TYPE_GRAAL_AOT |
    EnvironmentInfo'Runtime'RUNTIME_TYPE_KOTLIN |
    EnvironmentInfo'Runtime'RuntimeType'Unrecognized !EnvironmentInfo'Runtime'RuntimeType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum EnvironmentInfo'Runtime'RuntimeType where
  maybeToEnum 0
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_JVM
  maybeToEnum 2
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_CPYTHON
  maybeToEnum 3
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_NODE
  maybeToEnum 4
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_BUN
  maybeToEnum 5
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_CRUBY
  maybeToEnum 6
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_GO
  maybeToEnum 7
    = Prelude.Just
        EnvironmentInfo'Runtime'RUNTIME_TYPE_DOTNET_FRAMEWORK
  maybeToEnum 8
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_DOTNET_CORE
  maybeToEnum 9
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_NATIVE
  maybeToEnum 10
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_ROADRUNNER
  maybeToEnum 11
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_GRAAL_AOT
  maybeToEnum 12
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_KOTLIN
  maybeToEnum k
    = Prelude.Just
        (EnvironmentInfo'Runtime'RuntimeType'Unrecognized
           (EnvironmentInfo'Runtime'RuntimeType'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_UNSPECIFIED
    = "RUNTIME_TYPE_UNSPECIFIED"
  showEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_JVM
    = "RUNTIME_TYPE_JVM"
  showEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_CPYTHON
    = "RUNTIME_TYPE_CPYTHON"
  showEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_NODE
    = "RUNTIME_TYPE_NODE"
  showEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_BUN
    = "RUNTIME_TYPE_BUN"
  showEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_CRUBY
    = "RUNTIME_TYPE_CRUBY"
  showEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_GO
    = "RUNTIME_TYPE_GO"
  showEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_DOTNET_FRAMEWORK
    = "RUNTIME_TYPE_DOTNET_FRAMEWORK"
  showEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_DOTNET_CORE
    = "RUNTIME_TYPE_DOTNET_CORE"
  showEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_NATIVE
    = "RUNTIME_TYPE_NATIVE"
  showEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_ROADRUNNER
    = "RUNTIME_TYPE_ROADRUNNER"
  showEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_GRAAL_AOT
    = "RUNTIME_TYPE_GRAAL_AOT"
  showEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_KOTLIN
    = "RUNTIME_TYPE_KOTLIN"
  showEnum
    (EnvironmentInfo'Runtime'RuntimeType'Unrecognized (EnvironmentInfo'Runtime'RuntimeType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "RUNTIME_TYPE_UNSPECIFIED"
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_UNSPECIFIED
    | (Prelude.==) k "RUNTIME_TYPE_JVM"
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_JVM
    | (Prelude.==) k "RUNTIME_TYPE_CPYTHON"
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_CPYTHON
    | (Prelude.==) k "RUNTIME_TYPE_NODE"
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_NODE
    | (Prelude.==) k "RUNTIME_TYPE_BUN"
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_BUN
    | (Prelude.==) k "RUNTIME_TYPE_CRUBY"
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_CRUBY
    | (Prelude.==) k "RUNTIME_TYPE_GO"
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_GO
    | (Prelude.==) k "RUNTIME_TYPE_DOTNET_FRAMEWORK"
    = Prelude.Just
        EnvironmentInfo'Runtime'RUNTIME_TYPE_DOTNET_FRAMEWORK
    | (Prelude.==) k "RUNTIME_TYPE_DOTNET_CORE"
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_DOTNET_CORE
    | (Prelude.==) k "RUNTIME_TYPE_NATIVE"
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_NATIVE
    | (Prelude.==) k "RUNTIME_TYPE_ROADRUNNER"
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_ROADRUNNER
    | (Prelude.==) k "RUNTIME_TYPE_GRAAL_AOT"
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_GRAAL_AOT
    | (Prelude.==) k "RUNTIME_TYPE_KOTLIN"
    = Prelude.Just EnvironmentInfo'Runtime'RUNTIME_TYPE_KOTLIN
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded EnvironmentInfo'Runtime'RuntimeType where
  minBound = EnvironmentInfo'Runtime'RUNTIME_TYPE_UNSPECIFIED
  maxBound = EnvironmentInfo'Runtime'RUNTIME_TYPE_KOTLIN
instance Prelude.Enum EnvironmentInfo'Runtime'RuntimeType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum RuntimeType: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_UNSPECIFIED = 0
  fromEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_JVM = 1
  fromEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_CPYTHON = 2
  fromEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_NODE = 3
  fromEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_BUN = 4
  fromEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_CRUBY = 5
  fromEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_GO = 6
  fromEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_DOTNET_FRAMEWORK = 7
  fromEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_DOTNET_CORE = 8
  fromEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_NATIVE = 9
  fromEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_ROADRUNNER = 10
  fromEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_GRAAL_AOT = 11
  fromEnum EnvironmentInfo'Runtime'RUNTIME_TYPE_KOTLIN = 12
  fromEnum
    (EnvironmentInfo'Runtime'RuntimeType'Unrecognized (EnvironmentInfo'Runtime'RuntimeType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ EnvironmentInfo'Runtime'RUNTIME_TYPE_KOTLIN
    = Prelude.error
        "EnvironmentInfo'Runtime'RuntimeType.succ: bad argument EnvironmentInfo'Runtime'RUNTIME_TYPE_KOTLIN. This value would be out of bounds."
  succ EnvironmentInfo'Runtime'RUNTIME_TYPE_UNSPECIFIED
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_JVM
  succ EnvironmentInfo'Runtime'RUNTIME_TYPE_JVM
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_CPYTHON
  succ EnvironmentInfo'Runtime'RUNTIME_TYPE_CPYTHON
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_NODE
  succ EnvironmentInfo'Runtime'RUNTIME_TYPE_NODE
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_BUN
  succ EnvironmentInfo'Runtime'RUNTIME_TYPE_BUN
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_CRUBY
  succ EnvironmentInfo'Runtime'RUNTIME_TYPE_CRUBY
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_GO
  succ EnvironmentInfo'Runtime'RUNTIME_TYPE_GO
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_DOTNET_FRAMEWORK
  succ EnvironmentInfo'Runtime'RUNTIME_TYPE_DOTNET_FRAMEWORK
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_DOTNET_CORE
  succ EnvironmentInfo'Runtime'RUNTIME_TYPE_DOTNET_CORE
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_NATIVE
  succ EnvironmentInfo'Runtime'RUNTIME_TYPE_NATIVE
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_ROADRUNNER
  succ EnvironmentInfo'Runtime'RUNTIME_TYPE_ROADRUNNER
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_GRAAL_AOT
  succ EnvironmentInfo'Runtime'RUNTIME_TYPE_GRAAL_AOT
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_KOTLIN
  succ (EnvironmentInfo'Runtime'RuntimeType'Unrecognized _)
    = Prelude.error
        "EnvironmentInfo'Runtime'RuntimeType.succ: bad argument: unrecognized value"
  pred EnvironmentInfo'Runtime'RUNTIME_TYPE_UNSPECIFIED
    = Prelude.error
        "EnvironmentInfo'Runtime'RuntimeType.pred: bad argument EnvironmentInfo'Runtime'RUNTIME_TYPE_UNSPECIFIED. This value would be out of bounds."
  pred EnvironmentInfo'Runtime'RUNTIME_TYPE_JVM
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_UNSPECIFIED
  pred EnvironmentInfo'Runtime'RUNTIME_TYPE_CPYTHON
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_JVM
  pred EnvironmentInfo'Runtime'RUNTIME_TYPE_NODE
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_CPYTHON
  pred EnvironmentInfo'Runtime'RUNTIME_TYPE_BUN
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_NODE
  pred EnvironmentInfo'Runtime'RUNTIME_TYPE_CRUBY
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_BUN
  pred EnvironmentInfo'Runtime'RUNTIME_TYPE_GO
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_CRUBY
  pred EnvironmentInfo'Runtime'RUNTIME_TYPE_DOTNET_FRAMEWORK
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_GO
  pred EnvironmentInfo'Runtime'RUNTIME_TYPE_DOTNET_CORE
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_DOTNET_FRAMEWORK
  pred EnvironmentInfo'Runtime'RUNTIME_TYPE_NATIVE
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_DOTNET_CORE
  pred EnvironmentInfo'Runtime'RUNTIME_TYPE_ROADRUNNER
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_NATIVE
  pred EnvironmentInfo'Runtime'RUNTIME_TYPE_GRAAL_AOT
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_ROADRUNNER
  pred EnvironmentInfo'Runtime'RUNTIME_TYPE_KOTLIN
    = EnvironmentInfo'Runtime'RUNTIME_TYPE_GRAAL_AOT
  pred (EnvironmentInfo'Runtime'RuntimeType'Unrecognized _)
    = Prelude.error
        "EnvironmentInfo'Runtime'RuntimeType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault EnvironmentInfo'Runtime'RuntimeType where
  fieldDefault = EnvironmentInfo'Runtime'RUNTIME_TYPE_UNSPECIFIED
instance Control.DeepSeq.NFData EnvironmentInfo'Runtime'RuntimeType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.version' @:: Lens' EnvironmentInfo'WindowsPlatform Data.Text.Text@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.architecture' @:: Lens' EnvironmentInfo'WindowsPlatform EnvironmentInfo'Architecture@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.crt' @:: Lens' EnvironmentInfo'WindowsPlatform EnvironmentInfo'WindowsPlatform'Crt@ -}
data EnvironmentInfo'WindowsPlatform
  = EnvironmentInfo'WindowsPlatform'_constructor {_EnvironmentInfo'WindowsPlatform'version :: !Data.Text.Text,
                                                  _EnvironmentInfo'WindowsPlatform'architecture :: !EnvironmentInfo'Architecture,
                                                  _EnvironmentInfo'WindowsPlatform'crt :: !EnvironmentInfo'WindowsPlatform'Crt,
                                                  _EnvironmentInfo'WindowsPlatform'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EnvironmentInfo'WindowsPlatform where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EnvironmentInfo'WindowsPlatform "version" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'WindowsPlatform'version
           (\ x__ y__
              -> x__ {_EnvironmentInfo'WindowsPlatform'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EnvironmentInfo'WindowsPlatform "architecture" EnvironmentInfo'Architecture where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'WindowsPlatform'architecture
           (\ x__ y__
              -> x__ {_EnvironmentInfo'WindowsPlatform'architecture = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EnvironmentInfo'WindowsPlatform "crt" EnvironmentInfo'WindowsPlatform'Crt where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvironmentInfo'WindowsPlatform'crt
           (\ x__ y__ -> x__ {_EnvironmentInfo'WindowsPlatform'crt = y__}))
        Prelude.id
instance Data.ProtoLens.Message EnvironmentInfo'WindowsPlatform where
  messageName _
    = Data.Text.pack
        "temporal.api.worker.v1.EnvironmentInfo.WindowsPlatform"
  packedMessageDescriptor _
    = "\n\
      \\SIWindowsPlatform\DC2\CAN\n\
      \\aversion\CAN\SOH \SOH(\tR\aversion\DC2X\n\
      \\farchitecture\CAN\STX \SOH(\SO24.temporal.api.worker.v1.EnvironmentInfo.ArchitectureR\farchitecture\DC2M\n\
      \\ETXcrt\CAN\ETX \SOH(\SO2;.temporal.api.worker.v1.EnvironmentInfo.WindowsPlatform.CrtR\ETXcrt\"W\n\
      \\ETXCrt\DC2\DC3\n\
      \\SICRT_UNSPECIFIED\DLE\NUL\DC2\f\n\
      \\bCRT_UCRT\DLE\SOH\DC2\SO\n\
      \\n\
      \CRT_MSVCRT\DLE\STX\DC2\r\n\
      \\tCRT_MINGW\DLE\ETX\DC2\SO\n\
      \\n\
      \CRT_CYGWIN\DLE\EOT"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentInfo'WindowsPlatform
        architecture__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "architecture"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor EnvironmentInfo'Architecture)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"architecture")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentInfo'WindowsPlatform
        crt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "crt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor EnvironmentInfo'WindowsPlatform'Crt)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"crt")) ::
              Data.ProtoLens.FieldDescriptor EnvironmentInfo'WindowsPlatform
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, version__field_descriptor),
           (Data.ProtoLens.Tag 2, architecture__field_descriptor),
           (Data.ProtoLens.Tag 3, crt__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EnvironmentInfo'WindowsPlatform'_unknownFields
        (\ x__ y__
           -> x__ {_EnvironmentInfo'WindowsPlatform'_unknownFields = y__})
  defMessage
    = EnvironmentInfo'WindowsPlatform'_constructor
        {_EnvironmentInfo'WindowsPlatform'version = Data.ProtoLens.fieldDefault,
         _EnvironmentInfo'WindowsPlatform'architecture = Data.ProtoLens.fieldDefault,
         _EnvironmentInfo'WindowsPlatform'crt = Data.ProtoLens.fieldDefault,
         _EnvironmentInfo'WindowsPlatform'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EnvironmentInfo'WindowsPlatform
          -> Data.ProtoLens.Encoding.Bytes.Parser EnvironmentInfo'WindowsPlatform
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
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "architecture"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"architecture") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "crt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"crt") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WindowsPlatform"
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"architecture") _x
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
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"crt") _x
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
instance Control.DeepSeq.NFData EnvironmentInfo'WindowsPlatform where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EnvironmentInfo'WindowsPlatform'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EnvironmentInfo'WindowsPlatform'version x__)
                (Control.DeepSeq.deepseq
                   (_EnvironmentInfo'WindowsPlatform'architecture x__)
                   (Control.DeepSeq.deepseq
                      (_EnvironmentInfo'WindowsPlatform'crt x__) ())))
newtype EnvironmentInfo'WindowsPlatform'Crt'UnrecognizedValue
  = EnvironmentInfo'WindowsPlatform'Crt'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data EnvironmentInfo'WindowsPlatform'Crt
  = EnvironmentInfo'WindowsPlatform'CRT_UNSPECIFIED |
    EnvironmentInfo'WindowsPlatform'CRT_UCRT |
    EnvironmentInfo'WindowsPlatform'CRT_MSVCRT |
    EnvironmentInfo'WindowsPlatform'CRT_MINGW |
    EnvironmentInfo'WindowsPlatform'CRT_CYGWIN |
    EnvironmentInfo'WindowsPlatform'Crt'Unrecognized !EnvironmentInfo'WindowsPlatform'Crt'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum EnvironmentInfo'WindowsPlatform'Crt where
  maybeToEnum 0
    = Prelude.Just EnvironmentInfo'WindowsPlatform'CRT_UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just EnvironmentInfo'WindowsPlatform'CRT_UCRT
  maybeToEnum 2
    = Prelude.Just EnvironmentInfo'WindowsPlatform'CRT_MSVCRT
  maybeToEnum 3
    = Prelude.Just EnvironmentInfo'WindowsPlatform'CRT_MINGW
  maybeToEnum 4
    = Prelude.Just EnvironmentInfo'WindowsPlatform'CRT_CYGWIN
  maybeToEnum k
    = Prelude.Just
        (EnvironmentInfo'WindowsPlatform'Crt'Unrecognized
           (EnvironmentInfo'WindowsPlatform'Crt'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum EnvironmentInfo'WindowsPlatform'CRT_UNSPECIFIED
    = "CRT_UNSPECIFIED"
  showEnum EnvironmentInfo'WindowsPlatform'CRT_UCRT = "CRT_UCRT"
  showEnum EnvironmentInfo'WindowsPlatform'CRT_MSVCRT = "CRT_MSVCRT"
  showEnum EnvironmentInfo'WindowsPlatform'CRT_MINGW = "CRT_MINGW"
  showEnum EnvironmentInfo'WindowsPlatform'CRT_CYGWIN = "CRT_CYGWIN"
  showEnum
    (EnvironmentInfo'WindowsPlatform'Crt'Unrecognized (EnvironmentInfo'WindowsPlatform'Crt'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "CRT_UNSPECIFIED"
    = Prelude.Just EnvironmentInfo'WindowsPlatform'CRT_UNSPECIFIED
    | (Prelude.==) k "CRT_UCRT"
    = Prelude.Just EnvironmentInfo'WindowsPlatform'CRT_UCRT
    | (Prelude.==) k "CRT_MSVCRT"
    = Prelude.Just EnvironmentInfo'WindowsPlatform'CRT_MSVCRT
    | (Prelude.==) k "CRT_MINGW"
    = Prelude.Just EnvironmentInfo'WindowsPlatform'CRT_MINGW
    | (Prelude.==) k "CRT_CYGWIN"
    = Prelude.Just EnvironmentInfo'WindowsPlatform'CRT_CYGWIN
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded EnvironmentInfo'WindowsPlatform'Crt where
  minBound = EnvironmentInfo'WindowsPlatform'CRT_UNSPECIFIED
  maxBound = EnvironmentInfo'WindowsPlatform'CRT_CYGWIN
instance Prelude.Enum EnvironmentInfo'WindowsPlatform'Crt where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Crt: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum EnvironmentInfo'WindowsPlatform'CRT_UNSPECIFIED = 0
  fromEnum EnvironmentInfo'WindowsPlatform'CRT_UCRT = 1
  fromEnum EnvironmentInfo'WindowsPlatform'CRT_MSVCRT = 2
  fromEnum EnvironmentInfo'WindowsPlatform'CRT_MINGW = 3
  fromEnum EnvironmentInfo'WindowsPlatform'CRT_CYGWIN = 4
  fromEnum
    (EnvironmentInfo'WindowsPlatform'Crt'Unrecognized (EnvironmentInfo'WindowsPlatform'Crt'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ EnvironmentInfo'WindowsPlatform'CRT_CYGWIN
    = Prelude.error
        "EnvironmentInfo'WindowsPlatform'Crt.succ: bad argument EnvironmentInfo'WindowsPlatform'CRT_CYGWIN. This value would be out of bounds."
  succ EnvironmentInfo'WindowsPlatform'CRT_UNSPECIFIED
    = EnvironmentInfo'WindowsPlatform'CRT_UCRT
  succ EnvironmentInfo'WindowsPlatform'CRT_UCRT
    = EnvironmentInfo'WindowsPlatform'CRT_MSVCRT
  succ EnvironmentInfo'WindowsPlatform'CRT_MSVCRT
    = EnvironmentInfo'WindowsPlatform'CRT_MINGW
  succ EnvironmentInfo'WindowsPlatform'CRT_MINGW
    = EnvironmentInfo'WindowsPlatform'CRT_CYGWIN
  succ (EnvironmentInfo'WindowsPlatform'Crt'Unrecognized _)
    = Prelude.error
        "EnvironmentInfo'WindowsPlatform'Crt.succ: bad argument: unrecognized value"
  pred EnvironmentInfo'WindowsPlatform'CRT_UNSPECIFIED
    = Prelude.error
        "EnvironmentInfo'WindowsPlatform'Crt.pred: bad argument EnvironmentInfo'WindowsPlatform'CRT_UNSPECIFIED. This value would be out of bounds."
  pred EnvironmentInfo'WindowsPlatform'CRT_UCRT
    = EnvironmentInfo'WindowsPlatform'CRT_UNSPECIFIED
  pred EnvironmentInfo'WindowsPlatform'CRT_MSVCRT
    = EnvironmentInfo'WindowsPlatform'CRT_UCRT
  pred EnvironmentInfo'WindowsPlatform'CRT_MINGW
    = EnvironmentInfo'WindowsPlatform'CRT_MSVCRT
  pred EnvironmentInfo'WindowsPlatform'CRT_CYGWIN
    = EnvironmentInfo'WindowsPlatform'CRT_MINGW
  pred (EnvironmentInfo'WindowsPlatform'Crt'Unrecognized _)
    = Prelude.error
        "EnvironmentInfo'WindowsPlatform'Crt.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault EnvironmentInfo'WindowsPlatform'Crt where
  fieldDefault = EnvironmentInfo'WindowsPlatform'CRT_UNSPECIFIED
instance Control.DeepSeq.NFData EnvironmentInfo'WindowsPlatform'Crt where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.name' @:: Lens' PluginInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.version' @:: Lens' PluginInfo Data.Text.Text@ -}
data PluginInfo
  = PluginInfo'_constructor {_PluginInfo'name :: !Data.Text.Text,
                             _PluginInfo'version :: !Data.Text.Text,
                             _PluginInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PluginInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PluginInfo "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginInfo'name (\ x__ y__ -> x__ {_PluginInfo'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PluginInfo "version" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginInfo'version (\ x__ y__ -> x__ {_PluginInfo'version = y__}))
        Prelude.id
instance Data.ProtoLens.Message PluginInfo where
  messageName _ = Data.Text.pack "temporal.api.worker.v1.PluginInfo"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \PluginInfo\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\CAN\n\
      \\aversion\CAN\STX \SOH(\tR\aversion"
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
              Data.ProtoLens.FieldDescriptor PluginInfo
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor PluginInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, version__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PluginInfo'_unknownFields
        (\ x__ y__ -> x__ {_PluginInfo'_unknownFields = y__})
  defMessage
    = PluginInfo'_constructor
        {_PluginInfo'name = Data.ProtoLens.fieldDefault,
         _PluginInfo'version = Data.ProtoLens.fieldDefault,
         _PluginInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PluginInfo -> Data.ProtoLens.Encoding.Bytes.Parser PluginInfo
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
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PluginInfo"
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
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
instance Control.DeepSeq.NFData PluginInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PluginInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PluginInfo'name x__)
                (Control.DeepSeq.deepseq (_PluginInfo'version x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.type'' @:: Lens' StorageDriverInfo Data.Text.Text@ -}
data StorageDriverInfo
  = StorageDriverInfo'_constructor {_StorageDriverInfo'type' :: !Data.Text.Text,
                                    _StorageDriverInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StorageDriverInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StorageDriverInfo "type'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StorageDriverInfo'type'
           (\ x__ y__ -> x__ {_StorageDriverInfo'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Message StorageDriverInfo where
  messageName _
    = Data.Text.pack "temporal.api.worker.v1.StorageDriverInfo"
  packedMessageDescriptor _
    = "\n\
      \\DC1StorageDriverInfo\DC2\DC2\n\
      \\EOTtype\CAN\SOH \SOH(\tR\EOTtype"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor StorageDriverInfo
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, type'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StorageDriverInfo'_unknownFields
        (\ x__ y__ -> x__ {_StorageDriverInfo'_unknownFields = y__})
  defMessage
    = StorageDriverInfo'_constructor
        {_StorageDriverInfo'type' = Data.ProtoLens.fieldDefault,
         _StorageDriverInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StorageDriverInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser StorageDriverInfo
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
          (do loop Data.ProtoLens.defMessage) "StorageDriverInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
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
instance Control.DeepSeq.NFData StorageDriverInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StorageDriverInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq (_StorageDriverInfo'type' x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'type'' @:: Lens' WorkerCommand (Prelude.Maybe WorkerCommand'Type)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'cancelActivity' @:: Lens' WorkerCommand (Prelude.Maybe CancelActivityCommand)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.cancelActivity' @:: Lens' WorkerCommand CancelActivityCommand@ -}
data WorkerCommand
  = WorkerCommand'_constructor {_WorkerCommand'type' :: !(Prelude.Maybe WorkerCommand'Type),
                                _WorkerCommand'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkerCommand where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data WorkerCommand'Type
  = WorkerCommand'CancelActivity !CancelActivityCommand
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField WorkerCommand "maybe'type'" (Prelude.Maybe WorkerCommand'Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerCommand'type'
           (\ x__ y__ -> x__ {_WorkerCommand'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerCommand "maybe'cancelActivity" (Prelude.Maybe CancelActivityCommand) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerCommand'type'
           (\ x__ y__ -> x__ {_WorkerCommand'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkerCommand'CancelActivity x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap WorkerCommand'CancelActivity y__))
instance Data.ProtoLens.Field.HasField WorkerCommand "cancelActivity" CancelActivityCommand where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerCommand'type'
           (\ x__ y__ -> x__ {_WorkerCommand'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkerCommand'CancelActivity x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap WorkerCommand'CancelActivity y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message WorkerCommand where
  messageName _
    = Data.Text.pack "temporal.api.worker.v1.WorkerCommand"
  packedMessageDescriptor _
    = "\n\
      \\rWorkerCommand\DC2X\n\
      \\SIcancel_activity\CAN\SOH \SOH(\v2-.temporal.api.worker.v1.CancelActivityCommandH\NULR\SOcancelActivityB\ACK\n\
      \\EOTtype"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cancelActivity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancel_activity"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CancelActivityCommand)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cancelActivity")) ::
              Data.ProtoLens.FieldDescriptor WorkerCommand
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cancelActivity__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkerCommand'_unknownFields
        (\ x__ y__ -> x__ {_WorkerCommand'_unknownFields = y__})
  defMessage
    = WorkerCommand'_constructor
        {_WorkerCommand'type' = Prelude.Nothing,
         _WorkerCommand'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkerCommand -> Data.ProtoLens.Encoding.Bytes.Parser WorkerCommand
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
                                       "cancel_activity"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cancelActivity") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WorkerCommand"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (WorkerCommand'CancelActivity v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData WorkerCommand where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkerCommand'_unknownFields x__)
             (Control.DeepSeq.deepseq (_WorkerCommand'type' x__) ())
instance Control.DeepSeq.NFData WorkerCommand'Type where
  rnf (WorkerCommand'CancelActivity x__) = Control.DeepSeq.rnf x__
_WorkerCommand'CancelActivity ::
  Data.ProtoLens.Prism.Prism' WorkerCommand'Type CancelActivityCommand
_WorkerCommand'CancelActivity
  = Data.ProtoLens.Prism.prism'
      WorkerCommand'CancelActivity
      (\ p__
         -> case p__ of
              (WorkerCommand'CancelActivity p__val) -> Prelude.Just p__val)
{- | Fields :
     
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'type'' @:: Lens' WorkerCommandResult (Prelude.Maybe WorkerCommandResult'Type)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'cancelActivity' @:: Lens' WorkerCommandResult (Prelude.Maybe CancelActivityResult)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.cancelActivity' @:: Lens' WorkerCommandResult CancelActivityResult@ -}
data WorkerCommandResult
  = WorkerCommandResult'_constructor {_WorkerCommandResult'type' :: !(Prelude.Maybe WorkerCommandResult'Type),
                                      _WorkerCommandResult'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkerCommandResult where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data WorkerCommandResult'Type
  = WorkerCommandResult'CancelActivity !CancelActivityResult
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField WorkerCommandResult "maybe'type'" (Prelude.Maybe WorkerCommandResult'Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerCommandResult'type'
           (\ x__ y__ -> x__ {_WorkerCommandResult'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerCommandResult "maybe'cancelActivity" (Prelude.Maybe CancelActivityResult) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerCommandResult'type'
           (\ x__ y__ -> x__ {_WorkerCommandResult'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (WorkerCommandResult'CancelActivity x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap WorkerCommandResult'CancelActivity y__))
instance Data.ProtoLens.Field.HasField WorkerCommandResult "cancelActivity" CancelActivityResult where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerCommandResult'type'
           (\ x__ y__ -> x__ {_WorkerCommandResult'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (WorkerCommandResult'CancelActivity x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap WorkerCommandResult'CancelActivity y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message WorkerCommandResult where
  messageName _
    = Data.Text.pack "temporal.api.worker.v1.WorkerCommandResult"
  packedMessageDescriptor _
    = "\n\
      \\DC3WorkerCommandResult\DC2W\n\
      \\SIcancel_activity\CAN\SOH \SOH(\v2,.temporal.api.worker.v1.CancelActivityResultH\NULR\SOcancelActivityB\ACK\n\
      \\EOTtype"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cancelActivity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancel_activity"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CancelActivityResult)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cancelActivity")) ::
              Data.ProtoLens.FieldDescriptor WorkerCommandResult
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cancelActivity__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkerCommandResult'_unknownFields
        (\ x__ y__ -> x__ {_WorkerCommandResult'_unknownFields = y__})
  defMessage
    = WorkerCommandResult'_constructor
        {_WorkerCommandResult'type' = Prelude.Nothing,
         _WorkerCommandResult'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkerCommandResult
          -> Data.ProtoLens.Encoding.Bytes.Parser WorkerCommandResult
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
                                       "cancel_activity"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cancelActivity") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WorkerCommandResult"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (WorkerCommandResult'CancelActivity v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData WorkerCommandResult where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkerCommandResult'_unknownFields x__)
             (Control.DeepSeq.deepseq (_WorkerCommandResult'type' x__) ())
instance Control.DeepSeq.NFData WorkerCommandResult'Type where
  rnf (WorkerCommandResult'CancelActivity x__)
    = Control.DeepSeq.rnf x__
_WorkerCommandResult'CancelActivity ::
  Data.ProtoLens.Prism.Prism' WorkerCommandResult'Type CancelActivityResult
_WorkerCommandResult'CancelActivity
  = Data.ProtoLens.Prism.prism'
      WorkerCommandResult'CancelActivity
      (\ p__
         -> case p__ of
              (WorkerCommandResult'CancelActivity p__val) -> Prelude.Just p__val)
{- | Fields :
     
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.workerInstanceKey' @:: Lens' WorkerHeartbeat Data.Text.Text@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.workerIdentity' @:: Lens' WorkerHeartbeat Data.Text.Text@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.hostInfo' @:: Lens' WorkerHeartbeat WorkerHostInfo@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'hostInfo' @:: Lens' WorkerHeartbeat (Prelude.Maybe WorkerHostInfo)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.taskQueue' @:: Lens' WorkerHeartbeat Data.Text.Text@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.deploymentVersion' @:: Lens' WorkerHeartbeat Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'deploymentVersion' @:: Lens' WorkerHeartbeat (Prelude.Maybe Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.sdkName' @:: Lens' WorkerHeartbeat Data.Text.Text@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.sdkVersion' @:: Lens' WorkerHeartbeat Data.Text.Text@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.status' @:: Lens' WorkerHeartbeat Proto.Temporal.Api.Enums.V1.Common.WorkerStatus@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.startTime' @:: Lens' WorkerHeartbeat Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'startTime' @:: Lens' WorkerHeartbeat (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.heartbeatTime' @:: Lens' WorkerHeartbeat Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'heartbeatTime' @:: Lens' WorkerHeartbeat (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.elapsedSinceLastHeartbeat' @:: Lens' WorkerHeartbeat Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'elapsedSinceLastHeartbeat' @:: Lens' WorkerHeartbeat (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.workflowTaskSlotsInfo' @:: Lens' WorkerHeartbeat WorkerSlotsInfo@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'workflowTaskSlotsInfo' @:: Lens' WorkerHeartbeat (Prelude.Maybe WorkerSlotsInfo)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.activityTaskSlotsInfo' @:: Lens' WorkerHeartbeat WorkerSlotsInfo@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'activityTaskSlotsInfo' @:: Lens' WorkerHeartbeat (Prelude.Maybe WorkerSlotsInfo)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.nexusTaskSlotsInfo' @:: Lens' WorkerHeartbeat WorkerSlotsInfo@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'nexusTaskSlotsInfo' @:: Lens' WorkerHeartbeat (Prelude.Maybe WorkerSlotsInfo)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.localActivitySlotsInfo' @:: Lens' WorkerHeartbeat WorkerSlotsInfo@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'localActivitySlotsInfo' @:: Lens' WorkerHeartbeat (Prelude.Maybe WorkerSlotsInfo)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.workflowPollerInfo' @:: Lens' WorkerHeartbeat WorkerPollerInfo@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'workflowPollerInfo' @:: Lens' WorkerHeartbeat (Prelude.Maybe WorkerPollerInfo)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.workflowStickyPollerInfo' @:: Lens' WorkerHeartbeat WorkerPollerInfo@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'workflowStickyPollerInfo' @:: Lens' WorkerHeartbeat (Prelude.Maybe WorkerPollerInfo)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.activityPollerInfo' @:: Lens' WorkerHeartbeat WorkerPollerInfo@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'activityPollerInfo' @:: Lens' WorkerHeartbeat (Prelude.Maybe WorkerPollerInfo)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.nexusPollerInfo' @:: Lens' WorkerHeartbeat WorkerPollerInfo@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'nexusPollerInfo' @:: Lens' WorkerHeartbeat (Prelude.Maybe WorkerPollerInfo)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.totalStickyCacheHit' @:: Lens' WorkerHeartbeat Data.Int.Int32@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.totalStickyCacheMiss' @:: Lens' WorkerHeartbeat Data.Int.Int32@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.currentStickyCacheSize' @:: Lens' WorkerHeartbeat Data.Int.Int32@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.plugins' @:: Lens' WorkerHeartbeat [PluginInfo]@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.vec'plugins' @:: Lens' WorkerHeartbeat (Data.Vector.Vector PluginInfo)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.drivers' @:: Lens' WorkerHeartbeat [StorageDriverInfo]@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.vec'drivers' @:: Lens' WorkerHeartbeat (Data.Vector.Vector StorageDriverInfo)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.environment' @:: Lens' WorkerHeartbeat EnvironmentInfo@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'environment' @:: Lens' WorkerHeartbeat (Prelude.Maybe EnvironmentInfo)@ -}
data WorkerHeartbeat
  = WorkerHeartbeat'_constructor {_WorkerHeartbeat'workerInstanceKey :: !Data.Text.Text,
                                  _WorkerHeartbeat'workerIdentity :: !Data.Text.Text,
                                  _WorkerHeartbeat'hostInfo :: !(Prelude.Maybe WorkerHostInfo),
                                  _WorkerHeartbeat'taskQueue :: !Data.Text.Text,
                                  _WorkerHeartbeat'deploymentVersion :: !(Prelude.Maybe Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion),
                                  _WorkerHeartbeat'sdkName :: !Data.Text.Text,
                                  _WorkerHeartbeat'sdkVersion :: !Data.Text.Text,
                                  _WorkerHeartbeat'status :: !Proto.Temporal.Api.Enums.V1.Common.WorkerStatus,
                                  _WorkerHeartbeat'startTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                  _WorkerHeartbeat'heartbeatTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                  _WorkerHeartbeat'elapsedSinceLastHeartbeat :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _WorkerHeartbeat'workflowTaskSlotsInfo :: !(Prelude.Maybe WorkerSlotsInfo),
                                  _WorkerHeartbeat'activityTaskSlotsInfo :: !(Prelude.Maybe WorkerSlotsInfo),
                                  _WorkerHeartbeat'nexusTaskSlotsInfo :: !(Prelude.Maybe WorkerSlotsInfo),
                                  _WorkerHeartbeat'localActivitySlotsInfo :: !(Prelude.Maybe WorkerSlotsInfo),
                                  _WorkerHeartbeat'workflowPollerInfo :: !(Prelude.Maybe WorkerPollerInfo),
                                  _WorkerHeartbeat'workflowStickyPollerInfo :: !(Prelude.Maybe WorkerPollerInfo),
                                  _WorkerHeartbeat'activityPollerInfo :: !(Prelude.Maybe WorkerPollerInfo),
                                  _WorkerHeartbeat'nexusPollerInfo :: !(Prelude.Maybe WorkerPollerInfo),
                                  _WorkerHeartbeat'totalStickyCacheHit :: !Data.Int.Int32,
                                  _WorkerHeartbeat'totalStickyCacheMiss :: !Data.Int.Int32,
                                  _WorkerHeartbeat'currentStickyCacheSize :: !Data.Int.Int32,
                                  _WorkerHeartbeat'plugins :: !(Data.Vector.Vector PluginInfo),
                                  _WorkerHeartbeat'drivers :: !(Data.Vector.Vector StorageDriverInfo),
                                  _WorkerHeartbeat'environment :: !(Prelude.Maybe EnvironmentInfo),
                                  _WorkerHeartbeat'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkerHeartbeat where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "workerInstanceKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'workerInstanceKey
           (\ x__ y__ -> x__ {_WorkerHeartbeat'workerInstanceKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "workerIdentity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'workerIdentity
           (\ x__ y__ -> x__ {_WorkerHeartbeat'workerIdentity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "hostInfo" WorkerHostInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'hostInfo
           (\ x__ y__ -> x__ {_WorkerHeartbeat'hostInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "maybe'hostInfo" (Prelude.Maybe WorkerHostInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'hostInfo
           (\ x__ y__ -> x__ {_WorkerHeartbeat'hostInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "taskQueue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'taskQueue
           (\ x__ y__ -> x__ {_WorkerHeartbeat'taskQueue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "deploymentVersion" Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'deploymentVersion
           (\ x__ y__ -> x__ {_WorkerHeartbeat'deploymentVersion = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "maybe'deploymentVersion" (Prelude.Maybe Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'deploymentVersion
           (\ x__ y__ -> x__ {_WorkerHeartbeat'deploymentVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "sdkName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'sdkName
           (\ x__ y__ -> x__ {_WorkerHeartbeat'sdkName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "sdkVersion" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'sdkVersion
           (\ x__ y__ -> x__ {_WorkerHeartbeat'sdkVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "status" Proto.Temporal.Api.Enums.V1.Common.WorkerStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'status
           (\ x__ y__ -> x__ {_WorkerHeartbeat'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "startTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'startTime
           (\ x__ y__ -> x__ {_WorkerHeartbeat'startTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "maybe'startTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'startTime
           (\ x__ y__ -> x__ {_WorkerHeartbeat'startTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "heartbeatTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'heartbeatTime
           (\ x__ y__ -> x__ {_WorkerHeartbeat'heartbeatTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "maybe'heartbeatTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'heartbeatTime
           (\ x__ y__ -> x__ {_WorkerHeartbeat'heartbeatTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "elapsedSinceLastHeartbeat" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'elapsedSinceLastHeartbeat
           (\ x__ y__
              -> x__ {_WorkerHeartbeat'elapsedSinceLastHeartbeat = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "maybe'elapsedSinceLastHeartbeat" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'elapsedSinceLastHeartbeat
           (\ x__ y__
              -> x__ {_WorkerHeartbeat'elapsedSinceLastHeartbeat = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "workflowTaskSlotsInfo" WorkerSlotsInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'workflowTaskSlotsInfo
           (\ x__ y__ -> x__ {_WorkerHeartbeat'workflowTaskSlotsInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "maybe'workflowTaskSlotsInfo" (Prelude.Maybe WorkerSlotsInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'workflowTaskSlotsInfo
           (\ x__ y__ -> x__ {_WorkerHeartbeat'workflowTaskSlotsInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "activityTaskSlotsInfo" WorkerSlotsInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'activityTaskSlotsInfo
           (\ x__ y__ -> x__ {_WorkerHeartbeat'activityTaskSlotsInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "maybe'activityTaskSlotsInfo" (Prelude.Maybe WorkerSlotsInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'activityTaskSlotsInfo
           (\ x__ y__ -> x__ {_WorkerHeartbeat'activityTaskSlotsInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "nexusTaskSlotsInfo" WorkerSlotsInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'nexusTaskSlotsInfo
           (\ x__ y__ -> x__ {_WorkerHeartbeat'nexusTaskSlotsInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "maybe'nexusTaskSlotsInfo" (Prelude.Maybe WorkerSlotsInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'nexusTaskSlotsInfo
           (\ x__ y__ -> x__ {_WorkerHeartbeat'nexusTaskSlotsInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "localActivitySlotsInfo" WorkerSlotsInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'localActivitySlotsInfo
           (\ x__ y__ -> x__ {_WorkerHeartbeat'localActivitySlotsInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "maybe'localActivitySlotsInfo" (Prelude.Maybe WorkerSlotsInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'localActivitySlotsInfo
           (\ x__ y__ -> x__ {_WorkerHeartbeat'localActivitySlotsInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "workflowPollerInfo" WorkerPollerInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'workflowPollerInfo
           (\ x__ y__ -> x__ {_WorkerHeartbeat'workflowPollerInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "maybe'workflowPollerInfo" (Prelude.Maybe WorkerPollerInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'workflowPollerInfo
           (\ x__ y__ -> x__ {_WorkerHeartbeat'workflowPollerInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "workflowStickyPollerInfo" WorkerPollerInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'workflowStickyPollerInfo
           (\ x__ y__
              -> x__ {_WorkerHeartbeat'workflowStickyPollerInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "maybe'workflowStickyPollerInfo" (Prelude.Maybe WorkerPollerInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'workflowStickyPollerInfo
           (\ x__ y__
              -> x__ {_WorkerHeartbeat'workflowStickyPollerInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "activityPollerInfo" WorkerPollerInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'activityPollerInfo
           (\ x__ y__ -> x__ {_WorkerHeartbeat'activityPollerInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "maybe'activityPollerInfo" (Prelude.Maybe WorkerPollerInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'activityPollerInfo
           (\ x__ y__ -> x__ {_WorkerHeartbeat'activityPollerInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "nexusPollerInfo" WorkerPollerInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'nexusPollerInfo
           (\ x__ y__ -> x__ {_WorkerHeartbeat'nexusPollerInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "maybe'nexusPollerInfo" (Prelude.Maybe WorkerPollerInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'nexusPollerInfo
           (\ x__ y__ -> x__ {_WorkerHeartbeat'nexusPollerInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "totalStickyCacheHit" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'totalStickyCacheHit
           (\ x__ y__ -> x__ {_WorkerHeartbeat'totalStickyCacheHit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "totalStickyCacheMiss" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'totalStickyCacheMiss
           (\ x__ y__ -> x__ {_WorkerHeartbeat'totalStickyCacheMiss = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "currentStickyCacheSize" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'currentStickyCacheSize
           (\ x__ y__ -> x__ {_WorkerHeartbeat'currentStickyCacheSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "plugins" [PluginInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'plugins
           (\ x__ y__ -> x__ {_WorkerHeartbeat'plugins = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "vec'plugins" (Data.Vector.Vector PluginInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'plugins
           (\ x__ y__ -> x__ {_WorkerHeartbeat'plugins = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "drivers" [StorageDriverInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'drivers
           (\ x__ y__ -> x__ {_WorkerHeartbeat'drivers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "vec'drivers" (Data.Vector.Vector StorageDriverInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'drivers
           (\ x__ y__ -> x__ {_WorkerHeartbeat'drivers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "environment" EnvironmentInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'environment
           (\ x__ y__ -> x__ {_WorkerHeartbeat'environment = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerHeartbeat "maybe'environment" (Prelude.Maybe EnvironmentInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHeartbeat'environment
           (\ x__ y__ -> x__ {_WorkerHeartbeat'environment = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkerHeartbeat where
  messageName _
    = Data.Text.pack "temporal.api.worker.v1.WorkerHeartbeat"
  packedMessageDescriptor _
    = "\n\
      \\SIWorkerHeartbeat\DC2.\n\
      \\DC3worker_instance_key\CAN\SOH \SOH(\tR\DC1workerInstanceKey\DC2'\n\
      \\SIworker_identity\CAN\STX \SOH(\tR\SOworkerIdentity\DC2C\n\
      \\thost_info\CAN\ETX \SOH(\v2&.temporal.api.worker.v1.WorkerHostInfoR\bhostInfo\DC2\GS\n\
      \\n\
      \task_queue\CAN\EOT \SOH(\tR\ttaskQueue\DC2b\n\
      \\DC2deployment_version\CAN\ENQ \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\DC1deploymentVersion\DC2\EM\n\
      \\bsdk_name\CAN\ACK \SOH(\tR\asdkName\DC2\US\n\
      \\vsdk_version\CAN\a \SOH(\tR\n\
      \sdkVersion\DC2;\n\
      \\ACKstatus\CAN\b \SOH(\SO2#.temporal.api.enums.v1.WorkerStatusR\ACKstatus\DC29\n\
      \\n\
      \start_time\CAN\t \SOH(\v2\SUB.google.protobuf.TimestampR\tstartTime\DC2A\n\
      \\SOheartbeat_time\CAN\n\
      \ \SOH(\v2\SUB.google.protobuf.TimestampR\rheartbeatTime\DC2Z\n\
      \\FSelapsed_since_last_heartbeat\CAN\v \SOH(\v2\EM.google.protobuf.DurationR\EMelapsedSinceLastHeartbeat\DC2`\n\
      \\CANworkflow_task_slots_info\CAN\f \SOH(\v2'.temporal.api.worker.v1.WorkerSlotsInfoR\NAKworkflowTaskSlotsInfo\DC2`\n\
      \\CANactivity_task_slots_info\CAN\r \SOH(\v2'.temporal.api.worker.v1.WorkerSlotsInfoR\NAKactivityTaskSlotsInfo\DC2Z\n\
      \\NAKnexus_task_slots_info\CAN\SO \SOH(\v2'.temporal.api.worker.v1.WorkerSlotsInfoR\DC2nexusTaskSlotsInfo\DC2b\n\
      \\EMlocal_activity_slots_info\CAN\SI \SOH(\v2'.temporal.api.worker.v1.WorkerSlotsInfoR\SYNlocalActivitySlotsInfo\DC2Z\n\
      \\DC4workflow_poller_info\CAN\DLE \SOH(\v2(.temporal.api.worker.v1.WorkerPollerInfoR\DC2workflowPollerInfo\DC2g\n\
      \\ESCworkflow_sticky_poller_info\CAN\DC1 \SOH(\v2(.temporal.api.worker.v1.WorkerPollerInfoR\CANworkflowStickyPollerInfo\DC2Z\n\
      \\DC4activity_poller_info\CAN\DC2 \SOH(\v2(.temporal.api.worker.v1.WorkerPollerInfoR\DC2activityPollerInfo\DC2T\n\
      \\DC1nexus_poller_info\CAN\DC3 \SOH(\v2(.temporal.api.worker.v1.WorkerPollerInfoR\SInexusPollerInfo\DC23\n\
      \\SYNtotal_sticky_cache_hit\CAN\DC4 \SOH(\ENQR\DC3totalStickyCacheHit\DC25\n\
      \\ETBtotal_sticky_cache_miss\CAN\NAK \SOH(\ENQR\DC4totalStickyCacheMiss\DC29\n\
      \\EMcurrent_sticky_cache_size\CAN\SYN \SOH(\ENQR\SYNcurrentStickyCacheSize\DC2<\n\
      \\aplugins\CAN\ETB \ETX(\v2\".temporal.api.worker.v1.PluginInfoR\aplugins\DC2C\n\
      \\adrivers\CAN\CAN \ETX(\v2).temporal.api.worker.v1.StorageDriverInfoR\adrivers\DC2I\n\
      \\venvironment\CAN\EM \SOH(\v2'.temporal.api.worker.v1.EnvironmentInfoR\venvironment"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        workerInstanceKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "worker_instance_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workerInstanceKey")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        workerIdentity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "worker_identity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workerIdentity")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        hostInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "host_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WorkerHostInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hostInfo")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        taskQueue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"taskQueue")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        deploymentVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deployment_version"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'deploymentVersion")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        sdkName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sdk_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"sdkName")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        sdkVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sdk_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sdkVersion")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Common.WorkerStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        startTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startTime")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        heartbeatTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heartbeat_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heartbeatTime")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        elapsedSinceLastHeartbeat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "elapsed_since_last_heartbeat"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'elapsedSinceLastHeartbeat")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        workflowTaskSlotsInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_task_slots_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WorkerSlotsInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowTaskSlotsInfo")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        activityTaskSlotsInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_task_slots_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WorkerSlotsInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'activityTaskSlotsInfo")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        nexusTaskSlotsInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nexus_task_slots_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WorkerSlotsInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nexusTaskSlotsInfo")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        localActivitySlotsInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "local_activity_slots_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WorkerSlotsInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'localActivitySlotsInfo")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        workflowPollerInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_poller_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WorkerPollerInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowPollerInfo")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        workflowStickyPollerInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workflow_sticky_poller_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WorkerPollerInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workflowStickyPollerInfo")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        activityPollerInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_poller_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WorkerPollerInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'activityPollerInfo")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        nexusPollerInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nexus_poller_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WorkerPollerInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nexusPollerInfo")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        totalStickyCacheHit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_sticky_cache_hit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalStickyCacheHit")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        totalStickyCacheMiss__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_sticky_cache_miss"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalStickyCacheMiss")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        currentStickyCacheSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_sticky_cache_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"currentStickyCacheSize")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        plugins__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "plugins"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PluginInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"plugins")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        drivers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "drivers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StorageDriverInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"drivers")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
        environment__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "environment"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EnvironmentInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'environment")) ::
              Data.ProtoLens.FieldDescriptor WorkerHeartbeat
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, workerInstanceKey__field_descriptor),
           (Data.ProtoLens.Tag 2, workerIdentity__field_descriptor),
           (Data.ProtoLens.Tag 3, hostInfo__field_descriptor),
           (Data.ProtoLens.Tag 4, taskQueue__field_descriptor),
           (Data.ProtoLens.Tag 5, deploymentVersion__field_descriptor),
           (Data.ProtoLens.Tag 6, sdkName__field_descriptor),
           (Data.ProtoLens.Tag 7, sdkVersion__field_descriptor),
           (Data.ProtoLens.Tag 8, status__field_descriptor),
           (Data.ProtoLens.Tag 9, startTime__field_descriptor),
           (Data.ProtoLens.Tag 10, heartbeatTime__field_descriptor),
           (Data.ProtoLens.Tag 11, 
            elapsedSinceLastHeartbeat__field_descriptor),
           (Data.ProtoLens.Tag 12, workflowTaskSlotsInfo__field_descriptor),
           (Data.ProtoLens.Tag 13, activityTaskSlotsInfo__field_descriptor),
           (Data.ProtoLens.Tag 14, nexusTaskSlotsInfo__field_descriptor),
           (Data.ProtoLens.Tag 15, localActivitySlotsInfo__field_descriptor),
           (Data.ProtoLens.Tag 16, workflowPollerInfo__field_descriptor),
           (Data.ProtoLens.Tag 17, 
            workflowStickyPollerInfo__field_descriptor),
           (Data.ProtoLens.Tag 18, activityPollerInfo__field_descriptor),
           (Data.ProtoLens.Tag 19, nexusPollerInfo__field_descriptor),
           (Data.ProtoLens.Tag 20, totalStickyCacheHit__field_descriptor),
           (Data.ProtoLens.Tag 21, totalStickyCacheMiss__field_descriptor),
           (Data.ProtoLens.Tag 22, currentStickyCacheSize__field_descriptor),
           (Data.ProtoLens.Tag 23, plugins__field_descriptor),
           (Data.ProtoLens.Tag 24, drivers__field_descriptor),
           (Data.ProtoLens.Tag 25, environment__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkerHeartbeat'_unknownFields
        (\ x__ y__ -> x__ {_WorkerHeartbeat'_unknownFields = y__})
  defMessage
    = WorkerHeartbeat'_constructor
        {_WorkerHeartbeat'workerInstanceKey = Data.ProtoLens.fieldDefault,
         _WorkerHeartbeat'workerIdentity = Data.ProtoLens.fieldDefault,
         _WorkerHeartbeat'hostInfo = Prelude.Nothing,
         _WorkerHeartbeat'taskQueue = Data.ProtoLens.fieldDefault,
         _WorkerHeartbeat'deploymentVersion = Prelude.Nothing,
         _WorkerHeartbeat'sdkName = Data.ProtoLens.fieldDefault,
         _WorkerHeartbeat'sdkVersion = Data.ProtoLens.fieldDefault,
         _WorkerHeartbeat'status = Data.ProtoLens.fieldDefault,
         _WorkerHeartbeat'startTime = Prelude.Nothing,
         _WorkerHeartbeat'heartbeatTime = Prelude.Nothing,
         _WorkerHeartbeat'elapsedSinceLastHeartbeat = Prelude.Nothing,
         _WorkerHeartbeat'workflowTaskSlotsInfo = Prelude.Nothing,
         _WorkerHeartbeat'activityTaskSlotsInfo = Prelude.Nothing,
         _WorkerHeartbeat'nexusTaskSlotsInfo = Prelude.Nothing,
         _WorkerHeartbeat'localActivitySlotsInfo = Prelude.Nothing,
         _WorkerHeartbeat'workflowPollerInfo = Prelude.Nothing,
         _WorkerHeartbeat'workflowStickyPollerInfo = Prelude.Nothing,
         _WorkerHeartbeat'activityPollerInfo = Prelude.Nothing,
         _WorkerHeartbeat'nexusPollerInfo = Prelude.Nothing,
         _WorkerHeartbeat'totalStickyCacheHit = Data.ProtoLens.fieldDefault,
         _WorkerHeartbeat'totalStickyCacheMiss = Data.ProtoLens.fieldDefault,
         _WorkerHeartbeat'currentStickyCacheSize = Data.ProtoLens.fieldDefault,
         _WorkerHeartbeat'plugins = Data.Vector.Generic.empty,
         _WorkerHeartbeat'drivers = Data.Vector.Generic.empty,
         _WorkerHeartbeat'environment = Prelude.Nothing,
         _WorkerHeartbeat'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkerHeartbeat
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld StorageDriverInfo
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld PluginInfo
                -> Data.ProtoLens.Encoding.Bytes.Parser WorkerHeartbeat
        loop x mutable'drivers mutable'plugins
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'drivers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'drivers)
                      frozen'plugins <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'plugins)
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
                              (Data.ProtoLens.Field.field @"vec'drivers") frozen'drivers
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'plugins") frozen'plugins x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "worker_instance_key"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workerInstanceKey") y x)
                                  mutable'drivers mutable'plugins
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "worker_identity"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workerIdentity") y x)
                                  mutable'drivers mutable'plugins
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "host_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"hostInfo") y x)
                                  mutable'drivers mutable'plugins
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "task_queue"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskQueue") y x)
                                  mutable'drivers mutable'plugins
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "deployment_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"deploymentVersion") y x)
                                  mutable'drivers mutable'plugins
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "sdk_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sdkName") y x)
                                  mutable'drivers mutable'plugins
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "sdk_version"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sdkVersion") y x)
                                  mutable'drivers mutable'plugins
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                                  mutable'drivers mutable'plugins
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startTime") y x)
                                  mutable'drivers mutable'plugins
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "heartbeat_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"heartbeatTime") y x)
                                  mutable'drivers mutable'plugins
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "elapsed_since_last_heartbeat"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"elapsedSinceLastHeartbeat") y x)
                                  mutable'drivers mutable'plugins
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_task_slots_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowTaskSlotsInfo") y x)
                                  mutable'drivers mutable'plugins
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "activity_task_slots_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"activityTaskSlotsInfo") y x)
                                  mutable'drivers mutable'plugins
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "nexus_task_slots_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"nexusTaskSlotsInfo") y x)
                                  mutable'drivers mutable'plugins
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "local_activity_slots_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"localActivitySlotsInfo") y x)
                                  mutable'drivers mutable'plugins
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_poller_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowPollerInfo") y x)
                                  mutable'drivers mutable'plugins
                        138
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "workflow_sticky_poller_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workflowStickyPollerInfo") y x)
                                  mutable'drivers mutable'plugins
                        146
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "activity_poller_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"activityPollerInfo") y x)
                                  mutable'drivers mutable'plugins
                        154
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "nexus_poller_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"nexusPollerInfo") y x)
                                  mutable'drivers mutable'plugins
                        160
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "total_sticky_cache_hit"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalStickyCacheHit") y x)
                                  mutable'drivers mutable'plugins
                        168
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "total_sticky_cache_miss"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalStickyCacheMiss") y x)
                                  mutable'drivers mutable'plugins
                        176
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "current_sticky_cache_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"currentStickyCacheSize") y x)
                                  mutable'drivers mutable'plugins
                        186
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "plugins"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'plugins y)
                                loop x mutable'drivers v
                        194
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "drivers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'drivers y)
                                loop x v mutable'plugins
                        202
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "environment"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"environment") y x)
                                  mutable'drivers mutable'plugins
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'drivers mutable'plugins
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'drivers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'plugins <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'drivers mutable'plugins)
          "WorkerHeartbeat"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"workerInstanceKey") _x
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
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"workerIdentity") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'hostInfo") _x
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
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"taskQueue") _x
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
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'deploymentVersion") _x
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
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sdkName") _x
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
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"sdkVersion") _x
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
                                            (Data.ProtoLens.Field.field @"maybe'startTime") _x
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
                                               (Data.ProtoLens.Field.field @"maybe'heartbeatTime")
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
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'elapsedSinceLastHeartbeat")
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
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'workflowTaskSlotsInfo")
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
                                                           @"maybe'activityTaskSlotsInfo")
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
                                                              @"maybe'nexusTaskSlotsInfo")
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
                                                                 @"maybe'localActivitySlotsInfo")
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
                                                                    @"maybe'workflowPollerInfo")
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
                                                                       @"maybe'workflowStickyPollerInfo")
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
                                                                          @"maybe'activityPollerInfo")
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
                                                                             @"maybe'nexusPollerInfo")
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
                                                                                  @"totalStickyCacheHit")
                                                                               _x
                                                                       in
                                                                         if (Prelude.==)
                                                                              _v
                                                                              Data.ProtoLens.fieldDefault then
                                                                             Data.Monoid.mempty
                                                                         else
                                                                             (Data.Monoid.<>)
                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                  160)
                                                                               ((Prelude..)
                                                                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                  Prelude.fromIntegral
                                                                                  _v))
                                                                      ((Data.Monoid.<>)
                                                                         (let
                                                                            _v
                                                                              = Lens.Family2.view
                                                                                  (Data.ProtoLens.Field.field
                                                                                     @"totalStickyCacheMiss")
                                                                                  _x
                                                                          in
                                                                            if (Prelude.==)
                                                                                 _v
                                                                                 Data.ProtoLens.fieldDefault then
                                                                                Data.Monoid.mempty
                                                                            else
                                                                                (Data.Monoid.<>)
                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                     168)
                                                                                  ((Prelude..)
                                                                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                     Prelude.fromIntegral
                                                                                     _v))
                                                                         ((Data.Monoid.<>)
                                                                            (let
                                                                               _v
                                                                                 = Lens.Family2.view
                                                                                     (Data.ProtoLens.Field.field
                                                                                        @"currentStickyCacheSize")
                                                                                     _x
                                                                             in
                                                                               if (Prelude.==)
                                                                                    _v
                                                                                    Data.ProtoLens.fieldDefault then
                                                                                   Data.Monoid.mempty
                                                                               else
                                                                                   (Data.Monoid.<>)
                                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                        176)
                                                                                     ((Prelude..)
                                                                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                        Prelude.fromIntegral
                                                                                        _v))
                                                                            ((Data.Monoid.<>)
                                                                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                                  (\ _v
                                                                                     -> (Data.Monoid.<>)
                                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                             186)
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
                                                                                        @"vec'plugins")
                                                                                     _x))
                                                                               ((Data.Monoid.<>)
                                                                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                                     (\ _v
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
                                                                                     (Lens.Family2.view
                                                                                        (Data.ProtoLens.Field.field
                                                                                           @"vec'drivers")
                                                                                        _x))
                                                                                  ((Data.Monoid.<>)
                                                                                     (case
                                                                                          Lens.Family2.view
                                                                                            (Data.ProtoLens.Field.field
                                                                                               @"maybe'environment")
                                                                                            _x
                                                                                      of
                                                                                        Prelude.Nothing
                                                                                          -> Data.Monoid.mempty
                                                                                        (Prelude.Just _v)
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
                                                                                                  _v))
                                                                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                                        (Lens.Family2.view
                                                                                           Data.ProtoLens.unknownFields
                                                                                           _x))))))))))))))))))))))))))
instance Control.DeepSeq.NFData WorkerHeartbeat where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkerHeartbeat'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WorkerHeartbeat'workerInstanceKey x__)
                (Control.DeepSeq.deepseq
                   (_WorkerHeartbeat'workerIdentity x__)
                   (Control.DeepSeq.deepseq
                      (_WorkerHeartbeat'hostInfo x__)
                      (Control.DeepSeq.deepseq
                         (_WorkerHeartbeat'taskQueue x__)
                         (Control.DeepSeq.deepseq
                            (_WorkerHeartbeat'deploymentVersion x__)
                            (Control.DeepSeq.deepseq
                               (_WorkerHeartbeat'sdkName x__)
                               (Control.DeepSeq.deepseq
                                  (_WorkerHeartbeat'sdkVersion x__)
                                  (Control.DeepSeq.deepseq
                                     (_WorkerHeartbeat'status x__)
                                     (Control.DeepSeq.deepseq
                                        (_WorkerHeartbeat'startTime x__)
                                        (Control.DeepSeq.deepseq
                                           (_WorkerHeartbeat'heartbeatTime x__)
                                           (Control.DeepSeq.deepseq
                                              (_WorkerHeartbeat'elapsedSinceLastHeartbeat x__)
                                              (Control.DeepSeq.deepseq
                                                 (_WorkerHeartbeat'workflowTaskSlotsInfo x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_WorkerHeartbeat'activityTaskSlotsInfo x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_WorkerHeartbeat'nexusTaskSlotsInfo x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_WorkerHeartbeat'localActivitySlotsInfo
                                                             x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_WorkerHeartbeat'workflowPollerInfo
                                                                x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_WorkerHeartbeat'workflowStickyPollerInfo
                                                                   x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_WorkerHeartbeat'activityPollerInfo
                                                                      x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_WorkerHeartbeat'nexusPollerInfo
                                                                         x__)
                                                                      (Control.DeepSeq.deepseq
                                                                         (_WorkerHeartbeat'totalStickyCacheHit
                                                                            x__)
                                                                         (Control.DeepSeq.deepseq
                                                                            (_WorkerHeartbeat'totalStickyCacheMiss
                                                                               x__)
                                                                            (Control.DeepSeq.deepseq
                                                                               (_WorkerHeartbeat'currentStickyCacheSize
                                                                                  x__)
                                                                               (Control.DeepSeq.deepseq
                                                                                  (_WorkerHeartbeat'plugins
                                                                                     x__)
                                                                                  (Control.DeepSeq.deepseq
                                                                                     (_WorkerHeartbeat'drivers
                                                                                        x__)
                                                                                     (Control.DeepSeq.deepseq
                                                                                        (_WorkerHeartbeat'environment
                                                                                           x__)
                                                                                        ())))))))))))))))))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.hostName' @:: Lens' WorkerHostInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.workerGroupingKey' @:: Lens' WorkerHostInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.processId' @:: Lens' WorkerHostInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.currentHostCpuUsage' @:: Lens' WorkerHostInfo Prelude.Float@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.currentHostMemUsage' @:: Lens' WorkerHostInfo Prelude.Float@ -}
data WorkerHostInfo
  = WorkerHostInfo'_constructor {_WorkerHostInfo'hostName :: !Data.Text.Text,
                                 _WorkerHostInfo'workerGroupingKey :: !Data.Text.Text,
                                 _WorkerHostInfo'processId :: !Data.Text.Text,
                                 _WorkerHostInfo'currentHostCpuUsage :: !Prelude.Float,
                                 _WorkerHostInfo'currentHostMemUsage :: !Prelude.Float,
                                 _WorkerHostInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkerHostInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkerHostInfo "hostName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHostInfo'hostName
           (\ x__ y__ -> x__ {_WorkerHostInfo'hostName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHostInfo "workerGroupingKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHostInfo'workerGroupingKey
           (\ x__ y__ -> x__ {_WorkerHostInfo'workerGroupingKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHostInfo "processId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHostInfo'processId
           (\ x__ y__ -> x__ {_WorkerHostInfo'processId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHostInfo "currentHostCpuUsage" Prelude.Float where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHostInfo'currentHostCpuUsage
           (\ x__ y__ -> x__ {_WorkerHostInfo'currentHostCpuUsage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerHostInfo "currentHostMemUsage" Prelude.Float where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerHostInfo'currentHostMemUsage
           (\ x__ y__ -> x__ {_WorkerHostInfo'currentHostMemUsage = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkerHostInfo where
  messageName _
    = Data.Text.pack "temporal.api.worker.v1.WorkerHostInfo"
  packedMessageDescriptor _
    = "\n\
      \\SOWorkerHostInfo\DC2\ESC\n\
      \\thost_name\CAN\SOH \SOH(\tR\bhostName\DC2.\n\
      \\DC3worker_grouping_key\CAN\ENQ \SOH(\tR\DC1workerGroupingKey\DC2\GS\n\
      \\n\
      \process_id\CAN\STX \SOH(\tR\tprocessId\DC23\n\
      \\SYNcurrent_host_cpu_usage\CAN\ETX \SOH(\STXR\DC3currentHostCpuUsage\DC23\n\
      \\SYNcurrent_host_mem_usage\CAN\EOT \SOH(\STXR\DC3currentHostMemUsage"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        hostName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "host_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"hostName")) ::
              Data.ProtoLens.FieldDescriptor WorkerHostInfo
        workerGroupingKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "worker_grouping_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workerGroupingKey")) ::
              Data.ProtoLens.FieldDescriptor WorkerHostInfo
        processId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "process_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"processId")) ::
              Data.ProtoLens.FieldDescriptor WorkerHostInfo
        currentHostCpuUsage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_host_cpu_usage"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"currentHostCpuUsage")) ::
              Data.ProtoLens.FieldDescriptor WorkerHostInfo
        currentHostMemUsage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_host_mem_usage"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"currentHostMemUsage")) ::
              Data.ProtoLens.FieldDescriptor WorkerHostInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, hostName__field_descriptor),
           (Data.ProtoLens.Tag 5, workerGroupingKey__field_descriptor),
           (Data.ProtoLens.Tag 2, processId__field_descriptor),
           (Data.ProtoLens.Tag 3, currentHostCpuUsage__field_descriptor),
           (Data.ProtoLens.Tag 4, currentHostMemUsage__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkerHostInfo'_unknownFields
        (\ x__ y__ -> x__ {_WorkerHostInfo'_unknownFields = y__})
  defMessage
    = WorkerHostInfo'_constructor
        {_WorkerHostInfo'hostName = Data.ProtoLens.fieldDefault,
         _WorkerHostInfo'workerGroupingKey = Data.ProtoLens.fieldDefault,
         _WorkerHostInfo'processId = Data.ProtoLens.fieldDefault,
         _WorkerHostInfo'currentHostCpuUsage = Data.ProtoLens.fieldDefault,
         _WorkerHostInfo'currentHostMemUsage = Data.ProtoLens.fieldDefault,
         _WorkerHostInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkerHostInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser WorkerHostInfo
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
                                       "host_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"hostName") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "worker_grouping_key"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workerGroupingKey") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "process_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"processId") y x)
                        29
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToFloat
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "current_host_cpu_usage"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"currentHostCpuUsage") y x)
                        37
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToFloat
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "current_host_mem_usage"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"currentHostMemUsage") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WorkerHostInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hostName") _x
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
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"workerGroupingKey") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"processId") _x
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
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"currentHostCpuUsage") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 29)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putFixed32
                                  Data.ProtoLens.Encoding.Bytes.floatToWord _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"currentHostMemUsage") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 37)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putFixed32
                                     Data.ProtoLens.Encoding.Bytes.floatToWord _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData WorkerHostInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkerHostInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WorkerHostInfo'hostName x__)
                (Control.DeepSeq.deepseq
                   (_WorkerHostInfo'workerGroupingKey x__)
                   (Control.DeepSeq.deepseq
                      (_WorkerHostInfo'processId x__)
                      (Control.DeepSeq.deepseq
                         (_WorkerHostInfo'currentHostCpuUsage x__)
                         (Control.DeepSeq.deepseq
                            (_WorkerHostInfo'currentHostMemUsage x__) ())))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.workerHeartbeat' @:: Lens' WorkerInfo WorkerHeartbeat@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'workerHeartbeat' @:: Lens' WorkerInfo (Prelude.Maybe WorkerHeartbeat)@ -}
data WorkerInfo
  = WorkerInfo'_constructor {_WorkerInfo'workerHeartbeat :: !(Prelude.Maybe WorkerHeartbeat),
                             _WorkerInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkerInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkerInfo "workerHeartbeat" WorkerHeartbeat where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerInfo'workerHeartbeat
           (\ x__ y__ -> x__ {_WorkerInfo'workerHeartbeat = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerInfo "maybe'workerHeartbeat" (Prelude.Maybe WorkerHeartbeat) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerInfo'workerHeartbeat
           (\ x__ y__ -> x__ {_WorkerInfo'workerHeartbeat = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkerInfo where
  messageName _ = Data.Text.pack "temporal.api.worker.v1.WorkerInfo"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \WorkerInfo\DC2R\n\
      \\DLEworker_heartbeat\CAN\SOH \SOH(\v2'.temporal.api.worker.v1.WorkerHeartbeatR\SIworkerHeartbeat"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        workerHeartbeat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "worker_heartbeat"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WorkerHeartbeat)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workerHeartbeat")) ::
              Data.ProtoLens.FieldDescriptor WorkerInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, workerHeartbeat__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkerInfo'_unknownFields
        (\ x__ y__ -> x__ {_WorkerInfo'_unknownFields = y__})
  defMessage
    = WorkerInfo'_constructor
        {_WorkerInfo'workerHeartbeat = Prelude.Nothing,
         _WorkerInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkerInfo -> Data.ProtoLens.Encoding.Bytes.Parser WorkerInfo
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
                                       "worker_heartbeat"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workerHeartbeat") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WorkerInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'workerHeartbeat") _x
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
instance Control.DeepSeq.NFData WorkerInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkerInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq (_WorkerInfo'workerHeartbeat x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.workerInstanceKey' @:: Lens' WorkerListInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.workerIdentity' @:: Lens' WorkerListInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.taskQueue' @:: Lens' WorkerListInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.deploymentVersion' @:: Lens' WorkerListInfo Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'deploymentVersion' @:: Lens' WorkerListInfo (Prelude.Maybe Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.sdkName' @:: Lens' WorkerListInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.sdkVersion' @:: Lens' WorkerListInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.status' @:: Lens' WorkerListInfo Proto.Temporal.Api.Enums.V1.Common.WorkerStatus@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.startTime' @:: Lens' WorkerListInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'startTime' @:: Lens' WorkerListInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.hostName' @:: Lens' WorkerListInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.workerGroupingKey' @:: Lens' WorkerListInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.processId' @:: Lens' WorkerListInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.plugins' @:: Lens' WorkerListInfo [PluginInfo]@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.vec'plugins' @:: Lens' WorkerListInfo (Data.Vector.Vector PluginInfo)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.drivers' @:: Lens' WorkerListInfo [StorageDriverInfo]@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.vec'drivers' @:: Lens' WorkerListInfo (Data.Vector.Vector StorageDriverInfo)@ -}
data WorkerListInfo
  = WorkerListInfo'_constructor {_WorkerListInfo'workerInstanceKey :: !Data.Text.Text,
                                 _WorkerListInfo'workerIdentity :: !Data.Text.Text,
                                 _WorkerListInfo'taskQueue :: !Data.Text.Text,
                                 _WorkerListInfo'deploymentVersion :: !(Prelude.Maybe Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion),
                                 _WorkerListInfo'sdkName :: !Data.Text.Text,
                                 _WorkerListInfo'sdkVersion :: !Data.Text.Text,
                                 _WorkerListInfo'status :: !Proto.Temporal.Api.Enums.V1.Common.WorkerStatus,
                                 _WorkerListInfo'startTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                 _WorkerListInfo'hostName :: !Data.Text.Text,
                                 _WorkerListInfo'workerGroupingKey :: !Data.Text.Text,
                                 _WorkerListInfo'processId :: !Data.Text.Text,
                                 _WorkerListInfo'plugins :: !(Data.Vector.Vector PluginInfo),
                                 _WorkerListInfo'drivers :: !(Data.Vector.Vector StorageDriverInfo),
                                 _WorkerListInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkerListInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkerListInfo "workerInstanceKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerListInfo'workerInstanceKey
           (\ x__ y__ -> x__ {_WorkerListInfo'workerInstanceKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerListInfo "workerIdentity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerListInfo'workerIdentity
           (\ x__ y__ -> x__ {_WorkerListInfo'workerIdentity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerListInfo "taskQueue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerListInfo'taskQueue
           (\ x__ y__ -> x__ {_WorkerListInfo'taskQueue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerListInfo "deploymentVersion" Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerListInfo'deploymentVersion
           (\ x__ y__ -> x__ {_WorkerListInfo'deploymentVersion = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerListInfo "maybe'deploymentVersion" (Prelude.Maybe Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerListInfo'deploymentVersion
           (\ x__ y__ -> x__ {_WorkerListInfo'deploymentVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerListInfo "sdkName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerListInfo'sdkName
           (\ x__ y__ -> x__ {_WorkerListInfo'sdkName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerListInfo "sdkVersion" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerListInfo'sdkVersion
           (\ x__ y__ -> x__ {_WorkerListInfo'sdkVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerListInfo "status" Proto.Temporal.Api.Enums.V1.Common.WorkerStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerListInfo'status
           (\ x__ y__ -> x__ {_WorkerListInfo'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerListInfo "startTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerListInfo'startTime
           (\ x__ y__ -> x__ {_WorkerListInfo'startTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerListInfo "maybe'startTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerListInfo'startTime
           (\ x__ y__ -> x__ {_WorkerListInfo'startTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerListInfo "hostName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerListInfo'hostName
           (\ x__ y__ -> x__ {_WorkerListInfo'hostName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerListInfo "workerGroupingKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerListInfo'workerGroupingKey
           (\ x__ y__ -> x__ {_WorkerListInfo'workerGroupingKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerListInfo "processId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerListInfo'processId
           (\ x__ y__ -> x__ {_WorkerListInfo'processId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerListInfo "plugins" [PluginInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerListInfo'plugins
           (\ x__ y__ -> x__ {_WorkerListInfo'plugins = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField WorkerListInfo "vec'plugins" (Data.Vector.Vector PluginInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerListInfo'plugins
           (\ x__ y__ -> x__ {_WorkerListInfo'plugins = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerListInfo "drivers" [StorageDriverInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerListInfo'drivers
           (\ x__ y__ -> x__ {_WorkerListInfo'drivers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField WorkerListInfo "vec'drivers" (Data.Vector.Vector StorageDriverInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerListInfo'drivers
           (\ x__ y__ -> x__ {_WorkerListInfo'drivers = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkerListInfo where
  messageName _
    = Data.Text.pack "temporal.api.worker.v1.WorkerListInfo"
  packedMessageDescriptor _
    = "\n\
      \\SOWorkerListInfo\DC2.\n\
      \\DC3worker_instance_key\CAN\SOH \SOH(\tR\DC1workerInstanceKey\DC2'\n\
      \\SIworker_identity\CAN\STX \SOH(\tR\SOworkerIdentity\DC2\GS\n\
      \\n\
      \task_queue\CAN\ETX \SOH(\tR\ttaskQueue\DC2b\n\
      \\DC2deployment_version\CAN\EOT \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\DC1deploymentVersion\DC2\EM\n\
      \\bsdk_name\CAN\ENQ \SOH(\tR\asdkName\DC2\US\n\
      \\vsdk_version\CAN\ACK \SOH(\tR\n\
      \sdkVersion\DC2;\n\
      \\ACKstatus\CAN\a \SOH(\SO2#.temporal.api.enums.v1.WorkerStatusR\ACKstatus\DC29\n\
      \\n\
      \start_time\CAN\b \SOH(\v2\SUB.google.protobuf.TimestampR\tstartTime\DC2\ESC\n\
      \\thost_name\CAN\t \SOH(\tR\bhostName\DC2.\n\
      \\DC3worker_grouping_key\CAN\n\
      \ \SOH(\tR\DC1workerGroupingKey\DC2\GS\n\
      \\n\
      \process_id\CAN\v \SOH(\tR\tprocessId\DC2<\n\
      \\aplugins\CAN\f \ETX(\v2\".temporal.api.worker.v1.PluginInfoR\aplugins\DC2C\n\
      \\adrivers\CAN\r \ETX(\v2).temporal.api.worker.v1.StorageDriverInfoR\adrivers"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        workerInstanceKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "worker_instance_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workerInstanceKey")) ::
              Data.ProtoLens.FieldDescriptor WorkerListInfo
        workerIdentity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "worker_identity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workerIdentity")) ::
              Data.ProtoLens.FieldDescriptor WorkerListInfo
        taskQueue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"taskQueue")) ::
              Data.ProtoLens.FieldDescriptor WorkerListInfo
        deploymentVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deployment_version"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'deploymentVersion")) ::
              Data.ProtoLens.FieldDescriptor WorkerListInfo
        sdkName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sdk_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"sdkName")) ::
              Data.ProtoLens.FieldDescriptor WorkerListInfo
        sdkVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sdk_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sdkVersion")) ::
              Data.ProtoLens.FieldDescriptor WorkerListInfo
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Common.WorkerStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor WorkerListInfo
        startTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startTime")) ::
              Data.ProtoLens.FieldDescriptor WorkerListInfo
        hostName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "host_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"hostName")) ::
              Data.ProtoLens.FieldDescriptor WorkerListInfo
        workerGroupingKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "worker_grouping_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workerGroupingKey")) ::
              Data.ProtoLens.FieldDescriptor WorkerListInfo
        processId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "process_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"processId")) ::
              Data.ProtoLens.FieldDescriptor WorkerListInfo
        plugins__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "plugins"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PluginInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"plugins")) ::
              Data.ProtoLens.FieldDescriptor WorkerListInfo
        drivers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "drivers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StorageDriverInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"drivers")) ::
              Data.ProtoLens.FieldDescriptor WorkerListInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, workerInstanceKey__field_descriptor),
           (Data.ProtoLens.Tag 2, workerIdentity__field_descriptor),
           (Data.ProtoLens.Tag 3, taskQueue__field_descriptor),
           (Data.ProtoLens.Tag 4, deploymentVersion__field_descriptor),
           (Data.ProtoLens.Tag 5, sdkName__field_descriptor),
           (Data.ProtoLens.Tag 6, sdkVersion__field_descriptor),
           (Data.ProtoLens.Tag 7, status__field_descriptor),
           (Data.ProtoLens.Tag 8, startTime__field_descriptor),
           (Data.ProtoLens.Tag 9, hostName__field_descriptor),
           (Data.ProtoLens.Tag 10, workerGroupingKey__field_descriptor),
           (Data.ProtoLens.Tag 11, processId__field_descriptor),
           (Data.ProtoLens.Tag 12, plugins__field_descriptor),
           (Data.ProtoLens.Tag 13, drivers__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkerListInfo'_unknownFields
        (\ x__ y__ -> x__ {_WorkerListInfo'_unknownFields = y__})
  defMessage
    = WorkerListInfo'_constructor
        {_WorkerListInfo'workerInstanceKey = Data.ProtoLens.fieldDefault,
         _WorkerListInfo'workerIdentity = Data.ProtoLens.fieldDefault,
         _WorkerListInfo'taskQueue = Data.ProtoLens.fieldDefault,
         _WorkerListInfo'deploymentVersion = Prelude.Nothing,
         _WorkerListInfo'sdkName = Data.ProtoLens.fieldDefault,
         _WorkerListInfo'sdkVersion = Data.ProtoLens.fieldDefault,
         _WorkerListInfo'status = Data.ProtoLens.fieldDefault,
         _WorkerListInfo'startTime = Prelude.Nothing,
         _WorkerListInfo'hostName = Data.ProtoLens.fieldDefault,
         _WorkerListInfo'workerGroupingKey = Data.ProtoLens.fieldDefault,
         _WorkerListInfo'processId = Data.ProtoLens.fieldDefault,
         _WorkerListInfo'plugins = Data.Vector.Generic.empty,
         _WorkerListInfo'drivers = Data.Vector.Generic.empty,
         _WorkerListInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkerListInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld StorageDriverInfo
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld PluginInfo
                -> Data.ProtoLens.Encoding.Bytes.Parser WorkerListInfo
        loop x mutable'drivers mutable'plugins
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'drivers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'drivers)
                      frozen'plugins <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'plugins)
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
                              (Data.ProtoLens.Field.field @"vec'drivers") frozen'drivers
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'plugins") frozen'plugins x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "worker_instance_key"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workerInstanceKey") y x)
                                  mutable'drivers mutable'plugins
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "worker_identity"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workerIdentity") y x)
                                  mutable'drivers mutable'plugins
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "task_queue"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskQueue") y x)
                                  mutable'drivers mutable'plugins
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "deployment_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"deploymentVersion") y x)
                                  mutable'drivers mutable'plugins
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "sdk_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sdkName") y x)
                                  mutable'drivers mutable'plugins
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "sdk_version"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sdkVersion") y x)
                                  mutable'drivers mutable'plugins
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                                  mutable'drivers mutable'plugins
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startTime") y x)
                                  mutable'drivers mutable'plugins
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "host_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"hostName") y x)
                                  mutable'drivers mutable'plugins
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "worker_grouping_key"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workerGroupingKey") y x)
                                  mutable'drivers mutable'plugins
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "process_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"processId") y x)
                                  mutable'drivers mutable'plugins
                        98
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "plugins"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'plugins y)
                                loop x mutable'drivers v
                        106
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "drivers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'drivers y)
                                loop x v mutable'plugins
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'drivers mutable'plugins
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'drivers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'plugins <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'drivers mutable'plugins)
          "WorkerListInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"workerInstanceKey") _x
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
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"workerIdentity") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"taskQueue") _x
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
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'deploymentVersion") _x
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
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sdkName") _x
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
                               _v
                                 = Lens.Family2.view (Data.ProtoLens.Field.field @"sdkVersion") _x
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
                            ((Data.Monoid.<>)
                               (let
                                  _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
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
                                         (Data.ProtoLens.Field.field @"maybe'startTime") _x
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
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"hostName") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                              ((Prelude..)
                                                 (\ bs
                                                    -> (Data.Monoid.<>)
                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                            (Prelude.fromIntegral
                                                               (Data.ByteString.length bs)))
                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                            bs))
                                                 Data.Text.Encoding.encodeUtf8 _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"workerGroupingKey")
                                                 _x
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
                                                               (Prelude.fromIntegral
                                                                  (Data.ByteString.length bs)))
                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                               bs))
                                                    Data.Text.Encoding.encodeUtf8 _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field @"processId") _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                    ((Prelude..)
                                                       (\ bs
                                                          -> (Data.Monoid.<>)
                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                  (Prelude.fromIntegral
                                                                     (Data.ByteString.length bs)))
                                                               (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                  bs))
                                                       Data.Text.Encoding.encodeUtf8 _v))
                                           ((Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                 (\ _v
                                                    -> (Data.Monoid.<>)
                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                            98)
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
                                                 (Lens.Family2.view
                                                    (Data.ProtoLens.Field.field @"vec'plugins") _x))
                                              ((Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                    (\ _v
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
                                                    (Lens.Family2.view
                                                       (Data.ProtoLens.Field.field @"vec'drivers")
                                                       _x))
                                                 (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                    (Lens.Family2.view
                                                       Data.ProtoLens.unknownFields _x))))))))))))))
instance Control.DeepSeq.NFData WorkerListInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkerListInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WorkerListInfo'workerInstanceKey x__)
                (Control.DeepSeq.deepseq
                   (_WorkerListInfo'workerIdentity x__)
                   (Control.DeepSeq.deepseq
                      (_WorkerListInfo'taskQueue x__)
                      (Control.DeepSeq.deepseq
                         (_WorkerListInfo'deploymentVersion x__)
                         (Control.DeepSeq.deepseq
                            (_WorkerListInfo'sdkName x__)
                            (Control.DeepSeq.deepseq
                               (_WorkerListInfo'sdkVersion x__)
                               (Control.DeepSeq.deepseq
                                  (_WorkerListInfo'status x__)
                                  (Control.DeepSeq.deepseq
                                     (_WorkerListInfo'startTime x__)
                                     (Control.DeepSeq.deepseq
                                        (_WorkerListInfo'hostName x__)
                                        (Control.DeepSeq.deepseq
                                           (_WorkerListInfo'workerGroupingKey x__)
                                           (Control.DeepSeq.deepseq
                                              (_WorkerListInfo'processId x__)
                                              (Control.DeepSeq.deepseq
                                                 (_WorkerListInfo'plugins x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_WorkerListInfo'drivers x__) ())))))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.currentPollers' @:: Lens' WorkerPollerInfo Data.Int.Int32@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.lastSuccessfulPollTime' @:: Lens' WorkerPollerInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.maybe'lastSuccessfulPollTime' @:: Lens' WorkerPollerInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.isAutoscaling' @:: Lens' WorkerPollerInfo Prelude.Bool@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.targetPollers' @:: Lens' WorkerPollerInfo Data.Int.Int32@ -}
data WorkerPollerInfo
  = WorkerPollerInfo'_constructor {_WorkerPollerInfo'currentPollers :: !Data.Int.Int32,
                                   _WorkerPollerInfo'lastSuccessfulPollTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                   _WorkerPollerInfo'isAutoscaling :: !Prelude.Bool,
                                   _WorkerPollerInfo'targetPollers :: !Data.Int.Int32,
                                   _WorkerPollerInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkerPollerInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkerPollerInfo "currentPollers" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerPollerInfo'currentPollers
           (\ x__ y__ -> x__ {_WorkerPollerInfo'currentPollers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerPollerInfo "lastSuccessfulPollTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerPollerInfo'lastSuccessfulPollTime
           (\ x__ y__
              -> x__ {_WorkerPollerInfo'lastSuccessfulPollTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WorkerPollerInfo "maybe'lastSuccessfulPollTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerPollerInfo'lastSuccessfulPollTime
           (\ x__ y__
              -> x__ {_WorkerPollerInfo'lastSuccessfulPollTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerPollerInfo "isAutoscaling" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerPollerInfo'isAutoscaling
           (\ x__ y__ -> x__ {_WorkerPollerInfo'isAutoscaling = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerPollerInfo "targetPollers" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerPollerInfo'targetPollers
           (\ x__ y__ -> x__ {_WorkerPollerInfo'targetPollers = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkerPollerInfo where
  messageName _
    = Data.Text.pack "temporal.api.worker.v1.WorkerPollerInfo"
  packedMessageDescriptor _
    = "\n\
      \\DLEWorkerPollerInfo\DC2'\n\
      \\SIcurrent_pollers\CAN\SOH \SOH(\ENQR\SOcurrentPollers\DC2U\n\
      \\EMlast_successful_poll_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\SYNlastSuccessfulPollTime\DC2%\n\
      \\SOis_autoscaling\CAN\ETX \SOH(\bR\risAutoscaling\DC2%\n\
      \\SOtarget_pollers\CAN\EOT \SOH(\ENQR\rtargetPollers"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        currentPollers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_pollers"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"currentPollers")) ::
              Data.ProtoLens.FieldDescriptor WorkerPollerInfo
        lastSuccessfulPollTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_successful_poll_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastSuccessfulPollTime")) ::
              Data.ProtoLens.FieldDescriptor WorkerPollerInfo
        isAutoscaling__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_autoscaling"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"isAutoscaling")) ::
              Data.ProtoLens.FieldDescriptor WorkerPollerInfo
        targetPollers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target_pollers"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"targetPollers")) ::
              Data.ProtoLens.FieldDescriptor WorkerPollerInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, currentPollers__field_descriptor),
           (Data.ProtoLens.Tag 2, lastSuccessfulPollTime__field_descriptor),
           (Data.ProtoLens.Tag 3, isAutoscaling__field_descriptor),
           (Data.ProtoLens.Tag 4, targetPollers__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkerPollerInfo'_unknownFields
        (\ x__ y__ -> x__ {_WorkerPollerInfo'_unknownFields = y__})
  defMessage
    = WorkerPollerInfo'_constructor
        {_WorkerPollerInfo'currentPollers = Data.ProtoLens.fieldDefault,
         _WorkerPollerInfo'lastSuccessfulPollTime = Prelude.Nothing,
         _WorkerPollerInfo'isAutoscaling = Data.ProtoLens.fieldDefault,
         _WorkerPollerInfo'targetPollers = Data.ProtoLens.fieldDefault,
         _WorkerPollerInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkerPollerInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser WorkerPollerInfo
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
                                       "current_pollers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"currentPollers") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_successful_poll_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastSuccessfulPollTime") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_autoscaling"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"isAutoscaling") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "target_pollers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"targetPollers") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WorkerPollerInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"currentPollers") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'lastSuccessfulPollTime") _x
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
                            (Data.ProtoLens.Field.field @"isAutoscaling") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                               _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"targetPollers") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData WorkerPollerInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkerPollerInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WorkerPollerInfo'currentPollers x__)
                (Control.DeepSeq.deepseq
                   (_WorkerPollerInfo'lastSuccessfulPollTime x__)
                   (Control.DeepSeq.deepseq
                      (_WorkerPollerInfo'isAutoscaling x__)
                      (Control.DeepSeq.deepseq
                         (_WorkerPollerInfo'targetPollers x__) ()))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.currentAvailableSlots' @:: Lens' WorkerSlotsInfo Data.Int.Int32@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.currentUsedSlots' @:: Lens' WorkerSlotsInfo Data.Int.Int32@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.slotSupplierKind' @:: Lens' WorkerSlotsInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.totalProcessedTasks' @:: Lens' WorkerSlotsInfo Data.Int.Int32@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.totalFailedTasks' @:: Lens' WorkerSlotsInfo Data.Int.Int32@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.lastIntervalProcessedTasks' @:: Lens' WorkerSlotsInfo Data.Int.Int32@
         * 'Proto.Temporal.Api.Worker.V1.Message_Fields.lastIntervalFailureTasks' @:: Lens' WorkerSlotsInfo Data.Int.Int32@ -}
data WorkerSlotsInfo
  = WorkerSlotsInfo'_constructor {_WorkerSlotsInfo'currentAvailableSlots :: !Data.Int.Int32,
                                  _WorkerSlotsInfo'currentUsedSlots :: !Data.Int.Int32,
                                  _WorkerSlotsInfo'slotSupplierKind :: !Data.Text.Text,
                                  _WorkerSlotsInfo'totalProcessedTasks :: !Data.Int.Int32,
                                  _WorkerSlotsInfo'totalFailedTasks :: !Data.Int.Int32,
                                  _WorkerSlotsInfo'lastIntervalProcessedTasks :: !Data.Int.Int32,
                                  _WorkerSlotsInfo'lastIntervalFailureTasks :: !Data.Int.Int32,
                                  _WorkerSlotsInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkerSlotsInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkerSlotsInfo "currentAvailableSlots" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerSlotsInfo'currentAvailableSlots
           (\ x__ y__ -> x__ {_WorkerSlotsInfo'currentAvailableSlots = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerSlotsInfo "currentUsedSlots" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerSlotsInfo'currentUsedSlots
           (\ x__ y__ -> x__ {_WorkerSlotsInfo'currentUsedSlots = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerSlotsInfo "slotSupplierKind" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerSlotsInfo'slotSupplierKind
           (\ x__ y__ -> x__ {_WorkerSlotsInfo'slotSupplierKind = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerSlotsInfo "totalProcessedTasks" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerSlotsInfo'totalProcessedTasks
           (\ x__ y__ -> x__ {_WorkerSlotsInfo'totalProcessedTasks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerSlotsInfo "totalFailedTasks" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerSlotsInfo'totalFailedTasks
           (\ x__ y__ -> x__ {_WorkerSlotsInfo'totalFailedTasks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerSlotsInfo "lastIntervalProcessedTasks" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerSlotsInfo'lastIntervalProcessedTasks
           (\ x__ y__
              -> x__ {_WorkerSlotsInfo'lastIntervalProcessedTasks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkerSlotsInfo "lastIntervalFailureTasks" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkerSlotsInfo'lastIntervalFailureTasks
           (\ x__ y__
              -> x__ {_WorkerSlotsInfo'lastIntervalFailureTasks = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkerSlotsInfo where
  messageName _
    = Data.Text.pack "temporal.api.worker.v1.WorkerSlotsInfo"
  packedMessageDescriptor _
    = "\n\
      \\SIWorkerSlotsInfo\DC26\n\
      \\ETBcurrent_available_slots\CAN\SOH \SOH(\ENQR\NAKcurrentAvailableSlots\DC2,\n\
      \\DC2current_used_slots\CAN\STX \SOH(\ENQR\DLEcurrentUsedSlots\DC2,\n\
      \\DC2slot_supplier_kind\CAN\ETX \SOH(\tR\DLEslotSupplierKind\DC22\n\
      \\NAKtotal_processed_tasks\CAN\EOT \SOH(\ENQR\DC3totalProcessedTasks\DC2,\n\
      \\DC2total_failed_tasks\CAN\ENQ \SOH(\ENQR\DLEtotalFailedTasks\DC2A\n\
      \\GSlast_interval_processed_tasks\CAN\ACK \SOH(\ENQR\SUBlastIntervalProcessedTasks\DC2=\n\
      \\ESClast_interval_failure_tasks\CAN\a \SOH(\ENQR\CANlastIntervalFailureTasks"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        currentAvailableSlots__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_available_slots"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"currentAvailableSlots")) ::
              Data.ProtoLens.FieldDescriptor WorkerSlotsInfo
        currentUsedSlots__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_used_slots"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"currentUsedSlots")) ::
              Data.ProtoLens.FieldDescriptor WorkerSlotsInfo
        slotSupplierKind__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "slot_supplier_kind"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"slotSupplierKind")) ::
              Data.ProtoLens.FieldDescriptor WorkerSlotsInfo
        totalProcessedTasks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_processed_tasks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalProcessedTasks")) ::
              Data.ProtoLens.FieldDescriptor WorkerSlotsInfo
        totalFailedTasks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_failed_tasks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalFailedTasks")) ::
              Data.ProtoLens.FieldDescriptor WorkerSlotsInfo
        lastIntervalProcessedTasks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_interval_processed_tasks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lastIntervalProcessedTasks")) ::
              Data.ProtoLens.FieldDescriptor WorkerSlotsInfo
        lastIntervalFailureTasks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_interval_failure_tasks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lastIntervalFailureTasks")) ::
              Data.ProtoLens.FieldDescriptor WorkerSlotsInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, currentAvailableSlots__field_descriptor),
           (Data.ProtoLens.Tag 2, currentUsedSlots__field_descriptor),
           (Data.ProtoLens.Tag 3, slotSupplierKind__field_descriptor),
           (Data.ProtoLens.Tag 4, totalProcessedTasks__field_descriptor),
           (Data.ProtoLens.Tag 5, totalFailedTasks__field_descriptor),
           (Data.ProtoLens.Tag 6, 
            lastIntervalProcessedTasks__field_descriptor),
           (Data.ProtoLens.Tag 7, lastIntervalFailureTasks__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkerSlotsInfo'_unknownFields
        (\ x__ y__ -> x__ {_WorkerSlotsInfo'_unknownFields = y__})
  defMessage
    = WorkerSlotsInfo'_constructor
        {_WorkerSlotsInfo'currentAvailableSlots = Data.ProtoLens.fieldDefault,
         _WorkerSlotsInfo'currentUsedSlots = Data.ProtoLens.fieldDefault,
         _WorkerSlotsInfo'slotSupplierKind = Data.ProtoLens.fieldDefault,
         _WorkerSlotsInfo'totalProcessedTasks = Data.ProtoLens.fieldDefault,
         _WorkerSlotsInfo'totalFailedTasks = Data.ProtoLens.fieldDefault,
         _WorkerSlotsInfo'lastIntervalProcessedTasks = Data.ProtoLens.fieldDefault,
         _WorkerSlotsInfo'lastIntervalFailureTasks = Data.ProtoLens.fieldDefault,
         _WorkerSlotsInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkerSlotsInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser WorkerSlotsInfo
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
                                       "current_available_slots"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"currentAvailableSlots") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "current_used_slots"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"currentUsedSlots") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "slot_supplier_kind"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"slotSupplierKind") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "total_processed_tasks"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalProcessedTasks") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "total_failed_tasks"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalFailedTasks") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "last_interval_processed_tasks"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastIntervalProcessedTasks") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "last_interval_failure_tasks"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastIntervalFailureTasks") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WorkerSlotsInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"currentAvailableSlots") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"currentUsedSlots") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"slotSupplierKind") _x
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
                               (Data.ProtoLens.Field.field @"totalProcessedTasks") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"totalFailedTasks") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                     _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"lastIntervalProcessedTasks") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                        _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"lastIntervalFailureTasks") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           Prelude.fromIntegral _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData WorkerSlotsInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkerSlotsInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WorkerSlotsInfo'currentAvailableSlots x__)
                (Control.DeepSeq.deepseq
                   (_WorkerSlotsInfo'currentUsedSlots x__)
                   (Control.DeepSeq.deepseq
                      (_WorkerSlotsInfo'slotSupplierKind x__)
                      (Control.DeepSeq.deepseq
                         (_WorkerSlotsInfo'totalProcessedTasks x__)
                         (Control.DeepSeq.deepseq
                            (_WorkerSlotsInfo'totalFailedTasks x__)
                            (Control.DeepSeq.deepseq
                               (_WorkerSlotsInfo'lastIntervalProcessedTasks x__)
                               (Control.DeepSeq.deepseq
                                  (_WorkerSlotsInfo'lastIntervalFailureTasks x__) ())))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \$temporal/api/worker/v1/message.proto\DC2\SYNtemporal.api.worker.v1\SUB\RSgoogle/protobuf/duration.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB(temporal/api/deployment/v1/message.proto\SUB\"temporal/api/enums/v1/common.proto\"\224\SOH\n\
    \\DLEWorkerPollerInfo\DC2'\n\
    \\SIcurrent_pollers\CAN\SOH \SOH(\ENQR\SOcurrentPollers\DC2U\n\
    \\EMlast_successful_poll_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\SYNlastSuccessfulPollTime\DC2%\n\
    \\SOis_autoscaling\CAN\ETX \SOH(\bR\risAutoscaling\DC2%\n\
    \\SOtarget_pollers\CAN\EOT \SOH(\ENQR\rtargetPollers\"\137\ETX\n\
    \\SIWorkerSlotsInfo\DC26\n\
    \\ETBcurrent_available_slots\CAN\SOH \SOH(\ENQR\NAKcurrentAvailableSlots\DC2,\n\
    \\DC2current_used_slots\CAN\STX \SOH(\ENQR\DLEcurrentUsedSlots\DC2,\n\
    \\DC2slot_supplier_kind\CAN\ETX \SOH(\tR\DLEslotSupplierKind\DC22\n\
    \\NAKtotal_processed_tasks\CAN\EOT \SOH(\ENQR\DC3totalProcessedTasks\DC2,\n\
    \\DC2total_failed_tasks\CAN\ENQ \SOH(\ENQR\DLEtotalFailedTasks\DC2A\n\
    \\GSlast_interval_processed_tasks\CAN\ACK \SOH(\ENQR\SUBlastIntervalProcessedTasks\DC2=\n\
    \\ESClast_interval_failure_tasks\CAN\a \SOH(\ENQR\CANlastIntervalFailureTasks\"\230\SOH\n\
    \\SOWorkerHostInfo\DC2\ESC\n\
    \\thost_name\CAN\SOH \SOH(\tR\bhostName\DC2.\n\
    \\DC3worker_grouping_key\CAN\ENQ \SOH(\tR\DC1workerGroupingKey\DC2\GS\n\
    \\n\
    \process_id\CAN\STX \SOH(\tR\tprocessId\DC23\n\
    \\SYNcurrent_host_cpu_usage\CAN\ETX \SOH(\STXR\DC3currentHostCpuUsage\DC23\n\
    \\SYNcurrent_host_mem_usage\CAN\EOT \SOH(\STXR\DC3currentHostMemUsage\"\245\r\n\
    \\SIWorkerHeartbeat\DC2.\n\
    \\DC3worker_instance_key\CAN\SOH \SOH(\tR\DC1workerInstanceKey\DC2'\n\
    \\SIworker_identity\CAN\STX \SOH(\tR\SOworkerIdentity\DC2C\n\
    \\thost_info\CAN\ETX \SOH(\v2&.temporal.api.worker.v1.WorkerHostInfoR\bhostInfo\DC2\GS\n\
    \\n\
    \task_queue\CAN\EOT \SOH(\tR\ttaskQueue\DC2b\n\
    \\DC2deployment_version\CAN\ENQ \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\DC1deploymentVersion\DC2\EM\n\
    \\bsdk_name\CAN\ACK \SOH(\tR\asdkName\DC2\US\n\
    \\vsdk_version\CAN\a \SOH(\tR\n\
    \sdkVersion\DC2;\n\
    \\ACKstatus\CAN\b \SOH(\SO2#.temporal.api.enums.v1.WorkerStatusR\ACKstatus\DC29\n\
    \\n\
    \start_time\CAN\t \SOH(\v2\SUB.google.protobuf.TimestampR\tstartTime\DC2A\n\
    \\SOheartbeat_time\CAN\n\
    \ \SOH(\v2\SUB.google.protobuf.TimestampR\rheartbeatTime\DC2Z\n\
    \\FSelapsed_since_last_heartbeat\CAN\v \SOH(\v2\EM.google.protobuf.DurationR\EMelapsedSinceLastHeartbeat\DC2`\n\
    \\CANworkflow_task_slots_info\CAN\f \SOH(\v2'.temporal.api.worker.v1.WorkerSlotsInfoR\NAKworkflowTaskSlotsInfo\DC2`\n\
    \\CANactivity_task_slots_info\CAN\r \SOH(\v2'.temporal.api.worker.v1.WorkerSlotsInfoR\NAKactivityTaskSlotsInfo\DC2Z\n\
    \\NAKnexus_task_slots_info\CAN\SO \SOH(\v2'.temporal.api.worker.v1.WorkerSlotsInfoR\DC2nexusTaskSlotsInfo\DC2b\n\
    \\EMlocal_activity_slots_info\CAN\SI \SOH(\v2'.temporal.api.worker.v1.WorkerSlotsInfoR\SYNlocalActivitySlotsInfo\DC2Z\n\
    \\DC4workflow_poller_info\CAN\DLE \SOH(\v2(.temporal.api.worker.v1.WorkerPollerInfoR\DC2workflowPollerInfo\DC2g\n\
    \\ESCworkflow_sticky_poller_info\CAN\DC1 \SOH(\v2(.temporal.api.worker.v1.WorkerPollerInfoR\CANworkflowStickyPollerInfo\DC2Z\n\
    \\DC4activity_poller_info\CAN\DC2 \SOH(\v2(.temporal.api.worker.v1.WorkerPollerInfoR\DC2activityPollerInfo\DC2T\n\
    \\DC1nexus_poller_info\CAN\DC3 \SOH(\v2(.temporal.api.worker.v1.WorkerPollerInfoR\SInexusPollerInfo\DC23\n\
    \\SYNtotal_sticky_cache_hit\CAN\DC4 \SOH(\ENQR\DC3totalStickyCacheHit\DC25\n\
    \\ETBtotal_sticky_cache_miss\CAN\NAK \SOH(\ENQR\DC4totalStickyCacheMiss\DC29\n\
    \\EMcurrent_sticky_cache_size\CAN\SYN \SOH(\ENQR\SYNcurrentStickyCacheSize\DC2<\n\
    \\aplugins\CAN\ETB \ETX(\v2\".temporal.api.worker.v1.PluginInfoR\aplugins\DC2C\n\
    \\adrivers\CAN\CAN \ETX(\v2).temporal.api.worker.v1.StorageDriverInfoR\adrivers\DC2I\n\
    \\venvironment\CAN\EM \SOH(\v2'.temporal.api.worker.v1.EnvironmentInfoR\venvironment\"`\n\
    \\n\
    \WorkerInfo\DC2R\n\
    \\DLEworker_heartbeat\CAN\SOH \SOH(\v2'.temporal.api.worker.v1.WorkerHeartbeatR\SIworkerHeartbeat\"\143\ENQ\n\
    \\SOWorkerListInfo\DC2.\n\
    \\DC3worker_instance_key\CAN\SOH \SOH(\tR\DC1workerInstanceKey\DC2'\n\
    \\SIworker_identity\CAN\STX \SOH(\tR\SOworkerIdentity\DC2\GS\n\
    \\n\
    \task_queue\CAN\ETX \SOH(\tR\ttaskQueue\DC2b\n\
    \\DC2deployment_version\CAN\EOT \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\DC1deploymentVersion\DC2\EM\n\
    \\bsdk_name\CAN\ENQ \SOH(\tR\asdkName\DC2\US\n\
    \\vsdk_version\CAN\ACK \SOH(\tR\n\
    \sdkVersion\DC2;\n\
    \\ACKstatus\CAN\a \SOH(\SO2#.temporal.api.enums.v1.WorkerStatusR\ACKstatus\DC29\n\
    \\n\
    \start_time\CAN\b \SOH(\v2\SUB.google.protobuf.TimestampR\tstartTime\DC2\ESC\n\
    \\thost_name\CAN\t \SOH(\tR\bhostName\DC2.\n\
    \\DC3worker_grouping_key\CAN\n\
    \ \SOH(\tR\DC1workerGroupingKey\DC2\GS\n\
    \\n\
    \process_id\CAN\v \SOH(\tR\tprocessId\DC2<\n\
    \\aplugins\CAN\f \ETX(\v2\".temporal.api.worker.v1.PluginInfoR\aplugins\DC2C\n\
    \\adrivers\CAN\r \ETX(\v2).temporal.api.worker.v1.StorageDriverInfoR\adrivers\":\n\
    \\n\
    \PluginInfo\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\CAN\n\
    \\aversion\CAN\STX \SOH(\tR\aversion\"'\n\
    \\DC1StorageDriverInfo\DC2\DC2\n\
    \\EOTtype\CAN\SOH \SOH(\tR\EOTtype\"\139\DC3\n\
    \\SIEnvironmentInfo\DC2K\n\
    \\bruntimes\CAN\SOH \ETX(\v2/.temporal.api.worker.v1.EnvironmentInfo.RuntimeR\bruntimes\DC2m\n\
    \\DC4hosting_environments\CAN\STX \ETX(\v2:.temporal.api.worker.v1.EnvironmentInfo.HostingEnvironmentR\DC3hostingEnvironments\DC2L\n\
    \\bplatform\CAN\ETX \SOH(\v20.temporal.api.worker.v1.EnvironmentInfo.PlatformR\bplatform\SUB\216\ETX\n\
    \\aRuntime\DC2O\n\
    \\EOTtype\CAN\SOH \SOH(\SO2;.temporal.api.worker.v1.EnvironmentInfo.Runtime.RuntimeTypeR\EOTtype\DC2\CAN\n\
    \\aversion\CAN\STX \SOH(\tR\aversion\"\225\STX\n\
    \\vRuntimeType\DC2\FS\n\
    \\CANRUNTIME_TYPE_UNSPECIFIED\DLE\NUL\DC2\DC4\n\
    \\DLERUNTIME_TYPE_JVM\DLE\SOH\DC2\CAN\n\
    \\DC4RUNTIME_TYPE_CPYTHON\DLE\STX\DC2\NAK\n\
    \\DC1RUNTIME_TYPE_NODE\DLE\ETX\DC2\DC4\n\
    \\DLERUNTIME_TYPE_BUN\DLE\EOT\DC2\SYN\n\
    \\DC2RUNTIME_TYPE_CRUBY\DLE\ENQ\DC2\DC3\n\
    \\SIRUNTIME_TYPE_GO\DLE\ACK\DC2!\n\
    \\GSRUNTIME_TYPE_DOTNET_FRAMEWORK\DLE\a\DC2\FS\n\
    \\CANRUNTIME_TYPE_DOTNET_CORE\DLE\b\DC2\ETB\n\
    \\DC3RUNTIME_TYPE_NATIVE\DLE\t\DC2\ESC\n\
    \\ETBRUNTIME_TYPE_ROADRUNNER\DLE\n\
    \\DC2\SUB\n\
    \\SYNRUNTIME_TYPE_GRAAL_AOT\DLE\v\DC2\ETB\n\
    \\DC3RUNTIME_TYPE_KOTLIN\DLE\f\SUB\224\EOT\n\
    \\DC2HostingEnvironment\DC2e\n\
    \\EOTtype\CAN\SOH \SOH(\SO2Q.temporal.api.worker.v1.EnvironmentInfo.HostingEnvironment.HostingEnvironmentTypeR\EOTtype\DC2\CAN\n\
    \\aversion\CAN\STX \SOH(\tR\aversion\"\200\ETX\n\
    \\SYNHostingEnvironmentType\DC2(\n\
    \$HOSTING_ENVIRONMENT_TYPE_UNSPECIFIED\DLE\NUL\DC2#\n\
    \\USHOSTING_ENVIRONMENT_TYPE_DOCKER\DLE\SOH\DC2 \n\
    \\FSHOSTING_ENVIRONMENT_TYPE_K8S\DLE\STX\DC2'\n\
    \#HOSTING_ENVIRONMENT_TYPE_AWS_LAMBDA\DLE\ETX\DC2$\n\
    \ HOSTING_ENVIRONMENT_TYPE_AWS_ECS\DLE\EOT\DC2-\n\
    \)HOSTING_ENVIRONMENT_TYPE_GOOGLE_CLOUD_RUN\DLE\ACK\DC2.\n\
    \*HOSTING_ENVIRONMENT_TYPE_GOOGLE_APP_ENGINE\DLE\a\DC2.\n\
    \*HOSTING_ENVIRONMENT_TYPE_AZURE_APP_SERVICE\DLE\b\DC2,\n\
    \(HOSTING_ENVIRONMENT_TYPE_AZURE_FUNCTIONS\DLE\t\DC21\n\
    \-HOSTING_ENVIRONMENT_TYPE_AZURE_CONTAINER_APPS\DLE\n\
    \\SUB\136\STX\n\
    \\bPlatform\DC2M\n\
    \\ENQlinux\CAN\SOH \SOH(\v25.temporal.api.worker.v1.EnvironmentInfo.LinuxPlatformH\NULR\ENQlinux\DC2M\n\
    \\ENQmacos\CAN\STX \SOH(\v25.temporal.api.worker.v1.EnvironmentInfo.MacOSPlatformH\NULR\ENQmacos\DC2S\n\
    \\awindows\CAN\ETX \SOH(\v27.temporal.api.worker.v1.EnvironmentInfo.WindowsPlatformH\NULR\awindowsB\t\n\
    \\avariant\SUB\144\STX\n\
    \\rLinuxPlatform\DC2\CAN\n\
    \\aversion\CAN\SOH \SOH(\tR\aversion\DC2X\n\
    \\farchitecture\CAN\STX \SOH(\SO24.temporal.api.worker.v1.EnvironmentInfo.ArchitectureR\farchitecture\DC2N\n\
    \\EOTlibc\CAN\ETX \SOH(\SO2:.temporal.api.worker.v1.EnvironmentInfo.LinuxPlatform.LibcR\EOTlibc\";\n\
    \\EOTLibc\DC2\DC4\n\
    \\DLELIBC_UNSPECIFIED\DLE\NUL\DC2\SO\n\
    \\n\
    \LIBC_GLIBC\DLE\SOH\DC2\r\n\
    \\tLIBC_MUSL\DLE\STX\SUB\131\SOH\n\
    \\rMacOSPlatform\DC2\CAN\n\
    \\aversion\CAN\SOH \SOH(\tR\aversion\DC2X\n\
    \\farchitecture\CAN\STX \SOH(\SO24.temporal.api.worker.v1.EnvironmentInfo.ArchitectureR\farchitecture\SUB\173\STX\n\
    \\SIWindowsPlatform\DC2\CAN\n\
    \\aversion\CAN\SOH \SOH(\tR\aversion\DC2X\n\
    \\farchitecture\CAN\STX \SOH(\SO24.temporal.api.worker.v1.EnvironmentInfo.ArchitectureR\farchitecture\DC2M\n\
    \\ETXcrt\CAN\ETX \SOH(\SO2;.temporal.api.worker.v1.EnvironmentInfo.WindowsPlatform.CrtR\ETXcrt\"W\n\
    \\ETXCrt\DC2\DC3\n\
    \\SICRT_UNSPECIFIED\DLE\NUL\DC2\f\n\
    \\bCRT_UCRT\DLE\SOH\DC2\SO\n\
    \\n\
    \CRT_MSVCRT\DLE\STX\DC2\r\n\
    \\tCRT_MINGW\DLE\ETX\DC2\SO\n\
    \\n\
    \CRT_CYGWIN\DLE\EOT\"\\\n\
    \\fArchitecture\DC2\FS\n\
    \\CANARCHITECTURE_UNSPECIFIED\DLE\NUL\DC2\SYN\n\
    \\DC2ARCHITECTURE_AMD64\DLE\SOH\DC2\SYN\n\
    \\DC2ARCHITECTURE_ARM64\DLE\STX\"q\n\
    \\rWorkerCommand\DC2X\n\
    \\SIcancel_activity\CAN\SOH \SOH(\v2-.temporal.api.worker.v1.CancelActivityCommandH\NULR\SOcancelActivityB\ACK\n\
    \\EOTtype\"6\n\
    \\NAKCancelActivityCommand\DC2\GS\n\
    \\n\
    \task_token\CAN\SOH \SOH(\fR\ttaskToken\"v\n\
    \\DC3WorkerCommandResult\DC2W\n\
    \\SIcancel_activity\CAN\SOH \SOH(\v2,.temporal.api.worker.v1.CancelActivityResultH\NULR\SOcancelActivityB\ACK\n\
    \\EOTtype\"\SYN\n\
    \\DC4CancelActivityResultB\137\SOH\n\
    \\EMio.temporal.api.worker.v1B\fMessageProtoP\SOHZ#go.temporal.io/api/worker/v1;worker\170\STX\CANTemporalio.Api.Worker.V1\234\STX\ESCTemporalio::Api::Worker::V1J\157n\n\
    \\a\DC2\ENQ\NUL\NUL\215\STX\SOH\n\
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
    \\STX\ETX\NUL\DC2\ETX\v\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\f\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\r\NUL2\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\SO\NUL,\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\DLE\NUL\FS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DLE\b\CAN\n\
    \C\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC2\STX\FS\SUB6 Number of polling RPCs that are currently in flight.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DC2\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC2\b\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC2\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC4\STX:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\DC4\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC4\FS5\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC489\n\
    \J\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\ETB\STX\SUB\SUB= Set true if the number of concurrent pollers is auto-scaled\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\ETB\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\ETB\a\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\ETB\CAN\EM\n\
    \\165\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\ESC\STX\ESC\SUB\151\SOH Number of pollers this poller pool is currently targeting, which may differ from current_pollers.\n\
    \ 0 if unknown, such as a poller pool of fixed size.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\ESC\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\ESC\b\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\ESC\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\RS\NUL5\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\RS\b\ETB\n\
    \v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX!\STX$\SUBi Number of slots available for the worker to specific tasks.\n\
    \ May be -1 if the upper bound is not known.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX!\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX!\b\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX!\"#\n\
    \E\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX#\STX\US\SUB8 Number of slots used by the worker for specific tasks.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX#\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX#\b\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX#\GS\RS\n\
    \\156\SOH\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX'\STX \SUB\142\SOH Kind of the slot supplier, which is used to determine how the slots are allocated.\n\
    \ Possible values: \"Fixed | ResourceBased | Custom String\"\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX'\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX'\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX'\RS\US\n\
    \\184\SOH\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX+\STX\"\SUB\170\SOH Total number of tasks processed (completed both successfully and unsuccesfully, or any other way)\n\
    \ by the worker since the worker started. This is a cumulative counter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX+\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX+\b\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX+ !\n\
    \K\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX-\STX\US\SUB> Total number of failed tasks processed by the worker so far.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX-\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX-\b\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX-\GS\RS\n\
    \\222\SOH\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETX2\STX*\SUB\208\SOH Number of tasks processed in since the last heartbeat from the worker.\n\
    \ This is a cumulative counter, and it is reset to 0 each time the worker sends a heartbeat.\n\
    \ Contains both successful and failed tasks.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETX2\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX2\b%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX2()\n\
    \Y\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETX4\STX(\SUBL Number of failed tasks processed since the last heartbeat from the worker.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ENQ\DC2\ETX4\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETX4\b#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETX4&'\n\
    \Q\n\
    \\STX\EOT\STX\DC2\EOT8\NULK\SOH\SUBE Holds everything needed to identify the worker host/process context\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX8\b\SYN\n\
    \&\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX:\STX\ETB\SUB\EM Worker host identifier.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX:\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX:\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX:\NAK\SYN\n\
    \\236\SOH\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX?\STX!\SUB\222\SOH Worker grouping identifier. A key to group workers that share the same client+namespace+process.\n\
    \ This will be used to build the worker command nexus task queue name:\n\
    \ \"temporal-sys/worker-commands/{worker_grouping_key}\"\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX?\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX?\t\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX?\US \n\
    \\139\SOH\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETXC\STX\CAN\SUB~ Worker process identifier. This id only needs to be unique\n\
    \ within one host (so using e.g. a unix pid would be appropriate).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETXC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETXC\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETXC\SYN\ETB\n\
    \x\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETXG\STX#\SUBk System used CPU as a float in the range [0.0, 1.0] where 1.0 is defined as all\n\
    \ cores on the host pegged.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETXG\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETXG\b\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETXG!\"\n\
    \\135\SOH\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETXJ\STX#\SUBz System used memory as a float in the range [0.0, 1.0] where 1.0 is defined as\n\
    \ all available memory on the host is used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETXJ\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETXJ\b\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETXJ!\"\n\
    \\147\STX\n\
    \\STX\EOT\ETX\DC2\ENQQ\NUL\139\SOH\SOH\SUB\133\STX Worker info message, contains information about the worker and its current state.\n\
    \ All information is provided by the worker itself.\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: Removing those words make names less clear. --)\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXQ\b\ETB\n\
    \\151\SOH\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXT\STX!\SUB\137\SOH Worker identifier, should be unique for the namespace.\n\
    \ It is distinct from worker identity, which is not necessarily namespace-unique.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXT\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXT\t\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXT\US \n\
    \\155\SOH\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXX\STX\GS\SUB\141\SOH Worker identity, set by the client, may not be unique.\n\
    \ Usually host_name+(user group name)+process_id, but can be overwritten by the user.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETXX\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXX\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXX\ESC\FS\n\
    \'\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX[\STX\US\SUB\SUB Worker host information.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\ETX[\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX[\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX[\GS\RS\n\
    \;\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX^\STX\CAN\SUB. Task queue this worker is polling for tasks.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETX^\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX^\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX^\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETX`\STXL\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ACK\DC2\ETX`\STX4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETX`5G\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETX`JK\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\ETXb\STX\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ENQ\DC2\ETXb\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETXb\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETXb\DC4\NAK\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ACK\DC2\ETXc\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ENQ\DC2\ETXc\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\SOH\DC2\ETXc\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ETX\DC2\ETXc\ETB\CAN\n\
    \-\n\
    \\EOT\EOT\ETX\STX\a\DC2\ETXf\STX0\SUB  Worker status. Defined by SDK.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ACK\DC2\ETXf\STX$\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\SOH\DC2\ETXf%+\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ETX\DC2\ETXf./\n\
    \i\n\
    \\EOT\EOT\ETX\STX\b\DC2\ETXj\STX+\SUB\\ Worker start time.\n\
    \ It can be used to determine worker uptime. (current time - start time)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ACK\DC2\ETXj\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\SOH\DC2\ETXj\FS&\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ETX\DC2\ETXj)*\n\
    \\195\SOH\n\
    \\EOT\EOT\ETX\STX\t\DC2\ETXn\STX0\SUB\181\SOH Timestamp of this heartbeat, coming from the worker. Worker should set it to \"now\".\n\
    \ Note that this timestamp comes directly from the worker and is subject to workers' clock skew.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\ACK\DC2\ETXn\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\SOH\DC2\ETXn\FS*\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\ETX\DC2\ETXn-/\n\
    \E\n\
    \\EOT\EOT\ETX\STX\n\
    \\DC2\ETXp\STX=\SUB8 Elapsed time since the last heartbeat from the worker.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ACK\DC2\ETXp\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\SOH\DC2\ETXp\ESC7\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ETX\DC2\ETXp:<\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\v\DC2\ETXr\STX0\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\ACK\DC2\ETXr\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\SOH\DC2\ETXr\DC2*\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\ETX\DC2\ETXr-/\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\f\DC2\ETXs\STX0\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\ACK\DC2\ETXs\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\SOH\DC2\ETXs\DC2*\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\ETX\DC2\ETXs-/\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\r\DC2\ETXt\STX-\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\r\ACK\DC2\ETXt\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\r\SOH\DC2\ETXt\DC2'\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\r\ETX\DC2\ETXt*,\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SO\DC2\ETXu\STX1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SO\ACK\DC2\ETXu\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SO\SOH\DC2\ETXu\DC2+\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SO\ETX\DC2\ETXu.0\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SI\DC2\ETXw\STX-\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SI\ACK\DC2\ETXw\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SI\SOH\DC2\ETXw\DC3'\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SI\ETX\DC2\ETXw*,\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\DLE\DC2\ETXx\STX4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\DLE\ACK\DC2\ETXx\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\DLE\SOH\DC2\ETXx\DC3.\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\DLE\ETX\DC2\ETXx13\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\DC1\DC2\ETXy\STX-\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\DC1\ACK\DC2\ETXy\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\DC1\SOH\DC2\ETXy\DC3'\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\DC1\ETX\DC2\ETXy*,\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\DC2\DC2\ETXz\STX*\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\DC2\ACK\DC2\ETXz\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\DC2\SOH\DC2\ETXz\DC3$\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\DC2\ETX\DC2\ETXz')\n\
    \P\n\
    \\EOT\EOT\ETX\STX\DC3\DC2\ETX}\STX$\SUBC A Workflow Task found a cached Workflow Execution to run against.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\DC3\ENQ\DC2\ETX}\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\DC3\SOH\DC2\ETX}\b\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\DC3\ETX\DC2\ETX}!#\n\
    \W\n\
    \\EOT\EOT\ETX\STX\DC4\DC2\ETX\DEL\STX%\SUBJ A Workflow Task did not find a cached Workflow execution to run against.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\DC4\ENQ\DC2\ETX\DEL\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\DC4\SOH\DC2\ETX\DEL\b\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\DC4\ETX\DC2\ETX\DEL\"$\n\
    \O\n\
    \\EOT\EOT\ETX\STX\NAK\DC2\EOT\129\SOH\STX'\SUBA Current cache size, expressed in number of Workflow Executions.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NAK\ENQ\DC2\EOT\129\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NAK\SOH\DC2\EOT\129\SOH\b!\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NAK\ETX\DC2\EOT\129\SOH$&\n\
    \5\n\
    \\EOT\EOT\ETX\STX\SYN\DC2\EOT\132\SOH\STX#\SUB' Plugins currently in use by this SDK.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SYN\EOT\DC2\EOT\132\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SYN\ACK\DC2\EOT\132\SOH\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SYN\SOH\DC2\EOT\132\SOH\SYN\GS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SYN\ETX\DC2\EOT\132\SOH \"\n\
    \3\n\
    \\EOT\EOT\ETX\STX\ETB\DC2\EOT\135\SOH\STX*\SUB% Storage drivers in use by this SDK.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETB\EOT\DC2\EOT\135\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETB\ACK\DC2\EOT\135\SOH\v\FS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETB\SOH\DC2\EOT\135\SOH\GS$\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETB\ETX\DC2\EOT\135\SOH')\n\
    \I\n\
    \\EOT\EOT\ETX\STX\CAN\DC2\EOT\138\SOH\STX#\SUB; Information about the environment this SDK is running in.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\CAN\ACK\DC2\EOT\138\SOH\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\CAN\SOH\DC2\EOT\138\SOH\DC2\GS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\CAN\ETX\DC2\EOT\138\SOH \"\n\
    \,\n\
    \\STX\EOT\EOT\DC2\ACK\142\SOH\NUL\144\SOH\SOH\SUB\RS Detailed worker information.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\142\SOH\b\DC2\n\
    \\f\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\143\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\EOT\143\SOH\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\143\SOH\DC2\"\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\143\SOH%&\n\
    \\188\SOH\n\
    \\STX\EOT\ENQ\DC2\ACK\148\SOH\NUL\189\SOH\SOH\SUB\173\SOH Limited worker information returned in the list response.\n\
    \ When adding fields here, ensure that it is also added to WorkerInfo (as it carries the full worker information).\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\148\SOH\b\SYN\n\
    \\152\SOH\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\151\SOH\STX!\SUB\137\SOH Worker identifier, should be unique for the namespace.\n\
    \ It is distinct from worker identity, which is not necessarily namespace-unique.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\EOT\151\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\151\SOH\t\FS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\151\SOH\US \n\
    \\156\SOH\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\155\SOH\STX\GS\SUB\141\SOH Worker identity, set by the client, may not be unique.\n\
    \ Usually host_name+(user group name)+process_id, but can be overwritten by the user.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\EOT\155\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\155\SOH\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\155\SOH\ESC\FS\n\
    \<\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\EOT\158\SOH\STX\CAN\SUB. Task queue this worker is polling for tasks.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\EOT\158\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\EOT\158\SOH\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\EOT\158\SOH\SYN\ETB\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\EOT\160\SOH\STXL\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ACK\DC2\EOT\160\SOH\STX4\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\EOT\160\SOH5G\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\EOT\160\SOHJK\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\EOT\162\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\ENQ\DC2\EOT\162\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\EOT\162\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\EOT\162\SOH\DC4\NAK\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\ENQ\DC2\EOT\163\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ENQ\DC2\EOT\163\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\SOH\DC2\EOT\163\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ETX\DC2\EOT\163\SOH\ETB\CAN\n\
    \.\n\
    \\EOT\EOT\ENQ\STX\ACK\DC2\EOT\166\SOH\STX0\SUB  Worker status. Defined by SDK.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ACK\ACK\DC2\EOT\166\SOH\STX$\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ACK\SOH\DC2\EOT\166\SOH%+\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ACK\ETX\DC2\EOT\166\SOH./\n\
    \j\n\
    \\EOT\EOT\ENQ\STX\a\DC2\EOT\170\SOH\STX+\SUB\\ Worker start time.\n\
    \ It can be used to determine worker uptime. (current time - start time)\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\a\ACK\DC2\EOT\170\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\a\SOH\DC2\EOT\170\SOH\FS&\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\a\ETX\DC2\EOT\170\SOH)*\n\
    \'\n\
    \\EOT\EOT\ENQ\STX\b\DC2\EOT\173\SOH\STX\ETB\SUB\EM Worker host identifier.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\b\ENQ\DC2\EOT\173\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\b\SOH\DC2\EOT\173\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\b\ETX\DC2\EOT\173\SOH\NAK\SYN\n\
    \\237\SOH\n\
    \\EOT\EOT\ENQ\STX\t\DC2\EOT\178\SOH\STX\"\SUB\222\SOH Worker grouping identifier. A key to group workers that share the same client+namespace+process.\n\
    \ This will be used to build the worker command nexus task queue name:\n\
    \ \"temporal-sys/worker-commands/{worker_grouping_key}\"\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\t\ENQ\DC2\EOT\178\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\t\SOH\DC2\EOT\178\SOH\t\FS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\t\ETX\DC2\EOT\178\SOH\US!\n\
    \\140\SOH\n\
    \\EOT\EOT\ENQ\STX\n\
    \\DC2\EOT\182\SOH\STX\EM\SUB~ Worker process identifier. This id only needs to be unique\n\
    \ within one host (so using e.g. a unix pid would be appropriate).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\n\
    \\ENQ\DC2\EOT\182\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\n\
    \\SOH\DC2\EOT\182\SOH\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\n\
    \\ETX\DC2\EOT\182\SOH\SYN\CAN\n\
    \5\n\
    \\EOT\EOT\ENQ\STX\v\DC2\EOT\185\SOH\STX#\SUB' Plugins currently in use by this SDK.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\v\EOT\DC2\EOT\185\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\v\ACK\DC2\EOT\185\SOH\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\v\SOH\DC2\EOT\185\SOH\SYN\GS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\v\ETX\DC2\EOT\185\SOH \"\n\
    \3\n\
    \\EOT\EOT\ENQ\STX\f\DC2\EOT\188\SOH\STX*\SUB% Storage drivers in use by this SDK.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\f\EOT\DC2\EOT\188\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\f\ACK\DC2\EOT\188\SOH\v\FS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\f\SOH\DC2\EOT\188\SOH\GS$\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\f\ETX\DC2\EOT\188\SOH')\n\
    \\f\n\
    \\STX\EOT\ACK\DC2\ACK\191\SOH\NUL\196\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\191\SOH\b\DC2\n\
    \1\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\193\SOH\EOT\DC4\SUB# The name of the plugin, required.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\EOT\193\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\193\SOH\v\SI\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\193\SOH\DC2\DC3\n\
    \8\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\195\SOH\EOT\ETB\SUB* The version of the plugin, may be empty.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\EOT\195\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\195\SOH\v\DC2\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\195\SOH\NAK\SYN\n\
    \\f\n\
    \\STX\EOT\a\DC2\ACK\198\SOH\NUL\201\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\198\SOH\b\EM\n\
    \1\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\200\SOH\STX\DC2\SUB# The type of the driver, required.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\EOT\200\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\200\SOH\t\r\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\200\SOH\DLE\DC1\n\
    \\f\n\
    \\STX\EOT\b\DC2\ACK\203\SOH\NUL\191\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\203\SOH\b\ETB\n\
    \\SO\n\
    \\EOT\EOT\b\ETX\NUL\DC2\ACK\204\SOH\STX\228\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\b\ETX\NUL\SOH\DC2\EOT\204\SOH\n\
    \\DC1\n\
    \\DLE\n\
    \\ACK\EOT\b\ETX\NUL\EOT\NUL\DC2\ACK\205\SOH\EOT\223\SOH\ENQ\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\EOT\NUL\SOH\DC2\EOT\205\SOH\t\DC4\n\
    \\167\SOH\n\
    \\b\EOT\b\ETX\NUL\EOT\NUL\STX\NUL\DC2\EOT\208\SOH\ACK#\SUB\148\SOH Should never actually be set, exists to follow convention of having a default.\n\
    \ SDKs should just leave `runtimes` empty if none can be determined.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\NUL\SOH\DC2\EOT\208\SOH\ACK\RS\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\NUL\STX\DC2\EOT\208\SOH!\"\n\
    \\DLE\n\
    \\b\EOT\b\ETX\NUL\EOT\NUL\STX\SOH\DC2\EOT\209\SOH\ACK\ESC\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\SOH\SOH\DC2\EOT\209\SOH\ACK\SYN\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\SOH\STX\DC2\EOT\209\SOH\EM\SUB\n\
    \\DLE\n\
    \\b\EOT\b\ETX\NUL\EOT\NUL\STX\STX\DC2\EOT\210\SOH\ACK\US\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\STX\SOH\DC2\EOT\210\SOH\ACK\SUB\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\STX\STX\DC2\EOT\210\SOH\GS\RS\n\
    \\DLE\n\
    \\b\EOT\b\ETX\NUL\EOT\NUL\STX\ETX\DC2\EOT\211\SOH\ACK\FS\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\ETX\SOH\DC2\EOT\211\SOH\ACK\ETB\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\ETX\STX\DC2\EOT\211\SOH\SUB\ESC\n\
    \\DLE\n\
    \\b\EOT\b\ETX\NUL\EOT\NUL\STX\EOT\DC2\EOT\212\SOH\ACK\ESC\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\EOT\SOH\DC2\EOT\212\SOH\ACK\SYN\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\EOT\STX\DC2\EOT\212\SOH\EM\SUB\n\
    \\DLE\n\
    \\b\EOT\b\ETX\NUL\EOT\NUL\STX\ENQ\DC2\EOT\213\SOH\ACK\GS\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\ENQ\SOH\DC2\EOT\213\SOH\ACK\CAN\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\ENQ\STX\DC2\EOT\213\SOH\ESC\FS\n\
    \\DLE\n\
    \\b\EOT\b\ETX\NUL\EOT\NUL\STX\ACK\DC2\EOT\214\SOH\ACK\SUB\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\ACK\SOH\DC2\EOT\214\SOH\ACK\NAK\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\ACK\STX\DC2\EOT\214\SOH\CAN\EM\n\
    \\DLE\n\
    \\b\EOT\b\ETX\NUL\EOT\NUL\STX\a\DC2\EOT\215\SOH\ACK(\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\a\SOH\DC2\EOT\215\SOH\ACK#\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\a\STX\DC2\EOT\215\SOH&'\n\
    \\DLE\n\
    \\b\EOT\b\ETX\NUL\EOT\NUL\STX\b\DC2\EOT\216\SOH\ACK#\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\b\SOH\DC2\EOT\216\SOH\ACK\RS\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\b\STX\DC2\EOT\216\SOH!\"\n\
    \\DLE\n\
    \\b\EOT\b\ETX\NUL\EOT\NUL\STX\t\DC2\EOT\217\SOH\ACK\RS\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\t\SOH\DC2\EOT\217\SOH\ACK\EM\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\t\STX\DC2\EOT\217\SOH\FS\GS\n\
    \\DLE\n\
    \\b\EOT\b\ETX\NUL\EOT\NUL\STX\n\
    \\DC2\EOT\218\SOH\ACK#\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\n\
    \\SOH\DC2\EOT\218\SOH\ACK\GS\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\n\
    \\STX\DC2\EOT\218\SOH \"\n\
    \d\n\
    \\b\EOT\b\ETX\NUL\EOT\NUL\STX\v\DC2\EOT\220\SOH\ACK\"\SUBR Report when the application is compiled ahead-of-time as a GraalVM native image.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\v\SOH\DC2\EOT\220\SOH\ACK\FS\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\v\STX\DC2\EOT\220\SOH\US!\n\
    \e\n\
    \\b\EOT\b\ETX\NUL\EOT\NUL\STX\f\DC2\EOT\222\SOH\ACK\US\SUBS Report when any registered Workflow or Activity implementation is a Kotlin class.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\f\SOH\DC2\EOT\222\SOH\ACK\EM\n\
    \\DC1\n\
    \\t\EOT\b\ETX\NUL\EOT\NUL\STX\f\STX\DC2\EOT\222\SOH\FS\RS\n\
    \*\n\
    \\ACK\EOT\b\ETX\NUL\STX\NUL\DC2\EOT\225\SOH\EOT\EM\SUB\SUB The type of the runtime.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\NUL\ACK\DC2\EOT\225\SOH\EOT\SI\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\NUL\SOH\DC2\EOT\225\SOH\DLE\DC4\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\NUL\ETX\DC2\EOT\225\SOH\ETB\CAN\n\
    \<\n\
    \\ACK\EOT\b\ETX\NUL\STX\SOH\DC2\EOT\227\SOH\EOT\ETB\SUB, The version of the runtime, if obtainable.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\SOH\ENQ\DC2\EOT\227\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\SOH\SOH\DC2\EOT\227\SOH\v\DC2\n\
    \\SI\n\
    \\a\EOT\b\ETX\NUL\STX\SOH\ETX\DC2\EOT\227\SOH\NAK\SYN\n\
    \\SO\n\
    \\EOT\EOT\b\ETX\SOH\DC2\ACK\230\SOH\STX\132\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\b\ETX\SOH\SOH\DC2\EOT\230\SOH\n\
    \\FS\n\
    \\181\SOH\n\
    \\ACK\EOT\b\ETX\SOH\EOT\NUL\DC2\ACK\233\SOH\EOT\255\SOH\ENQ\SUB\162\SOH What kind of hosting environment we're running in. This list is about what can actually be\n\
    \ detected reliably and is unrelated to what SDKs can actually run in.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\EOT\NUL\SOH\DC2\EOT\233\SOH\t\US\n\
    \\179\SOH\n\
    \\b\EOT\b\ETX\SOH\EOT\NUL\STX\NUL\DC2\EOT\236\SOH\ACK/\SUB\160\SOH Should never actually be set, exists to follow convention of having a default.\n\
    \ SDKs should just leave `hosting_environments` empty if none can be determined.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\b\ETX\SOH\EOT\NUL\STX\NUL\SOH\DC2\EOT\236\SOH\ACK*\n\
    \\DC1\n\
    \\t\EOT\b\ETX\SOH\EOT\NUL\STX\NUL\STX\DC2\EOT\236\SOH-.\n\
    \[\n\
    \\b\EOT\b\ETX\SOH\EOT\NUL\STX\SOH\DC2\EOT\238\SOH\ACK*\SUBI Should always be in the list if we're running inside a docker container\n\
    \\n\
    \\DC1\n\
    \\t\EOT\b\ETX\SOH\EOT\NUL\STX\SOH\SOH\DC2\EOT\238\SOH\ACK%\n\
    \\DC1\n\
    \\t\EOT\b\ETX\SOH\EOT\NUL\STX\SOH\STX\DC2\EOT\238\SOH()\n\
    \\\\n\
    \\b\EOT\b\ETX\SOH\EOT\NUL\STX\STX\DC2\EOT\240\SOH\ACK'\SUBJ Should always be in the list if we're running inside any k8s environment\n\
    \\n\
    \\DC1\n\
    \\t\EOT\b\ETX\SOH\EOT\NUL\STX\STX\SOH\DC2\EOT\240\SOH\ACK\"\n\
    \\DC1\n\
    \\t\EOT\b\ETX\SOH\EOT\NUL\STX\STX\STX\DC2\EOT\240\SOH%&\n\
    \9\n\
    \\b\EOT\b\ETX\SOH\EOT\NUL\STX\ETX\DC2\EOT\242\SOH\ACK.\SUB' Detect via `AWS_LAMBDA_FUNCTION_NAME`\n\
    \\n\
    \\DC1\n\
    \\t\EOT\b\ETX\SOH\EOT\NUL\STX\ETX\SOH\DC2\EOT\242\SOH\ACK)\n\
    \\DC1\n\
    \\t\EOT\b\ETX\SOH\EOT\NUL\STX\ETX\STX\DC2\EOT\242\SOH,-\n\
    \^\n\
    \\b\EOT\b\ETX\SOH\EOT\NUL\STX\EOT\DC2\EOT\244\SOH\ACK+\SUBL Detect via `ECS_CONTAINER_METADATA_URI_V4` or `ECS_CONTAINER_METADATA_URI`\n\
    \\n\
    \\DC1\n\
    \\t\EOT\b\ETX\SOH\EOT\NUL\STX\EOT\SOH\DC2\EOT\244\SOH\ACK&\n\
    \\DC1\n\
    \\t\EOT\b\ETX\SOH\EOT\NUL\STX\EOT\STX\DC2\EOT\244\SOH)*\n\
    \*\n\
    \\b\EOT\b\ETX\SOH\EOT\NUL\STX\ENQ\DC2\EOT\246\SOH\ACK4\SUB\CAN Detect via `K_SERVICE`\n\
    \\n\
    \\DC1\n\
    \\t\EOT\b\ETX\SOH\EOT\NUL\STX\ENQ\SOH\DC2\EOT\246\SOH\ACK/\n\
    \\DC1\n\
    \\t\EOT\b\ETX\SOH\EOT\NUL\STX\ENQ\STX\DC2\EOT\246\SOH23\n\
    \,\n\
    \\b\EOT\b\ETX\SOH\EOT\NUL\STX\ACK\DC2\EOT\248\SOH\ACK5\SUB\SUB Detect via `GAE_SERVICE`\n\
    \\n\
    \\DC1\n\
    \\t\EOT\b\ETX\SOH\EOT\NUL\STX\ACK\SOH\DC2\EOT\248\SOH\ACK0\n\
    \\DC1\n\
    \\t\EOT\b\ETX\SOH\EOT\NUL\STX\ACK\STX\DC2\EOT\248\SOH34\n\
    \2\n\
    \\b\EOT\b\ETX\SOH\EOT\NUL\STX\a\DC2\EOT\250\SOH\ACK5\SUB  Detect via `WEBSITE_SITE_NAME`\n\
    \\n\
    \\DC1\n\
    \\t\EOT\b\ETX\SOH\EOT\NUL\STX\a\SOH\DC2\EOT\250\SOH\ACK0\n\
    \\DC1\n\
    \\t\EOT\b\ETX\SOH\EOT\NUL\STX\a\STX\DC2\EOT\250\SOH34\n\
    \<\n\
    \\b\EOT\b\ETX\SOH\EOT\NUL\STX\b\DC2\EOT\252\SOH\ACK3\SUB* Detect via `FUNCTIONS_EXTENSION_VERSION`\n\
    \\n\
    \\DC1\n\
    \\t\EOT\b\ETX\SOH\EOT\NUL\STX\b\SOH\DC2\EOT\252\SOH\ACK.\n\
    \\DC1\n\
    \\t\EOT\b\ETX\SOH\EOT\NUL\STX\b\STX\DC2\EOT\252\SOH12\n\
    \3\n\
    \\b\EOT\b\ETX\SOH\EOT\NUL\STX\t\DC2\EOT\254\SOH\ACK9\SUB! Detect via `CONTAINER_APP_NAME`\n\
    \\n\
    \\DC1\n\
    \\t\EOT\b\ETX\SOH\EOT\NUL\STX\t\SOH\DC2\EOT\254\SOH\ACK3\n\
    \\DC1\n\
    \\t\EOT\b\ETX\SOH\EOT\NUL\STX\t\STX\DC2\EOT\254\SOH68\n\
    \2\n\
    \\ACK\EOT\b\ETX\SOH\STX\NUL\DC2\EOT\129\STX\EOT$\SUB\" The type of hosting environment.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\NUL\ACK\DC2\EOT\129\STX\EOT\SUB\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\NUL\SOH\DC2\EOT\129\STX\ESC\US\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\NUL\ETX\DC2\EOT\129\STX\"#\n\
    \H\n\
    \\ACK\EOT\b\ETX\SOH\STX\SOH\DC2\EOT\131\STX\EOT\ETB\SUB8 The version of the hosting environment, if obtainable.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\SOH\ENQ\DC2\EOT\131\STX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\SOH\SOH\DC2\EOT\131\STX\v\DC2\n\
    \\SI\n\
    \\a\EOT\b\ETX\SOH\STX\SOH\ETX\DC2\EOT\131\STX\NAK\SYN\n\
    \\SO\n\
    \\EOT\EOT\b\EOT\NUL\DC2\ACK\134\STX\STX\138\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\b\EOT\NUL\SOH\DC2\EOT\134\STX\a\DC3\n\
    \\SO\n\
    \\ACK\EOT\b\EOT\NUL\STX\NUL\DC2\EOT\135\STX\EOT!\n\
    \\SI\n\
    \\a\EOT\b\EOT\NUL\STX\NUL\SOH\DC2\EOT\135\STX\EOT\FS\n\
    \\SI\n\
    \\a\EOT\b\EOT\NUL\STX\NUL\STX\DC2\EOT\135\STX\US \n\
    \\SO\n\
    \\ACK\EOT\b\EOT\NUL\STX\SOH\DC2\EOT\136\STX\EOT\ESC\n\
    \\SI\n\
    \\a\EOT\b\EOT\NUL\STX\SOH\SOH\DC2\EOT\136\STX\EOT\SYN\n\
    \\SI\n\
    \\a\EOT\b\EOT\NUL\STX\SOH\STX\DC2\EOT\136\STX\EM\SUB\n\
    \\SO\n\
    \\ACK\EOT\b\EOT\NUL\STX\STX\DC2\EOT\137\STX\EOT\ESC\n\
    \\SI\n\
    \\a\EOT\b\EOT\NUL\STX\STX\SOH\DC2\EOT\137\STX\EOT\SYN\n\
    \\SI\n\
    \\a\EOT\b\EOT\NUL\STX\STX\STX\DC2\EOT\137\STX\EM\SUB\n\
    \\SO\n\
    \\EOT\EOT\b\ETX\STX\DC2\ACK\140\STX\STX\146\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\b\ETX\STX\SOH\DC2\EOT\140\STX\n\
    \\DC2\n\
    \\DLE\n\
    \\ACK\EOT\b\ETX\STX\b\NUL\DC2\ACK\141\STX\EOT\145\STX\ENQ\n\
    \\SI\n\
    \\a\EOT\b\ETX\STX\b\NUL\SOH\DC2\EOT\141\STX\n\
    \\DC1\n\
    \\SO\n\
    \\ACK\EOT\b\ETX\STX\STX\NUL\DC2\EOT\142\STX\ACK\RS\n\
    \\SI\n\
    \\a\EOT\b\ETX\STX\STX\NUL\ACK\DC2\EOT\142\STX\ACK\DC3\n\
    \\SI\n\
    \\a\EOT\b\ETX\STX\STX\NUL\SOH\DC2\EOT\142\STX\DC4\EM\n\
    \\SI\n\
    \\a\EOT\b\ETX\STX\STX\NUL\ETX\DC2\EOT\142\STX\FS\GS\n\
    \\SO\n\
    \\ACK\EOT\b\ETX\STX\STX\SOH\DC2\EOT\143\STX\ACK\RS\n\
    \\SI\n\
    \\a\EOT\b\ETX\STX\STX\SOH\ACK\DC2\EOT\143\STX\ACK\DC3\n\
    \\SI\n\
    \\a\EOT\b\ETX\STX\STX\SOH\SOH\DC2\EOT\143\STX\DC4\EM\n\
    \\SI\n\
    \\a\EOT\b\ETX\STX\STX\SOH\ETX\DC2\EOT\143\STX\FS\GS\n\
    \\SO\n\
    \\ACK\EOT\b\ETX\STX\STX\STX\DC2\EOT\144\STX\ACK\"\n\
    \\SI\n\
    \\a\EOT\b\ETX\STX\STX\STX\ACK\DC2\EOT\144\STX\ACK\NAK\n\
    \\SI\n\
    \\a\EOT\b\ETX\STX\STX\STX\SOH\DC2\EOT\144\STX\SYN\GS\n\
    \\SI\n\
    \\a\EOT\b\ETX\STX\STX\STX\ETX\DC2\EOT\144\STX !\n\
    \\SO\n\
    \\EOT\EOT\b\ETX\ETX\DC2\ACK\148\STX\STX\160\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\b\ETX\ETX\SOH\DC2\EOT\148\STX\n\
    \\ETB\n\
    \\DLE\n\
    \\ACK\EOT\b\ETX\ETX\EOT\NUL\DC2\ACK\149\STX\EOT\153\STX\ENQ\n\
    \\SI\n\
    \\a\EOT\b\ETX\ETX\EOT\NUL\SOH\DC2\EOT\149\STX\t\r\n\
    \\DLE\n\
    \\b\EOT\b\ETX\ETX\EOT\NUL\STX\NUL\DC2\EOT\150\STX\ACK\ESC\n\
    \\DC1\n\
    \\t\EOT\b\ETX\ETX\EOT\NUL\STX\NUL\SOH\DC2\EOT\150\STX\ACK\SYN\n\
    \\DC1\n\
    \\t\EOT\b\ETX\ETX\EOT\NUL\STX\NUL\STX\DC2\EOT\150\STX\EM\SUB\n\
    \\DLE\n\
    \\b\EOT\b\ETX\ETX\EOT\NUL\STX\SOH\DC2\EOT\151\STX\ACK\NAK\n\
    \\DC1\n\
    \\t\EOT\b\ETX\ETX\EOT\NUL\STX\SOH\SOH\DC2\EOT\151\STX\ACK\DLE\n\
    \\DC1\n\
    \\t\EOT\b\ETX\ETX\EOT\NUL\STX\SOH\STX\DC2\EOT\151\STX\DC3\DC4\n\
    \\DLE\n\
    \\b\EOT\b\ETX\ETX\EOT\NUL\STX\STX\DC2\EOT\152\STX\ACK\DC4\n\
    \\DC1\n\
    \\t\EOT\b\ETX\ETX\EOT\NUL\STX\STX\SOH\DC2\EOT\152\STX\ACK\SI\n\
    \\DC1\n\
    \\t\EOT\b\ETX\ETX\EOT\NUL\STX\STX\STX\DC2\EOT\152\STX\DC2\DC3\n\
    \J\n\
    \\ACK\EOT\b\ETX\ETX\STX\NUL\DC2\EOT\155\STX\EOT\ETB\SUB: The Linux kernel or distribution version, if obtainable.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\ETX\STX\NUL\ENQ\DC2\EOT\155\STX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\ETX\STX\NUL\SOH\DC2\EOT\155\STX\v\DC2\n\
    \\SI\n\
    \\a\EOT\b\ETX\ETX\STX\NUL\ETX\DC2\EOT\155\STX\NAK\SYN\n\
    \9\n\
    \\ACK\EOT\b\ETX\ETX\STX\SOH\DC2\EOT\157\STX\EOT\"\SUB) The architecture of the worker process.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\ETX\STX\SOH\ACK\DC2\EOT\157\STX\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\b\ETX\ETX\STX\SOH\SOH\DC2\EOT\157\STX\DC1\GS\n\
    \\SI\n\
    \\a\EOT\b\ETX\ETX\STX\SOH\ETX\DC2\EOT\157\STX !\n\
    \6\n\
    \\ACK\EOT\b\ETX\ETX\STX\STX\DC2\EOT\159\STX\EOT\DC2\SUB& The libc used by the worker process.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\ETX\STX\STX\ACK\DC2\EOT\159\STX\EOT\b\n\
    \\SI\n\
    \\a\EOT\b\ETX\ETX\STX\STX\SOH\DC2\EOT\159\STX\t\r\n\
    \\SI\n\
    \\a\EOT\b\ETX\ETX\STX\STX\ETX\DC2\EOT\159\STX\DLE\DC1\n\
    \\SO\n\
    \\EOT\EOT\b\ETX\EOT\DC2\ACK\162\STX\STX\167\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\b\ETX\EOT\SOH\DC2\EOT\162\STX\n\
    \\ETB\n\
    \3\n\
    \\ACK\EOT\b\ETX\EOT\STX\NUL\DC2\EOT\164\STX\EOT\ETB\SUB# The macOS version, if obtainable.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\EOT\STX\NUL\ENQ\DC2\EOT\164\STX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\EOT\STX\NUL\SOH\DC2\EOT\164\STX\v\DC2\n\
    \\SI\n\
    \\a\EOT\b\ETX\EOT\STX\NUL\ETX\DC2\EOT\164\STX\NAK\SYN\n\
    \9\n\
    \\ACK\EOT\b\ETX\EOT\STX\SOH\DC2\EOT\166\STX\EOT\"\SUB) The architecture of the worker process.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\EOT\STX\SOH\ACK\DC2\EOT\166\STX\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\b\ETX\EOT\STX\SOH\SOH\DC2\EOT\166\STX\DC1\GS\n\
    \\SI\n\
    \\a\EOT\b\ETX\EOT\STX\SOH\ETX\DC2\EOT\166\STX !\n\
    \\SO\n\
    \\EOT\EOT\b\ETX\ENQ\DC2\ACK\169\STX\STX\183\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\b\ETX\ENQ\SOH\DC2\EOT\169\STX\n\
    \\EM\n\
    \\DLE\n\
    \\ACK\EOT\b\ETX\ENQ\EOT\NUL\DC2\ACK\170\STX\EOT\176\STX\ENQ\n\
    \\SI\n\
    \\a\EOT\b\ETX\ENQ\EOT\NUL\SOH\DC2\EOT\170\STX\t\f\n\
    \\DLE\n\
    \\b\EOT\b\ETX\ENQ\EOT\NUL\STX\NUL\DC2\EOT\171\STX\ACK\SUB\n\
    \\DC1\n\
    \\t\EOT\b\ETX\ENQ\EOT\NUL\STX\NUL\SOH\DC2\EOT\171\STX\ACK\NAK\n\
    \\DC1\n\
    \\t\EOT\b\ETX\ENQ\EOT\NUL\STX\NUL\STX\DC2\EOT\171\STX\CAN\EM\n\
    \\DLE\n\
    \\b\EOT\b\ETX\ENQ\EOT\NUL\STX\SOH\DC2\EOT\172\STX\ACK\DC3\n\
    \\DC1\n\
    \\t\EOT\b\ETX\ENQ\EOT\NUL\STX\SOH\SOH\DC2\EOT\172\STX\ACK\SO\n\
    \\DC1\n\
    \\t\EOT\b\ETX\ENQ\EOT\NUL\STX\SOH\STX\DC2\EOT\172\STX\DC1\DC2\n\
    \\DLE\n\
    \\b\EOT\b\ETX\ENQ\EOT\NUL\STX\STX\DC2\EOT\173\STX\ACK\NAK\n\
    \\DC1\n\
    \\t\EOT\b\ETX\ENQ\EOT\NUL\STX\STX\SOH\DC2\EOT\173\STX\ACK\DLE\n\
    \\DC1\n\
    \\t\EOT\b\ETX\ENQ\EOT\NUL\STX\STX\STX\DC2\EOT\173\STX\DC3\DC4\n\
    \\DLE\n\
    \\b\EOT\b\ETX\ENQ\EOT\NUL\STX\ETX\DC2\EOT\174\STX\ACK\DC4\n\
    \\DC1\n\
    \\t\EOT\b\ETX\ENQ\EOT\NUL\STX\ETX\SOH\DC2\EOT\174\STX\ACK\SI\n\
    \\DC1\n\
    \\t\EOT\b\ETX\ENQ\EOT\NUL\STX\ETX\STX\DC2\EOT\174\STX\DC2\DC3\n\
    \\DLE\n\
    \\b\EOT\b\ETX\ENQ\EOT\NUL\STX\EOT\DC2\EOT\175\STX\ACK\NAK\n\
    \\DC1\n\
    \\t\EOT\b\ETX\ENQ\EOT\NUL\STX\EOT\SOH\DC2\EOT\175\STX\ACK\DLE\n\
    \\DC1\n\
    \\t\EOT\b\ETX\ENQ\EOT\NUL\STX\EOT\STX\DC2\EOT\175\STX\DC3\DC4\n\
    \5\n\
    \\ACK\EOT\b\ETX\ENQ\STX\NUL\DC2\EOT\178\STX\EOT\ETB\SUB% The Windows version, if obtainable.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\ENQ\STX\NUL\ENQ\DC2\EOT\178\STX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\ENQ\STX\NUL\SOH\DC2\EOT\178\STX\v\DC2\n\
    \\SI\n\
    \\a\EOT\b\ETX\ENQ\STX\NUL\ETX\DC2\EOT\178\STX\NAK\SYN\n\
    \9\n\
    \\ACK\EOT\b\ETX\ENQ\STX\SOH\DC2\EOT\180\STX\EOT\"\SUB) The architecture of the worker process.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\ENQ\STX\SOH\ACK\DC2\EOT\180\STX\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\b\ETX\ENQ\STX\SOH\SOH\DC2\EOT\180\STX\DC1\GS\n\
    \\SI\n\
    \\a\EOT\b\ETX\ENQ\STX\SOH\ETX\DC2\EOT\180\STX !\n\
    \J\n\
    \\ACK\EOT\b\ETX\ENQ\STX\STX\DC2\EOT\182\STX\EOT\DLE\SUB: The C runtime used by the worker process, if obtainable.\n\
    \\n\
    \\SI\n\
    \\a\EOT\b\ETX\ENQ\STX\STX\ACK\DC2\EOT\182\STX\EOT\a\n\
    \\SI\n\
    \\a\EOT\b\ETX\ENQ\STX\STX\SOH\DC2\EOT\182\STX\b\v\n\
    \\SI\n\
    \\a\EOT\b\ETX\ENQ\STX\STX\ETX\DC2\EOT\182\STX\SO\SI\n\
    \7\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\186\STX\STX \SUB) The runtime(s) the SDK is operating in.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\EOT\186\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\EOT\186\STX\v\DC2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\186\STX\DC3\ESC\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\186\STX\RS\US\n\
    \{\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\188\STX\STX7\SUBm The hosting environment(s) the SDK is operating in. Repeated to allow for layering (ex: Docker inside k8s).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\EOT\DC2\EOT\188\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ACK\DC2\EOT\188\STX\v\GS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\188\STX\RS2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\188\STX56\n\
    \5\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT\190\STX\STX\CAN\SUB' The platform the SDK is operating on.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ACK\DC2\EOT\190\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\190\STX\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\190\STX\SYN\ETB\n\
    \;\n\
    \\STX\EOT\t\DC2\ACK\194\STX\NUL\198\STX\SOH\SUB- A command sent from the server to a worker.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\194\STX\b\NAK\n\
    \\SO\n\
    \\EOT\EOT\t\b\NUL\DC2\ACK\195\STX\STX\197\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\t\b\NUL\SOH\DC2\EOT\195\STX\b\f\n\
    \\f\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\196\STX\EOT.\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\196\STX\EOT\EM\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\196\STX\SUB)\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\196\STX,-\n\
    \Q\n\
    \\STX\EOT\n\
    \\DC2\ACK\201\STX\NUL\203\STX\SOH\SUBC Cancel an activity if it is still running. Otherwise, do nothing.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\201\STX\b\GS\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\202\STX\STX\ETB\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\202\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\202\STX\b\DC2\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\202\STX\NAK\SYN\n\
    \8\n\
    \\STX\EOT\v\DC2\ACK\206\STX\NUL\210\STX\SOH\SUB* The result of executing a WorkerCommand.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\206\STX\b\ESC\n\
    \\SO\n\
    \\EOT\EOT\v\b\NUL\DC2\ACK\207\STX\STX\209\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\v\b\NUL\SOH\DC2\EOT\207\STX\b\f\n\
    \\f\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\208\STX\EOT-\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ACK\DC2\EOT\208\STX\EOT\CAN\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\208\STX\EM(\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\208\STX+,\n\
    \\140\SOH\n\
    \\STX\EOT\f\DC2\ACK\214\STX\NUL\215\STX\SOH\SUB~ Result of a CancelActivityCommand.\n\
    \ Treat both successful cancellation and no-op (activity is no longer running) as success.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\214\STX\b\FSb\ACKproto3"