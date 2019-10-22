-- qué hace h?
f 0            = id
f n | n > 0    = succ . succ . f (pred n)
f n            = pred . pred . f (succ n)
g x            = (/=0) . flip rem 2 . succ . f x
h              = g 3

-- qué hace k?
k a n  | n < 2  = a + n
k a n           = (+2) . k a . pred . pred $ n
-- k a n           = k a (n - 2) + 2

k (-2) 5 = (+2) . k (-2) . pred . pred $ 5
         = k (-2) ((pred . pred) 5) + 2
         = k (-2) 3 + 2
         = ((+2) . k (-2) . pred . pred $ 3) + 2
         = k (-2) ((pred . pred) 3) + 2 + 2
         = k (-2) 1 + 2 + 2
         = (-2) + 1 + 2 + 2
         = 3
-- Indicar el tipo de cada función
-- Realizar la traza hasta llegar al resultado de:
-- h 5 = 
-- k (-2) 5 = 

-- SIEMPRE: $, ., succ, pred, id
-- Implementar el operador .>= (>=) para enteros usando solo la función esPositivo
-- Implementar la función divEntero (quot) usando solo el operador anterior (>=)
-- Implementar la función esPositivo usando nada.
-- Calcular la cantidad de dígitos 9 que tiene un número.
-- Determinar si un número entero tiene dígitos consecutivos.

-- Nota: funciones y operadores libres de usar en cualquier ejercicio: (.) , ($) , succ, pred, id


