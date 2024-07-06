class_name Main_Menu
extends Control


@onready var play_button = $MarginContainer/HBoxContainer/VBoxContainer/Play_Button as Button
@onready var credits_button = $MarginContainer/HBoxContainer/VBoxContainer/Credits_Button as Button
@onready var exit_button = $MarginContainer/HBoxContainer/VBoxContainer/Exit_Button as Button
@onready var start_level = preload("res://Scenes/world_test.tscn") as PackedScene


func _ready():
	play_button.button_down.connect(on_play_pressed)
	credits_button.button_down.connect(on_credits_pressed)
	exit_button.button_down.connect(on_exit_pressed)


func on_play_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)


func on_credits_pressed() -> void:
	pass


func on_exit_pressed() -> void:
	get_tree().exit()
