extends Area2D

@export var duck_stats : CharacterBody2D
@onready var player_stats = get_node("/root/PlayerStats")

func _body_entered(body):
	if "Player" in body.get_groups() and player_stats.Hidden == false:
		duck_stats.is_agro = true
	pass 
