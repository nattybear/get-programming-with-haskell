import qualified Data.Map as Map

data RobotPart = RobotPart
  { name :: String
  , description :: String
  , cost :: Double
  , count :: Int
  } deriving Show

leftArm :: RobotPart
leftArm = RobotPart
  { name = "left arm"
  , description = "left arm for face punching!"
  , cost = 1000.00
  , count = 3
  }

rightArm :: RobotPart
rightArm = RobotPart
  { name = "right arm"
  , description = "right arm from kind hand gestures"
  , cost = 1025.00
  , count = 5
  }

robotHead :: RobotPart
robotHead = RobotPart
  { name = "robot head"
  , description = "this head looks mad"
  , cost = 5092.25
  , count = 2
  }

partsDB :: Map.Map Int RobotPart
partsDB = Map.fromList keyVals
  where keys = [1..3]
        vals = [leftArm,rightArm,robotHead]
        keyVals = zip keys vals

lowestCost :: RobotPart -> RobotPart -> RobotPart
lowestCost part1 part2 = if cost part1 < cost part2
                         then part1
                         else part2

printPart :: Maybe RobotPart -> IO ()
printPart Nothing     = putStrLn "Error, invalid part ID entered"
printPart (Just part) = print part

main :: IO ()
main = do
  putStrLn "Enter the first part number"
  partID1 <- read <$> getLine
  let part1 = Map.lookup partID1 partsDB
  putStrLn "Enter the second part number"
  partID2 <- read <$> getLine
  let part2 = Map.lookup partID2 partsDB
  let lowest = lowestCost <$> part1 <*> part2
  printPart lowest
