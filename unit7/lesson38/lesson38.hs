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

succSafer :: (Eq a, Enum a, Bounded a)
          => a -> Maybe a
succSafer x
  | x == maxBound = Nothing
  | otherwise     = Just $ succ x

tailSafer :: [a] -> [a]
tailSafer []     = []
tailSafer (_:xs) = xs

safeLast :: [a] -> Either a String
safeLast [] = Right "empty list"
safeLast xs = safeLast' 10000 xs

safeLast' :: Int -> [a] -> Either a String
safeLast' 0 _ = Right "List exceeds safe bound"
safeLast' _ (x:[]) = Left x
safeLast' n (x:xs) = safeLast' (n - 1) xs
