extends KinematicBody

export(NodePath) var animationtree

onready var _anim_tree = get_node(animationtree)

func _physics_process(delta):
	if Input.is_action_pressed("special"):
		_anim_tree["parameters/playback"].travel("Special1")
	elif Input.is_action_pressed("fall"):
		_anim_tree["parameters/playback"].travel("fall a loop")
	elif Input.is_action_pressed("getup"):
		_anim_tree["parameters/playback"].travel("Getting up")
	elif Input.is_action_pressed("punch"):
		_anim_tree["parameters/playback"].travel("attack")
	elif Input.is_action_pressed("damaged"):
		_anim_tree["parameters/playback"].travel("body hit")
	elif Input.is_action_pressed("dodge"):
		_anim_tree["parameters/playback"].travel("dodge")
	elif Input.is_action_pressed("melee"):
		_anim_tree["parameters/playback"].travel("melee")
	else:
		_anim_tree["parameters/playback"].travel("idle")
