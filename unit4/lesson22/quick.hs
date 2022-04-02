exampleMain :: IO ()
exampleMain = do
  vals <- mapM (\_ -> getLine) [1..3]
  mapM_ putStrLn vals

myReplicateM :: Monad m => Int -> m a -> m [a]
myReplicateM n func = mapM (\_ -> func) [1 .. n]

reverser :: IO ()
reverser = do
  input <- getContents
  let reversed = reverse input
  putStrLn reversed
