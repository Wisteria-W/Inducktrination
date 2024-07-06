extends CharacterBody2D

@export var nav_agent : NavigationAgent2D
@onready var player_stats = get_node("/root/PlayerStats")

@export var movement_speed : float

var is_agro : bool = false
# Called when the node enters the scene tree for the first time.
func _ready():
	nav_agent.target_position = Vector2(position.x + randf_range(-30, 30), position.y + randf_range(-30, 30))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	await get_tree().process_frame
	var dir = to_local(nav_agent.get_next_path_position()).normalized()
	velocity = dir * movement_speed
	if is_agro:
		agro_player()
	else:
		random_movement()
	move_and_slide()

func random_movement():
	if position.distance_to(nav_agent.target_position) < 5:
		var movement_vector = Vector2(position.x + randf_range(-300, 300), position.y + randf_range(-30, 30))
		nav_agent.target_position = movement_vector
	pass
func agro_player():
	nav_agent.target_position = player_stats.player_position
