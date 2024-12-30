extends Node


@onready var main = get_node("/root/Main")
@onready var hud : HUD = get_node("/root/Main/HUD")
@onready var camera : Camera2D = get_node("/root/Main/Camera")
@onready var background : ColorRect = get_node("/root/Main/Background")

func show_info(text : String) -> void:
	hud.info_display.text = text
