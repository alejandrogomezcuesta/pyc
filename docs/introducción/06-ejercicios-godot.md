# Práctica con Godot 4.7: cinco ejercicios independientes

<!-- markdownlint-disable MD010 MD024 MD060 -->

Para la explicación inicial de Godot y la relación con la programación orientada a objetos, consulta [introduccion-godot-poo.md](introduccion-godot-poo.md). Este documento contiene únicamente los cinco ejercicios prácticos, cada uno en su propio proyecto.

En esta práctica resolverás cinco ejercicios de operaciones matemáticas con una interfaz sencilla. Cada ejercicio comienza en un proyecto distinto, por lo que puedes realizarlo y entregarlo sin crear ninguno de los otros.

---

## Ejercicio 1. Precio total con IVA

### Crear el proyecto

1. Abre Godot y pulsa **Create**.
2. Crea el proyecto `EjercicioPrecioIVA` en una carpeta nueva y selecciona **Compatibility** como renderer.
3. Pulsa **Create & Edit**.
4. Pulsa **User Interface** para crear el nodo raíz `Control`.
5. Añade un `VBoxContainer` dentro del `Control` y usa **Layout > Anchors Preset > Full Rect**.
6. Selecciona el `Control`, pulsa **Attach Script** y crea `precio.gd`.

### Escena

Dentro de `VBoxContainer`, crea únicamente estos controles:

| Tipo | Nombre | Texto o configuración |
|---|---|---|
| `Label` | `PrecioLabel` | `Precio (€)` |
| `LineEdit` | `PrecioInput` | `Placeholder Text = 25` |
| `Label` | `CantidadLabel` | `Cantidad` |
| `LineEdit` | `CantidadInput` | `Placeholder Text = 4` |
| `Label` | `IvaLabel` | `IVA (%)` |
| `LineEdit` | `IvaInput` | `Placeholder Text = 21` |
| `Button` | `CalcularButton` | `Calcular total` |
| `Label` | `ResultadoLabel` | `Resultado: -` |

Guarda la escena como `precio.tscn` y el script como `precio.gd`.

### Solución (`precio.gd`)

```gdscript
extends Control

@onready var precio_input: LineEdit = $VBoxContainer/PrecioInput
@onready var cantidad_input: LineEdit = $VBoxContainer/CantidadInput
@onready var iva_input: LineEdit = $VBoxContainer/IvaInput
@onready var resultado_label: Label = $VBoxContainer/ResultadoLabel

func _ready() -> void:
	$VBoxContainer/CalcularButton.pressed.connect(calcular_total)

func calcular_total() -> void:
	if not es_numero(precio_input) or not es_numero(cantidad_input) or not es_numero(iva_input):
		resultado_label.text = "Error: introduce todos los números."
		return

	var precio: float = precio_input.text.to_float()
	var cantidad: float = cantidad_input.text.to_float()
	var iva: float = iva_input.text.to_float()
	var total: float = precio * cantidad * (1.0 + iva / 100.0)
	resultado_label.text = "Total: %.2f €" % total

func es_numero(campo: LineEdit) -> bool:
	return not campo.text.strip_edges().is_empty() and campo.text.strip_edges().is_valid_float()
```

**Comprobación:** con `25`, `4` y `21`, el resultado debe ser `Total: 121.00 €`.

---

## Ejercicio 2. Área de un triángulo

### Crear el proyecto

1. Abre Godot y pulsa **Create**.
2. Crea el proyecto `EjercicioAreaTriangulo` en una carpeta nueva y selecciona **Compatibility** como renderer.
3. Pulsa **Create & Edit**.
4. Pulsa **User Interface** para crear el nodo raíz `Control`.
5. Añade un `VBoxContainer` dentro del `Control` y usa **Layout > Anchors Preset > Full Rect**.
6. Selecciona el `Control`, pulsa **Attach Script** y crea `triangulo.gd`.

### Escena

Dentro de `VBoxContainer`, crea únicamente:

