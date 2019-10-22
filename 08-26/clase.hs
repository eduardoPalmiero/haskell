esPrimo 1 = False
esPrimo x = esPrimo' (x-1)
    where esPrimo' y
        | y == 1            = True
        | esMultiploDe x y  = False
        | otherwise         = esPrimo' (y-1)

mult 0 _         = 0
mult x y | x < 0 = mult (-x) (-y)
mult x y         = y + mult (x -1) y

-- funcion succ
-- succ = (+1)
-- succ x = (x + 1)
-- la opuesta es pred
-- pred x = (x -1)
-- :i funcion te dice la definicion de la func.

-- el $ hace que no tengas que escribir parentesis
(ss s s a 0) (ls a a)
ss s s a 0 $ ls a a 

-- --Es asociatividad hacia la derecha
-- f $ g $ h x = f (g (h x)) 
-- -- la identidad de x se determina asi
-- id x = x

-- -- para componer funciones es con .
-- (f . g) x = f (g x) = f & g x
-- --
-- f . id = f
-- id . f = f
-- (f .g . h) x = f(g(h x))

-- La x no es mas que una funcion sin parametros. Todo son funciones