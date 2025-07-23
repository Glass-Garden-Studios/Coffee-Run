extends Area2D


func _on_body_entered(body: Node2D) -> void:
	Transition.transition_out()
	await get_tree().create_timer(1.2).timeout
	get_tree().change_scene_to_file("res://scenes/the_run.tscn")
 
