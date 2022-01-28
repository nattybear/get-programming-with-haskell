Q11.1 What is the type signature for `filter`? How is it different from `map`?

```haskell
filter :: (a -> Bool) -> [a] -> [a]
map :: (a -> b) -> [a] -> [b]
```

Q11.2 In Haskell, both `tail` and `head` have an error when called on an empty list. You can write a version of `tail` that won't fail but instead return an empty list when called on an empty list? To answer this, start by writing out the type signatures of both `head` and `tail`.

```haskell
safeTail :: [a] -> [a]
safeTail [] = []
safeTail (_:xs) = xs

head :: [a] -> a
```

Q11.3 Recal `myFoldl` from lesson 9.

```haskell
myFoldl f init [] = init
myFoldl f init (x:xs) = myFoldl f newInit xs
  where newInit = f init x
```

What's the type signature of this function? Note: `foldl` has a different type signature.

```haskell
myFoldl :: (b -> a -> b) -> b -> [a] -> b
```
