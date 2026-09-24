# Práctica con Godot 4.7: Calculadora del Nivel 1

## Situación

En los ejercicios anteriores has resuelto operaciones escribiendo valores directamente en el código. En esta práctica construirás una interfaz gráfica con un formulario para que la persona usuaria introduzca los datos y pulse botones para realizar las operaciones.

La aplicación reunirá los cinco ejercicios del Nivel 1:

1. Calcular un precio total con IVA.
2. Calcular el área de un triángulo.
3. Calcular la media de tres notas.
4. Convertir kilómetros a metros.
5. Convertir minutos en horas completas y minutos restantes.

## Objetivos

- Crear una escena de interfaz de usuario (`Control`) en Godot 4.7.
- Organizar controles con contenedores para que la interfaz se adapte a la ventana.
- Crear `Label` que expliquen cada campo del formulario.
- Crear `LineEdit` para introducir datos y comprobar que contienen números.
- Crear botones y conectar sus señales `pressed` a funciones de GDScript.
- Usar variables, operaciones matemáticas, división entera (`//`) y resto (`%`).
- Mostrar un resultado y mensajes de error sin cerrar la aplicación.

## Resultado esperado

Al ejecutar la escena debe aparecer un formulario con cinco bloques de cálculo. Cada bloque tendrá etiquetas claras, campos de texto numéricos, un botón y una zona donde se mostrará el resultado. Por ejemplo, al escribir `15` en kilómetros y pulsar **Convertir**, debe aparecer `15 km = 15000 m`.

## Parte A. Crear el proyecto y la escena

1. Abre Godot 4.7 y pulsa **Create**.
2. Pon al proyecto el nombre `CalculadoraNivel1`.
3. Elige una carpeta de trabajo y selecciona **Compatibility** como renderer.
4. Pulsa **Create & Edit**.
5. En el panel **Scene**, pulsa **User Interface**. Godot creará un nodo raíz `Control`.
6. Guarda la escena como `calculadora.tscn`.
7. Selecciona el nodo raíz. En el inspector, en **Layout > Transform**, establece aproximadamente `Custom Minimum Size` en `900 x 650`.
8. Añade como hijo un `ColorRect`, haz que ocupe toda la pantalla con **Layout > Anchors Preset > Full Rect** y elige un color de fondo claro.
9. Añade otro hijo del nodo raíz: `MarginContainer`. Asígnale también **Full Rect** y establece márgenes de `24` píxeles.
10. Dentro del `MarginContainer`, añade un `VBoxContainer`. Este contenedor colocará los elementos uno debajo de otro y evitará tener que calcular posiciones manualmente.
11. Dentro del `VBoxContainer`, añade un `Label` llamado `Titulo`. En su propiedad **Text** escribe `Calculadora del Nivel 1` y aumenta el tamaño de la fuente desde **Theme Overrides > Font Sizes > Font Size**.
12. Añade otro `Label` llamado `Instrucciones` con el texto `Escribe los datos y pulsa el botón de la operación que quieras resolver.`

> **Comprobación 1:** pulsa el botón de ejecutar la escena. Aunque todavía esté vacía, debes ver el fondo, el título y las instrucciones. Si no se ven, revisa que los contenedores tengan el anclaje **Full Rect**.

## Parte B. Construir un formulario con etiquetas y campos numéricos

Para cada operación crearás un `GridContainer`. Este tipo de contenedor organiza los controles en columnas. En el inspector, establece **Columns** en `2` para que cada fila tenga una etiqueta y su campo correspondiente.

### Formulario 1: precio con IVA

1. Dentro del `VBoxContainer`, añade un `GridContainer` y llámalo `FormularioPrecio`.
2. Establece `Columns = 2`.
3. Añade un `Label` llamado `EtiquetaPrecio` con el texto `Precio del artículo (€):`.
4. Añade un `LineEdit` llamado `PrecioInput`.
5. En `PrecioInput`, establece `Placeholder Text` en `25.00` y activa **Alignment = Right**.
6. Añade un `Label` llamado `EtiquetaCantidad` con el texto `Cantidad:`.
7. Añade un `LineEdit` llamado `CantidadInput`, con `Placeholder Text = 4`.
8. Añade un `Label` llamado `EtiquetaIVA` con el texto `IVA (porcentaje):`.
9. Añade un `LineEdit` llamado `IvaInput`, con `Placeholder Text = 21`.
10. Añade un `Button` llamado `CalcularPrecioButton` con el texto `Calcular total`.
11. Añade un `Label` llamado `ResultadoPrecio` con el texto inicial `Resultado: -`.

