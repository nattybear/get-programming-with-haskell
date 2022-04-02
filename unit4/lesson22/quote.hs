import qualified Data.Map    as Map
import           System.Exit

quotes :: [String]
quotes = [ "The greatest glory in living lies not in never falling, \
           \but in rising every time we fall."
         , "The way to get started is to quit talking and begin doing."
         , "Your time is limited, so don't waste it living someone \
           \else's life. Don't be trapped by dogma – \
           \which is living with the results of other people's thinking."
         , "If life were predictable it would cease to be life, \
           \and be without flavor."
         , "If you look at what you have in life, you'll always have more. \
           \If you look at what you don't have in life, \
           \you'll never have enough."
         ]

myMap :: Map.Map Int String
myMap = Map.fromList (zip [1..] quotes)

action :: String -> IO ()
action "n" = die "program ends"
action x = putStrLn quote
  where (Just quote) = Map.lookup (read x) myMap

main :: IO ()
main = do
  input <- getContents
  let xs = lines input
  mapM_ action xs
