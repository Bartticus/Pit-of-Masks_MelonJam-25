extends Area3D

const SPEED = 5

func _physics_process(delta: float) -> void:
	translate(Vector3.FORWARD * SPEED * delta)

func _on_body_entered(body: Node3D) -> void:
		body.die()

func disappear():
	queue_free()
