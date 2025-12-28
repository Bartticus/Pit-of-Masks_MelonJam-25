extends Node3D

@onready var masks = {
	"default" : $"../WeaponPivot/Dagger",
	"minotaur": $"../WeaponPivot/Axe",
}

func setup(item_to_show = null):
	for item in masks.values():
		item.hide()
	
	if masks.has(item_to_show):
		masks[item_to_show].show()
