# Ejercicio 06. Hola, mundo en Godot

<!-- markdownlint-disable MD010 -->

En este ejercicio crearás un proyecto muy pequeño para conocer la interfaz de Godot. Primero mostrarás un título centrado. Después, si hay tiempo, añadirás un botón que anime el título al pulsarlo.

## Parte 1. Crear el proyecto

1. Abre Godot y pulsa **Create**.
2. Crea un proyecto llamado `HolaMundoGodot` en una carpeta nueva.
3. Selecciona **Compatibility** como renderer y pulsa **Create & Edit**.
4. En el panel **Scene**, pulsa **User Interface**. El nodo raíz será un `Control`.
5. Guarda la escena como `hola-mundo.tscn`.

## Parte 2. Centrar el título

1. Añade un `CenterContainer` como hijo del `Control`.
2. Selecciona el `CenterContainer` y usa **Layout > Anchors Preset > Full Rect**.
3. Dentro del `CenterContainer`, añade un `VBoxContainer`.
4. Dentro del `VBoxContainer`, añade un `Label` llamado `Titulo`.
5. Cambia su propiedad **Text** a `Hola, mundo`.
6. En **Theme Overrides > Font Sizes > Font Size**, establece `32`.
7. En **Horizontal Alignment**, selecciona **Center**.

Ejecuta la escena. Debe aparecer `Hola, mundo` en el centro de la ventana.

## Parte 3. Botón con animación opcional

Añade dentro del mismo `VBoxContainer` un `Button` llamado `AnimarButton` con el texto `Animar título`.

Selecciona el nodo raíz `Control`, pulsa **Attach Script** y guarda el script como `hola-mundo.gd`. Escribe:

```gdscript
extends Control

@onready var titulo: Label = $CenterContainer/VBoxContainer/Titulo

func _ready() -> void:
	$CenterContainer/VBoxContainer/AnimarButton.pressed.connect(animar_titulo)

func animar_titulo() -> void:
	var animacion: Tween = create_tween()
	animacion.set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	animacion.tween_property(titulo, "scale", Vector2(1.25, 1.25), 0.2)
	animacion.tween_property(titulo, "scale", Vector2.ONE, 0.2)
```

Vuelve a ejecutar la escena y pulsa el botón. El título crecerá un instante y volverá a su tamaño original.

## Comprobación

- La escena muestra `Hola, mundo` centrado.
- El botón aparece debajo del título.
- Al pulsarlo, el título se anima.

La parte 1 y la parte 2 son obligatorias. La parte 3 es una ampliación para realizar si queda tiempo.
