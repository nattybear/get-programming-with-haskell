type Name = (String,String)

names :: [Name]
names = [ ("Emil","Cioran")
        , ("Eugene","Thacker")
        , ("Friedrich","Nietzsche")]

instance Ord Name where
  compare (f1,l1) (f2,l2) = compare (l1,f1) (l2,f2)
