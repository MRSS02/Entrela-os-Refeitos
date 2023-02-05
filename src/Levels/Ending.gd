extends Node2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

func _ready() -> void:
	MusicController.play_menu_music()# Replace with function body.

# Called when the node enters the scene tree for the first time.
func _process(delta) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene("res://src/Levels/Menu.tscn")
		# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
