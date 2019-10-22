import Debug.Trace

{-
Les sumo un ejercicio adicional para repasar:
Realizar una función que calcule el máximo dígito de un número
 -}
maxDigito :: Int -> Int
maxDigito 0         = 0
maxDigito x | x < 0 = maxDigito (-x)
maxDigito x         = max (rem x 10) $ maxDigito (quot x 10)

-- 1934
-- max 4 $ max 3 $ max 9 $ max 1 $ 0
{-
Serie de fibonacci hasta un numero x
-}

fibonacci :: Int -> Int 
fibonacci x = fibonacci' (0,1)
    where fibonacci' (y,z)
            | y < x     = trace (show y) $ fibonacci' (y+z,y)
            | otherwise = y

xor :: Bool -> Bool -> Bool
xor True True   = False
xor False False = False
xor _ _         = True

-- xor :: Bool -> Bool -> Bool
-- xor x y | x == y    = False
-- xor _ _             = True