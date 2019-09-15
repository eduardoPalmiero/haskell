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
