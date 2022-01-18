-- Q6.3
inFirstHalf :: Eq a => a -> [a] -> Bool
inFirstHalf x xs = x `elem` half xs

half :: [a] -> [a]
half [] = []
half xs = take n xs
  where n = length xs `div`  2
