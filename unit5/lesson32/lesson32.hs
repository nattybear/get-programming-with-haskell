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
