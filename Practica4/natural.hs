import Auxiliar

{-
 Función: a_natural
 Descripción: Toma un entero y lo convierte a la estructura Natural.
 Uso: a_natural 2 = S (S Cero)
-}
a_natural :: Int -> Natural
a_natural 0 = Cero
a_natural n = S (a_natural (n-1))

{-
 Función: potenciaNat
 Descripción: Eleva un número natural a la potencia del segundo.
 Uso: potenciaNat (S (S (S Cero))) (S (S Cero)) = S (S (S (S (S (S (S (S (S Cero))))))))
-}
potenciaNat :: Natural -> Natural -> Natural
potenciaNat _ Cero = S Cero
potenciaNat m (S n) = multNat m (potenciaNat m n)

{-
 Función: facNat
 Descripción: Calcula el factorial de un natural dado.
 Uso: facNat (S (S (S Cero))) = S (S (S (S (S (S Cero)))))
-}
facNat :: Natural -> Natural
facNat Cero = S Cero
facNat (S n) = multNat (S n) (facNat n)


