extends TextureButton

@onready var current_scene = $".."
var right_cursor = load("res://Assets/cursor_right.png")
var default_cursor = load("res://Assets/cursor.png")


func _ready():
# automatically connects pressed() signal withouth having to manaully connect via the Godot Editor
# warning-ignore:return_value_discarded
	connect("pressed",Callable(self,"_on_r_btn_pressed"))
# warning-ignore:return_value_discarded
	connect("mouse_entered",Callable(self,"_on_r_btn_mouse_entered"))
# warning-ignore:return_value_discarded
	connect("mouse_exited",Callable(self,"_on_r_btn_mouse_exited"))

func _on_r_btn_pressed() -> void:
	Events.emit_signal("change_the_scene_right", current_scene)
	print("right button was pressed")


func _on_r_btn_mouse_entered():
	Input.set_custom_mouse_cursor(right_cursor)


func _on_r_btn_mouse_exited():
	Input.set_custom_mouse_cursor(default_cursor)
