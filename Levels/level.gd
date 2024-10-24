extends Node2D

const bullet_scene : PackedScene = preload("res://Player/bullet.tscn")
@onready var player: PlatformerController2D = $Player

func _ready() -> void:
	player.shoot_gun.connect(_on_player_shoot)

func _on_player_shoot(pos,direction,vertical):
	var bullet = bullet_scene.instantiate()
	bullet.global_position=pos
	bullet.direction = direction
	bullet.vertical = vertical
	add_child (bullet)
