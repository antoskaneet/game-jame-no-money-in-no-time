extends Node2D

# Точка входа в игру, пока пустова-то..

func _ready() -> void:
	print("игра запущена")
	EventBus.TimeEnd.connect(_game_over)

func _game_over():
	get_tree().change_scene_to_file("res://scenes/main.tscn")
