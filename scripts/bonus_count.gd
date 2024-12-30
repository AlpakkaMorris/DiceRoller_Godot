extends HBoxContainer

@onready var minus_1: Button = $minus1
@onready var label: Label = $Label
@onready var plus_1: Button = $plus1

var bonus_counter: int

func _ready():
	bonus_counter = 0
	
func _on_minus_1_pressed() -> void:
	bonus_counter -= 1
	if bonus_counter >= 0:
		label.text = "+" + str(bonus_counter)
	else:
		label.text = str(bonus_counter)


func _on_plus_1_pressed() -> void:
	bonus_counter += 1
	if bonus_counter >= 0:
		label.text = "+" + str(bonus_counter)
	else:
		label.text = str(bonus_counter)
