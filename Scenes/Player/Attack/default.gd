extends AttackSetup

@export var dagger: Node3D
@export var axe: Node3D
@export var weapon_anim_plr: AnimationPlayer

func setup():
	masks_node.setup("default")

func attack():
	if not weapon_anim_plr.is_playing():
		weapon_anim_plr.play("swing")
