double :: Int -> Int
double n = n*2

half :: Int -> Double
half n = (fromIntegral n) / 2

anotherNumber :: Int
anotherNumber = read "6"

makeAddress :: Int -> String -> String -> (Int, String, String)
makeAddress number street town = (number,street,town)

makeAddressLambda = (\number ->
                     (\street ->
                      (\town -> (number, street, town))))
