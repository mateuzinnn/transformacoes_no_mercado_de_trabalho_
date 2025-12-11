extends Area2D

@onready var anim_sprite = $AnimatedSprite2D

var max_frames = 0

func _ready():
	if anim_sprite:
		var frames = anim_sprite.sprite_frames
		if frames:
			max_frames = frames.get_frame_count("default")
			anim_sprite.frame = 0

#func _input(event):
	#if event is InputEventScreenTouch and event.pressed:
		#advance_frame()
	#elif event is InputEventMouseButton and event.pressed:
		#advance_frame()

func advance_frame():
	if anim_sprite and max_frames > 0:
		if anim_sprite.frame < max_frames - 1:
			anim_sprite.frame += 1


func _on_button_pressed() -> void:
	advance_frame()
