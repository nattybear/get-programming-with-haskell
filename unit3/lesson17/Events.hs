module Events where

import CartCombine

data Events = Events [String] deriving Show

instance Semigroup Events where
  (<>) = combineEvents

instance Monoid Events where
  mempty = Events []

combineEvents :: Events -> Events -> Events
combineEvents (Events e1) (Events e2) = Events $ cartCombine combiner e1 e2
  where combiner = (\x y -> mconcat [x,"-",y])
