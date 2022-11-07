extends TextureButton

onready var current_scene = $".."
var right_cursor = load("res://Assets/cursor_right.png")
var default_cursor = load("res://Assets/cursor.png")


func _ready():
# warning-ignore:return_value_discarded
	connect("pressed", self, "_on_r_btn_pressed")
# warning-ignore:return_value_discarded
	connect("mouse_entered", self, "_on_r_btn_mouse_entered")
# warning-ignore:return_value_discarded
	connect("mouse_exited", self, "_on_r_btn_mouse_exited")

func _on_r_btn_pressed() -> void:
	Events.emit_signal("change_the_scene_right", current_scene)
	print("right button was pressed")


func _on_r_btn_mouse_entered():
	Input.set_custom_mouse_cursor(right_cursor)


func _on_r_btn_mouse_exited():
	Input.set_custom_mouse_cursor(default_cursor)
