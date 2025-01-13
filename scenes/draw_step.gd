extends BattleStep


func process_step() -> BattleStep:
	Game.show_info("draw step")
	if Input.is_action_just_pressed("ui_accept"):
		step_finished.emit()
	return super.process_step()
