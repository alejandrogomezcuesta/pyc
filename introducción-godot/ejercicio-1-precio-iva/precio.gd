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
