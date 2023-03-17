extends Camera2D

onready var player = get_node("/root/Scene/Player")
var greater_position = 512
 
# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _process(delta):
	if player.position.x > greater_position: 
		position.x = player.position.x 
		greater_position = position.x

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
