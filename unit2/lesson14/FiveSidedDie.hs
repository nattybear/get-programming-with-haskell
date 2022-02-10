data FiveSidedDie = Side1 | Side2 | Side3 | Side4 | Side5
  deriving (Enum, Eq, Show)

class (Eq a, Enum a) => Die a where
  roll :: Int -> a

instance Die FiveSidedDie where
  roll n = toEnum (n `mod` 5)
