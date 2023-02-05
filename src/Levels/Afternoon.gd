extends ScrollLevel
class_name Afternoon_Scene

func _ready():
	MusicController.play_afternoon_music()

func _process(delta) -> void:
	
	if self.timer == 0 or player.position.x >= self.distance * 0.99:
		if player.position.x >= self.distance * 0.99:
			Friendship.increase()
		if Friendship.friendship == 4:
			get_tree().change_scene("res://src/Levels/Ending.tscn")
		else:
			get_tree().change_scene("res://src/Levels/Morning.tscn")

