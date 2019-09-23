{-
SIEMPRE: $, ., succ, pred, id
Implementar el operador .>= (>=) para enteros usando solo la función esPositivo

Implementar la función divEntero (quot) usando solo el operador anterior (>=)

Implementar la función esPositivo usando nada.

Opuesto usando nada
-----------------
Determinar si un número entero tiene dígitos iguales consecutivos.

Calcular la cantidad de dígitos 9 que tiene un número.

(+) usando (-)

(-) usando (+) y opuesto

Cuantos divisores tiene un número, usando rem
 -}

opuesto :: Int -> Int
opuesto 0 = 0
opuesto x
   | esPositivo x   = pred . opuesto . pred $ x
   | otherwise      = succ . opuesto . succ $ x

esPositivo :: Int -> Bool
esPositivo x = esPositivo' (x,x)
esPositivo' (_,0) = False
esPositivo' (0,_) = True
esPositivo' (x,y) = esPositivo' (pred x, succ y)

esNegativo :: Int -> Bool
esNegativo 0 = False
esNegativo x
    | esPositivo x = False
    | otherwise    = True

a .>= b
    | esNegativo a  = (succ a) .>= (succ b)
    | esNegativo b  = True
    | esPositivo a  = (pred a) .>= (pred b)
    | esPositivo b  = False
    | True          = True

no :: Bool -> Bool
no True = False
no False = True

esIgualA :: Int -> Int -> Bool
esIgualA 0 0 = True
esIgualA 0 _ = False
esIgualA _ 0 = False
esIgualA a b
    | esNegativo a  = esIgualA (succ a) (succ b)
    | esNegativo b  = esIgualA (succ a) (succ b)
    | otherwise     = esIgualA (pred a) (pred b)

andAnd :: Bool -> Bool -> Bool
andAnd _ False = False
andAnd False _ = False
andAnd True True = True

orOr :: Bool -> Bool -> Bool
orOr _ True = True
orOr True _ = True
orOr _ _ = False

veces :: Int -> (a -> a) -> (a -> a)
veces 0 _ = id
veces n f = f . veces (pred n) f

divEntero :: Int -> Int -> Int
divEntero _ 0 = error("No se puede dividir por cero.")
divEntero 0 _ = 0
divEntero x y
    | 0 .>= y   = opuesto . divEntero x $ opuesto y
    | x .>= y   = 1 + divEntero(y `veces` pred $ x) y
    | 0 .>= x   = opuesto . divEntero (opuesto x) $ y
    | otherwise = 0


residuo :: Int -> Int -> Int
residuo _ 0     = error ("No se puede dividir por cero.")
residuo x y
    | y < 0     = residuo x (-y)
    | x < 0     = -residuo (-x) y
    | x >= y    = residuo (x-y) y
    | x < y     = x
    | otherwise = 0

esNueve :: Int -> Bool
esNueve 9 = True
esNueve _ = False

cuantosNueveTiene :: Int -> Int
cuantosNueveTiene 0     = 0
cuantosNueveTiene x
    | esNegativo x      = cuantosNueveTiene (opuesto x)
    | elRestoEsNueve x  = succ . cuantosNueveTiene . divEntero x $ 10
    | otherwise         = cuantosNueveTiene . divEntero x $ 10
        where elRestoEsNueve y = esNueve $ residuo y 10

tieneDigitosIgualesConsecutivos 0   = False
tieneDigitosIgualesConsecutivos x
    | esNegativo x                  = tieneDigitosIgualesConsecutivos (opuesto x)
    | compararUltimosDosDigitos x   = True
    | otherwise                     = tieneDigitosIgualesConsecutivos (divEntero x 10)
        where compararUltimosDosDigitos y = (residuo y 10) `esIgualA` (residuo (divEntero y 10) 10)

-- orOr ((residuo 1134 10) esIgualA (residuo 113 10)) . orOr ((residuo 113 10) esIgualA (residuo 11 10))  ((residuo 11 10) esIgualA (residuo 11 10))