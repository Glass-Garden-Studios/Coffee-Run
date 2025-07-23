extends AnimatableBody2D

@onready var interact_area: Area2D = $interact_area
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	interact_area.interact = _on_interact



func _on_interact():
	interact_area.is_interactable = false
	Dialogic.start("coffee order")
	