Repite el mismo patrón para las otras operaciones. Cada campo debe tener una etiqueta a su izquierda o encima que explique exactamente qué dato espera.

### Formulario 2: área de un triángulo

Crea `FormularioTriangulo` con los siguientes controles y nombres:

- `Label` `EtiquetaBase` con `Base:` y `LineEdit` `BaseInput`.
- `Label` `EtiquetaAltura` con `Altura:` y `LineEdit` `AlturaInput`.
- `Button` `CalcularAreaButton` con `Calcular área`.
- `Label` `ResultadoArea` con `Resultado: -`.

### Formulario 3: media de tres notas

Crea `FormularioNotas` con tres parejas etiqueta-campo: `Nota1Input`, `Nota2Input` y `Nota3Input`. Las etiquetas serán `Nota 1:`, `Nota 2:` y `Nota 3:`. Añade `CalcularMediaButton` con `Calcular media` y `ResultadoMedia` con `Resultado: -`.

### Formulario 4: kilómetros a metros

Crea `FormularioDistancia` con `KilometrosInput`, una etiqueta `Distancia en kilómetros:`, el botón `ConvertirDistanciaButton` con `Convertir a metros` y `ResultadoDistancia` con `Resultado: -`.

### Formulario 5: minutos a horas y minutos

Crea `FormularioTiempo` con `MinutosInput`, una etiqueta `Total de minutos:`, el botón `ConvertirTiempoButton` con `Convertir tiempo` y `ResultadoTiempo` con `Resultado: -`.

Para que el formulario sea realmente numérico, selecciona cada `LineEdit` y busca en el inspector **Virtual Keyboard Type > Number Pad**. Esta opción mejora la entrada en dispositivos táctiles, pero no sustituye la validación: en un teclado de ordenador todavía se pueden escribir letras. Por eso también lo comprobaremos en el script.

## Parte C. Crear el script y enlazar los controles

1. Selecciona el nodo raíz `Control`.
2. Pulsa **Attach Script**.
3. Conserva la ruta `res://calculadora.gd` y pulsa **Create**.
4. Sustituye el contenido del script por el siguiente código:

```gdscript
extends Control

@onready var precio_input: LineEdit = $MarginContainer/VBoxContainer/FormularioPrecio/PrecioInput
@onready var cantidad_input: LineEdit = $MarginContainer/VBoxContainer/FormularioPrecio/CantidadInput
@onready var iva_input: LineEdit = $MarginContainer/VBoxContainer/FormularioPrecio/IvaInput
@onready var resultado_precio: Label = $MarginContainer/VBoxContainer/FormularioPrecio/ResultadoPrecio

@onready var base_input: LineEdit = $MarginContainer/VBoxContainer/FormularioTriangulo/BaseInput
@onready var altura_input: LineEdit = $MarginContainer/VBoxContainer/FormularioTriangulo/AlturaInput
@onready var resultado_area: Label = $MarginContainer/VBoxContainer/FormularioTriangulo/ResultadoArea

@onready var nota1_input: LineEdit = $MarginContainer/VBoxContainer/FormularioNotas/Nota1Input
@onready var nota2_input: LineEdit = $MarginContainer/VBoxContainer/FormularioNotas/Nota2Input
@onready var nota3_input: LineEdit = $MarginContainer/VBoxContainer/FormularioNotas/Nota3Input
@onready var resultado_media: Label = $MarginContainer/VBoxContainer/FormularioNotas/ResultadoMedia

@onready var kilometros_input: LineEdit = $MarginContainer/VBoxContainer/FormularioDistancia/KilometrosInput
@onready var resultado_distancia: Label = $MarginContainer/VBoxContainer/FormularioDistancia/ResultadoDistancia

@onready var minutos_input: LineEdit = $MarginContainer/VBoxContainer/FormularioTiempo/MinutosInput
@onready var resultado_tiempo: Label = $MarginContainer/VBoxContainer/FormularioTiempo/ResultadoTiempo

func _ready() -> void:
	$MarginContainer/VBoxContainer/FormularioPrecio/CalcularPrecioButton.pressed.connect(calcular_precio)
	$MarginContainer/VBoxContainer/FormularioTriangulo/CalcularAreaButton.pressed.connect(calcular_area)
	$MarginContainer/VBoxContainer/FormularioNotas/CalcularMediaButton.pressed.connect(calcular_media)
	$MarginContainer/VBoxContainer/FormularioDistancia/ConvertirDistanciaButton.pressed.connect(convertir_distancia)
	$MarginContainer/VBoxContainer/FormularioTiempo/ConvertirTiempoButton.pressed.connect(convertir_tiempo)

func es_numero(campo: LineEdit) -> bool:
	return not campo.text.strip_edges().is_empty() and campo.text.strip_edges().is_valid_float()

func calcular_precio() -> void:
	if not es_numero(precio_input) or not es_numero(cantidad_input) or not es_numero(iva_input):
		resultado_precio.text = "Error: introduce solo números."
		return
	var precio: float = precio_input.text.to_float()
	var cantidad: float = cantidad_input.text.to_float()
	var iva: float = iva_input.text.to_float()
	var total: float = precio * cantidad * (1.0 + iva / 100.0)
	resultado_precio.text = "Total con IVA: %.2f €" % total

func calcular_area() -> void:
	if not es_numero(base_input) or not es_numero(altura_input):
		resultado_area.text = "Error: introduce solo números."
		return
	var base: float = base_input.text.to_float()
	var altura: float = altura_input.text.to_float()
	var area: float = (base * altura) / 2.0
	resultado_area.text = "Área: %.2f" % area

func calcular_media() -> void:
	if not es_numero(nota1_input) or not es_numero(nota2_input) or not es_numero(nota3_input):
		resultado_media.text = "Error: introduce solo números."
		return
	var nota_final: float = (nota1_input.text.to_float() + nota2_input.text.to_float() + nota3_input.text.to_float()) / 3.0
	resultado_media.text = "Nota media: %.2f" % nota_final

func convertir_distancia() -> void:
	if not es_numero(kilometros_input):
		resultado_distancia.text = "Error: introduce un número."
		return
	var distancia_m: float = kilometros_input.text.to_float() * 1000.0
	resultado_distancia.text = "Distancia: %.2f m" % distancia_m

func convertir_tiempo() -> void:
	if not es_numero(minutos_input):
		resultado_tiempo.text = "Error: introduce un número entero."
		return
	var minutos: int = minutos_input.text.to_int()
	var horas: int = minutos / 60
	var minutos_restantes: int = minutos % 60
	resultado_tiempo.text = "%d h y %d min" % [horas, minutos_restantes]
```

