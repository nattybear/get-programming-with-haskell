remove :: (a -> Bool) -> [a] -> [a]
remove test [] = []
remove test (x:xs) = if test x
                     then remove test xs
                     else x:remove test xs
