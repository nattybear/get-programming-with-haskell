## Quick check 19.1

What's the type of `Nothing` in the preceding example?

```haskell
Maybe Organ
```

## Quick check 19.2

Write a function `numOrZero` that takes a `Maybe Int` and returns `0` if it's `Nothing`, and otherwise returns the value.

```haskell
numOrZero :: Maybe Int -> Int
numOrZero Nothing = 0
numOrZero (Just x) = x
```

## Quick check 19.3

How would you rewrite `report` so that it works with `Maybe (Location, Container)` and handles the case of the missing `Organ`?

```haskell
report :: Maybe (Location, Container) -> String
report Nothing = "container not found"
report (Just (location, container)) = show container ++
                                      " in the " ++
                                      show location
```
