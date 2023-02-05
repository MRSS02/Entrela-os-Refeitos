extends TileMap

onready var player = get_node("/root/Afternoon/Player")
export(NodePath) var other_tilemap
export(NodePath) var car
var rng = RandomNumberGenerator.new()

# func _on_Area2D_body_entered(delta):


func _on_Area2D_body_entered(body: Node) -> void:
	rng.randomize()
	var car_pos = rng.randf_range(512, 1024)
	if body.name == "Player":
		var other = get_node(other_tilemap)
		var this_car = get_node(car)
		other.position.x = self.position.x + 2048 
		this_car.position.x = player.position.x + car_pos
		this_car.position.y = 510
