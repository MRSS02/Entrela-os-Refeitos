extends Actor
class_name paper_plane

onready var player = get_node("/root/Scene/Player")
onready var camera = get_node("/root/Scene/Camera2D")

var default_positionx = 0
var default_positiony = 0

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.gravity = 0
	self.get_child(1).set_disabled(true)
	default_positionx = self.position.x
	default_positiony = self.position.y

func _physics_process(delta: float) -> void:
	for i in get_slide_count():
		var collision = get_slide_collision(i)
		#print(collision.collider.name)
		if collision.collider.has_method("get_direction"):
			if player.position.x + 256 > camera.position.x:
				player.position.x -= 256
			else:
				player.position.x = camera.position.x
			player.position.y = 400
			self.position.x += 30


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
