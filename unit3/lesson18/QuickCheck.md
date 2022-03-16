### What's the type of `wrap (Box 'a')`?

```haskell
wrap (Box 'a') :: Box (Box Char)
```

### What's the difference between `transform` and the `map` function for lists?

```haskell
transform :: (a -> a) -> Triple a -> Triple a
map :: (a -> b) -> [a] -> [b]
```

### What would happen if you tried to add `("Paper",12.4)` to your inventory?

It would cause an error because the rest of your pairs are `(String,Int)`, and `("Paper",12.4)` would be a `(String,Double)`.
