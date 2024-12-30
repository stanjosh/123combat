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
@onready var sprite_2d: Sprite2D = Sprite2D.new()

@export var display_name : String
@export var texture : Texture2D = preload("res://resources/assets/icons(128)/character.png")
@export var is_enemy : bool = true
@export var default_action : Action = load("res://resources/actions/idle.tres")
@export var stats : Dictionary = {
	"attack" : 1,
	"defend" : 0,
	"health" : 0,
	"speed" : 0,
	"accuracy" : 80,
}

@export var modified_stats : Dictionary = {
	"health" : 100
}

var useable_actions : Array[Action]

func _ready() -> void:
	sprite_2d.texture = texture


func receive_action(action: Action) -> void:
	pass

func process_turn() -> Action:
	return default_action
