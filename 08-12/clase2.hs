  
funcion1 x = 5

funcion2 x = x

funcion3 = 10
  
  --si el parametro es 2 el resultado es 10 y en cualquier otro caso devuelve el valor del parametro
funcion4 2 = 10
funcion4 x = x
  
  --devuelve cero cuando le tiro 1 y devuelve 10 cuando le tiro otra cosa. elguin bjao es un comodin
  -- Todas las definiciones de una funcion deben estar juntas, eso si.
funcion5 1 = 0
funcion5 _ = 10
  
  {- esto es como un case y el otherwise es como un default. no es una palabra reservada. 
  otherwise es true, como una constante.
   va evaluando en orden 
   Ademas el otherwhise tiene que estar si o si, sino tiraria excepcion.
   -}
funcion6 x
  | x == 1    = 0
  | otherwise = 10
  
funcion7 x = case x of
  1   ->  0
  _   ->  10


-- funcion10 x
--     | x >= 1    = funcion7
--     | otherwise = 10
--     where 
--         function7 y
--             | x == 1    = 1
--             | otherwise = 12

-- se permite redifinir funciones. Siempre se busca el mas cercano.
-- el where define valores o funciones intermedias dentro de una funcion. No importa que este al final. 
funcion11 x = w
        where w = x + 2

funcion12 x 
        | x == 1                = 10
        | funcion11 x == 12     = 20
        | otherwise             = error $ "no se que hacer con el valor x = " ++ show x
   --   | otherwise             = error ("no se que hacer con el valor x = " ++ show x)

        
-- el signo $ es equivalente a poner parentesis hasta el fin de la linea. es una funcion.
-- existe el if y el else pero no se usa
-- t ($) muestra la definicion de la funcion
funcion13 x = if x == 0 then 10 else x

-- esto es lo mismo que lo que esta en la funcion11
funcion14 x = let w = x + 2 in w

-- En este caso se usaria la primera w porque es la que esta mas cerca.
-- funcion14 x = let w = x + 2 in w
--   where w = 10

funcion15 x y = x - y

restar5 =  funcion15 5
-- el parametro que le pases a restar5 va a ser y de funcion15
--si llamas funcion16 10 te devolveria 15


