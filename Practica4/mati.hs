import Auxiliar

{-
 Función: mayorIgual
 Descripción: Compara dos matrioskas y devuelve True si la primera tiene igual o más muñecas que la segunda.
 Uso: mayorIgual (Cont Mati) Mati = True
-}
mayorIgual :: Matrioska -> Matrioska -> Bool
mayorIgual Mati Mati = True
mayorIgual (Cont _) Mati = True
mayorIgual Mati (Cont _) = False
mayorIgual (Cont m) (Cont n) = mayorIgual m n

{-
 Función: aplana
 Descripción: Convierte una matrioska anidada en una lista plana de todas sus componentes. 
 Uso: aplana (Cont Mati) = [Cont Mati, Mati]
-}
aplana :: Matrioska -> [Matrioska]
aplana Mati = [Mati]
aplana m@(Cont n) = m : aplana n
