extends Area2D

@onready var timer: Timer = $Timer

#body always the plays because it is the only one that stay on Layer 2 in ColisionShape
func _on_body_entered(body: Node2D) -> void:
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start()


func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
