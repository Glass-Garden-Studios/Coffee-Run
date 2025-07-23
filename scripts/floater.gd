extends Node2D

const SPEED = 60

@onready var timer: Timer = $Timer
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


var direction = 1

func _ready() -> void:
	timer.start(1)

#dont walk off the edge
func _process(delta: float) -> void:
	position.y += direction * SPEED * delta

func _on_timer_timeout() -> void:
	direction = direction * -1
	timer.start(1)
