
funcion1 x = 5

funcion2 x = x

funcion3 = 10

funcion4 2 = 10
funcion4 x = x

funcion5 1 = 0
funcion5 _ = 10

funcion6 x
    | x == 1    = 0
    | otherwise = 10


funcion7 x = case x of
    1   -> 0
    _   -> 10

funcion8 x
    | x >= 1    = funcion9
    | otherwise = 10
    where funcion9
            | x == 1    = 1
            | otherwise = 12

funcion10 x
    | x >= 1    = funcion7 (x+w)
    | otherwise = w
    where 
        funcion7 y
            | y == 1    = z - 11 -- Comentario
            | otherwise = z
            where
                z = 12
        w = 10

funcion11 x = w
    where w = x + 2

funcion12 x
    | x == 1                    = 10
    | funcion11 x == 12         = 20
    | otherwise                 = error ("no sé que hacer con el valor x = " ++ show x)

funcion13 x = if x == 0 then 10 else x

funcion14 x = let w = x + z in w
    where z = 10
          q = 5

funcion15 x y = x + y

funcion16 = funcion15 5.0
