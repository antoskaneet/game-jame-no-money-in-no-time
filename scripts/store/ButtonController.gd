extends Control

var used: int
var used_max: int = 9
@onready var ButtonController = get_parent().get_node("Control2")
var key: int

func _ready() -> void:
	StoreUi.get_ui(ButtonController)

func _on_buy_key_pressed() -> void:
	if key != 1:
		key = 1
		MoneyModel.spend_money(100000)
	
func _on_back_pressed():
	print("click")
	ButtonController.visible = false

func _on_buy_slime_pressed() -> void:
	StoreUi.get_data_tnt(used)
	if used <= used_max:
		used += 1
		MoneyModel.spend_money(10000)
