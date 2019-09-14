{- 
Escribir las funciones esMultiploDe y residuo que satisfacen:
esMultiploDe 35 7 -> "Si"
esMultiploDe (-35) 5 -> "Si"
esMultiploDe 14 3 -> "No"
esMultiploDe x 2 = esPar x
residuo 35 7 -> 0
residuo (-35) 5 -> 0
residuo 14 3 -> 2
residuo x 2
    | esPar x == "Si"   = 0
    | x < 0             = -1
    | otherwise         = 1

Para quien se sienta motivado, otra función un poco más complicada: divEntero que satisface:

divEntero 35 7 -> 5
divEntero (-35) 5 -> (-7)
divEntero 14 3 -> 4 -
}


