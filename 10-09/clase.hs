cuentoDiv :: Int -> Int
cuentoDiv x | x < 1 = error "Es menor a 1."
cuentoDiv x         = cuentoDiv' x
    where   cuentoDiv' 1 = 1
            cuentoDiv' y
                    | x `rem` y == 0    = 1 + cuentoDiv' (y-1) --  aca el uno va haciendo como un contador, es lo que finalmente se devuelve, la suma de todos los unos que es todas las veces que pudo dividir y el resto le dio 0
                    | otherwise         = cuentoDiv' (y-1)


--dps el profe hizo otra forma de hacer la misma funcion.

-- suma x y = resta x (resta 0 y)
-- suma 2 4 = resta 2 (-4)
-- suma 2 4 =  2 - (-4)
-- suma 2 4 = 2 + 4



-- el let es un where inverso

-- no importa el orden en que definis las cosas,lo que importa es que este dentro del scope
{- 
fromIntegral x transforma un numero entero en el tipo que quieras pasarlo. Transforma un numero en otro tipo de dato. Lo que define cual es el operador

ejemplo

fromIntegral 4 / fromIntegral 5 -> 0.8

floor sirve para lo mismo pero para pasar de coma flotante a entero, ceiling y round. Floor trunca para abajo, ceiling va siempre para arriba incluso en negativos

y round redondea.
 -}

{-  Trace toma un string y cualquier otro valor y escupe en la consola el string.

 No sabes en que orden va a tirar el resultado, lo unico que garantiza es que paso por ahi, pero no sabes cuando.

 show transforma el dato en texto. -}
{- 
 En los patrones importa el orden en que lo escribamos, va en secuencia. 

 f _ = 0
 f 5 = 5 siempre va a devolver cero porque matchea en la primera linea. -}

{-  El guion bajo se usa cuando no me importa su valor. Si me importa su valor le pongo un nombre.



 -}
-- esMultiplo x y  = flip esDivisorDe

-- flip f x y = f y x

mult 0 y = 0
mult x y = y + mult (x - 1) y

mult' 0 y           = 0
mult' x y | x < 0   = 0 - mult' (-x) y
mult' x y           = (+y) . flip mult y . pred $ x -- El pesos es construyo una funcion desde la izquierda y tengo los argumentos a la derecha.
                    -- = flip mult y (pred x) + y --es esto.
                    -- = mult (pred x) y + y

-- Se pueden componer funciones a las que les falta un parametro.

{- suma x (y -1)
suma x $ y - 1 -}
-- hace las dos cosas por separado y despues la une. Tiene la mas baja prioridad, es lo ultimo.

{- El punto compone funciones que tienen un solo parametro. Si le falta un solo parametro la composicion le falta un parametro.

Por ejemplo +2 le falta un parametro. -}

-- Aca esto es lo mismo
-- sumo2yMult2 = (*2) . (+2)
sumo2yMult2 x = (*2) . (+2) $ x
sumo2yMult2 x = (x + 2) * 2


-- En caso que no lleguemos a termnar el tp en toda su funcionalidad, decir para que no funciona, hasta donde llega nuestro tp.