| Tipo | Nombre | Texto o configuración |
|---|---|---|
| `Label` | `BaseLabel` | `Base` |
| `LineEdit` | `BaseInput` | `Placeholder Text = 10` |
| `Label` | `AlturaLabel` | `Altura` |
| `LineEdit` | `AlturaInput` | `Placeholder Text = 5` |
| `Button` | `CalcularButton` | `Calcular área` |
| `Label` | `ResultadoLabel` | `Resultado: -` |

Guarda la escena como `triangulo.tscn` y el script como `triangulo.gd`.

### Solución (`triangulo.gd`)

```gdscript
extends Control

@onready var base_input: LineEdit = $VBoxContainer/BaseInput
@onready var altura_input: LineEdit = $VBoxContainer/AlturaInput
@onready var resultado_label: Label = $VBoxContainer/ResultadoLabel

func _ready() -> void:
	$VBoxContainer/CalcularButton.pressed.connect(calcular_area)

func calcular_area() -> void:
	if not es_numero(base_input) or not es_numero(altura_input):
		resultado_label.text = "Error: introduce la base y la altura."
		return

	var base: float = base_input.text.to_float()
	var altura: float = altura_input.text.to_float()
	resultado_label.text = "Área: %.2f" % (base * altura / 2.0)

func es_numero(campo: LineEdit) -> bool:
	return not campo.text.strip_edges().is_empty() and campo.text.strip_edges().is_valid_float()
```

**Comprobación:** con `10` y `5`, el resultado debe ser `Área: 25.00`.

---

## Ejercicio 3. Media de tres notas

### Crear el proyecto

1. Abre Godot y pulsa **Create**.
2. Crea el proyecto `EjercicioMediaNotas` en una carpeta nueva y selecciona **Compatibility** como renderer.
3. Pulsa **Create & Edit**.
4. Pulsa **User Interface** para crear el nodo raíz `Control`.
5. Añade un `VBoxContainer` dentro del `Control` y usa **Layout > Anchors Preset > Full Rect**.
6. Selecciona el `Control`, pulsa **Attach Script** y crea `media.gd`.

### Escena

Dentro de `VBoxContainer`, crea únicamente:

| Tipo | Nombre | Texto o configuración |
|---|---|---|
| `Label` | `Nota1Label` | `Nota 1` |
| `LineEdit` | `Nota1Input` | `Placeholder Text = 6` |
| `Label` | `Nota2Label` | `Nota 2` |
| `LineEdit` | `Nota2Input` | `Placeholder Text = 8` |
| `Label` | `Nota3Label` | `Nota 3` |
| `LineEdit` | `Nota3Input` | `Placeholder Text = 7` |
| `Button` | `CalcularButton` | `Calcular media` |
| `Label` | `ResultadoLabel` | `Resultado: -` |

Guarda la escena como `media.tscn` y el script como `media.gd`.

### Solución (`media.gd`)

```gdscript
extends Control

@onready var nota1_input: LineEdit = $VBoxContainer/Nota1Input
@onready var nota2_input: LineEdit = $VBoxContainer/Nota2Input
@onready var nota3_input: LineEdit = $VBoxContainer/Nota3Input
@onready var resultado_label: Label = $VBoxContainer/ResultadoLabel

func _ready() -> void:
	$VBoxContainer/CalcularButton.pressed.connect(calcular_media)

func calcular_media() -> void:
	if not es_numero(nota1_input) or not es_numero(nota2_input) or not es_numero(nota3_input):
		resultado_label.text = "Error: introduce las tres notas."
		return

	var media: float = (nota1_input.text.to_float() + nota2_input.text.to_float() + nota3_input.text.to_float()) / 3.0
	resultado_label.text = "Media: %.2f" % media

func es_numero(campo: LineEdit) -> bool:
	return not campo.text.strip_edges().is_empty() and campo.text.strip_edges().is_valid_float()
```

**Comprobación:** con `6`, `8` y `7`, el resultado debe ser `Media: 7.00`.

---

## Ejercicio 4. Kilómetros a metros

### Crear el proyecto

