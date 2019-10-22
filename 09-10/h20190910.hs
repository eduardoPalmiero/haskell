cuentoDiv :: Int -> Int
cuentoDiv x | x < 1 = error "Es menor a 1."
cuentoDiv x         = cuentoDiv'' 0 x x -- cuentoDiv' x
    where cuentoDiv' 1 = 1
          cuentoDiv' y
            | x `rem` y == 0    = 1 + cuentoDiv' (y-1)
            | otherwise         = cuentoDiv' (y-1)

cuentoDiv'' n _ 1                     = (n+1)
cuentoDiv'' n x y | x `rem` y == 0    = cuentoDiv'' (n+1) x (y-1)
cuentoDiv'' n x y                     = cuentoDiv'' n x (y-1)



{-esMultiploDe x y = flip esDivisorDe

flip f x y = f y x

suma x $ y - 1

sumo2yMult2 x = (*2) . (+2) $ x
sumo2yMult2 = (*2) . (+2)

pred $ x = pred x
-}


(f . (g . h)) x = f (g (h x))


esMultiploDe x y = flip esDivisorDe

flip f x y = f y x

suma x $ y - 1

sumo2yMult2 x = (*2) . (+2) $ x

