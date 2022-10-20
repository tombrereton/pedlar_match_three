extends Node2D

export (String) var color;
var move_tween;
var speed = 0.3
var matched = false

func _ready():
	move_tween = get_node("move_tween")

func move(target):
	move_tween.interpolate_property(self, "position", position, target, speed, 
							Tween.TRANS_BACK, Tween.EASE_OUT)
	move_tween.start()

func dim():
	var sprite = get_node("Sprite")
	sprite.modulate = Color(1,1,1,.5)
	
