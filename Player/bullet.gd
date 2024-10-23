extends Area2D

var direction
@onready var hurt_box: HurtBox = $HurtBox

func _ready() -> void:
	area_entered.connect(_on_area_entered)
	hurt_box.hit.connect(destroy)
	pass
	
func _process(delta: float) -> void:
	position.x += 400 * delta * direction
	
func _on_area_entered(area):
	print("HIT")

func destroy()->void:
	queue_free()
