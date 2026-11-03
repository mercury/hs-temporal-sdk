{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveLift #-}
{-# LANGUAGE NumericUnderscores #-}
{-# LANGUAGE UnboxedTuples #-}

{- |
Module: Temporal.Duration
Description: Effecient and user-friendly time durations

Convenient units of time for use with timers and timeouts.

Anything longer than a week (Months, Years) becomes ambiguous because they
are variable length. For example, a month can be 28, 29, 30, or 31 days.

If you need to represent a duration as years or months, you may want to use the @time@
library to normalize against a specific time zone and then convert the difference
between now and then into a Duration.

Alternatively, consider using Temporal's scheduling features to schedule a workflow
to run at one or more specific times in the future.
-}
module Temporal.Duration (
  Duration,
  durationSeconds,
  durationNanoseconds,
  mkDuration,
  addDurations,
  diffTimeToDuration,
  nominalDiffTimeToDuration,
  nanoseconds,
  microseconds,
  milliseconds,
  seconds,
  minutes,
  hours,
  days,
  weeks,
  infinity,
  durationFromProto,
  durationToProto,
  durationToMilliseconds,
  addDurationToSystemTime,
  diffSystemTime,
  renderDuration,
) where

import Data.Aeson
import Data.Aeson.Types (Parser)
import Data.Data
import Data.Fixed
import Data.Int (Int32, Int64)
import Data.ProtoLens (defMessage)
import qualified Data.Text as T
import Data.Time.Clock
import Data.Time.Clock.System (SystemTime (..))
import Language.Haskell.TH.Syntax (Lift)
import Lens.Family2 ((&), (.~), (^.))
import qualified Proto.Google.Protobuf.Duration as Duration
import qualified Proto.Google.Protobuf.Duration_Fields as Duration
import Text.Printf
import Text.Read (readMaybe)


-- | A duration of time. Durations are always positive.
data Duration = Duration
  { durationSeconds :: {-# UNPACK #-} !Int64
  , durationNanoseconds :: {-# UNPACK #-} !Int32
  }
  deriving stock (Eq, Ord, Show, Data, Lift)


instance Semigroup Duration where
  (<>) = addDurations


instance Monoid Duration where
  mempty = Duration 0 0


mkDuration :: Int64 -> Int32 -> Duration
mkDuration s ns = case normalize s (fromIntegral ns) of
  (# s', ns' #) -> Duration s' ns'


-- | Renders per the protobuf JSON mapping: optional @-@ prefix, integer
-- seconds, 0\/3\/6\/9 fractional digits as needed, then @s@.
instance ToJSON Duration where
  toJSON d = String $ renderDuration d


renderDuration :: Duration -> T.Text
renderDuration (Duration s ns)
  | s == 0 && ns == 0 = "0s"
  | s < 0 || ns < 0 =
      T.cons '-' $ renderPositive (abs s) (fromIntegral (abs ns))
  | otherwise =
      renderPositive s (fromIntegral ns)
  where
    renderPositive :: Int64 -> Int64 -> T.Text
    renderPositive secs nanos
      | nanos == 0 = T.pack (show secs) <> "s"
      | nanos `rem` 1_000_000 == 0 =
          T.pack (printf "%d.%03ds" secs (nanos `quot` 1_000_000))
      | nanos `rem` 1_000 == 0 =
          T.pack (printf "%d.%06ds" secs (nanos `quot` 1_000))
      | otherwise =
          T.pack (printf "%d.%09ds" secs nanos)


instance FromJSON Duration where
  parseJSON = withText "Duration" parseDuration


-- | Parse a protobuf-style duration string: @\<decimal\>s@.
-- Accepts any number of fractional digits (including none).
parseDuration :: T.Text -> Parser Duration
parseDuration t = case T.unsnoc t of
  Just (body, 's') -> case parseDurationBody body of
    Right d -> pure d
    Left err -> fail err
  _ -> fail $ "Duration must end with 's', got: " <> show t


parseDurationBody :: T.Text -> Either String Duration
parseDurationBody body = do
  let (isNeg, rest) = case T.uncons body of
        Just ('-', r) -> (True, r)
        _ -> (False, body)
      sign :: (Num a) => a -> a
      sign = if isNeg then negate else id
  case T.splitOn "." rest of
    [wholePart] -> do
      secs <- parseField "seconds" wholePart
      Right $ mkDuration (sign secs) 0
    [wholePart, fracPart]
      | T.null fracPart -> do
          secs <- parseField "seconds" wholePart
          Right $ mkDuration (sign secs) 0
      | otherwise -> do
          secs <- parseField "seconds" wholePart
          nanos <- parseFrac fracPart
          Right $ mkDuration (sign secs) (sign nanos)
    _ -> Left $ "Invalid duration format (multiple '.'): " <> show body
  where
    parseField :: (Read a, Num a) => String -> T.Text -> Either String a
    parseField label txt
      | T.null txt = Right 0
      | otherwise = case readMaybe (T.unpack txt) of
          Just v -> Right v
          Nothing -> Left $ "Could not parse " <> label <> ": " <> show txt

    -- Pad or truncate fractional digits to 9, then parse as nanoseconds.
    parseFrac :: T.Text -> Either String Int32
    parseFrac frac =
      let padded = T.take 9 (frac <> "000000000")
      in case readMaybe (T.unpack padded) of
          Just ns -> Right ns
          Nothing -> Left $ "Could not parse fractional seconds: " <> show frac


-- | Add two durations together. Durations are subject to integer overflow.
addDurations :: Duration -> Duration -> Duration
addDurations (Duration s1 ns1) (Duration s2 ns2) =
  let (# s, ns #) = normalize (s1 + s2) (fromIntegral ns1 + fromIntegral ns2)
  in Duration s ns


normalize :: Int64 -> Int64 -> (# Int64, Int32 #)
normalize !s !ns
  | ns >= 1_000_000_000 = normalize (s + 1) (ns - 1_000_000_000)
  | ns <= -1_000_000_000 = normalize (s - 1) (ns + 1_000_000_000)
  | s > 0 && ns < 0 = normalize (s - 1) (ns + 1_000_000_000)
  | s < 0 && ns > 0 = normalize (s + 1) (ns - 1_000_000_000)
  | otherwise = (# s, fromIntegral ns #)


{- | Convert a 'DiffTime' to a 'Duration'.

N.B. negative 'DiffTime' values will be clamped to 0 (i.e. 'Duration' will be 0)
in order to avoid the conversion of negative 'DiffTime' values to extremely large
Word64 values.
-}
diffTimeToDuration :: DiffTime -> Duration
diffTimeToDuration t =
  mkDuration
    (fromIntegral ds)
    remainingNanosFromPicos
  where
    totalPicos = max 0 (diffTimeToPicoseconds t)
    picosPerSecond = 1_000_000_000_000
    (ds, remainingPicos) = totalPicos `quotRem` picosPerSecond
    remainingNanosFromPicos = fromIntegral $ remainingPicos `div` 1_000


{- | Convert a 'NominalDiffTime' to a 'Duration'.

N.B. negative 'NominalDiffTime' values will be clamped to 0 (i.e. 'Duration' will be 0)
in order to avoid the conversion of negative 'NominalDiffTime' values to extremely large
Word64 values.
-}
nominalDiffTimeToDuration :: NominalDiffTime -> Duration
nominalDiffTimeToDuration t =
  mkDuration
    (fromIntegral ds)
    remainingNanosFromPicos
  where
    (MkFixed totalPicos) = max 0 $ nominalDiffTimeToSeconds t
    picosPerSecond = 1_000_000_000_000
    (ds, remainingPicos) = totalPicos `quotRem` picosPerSecond
    remainingNanosFromPicos = fromIntegral $ remainingPicos `div` 1_000


-- | Create a 'Duration' from a given number of nanoseconds.
nanoseconds :: Integer -> Duration
nanoseconds n = mkDuration (fromIntegral secs) (fromIntegral ns)
  where
    (secs, ns) = n `quotRem` 1_000_000_000


-- | Create a 'Duration' from a given number of microseconds.
microseconds :: Integer -> Duration
microseconds n = mkDuration (fromIntegral secs) (fromIntegral $ ns * 1_000)
  where
    (secs, ns) = n `quotRem` 1_000_000


-- | Create a 'Duration' from a given number of milliseconds.
milliseconds :: Int64 -> Duration
milliseconds n = mkDuration secs $ fromIntegral $ ns * 1_000_000
  where
    (secs, ns) = n `quotRem` 1_000


-- | Create a 'Duration' from a given number of seconds.
seconds :: Int64 -> Duration
seconds n = Duration n 0


-- | Create a 'Duration' from a given number of minutes.
minutes :: Int32 -> Duration
minutes n = Duration (fromIntegral n * 60) 0


-- | Create a 'Duration' from a given number of hours.
hours :: Int32 -> Duration
hours n = Duration (fromIntegral n * 60 * 60) 0


-- | Create a 'Duration' from a given number of days.
days :: Int32 -> Duration
days n = Duration (fromIntegral n * 60 * 60 * 24) 0


-- | Create a 'Duration' from a given number of weeks.
weeks :: Int32 -> Duration
weeks n = Duration (fromIntegral n * 60 * 60 * 24 * 7) 0


-- | A 'Duration' representing the maximum possible length of time. (Approximately 132 years.)
infinity :: Duration
infinity = Duration ((2 :: Int64) ^ (32 :: Int64)) 0


-- | Convert a protocol buffer duration to a 'Duration'.
-- Normalizes the result to ensure seconds and nanoseconds have matching signs
-- and nanoseconds are in @[-999_999_999, 999_999_999]@.
durationFromProto :: Duration.Duration -> Duration
durationFromProto d =
  mkDuration (d ^. Duration.seconds) (d ^. Duration.nanos)


-- | Convert a 'Duration' to a protocol buffer duration.
durationToProto :: Duration -> Duration.Duration
durationToProto ts =
  defMessage
    & Duration.seconds .~ durationSeconds ts
    & Duration.nanos .~ durationNanoseconds ts


{- | Convert a 'Duration' to a milliseconds represented as a 'Double'. This is mostly useful for
human-readable values emitted by logs, metrics, traces, etc.
-}
durationToMilliseconds :: Duration -> Double
durationToMilliseconds (Duration secs ns) = fromIntegral secs * 1_000 + fromIntegral ns / 1_000_000


{- | Add a 'Duration' to a 'SystemTime'. This function handles nanosecond overflow
and maintains the precision of both input types. The result can be negative
through the seconds field, while nanoseconds remain non-negative.
-}
addDurationToSystemTime :: Duration -> SystemTime -> SystemTime
addDurationToSystemTime (Duration durSecs durNanos) (MkSystemTime sysSecs sysNanos) =
  let
    -- Convert Word32 to Int64 for safe addition
    totalNanos = fromIntegral sysNanos + fromIntegral durNanos
    -- Normalize the result to handle nanosecond overflow/underflow
    (# overflowSecs, finalNanos #) = normalize 0 totalNanos
    -- Add all seconds together
    finalSecs = sysSecs + durSecs + overflowSecs
  in
    MkSystemTime finalSecs (fromIntegral finalNanos)


{- | Calculate the duration between two 'SystemTime' values. Returns a 'Duration'
where a negative value indicates that the second time is before the first time.
-}
diffSystemTime :: SystemTime -> SystemTime -> Duration
diffSystemTime (MkSystemTime s1 ns1) (MkSystemTime s2 ns2) =
  let
    -- Calculate total nanoseconds difference
    totalNanos = fromIntegral ns2 - fromIntegral ns1
    -- Calculate seconds difference
    secsDiff = s2 - s1
    -- Normalize the result to handle nanosecond overflow/underflow
    (# finalSecs, finalNanos #) = normalize secsDiff totalNanos
  in
    Duration finalSecs finalNanos
