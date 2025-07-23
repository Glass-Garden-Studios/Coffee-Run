extends Node2D

@onready var label: Label = $Label
@onready var door: Area2D = $Door

var open_check = false

func _process(delta: float) -> void:
	if GameManager.key > 0:
		open_check = true
	else:
		open_check = false

func _on_door_body_entered(body: Node2D) -> void:
	if open_check == true:
		door.tutorial_end()
	elif open_check == false:
		label.text = "NEED 1 KEY"
	else:
		label.text = "LOCKED"
