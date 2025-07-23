extends CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

const SPEED = 100.0

var character_direction : Vector2

func _physics_process(delta: float) -> void:
	# x direction
	var direction_x = Input.get_axis("left", "right")
	if direction_x:
		velocity.x = direction_x * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	# y direction
	var direction_y = Input.get_axis("up", "down")
	if direction_y:
		velocity.y = direction_y * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)

	# flipping
	if direction_x > 0:
		animated_sprite_2d.flip_h = false
	elif direction_x < 0:
		animated_sprite_2d.flip_h = true
	
	# animation
	if direction_x > 0:
		animated_sprite_2d.play("td_right")
	elif direction_x < 0:
		animated_sprite_2d.flip_h = true
		animated_sprite_2d.play("td_right")
	elif Input.is_action_pressed("up"):
		animated_sprite_2d.play("td_up")
	elif  Input.is_action_pressed("down"):
		animated_sprite_2d.play("td_down")
	else:
		animated_sprite_2d.play("idle")

	move_and_slide()
