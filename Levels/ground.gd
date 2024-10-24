extends StaticBody2D

@onready var player: PlatformerController2D = $"../../Player"

func disable()->void:
	print ("Disabling....")
	player.set_collision_mask_value(1,false)
	await get_tree().create_timer(0.05).timeout
	player.set_collision_mask_value(1,true)
