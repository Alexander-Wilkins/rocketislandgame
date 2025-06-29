extends TextureButton

@onready var current_scene = $".."
var back_cursor = load("res://Assets/cursor_back.png")
var default_cursor = load("res://Assets/cursor.png")

func _ready():
	# automatically connects pressed() signal withouth having to manaully connect via the Godot Editor
	connect("pressed",Callable(self,"_on_b_btn_pressed"))
	connect("mouse_entered",Callable(self,"_on_r_btn_mouse_entered"))
	connect("mouse_exited",Callable(self,"_on_r_btn_mouse_exited"))

func _on_b_btn_pressed() -> void:
	Events.emit_signal("change_the_scene_back", current_scene)
	print("back button was pressed")
	
func _on_r_btn_mouse_entered():
	Input.set_custom_mouse_cursor(back_cursor)


func _on_r_btn_mouse_exited():
	Input.set_custom_mouse_cursor(default_cursor)
