class_name PlayerDefault
extends State

func enter():
	pass
func exit():
	pass

func process(_delta: float) -> void:
	if Global.player.current_mask == "Dragon":
		transitioned.emit(self, "PlayerDragon")
	
func physics_process(_delta: float) -> void:
	pass
