extends Control

@onready var titulo: Label = $CenterContainer/VBoxContainer/Titulo

func _ready() -> void:
	$CenterContainer/VBoxContainer/AnimarButton.pressed.connect(animar_titulo)

func animar_titulo() -> void:
	var animacion: Tween = create_tween()
	animacion.set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	animacion.tween_property(titulo, "scale", Vector2(1.25, 1.25), 0.2)
	animacion.tween_property(titulo, "scale", Vector2.ONE, 0.2)
