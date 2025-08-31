extends Node

var _ui
var _tnt
var _key

func get_ui(ui):
	_ui = ui

func open_ui():
	print("sssss")
	_ui.visible = true
	
func get_data_tnt(tnt):
	_tnt = tnt
	
func set_data_tnt():
	return _tnt
	
func get_data_key(key):
	_key = key
