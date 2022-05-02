successfulRequest :: Maybe Int
successfulRequest = Just 6

failedRequest :: Maybe Int
failedRequest = Nothing

intMaybe :: Maybe Int -> Maybe Int
intMaybe (Just n) = Just (n + 1)
intMaybe Nothing = Nothing
