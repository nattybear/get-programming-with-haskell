ifEven f n = if even n
             then f n
             else n

inc n = n + 1

double n = n + n

square n = n * n

genIfEven f = (\x -> ifEven f x)

ifEvenInc = ifEven inc
ifEvenDouble = ifEven double
ifEvenSquare = ifEven square

-- Quick check 5.1
genIfXEven x = (\f -> ifEven f x)
