extends AnimatedSprite2D

@onready var animation_player : AnimationPlayer = $AnimationPlayer

func _ready():
	animation_player.play("anim_duck_shake")
	play("default")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass
