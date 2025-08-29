extends Label


func _ready() -> void:
	EventBus.change_money.connect(update_label)

func update_label(money):
	var formatted = format_money(money)
	text = formatted + "$"

func format_money(value: int) -> String:
	var s = str(value)
	var digits := []
	
	# сохраняем цифры в массив
	for c in s:
		digits.append(c)
	
	var result := ""
	var len_digits = digits.size()
	
	# определяем, с какого индекса вставлять точку
	var first_group = len_digits % 3
	if first_group == 0:
		first_group = 3
	
	for i in range(len_digits):
		result += digits[i]
		# вставляем точку
		if (i + 1 == first_group or (i + 1 - first_group) % 3 == 0) and i != len_digits - 1:
			result += "."
	
	return result
