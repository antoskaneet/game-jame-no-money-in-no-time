extends Area2D

var _area_active: bool = false
@export var used_count_max: int
@export var amount: int
@export var audio: AudioStreamPlayer
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
		var should_delete = _used >= used_count_max
		_play_sound(should_delete)
		if _used <= used_count_max:
			MoneyModel.spend_money(amount)

func _play_sound(delete_after: bool = false):
	if audio == null:
		return
	audio.play()
	if delete_after:
		var t = Timer.new()
		t.one_shot = true
		t.wait_time = audio.stream.get_length()
		add_child(t)
		t.start()
		t.timeout.connect(Callable(self, "_on_sound_finished"))

func _on_sound_finished():
	queue_free()
