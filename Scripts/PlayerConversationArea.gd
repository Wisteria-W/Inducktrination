extends Area2D

@export var small_talks : Array[DialogueResource]
@onready var player_stats = get_node("/root/PlayerStats")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func body_entered(body):
	if "Player" in body.get_groups() and !player_stats.Hidden:
		player_stats.can_move = false
		get_parent().get_parent().get_node("CanvasLayer").get_node("DuckUI").visible = true
		await get_tree().create_timer(3).timeout
		get_parent().get_parent().get_node("CanvasLayer").get_node("DuckUI").visible = false
		player_stats.is_in_converstaion = true
		DialogueManager.show_dialogue_balloon(small_talks.pick_random())
	pass # Replace with function body.
