data Shape
  = Circle Point Float
  | Square Point Point
  | Rectangle Point Point

data Point = Point Float Float

perimeter :: Shape -> Float
perimeter (Circle _ r) = 2 * pi * r
perimeter (Square (Point x1 _) (Point x2 _)) = (x1 - x2) * 2
perimeter (Rectangle (Point x1 y1) (Point x2 y2)) =
  (abs $ x1 - x2) + (abs $ y1 - y2)

area :: Shape -> Float
area (Circle _ r) = pi * r^2
area (Square (Point x1 _) (Point x2 _)) = (x1 - x2)^2
area (Rectangle (Point x1 y1) (Point x2 y2)) =
  (abs $ x1 - x2) * (abs $ y1 - y2)
