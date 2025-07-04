extends TextureButton

@onready var current_scene = $".."
var left_cursor = load("res://Assets/cursor_left.png")
var default_cursor = load("res://Assets/cursor.png")

func _ready():
	# automatically connects pressed() signal withouth having to manaully connect via the Godot Editor
	# warning-ignore:return_value_discarded
	connect("pressed",Callable(self,"_on_l_btn_pressed"))
	# warning-ignore:return_value_discarded
	connect("mouse_entered",Callable(self,"_on_r_btn_mouse_entered"))
	# warning-ignore:return_value_discarded
	connect("mouse_exited",Callable(self,"_on_r_btn_mouse_exited"))

func _on_l_btn_pressed() -> void:
	Events.emit_signal("change_the_scene_left", current_scene)
	print("left button was pressed")

func _on_r_btn_mouse_entered():
	Input.set_custom_mouse_cursor(left_cursor)

func _on_r_btn_mouse_exited():
	Input.set_custom_mouse_cursor(default_cursor)
