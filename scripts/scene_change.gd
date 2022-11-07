extends Node2D

onready var current_scene: Node = get_child(0)
onready var scene_library = SceneData.scene_data
onready var default_cursor = load("res://Assets/cursor.png")

# when this node is loaded into the root scene
func _ready():
# warning-ignore:return_value_discarded
	Events.connect("change_the_scene", self, "_on_f_btn_pressed")
# warning-ignore:return_value_discarded
	Events.connect("change_the_scene_left", self, "_on_l_btn_pressed")
# warning-ignore:return_value_discarded
	Events.connect("change_the_scene_right", self, "_on_r_btn_pressed")
# warning-ignore:return_value_discarded
	Events.connect("change_the_scene_back", self, "_on_b_btn_pressed")	



## *** ------------------NAVIGATION BUTTONS----------------------11  *** ##

# when forward button is pressed 	
func _on_f_btn_pressed(new_scene) -> void: 
	var forward_scene = scene_library[new_scene.get_name()]["forward_scene"]
	if forward_scene != null:
		remove_child(current_scene)
		add_child(forward_scene.instance())
		current_scene = get_child(0)
		Input.set_custom_mouse_cursor(default_cursor)
	else: pass

# when left button is pressed
func _on_l_btn_pressed(new_scene) -> void:
	var left_scene = scene_library[new_scene.get_name()]["left_scene"]
	if left_scene != null:
		remove_child(current_scene)
		add_child(left_scene.instance())
		current_scene = get_child(0)
		Input.set_custom_mouse_cursor(default_cursor)
	else: pass

# when right button is pressed
func _on_r_btn_pressed(new_scene) -> void:
	var right_scene = scene_library[new_scene.get_name()]["right_scene"]
	if right_scene != null:
		remove_child(current_scene)
		add_child(right_scene.instance())
		current_scene = get_child(0)
		Input.set_custom_mouse_cursor(default_cursor)
	else: pass

# when back button is pressed
func _on_b_btn_pressed(new_scene) -> void:
	var back_scene = scene_library[new_scene.get_name()]["back_scene"]
	if back_scene != null:
		remove_child(current_scene)
		add_child(back_scene.instance())
		current_scene = get_child(0)
		Input.set_custom_mouse_cursor(default_cursor)
	pass

		

	
