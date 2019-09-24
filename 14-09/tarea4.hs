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

-- fibonacci x = fibonacci'
-- x = 10
-- y = 20
-- trace x  y

-- fibonacci x = 


