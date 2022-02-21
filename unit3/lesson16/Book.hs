import Name

data AuthorName = AuthorName {
    first :: String
  , last  :: String}

data Book = Book {
    author :: Creator
  , isbn   :: String
  , title  :: String
  , year   :: Int
  , price  :: Double
  }

data VinylRecord = VinylRecord {
    artist      :: Creator
  , recordTitle :: String
  , recordYear  :: Int
  , recordPrice :: Double
  }

data CollectibleToy = CollectibleToy {
    name        :: String
  , description :: String
  , toyPrice    :: Double
  }

data StoreItem
  = BookItem Book
  | RecordItem VinylRecord

data Creator
  = AuthorCreator Author
  | ArtistCreator Artist

data Author = Author Name

data Artist
  = Person Name
  | Band String

hpLovecraft :: Creator
hpLovecraft = AuthorCreator
                (Author
                  (TwoInitialsWithLast 'H' 'P' "Lovecraft"))
