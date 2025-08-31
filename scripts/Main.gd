extends Node2D

# Точка входа в игру, пока пустова-то..

func _ready() -> void:
	print("игра запущена")

func _game_over():
	get_tree().change_scene_to_file("res://scenes/main.tscn")
