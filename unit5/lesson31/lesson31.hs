askForName :: IO ()
askForName = putStrLn "What is your name?"

nameStatement :: String -> String
nameStatement name = "Hello, " ++ name ++ "!"

helloName :: IO ()
helloName = askForName >>
            getLine >>=
            (\name ->
              return (nameStatement name)) >>=
            putStrLn

maxPairM :: (Monad m, Ord a) => m (a, a) -> m a
maxPairM pair = do
  (x, y) <- pair
  return (max x y)
