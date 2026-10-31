module Auxiliar (Natural(..), Ent(..), Matrioska(..), sumaNat, multNat, sumaEnt, restaEnt) where

-- Definición de las estructuras de datos
data Natural = Cero | S Natural deriving (Eq, Show)
data Ent = Zero | Succ Ent | Neg Ent deriving (Eq, Show)
data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)

{-
 Función: sumaNat
 Descripción: Suma dos números naturales de forma recursiva.
 Uso: sumaNat (S (S Cero)) (S Cero) = S (S (S Cero))
-}
sumaNat :: Natural -> Natural -> Natural
sumaNat Cero n = n
sumaNat (S n) m = S (sumaNat n m)

{-
 Función: multNat
 Descripción: Multiplica dos números naturales mediante sumas sucesivas.
 Uso: multNat (S (S Cero)) (S (S Cero)) = S (S (S (S Cero)))
-}
multNat :: Natural -> Natural -> Natural
multNat Cero _ = Cero
multNat (S n) m = sumaNat m (multNat n m)

{-
 Función: sumaEnt
 Descripción: Suma dos números enteros manejando los signos positivos y negativos.
 Uso: sumaEnt (Succ Zero) (Neg (Succ Zero)) = Zero
-}
sumaEnt :: Ent -> Ent -> Ent
sumaEnt Zero m = m
sumaEnt n Zero = n
sumaEnt (Succ n) (Succ m) = Succ (sumaEnt n (Succ m))
sumaEnt (Neg n) (Neg m) = Neg (sumaEnt n m)
sumaEnt (Succ n) (Neg m) = restaEnt (Succ n) m
sumaEnt (Neg n) (Succ m) = restaEnt (Succ m) n

{-
 Función: restaEnt
 Descripción: Resta dos números enteros (auxiliar de sumaEnt).
 Uso: restaEnt (Succ (Succ Zero)) (Succ Zero) = Succ Zero
-}
restaEnt :: Ent -> Ent -> Ent
restaEnt n Zero = n
restaEnt Zero (Succ m) = Neg (Succ m)
restaEnt Zero (Neg m) = Succ m
restaEnt (Succ n) (Succ m) = restaEnt n m
restaEnt (Neg n) (Neg m) = restaEnt n m
restaEnt n (Neg m) = sumaEnt n (Succ m)
