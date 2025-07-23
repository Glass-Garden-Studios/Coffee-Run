extends Button



func _on_pressed() -> void:
	preload("res://scenes/the_run.tscn")
	preload("res://scenes/staging_room.tscn")
	Transition.transition_out()
	await get_tree().create_timer(1.2).timeout
	get_tree().change_scene_to_file("res://scenes/tutorial_room.tscn")
