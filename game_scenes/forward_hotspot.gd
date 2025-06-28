extends Area2D

#======== Forward Hotspot===========#
@onready var _default_cursor := load("res://Assets/cursor.png")
@onready var rendering: Sprite2D = $"../rendering"
@onready var connected_scenes = $"../ConnectedScenes"

func _ready() -> void:
	Input.set_custom_mouse_cursor(_default_cursor)
	print(connected_scenes.has_method("test_func"))
	print(connected_scenes.scene_array)

func _input(_event):
	if Input.is_action_pressed("left_click"):
		print("Left mouse button is pressed")
