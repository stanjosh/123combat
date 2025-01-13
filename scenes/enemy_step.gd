extends BattleStep




@export var enemies : Array[Entity]


func initialize_step() -> void:
	pass


func process_step() -> BattleStep:
	
	if enemies.size() > 0:
		Game.show_info("Enemy step")
		for enemy in enemies:
			
	
	step_finished.emit()
	return super.process_step()
	
