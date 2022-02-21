import Creator

data StoreItem
  = BookItem Book
  | RecordItem VinylRecord
  | ToyItem CollectibleToy
  | PamphletItem Pamphlet

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
    name           :: String
  , toyDescription :: String
  , toyPrice       :: Double
  }

data Pamphlet = Pamphlet {
    title               :: String
  , pamphletDescription :: String
  , contact             :: String
  }

hpLovecraft :: Creator
hpLovecraft = AuthorCreator
                (Author
                  (TwoInitialsWithLast 'H' 'P' "Lovecraft"))

price :: StoreItem -> Double
price (BookItem book) = bookPrice book
price (RecordItem record) = recordPrice record
price (ToyItem toy) = toyPrice toy
price (PamphletItem _) = 0

madeBy :: StoreItem -> String
madeBy (BookItem book) = show $ author book
madeBy (RecordItem record) = show $ artist record
madeBy _ = "unknown"
