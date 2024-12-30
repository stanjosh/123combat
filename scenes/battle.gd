extends Node2D

const ENEMY = preload("res://scenes/enemy.tscn")
var entities : Array[Entity] = []

func _ready() -> void:
	global_position = get_viewport_rect().get_center()
