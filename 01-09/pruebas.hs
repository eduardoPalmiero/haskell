import Debug.Trace

dividir x y = x / y
dividir10Por = dividir 10

--dividirPor10 y = flip dividir 10 y
--el segundo parametro esta implicito no es necesario escribirlo.
dividirPor10 = flip dividir 10
dividirPor10' x = dividir x 10

esPar :: Int -> Bool
esPar x
    | x < 0     = esPar(-x)
    | x > 1     = esPar(x - 2)
    | otherwise = x == 0

esMultiplo :: Int -> Int -> Bool
esMultiplo 0 _ = True
esMultiplo _ 0 = error ("No se puede dividir por cero")
esMultiplo x 2 = esPar x
esMultiplo x y
    | x < 0     = esMultiplo (-x) y
    | y < 0     = esMultiplo x (-y)
    | x >= y    = esMultiplo (x-y) y
    | otherwise = False

resto :: Int -> Int -> Int
resto _ 0 = error ("No se puede dividir por cero")
resto x 1 = 0
resto x y
    | x == y    = 0
    | y < 0     = resto x (-y)
    | x < 0     = -resto (-x) y
    -- | x >= y    = trace ("voy por " ++ show (x-y)) $ resto (x - y) y
    | x >= y    = resto (x - y) y
    | otherwise = x

esPrimo :: Int -> Bool
esPrimo 1 = False
esPrimo 0 = False
esPrimo x = esPrimo' (x-1)
    where esPrimo' y
            | y ==  1           = True
            | x `esMultiplo` y  = False
            | otherwise         = esPrimo'(y-1)

