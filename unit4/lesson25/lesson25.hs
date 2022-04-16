{-# LANGUAGE OverloadedStrings #-}
import qualified Data.ByteString as B

sampleBytes :: B.ByteString
sampleBytes = "Hello!"

sampleString :: String
sampleString = B.unpack sampleBytes
