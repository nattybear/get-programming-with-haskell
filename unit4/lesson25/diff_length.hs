import qualified Data.ByteString.Char8 as BC
import qualified Data.Text             as T
import qualified Data.Text.Encoding    as E
import           System.Environment

main = do
  args <- getArgs
  let fileName = head args
  file <- BC.readFile fileName
  let numberOfChars = T.length $ E.decodeUtf8 file
  let numberOfBytes = BC.length file
  print $ abs $ numberOfChars - numberOfBytes
