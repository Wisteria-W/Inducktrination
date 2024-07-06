class_name Credits_Menu
extends Control

@onready var back_button = $Back_Button
@onready var main_menu = preload("res://Main_Menu/main_menu.tscn") as PackedScene

func _ready():
	back_button.button_down.connect(on_back_pressed)

func on_back_pressed() -> void:
	get_tree().change_scene_to_packed(main_menu)
