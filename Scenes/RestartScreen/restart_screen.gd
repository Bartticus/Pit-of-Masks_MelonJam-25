extends CanvasLayer


func _on_visibility_changed() -> void:
	if visible:
		$LoseMusic.play()