1. Abre Godot y pulsa **Create**.
2. Crea el proyecto `EjercicioKilometrosMetros` en una carpeta nueva y selecciona **Compatibility** como renderer.
3. Pulsa **Create & Edit**.
4. Pulsa **User Interface** para crear el nodo raíz `Control`.
5. Añade un `VBoxContainer` dentro del `Control` y usa **Layout > Anchors Preset > Full Rect**.
6. Selecciona el `Control`, pulsa **Attach Script** y crea `distancia.gd`.

### Escena

Dentro de `VBoxContainer`, crea únicamente:

| Tipo | Nombre | Texto o configuración |
|---|---|---|
| `Label` | `KilometrosLabel` | `Kilómetros` |
| `LineEdit` | `KilometrosInput` | `Placeholder Text = 15` |
| `Button` | `ConvertirButton` | `Convertir a metros` |
| `Label` | `ResultadoLabel` | `Resultado: -` |

Guarda la escena como `distancia.tscn` y el script como `distancia.gd`.

### Solución (`distancia.gd`)

```gdscript
extends Control

@onready var kilometros_input: LineEdit = $VBoxContainer/KilometrosInput
@onready var resultado_label: Label = $VBoxContainer/ResultadoLabel

func _ready() -> void:
	$VBoxContainer/ConvertirButton.pressed.connect(convertir_a_metros)

func convertir_a_metros() -> void:
	if kilometros_input.text.strip_edges().is_empty() or not kilometros_input.text.strip_edges().is_valid_float():
		resultado_label.text = "Error: introduce los kilómetros."
		return

	var metros: float = kilometros_input.text.to_float() * 1000.0
	resultado_label.text = "Metros: %.2f m" % metros
```

**Comprobación:** con `15`, el resultado debe ser `Metros: 15000.00 m`.

---

## Ejercicio 5. Minutos a horas y minutos restantes

### Crear el proyecto

1. Abre Godot y pulsa **Create**.
2. Crea el proyecto `EjercicioMinutosTiempo` en una carpeta nueva y selecciona **Compatibility** como renderer.
3. Pulsa **Create & Edit**.
4. Pulsa **User Interface** para crear el nodo raíz `Control`.
5. Añade un `VBoxContainer` dentro del `Control` y usa **Layout > Anchors Preset > Full Rect**.
6. Selecciona el `Control`, pulsa **Attach Script** y crea `tiempo.gd`.

### Escena

Dentro de `VBoxContainer`, crea únicamente:

| Tipo | Nombre | Texto o configuración |
|---|---|---|
| `Label` | `MinutosLabel` | `Minutos totales` |
| `LineEdit` | `MinutosInput` | `Placeholder Text = 135` |
| `Button` | `ConvertirButton` | `Convertir tiempo` |
| `Label` | `ResultadoLabel` | `Resultado: -` |

Guarda la escena como `tiempo.tscn` y el script como `tiempo.gd`.

### Solución (`tiempo.gd`)

```gdscript
extends Control

@onready var minutos_input: LineEdit = $VBoxContainer/MinutosInput
@onready var resultado_label: Label = $VBoxContainer/ResultadoLabel

func _ready() -> void:
	$VBoxContainer/ConvertirButton.pressed.connect(convertir_tiempo)

func convertir_tiempo() -> void:
	var texto: String = minutos_input.text.strip_edges()
	if texto.is_empty() or not texto.is_valid_int():
		resultado_label.text = "Error: introduce un número entero."
		return

	var minutos: int = texto.to_int()
	var horas: int = minutos / 60
	var minutos_restantes: int = minutos % 60
	resultado_label.text = "%d h y %d min" % [horas, minutos_restantes]
```

**Comprobación:** con `135`, el resultado debe ser `2 h y 15 min`.

---

## Pruebas comunes

En cada escena comprueba también:

- Dejar la entrada vacía.
- Escribir letras.
- Escribir `0`.
- Cambiar el valor y pulsar varias veces.
- Usar un decimal en los ejercicios que aceptan números reales.

La función `is_valid_float()` evita convertir una entrada vacía o incorrecta en `0`. El quinto ejercicio usa `is_valid_int()` porque la división entera y el resto necesitan minutos completos.

<!-- markdownlint-enable MD010 MD024 MD060 -->
