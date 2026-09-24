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
