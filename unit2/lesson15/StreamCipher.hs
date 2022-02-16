import Bits
import Cipher
import Xor

data StreamCipher = StreamCipher Int

instance Cipher StreamCipher where
  encode (StreamCipher seed) text = applyStream seed text
  decode = encode

prng :: Int -> Int -> Int -> Int -> Int
prng a b maxNumber seed = (a*seed + b) `mod` maxNumber

examplePRNG :: Int -> Int
examplePRNG = prng 1337 7 100

applyStream' :: Int -> String -> [Bits]
applyStream' seed plaintext = zipWith xor streamBits plaintextBits
  where streams = iterate examplePRNG seed
        streamBits = map intToBits streams
        plaintextBits = map charToBits plaintext

applyStream :: Int -> String -> String
applyStream seed plaintext = map bitsToChar bitList
  where bitList = applyStream' seed plaintext
