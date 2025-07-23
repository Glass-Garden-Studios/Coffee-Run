extends Node2D

@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.VAR.cups = GameManager.cup


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_audio_stream_player_2d_finished() -> void:
	audio_stream_player_2d.play()

func _on_dialogic_text_signal(argument:String):
	if argument == "credits":
		get_tree().change_scene_to_file("res://scenes/credits.tscn")
