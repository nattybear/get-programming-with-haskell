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

testIds :: [Int]
testIds = [1337
          ,0123
          ,999999]

testScores :: [Int]
testScores = [0
             ,100000
             ,-99999]

testData :: [User]
testData = pure User <*> testNames
                     <*> testIds
                     <*> testScores

allFmap :: Applicative f => (a -> b) -> f a -> f b
allFmap f fa = pure f <*> fa

exampleMaybe :: Maybe Int
exampleMaybe  = pure (*) <*> pure ((+) 2 4) <*> pure 6

startingBeer :: [Int]
startingBeer = [6,12]

remainingBeer :: [Int]
remainingBeer = (\count -> count - 4) <$> startingBeer

guests :: [Int]
guests = [2,3]

totalPeople :: [Int]
totalPeople = (+2) <$> guests

beersPerGuest :: [Int]
beersPerGuest = [3,4]

totalBeersNeeded :: [Int]
totalBeersNeeded = pure (*) <*> beersPerGuest <*> totalPeople

beersToPurchase :: [Int]
beersToPurchase = pure (-) <*> totalBeersNeeded <*> remainingBeer
