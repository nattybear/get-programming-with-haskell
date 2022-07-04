import Control.Monad
import Data.Char

considerThis :: [Int]
considerThis = [ x | x <- [1..19], odd x ]

powersOfTwo :: Int -> [Int]
powersOfTwo n = [value^2 | value <- [1 .. n]]

powersOfTwoMap :: Int -> [Int]
powersOfTwoMap n = map (\x -> 2^x) [1 .. n]

powersOfTwoAndThree :: Int -> [(Int, Int)]
powersOfTwoAndThree n = [(powersOfTwo,powersOfThree)
                        | value <- [1 .. n]
                        , let powersOfTwo = 2^value
                        , let powersOfThree = 3^value]

allEvenOdds :: Int -> [(Int,Int)]
allEvenOdds n = [(evenValue,oddValue) | evenValue <- [2,4 .. n]
                                      , oddValue  <- [1,3 .. n]]

valAndSquare :: [(Int,Int)]
valAndSquare = do
  val <- [1 .. 10]
  return (val, val^2)

evensGuard :: Int -> [Int]
evensGuard n = [ value | value <- [1 .. n], even value]

filter' :: (a -> Bool) -> [a] -> [a]
filter' f xs = do
  x <- xs
  guard (f x)
  return x

evenSquares :: [Int]
evenSquares = do
  n <- [0 .. 9]
  let nSquared = n^2
  guard (even nSquared)
  return nSquared

colors = ["brown", "blue", "pink", "orange"]

answer :: [String]
answer = ["Mr. " ++ capVal | val <- colors
                           , let capVal = (\(x:xs) ->
                                            toUpper x:xs) val]
