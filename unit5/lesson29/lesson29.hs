doorPrize :: [Int]
doorPrize = [1000,2000,3000]

boxPrize :: [Int]
boxPrize = [500,20000]

totalPrize :: [Int]
totalPrize = pure (+) <*> doorPrize <*> boxPrize

primesToN :: Integer -> [Integer]
primesToN n = filter isNotComposite twoThroughN
  where twoThroughN = [2 .. n]
        composite = pure (*) <*> twoThroughN <*> twoThroughN
        isNotComposite = not . (`elem` composite)

data User = User {
    name    :: String
  , gamerId :: Int
  , score   :: Int
} deriving Show

testNames :: [String]
testNames = ["John Smith"
            ,"Robert'); DROP TABLE Students;--"
            ,"Christina NULL"
            ,"Randall Munroe"]
