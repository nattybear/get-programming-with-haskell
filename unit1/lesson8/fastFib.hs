fastFib n1 _ 1 = n1
fastFib n1 n2 counter = fastFib n2 n1' counter'
  where n1' = n1 + n2
        counter' = counter - 1
