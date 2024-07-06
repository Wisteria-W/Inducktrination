extends CharacterBody2D

@export var nav_agent : NavigationAgent2D
@onready var player_stats = get_node("/root/PlayerStats")

@export var movement_speed : float
var x_min
var x_max
var y_min
var y_max
var x_center
var y_center

var is_agro : bool = false
# Called when the node enters the scene tree for the first time.
func _ready():
	nav_agent.target_position = Vector2(position.x + randf_range(-30, 30), position.y + randf_range(-30, 30))
	x_min = position.x - 100
	x_max = position.x + 100
	y_min = position.y - 100
	y_max = position.y + 100
	x_center = position.x 
	y_center = position.y

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
	if player_stats.Hidden:
		is_agro = false
	move_and_slide()

func random_movement():
	if position.distance_to(nav_agent.target_position) < 5:
		var movement_vector = Vector2(position.x + randf_range(-300, 300), position.y + randf_range(-30, 30))
		if x_max < movement_vector.x : 
			movement_vector.x = x_center
		if x_min > movement_vector.x : 
			movement_vector.x = x_center
		if y_max < movement_vector.y : 
			movement_vector.y = y_center
		if y_min > movement_vector.y : 
			movement_vector.y = y_center

		nav_agent.target_position = movement_vector
	pass
func agro_player():
	nav_agent.target_position = player_stats.player_position
