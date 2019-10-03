{-
veces :: Int -> (a -> a) -> (a -> a)
veces 0 _ = id
veces n f = f . veces (n-1) f

id f = f

suma0 = veces 0 (+2)
suma2 = veces 1 (+2)
      = (+2) . veces 0 (+2) = (+2) . id = (+2)

sumaN n y = veces n (y+)
          = veces n (suma y)

sumaN :: Int -> Int -> Int -> Int
sumaN 1 3 = veces 1 (suma 3) = (suma 3) . veces 0 (suma 3) = suma 3 . id = suma 3

sumaN 1 3 5 = suma 3 5 = 8

id . f = f
f . id = f
-}
esPositivo x = esPositivo' (x,x)
esPositivo' (_,0) = False
esPositivo' (0,_) = True
esPositivo' (x,y) = esPositivo' (pred x, succ y)

--
max x y
  | x >= y      = x
  | otherwise   = y

-- max x y /= max y x
{-
ord :: Char -> Int

chr :: Int -> Char
-}
{--
^
$
--}
{-
suma x y = x + y
4 `suma` 5
-}
--suma 4 . id

concatenar [] ys     = ys
concatenar (x:xs) ys = x : concatenar xs ys
{-
concatenar []       = id
concatenar (x:xs)   = (x:) . concatenar xs
-}
-- filtrar = filter
filtrar :: (a -> Bool) -> [a] -> [a]
filtrar _ []        = []
filtrar f (x:xs)
    | f x           = x : filtrar f xs
    | otherwise     = filtrar f xs

{-
Para el TP
$, (.), succ, pred, :, ord, chr, (,), (==)
-}
{-
not True = False
not _    = True

negate x = resta 0 x
-}
{-
suma, usando la resta
resta, usando la suma y el EsPositivo
-}
k a n  | n < 2  = a + n
k a n           = (+2) . k a . pred . pred $ n

-- k  = (+)

-- inicio = init
inicio (x:[]) = []
inicio (x:xs) = x : inicio xs

ultimo (x:[]) = x
ultimo (_:xs) = ultimo xs

--splitAt
--partirEn n xs = (tomar n xs, sacar n xs) El problema de este metodo es que recorres la lista dos veces

--break
--partirCuando f (x:xs) 
--partirCuando (>0) [(-2),(-6),0,3,(-1)] = [[(-2),(-6),0],[3,(-1)]]

interponer _ []      = []
interponer _ (y:[])  = y:[]
interponer x (y:ys)  = y:x:interponer x ys

