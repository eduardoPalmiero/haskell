{-
Les sumo un ejercicio adicional para repasar:
Realizar una función que calcule el máximo dígito de un número
 -}

maxDigito 0         = 0
maxDigito x | x < 0 = maxDigito (-x)
maxDigito x         = maxDigito' x
    where
        maxDigito' 0 = 0
        maxDigito' y = max (rem y 10) $ maxDigito' (quot y 10)

-- 1934

-- max 4 $ max 3 $ max 9 $ max 1 $ 0
