extends CanvasLayer

export(NodePath) var stage
export var distance = 10000
onready var player = get_node("/root/Afternoon/Player")

# export var set_name = ""


func _process(delta):
		print(stage)
		var time =  get_node(stage).get("timer") / 60
		var proximity = str(player.position.x / distance * 100)
		proximity += "%" 
		get_node("Timer")._change_text(time) 
		get_node("Proximity")._change_text(proximity)

