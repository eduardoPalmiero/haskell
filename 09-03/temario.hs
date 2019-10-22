-- Especificacion de tipo de funcion

-- Tipos:
-- Bool
-- Int
-- Double
-- String


k a n | n < 2 = a + n
k a n         = (+2) . k a . pred . pred $ n 

k 10 1      = 10 + 1    = 11
k 10 (-1)   = 10 + (-1) = 9


k (-2) 5    = (+2) . k (-2) . pred . pred $ 5 
            = k(-2) (pred . pred 5) + 2
            = k (-2) 3 + 2
            = ((+2) . k (-2) . pred . pred $ 3) + 2
            = k(-2) (pred . pred 3) + 2 + 2
            = k(-2) 1 + 2 + 2
            = (-2) + 1 + 2 +2
            = 3

-- SIEMPRE: $, ., succ, pred, id
-- Implementar el operador .>= (>=) para enteros usando solo la función esPositivo
-- Implementar la función divEntero (quot) usando solo el operador anterior (>=)
-- Implementar la función esPositivo usando nada.
-- Calcular la cantidad de dígitos 9 que tiene un número.
-- Determinar si un número entero tiene dígitos iguales consecutivos.

--id devuelve lo que le des, no hace nada.

-- Examen martes 24

id . f = f
f . id = f

