data BreakfastSide
  = Toast
  | Biscuit
  | Homefries
  | Fruit
  deriving Show

data BreakfastMeat
  = Sausage
  | Bacon
  | Ham
  deriving Show

data BreakfastMain
  = Egg
  | Pancake
  | Waffle
  deriving Show

data Kids = Kids BreakfastMain BreakfastSide
  deriving Show

data Basic = Basic BreakfastMain BreakfastMeat BreakfastSide
  deriving Show

data Lumberjack = Lumberjack BreakfastMain BreakfastMain
                             BreakfastMeat BreakfastMeat
                             BreakfastSide BreakfastSide BreakfastSide
                             deriving Show
