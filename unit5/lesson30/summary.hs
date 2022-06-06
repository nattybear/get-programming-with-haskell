allFmapM :: Monad m => (a -> b) -> m a -> m b
allFmapM f ma = ma >>= (\x -> return $ f x)

allApp :: Monad m => m (a -> b) -> m a -> m b
allApp mf mx = mf >>= (\f -> mx >>= (\x -> return (f x)))
