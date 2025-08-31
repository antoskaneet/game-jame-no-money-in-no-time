extends Area2D

var player_inside := false

func _on_body_entered(body):
	player_inside = true

func _on_body_exited(body):
	player_inside = false

func _input(event):
	if player_inside and Input.is_action_just_pressed("use"):
		StoreUi.open_ui()
