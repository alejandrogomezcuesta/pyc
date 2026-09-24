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
