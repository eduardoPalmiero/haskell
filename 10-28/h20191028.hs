import Aliases
{-
a=1
b=0
do while (a<5) {
b+=a
a++

f :: Int -> Int -> Int
f a
 | a < 5      = (+a) . f (a+1)
 | otrherwise = id


f a b | a < 5 = f (a+1) (b+a)
f a b         = b
b=0
for (a=1;a<5;a++) {
    b+=a
}
b = f 1 0

f(x) {
 y++
}

for (x=0; x < 5; x++)
if () {
} else {
}
goto
y=0
foreach(x in xs) {
  y+=x+1
}
ys = mapear (+1) xs
map _ []     = []
map f (x:xs) = f x:map f xs

hacerX(y);

x=if y == 5 then 4 else 7
x=if y == 5 then f(y) else 8

funcion x
    | x == 9     = 
    | otherwise  = z
    where z = f x

f x 
          | y == 5  = aux x
          | otherw

map f $ particiones xs
f (ini,fin) 


g :: (Int -> Bool)
g = fo (>3) (<0)
g 5
id :: (a -> Bool) -> (a -> Bool)
h = id g
--
-- fa "a"   = True
fa ('a':[]) = True
fa _        = False

fChar 'd' "d"           = True
fChar 'd' "do"          = False
fChar 'd' ""            = False
-}
fChar c (x:[]) | x == c = True
fChar _ _               = False

fa :: [Char] -> Bool
fa = fChar 'a'
fd = fChar 'd'

faod = fo fa fd
{-
faod "d" = True
faod "a" = True

fad "ad" = True
-}
fo :: (a -> Bool) -> (a -> Bool) -> (a -> Bool)
fo a b x = a x || b x
{-
particiones [1,2,3]  = [([],[1,2,3]),([1],[2,3]),([1,2],[3]),([1,2,3],[])]
particiones "ado" [("","ado"),("a","do"),("ad","o"),("ado","")]
-}

--fjoin fa fd "ado" = False
fjoin :: ([Char] -> Bool) -> ([Char] -> Bool) -> ([Char] -> Bool)
fjoin a b xs = algun faux $ particiones xs
    where faux (ini,fin) = a ini && b fin

fad = fjoin fa fd
fe = fChar 'e'
fadad = fjoin fad fad
--fadad "adad" = True
{-
matchear (x:xs) (y:ys) = x == y && matchear xs ys
matchear _ _           = False
-}
vacia :: [Char] -> Bool
vacia = nula
{-
matchear "a" "a" = True
matchear []     = vacia
matchear ('.':xs) = fjoin () (matchear xs)

matchear (x:'?':xs) = fjoin (quizas (fChar x)) (matchear xs)
matchear ('[':xs) = fjoin (fLista lista) (matchear xs')
    (lista,xs') = funcionBuscoCorchete xs -- "pac]bla"
subpartes ys = concat $ map inicios $ colas ys
algun (matchear xs) $ subpartes ys
"ab" = ["","a","b","ab"]

"a?"
faq = quizas fa-}
quizas :: ([Char] -> Bool) -> ([Char] -> Bool)
quizas = fo vacia
{-
(quizas fa) "a" = True
"a*"
fa' ""  = True
fa' "a" = True
fa' "aaaa" = True
fa' "ab" = False
"a*" = fo "a?" "aa*"
-}
solo f = quizas $ fjoin f (solo f)

fLista :: [Char] -> ([Char] -> Bool)
fLista ['p','a','c'] "pa" = False
fLista ['p','a','c'] "c" = True

flPac = fLista "pac"

flPacPAc = flPac `fjoin` flPac

