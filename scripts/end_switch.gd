extends Area2D

@onready var sprite_2d: Sprite2D = $Sprite2D

func _ready() -> void:
	sprite_2d.visible = false

func _on_body_entered(body: Node2D) -> void:
	sprite_2d.visible = true
	await get_tree().create_timer(.5).timeout
	get_tree().change_scene_to_file("res://scenes/end_cinimatic.tscn")
