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
    | x > 0 = pred . opuesto . pred $ x
    | x < 0 = succ . opuesto . succ $ x
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
