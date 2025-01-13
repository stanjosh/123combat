extends Control
@onready var animation_player: AnimationPlayer = $CenterContainer/AnimationPlayer
@onready var name_label: Label = $LabelContainer/NameLabel
@onready var entity_texture: TextureRect = $CenterContainer/EntityTexture


var entity_info : Entity :
	set(value):
		entity_info = value
		entity_texture.texture = entity_info.texture
		name_label.text = entity_info.display_name
		

func attack() -> void:
	animation_player.play("Attack")

func damage() -> void:
	animation_player.play("hit")
