extends CharacterBody2D

@export var nav_agent : NavigationAgent2D
@onready var player_stats = get_node("/root/PlayerStats")

@export var movement_speed : float
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var dir = to_local(nav_agent.get_next_path_position()).normalized()
	velocity = dir * movement_speed
	move_and_slide()
