{-# LANGUAGE OverloadedStrings #-}
import qualified Data.Text as T
import Data.Semigroup

firstWord :: String
firstWord = "pessimism"

secondWord :: T.Text
secondWord = T.pack firstWord

thirdWord :: String
thirdWord = T.unpack secondWord

fourthWord :: T.Text
fourthWord = T.pack thirdWord

myWord :: T.Text
myWord = "dog"

myNum1 :: Int
myNum1 = 3

myNum2 :: Integer
myNum2 = 3

myNum3 :: Double
myNum3 = 3

aWord :: T.Text
aWord = "Cheese"

main :: IO ()
main = do
  print aWord

sampleInput :: T.Text
sampleInput = "this\nis\ninput"

someText :: T.Text
someText = "Some\ntext for\t you"

breakText :: T.Text
breakText = "simple"

exampleText :: T.Text
exampleText = "This is simple to do"

combinedTextMonoid :: T.Text
combinedTextMonoid = mconcat ["some"," ","text"]

combinedTextSemigroup :: T.Text
combinedTextSemigroup = "some" <> " " <> "text"

lines' :: T.Text -> [T.Text]
lines' = T.splitOn "\n"

unlines' :: [T.Text] -> T.Text
unlines' = T.intercalate "\n"

dharma :: T.Text
dharma = "धर्म"
