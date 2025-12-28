extends AttackSetup

@export var dagger: Node3D 
@export var axe: Node3D
const FIREBALL = preload("uid://b8xdj10yc4v85")
@export var spawnpoint: Node3D
@export var player: CharacterBody3D

@export var timer: Timer
var can_shoot = true

func setup():
	masks_node.setup()

func attack():
	if can_shoot:
		var temp = FIREBALL.instantiate()
		temp.position = spawnpoint.global_position
		temp.rotation.y = player.rotation.y
		get_tree().current_scene.get_node("Fireballs").add_child(temp)
		can_shoot = false
		timer.start()

func _on_timer_timeout() -> void:
	can_shoot = true
