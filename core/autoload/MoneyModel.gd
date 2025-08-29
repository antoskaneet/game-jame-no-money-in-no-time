extends Node

var money: int = 1_000_000

func spend_money(amount: int):
	money -= amount
	EventBus.change_money.emit(money)
