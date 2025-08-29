extends Label

@export var duration: float = 60.0

func _process(delta: float) -> void:
	duration -= delta
	if duration < 0:
		duration = 0
		EventBus.TimeEnd.emit()
	self.text = String("%0.1f" % duration)
