extends Node2D

var chucki_scene = preload("res://scenes/chuki.tscn")

@onready var shooter_pos = $root/shooter

func _ready() -> void:
	print("From: ", shooter_pos)

func _input(event: InputEvent) -> void:
	var chuki_instance = chucki_scene.instantiate()
	if Input.is_action_pressed("shoot"):
		add_child(chuki_instance)
		print("To: ",event.position)
