extends Node2D
@onready var health_bar: ProgressBar = $HealthBar
var speed:int = 3

func _on_remove_health_pressed() -> void:
	var n:int = health_bar.value
	health_bar.value = clamp(n - speed, 0, 100)

func _on_add_health_pressed() -> void:
	var n:int = health_bar.value
	health_bar.value = clamp(n + speed, 0, 100)
