extends Node2D

var is_instruction = false
var timer = 60

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Friendship.friendship = 0
	MusicController.play_menu_music()# Replace with function body.

func _process(delta):
	if is_instruction and timer > 0:
		timer -= 1
	if Input.is_action_just_pressed("ui_accept"):
		if !is_instruction:
			get_node("Menu0").hide()
			get_node("Menu1").hide()
			get_node("Menu2").hide()
			get_node("História").show()
			is_instruction = true
		else:
			if timer == 0:
				get_tree().change_scene("res://src/Levels/Morning.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
