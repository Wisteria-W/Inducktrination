extends Node2D

@onready var player_stats = get_node("/root/PlayerStats")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player_stats.is_in_converstaion:
		player_stats.conversation_timer -= delta
	else:
		player_stats.conversation_timer += delta
	pass
