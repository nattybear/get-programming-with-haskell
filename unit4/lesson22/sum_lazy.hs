import Data.List.Split

myLines = splitOn "\n"

main :: IO ()
main = do
  userInput <- getContents
  mapM_ print userInput
