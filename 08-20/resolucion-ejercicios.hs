 {-
Les dejo como ejercicio para el martes que viene.
Escribir las funciones esMultiploDe y residuo que satisfacen:
esMultiploDe 35 7 -> "Si"
esMultiploDe (-35) 5 -> "Si"
esMultiploDe 14 3 -> "No"
esMultiploDe x 2 = esPar x
residuo 35 7 -> 0
residuo (-35) 5 -> 0
residuo 14 3 -> 2
residuo x 2
    | esPar x == "Si"   = 0
    | x < 0             = -1
    | otherwise         = 1

Para quien se sienta motivado, otra función un poco más complicada: divEntero que satisface:

divEntero 35 7 -> 5
divEntero (-35) 5 -> (-7)
divEntero 14 3 -> 4

Recuerden que para escribirlas solo deben usar lo visto en clase! No pueden multiplicar ni dividir, solo sumas y restas.
Cualquier cosa me consultan

Buenas. Aclaro el uso de negativos. Así todos usamos el mismo criterio:
residuo (-14) 3 -> -2
residuo 14 (-3) -> 2
residuo (-14) (-3) -> -2
divEntero (-14) 3 -> -4
divEntero 14 (-3) -> -4
divEntero (-14) (-3) -> 4

Y en general:
divEntero x y * y + residuo x y == x

-}

esPar x


esMultiploDe _ 0 = error "No puedo dividir por cero."
esMultiploDe 0 _ = "Si"
esMultiploDe x y 
    | x < 0     = esMultiploDe (-x) y -- Esto en algunos casos se podria escribir de otra forma (???
    | x < y     = esMultiploDe x (-y)
    | x > y     = esMultiploDe (x - y) y
    |otherwise  = "No"
--Se pueden escribir varias series de guardas por la misma funcion. La barra se lee 'tal que'

--ignora el signo de y pero conserva el signo de x
residuo _ 0     = error "Division por cero."
residuo x y
    | y < 0     = residuo x (-y)
    | x < 0     = -residuo (-x) y -- es igual que hacer 0 - residuo
    | x >= y    = residuo (-x) y 
    | otherwise = x

divEntero _ 0   = error "Division por cero"
divEntero x y
    | x < 0     = -divEntero (-x) y
    | y < 0     = -divEntero x (-y)
    | x >= y    = 1 + divEntero (x-y) y
    | otherwise = 0

--residuo nativa es rem
-- divEntero nativa es quot

--Operadores de Bool
-- data Bool = False | True
-- &&
-- ||
-- not
-- /=

--Operadores de orden
-- <
-- >
-- <=
-- >=
