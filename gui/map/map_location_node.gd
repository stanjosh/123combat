extends Node2D
class_name MapLocationNode



@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var label: Label = $Label

@export var map_location_info : MapLocationInfo:
	set(value):
		map_location_info = value
		if map_location_info:
			map_location_info.changed.connect(update_node_info)
		
@export var display_name : String = "Location"


func update_node_info() -> void:
	if is_node_ready():
		sprite_2d.texture = map_location_info.texture
		label.text = map_location_info.display_name
		map_location_info.global_position = global_position

func _notification(what: int) -> void:
	match what:
		NOTIFICATION_LOCAL_TRANSFORM_CHANGED:
			update_node_info()
