extends CanvasLayer

@onready var label = $Label
@onready var sfx : AudioStreamPlayer = $uisfx
@onready var sfx_hover : AudioStreamPlayer = $uiHoversfx
@onready var lose_music : AudioStreamPlayer = $LoseMusic


func _on_visibility_changed() -> void:
	if visible:
		lose_music.play()
		label.text += str(Global.score)
	


func _on_button_mouse_entered() -> void:
	sfx_hover.play()


func _on_restart_button_pressed() -> void:
	sfx.play()
	get_tree().reload_current_scene()
