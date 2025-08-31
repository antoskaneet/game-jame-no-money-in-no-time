extends AnimatedSprite2D

@onready var area2d = get_parent().get_node("Area2D")
@onready var animations = get_parent().get_node("AtmAnimation")
@onready var sprite2d = get_parent().get_node("Atm")


func start_animation():
	print("анимация atm запщуена")
	animations.play()
	animations.frame = 1
	sprite2d.visible = false
