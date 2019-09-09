
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
{- 
Ejercicios para repaso general.
Hacer la funcion suma usando la funcion resta.
Hacer la funcion resta usando la funcion suma y el esPositivo

Practicar usar el punto con una funcion que le falta un argumento para que tome el ultimo. -}

{- Nos va a dar ua funcion para Hacer
Una para leer y ver que hace.
Una de traza para llegar al resultado

Alguna funcion creativa que nunca vimos y algo de teoria. -}


partirEn f (x:xs) 
partirEn (>0) [(-1),(-6), 0 ,3 , (-1)] = [[(-2,(-6),0)],[3,(-1)]]

parte la lista en dos cuando encuentra el primer positivo.

intercalar _ []     = []
intercalar _ (y:[]) = y:[]
intercalar x (y:ys) = y:x:intercalar x ys