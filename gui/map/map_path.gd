@tool
extends Path2D
class_name MapPath

@onready var line_2d: Line2D = $Line2D

var start_location : MapLocationInfo
var end_location : MapLocationInfo

func _ready() -> void:
	curve.add_point(start_location.global_position)
	curve.add_point(end_location.global_position)
	line_2d.points = curve.get_baked_points()
