-- Q6.2
subseq :: Int -> Int -> [a] -> [a]
subseq start end = drop start . take end