## Parte D. Conectar los botones

El script conecta los botones mediante código en `_ready()`. Cada línea busca un botón por su ruta dentro del árbol de la escena y conecta su señal `pressed` con una función:

```gdscript
boton.pressed.connect(funcion_que_se_ejecuta)
```

Esto significa: “cuando se pulse este botón, ejecuta esta función”. Los nombres de los nodos deben coincidir exactamente con los del script, incluyendo mayúsculas y minúsculas.

Si prefieres hacerlo desde el editor, selecciona un botón, abre la pestaña **Node**, haz doble clic en la señal `pressed` y pulsa **Connect**. Godot creará una función automáticamente. En ese caso, no conectes también el mismo botón desde `_ready()`, porque la operación se ejecutaría dos veces.

## Parte E. Probar y corregir

Realiza estas pruebas, anotando el resultado esperado antes de pulsar el botón:

| Operación | Datos de prueba | Resultado esperado |
|---|---|---|
| Precio con IVA | `25`, `4`, `21` | `121.00 €` |
| Área | `10`, `5` | `25.00` |
| Media | `6`, `8`, `7` | `7.00` |
| Distancia | `15` | `15000.00 m` |
| Tiempo | `135` | `2 h y 15 min` |

Después prueba también estos casos:

- Dejar un campo vacío.
- Escribir letras en lugar de números.
- Escribir un número decimal, como `2.5`.
- Escribir `0`.
- Cambiar los datos y pulsar varias veces el mismo botón.

## Entrega

Entrega el proyecto completo, incluyendo la carpeta `calculadora` y el archivo `calculadora.tscn`. Añade una captura de la aplicación en ejecución y una breve respuesta a estas preguntas:

1. ¿Por qué `LineEdit` guarda el contenido como texto aunque escribamos números?
2. ¿Qué diferencia hay entre `/`, `//` y `%`?
3. ¿Qué parte del programa evita convertir un campo vacío en cero?
4. ¿Qué cambiarías para impedir notas menores que `0` o mayores que `10`?
5. ¿Qué ocurriría si un botón no tuviera exactamente el nombre que aparece en su ruta `$...`?

## Ampliación voluntaria

Añade un botón `LimpiarButton` que deje todos los campos vacíos y restablezca todos los resultados a `Resultado: -`. Después añade un selector para elegir si el precio se muestra en euros o en otra moneda.
