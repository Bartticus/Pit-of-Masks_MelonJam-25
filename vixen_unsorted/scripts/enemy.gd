class_name Enemy
extends CharacterBody3D

#var player
const speed = 100
const gravity: float = 9.8
@export var mask_scene: PackedScene

#func _ready() -> void:
	#Change Dummy to player in future
	#player = get_tree().current_scene.get_node("Dummy")

func _physics_process(delta: float) -> void:
	var direction = position.direction_to(Global.player.position)
	velocity = direction * speed * delta
	
	if not is_on_floor(): #Keep enemy grounded
		velocity.y -= gravity
	
	move_and_slide()

func die() -> void:
	#death animation
	#drop mask
	var mask = mask_scene.instantiate() as Mask
	mask.spawn_point = global_position
	mask.mask_type = "Dragon"
	add_sibling(mask)
	
	call_deferred("queue_free")
