extends Node2D

@onready var output_window: Node2D = $OutputWindow
@onready var dice_4_button: HBoxContainer = $CanvasLayer/ScrollContainer/VBoxContainer/Dice4Button
@onready var dice_6_button: HBoxContainer = $CanvasLayer/ScrollContainer/VBoxContainer/Dice6Button
@onready var dice_8_button: HBoxContainer = $CanvasLayer/ScrollContainer/VBoxContainer/Dice8Button
@onready var dice_10_button: HBoxContainer = $CanvasLayer/ScrollContainer/VBoxContainer/Dice10Button
@onready var dice_10p_button: HBoxContainer = $CanvasLayer/ScrollContainer/VBoxContainer/Dice10pButton
@onready var dice_12_button: HBoxContainer = $CanvasLayer/ScrollContainer/VBoxContainer/Dice12Button
@onready var dice_20_button: HBoxContainer = $CanvasLayer/ScrollContainer/VBoxContainer/Dice20Button
@onready var bonus_count: HBoxContainer = $CanvasLayer/ScrollContainer/VBoxContainer/BonusCount
@onready var roll_button: Button = $CanvasLayer/RollButton
@onready var canvas_layer: CanvasLayer = $CanvasLayer
@onready var label: Label = $CanvasLayer/Label

const D_4 = preload("res://assets/d4.png")
const D_6 = preload("res://assets/d6.png")
const D_8 = preload("res://assets/d8.png")
const D_10p = preload("res://assets/d10p.png")
const D_10 = preload("res://assets/d10.png")
const D_12 = preload("res://assets/d12.png")
const D_20 = preload("res://assets/d20.png")

var d4: int
var d6: int
var d8: int
var d10: int
var d10p: int
var d12: int
var d20: int
var sum: int
var sumlist: String
var bonus_counter : int
var dice_list = []
var dice_max_list = []
var dice_max: int
var dice_qt: int

func _ready():
	dice_max_list = [4, 6, 8, 10, 10, 12, 20]
	bonus_count.label.text = "Бонус"
	get_viewport().size = DisplayServer.screen_get_size()
	output_window.canvas_layer.hide()
	d4 = dice_4_button.dice_counter
	d6 = dice_6_button.dice_counter
	d8 = dice_8_button.dice_counter
	d10 = dice_10_button.dice_counter
	d10p = dice_10p_button.dice_counter
	d12 = dice_12_button.dice_counter
	d20 = dice_20_button.dice_counter
	dice_4_button.texture_rect.texture = D_4
	dice_6_button.texture_rect.texture = D_6
	dice_8_button.texture_rect.texture = D_8
	dice_10_button.texture_rect.texture = D_10
	dice_10p_button.texture_rect.texture = D_10p
	dice_12_button.texture_rect.texture = D_12
	dice_20_button.texture_rect.texture = D_20
	
func roll_dice123():
	output_window.output.text = ""
	output_window.canvas_layer.show()
	d4 = dice_4_button.dice_counter
	d6 = dice_6_button.dice_counter
	d8 = dice_8_button.dice_counter
	d10 = dice_10_button.dice_counter
	d10p = dice_10p_button.dice_counter
	d12 = dice_12_button.dice_counter
	d20 = dice_20_button.dice_counter
	dice_list = [d4, d6, d8, d10, d10p, d12, d20]
	for i in range (0, dice_list.size(), 1):
		if dice_list[i] != 0:
			roll_dice(dice_list[i], dice_max_list[i], bonus_counter)
		else:
			pass

func _on_roll_button_pressed() -> void:
	canvas_layer.hide()
	label.text = "Roll Successful"
	roll_dice123()

func roll_dice(dice_qt, dice_max, bonus):
	var roll = 0
	sum = 0
	sumlist = ""
	for j in dice_qt:
		roll = randi_range(1, dice_max) + bonus_counter
		sum += roll
		if j == dice_qt - 1:
			sumlist += str(roll) + " = "
		else:
			sumlist += str(roll) + " + "
	if bonus_counter < 0:
		var out = str("\nБросок ", str(dice_qt), " кубиков D", str(dice_max), str(bonus), ": \n", sumlist, str(sum))
		output_window.output.text += out
	elif bonus_counter > 0:
		var out = str("\nБросок ", str(dice_qt), " кубиков D", str(dice_max), "+", str(bonus), ": \n", sumlist, str(sum))
		output_window.output.text += out
	else:
		var out = str("\nБросок ", str(dice_qt), " кубиков D", str(dice_max), ": \n", sumlist, str(sum))
		output_window.output.text += out
	print(sumlist + str(sum))

func _on_plus_1_pressed() -> void:
	bonus_counter += 1
	if bonus_counter >= 0:
		bonus_count.label.text = "+" + str(bonus_counter)
	else:
		bonus_count.label.text = str(bonus_counter)

func _on_minus_1_pressed() -> void:
	bonus_counter -= 1
	if bonus_counter >= 0:
		bonus_count.label.text = "+" + str(bonus_counter)
	else:
		bonus_count.label.text = str(bonus_counter)
