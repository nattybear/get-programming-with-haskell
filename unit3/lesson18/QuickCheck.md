### What's the type of `wrap (Box 'a')`?

```haskell
wrap (Box 'a') :: Box (Box Char)
```

### What's the difference between `transform` and the `map` function for lists?

```haskell
transform :: (a -> a) -> Triple a -> Triple a
map :: (a -> b) -> [a] -> [b]
```
