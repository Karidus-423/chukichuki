extends Node2D

var chuki_scene = preload("res://scenes/chuki.tscn")


# func _ready() -> void:

func _input(event: InputEvent) -> void:
	var chuki_instance = chuki_scene.instantiate()

	if Input.is_action_pressed("shoot"):
		add_child(chuki_instance)
		print("To: ",event.position)


func _on_child_entered_tree(node: Node) -> void:
	var pos = node.position
	print("From :", pos)
