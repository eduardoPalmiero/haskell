import Debug.Trace

trace1 x y = trace (show x) y

funcion1 x
    | x > 0     = trace1 x $ funcion1 (x-3)
    | x == 0    = 100
    | otherwise = x

funcion2 x
    | x > 0     = funcion2 (x+3)
    | x == 0    = 100
    | otherwise = x

funcion3 x
    | x > 0     = funcion3 (x-3)
    | x == 0    = "Es cero"
    | otherwise = "No es cero"

funcion4 x = trace "estoy evaluancion funcion4" x

esPar x
    | x == 0    = "es par"
    | x == 1    = "es impar"
    | x > 1     = esPar (x-2)
    | x < 0     = esPar (-x)

esPar' x
    | x < 0     = esPar' (-x)
    | x > 1     = esPar' (x-2)
    | otherwise = x == 0

esImpar x = not (esPar' x)
