# Hola mundo, en Godot

<!-- markdownlint-disable MD010 -->

En este ejercicio crearás un proyecto muy pequeño para conocer la interfaz de Godot. Primero mostrarás un título centrado. Después, si hay tiempo, añadirás un botón que anime el título al pulsarlo.

## Parte 1. Crear el proyecto

1. Abre Godot y pulsa **Create** (_Crear_).
2. Establece como nombre del proyecto `hola-mundo` en una carpeta nueva.
3. Selecciona como renderizador la opción: **Móvil**.
4. Donde dice **Metadatos de Control de Versión** elegimos  **Ninguno.**.
5. Finalmente, hacemos clic en **Crear**.

## Parte 2. La parte gráfica

1. En la parte izquierda pone **Crear nodo raíz**. Debajo hay un botón que dice: **Otro nodo**. Hacemos clic en este último.
1. Buscamos un objeto llamado `CenterContainer`.  Lo seleccionamos y hacemos doble clic encima de él o le damos al botón **Crear**.
1. Seleccionamos este objeto `CenterContainer`y nos vamos a la parte de la derecha de la pantalla en la pestaña `Inspector`.
1. En el inspector, buscamos la propiedad `Layour` y dentro `Anchos preset`. A esta última le damos el valor: `Completo`.
1. Volvemos a la parte izquierda y de nuevo seleccionamos el objeto `CenterContainer`. Ahora hacemos clic con el botón derecho encima y le damos a `Añadir nodo hijo`.
1. Ahora añadimos un objeto de tipo  `VBoxContainer`.
1. Seleccionamos este nodo `VBoxContainer` y le volvemos a añadir un nodo hijo. En este caso buscamos un objeto cuyo nombre es `Label`.
1. En la parte de la izquierda, donde se ha añadido este nodo, hacemos doble clic sobre el `Label` para que se llame exactamente `Titulo`. 
1. Seleccionamos este último `Label` y nos vamos a la izquierda al inspector y buscamos una propiedad que se llama `Text`. 
1. Cambia el valor de propiedad **Text** a `Hola, mundo`.
1. Usa el filtro que tiene el inspector del objeto `Label` para establecer la propiedad  llamada `font size` con el valor `32`.
1. Busca cómo se le cambia el color a las letras para que en lugar de blanco, salgan en amarillo.


!!! important "Ejecutar la escena"
    Ahora ya podrías ejecutar la escena haciendo clic en el play superior derecho

!!! important "Guardar el proyecto"
    Para guardar nuestro proyecto tenemos que hacer clic en el menú `Escena` y después `Guardar escena`.
    Ponle al proyecto como nombre `hola-mundo.tscn`.
    

## Parte 3. Botón con animación opcional

Añade dentro del mismo `VBoxContainer` añade ahora un objeto `Button`.

En la parte de la izquierda, donde están los nodos, cámbiale el nombre a ese botón haciendo doble clic encima y llámalo `AnimarButton`.

Por otro lado, en el inspector, cambia el texto que aparece sobre el botón con el texto `Animar título`.

Selecciona el nodo raíz `CenterContainer`, haz clic con el botón derecho encima y pulsa **Añadir script**.

Ponle como nombre al script `hola-mundo.gd` y pulsa el botón **Crear**.

El código que tiene que escribir es el siguiente. Borra todo lo que haya y copia y pega este.

```gdscript
extends Control

@onready var titulo: Label = $VBoxContainer/Titulo
@onready var animarButton: Button = $VBoxContainer/AnimarButton

func _ready() -> void:
	animarButton.pressed.connect(animar_titulo)

func animar_titulo() -> void:
	var animacion: Tween = create_tween()
	animacion.set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	animacion.tween_property(titulo, "scale", Vector2(1.25, 1.25), 0.2)
	animacion.tween_property(titulo, "scale", Vector2.ONE, 0.2)

```

Vuelve a ejecutar la escena y pulsa el botón. El título crecerá un instante y volverá a su tamaño original.

!!! important "Guardar todo"
    De nuevo, hay que guardar. Así que ve a `Escena` y dale a `Guardar escena`.


!!! warning "No hay escena principal definida"
    Si no hubiera una escena principal definida hacemos clic en **Seleccionar actual**.
    
## Comprobación

- La escena muestra `Hola, mundo` centrado.
- El botón aparece debajo del título.
- Al pulsarlo, el título se anima.

## Descarga

[Puedes descargar el proyecto funcionando aquí.](hola-mundo.zip)