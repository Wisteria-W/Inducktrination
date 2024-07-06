extends CharacterBody2D


@export var movement_speed = 300.0
@export var movement_slide_speed = 300.0
var is_moving : bool = false

@onready var player_stats = get_node("/root/PlayerStats")
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_vector("Left", "Right", "Up", "Down")
	if direction and player_stats.can_move:
		is_moving = true
		velocity.x = direction.x * movement_speed
		velocity.y = direction.y * movement_speed
	else:
		is_moving = false
		velocity.x = move_toward(velocity.x, 0, movement_slide_speed)
		velocity.y = move_toward(velocity.y, 0, movement_slide_speed)
	player_stats.player_position = position
	move_and_slide()
