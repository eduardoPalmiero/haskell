doubleMe x = x + x

-- multiplicar x y
--     | y == 1             = x
--     | x == 1             = y
--     | x == 0 || y == 0   = 0
    

maxNumber x y
    | x > y     = x
    | otherwise = y

max3 x y z
    | x > y && x > z = x
    | y > x && y > z = y
    | z > x && z > y = z

max4 x y z
    | maxNumber x y > z = maxNumber x y
    | maxNumber x y < z = z
    | otherwise         = y

esPar x
    | x > 1     = esPar (x-2)
    | x < 0     = esPar (-x)
    | otherwise = x == 0

esImpar x = not (esPar x)

residuo _ 0 = error "Division por cero."
residuo x y
    | y < 0     = residuo x (-y) -- esto es por si el divisor es negativo
    | x < 0     = 0 - residuo (-x) y -- esto es para casos negativos
    | x >= y    = residuo (x-y) y -- esto es el camino feliz digamos. Es quien va  haciendo la division en cada vuelta.
    | otherwise = x -- este es el resultado final (a menos que sea error)

-- esPrimo x
--     | x == 0                = False
--     | residuo x x == 0      = False
--     | otherwise             = True