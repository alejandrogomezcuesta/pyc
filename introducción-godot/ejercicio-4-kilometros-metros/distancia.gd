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
