extends HBoxContainer

var dice_counter : int

@onready var minus_1: Button = $minus1
@onready var texture_rect: TextureRect = $TextureRect
@onready var dice_counter_label: Label = $TextureRect/DiceCounterLabel
@onready var plus_1: Button = $plus1

func _ready() -> void:
	dice_counter = 0
	dice_counter_label.text = "0"

func _on_minus_1_pressed() -> void:
	if dice_counter != 0:
		dice_counter -= 1
		dice_counter_label.text = str(dice_counter)
	else:
		pass

func _on_plus_1_pressed() -> void:
	dice_counter += 1
	dice_counter_label.text = str(dice_counter)
