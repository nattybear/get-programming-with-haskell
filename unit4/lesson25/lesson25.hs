{-# LANGUAGE OverloadedStrings #-}
import System.Random
import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as BC
import qualified Data.Text as T
import qualified Data.Text.IO as TIO
import qualified Data.Text.Encoding as E

sampleBytes :: B.ByteString
sampleBytes = "Hello!"

sampleString :: String
sampleString = BC.unpack sampleBytes

bcInt :: BC.ByteString
bcInt = "6"

bcToInt :: BC.ByteString -> Int
bcToInt = read . BC.unpack

randomChar :: IO Char
randomChar = do
  randomInt <- randomRIO (0,255)
  return (toEnum randomInt)

fooBC :: BC.ByteString
fooBC = "준규"

fooText :: T.Text
fooText = "준규"

fooB :: B.ByteString
fooB = (BC.pack . T.unpack) fooText

fooSafe :: B.ByteString
fooSafe = E.encodeUtf8 fooText
