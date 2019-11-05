import Aliases
-- fChar c xs: Devuelve True si el String xs tiene un solo elemento y ese elemento es c. Devuelve False en cualquier otro caso.
-- fChar 'd' "d"           = True
-- fChar 'd' "do"          = False
-- fChar 'd' ""            = False
fChar :: Char -> [Char] -> Bool
fChar c (x:[]) | x == c = True
fChar _ _               = False

-- fo fa fb x: Devuelve True si `fa x` o `fb x` es True. False si `fa x` y `fb x` son False.
-- fo (>10) (<5) 3 = True
-- fo (>10) (<5) 6 = False
-- fo (>10) (<5) 20 = True
fo :: (a -> Bool) -> (a -> Bool) -> (a -> Bool)
fo a b x = a x || b x

-- fjoin: Más fácil de interpretar como una función de 2 parámetros:
-- fjoin fa fb: Toma 2 funciones (`fa` y `fb`) de tipo `String -> Bool` y devuelve una tercera con el mismo tipo. Esta última función devuelve True si hay alguna partición del String tal que la parte inicial matcheé con fa y la parte final matcheé con fb.
-- fho "ho"     = True
-- fho _        = False
-- fla "la"     = True
-- fla _        = False
-- fhola "hola" = True
-- fhola _      = False
-- Entonces: fjoin fho fla == fhola
fjoin :: ([Char] -> Bool) -> ([Char] -> Bool) -> ([Char] -> Bool)
fjoin fa fb xs = algun faux $ particiones xs
    where faux (ini,fin) = fa ini && fb fin

-- vacia: Devuelve si un String está vacío
-- vacia "a" = False
-- vacia ""  = True
vacia :: [Char] -> Bool
vacia = nula

-- quizas f s: Devuelve True si el String `s` esta vacío (sin evaluar `f s`), sino devuelve el resultado de `f s`
-- fho' = quizas fho
-- fho' "hola" = False
-- fho' "ho"   = True
-- fho' "h"    = False
-- fho' ""     = True
-- quizas vacia == vacia
quizas :: ([Char] -> Bool) -> ([Char] -> Bool)
quizas = fo vacia

-- solo f s: Devuelve True si el String `s` se compone de cero o más substrings que matchean con `f`
-- fho''        = solo fho
-- fho'' "hola" = False
-- fho'' "ho"   = True
-- fho'' "hoho" = True
-- fho'' "hohola" = False
-- fho'' ""     = True 
solo f = quizas $ fjoin f (solo f)
