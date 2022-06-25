askForName :: IO ()
askForName = putStrLn "What is your name?"

nameStatement :: String -> String
nameStatement name = "Hello, " ++ name ++ "!"

helloName :: IO ()
helloName = do
  askForName
  name <- getLine
  putStrLn (nameStatement name)

maxPairM :: (Monad m, Ord a) => m (a, a) -> m a
maxPairM pair = do
  (x, y) <- pair
  return (max x y)

helloPerson :: String -> String
helloPerson name = "Hello" ++ " " ++ name ++ "!"

main :: IO ()
main = getLine >>=
       (\name ->
         (\statement ->
           putStrLn statement) (helloPerson name))

echo :: IO ()
echo = do
  line <- getLine
  putStrLn line
