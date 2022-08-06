import Control.Monad
import Control.Monad.ST
import Data.Array.ST
import Data.Array.Unboxed

aLargeList :: [Int]
aLargeList = [1 .. 10000000]

aLargeArray :: UArray Int Int
aLargeArray = array (0,9999999) []

aLargeListDoubled :: [Int]
aLargeListDoubled = map (*2) aLargeList

zeroIndexArray :: UArray Int Bool
zeroIndexArray = array (0,9) [(3,True)]

oneIndexArray :: UArray Int Bool
oneIndexArray = array (1,10) $
                zip [1 .. 10] $
                cycle [True]

qcArray :: UArray Int Bool
qcArray = array (0,4) [(1,True),(2,True)]

beansInBuckets :: UArray Int Int
beansInBuckets = array (0,3) []

beansInBucket' :: UArray Int Int
beansInBucket' = array (0,3) $
                 zip [0 .. 3] $
                 cycle [0]

updatedBiB :: UArray Int Int
updatedBiB = beansInBuckets // [(1,5),(3,6)]

listToSTUArray :: [Int] -> ST s (STUArray s Int Int)
listToSTUArray vals = do
  let end = length vals - 1
  myArray <- newArray (0,end) 0
  forM_ [0 .. end] $ \i -> do
    let val = vals !! i
    writeArray myArray i val
  return myArray

listToUArray' :: [Int] -> UArray Int Int
listToUArray' vals = runSTUArray $ listToSTUArray vals

listToUArray :: [Int] -> UArray Int Int
listToUArray vals = runSTUArray $ do
  let end = length vals - 1
  myArray <- newArray (0,end) 0
  forM_ [0 .. end] $ \i -> do
    let val = vals !! i
    writeArray myArray i val
  return myArray

myData :: UArray Int Int
myData = listArray (0,5) [7,6,4,8,10,2]

-- | Quick check 42.4 User your listToUArray function do defined myData
-- myData :: UArray Int Int
-- myData = listToUArray [7,6,4,8,10,2]

bubbleSort :: UArray Int Int -> UArray Int Int
bubbleSort myArray = runSTUArray $ do
  stArray <- thaw myArray
  let end = (snd . bounds) myArray
  forM_ [1 .. end] $ \i -> do
    forM_ [0 .. (end - i)] $ \j -> do
      val <- readArray stArray j
      nextVal <- readArray stArray (j + 1)
      let outOfOrder = val > nextVal
      when outOfOrder $ do
        writeArray stArray j nextVal
        writeArray stArray (j + 1) val
  return stArray

-- | Q42.2
replaceZeros :: UArray Int Int -> UArray Int Int
replaceZeros myArray = runSTUArray $ do
  stArray <- thaw myArray
  let end = (snd . bounds) myArray
  forM_ [0 .. end] $ \i -> do
    val <- readArray stArray i
    when (val == 0) $ do
      writeArray stArray i (-1)
  return stArray

-- | Q42.1
crossOver :: (UArray Int Int, UArray Int Int) -> Int -> UArray Int Int
crossOver (a1,a2) crossOverPt = runSTUArray $ do
  st1 <- thaw a1
  let end = (snd . bounds) a1
  forM_ [crossOverPt .. end] $ \i -> do
    writeArray st1 i $ a2 ! i
  return st1
