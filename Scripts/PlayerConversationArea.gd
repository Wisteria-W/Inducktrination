extends Area2D

@export var small_talks : Array[DialogueResource]
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func body_entered(body):
	if "Player" in body.get_groups():
		DialogueManager.show_dialogue_balloon(small_talks.pick_random())
	pass # Replace with function body.
