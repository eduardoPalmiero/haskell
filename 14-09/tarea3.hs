{-
SIEMPRE: $, ., succ, pred, id
Implementar el operador .>= (>=) para enteros usando solo la función esPositivo

Implementar la función divEntero (quot) usando solo el operador anterior (>=)

Implementar la función esPositivo usando nada.

Calcular la cantidad de dígitos 9 que tiene un número.

Determinar si un número entero tiene dígitos iguales consecutivos.


Opuesto usando nada

(+) usando (-)

(-) usando (+) y opuesto

Cuantos divisores tiene un número, usando rem
 -}
opuesto :: Int -> Int
opuesto 0 = 0
opuesto x
   | esPositivo x   = pred . opuesto . pred $ x
   | otherwise      = succ . opuesto . succ $ x
    {-
Ejemplo de traza:
opuesto 3
    pred . opuesto . pred $ (3)
    pred . opuesto . 2
    pred . pred . opuesto . pred $ 2
    pred . pred . opuesto $ 1
    pred . pred . pred . opuesto . pred $ 1
    pred . pred . pred . opuesto $ 0
    pred . pred . pred $ 0
    pred . pred $ (-1)
    pred (-2)
    -3
-}
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
