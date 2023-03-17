extends Actor
class_name Player

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
var facing_right = true
var walking = false


# Called when the node enters the scene tree for the first time.
func get_direction() -> Vector2:
	return Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"), 
		-0.6 if Input.is_action_just_pressed("jump") and is_on_floor() else 0.0 
	)

func _physics_process(delta: float) -> void:
	var direction: = get_direction() 
	if Input.is_action_pressed("move_right"):
		walking = true
		facing_right = true
	else: 
		if Input.is_action_pressed("move_left"):
			walking = true
			facing_right = false
		else:
			walking = false 
	velocity.x = (maxspeed.x) * direction.x 
	velocity.y += (maxspeed.y) * direction.y
	velocity = move_and_slide(velocity)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
