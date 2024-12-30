extends MarginContainer

@onready var action_texture: TextureRect = $ActionTexture



@export var action_resource : Action :
	set(value):
		action_resource = value
		if is_node_ready():
			action_texture.texture = load(action_resource.texture)
		


func _on_active() -> void:
	Game.show_info(action_resource.description)
	
func _on_inactive() -> void:
	Game.show_info("")
	
func _on_action_button_pressed() -> void:
	pass # Replace with function body.
