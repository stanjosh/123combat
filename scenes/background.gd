@tool
extends ColorRect


@export var spin_time : float = 1
@export var target_spin : float = 3:
	set(value):
		target_spin = value
		if is_node_ready():
			spin(target_spin)

var current_spin : float

func color_fade(color1: Color, color2: Color, color3: Color) -> void:
	var tween = get_tree().create_tween()
	tween.tween_property(material, "shader_parameter/colour_1", color1, spin_time)
	tween.tween_property(material, "shader_parameter/colour_2", color2, spin_time)
	tween.tween_property(material, "shader_parameter/colour_3", color3, spin_time)

func spin(new_spin : float) -> void:	
	var tween = get_tree().create_tween()
	tween.tween_property(material, "shader_parameter/spin_amount", target_spin, spin_time)
