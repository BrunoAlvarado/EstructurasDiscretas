import Auxiliar

{-
 Función: a_entero
 Descripción: Toma un dato Natural y devuelve su valor como un entero.
 Uso: a_entero (S (S (S Cero))) = 3
-}
a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S n) = 1 + a_entero n

{-
 Función: multiEnt
 Descripción: Toma dos enteros y regresa el producto de ellos.
 Uso: multiEnt (Neg (Succ Zero)) (Succ (Succ Zero)) = Neg (Succ (Succ Zero))
-}
multiEnt :: Ent -> Ent -> Ent
multiEnt Zero _ = Zero
multiEnt (Succ n) m = sumaEnt m (multiEnt n m)
multiEnt (Neg n) m = Neg (multiEnt n m)
