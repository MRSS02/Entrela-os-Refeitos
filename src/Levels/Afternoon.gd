extends Node2D

export var timer = 1800 

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

# Called when the node enters the scene tree for the first time.
func _process(delta) -> void:
	if timer > 0:
		timer -= 1
	#get the viewport size and divide by 2 since this is where the camera is positioned
	var view = get_viewport_rect().size / 2

	#get the camera position
	var camera_pos = $Camera2D.global_position

	var bounds_bw = camera_pos.x - view.x #the camera bounds at the back
	var bounds_fw = camera_pos.x + view.x #the camera bounds at the front

	#after the character is moved clamp its position to the end of the camera bounds
	$Player.global_position.x = clamp($Player.global_position.x, bounds_bw, bounds_fw)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
