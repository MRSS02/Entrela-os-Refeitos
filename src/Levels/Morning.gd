extends ScrollLevel
class_name Morning_Scene


func _ready():
	self.timer = 3600
	self.distance = 9000
	MusicController.play_morning_music()
	
func _process(delta) -> void:
	if player.position.x >= self.distance * 0.99:
			Friendship.increase()
	if self.timer == 0 or player.position.x >= self.distance * 0.99:
		if Friendship.friendship == 4:
			get_tree().change_scene("res://src/Levels/Ending.tscn")
		else:
			get_tree().change_scene("res://src/Levels/Afternoon.tscn")
		
