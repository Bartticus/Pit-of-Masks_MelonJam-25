extends AudioStreamPlayer

@export var next_song: AudioStream

func _ready() -> void:
	await Global.player.player_died
	pitch_scale /= 2
	volume_db -= 10


func _on_finished() -> void:
	stream = next_song
	play()
