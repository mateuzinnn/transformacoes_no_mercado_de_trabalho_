extends TextureButton

const FRAMES = [
	preload("res://assets/animations/page5-frame1.png"),
	preload("res://assets/animations/page5-frame2.png"),
	preload("res://assets/animations/page5-frame3.png"),
	preload("res://assets/animations/page5-frame4.png"),
	preload("res://assets/animations/page5-frame5.png"),
	preload("res://assets/animations/page5-frame6.png"),
]

var current_index := 0

func _ready():
	texture_normal = FRAMES[current_index]

func _on_pressed():
	# avança para o próximo índice
	current_index += 1
	
	# se passar do último frame, volta para o primeiro
	if current_index >= FRAMES.size():
		current_index = 0
	
	texture_normal = FRAMES[current_index]
	print("Mudou para imagem ", current_index + 1)
