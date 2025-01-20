extends Control

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var name_label: Label = $LabelContainer/NameLabel
@onready var entity_texture: TextureRect = $CenterContainer/EntityTexture
@onready var buff_particles: CPUParticles2D = $CenterContainer/BuffParticles
@onready var buff_particles_2: CPUParticles2D = $CenterContainer/BuffParticles/BuffParticles2
@onready var powerup_particles: CPUParticles2D = $CenterContainer/PowerupParticles

@export var entity_info : EntityInfo :
	set(value):
		entity_info = value
		if is_node_ready():
			set_entity_info(entity_info)

@export var is_buffed : bool = false :
	set(value):
		is_buffed = value
		if is_node_ready():
			powerup_particles.emitting = is_buffed
			buff_particles.emitting = is_buffed
			buff_particles_2.emitting = is_buffed
		

func _ready() -> void:
	if entity_info:
		set_entity_info(entity_info)

func set_entity_info(entity_info : EntityInfo) -> void:
	entity_texture.texture = entity_info.texture
	name_label.text = entity_info.display_name



func attack() -> void:
	animation_player.play("Attack")

func damage() -> void:
	animation_player.play("hit")

func die() -> void:
	animation_player.play("die")


func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.is_pressed() and event.button_index == MOUSE_BUTTON_LEFT:
		attack()
	if event is InputEventMouseButton and event.is_pressed() and event.button_index == MOUSE_BUTTON_RIGHT:
		damage()
	if event is InputEventMouseButton and event.is_pressed() and event.button_index == MOUSE_BUTTON_MIDDLE:
		print("middle?")
		die()
