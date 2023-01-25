extends KinematicBody

export(NodePath) var animations

onready var _anim_tree = get_node(animationtree)

func _physics_process(delta):
	if Input.is_action_pressed("special"):
		_anim_tree["parameters/playback"].travel("Special1")
	else:
		_anim_tree["parameters/playback"].travel("idle")
