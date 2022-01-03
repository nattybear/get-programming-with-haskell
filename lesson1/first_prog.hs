messyMain :: IO ()
messyMain = do
  print "Who is the mail for?"
  recipient <- getLine 
  print "What is the Title?"
  title <- getLine
  print "Who is the Author?"
  author <- getLine
  print ("Dear " ++ recipient ++ ",\n" ++
    "Thanks for buying " ++ title ++ "\nthanks,\n" ++
    author )

toPart recipient = "Dear " ++ recipient ++ ",\n"
bodyPart bookTitle = "Thanks for buying " ++ bookTitle ++ ",\n";
fromPart author = "Thanks, \n"++author
