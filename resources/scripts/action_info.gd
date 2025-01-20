extends Resource
class_name ActionInfo



@export var name : String
@export_multiline var description : String :
	get:
		return get_description(description)
@export var texture : Texture2D
@export var effect : PackedScene
@export_enum("Attack", "Defend", "Modify Health", "Modify Speed", "Modify Accuracy", "Idle") var action_type
@export var value : float
@export var turns_active : int
@export var additional_actions : Array[ActionInfo]
@export var consumable : bool = false


func get_description(text : String) -> String:
	if turns_active > 1:
		return text % [value, turns_active]
	elif turns_active == 0:
		return text
	return text % value
