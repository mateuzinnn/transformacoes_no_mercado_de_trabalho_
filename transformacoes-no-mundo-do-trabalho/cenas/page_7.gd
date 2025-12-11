extends Node2D

var video_playing = false
@onready var audio = $SoundButton/AudioStreamPlayer2D

func _ready():
	$VideoStreamPlayer.stop() # Inicia o vídeo

#func _process(delta):
	#if $VideoStreamPlayer.is_playing() == false:
		#print("Vídeo terminou!")

#func _input(event):
	#if event is InputEventMouseButton and event.pressed:
		#if not video_playing:
			#audio.stop()
			#$VideoStreamPlayer.play()
			##video_playing = true
			#print("Vídeo começou")
		#else:
			#$VideoStreamPlayer.stop()
			#video_playing = false
			#print("Vídeo parado")
