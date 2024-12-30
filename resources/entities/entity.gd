extends Node2D
class_name Entity

enum StatType {
	ATTACK, 
	DEFEND,
	MOD_HEALTH,
	MOD_ATTACK,
	MOD_SPEED,
	MOD_DEFEND,
	MOD_ACCURACY
}
@onready var sprite_2d: Sprite2D = $Sprite2D

@export var display_name : String
@export var texture : Texture2D = preload("res://resources/assets/icons(128)/character.png")
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
	sprite_2d.texture = texture


func receive_action(action: Action) -> void:
	pass

func process_turn() -> Action:
	return default_action
