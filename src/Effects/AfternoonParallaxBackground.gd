extends ParallaxBackground

func _process(delta):
	for child in get_children():
		child.position.y += 200 * delta
		if child.position.y >= child.get_cellv_size() * child.get_cell_size().y:
			child.position.y = 0
