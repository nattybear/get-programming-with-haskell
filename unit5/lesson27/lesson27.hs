successfulRequest :: Maybe Int
successfulRequest = Just 6

failedRequest :: Maybe Int
failedRequest = Nothing

intMaybe :: Maybe Int -> Maybe Int
intMaybe (Just n) = Just (n + 1)
intMaybe Nothing = Nothing

reverseMaybe :: Maybe String -> Maybe String
reverseMaybe (Just s) = Just (reverse s)
reverseMaybe Nothing = Nothing

successStr :: Maybe String
successStr = show <$> successfulRequest

failStr :: Maybe String
failStr = show <$> failedRequest

data RobotPart = RobotPart
  { name :: String
  , description :: String
  , cost :: Double
  , count :: Int
  } deriving Show
