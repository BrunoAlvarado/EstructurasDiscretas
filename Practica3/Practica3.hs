{-
    Descripción: Práctica 3 del Laboratorio de Estructuras Discretas
    Derechos de autor: Alvarado Ibáñez Bruno
    Responsable de la practica: alvarado.30@ciencias.unam.mx
-}


{-
   Comando: import EsParBit (esParBit)
   Descripción: Se importa una función previamente definida mediante un módulo para su uso en este archivo.
   Uso: Al inicio del código debe escribirse import NombreDelArchivo(EsParBit) para poderlo llamar.
-}

import EsParBit (esParBit)

{-
    Función: cetes
    Descripción: Recibe un monto inicial, el plazo de inversión del dinero en meses o dias y devuelve el monto final disponible al concluir el plazo seleccionado
    Uso: cetes 100 (Dias 28) = 100.4
    //Disclaimer usaré una función auxiliar para días y para tasa para poder obtener el resultado.
-}

data Plazo = Dias Int | Meses Int deriving (Show)

{-
    Función auxiliar: obtenerDias
    Descripción: Recibe un plazo ya sea Meses o Dias y devuelve un entero indicando los días del plazo.
    Uso: obtenerDias (Meses 6) = 182 (días)
-}

--Función auxiliar para dias
obtenerDias :: Plazo -> Int
obtenerDias (Dias n) = n
obtenerDias (Meses 1) = 28 
obtenerDias (Meses 6) = 182
obtenerDias (Meses 12) = 364

{-
    Función auxiliar: obtenerTasa
    Descripción: Recibe un entero proveniente de la función obtenerDias en el que dependiendo del plazo calcula la tasa asignada.
    Uso: obtenerTasa 28 = 0.0609
-}

--Función auxiliar para tasa
obtenerTasa :: Int -> Float
obtenerTasa ts = 
    if ts == 28 then 
        0.0609
    else if ts == 182 then
        0.0691
    else if ts ==  364 then
        0.0744
    else 0.0
    
--Función principal cetes
cetes :: Float -> Plazo -> Float 
cetes monto plazo = monto * (1 + tasa * (fromIntegral dias/360.0))
  where
    dias = obtenerDias plazo
    tasa = obtenerTasa dias

        
{-
    Función: mensajeCetes
    Descripción: Recibe un monto inicial de inversión, un plazo expresado en dias o meses y devuelve un mensaje indicando: El plazo de la inversión, el rendimiento bruto obtenido y el monto acumulado al finalizar el plazo.
    Uso: mensajeCetes 100 (Dias 28) = "Después de n dias, obtuve m de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversión es de k."
    Donde n representa el plazo de la inversión, m representa el rendimiento bruto obtenido y k representa el monto total.
-}

mensajeCetes :: Float -> Plazo -> String
mensajeCetes monto plazo =
  if tasa == 0.0 then
    "Plazo no admitido, intente de nuevo"
  else
    "Despues de " ++ show plazoInversion ++ " dias, obtuve " ++ show rendimiento ++ " de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es de " ++ show montoTotal
  where
    montoTotal = cetes monto plazo
    rendimiento = montoTotal - monto
    plazoInversion = obtenerDias plazo
    tasa = obtenerTasa(obtenerDias plazo)  


{-
    Función: negativos
    Descripción: Cuenta números negativos de una lista.
    Uso: negativos [-1, 2, 4, 6, -4] = 2
-}

negativos :: [Int] -> Int
negativos xs = length [ x | x <- xs, x < 0 ]


{-
    Función: soloPares
    Descripción: Usando una lista por comprensión y haciendo uso de la función esParBit vista en clase, la función soloPares recibe una lista de tipo entero y devuelve una lista únicamente con los números que sean pares de la lista original.
    Uso: soloPares [1,2,3,4] = [2,4]
-}

soloPares :: [Int] -> [Int]
soloPares xs = [ x | x <- xs, esParBit x ]


{-
    Función: primos
    Descripción: Usando una lista por comprensión, se define la función primos que devuelva los números primos de esa lista. Se usará una función auxiliar esPrimo para poder determinar la función primos.
    Uso: primos [1..20] = [2, 3, 5, 7, 11, 13, 17, 19]
-}

{-
    Función: esPrimo
    Descripción: La función recibe un entero y devuelve un booleano si es primo o no es primo contando sus divisores
    Uso: esPrimo 7 = True
-}

--Función auxiliar esPrimo
esPrimo :: Int -> Bool
esPrimo n =
  if n > 1
    then length [ d | d <- [1..n], mod n d == 0 ] == 2
    else False
         
primos :: [Int] -> [Int]
primos xs = [ x | x <- xs, esPrimo x ]


{-
   Función: coprimos
   Descripción: La función coprimos recibe un entero y devuelve una lista de los coprimos de n. Se usarán dos funciones auxiliares: mcd y esCoprimo para poder definirla
   Uso: coprimos 10 = [1,3,7,9]
-}

{-
   Función: mcd
   Descripción: Calcula el máximo común divisor de dos enteros
   Uso: mcd 10 6 = 2
-}

--Función auxiliar mcd
mcd :: Int -> Int -> Int
mcd a 0 = a
mcd a b = mcd b (mod a b)

{-
   Función: esCoprimo
   Descripción: La función es Coprimo determina si dos enteros son coprimos, o sea, si su MCD es 1.
   Uso: esCoprimo 3 10 = True
-}

--Función auxiliar esCoprimo
esCoprimo :: Int -> Int -> Bool
esCoprimo a b = mcd a b == 1

--Función principal coprimos
coprimos :: Int -> [Int]
coprimos n = [ x | x <- [1..n-1], esCoprimo x n ]
