extends Node2D

onready var current_scene := get_child(0)
onready var current_buttons := get_child(0).get_child(0)
onready var scene_dict = ImportData.scene_data 

#onready var forward_scene = preload("res://Scenes/Scene2.tscn").instance()


func _on_scene_forward_btn_pressed():
	print(current_scene.texture)
	print(current_buttons)
	if current_scene == $"Shot1":
		current_scene.texture = load("res://Assets/shot2.jpg")
		current_buttons.queue_free()
#		add_child(forward_scene)

