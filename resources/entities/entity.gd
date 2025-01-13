extends Resource
class_name Entity

signal died
signal turn_over
signal used_action(action : Action, target : Entity)

enum StatType {
	ATTACK, 
	DEFEND,
	MOD_HEALTH,
	MOD_ATTACK,
	MOD_SPEED,
	MOD_DEFEND,
	MOD_ACCURACY
}

@export var display_name : String
@export var texture : Texture2D
@export var is_enemy : bool = true
@export var default_action : Action = load("res://resources/actions/idle.tres")
@export var base_stats : Dictionary = {
	"attack" : 1,
	"defend" : 0,
	"health" : 100,
	"speed" : 1,
	"accuracy" : 80,
}

var modified_stats : Dictionary = {}

var useable_actions : Array[Action]

func _ready() -> void:
	modified_stats = base_stats

func receive_action(action: Action) -> void:
	pass

func process_turn() -> Action:
	return default_action
