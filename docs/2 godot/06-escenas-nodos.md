# Escenas

## Nodos de la escena

Godot ofrece una serie de nodos (los has visto cada vez que has añadido un componente) que tienen particularidades muy sutiles para los diferentes elementos que forman parte de un juego.

Algunos de estos nodos que hemos visto son:

- `VBoxContainer`. Todos los _nodos hijo_ se colocan apilados de arriba a abajo. Lo usamos con los ejercicios de formularios.
- `Label`. Es un texto fijo en la pantalla.
- `LineEdit`. Este componente nos permite insertar texto en una aplicación.
- `Button`. Este componente permite hacer un clic sobre él.
- `TouchScreenButton`. Es casi igual que un botón. Este permite poner una imagen sobre el botón en lugar de texto.
- `Sprite2D`. Es un objeto que permite colocarle una textura. Así podemos poner un dibujo. Lo hemos usado para colocar el camión en ejericios anteriores.
- `Node2D`. Es el objeto básico para crear una escena. Es el componente raíz y a partir de aquí, se agregan otros nodos.

## Agrupación de componentes para crear una escena

Por otro lado, según los juegos van aumento de complejidad, es necesario agrupar determinados elementos gráficos que respondan a un mismo comportamiento.

En nuestra aplicación de ejemplo, podemos agrupar las flechas de control en un único objeto y llamarlo: control.

## Objetivo de esta práctica

Vamos a crear ooooootra vez la misma aplicación de las dos prácticas anteriores. Sí, vamos a tener de nuevo el camión (o el dibujo que elijas) que se va a mover por la pantalla en las 4 direcciones (izquierda, derecha, arriba y abajo).

Esta vez, que será la tercera vez que lo hagamos, lo vamos a hacer de una forma diferente y mucho más acertada para la creación de videojuegos: creando escenas y utilizando componentes más específicos.

Vamos a hacer tres varias cosas en esta práctica.

1. Vamos a crear una escena que únicamente va a incluir el control del personaje: los botones izquierda, derecha, arriba y abajo. Para esto vamos a utilizar el tipo de nodo llamado `Node2D`.
1. Vamos a utilizar el nodo `CharacterBody2D` para representar al objeto que nosotros manejamos. Este es el personaje principal. Puede ser un camión o un autobús.
1. Vamos a crear el nodo `AnimatableBody2D` para representar los obstáculos que puede encontrarse nuestro personaje. Los obstáculos son elementos con los que se choca.


## Cómo hago la práctica

Deberíamos empezar con el proyecto que has creado en la última práctica donde tienes 4 flechas para controlar un objeto. Si no tienes hecha esta práctica, podemos empezar también utilizando este otro [proyecto con solo las flechas izquierda y derecha](izquierda-derecha-con-process-inicio-practica.zip) que también sirve.

Antes de empezar deberías preparar varios dibujos para construir la práctica. Aquí, verás que tenemos un fondo de una ciudad, un autobús (el personaje principal), un coche y unas flechas para el control. Puedes reutiliza elementos pasados, puedes generarlos con IA o buscarlos por internet. Deberías empezar la práctica con estos ficheros:

- Un fondo, por ejemplo, una ciudad.
- Un elemento principal, por ejemplo, un autobús.
- Un obstáculo, por ejemplo, un coche.
- Flechas para el control, por ejemplo, las que vienen ya incluidas en el punto de partida de esta práctica.

Después, sigue la presentacíon que tienes aquí:

<https://docs.google.com/presentation/d/1lxDuwF_KKhNHAdn5vKKlr8nNpjQ9ursJPYdC7kkQFMg>


Cuando termines, enseña la práctica al profesor.


