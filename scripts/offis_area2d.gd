extends Area2D

var player_inside := false

func _on_body_entered(body):
	player_inside = true

func _on_body_exited(body):
	player_inside = false

func _process(delta):
	if Input.is_action_just_pressed("use") and player_inside:
		print("клик")
		var data = StoreUi.set_data_tnt()
		print(data)
		EndManager._end_tnt(data)
