import qualified Data.Map as Map

helloPerson :: String -> String
helloPerson name = "Hello" ++ " " ++ name ++ "!"

nameData :: Map.Map Int String
nameData = Map.fromList [(1,"Vincent")]

main :: IO ()
main = do
  putStrLn "Hello! What's your name?"
  name <- getLine
  let statement = helloPerson name
  putStrLn statement

maybeMain :: Maybe String
maybeMain = do
  name <- Map.lookup 1 nameData
  let statement = helloPerson name
  return statement
