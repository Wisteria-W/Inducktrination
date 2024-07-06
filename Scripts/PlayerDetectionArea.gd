extends Area2D

@export var duck_stats : CharacterBody2D


func _body_entered(body):
	if "Player" in body.get_groups():
		duck_stats.is_agro = true
	pass 
