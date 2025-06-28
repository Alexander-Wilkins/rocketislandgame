extends Area2D

#----------------- global variables
#var currentScene = get_tree().get_current_scene().get_name()

signal change_image 

func _input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		self.on_click()

func on_click():
	emit_signal("change_image")
	print("Emitter 'change_image' successful!")
