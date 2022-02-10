data Number = One | Two | Three deriving Enum

instance Eq Number where
  (==) num1 num2 = (fromEnum num1) == (fromEnum num2)

instance Ord Number where
  compare num1 num2 = compare (fromEnum num1) (fromEnum num2)
