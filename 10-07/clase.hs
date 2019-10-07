-- foldr (+) 0 [1,2,3] = 1+(2+(3+0))
foldr _ y []        = y
foldr f y (x:xs)    = x `f` foldr f y xs
-- foldr se puede usar para listas infinitas


-- foldl (+) 0 [1,2,3] = ((0+1)+2)+3
foldl _ y []        = y
foldl f y x:xs      = foldl f (f y x ) xs

-- ignora la asociatividad del operador, usa la asociatividad del fold.

-- El dos puntos es un operador como otro. Solo que tambien podemos usarlo en los patrones (aunque en realidad son dos definiciones distintas)
-- x:xs = (:) x xs

-- foldr1 es con un parametro menos, toma el ultimo valor como acumulador y usa el resto de la lista. Si le pasas la lista vacia tira error.
foldr1 
foldl1

--CASE podes ponerlo al final porque matchea el generico, pero si lo pones primero va a entrar siempre.

[() | , ]

lo que va despues del pipe es un patron tambien, no es una variable.

[ x | x <- xs , x > 0 ]

[x | (x:xs) <- [[1,2,3],[1,2]]]

[x | (x:xs) <- [[1,2,3],[]]]
devuelve solo aquelals que tengan el patron. esto lo puede hacer porque asi funcionan los monads.

