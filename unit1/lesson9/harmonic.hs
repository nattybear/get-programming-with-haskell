import Data.Ratio

harmonic :: Int -> Ratio Int
harmonic n = sum ns
  where ns = map (1 %) [1..n]
