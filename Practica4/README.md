## Práctica 4: Estructuras recursivas y análisis de código

# Alumno: Alvarado Ibáñez Bruno
# Asignatura: Estructuras Discretas (Laboratorio)

---

## Objetivo de la práctica

El objetivo de esta práctica es aplicar los conceptos de recursión y definición de tipos de datos algebraicos en Haskell mediante la creación de estructuras propias como Natural, Ent (Enteros) y Matrioska. A través de los ejercicios se buscó comprender cómo se traducen las definiciones matemáticas recursivas (casos base y casos recursivos) a código funcional. 

Además, la práctica tiene como propósito fomentar la organización del código mediante el uso de módulos (Auxiliar.hs), implementar funciones de orden superior de forma manual (como el algoritmo de ordenamiento o la multiplicación de enteros), y realizar un análisis crítico comparando dos implementaciones distintas de una misma estructura matemática.

---

## Ejercicio 8: Análisis de código (enteros.hs vs entero.hs)

1. ¿Cuál es la diferencia de las operaciones implementadas en ambos archivos? ¿Cómo se manejan todos los casos en cada implementación?
- enteros.hs (Adjunto): Utiliza comparaciones explícitas (==) y una función auxiliar llamada mayorEnt para determinar el signo del resultado cuando se mezclan signos positivos y negativos (por ejemplo, en sumaEnt (Suc n) (Neg m)). Implementa una recursión mutua donde sumaEnt llama a restaEnt y viceversa. Es una implementación muy verbosa que requiere evaluar cada caso manualmente.
- entero.hs (Repositorio): Es una implementación algebraica y mucho más limpia. Evita el uso de comparaciones explícitas y de mayorEnt. Resuelve los casos mixtos transformando la operación (ej. en resta_ent n (Neg m) = suma_ent n (Succ m), convierte la resta de un negativo en una suma de un positivo). Esto reduce drásticamente la cantidad de código y la complejidad lógica.

2. ¿Por qué se tiene implementada la operación mayorEnt en el archivo enteros.hs?
Porque en su definición de restaEnt, al restar dos números con el mismo signo (ej. Suc n menos Suc m), el programa no sabe de antemano si el resultado final será positivo o negativo. Para resolverlo, usa mayorEnt para ver quién es el número más grande y, con base en eso, decide si debe envolver el resultado en un Suc o en un Neg. En el archivo del repositorio, esto se evita porque la resta se resuelve cancelando de uno en uno hasta llegar a cero (resta_ent (Succ n) (Succ m) = resta_ent n m), manejando el signo de forma natural.

3. Si pudieras quedarte con una sola implementación, ¿cuál sería? Justifica tu respuesta.
Elegiría la del repositorio (entero.hs). Es más eficiente, ya que evita tener que llamar a una función extra (mayorEnt) para comparar en cada paso de la resta. Además, es más fácil de leer, pues usa las propiedades algebraicas de los números (como que restar un negativo es equivalente a sumar) en lugar de usar condicionales o guardas para resolver todos los cruces de signos.

---

## Tiempo requerido

El tiempo total requerido para realizar la práctica fue de aproximadamente 4 horas.

## Ejercicio favorito

De entre todos los ejercicios que realicé, puedo decir que el ejercicio 7 (aplana) fue el que más disfruté programar. El uso del patrón m(Cont n) para nombrar la estructura completa y a la vez acceder a su interior.  

---

## Estado final de la práctica

Al finalizar la práctica, se implementaron todas las funciones solicitadas distribuidas correctamente en los archivos natural.hs, mati.hs y entero.hs, apoyándose del módulo Auxiliar.hs. Las funciones cuentan con sus respectivas firmas de tipo y comentarios, y fueron probadas mediante GHCi. La práctica incluye este documento de documentación y la evidencia del historial de versiones con commits atómicos y semánticos.

## Estructura de la práctica

La carpeta correspondiente a la práctica contiene los archivos con las funciones implementadas, el módulo auxiliar, este documento de documentación y las capturas de pantalla correspondientes a las pruebas realizadas mediante GHCi.

```
Practica4/
├── Auxiliar.hs
├── natural.hs
├── mati.hs
├── entero.hs
├── README.md
├── ghci_ejercicio_natural.png
├── ghci_ejercicio_entero.png
└── ghci_ejercicio_mati.png
```
