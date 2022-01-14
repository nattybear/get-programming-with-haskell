ifEven f n = if even n
             then f n
             else n

inc n = n + 1

double n = n + n

square n = n * n

ifEvenInc n = ifEven inc n
ifEvenDouble n = ifEven double n
ifEvenSquare n = ifEven square n
