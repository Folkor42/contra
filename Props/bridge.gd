extends StaticBody2D

@onready var area_2d: Area2D = $Area2D

func _ready() -> void:
	area_2d.body_entered.connect(blowup)
	pass
	
func blowup(_b)->void:
	if _b is PlatformerController2D:
		await get_tree().create_timer(1).timeout
		set_collision_layer_value(1,false)
		queue_free()
