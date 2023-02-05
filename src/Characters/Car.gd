extends Actor
class_name Car

onready var player = get_node("/root/Afternoon/Player")
onready var camera = get_node("/root/Afternoon/Camera2D")

export var running_speed = -100

var rng = RandomNumberGenerator.new()

func _physics_process(delta: float) -> void:
	rng.randomize()
	velocity.y += gravity * delta
	velocity.y = min(velocity.y, maxspeed.y)
	velocity.x = rng.randf_range(-250, -80)
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
			self.position.x += 30

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
