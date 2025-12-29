extends AttackSetup

@export var dagger: Node3D
@export var axe: Node3D
@export var anim_player: AnimationPlayer
@export var player: Player

func setup():
	masks_node.setup("minotaur")
	
	player.turn_speed = 0.2
	player.speed = 15

func attack():
	if not anim_player.is_playing():
		anim_player.play("swing")
