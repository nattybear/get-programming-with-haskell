## Quick check 21.1

Which line retrieves the user's input? What type do you assume that input is?

```haskell
name <- getLine
```

```haskell
getLine :: IO String
```

## Quick check 21.2

Is it okay if the last line in your `main` ins `getLine`?

> No, because the type of `main` is `IO ()`, but the type of `getLine` is `IO String`

## Quick check 21.3

Could you simplify your code to combine `helloPerson` and `getLine` like this?

```haskell
let statement = helloPerson getLine
```

> No, because `getLine` is still of type `IO String`
