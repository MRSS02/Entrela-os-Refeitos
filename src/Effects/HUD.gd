extends CanvasLayer

export(NodePath) var stage
export var stage_name = ""
onready var player = get_node("/root/Scene/Player")

# export var set_name = ""

func _ready():
		get_node("Stage Name")._change_text(stage_name)

func _process(delta):
		var time =  get_node(stage).get("timer") / 60
		var distance = get_node(stage).get("distance")
		var proximity = str(int(player.position.x / distance * 100))
		var friendship = str(int(float(Friendship.friendship)/ 4 * 100))
		print(friendship)
		proximity += "%" 
		friendship += "%"
		get_node("Timer")._change_text(time) 
		get_node("Proximity")._change_text(proximity)
		get_node("Friendship")._change_text(friendship)

