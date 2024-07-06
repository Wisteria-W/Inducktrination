extends Area2D

@export var can_interact = false

@onready var player_stats = get_node("/root/PlayerStats")

func _on_body_entered(body):
	if "Player" in body.get_groups():
		can_interact = true		
		print("Hello")
		
func _on_body_exit(body):
	if "Player" in body.get_groups():
		can_interact = false		
		player_stats.Hidden = false
		print("Hello3")

# Called when the node enters the scene tree for the first time.
#func _ready():


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if can_interact == true:
		if Input.is_action_just_pressed("HIDE"):
			player_stats.Hidden = true
			print("Hello2")
