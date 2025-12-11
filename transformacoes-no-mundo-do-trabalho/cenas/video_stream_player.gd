extends VideoStreamPlayer

@onready var play_button = get_parent().get_node("Play")
func _ready():
	self.stop() # Inicia o vídeo.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_pressed() -> void:
	if self.is_playing():
		self.stop()
		print("Parando")
	else:
		self.play()
		play_button.modulate = Color(1, 1, 1, 0)
		print("Tocando")
