esPrimo 1 = False
esPrimo x = esPrimo' (x-1)
    where esPrimo' y
            | y == 1            = True
            | esMultiploDe x y  = False
            | otherwise         = esPrimo' (y-1)

esMultiploDe x y = x `rem` y == 0

-- mult 0 _            = 0
mult x y  | x < 0   = mult (-x) (-y)
mult x y            = x `veces` (+y) $ 0 -- y + mult (pred x) y

-- mult = (*)

-- succ = (+1)
-- succ x = x + 1
-- pred x = x - 1

-- f $ x = f x

-- (ss s s a  0 ) (ls s a  )
-- f $ g $ h x = f (g (h x))  -- NO ES: ((f g) h) x

--id x = x

-- (f . g) x = f (g x) = f $ g x
-- f . g = \x -> f $ g x
-- f . id = f
-- id . f = f
--(f . g . h) x = f (g (h x))
--
-- x = 50
sumo1 x = x + 1
por2 x = x * 2
sumo1ymul2 = por2 . id . sumo1

mult2ysumo3 = (+3) . mult 2

--suma 0 y            = y
suma x y | x < 0    = (-x) `veces` pred $ y -- suma (succ x) (pred y)
--suma x y            = suma (pred x) (succ y)
suma x y            = x `veces` succ $ y

--veces n f = n `veces` f

aplicoNVeces 0 _ x = x
--aplicoNVeces n f x = aplicoNVeces (n-1) f (f x)
--aplicoNVeces n f x = f $ aplicoNVeces (pred n) f x
aplicoNVeces n f x = f . aplicoNVeces (pred n) f $ x

veces 0 _ = id
veces n f = f . veces (pred n) f
--suma 4 5 = succ $ suma 3 5 = succ $ succ $ suma 2 5 ... =

--sumo4 = aplicoNVeces 4 succ
-- sumo4 = id . succ . succ . succ . succ
sumo8 = veces 4 (+2)
