
-- sin mayor y sin menor. Sin ==.
esPositivo x = esPositivo' (x,x)
esPositivo' (_,0) = False
esPositivo' (0,_) = True
esPositivo' (x,y) = esPositivo' (pred x, succ y)

max x y
    | x >= y    = x
    | otherwise = y
--Tener en cuenta que tiene prioridad el primer elemento.

-- import Data.Char
-- ord :: Char -> Int
--Devuelve el numero ASCII de un caracter
-- chr hace lo contrario

-- El backtick tmb hace que tengan mayor prioridad que las funciones normales. (??????)
-- ademas hace algo raro con el punto.


--para el TP solo podemos usar $, (.), succ, pred, :, ord, chr , (,) , ==