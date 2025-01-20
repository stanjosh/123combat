extends MarginContainer

signal action_pressed(action : ActionInfo)

@onready var action_texture: TextureRect = $ActionTexture



@export var action_info : ActionInfo = preload("res://resources/actions/idle.tres") :
	set(value):
		action_info = value
		if is_node_ready():
			action_texture.texture = action_info.texture
			set_tooltip_text(action_info.description)

func _ready() -> void:
	action_texture.texture = action_info.texture
	set_tooltip_text(action_info.description)

func _on_active() -> void:
	Game.show_info(action_info.description)
	
func _on_inactive() -> void:
	Game.show_info("")
	
func _on_action_button_pressed() -> void:
	action_pressed.emit(action_info)
