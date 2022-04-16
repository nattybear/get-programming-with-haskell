{-# LANGUAGE OverloadedStrings #-}
import System.Random
import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as BC

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
