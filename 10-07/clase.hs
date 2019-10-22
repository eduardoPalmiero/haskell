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

tails inits las podemos usar de list.

a{2} hay que leerlo, pasarlo el char a numero
hay que leerlo de derecha a izquierda, hay que invertir la cadena. lo podes hacer con un foldr

read x = n 
read '2' = 2

(hola) es lo mismo que (h){1}(o)(l)(a) = (h){1,1}(o)(l)(a)


el corchete es un multiplicador igual que *+?{
{n}
{,m}
{n,}
{n,m}
* es puede estar o no n veces
? es puede estar o no
+ 
ho*la es como ponerle un comodin a o entonces matchea con hhla por ejemplo

no verlo como buscar caracter por caracter sino buscar expresiones. Si no encuentro multiplicador generarlo.