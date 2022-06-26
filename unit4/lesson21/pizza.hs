import qualified Data.Map as Map

areaGivenDiameter :: Double -> Double
areaGivenDiameter size = pi * (size / 2) ^ 2

type Pizza = (Double,Double)

costPerInch :: Pizza -> Double
costPerInch (size, cost) = cost / areaGivenDiameter size

comparePizzas :: Pizza -> Pizza -> Pizza
comparePizzas p1 p2 = if costP1 < costP2
                      then p1
                      else p2
  where costP1 = costPerInch p1
        costP2 = costPerInch p2

describePizza :: Pizza -> String
describePizza (size,cost) = "The " ++ show size ++ " pizza " ++
                            "is cheaper at " ++
                            show costSqInch ++
                            " per square inch"
  where costSqInch = costPerInch (size,cost)

costData :: Map.Map Int Double
costData = Map.fromList [(1,18.0),(2,16.0)]

sizeData :: Map.Map Int Double
sizeData = Map.fromList [(1,20.0),(2,15.0)]

costs :: [Double]
costs = [18.0, 16.0]

sizes :: [Double]
sizes = [20.0, 15.0]

main :: IO ()
main =
  putStrLn "What is the size of pizza 1" >>
  getLine >>= (\size1 ->
    putStrLn "What is the cost of pizza1" >>
    getLine >>= (\cost1 ->
      putStrLn "What is the size of pizza 2" >>
      getLine >>= (\size2 ->
        putStrLn "What is the cost of pizza 2" >>
        getLine >>= (\cost2 ->
          let pizza1 = (read size1, read cost1)
              pizza2 = (read size2, read cost2)
              betterPizza = comparePizzas pizza1 pizza2
          in  putStrLn (describePizza betterPizza)))))

mMain :: Monad m => m Double -> m Double -> m String
mMain sizes costs = do
  size1 <- sizes
  cost1 <- costs
  size2 <- sizes
  cost2 <- costs
  let pizza1 = (size1,cost1)
  let pizza2 = (size2,cost2)
  let betterPizza = comparePizzas pizza1 pizza2
  return (describePizza betterPizza)
