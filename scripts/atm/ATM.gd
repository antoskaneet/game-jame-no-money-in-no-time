extends Node2D


@export var used_count_max: int
@export var amount: int
@export var audio: AudioStreamPlayer
@onready var money_area = $MoneyArea

func _ready():
	money_area.amount = amount
	money_area.used_count_max = used_count_max
	money_area.audio = audio
