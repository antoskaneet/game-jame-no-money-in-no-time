extends CharacterBody2D

class_name Player

enum State { IDLE, RUN }
@export var state: State = State.IDLE

func _ready() -> void:
	print(state)
