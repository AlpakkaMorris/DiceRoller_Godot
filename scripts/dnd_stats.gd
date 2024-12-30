extends Node2D

@onready var canvas_layer: CanvasLayer = $CanvasLayer
@onready var option_button: OptionButton = $CanvasLayer/VBoxContainer2/OptionButton
@onready var dnd_4: Node2D = $CanvasLayer/VBoxContainer/DND4
@onready var dnd_6: Node2D = $CanvasLayer/VBoxContainer/DND6
@onready var dnd_8: Node2D = $CanvasLayer/VBoxContainer/DND8
@onready var dnd_10: Node2D = $CanvasLayer/VBoxContainer/DND10
@onready var dnd_10p: Node2D = $CanvasLayer/VBoxContainer/DND10p
@onready var dnd_12: Node2D = $CanvasLayer/VBoxContainer/DND12
@onready var dnd_20: Node2D = $CanvasLayer/VBoxContainer/DND20
@onready var roll_button: Button = $CanvasLayer/VBoxContainer/RollButton
@onready var return_button: Button = $CanvasLayer/VBoxContainer/ReturnButton
@onready var stat_value: Label = $CanvasLayer/VBoxContainer2/StatValue/StatValue
@onready var stat_value_edit: LineEdit = $CanvasLayer/VBoxContainer2/StatValue/StatValueEdit
@onready var bonus_value: Label = $CanvasLayer/VBoxContainer2/BonusValue/BonusValue
@onready var bonus_value_edit: LineEdit = $CanvasLayer/VBoxContainer2/BonusValue/BonusValueEdit

@export var dnd_stats: Resource

var stat = 0
var bonus_value_num = 0
var stat_value_list = []

func _on_return_button_pressed() -> void:
	canvas_layer.hide()
	get_parent().canvas_layer.show()

func _on_roll_button_pressed() -> void:
	canvas_layer.show()

func _ready():
	pass
	#stat_value_edit.text = dnd_stats.stats[stat_value_edit]
	#bonus_value_edit.text = dnd_stats.stats["Бонус умения"]

func roll_dice():
	pass
	
