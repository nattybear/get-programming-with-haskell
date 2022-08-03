import Data.Char (isDigit)

data ParseError = First | Second | Neither

instance Show ParseError where
  show First   = "First value can't be parsed"
  show Second  = "Second value can't be parsed"
  show Neither = "Neither value can be parsed"

addStrInts :: String -> String -> Either ParseError Int
addStrInts s1 s2
  = case (isNumber s1, isNumber s2) of
      (True,  True)  -> Right $ read s1 + read s2
      (False, True)  -> Left First
      (True,  False) -> Left Second
      _              -> Left Neither

isNumber :: String -> Bool
isNumber = all isDigit
