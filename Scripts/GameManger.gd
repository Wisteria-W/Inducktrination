extends Node2D

@onready var player_stats = get_node("/root/PlayerStats")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player_stats.is_in_converstaion:
		player_stats.conversation_timer -= delta * 10
	elif player_stats.conversation_timer < 100:
		player_stats.conversation_timer += delta * 3
	if player_stats.conversation_timer <= 0:
		get_tree().quit()
