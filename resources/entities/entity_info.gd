extends Resource
class_name EntityInfo

@export var display_name : String
@export var texture : Texture2D
@export var is_enemy : bool = true

@export var attack : int = 1
@export var defend : int = 0
@export var health : int = 10
@export var acuity : int = 50

@export var useable_actions : Array[ActionInfo] = [load("res://resources/actions/idle.tres")]
