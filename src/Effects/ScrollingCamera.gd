extends Camera2D

onready var context = get_tree().get_current_scene().get_name()
onready var player: Node = get_node('/root/{0}/Player'.format(context))

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	position.x = player.position.x 


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
