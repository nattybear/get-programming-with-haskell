import Creator

data StoreItem
  = BookItem Book
  | RecordItem VinylRecord
  | ToyItem CollectibleToy

data Book = Book {
    author    :: Creator
  , isbn      :: String
  , bookTitle :: String
  , bookYear  :: Int
  , bookPrice :: Double
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

hpLovecraft :: Creator
hpLovecraft = AuthorCreator
                (Author
                  (TwoInitialsWithLast 'H' 'P' "Lovecraft"))

price :: StoreItem -> Double
price (BookItem book) = bookPrice book
price (RecordItem record) = recordPrice record
price (ToyItem toy) = toyPrice toy
