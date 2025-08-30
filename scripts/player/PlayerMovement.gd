extends Node

@export var speed: float = 200
@onready var input = get_parent().get_node("PlayerInput")
@onready var player = get_parent()

func _physics_process(delta: float) -> void:
	var dir = input.get_move_direction()
	player.position += dir * speed * delta
	
	if dir != Vector2(0, 0):
		player.state = player.State.RUN
	else:
		player.state = player.State.IDLE
