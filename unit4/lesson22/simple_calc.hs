main :: IO ()
main = do
  x <- read <$> getLine
  operator <- getLine
  y <- read <$> getLine
  case operator of
    "+" -> print $ x + y
    "*" -> print $ x * y
