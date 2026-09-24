Práctica 1: Haskell, Git y GitHub
Objetivo de la práctica

Instalar y configurar el entorno de desarrollo necesario para trabajar con el lenguaje de programación Haskell, así como conocer y utilizar las herramientas de control de versiones y control de repositorios Git y GitHub.
La práctica tiene como propósito establecer un entorno funcional para el desarrollo de programas en Haskell mediante la instalación y configuración de GHC, Cabal y Haskell Language Server.
Finalmente, se crea y organiza un repositorio para la asignatura utilizando Git y GitHub, estableciendo una estructura que permita almacenar, versionar y entregar las diferentes prácticas y el proyecto del curso.

Tiempo requerido

El tiempo total requerido para realizar la toda la práctica fue de aproximadamente 3 horas.

Herramientas utilizadas

Durante la práctica se utilizaron las siguientes herramientas:
Fedora 44 como sistema operativo.
GHCup 0.2.6.2 para la instalación y administración del entorno de Haskell.
GHC 9.10.3 como compilador de Haskell.
Cabal 3.16.1.0 como sistema de construcción y gestión de paquetes.
Haskell Language Server 2.14.0.0 (HLS).
Emacs 30.2 como editor de código.
Eglot como cliente LSP para integrar Haskell Language Server con Emacs.
Git para el control de versiones.
GitHub como plataforma para alojar el repositorio remoto.
Comentarios, problemas y soluciones

1. Configuración del PATH
Durante la instalación de las herramientas de Haskell fue necesario configurar correctamente las rutas de los ejecutables instalados mediante GHCup y Cabal.
Tuve el problema de que en que algunas herramientas instaladas no podía encontrarlas directamente desde la terminal debido a que sus directorios no estaban incluidos correctamente en la variable de entorno PATH.

Las principales rutas utilizadas fueron:
~/.ghcup/bin
~/.cabal/
Se corrigió este problema y posteriormente realizé la configuración correspondiente para que estas rutas estuvieran disponibles.

2. Configuración de Cabal

Durante la configuración del entorno tuve que verificar que Cabal estuviera correctamente instalado y que su ejecutable pudiera ser localizado desde la terminal.
La versión utilizada finalmente fue: Cabal 3.16.1.0

3. Configuración de Emacs

Durante la configuración de Emacs para trabajar con Haskell se presentó un problema relacionado con la personalización de las faces utilizadas por haskell-mode.

Apareció un error relacionado con:
haskell-keyword-face
El problema se produjo porque se intentaba modificar una face antes de que haskell-mode hubiera sido cargado y definido correctamente.

La solución consistió en cargar haskell-mode antes de realizar la configuración de sus elementos visuales mediante:
(require 'haskell-mode)
Después de realizar esta modificación, Emacs pudo iniciar correctamente con la configuración correspondiente para Haskell.

4. Configuración de Eglot y Haskell Language Server

Otro de los problemas que tuve en la instalación  estuvo relacionado con la integración de Haskell Language Server con Emacs mediante Eglot.

El ejecutable se encontraba dentro del entorno administrado por GHCup:
/home/panini3060/.ghcup/bin/

Después de corregir y verificar la configuración del entorno, Eglot pudo iniciar correctamente Haskell Language Server.
Posteriormente se comprobó que HLS pudiera detectar el entorno del proyecto mediante Cabal.

5. Configuración de Git y GitHub

Se creó un repositorio remoto en GitHub para almacenar las prácticas de la asignatura y posteriormente se clonó en el sistema local mediante SSH.
El repositorio local quedó ubicado en:
~/repos/EstructurasDiscretas
Durante la clonación mediante SSH se solicitó la passphrase correspondiente a la clave privada:
~/.ssh/id_ed25519

Esta passphrase corresponde a la protección de la clave SSH utilizada para autenticarse ante GitHub y no a la contraseña de la cuenta de GitHub.
La conexión remota del repositorio se verificó mediante:
git remote -v

Se obtuvo como repositorio remoto:
git@github.com:BrunoAlvarado/EstructurasDiscretas.git

El repositorio local quedó trabajando sobre la rama:
main

Estructura inicial del repositorio

EstructurasDiscretas/
├── Practica1/
│   ├── Practica1.md
│   └── README.md
├── Practica2/
├── Practica3/
├── Practica4/
├── Practica5/
├── Practica6/
├── Proyecto/
└── README.md

Estado final del entorno

Estas fueron las versiones instaladas para el curso

GHCup 0.2.6.2, GHC 9.10.3, Cabal 3.16.1.0, Haskell Language Server 2.14.0.0, Emacs 30.2
