import System.Environment

main :: IO ()
main = do
  args <- getArgs
  mapM putStrLn args
