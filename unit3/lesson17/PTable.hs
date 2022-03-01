import Events
import Probs

data PTable = PTable Events Probs

instance Show PTable where
  show (PTable (Events events) (Probs probs)) = mconcat pairs
    where pairs = zipWith showPair events probs

showPair :: String -> Double -> String
showPair event prob = mconcat [event, "|", show prob, "\n"]

instance Semigroup PTable where
  (<>) (PTable e1 p1) (PTable e2 p2) = createPTable newEvents newProbs
    where newEvents = e1 <> e2
          newProbs = p1 <> p2

createPTable :: Events -> Probs -> PTable
createPTable events (Probs probs) = PTable events normalizedProbs
  where totalProbs = sum probs
        normalizedProbs = Probs $ map (\x -> x/totalProbs) probs

instance Monoid PTable where
  mempty = PTable (Events []) (Probs [])
  mappend = (<>)

coin :: PTable
coin = createPTable (Events ["heads","tails"]) (Probs [0.5,0.5])

spinner :: PTable
spinner = createPTable (Events ["red","blue","green"]) (Probs [0.1,0.2,0.7])
