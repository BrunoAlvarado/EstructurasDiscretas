{-
Descripción: Práctica 2 del Laboratorio de Estructuras Discretas
Derechos de autor: Alvarado Ibáñez Bruno
Responsable de la práctica: alvarado.30@ciencias.unam.mx
-}

{-
Función: reconversión
Descripción: Recibe un parámetro numérico, hace una reconversión monetaria quitando 3 ceros al valor ingresado.
Uso: reconversion 100 = 0.1
-}
  
reconversion :: Float -> Float
reconversion x = x / 1000

{-
Función: cashback
Descripción: calcula el cashback obetenido de una tarjeta de crédito con el 10% de puntos.
Uso: cashback 2545 = 254
-}

cashback :: Float -> Int
cashback monto = truncate (monto * 0.10)

{-
Función: cashbackMonto
Descripción: Recibe una cantidad de puntos y devuelve lo equivalente en dinero
-}

cashbackMonto :: Int -> Float -> Float 
cashbackMonto puntos valor = fromIntegral puntos * 0.10

{-
Función: minutosHoras
Descripción: Recibe minutos y debe devolver su conversión en horas
Uso: minutosHoras 112 = 1 hora y 52 minutos
-}

minutosHoras :: Int -> String
minutosHoras minutos =
  show (minutos `div` 60) ++ " hora y " ++
  show (minutos `mod` 60) ++ " minutos"

{-
Función: esEstafa
Descripción: Devuelve True si la transacción representa una estafa o False en caso contrario.
Uso: esEstafa 100 200 100 0 = True
-}

esEstafa :: Float -> Float -> Float -> Float -> Bool
esEstafa costo billeteInicial billeteExacto cambio =
  billeteInicial > costo &&
  billeteExacto == costo &&
  cambio == 0


  
