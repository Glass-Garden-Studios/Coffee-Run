extends Node2D

@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _ready() -> void:
	Transition.animation_player.play("fade_out")
	Dialogic.start("god please")


func _on_audio_stream_player_2d_finished() -> void:
	audio_stream_player_2d.play()
