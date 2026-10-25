{-
    Descripción: Práctica 3 del Laboratorio de Estructuras Discretas
    Derechos de autor: Alvarado Ibáñez Bruno
    Responsable de la practica: alvarado.30@ciencias.unam.mx
-}


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
    
--Función cetes
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
  
