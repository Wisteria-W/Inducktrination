extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if !get_parent().is_moving:
		play("idle")
	pass

func _input(event):
	if event.is_action_pressed("Down"):
		play("walk_front")
	if event.is_action_pressed("Up"):
		play("walk_back")
	if event.is_action_pressed("Left"):
		play("walk_left")
	if event.is_action_pressed("Right"):
		play("walk_right")
