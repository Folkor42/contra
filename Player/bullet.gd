extends Area2D

var direction
var vertical
@onready var hurt_box: HurtBox = $HurtBox

func _ready() -> void:
	area_entered.connect(_on_area_entered)
	hurt_box.hit.connect(destroy)
	pass
	
func _process(delta: float) -> void:
	position.x += 400 * delta * direction
	if vertical == 1:
		position.y += 100 * delta
	elif vertical == -1:
		position.y -= 100 * delta
	else:
		position.y += 0
	
func _on_area_entered(_area):
	print("HIT")

func destroy()->void:
	queue_free()
