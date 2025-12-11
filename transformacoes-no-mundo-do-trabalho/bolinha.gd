extends TextureRect

var selected = false
var mouse_offset = Vector2(0, 0)
#@onready var carrinho = $Carrinho
@onready var particulas = get_parent().get_node_or_null("Particulas/CPUParticles2D")

func _process(delta):
	if selected:
		followMouse()

func followMouse():
	position = get_global_mouse_position() + mouse_offset

func _on_area_2d_input_event(viewport, event, shape_idx):
	
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			mouse_offset = position - get_global_mouse_position()
			selected = true
		else:
			selected = false


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.name == "ImpressoraArea":
			particulas.emitting = true
			await get_tree().create_timer(1).timeout
			get_parent().get_node("Carrinho").visible = true
			queue_free()
