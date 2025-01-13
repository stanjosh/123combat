extends Node
class_name Interaction

var battle_steps : Array[BattleStep]

func _ready() -> void:
	get_steps()

func get_steps() -> Array[BattleStep]:
	var current_steps : Array[BattleStep]
	var children = get_children()
	for child in children:
		if child is BattleStep:
			child.step_finished.connect(_on_step_complete)
			current_steps.push_back(child)
	battle_steps = current_steps
	return current_steps


func _on_child_order_changed() -> void:
	get_steps()


func _process(delta: float) -> void:
	battle_steps.back().process_step()


func _on_step_complete(_next_step : BattleStep = null) -> void:
	prints(battle_steps, "done")
	var next_step = _next_step if _next_step != null else battle_steps.pop_back()
	battle_steps.push_front(next_step)
	
