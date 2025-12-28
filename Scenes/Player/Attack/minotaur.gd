extends AttackSetup

@export var dagger: Node3D
@export var axe: Node3D
@export var anim_player: AnimationPlayer

func setup():
	masks_node.setup("minotaur")

func attack():
	if not anim_player.is_playing():
		anim_player.play("swing")
