-- fold r|l 1
--
{-
foldr _ z []     = z
foldr f z (x:xs) = f x $ foldr f z xs

f 4 y = 4
f x y = x + y

foldr (+) z [x1,x2,x3] = x1+(x2+(x3+z))
foldl (+) z [x1,x2,x3] = ((z+x1)+x2)+x3
foldl1 (+) [x1,x2,x3] = (x1+x2)+x3
foldl1 f [x1,x2,x3] = (x1 `f` x2) `f` x3 = f (f x1 x2) x3
f x y = y
((z*x1)*x2)*0
-}
--concatenar = (++)
--concatenar "ab" "cd" = "abcd"
concatenar :: [a] -> [a] -> [a]
concatenar xs ys = foldr (:) ys xs

--foldr (:) [] xs = xs
--concatenarL = concat
--concatenarL [[1,2],[4],[5,6]] = [1,2,4,5,6]
concatenarL :: [[a]] -> [a]
concatenarL = foldr concatenar []

{-
filtrar = filter
filtrar (>0) [2,3,-1,4] = [2,3,4]
-}
filtrar f = foldr aux []
    where aux x xs
           | f x          = x:xs
           | otherwise    = xs
-- ultimo = last
ultimo :: [a] -> a
ultimo = foldl1 f -- = foldl1 (flip const)
    where f _ x = x

--cabeza = head
cabeza :: [a] -> a
cabeza = foldr1 const

--todos = all
--todos (>0) [2,3,1] = True
todos f = foldr aux True
    where aux x a
            | f x           = a -- todos (>0) [3,1]
            | otherwise     = False

algun f = foldr aux False
    where aux x a
            | f x           = True
            | otherwise     = a


tomarMientras f = foldr aux []
    where aux x xs
            | f x           = x:xs
            | otherwise     = []

--tomarMientras (>0) [2,-1,3]
aux x xs
    | x > 0     = x:xs
    | otherwise = []
-- t (>0) [2,-1,3] = aux 2 (foldr aux [] [-1,3]) = 2:foldr aux [] [-1,3] = 2:[] = [2]
nula :: [a] -> Bool
nula = foldr f True
    where f _ _ = False

invertir :: [a] -> [a]
invertir = foldl (flip (:)) []

