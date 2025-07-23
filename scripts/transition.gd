extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func transition_out():
	animation_player.play("fade_in")

func transition_in():
	animation_player.play("fade_out")
