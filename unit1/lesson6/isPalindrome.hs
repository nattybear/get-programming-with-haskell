import Data.Char (toLower)

isPalindrome text = processedText == reverse processedText
  where noSpaces = filter (/= ' ') text
        processedText = map toLower noSpaces
