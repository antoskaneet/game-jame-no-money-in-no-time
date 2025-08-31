extends Node

var _money: int = 1_000_000

func _ready() -> void:
	EventBus.TimeEnd.connect(_time_end)
	EventBus.change_money.connect(_udpate_money)
	
func _time_end():
	if _money <= 0:
		_end_no_money()
	else:
		_end_money()

func _udpate_money(money):
	_money = money

func _end_no_money():
	print("_end_no_money")
	get_tree().change_scene_to_file("res://scenes/ends/end_no_money.tscn")

func _end_money():
	print("_end_money")
	get_tree().change_scene_to_file("res://scenes/ends/end_money.tscn")
