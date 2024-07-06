extends TextureRect

@onready var player_stats = get_node("/root/PlayerStats")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	scale.x = player_stats.conversation_timer
	pass
