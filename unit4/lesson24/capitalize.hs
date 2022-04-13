{-# LANGUAGE OverloadedStrings #-}

import System.Environment
import qualified Data.Text as T
import qualified Data.Text.IO as TI

main = do
  args <- getArgs
  let fileName = head args
  input <- TI.readFile fileName
  TI.writeFile fileName (T.toUpper input)
  putStrLn "done!"
