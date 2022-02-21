data AuthorName = AuthorName {
    first :: String
  , last  :: String}

data Book = Book {
    author :: AuthorName
  , isbn   :: String
  , title  :: String
  , year   :: Int
  , price  :: Double}
