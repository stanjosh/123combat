@tool
extends Resource
class_name MapLocationList


@export var map_location_list : Array[MapLocationInfo]

func get_connections() -> Array:
	var connections : Array
	
	for location in map_location_list:
		location as MapLocationInfo
		for connected_location in location.connected_locations:
			connected_location as MapLocationInfo
			var new_connection = [location.global_position, connected_location.global_position]
			var reverse_new_connection = new_connection
			new_connection.reverse()
			if !connections.has(new_connection) or !connections.has(reverse_new_connection):
				connections.push_back(new_connection)
	
	print(connections)
	return connections
