extends Area2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func tutorial_end():
	animated_sprite_2d.play("open")
	Transition.transition_out()
	await get_tree().create_timer(1.2).timeout
	get_tree().change_scene_to_file("res://scenes/staging_room.tscn")
	animated_sprite_2d.play("close")

func _on_dialogic_text_signal(argument:String):
	if argument == "start":
		Transition.transition_out()
		await get_tree().create_timer(1.2).timeout
		get_tree().change_scene_to_file("res://scenes/the_run.tscn")
		animated_sprite_2d.play("close")
