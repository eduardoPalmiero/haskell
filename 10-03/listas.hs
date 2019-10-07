interponer _ []     =   []
interponer _ (y:[]) = y:[]
interponer x

-- una lista vacia que contiene una lista vacia dentro
-- [[]]
-- [[1]] :: [[Int]]
-- []
-- [[]] ::

-- El operador : tiene asociatividad a la derecha (infixr prioridad)

-- x:y:xs
-- agrega primero y dps x a la derecha.


-- Funciones que vimos:
cola (x:xs) = xs --  devuelve todo menos el primer elemnto
primero (x:xs) = x
-- inicio devuelve todos los elementos menos el ultimo
-- ultimo
mapeo f [] = []
mapeo f (x:xs)  = f x : mapeo f xs
-- concatenar
-- filtrar

tomar 2 "bcdef" = "bc"
sacar 2 "bcdef" = "def"
partirEn 2 "bcdef" = ("bc","def")


concat $ map inits $ tails "string donde buscar"

TAREA:
tomarMientras f []
maximo
minimo
esPrefijoDe
