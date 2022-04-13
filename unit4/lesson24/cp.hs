import System.Environment

main = do
  args <- getArgs
  let src = head args
  let dst = head $ drop 1 args
  src' <- readFile src
  writeFile dst src'
  putStrLn "done!"
