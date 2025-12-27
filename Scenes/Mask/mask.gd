class_name Mask
extends Area3D

@export var spawn_point: Vector3
@export var mask_type: String
var min_drop_radius: float = 1.0
var max_drop_radius: float = 2.0

func _ready() -> void:
	randomize()
	spawn_animation()

func spawn_animation() -> void:
	global_position = spawn_point
	
	var rand_x: float = randf_range(-max_drop_radius, max_drop_radius)
	while abs(rand_x) < min_drop_radius:
		rand_x = randf_range(-max_drop_radius, max_drop_radius)
	
	var rand_z: float = randf_range(-max_drop_radius, max_drop_radius)
	while abs(rand_z) < min_drop_radius:
		rand_z = randf_range(-max_drop_radius, max_drop_radius)
	
	var midway_pos: Vector3 = spawn_point + Vector3(rand_x / 2, 3, rand_z / 2)
	var target_pos: Vector3 = spawn_point + Vector3(rand_x, 0, rand_z)
	
	var tween: Tween = get_tree().create_tween()
	tween.tween_property(self, "global_position", midway_pos, 0.5).set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_SINE)
	tween.tween_property(self, "global_position", target_pos, 0.5).set_ease(Tween.EASE_IN)
	

func _on_body_entered(body: Node3D) -> void:
	if body is Player:
		body.equip_mask(mask_type) #Send mask info to player
		call_deferred("queue_free")
