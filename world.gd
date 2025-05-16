extends Node2D

@onready var gold = $"UI Lower Panel/UI Container/Gold"
@onready var food = $"UI Lower Panel/UI Container/Food"
@onready var peasants = $"UI Lower Panel/UI Container/Peasants"
@onready var peasant_count = 1
@onready var option_1 = $"Option 1"
@onready var option_2 = $"Option 2"
@onready var event_description = $"Event Description"


func _ready():
	$"Option 1/RichTextLabel".text = "More peasants"
	$"UI Container/Peasants".text = var_to_str(peasant_count)
	option_1.pressed.connect(_option_1_pressed)
	pass

func _option_1_pressed():
	print("Add a peasant!")
	peasant_count += 1
	$"UI Container/Peasants".text = var_to_str(peasant_count)
	print(peasant_count)
	pass
