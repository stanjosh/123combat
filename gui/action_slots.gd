extends PanelContainer

const ACTION_CONTAINER = preload("res://gui/action_container.tscn")

signal action_choice(action)

func set_actions(available_actions : Array[ActionInfo]) -> void:
	for child in get_children():
		child.queue_free()
	for action_info in available_actions:
		var new_button = ACTION_CONTAINER.instantiate()
		new_button.action_pressed.connect(func(action) : action_choice.emit(action))
