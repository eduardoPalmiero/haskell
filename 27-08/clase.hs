-- $ es 'como evaluar a'

-- Primero parentesis , dps funciones con letras y dps los operadores. $ es la que menos prioridad tiene.
-- Se compone funciones de a pares y de derecha a izquierda.\

-- h = (f b . g a) x
-- h = f b $ g a x



-- Tuplas o Duplas
(x,y)
-- Es un tipo que tiene dos o mas tipos adentro. En el fondo son todas funciones.
-- Se usa por ejemplo si necesito que una funcion devuelva dos valores en lugar de uno solo.
sumaYmult x y = (x+y, x*y)

(w,z) = sumaYmult 4 5

-- Podes mezclar tipos
(9,"bla",10)
--Si pedis uno solo de los parametros de salida no calcula el segundo, 
--directamente no corre esa parte de la funcion. No calcula lo que no necesita mostrar.

-- Toda funcion tiene su tipo

-- Los :: se leen como 'es de tipo'
-- :t te devuelve el tipo. Tmb podes definirlo a mano, por ejemplo
let x = 4::Int
--Es buena practica escribir el tipo de todas las funciones que uno escribe.
-- Se escribe arriba de la primer definicion.
-- Vimos Int y Bool
Para el lunes ponerle el tipo a todas las funciones.

-- const para sacar un parametro, a veces para componer necesitas sacar un parametro.