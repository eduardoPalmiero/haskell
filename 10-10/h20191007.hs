{----- TO DO -----}
-- maximo
-- minimo
-- tomarMientras = takeWhile
-- esPrefijoDe = isPrefixOf
{-
 - max x y
  | x >= y    = x
  | otherwise = y
-}
maximo :: Ord a => [a] -> a -- [Int] -> Int
maximo = foldr1 max
--maximo []     = error "Bla"
--maximo (x:xs) = foldr max x xs -- max x $ maximo xs
{-
maximo (x:xs) = maximo' (xs,x)
maximo' ([],y) = y
maximo' (x:xs,y)
    | x > y     = maximo' (xs,x)
    | otherwise = maximo' (xs,y)
-}  

minimo :: [Int] -> Int
minimo (x:xs) = minimo' (xs,x)
minimo' ([],y) = y
minimo' (x:xs,y)
    | x < y     = minimo' (xs,x)
    | otherwise = minimo' (xs,y)
 

tomarMientras :: (a -> Bool) -> [a] -> [a]
--tomarMientras = takeWhile
tomarMientras f [] = []
tomarMientras f (x:xs)
    | f x       = x : tomarMientras f xs
    | otherwise = []
  
  
esPrefijoDe :: Eq a => [a] -> [a] -> Bool
--esPrefijoDe = isPrefixOf
esPrefijoDe [] _  = True
esPrefijoDe _ []  = False
esPrefijoDe (x:xs) (y:ys) 
    | x == y    = esPrefijoDe xs ys
    | otherwise = False
{-
foldr1 (+) [1,2,3] = 1+(2+3)

foldr (+) 0 [1,2,3] = 1+(2+(3+0))
foldr _ y []     = y
foldr f y (x:xs) = f x $ foldr f y xs

foldr1 f (x:[]) = x
foldr1 f (x:xs) = f x $ foldr1 f xs

foldl1 f (x:xs) = foldl f x xs

foldr (:) [] xs = xs

foldl1 f (x:xs) = foldl1 f

foldl _ y []     = y
foldl f y (x:xs) = foldl f (f y x) xs
foldl (+) 0 [1,2] = (0+1)+2
                  = foldl (+) (0+1) [2]
                  = foldl (+) (1+2) []
                  = 3

x:xs = (:) x xs
-}
funcion xs n
    | null xs       = m + 2
    | head xs == 5  = m + 8
    | otherwise     = m + 1
    where m = n + 1

funcion2 xs n = case xs of
    []      -> m + 2
    (5:_)   -> m + 8
    (4:x:_) | x > 0 -> m + 1
    where m = n + 1

{-
case
-}

--f xss = [x | (x:_) <- xss]
{-
transponer []       = []
transponer ([]:_)   = []
transponer xss  = map head xss : transponer (map tail xss)
-}
transponer [] = []
transponer ([]:xs) = transponer xs
transponer xss = [x | (x:_) <- xss]:transponer [xs | (_:xs) <- xss]

a{2}

read '2' = 2
read x = n
'23'

