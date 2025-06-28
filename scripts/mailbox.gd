extends TextureButton

var cursor_open = load("res://Assets/cursor_open.png")
var default_cursor = load("res://Assets/cursor.png")

func _ready():
# warning-ignore:return_value_discarded
	connect("mouse_entered",Callable(self,"_on_r_btn_mouse_entered"))
# warning-ignore:return_value_discarded
	connect("mouse_exited",Callable(self,"_on_r_btn_mouse_exited"))

func _on_mailbox_btn_pressed():
	print("mailbox was opened!")

func _on_r_btn_mouse_entered():
	Input.set_custom_mouse_cursor(cursor_open)


func _on_r_btn_mouse_exited():
	Input.set_custom_mouse_cursor(default_cursor)
