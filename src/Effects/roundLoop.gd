extends TileMap

onready var player = get_node("/root/Scene/Player")
onready var stage = get_node("/root/Scene")
export(NodePath) var other_tilemap
export(NodePath) var car
export(NodePath) var student0
export(NodePath) var student1
export(NodePath) var student2

var rng = RandomNumberGenerator.new()

# func _on_Area2D_body_entered(delta):


func _on_Area2D_body_entered(body: Node) -> void:
	rng.randomize()
	var car_pos = rng.randf_range(512, 1024)
	var stud_pos0 = rng.randf_range(512, 632)
	var stud_pos1 = rng.randf_range(742, 862)
	var stud_pos2 = rng.randf_range(982, 1024)
	if body.name == "Player":
		var other = get_node(other_tilemap)
		var this_car = get_node(car)
		other.position.x = self.position.x + 2048
		if player.position.x <= stage.distance * 0.95:  
			if is_instance_valid(this_car):
				this_car.position.x = player.position.x + car_pos
				this_car.position.y = 510
			var this_stud0 = get_node(student0)
			var this_stud1 = get_node(student1)
			var this_stud2 = get_node(student2) 
			if is_instance_valid(this_car):
				this_car.position.x = player.position.x + car_pos
				this_car.position.y = 515
			if is_instance_valid(this_stud0):
				this_stud0.position.x = player.position.x + stud_pos0
				this_stud0.position.y = 515
			if is_instance_valid(this_stud1):
				this_stud1.position.x = player.position.x + stud_pos1
				this_stud1.position.y = 515
			if is_instance_valid(this_stud2):
				this_stud2.position.x = player.position.x + stud_pos2
				this_stud2.position.y = 515
