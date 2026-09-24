# Práctica 1: Haskell, Git y GitHub

~~ 1. ¿Cuáles son las principales diferencias entre Haskell y Rust?

Haskell y Rust son lenguajes de programación que tienen características relacionadas con la seguridad y la confiabilidad del software, pero parten de ideas diferentes y están diseñados con objetivos distintos.

Haskell es un lenguaje puramente funcional, con tipado estático y polimórfico y evaluación no estricta. Esto significa que la programación en Haskell se basa principalmente en funciones y en la composición de estas, procurando evitar los efectos secundarios dentro de las funciones puras. Además, Haskell utiliza características como las funciones de orden superior, los tipos algebraicos, el pattern matching y las type classes. La especificación de Haskell describe estas características como parte fundamental del lenguaje.
Rust, por otro lado, es un lenguaje diseñado para producir software eficiente y seguro sin depender de un recolector de basura. Una de sus características principales es el sistema de ownership, junto con borrowing y lifetimes. Estas reglas son comprobadas por el compilador y permiten garantizar seguridad de memoria y seguridad  en el código seguro de Rust.

Otra diferencia importante es la forma en la que cada lenguaje maneja la memoria. En Haskell, el programador normalmente no administra directamente la memoria de la misma manera que lo haría en lenguajes como C o C++. El lenguaje se apoya en su sistema de ejecución y en la recolección de basura. Rust utiliza su sistema de ownership para determinar durante la compilación cuándo un valor puede utilizarse y cuándo debe dejar de existir, sin necesitar un garbage collector.

También existen diferencias en la forma de programar. Haskell está orientado principalmente al paradigma funcional y trata de expresar los problemas mediante funciones y transformaciones de datos. Rust permite combinar diferentes estilos de programación y está especialmente orientado a construir software que necesite un alto nivel de rendimiento y control sobre los recursos del sistema.
En cuanto al rendimiento, ambos lenguajes pueden producir programas eficientes, pero Rust está diseñado explícitamente para permitir un control de bajo nivel sin abandonar las garantías de seguridad de memoria. El propio proyecto de Rust destaca como objetivos el rendimiento, la eficiencia en memoria y la posibilidad de desarrollar software sin un recolector de basura.

En resumen, la diferencia principal es que Haskell trabaja bajo el paradima de programación funcional,  mientras que Rust busca combinar seguridad de memoria, rendimiento y control de recursos. Ambos utilizan sistemas de tipos fuertes, pero sus mecanismos y objetivos principales son diferentes.


~~ 2. ¿Por qué Haskell no ha alcanzado una adopción significativa en la industria del software?

Considero que no existe una sola razón que explique la limitada adopción de Haskell en comparación con lenguajes como Python, Java, JavaScript, C++ o Java, sino una combinación de factores técnicos, educativos y relacionados con éste.

Uno de los factores es la dificultad inicial para aprender el lenguaje. Haskell utiliza conceptos que no son comunes para una persona que comienza a programar en lenguajes principalmente imperativos u orientados a objetos, como la evaluación no estricta, la programación funcional, las funciones de orden superior, las type classes y diferentes conceptos relacionados con los tipos.

Otra razón es el tamaño del ecosistema y la disponibilidad de herramientas y bibliotecas. Razones a favor de no utilizar Haskell en el trabajo es debido a la falta de bibliotecas críticas, herramientas y documentación suficiente. Esto es importante porque una empresa normalmente no solamente considera las características del lenguaje, sino también qué tan fácil es encontrar desarrolladores, bibliotecas, documentación y herramientas para mantener un proyecto durante varios años.
Otro aspecto es que muchas empresas ya tienen una infraestructura construida alrededor de otros lenguajes. Cambiar de lenguaje no solamente significa aprender una sintaxis diferente, sino también modificar procesos, bibliotecas, herramientas, conocimientos internos y sistemas existentes. Por lo tanto, aunque Haskell tenga características interesantes, una empresa puede no encontrar suficiente beneficio para justificar el cambio. Sin embargo, haskell está en empresas y proyectos lo utilizan en áreas como servicios web, finanzas, educación, ciencia y criptomonedas. 

Por lo tanto, mi conclusión es que la adopción de Haskell no se debe a que el lenguaje no sea capaz de utilizarse para desarrollar software real, sino a que **las ventajas que ofrece compiten con barreras relacionadas con aprendizaje, contratación de desarrolladores, ecosistema, herramientas y la existencia de tecnologías ya establecidas en muchas empresas.



~~ 3. Si tuviera que explicarle a una persona que no es de Ciencias de la Computación la función que cumple Git frente a la de GitHub, ¿cómo se lo explicaría?

Yo explicaría la diferencia utilizando de ejemplo el hecho de llevar control de tu trabajo y cómo organizarlo.

Git sería como un sistema que guarda el historial de cambios de ese proyecto en la computadora. Un repositorio es un espacio de almacenamiento digital donde se guardan organizan y administran archivos y códigos. También permite saber qué cambios se hicieron, cuándo se hicieron y regresar a una versión anterior cuando sea necesario que para nosotros computólogos es de muchísima ayuda en palabras más formales, Git es un sistema distribuido de control de versiones, por lo que el repositorio local puede contener el historial completo del proyecto.

Por ejemplo, imaginemos que estoy escribiendo un trabajo y hago modificaciones durante varios días. En lugar de tener archivos y un revoltijo en mi computadora como:
trabajo_final.docx
trabajo_final_2.docx
trabajo_final_final.docx
trabajo_final_final_finalCorregido_completo.docx


Git permite guardar diferentes versiones del proyecto mediante commits. Así puedo consultar el historial y recuperar una versión anterior sin tener que crear manualmente muchas copias del mismo archivo.

Por otro lado, GitHub es una plataforma en la nube que permite alojar repositorios Git en internet y proporciona herramientas para colaborar con otras personas. Un repositorio de GitHub puede contener los archivos del proyecto y su historial, además de funciones como archivos para descargar modificaciones para corregir problemas y colaboración de varias personas. GitHub necesita internet para operar Git no. Y dentro de GitHub puedes ver repositorios de otras personas del mundo y descargarlos y usarlos a beneficio propio.


~~Referencias

Fausak, T. (2022, 18 de noviembre). *2022 State of Haskell survey results*. Taylor Fausak. https://taylor.fausak.me/2022/11/18/haskell-survey-results/

Git. (s. f.). *Git documentation*. https://git-scm.com/docs/git

GitHub. (s. f.). *About Git*. GitHub Docs. https://docs.github.com/en/get-started/using-git/about-git

GitHub. (s. f.). *About repositories*. GitHub Docs. https://docs.github.com/en/repositories/creating-and-managing-repositories/about-repositories

Haskell Foundation. (s. f.). *Haskell Foundation whitepaper: Improving the Haskell adoption story*. https://haskell.foundation/whitepaper/

Marlow, S. (Ed.). (2010). *Haskell 2010 language report*. Haskell.org. https://www.haskell.org/onlinereport/haskell2010/

The Rust Project. (s. f.). *The Rust programming language*. https://doc.rust-lang.org/book/

