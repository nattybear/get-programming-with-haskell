import Data.Char (toUpper)

isPalindrome word = word'' == reverse word''
  where word' = map toUpper word
        word'' = filter (/=' ') word'
