import Name

data AuthorName = AuthorName {
    first :: String
  , last  :: String}

data Book = Book {
    author :: AuthorName
  , isbn   :: String
  , title  :: String
  , year   :: Int
  , price  :: Double}

data Creator
  = AuthorCreator Author
  | ArtistCreator Artist

data Author = Author Name

data Artist
  = Person Name
  | Band String
