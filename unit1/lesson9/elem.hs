elem' :: Eq a => a -> [a] -> Bool
elem' x xs = size > 0
  where xs' = filter (==x) xs
        size = length xs'
