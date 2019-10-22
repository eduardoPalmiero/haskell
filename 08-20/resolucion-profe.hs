import Debug.Trace
esPar x
    | x > 1     = esPar (x-2)
    | x < 0     = esPar (-x)
    | x == 0    = "Si, es par"
    | otherwise = "No, no es par"
    
oldEsMultiploDe x y
    | y == 0     = error "No puedo dividir por cero."
    | x < 0      = oldEsMultiploDe (-x) y
    | y < 0      = oldEsMultiploDe x (-y)
    | x >= y     = oldEsMultiploDe (x-y) y
    | x == 0     = "Si"
    | otherwise  = "No"

-- Metodo 1
esMultiploDe _ 0 = error "División por cero."
esMultiploDe x 2 = esPar x
esMultiploDe 0 _ = "Si"
esMultiploDe x y
    | x < 0     = esMultiploDe (-x) y
    | y < 0     = esMultiploDe x (-y)
    | x >= y    = trace ("voy por " ++ show x) $ esMultiploDe (x-y) y
    | otherwise = "No"


{-
-- Metodo 2
esMultiploDe _ 0 = error "División por cero."
esMultiploDe 0 _ = "Si"
esMultiploDe x y | x < 0    = esMultiplo (-x) y
esMultiploDe x y | y < 0    = esMultiplo x (-y)
esMultiploDe x y | x >= y   = esMultiplo (x-y) y
esMultiploDe _ _ = "No"
-}
residuo' x y
    | x < 0 && y > 0 = residuoNeg (-x) y
    | x > 0 && y < 0 = residuo' x (-y)
    | x < 0 && y < 0 = residuoNeg (-x) (-y) 
    | x - y > 0      = residuo' (x-y) y
    | x - y == 0     = 0
    | otherwise      = (x)
    where
        residuoNeg x y
            | x - y > 0      = residuoNeg (x-y) y
            | x - y == 0     = 0
            | otherwise      = (-x)

residuo _ 0 = error "Division por cero."
residuo x y
    | y < 0     = residuo x (-y)
    | x < 0     = 0 - residuo (-x) y
    | x >= y    = residuo (x-y) y
    | otherwise = x

-- residuo (-10) 6 = - residuo 10 6 = - residuo 4 6 = -4


residuoBis x 2
    | esPar x == "Si" = 0
    | x < 0           = -1
    | otherwise       = 1

divEntero1 x y
    | x < 0 && y > 0 = divEnteroNeg (-x) y
    | x > 0 && y < 0 = divEnteroNeg x (-y)
    | x < 0 && y < 0 = divEntero1 (-x) (-y) 
    | x - y > 0      = 1 + divEntero1 (x-y) y
    | x - y == 0     = 1
    | otherwise      = 0
    where
        divEnteroNeg x y
            | x - y > 0  = (-1) - divEnteroNeg (x-y) y
            | x - y == 0 = (-1)
            | otherwise  = 0 

divEntero _ 0   = error "Division por cero."
divEntero x y
    | x < 0     = -divEntero (-x) y
    | y < 0     = -divEntero x (-y)
    | x >= y    = 1 + divEntero (x-y) y
    | otherwise = 0


divEntero' _ 0   = error "Division por cero."
divEntero' x y
    | x < 0     = -divEntero' (-x) y
    | y < 0     = -divEntero' x (-y)
    | otherwise = divEntero'' 0 x
    where divEntero'' n x
            | x >= y    = divEntero'' (n+1) (x-y)
            | otherwise = n

-- divEntero' 13 5 = divEntero'' 0 13 = divEntero'' 1 8 = divEntero'' 2 3 = 2

-- data Bool = False | True
-- &&
-- ||
-- not
-- ==
-- /=
-- x == y && z == w || a == b
--
-- residuo = rem
-- divEntero = quot

