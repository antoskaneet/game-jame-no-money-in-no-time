extends Area2D

var _area_active: bool = false
@export var used_count_max: int
@export var amount: int
var _used: int

func _ready() -> void:
	set_process(false)

func _on_body_entered(body: Node2D) -> void:
	set_process(true)
	_area_active = true
	print("Вошли в MoneyArea")

func _on_body_exited(body: Node2D) -> void:
	set_process(false)
	_area_active = false
	print("Вышли с MoneyArea")

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("use"):
		_used += 1
		if _used == used_count_max:
			self.queue_free()
		if _used <= used_count_max:
			MoneyModel.spend_money(amount)
