extends State
class_name DragonMove

@export var so: StateObject
@export var distance_for_attack = 10

func enter():
	so.enemy.collision_mask = 0 #Stops the dragon from getting stuck in the doorway
	await get_tree().create_timer(2).timeout
	so.enemy.collision_mask = 1
	pass
func exit():
	pass
func process(_delta: float):
	so.look_at_player()
func physics_process(delta: float):
	var direction = so.enemy.position.direction_to(Global.player.position)
	so.enemy.velocity = direction * so.speed * delta
	so.enemy.move_and_slide()
	
	var dot_product = -so.enemy.global_transform.basis.z.dot(direction)
	
	if so.distance_player_enemy() < distance_for_attack and dot_product > so.min_dot_product:
		transitioned.emit(self, "DragonAttack")
