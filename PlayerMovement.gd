extends CharacterBody2D


@export var movement_speed = 300.0
@export var movement_slide_speed = 300.0
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_vector("Left", "Right", "Up", "Down")
	if direction:
		velocity.x = direction.x * movement_speed
		velocity.y = direction.y * movement_speed
	else:
		velocity.x = move_toward(velocity.x, 0, movement_slide_speed)
		velocity.y = move_toward(velocity.y, 0, movement_slide_speed)

	move_and_slide()
