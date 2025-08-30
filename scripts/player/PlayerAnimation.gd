extends Node

@onready var player = get_parent() as Player
var sprite = self

func _ready() -> void:
	sprite.play()
	
func _process(delta: float) -> void:
	if player.state == Player.State.RUN:
		self.animation = "run"
	if player.state == Player.State.IDLE:
		self.animation = "idle"
	var dir = player.get_node("PlayerInput").get_move_direction().x
	if dir != 0:
		sprite.flip_h = dir < 0
