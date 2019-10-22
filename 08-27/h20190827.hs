-- h = (f b . g a) x
-- h = f b $ g a x
-- h = f b (g a x)

-- j = f b . g a
-- h = j x

-- si h = f . g =>  h x = f (g x)
--
f :: Int -> Int -> Int
f x y = x - y  -- f = (+)
g :: Int -> Int -> Int
g x y = x * y


f' :: Int -> Int -> Int
f' = flip f

h :: Int -> Int
h = f' 2 . g 3

x :: Int
x = 5

j :: Int
j = h x
-- f (g a)
-- flip f x y = f y x

-- suma3 = id . succ . succ . succ

veces :: Int -> (a -> a) -> (a -> a)
veces 0 _ = id
veces n f = f . veces (n-1) f

suma :: Int -> Int -> Int
suma x | x < 0    = (-x) `veces` pred
suma x            = x `veces` succ

--
--(x,yi)
sumaYmult :: Int -> Int -> (Int,Int)
sumaYmult x y = (x+y,x*y)
q = sumaYmult 4 5

primero :: (a,b) -> a
primero (x,_) = x
segundo :: (a,b) -> b
segundo (_,y) = y
segundoR :: (a,a) -> a
segundoR = segundo

-- const x _ = x
ignoroYsumo = suma 4 . const 2
ySumo :: (Int -> Int) -> Int -> Int
ySumo f = suma 4 . f

-- const x y
--fst (x,y)
--seq


-- fst
-- snd

primero3 (x,_,_) = x
-- fst3
