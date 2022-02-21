data AuthorName = AuthorName String String

data Book = Book {
    author :: AuthorName
  , isbn   :: String
  , title  :: String
  , year   :: Int
  , price  :: Double}
