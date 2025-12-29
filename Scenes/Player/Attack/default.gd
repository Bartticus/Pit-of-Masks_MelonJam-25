extends AttackSetup

@export var dagger: Node3D
@export var axe: Node3D
@export var weapon_anim_plr: AnimationPlayer
@export var player: Player

func setup():
	masks_node.setup("default")
	
	player.turn_speed = 1
	player.speed = 20
	player.accel = 2

func attack():
	if not weapon_anim_plr.is_playing():
		weapon_anim_plr.play("swing")
