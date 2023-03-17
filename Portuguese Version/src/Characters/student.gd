extends Actor
class_name Student

onready var player = get_node("/root/Scene/Player")
onready var camera = get_node("/root/Scene/Camera2D")

var rng = RandomNumberGenerator.new()
var timer = -1

func _ready():
	rng.randomize()
	if timer == -1:
		timer = int(rng.randf_range(60, 240))

func _physics_process(delta: float) -> void:
	print(timer)
	
	velocity = move_and_slide(velocity, UP)
	for i in get_slide_count():
		var collision = get_slide_collision(i)
		#print(collision.collider.name)
		if collision.collider.has_method("get_direction"):
			if player.position.x + 512 > camera.position.x:
				player.position.x -= 512
			else:
				player.position.x = camera.position.x
			player.position.y = 400
	if timer == 0:
		print("ZERO")
		var paper_plane = self.get_child(5)
		paper_plane.position.x = paper_plane.default_positionx
		paper_plane.position.y = paper_plane.default_positiony 
		paper_plane.velocity.y = rng.randf_range(-100, -400)
		paper_plane.velocity.x = rng.randf_range(-50, -250)
		paper_plane.show()
		paper_plane.get_child(1).set_disabled(false)
		paper_plane.gravity = 100
		rng.randomize()
		timer = int(rng.randf_range(60, 240))
	else:
		timer -= 1	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
