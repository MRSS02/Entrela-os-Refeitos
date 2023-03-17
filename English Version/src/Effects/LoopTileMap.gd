extends TileMap


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
var all_tile_zero_cells = self.get_used_cells_by_id(0)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in all_tile_zero_cells:
		$Tilemap.set_cellv(i, 1) #sets all tile zero cells to tile one


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
