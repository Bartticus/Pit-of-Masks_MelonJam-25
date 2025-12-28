class_name PlayerDefault
extends State

func enter():
	await get_tree().create_timer(0.1).timeout
	await Global.player.mask_changed
	change_state()

func exit():
	pass

func process(_delta: float) -> void:
	if Global.player.current_mask == "Dragon":
		transitioned.emit(self, "PlayerDragon")
	
func physics_process(_delta: float) -> void:
	pass

func change_state() -> void:
	match Global.player.current_mask:
		"Dragon":
			$DragonMesh.show()
			transitioned.emit(self, "PlayerDragon")
			#other dragon stuff
			pass
		"Goblin":
			$GoblinMesh.show()
			transitioned.emit(self, "PlayerGoblin")
			#goblin stuff
			pass
		"Minotaur":
			$MinotaurMesh.show()
			transitioned.emit(self, "PlayerMinotaur")
			#mino stuff
			pass
		"Wolf":
			$WolfMesh.show()
			transitioned.emit(self, "PlayerWolf")
			#wolf stuff
			pass
		
