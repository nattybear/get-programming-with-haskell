considerThis :: [Int]
considerThis = [ x | x <- [1..19], odd x ]

powersOfTwo :: Int -> [Int]
powersOfTwo n = do
  value <- [1 .. n]
  return (2^value)

powersOfTwoMap :: Int -> [Int]
powersOfTwoMap n = map (\x -> 2^x) [1 .. n]

powersOfTwoAndThree :: Int -> [(Int, Int)]
powersOfTwoAndThree n = do
  value <- [1 .. n]
  let powersOfTwo   = 2^value
      powersOfThree = 3^value
  return (powersOfTwo, powersOfThree)

allEvenOdds :: Int -> [(Int,Int)]
allEvenOdds n = do
  evenValue <- [2,4 .. n]
  oddValue  <- [1,3 .. n]
  return (evenValue, oddValue)

valAndSquare :: [(Int,Int)]
valAndSquare = do
  val <- [1 .. 10]
  return (val, val^2)
