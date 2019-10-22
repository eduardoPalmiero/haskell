{-
Ejercicios para la clase que viene:
escribir las funciones mult (multiplicación entre enteros) y esPrimo (definida solo para enteros positivos).
Mismas condiciones: sin multiplicar ni dividir, solo lo visto en clase
 -}

mult :: Int -> Int -> Int
mult _ 0 = 0
mult x y
    | y < 0 = -mult x (-y)
    | x < 0 = -mult (-x) y
    | y > 0 = x + mult x (y-1)
---
esMultiploDe :: Int -> Int -> Bool
esMultiploDe _ 0    = error ("No se puede dividir por cero.")
esMultiploDe x y
    | x < 0         = esMultiploDe (-x) y
    | y < 0         = esMultiploDe x (-y)
    | x - y == 0    = True
    | x > y         = esMultiploDe (x - y) y
    | otherwise     = False
---
esPrimo :: Int -> Bool
esPrimo 1 = False
esPrimo 0 = False
esPrimo x = elNumeroAnteriorEsMultiplo (x-1)
    where
      elNumeroAnteriorEsMultiplo y
          | y == 1              = True  --Cuando y sea 1 va a ser la ultima iteracion. Si llego a la ultima sin encontrar multiplos es primo.
          | x `esMultiploDe` y  = False
          | otherwise           = elNumeroAnteriorEsMultiplo (y - 1)
