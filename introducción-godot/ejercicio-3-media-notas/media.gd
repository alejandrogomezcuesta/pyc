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
