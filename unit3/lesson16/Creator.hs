module Creator where

data Creator
  = AuthorCreator Author
  | ArtistCreator Artist
  deriving Show

data Author = Author Name
  deriving Show

data Artist
  = Person Name
  | Band String
  deriving Show

type FirstName = String
type LastName = String
type MiddleName = String

data Name
  = Name FirstName LastName
  | NameWithMiddle FirstName MiddleName LastName  
  | TwoInitialsWithLast Char Char LastName
  | FirstNameWithTwoInits FirstName Char Char
  deriving Show
