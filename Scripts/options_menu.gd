extends Node

@onready var window : Panel = get_node("Options Panel")

func _ready():
	window.visible = false
	



func _on_options_button_pressed():
	window.visible = !window.visible


func _on_back_button_pressed():
	window.visible = !window.visible
