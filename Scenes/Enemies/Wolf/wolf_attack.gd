extends State
class_name WolfAttack

@export var so: Node
const WOLF_ANIM_LIBRARY = preload("uid://2kmeaaeet3n0")
var anim_library
var anim : Animation

func _ready() -> void:
	anim_library = WOLF_ANIM_LIBRARY.duplicate_deep()
	so.anim_player.add_animation_library("", anim_library)
	anim = anim_library.get_animation("dash")
	

func enter():
	anim.track_set_key_value(0, 0, so.enemy.position)
	anim.track_set_key_value(0, 1, so.enemy.position)
	anim.track_set_key_value(0, 2, so.enemy.position - so.enemy.transform.basis.z * 10)
	anim.track_set_key_value(0, 3, so.enemy.position - so.enemy.transform.basis.z * 10)
	
	so.anim_player.play("dash")
func exit():
	pass
func process(delta: float):
	pass
func physics_process(delta: float):
	pass
