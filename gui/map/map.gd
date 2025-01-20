@tool
extends Node2D

const MAP_PATH = preload("res://gui/map/map_path.tscn")

var map_locations : MapLocationList :
	set(value):
		map_locations = value
		map_locations.changed.connect(draw_paths)
	
func draw_paths() -> void:
	for connection in map_locations.get_connections():
		var path = MAP_PATH.instantiate()
		path as MapPath
		path.position = connection[0]
		path.end_location = connection[1]
		add_child(path)
