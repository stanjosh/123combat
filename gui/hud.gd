extends CanvasLayer
class_name HUD
const ENTITY = preload("res://gui/entity.tscn")
@onready var info_display: RichTextLabel = $MarginContainer/VBoxContainer/InfoBox/InfoPanel/MarginContainer/InfoDisplay
@onready var entities_container: HBoxContainer = $MarginContainer/VBoxContainer/GameSpacer/EntitiesContainer

var entities_list : Array[Entity] = []

func create_entities(entities : Array[Entity]) -> void:
	entities_list = entities
	for entity in entities:
		var new_entity = ENTITY.instantiate()
		new_entity.entity_info = entity
		entities_container.add_child(new_entity)
		
func clear_entities() -> void:
	entities_list.clear()
	for child in entities_container.get_children():
		child.queue_free()
