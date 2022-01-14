ifEven f n = if even n
             then f n
             else n

inc n = n + 1

double n = n + n

square n = n * n

genIfEven f = (\x -> ifEven f x)

ifEvenInc = genIfEven inc
ifEvenDouble = genIfEven double
ifEvenSquare = genIfEven square

-- Quick check 5.1
genIfXEven x = (\f -> ifEven f x)
