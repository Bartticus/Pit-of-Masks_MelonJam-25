extends AudioStreamPlayer


func _ready() -> void:
	await Global.player.player_died
	pitch_scale /= 2
	volume_db -= 10
