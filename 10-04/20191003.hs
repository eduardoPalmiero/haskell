cola (x:xs) = xs

inicio 
ultimo 

primero (x:xs) = x

mapeo f [] = []
mapeo f (x:xs) = f x : mapeo f xs

