getCounts :: String -> (Int,Int,Int)
getCounts input = (charCount, wordCount, lineCount)
  where charCount = length input
        wordCount = (length . words) input
        lineCount = (length . lines) input

countsText :: (Int,Int,Int) -> String
countsText (cc,wc,lc) = unwords [ "chars: "
                                , show cc
                                , " words: "
                                , show wc
                                , " Lines: "
                                , show lc]
