extends Node2D

@onready var dice_4_button: HBoxContainer = $CanvasLayer/VBoxContainer/Dice4Button
@onready var dice_6_button: HBoxContainer = $CanvasLayer/VBoxContainer/Dice6Button
@onready var dice_8_button: HBoxContainer = $CanvasLayer/VBoxContainer/Dice8Button
@onready var dice_10_button: HBoxContainer = $CanvasLayer/VBoxContainer/Dice10Button
@onready var dice_10p_button: HBoxContainer = $CanvasLayer/VBoxContainer/Dice10pButton
@onready var dice_12_button: HBoxContainer = $CanvasLayer/VBoxContainer/Dice12Button
@onready var dice_20_button: HBoxContainer = $CanvasLayer/VBoxContainer/Dice20Button
@onready var bonus_count: HBoxContainer = $CanvasLayer/VBoxContainer/BonusCount
@onready var minus_1: Button = $CanvasLayer/VBoxContainer/BonusCount/minus1
@onready var label: Label = $CanvasLayer/VBoxContainer/BonusCount/Label
@onready var plus_1: Button = $CanvasLayer/VBoxContainer/BonusCount/plus1
@onready var roll_button: Button = $CanvasLayer/VBoxContainer/RollButton
@onready var output_window: Node2D = $OutputWindow

var d4: int
var d6 : int
var d8 : int
var d10 : int
var d10p : int
var d12 : int
var d20 : int
var dice_list = {}
var sum_of_rolls: int

func _ready():
	d4 = dice_4_button.dice_counter
	d6 = dice_6_button.dice_counter
	d8 = dice_8_button.dice_counter
	d10 = dice_10_button.dice_counter
	d10p = dice_10p_button.dice_counter
	d12 = dice_12_button.dice_counter
	d20 = dice_20_button.dice_counter
	dice_list.d4 = d4
	dice_list.d6 = d6
	dice_list.d8 = d8
	dice_list.d10 = d10
	dice_list.d10p = d10p
	dice_list.d12 = d12
	dice_list.d20 = d20
	print(dice_list)

func roll_dice():
	pass
	
