extends Node

@onready var options_window : Panel = get_node("Options Panel")
@onready var master_bus_id = AudioServer.get_bus_index("Master")
@onready var music_bus_id = AudioServer.get_bus_index("Music")
@onready var sfx_bus_id = AudioServer.get_bus_index("SFX")


func _ready():
	options_window.visible = false



func _on_options_button_pressed():
	options_window.visible = !options_window.visible


func _on_back_button_pressed():
	options_window.visible = !options_window.visible


func _on_master_volume_slider_value_changed(value):
	AudioServer.set_bus_volume_db(master_bus_id, linear_to_db(value))
	AudioServer.set_bus_mute(master_bus_id, value < .05)


func _on_music_volume_slider_value_changed(value):
	AudioServer.set_bus_volume_db(music_bus_id, linear_to_db(value))
	AudioServer.set_bus_mute(music_bus_id, value < .05)


func _on_sfx_volume_slider_value_changed(value):
	AudioServer.set_bus_volume_db(sfx_bus_id, linear_to_db(value))
	AudioServer.set_bus_mute(sfx_bus_id, value < .05)
