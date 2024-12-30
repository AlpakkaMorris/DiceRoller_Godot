extends Node2D

@onready var canvas_layer: CanvasLayer = $CanvasLayer
@onready var texture_rect: TextureRect = $CanvasLayer/TextureRect
@onready var label: Label = $CanvasLayer/Label
@onready var output: Label = $CanvasLayer/VBoxContainer/Output

func _on_back_button_pressed() -> void:
	canvas_layer.hide()
	get_parent().canvas_layer.show()
