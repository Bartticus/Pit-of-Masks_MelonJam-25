class_name Weapon
extends Area3D

@onready var weapon_anim_plr: AnimationPlayer = $WeaponAnimPlayer


func _on_body_entered(body: Node3D) -> void:
	if body.is_in_group("enemies"):
		body.die()

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("attack") and not weapon_anim_plr.is_playing():
		weapon_anim_plr.play("swing")
		
