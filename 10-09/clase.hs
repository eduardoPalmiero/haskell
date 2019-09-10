cuentoDiv :: Int -> Int
cuentoDiv x | x < 1 = error "Es menor a 1."
cuentoDiv x         = cuentoDiv' x
    where   cuentoDiv' 1 = 1
            cuentoDiv' y
                    | x `rem` y == 0    = 1 + cuentoDiv' (y-1) --  aca el uno va haciendo como un contador, es lo que finalmente se devuelve, la suma de todos los unos que es todas las veces que pudo dividir y el resto le dio 0
                    | otherwise         = cuentoDiv' (y-1)


