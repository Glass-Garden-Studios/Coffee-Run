extends Node2D

const SPEED = 60

@onready var ray_cast_2d_right: RayCast2D = $RayCast2D_right
@onready var ray_cast_2d_2_left: RayCast2D = $RayCast2D2_left
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


var direction = 1

#dont walk off the edge
func _process(delta: float) -> void:
	if ray_cast_2d_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if ray_cast_2d_2_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	position.x += direction * SPEED * delta
