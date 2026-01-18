extends Node

@onready var options_window : Panel = get_node("Options Panel")

func _ready():
	options_window.visible = false



func _on_options_button_pressed():
	options_window.visible = !options_window.visible


func _on_back_button_pressed():
	options_window.visible = !options_window.visible
