{-
veces :: Int -> (a -> a) -> (a -> a)
veces 0 _ = id
veces n f = f . veces (n-1) f

id f = f

suma0 = veces 0 (+2)
suma2 = veces 1 (+2)
      = (+2) . veces 0 (+2) = (+2) . id = (+2)

sumaN n y = veces n (y+)
          = veces n (suma y)

sumaN :: Int -> Int -> Int -> Int
sumaN 1 3 = veces 1 (suma 3) = (suma 3) . veces 0 (suma 3) = suma 3 . id = suma 3

sumaN 1 3 5 = suma 3 5 = 8

id . f = f
f . id = f
-}
esPositivo x = esPositivo' (x,x)
esPositivo' (_,0) = False
esPositivo' (0,_) = True
esPositivo' (x,y) = esPositivo' (pred x, succ y)

--
max x y
  | x >= y      = x
  | otherwise   = y

-- max x y /= max y x
{-
ord :: Char -> Int

chr :: Int -> Char
-}
{--
^
$
--}
{-
suma x y = x + y
4 `suma` 5
-}
--suma 4 . id

concatenar = (++)
concatenar [] ys     = ys
concatenar (x:xs) ys = x : concatenar xs ys
{-
concatenar []       = id
concatenar (x:xs)   = (x:) . concatenar xs
-}
-- filtrar = filter
filtrar :: (a -> Bool) -> [a] -> [a]
filtrar _ []        = []
filtrar f (x:xs)
    | f x           = x : filtrar f xs
    | otherwise     = filtrar f xs

{-
Para el TP
$, (.), succ, pred, :, ord, chr, (,), (==)
-}
{-
not True = False
not _    = True

negate x = resta 0 x
-}
{-
suma, usando la resta
resta, usando la suma y el EsPositivo
-}
k a n  | n < 2  = a + n
k a n           = (+2) . k a . pred . pred $ n

-- k  = (+)

-- inicio = init
inicio (x:[]) = []
inicio (x:xs) = x : inicio xs

ultimo (x:[]) = x
ultimo (_:xs) = ultimo xs

partirEn = splitAt
--partirEn n xs = (tomar n xs, sacar n xs)
tomar 2 "bcdef" = "bc"
sacar 2 "bcdef" = "def"
partirEn 2 "bcdef" = ("bc","def")
partirEn 3 "abcdef" = ("abc","def")  = ('a':"bc","def")

partirEn _ []     = ([],[])
partirEn 0 xs     = ([],xs)
partirEn n (x:xs) = (x:ini,fin)
    where (ini,fin) = partirEn (pred n) xs

partirCuando = break
--partirCuando f (x:xs) 
--partirCuando (>0) [(-2),(-6),0,3,(-1)] = ([(-2),(-6),0],[3,(-1)])
partirCuando _ [] = ([],[])
partirCuando f xxs@(x:xs)
    | f x       = ([],xxs)
    | otherwise = (x:ini,fin)
    where (ini,fin) = partirCuando f xs


interponer 1 [2,3,4] = [2,1,3,1,4]
interponer _ []      = []
interponer _ (y:[])  = y:[]
interponer x (y:ys)  = y:x:interponer x ys

concatenarL [[1,2],[3,4],[5]] = [1,2,3,4,5]
    (1:[2]):[[3,4],[5]]
    [2]:[[3,4],[5]]
    [[],[3,4],[5]]
    [[3,4],[5]]
concatenarL :: [[a]] -> [a]
concatenarL [] = []
concatenarL ([]:ys) = concatenarL ys
concatenarL ((x:xs):ys) = x : concatenarL (xs:ys)
 = 1:2:3:4:concatenarL [[5]] 
 = 1:2:3:4:5:concatenarL [[]] 
 = 1:2:3:4:5:concatenarL [] 
 = 1:2:3:4:5:[]
 = 1:2:3:4:[5]
 = 1:2:3:[4,5]
concatenarL = concat

intercalar = intercalate
intercalar ", " ["hola","pepe","juan"] = "hola, pepe, juan"
intercalar [1,2] [[3,4],[5]] = [3,4,1,2,5]
intercalar :: [a] -> [[a]] -> [a]
intercalar xs xss = concatenarL $ interponer xs xss
intercalar ", " ["hola","pepe","juan"] = concatenarL $ interponer ", " ["hola","pepe","juan"] = concatenarL ["hola",", ","pepe",", ","juan"] = "hola, pepe , juan"

colas :: [a] -> [[a]]
colas [] = [[]]
colas xs = xs : colas (cola xs)

inicios "bc" = ["","b","bc"]
inicios "abc" = inicios ('a':"bc") = 
inicios = inits
{-
inicios [] = [[]]
inicios x:[] = []:[[x]] -- Esta línea está de más!
inicios (x:xs) = []: mapeo (x:) (inicios xs)
-}

f exp texto
{-
f [] _ = True
f _ [] = False
f (e:exp2) (t:texto)
    | e == t     = f exp2 texto
    | otherwise  = f (e:exp2) texto
-}

f [] [] = True
f [] _ = False

(ic)+pe
"icicpe"
"icpe"
no "icape"
no "pe"
(ic)+
^, $

[] /= [[]]
[[1]] :: [[Int]]
[] ::[[Int]]
[[]] :: [[Int]]
x:(y:xs)

invertir = reverse
invertir [1,2,3] = [3,2,1]

invertir xs = invertir' xs []
invertir' [] ys = ys
invertir' (x:xs) ys = invertir' xs (x:ys)
invertir [1,2,3] = invertir' [1,2,3] []
invertir' (1:[2,3]) [] = invertir' [2,3] (1:[])
invertir' (2:[3]) [1] = invertir' [3] (2:[1])

todos = all
todos :: (a -> Bool) -> [a] -> Bool
todos (>0) [1,2,3] = True
todos _ [] = True
todos f (x:xs) = f x && todos f xs

algun = any
algun _ [] = False
algun f (x:xs)
    | f x       = True
    | otherwise = algun f xs

largo = length
largo [] = 0
largo (_:xs) = 1 + largo xs

nula = null
nula [] = True
nula _ = False

primero' :: [a] -> Maybe a
primero' []     = Nothing
primero' (x:xs) = Just x

data Maybe a = Nothing | Just a
data Quizas a b = Izq a | Der b

foldl (+) 0 [1,2,3] = 0 + 1 + 2 + 3
foldr (+) 0 [1,2,3] = 1 + (2 + (3 + 0))

concatMap f xs = concat $ map f xs

a = "abcde"

juntar = zip
juntar [1,2,3] "abc" = [(1,'a'),(2,'b'),(3,'c')]

juntar texto [0..]

repetir :: a -> [a]
-- repetir = repetir
repetir x = x:repetir x

replicate n x = take n $ repeat x
replicate 0 _ = []
replicate n x = x:replicate (n-1) x

Tarea:
takeWhile = tomarMientras
maximo
minimo
esPrefijoDe = isPrefixOf
esPrefijoDe "ab" "abcde" = True



(.>=) :: Int -> Int -> Int
