add4 a b c d = a + b + c + d

addXto3 x = (\b c d ->
             add4 x b c d)
