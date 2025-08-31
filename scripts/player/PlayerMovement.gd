extends Node

@export var speed: float = 2000
@onready var input = get_parent().get_node("PlayerInput")
@onready var player = get_parent()

var min_x := -2407    # левая граница
var max_x := 2400   # правая граница

func _physics_process(delta: float) -> void:
	var dir = input.get_move_direction()

	player.position += dir * speed * delta

	# калло код границы карты
	if player.position.x < min_x:
		player.position.x = min_x
	if player.position.x > max_x:
		player.position.x = max_x

	if dir != Vector2.ZERO:
		player.state = player.State.RUN
	else:
		player.state = player.State.IDLE
