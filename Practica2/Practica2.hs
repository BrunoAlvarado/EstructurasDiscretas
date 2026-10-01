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
Uso: cashbackMonto 6524 =652.4
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

{-
Función: esDescendente
Descripción: Recibe cuatro parámetros de tipo numérico x, y, z, w. Devuelve un valor tipo booleano.
Uso: esDescendente 10 9 8 7 = True
-}

esDescendente :: Double -> Double -> Double -> Double -> Bool
esDescendente x y z w =
  x >= y &&
  y >= z &&
  z >= w

{-
Función: imc
Descripción: Recibe dos parámetros, el primero kg el segundo en metros y devuelve tu imc de acuerdo a la interpretacion según la OMS; bajo, normal, sobrepeso, obesidad
Uso: imc 53.5 1.61 = normal
-}

imc :: Float -> Float -> String
imc kg metros 
  | indice < 18.5 = "bajo"
  | indice < 25 = "peso normal"
  | indice < 30 = "sobrepeso"
  | otherwise = "obesidad"
  where
    indice = kg / (metros * metros)

{-
Función: hipotenusa
Descripción: Recibe dos parámetros de tipo flotante b y h donde b representa la base y h la altura. La función debe devolver un valor de tipo flotante que represente el valor de la hipotenusa que se calcula respecto a la base y altura del triángulo rectangulo.
Uso: hipotenusa 9.0 12.0 = 15.0
-}

hipotenusa :: Float -> Float -> Float
hipotenusa b h = sqrt (b * b + h * h)

{-
Función: pendiente
Descripción: Recibe dos parámetros que serán tuplas de dos elementos de tipo flotante respectivamente, es decir, (x1, y1) y (x2, y2). pendiente debe devolver un valor de tipo flotante que represente la pendiente de la recta que pasa por dos puntos.
Uso: pendiente (3.0, 2.0) (7.0, 8.0) = 1.5
-}

pendiente :: (Float, Float) -> (Float, Float) -> Float
pendiente (x1, y1) (x2, y2) = (y2 - y1) / (x2 - x1)

