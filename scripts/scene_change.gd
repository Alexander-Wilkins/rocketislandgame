extends Node2D

onready var CURRENT_SCENE: Node = get_child(0)
onready var _scene_library := SceneData.SCENE_DATA
onready var _default_cursor:= load("res://Assets/cursor.png")

# when this node is loaded into the root scene
func _ready():

## *** ------------------EVENT SUBSCRIBERS----------------------  *** ##
# warning-ignore:return_value_discarded
	Events.connect("change_the_scene_forward", self, "_on_f_btn_pressed")
# warning-ignore:return_value_discarded
	Events.connect("change_the_scene_right", self, "_on_r_btn_pressed")
# warning-ignore:return_value_discarded
	Events.connect("change_the_scene_back", self, "_on_b_btn_pressed")
# warning-ignore:return_value_discarded
	Events.connect("change_the_scene_left", self, "_on_l_btn_pressed")



## *** ------------------NAVIGATION BUTTONS----------------------  *** ##

# when forward button is pressed change current scene to new Forward Scene
func _on_f_btn_pressed(new_scene) -> void:
		var _forward_scene = _scene_library[new_scene.get_name()]["forward_scene"]
		if _forward_scene != null: Change_Scene_To(_forward_scene)

# when right button is pressed change current scene to new Right Scene
func _on_r_btn_pressed(new_scene) -> void:
		var _right_scene = _scene_library[new_scene.get_name()]["right_scene"]
		if _right_scene != null: Change_Scene_To(_right_scene)

# when back button is pressed change current scene to new Back Scene
func _on_b_btn_pressed(new_scene) -> void:
		var _back_scene = _scene_library[new_scene.get_name()]["back_scene"]
		if _back_scene != null: Change_Scene_To(_back_scene)

# when left button is pressed change current scene to new Left Scene
func _on_l_btn_pressed(new_scene) -> void:
		var _left_scene = _scene_library[new_scene.get_name()]["left_scene"]
		if _left_scene != null: Change_Scene_To(_left_scene)



## *** ------------------METHODS----------------------  *** ##
func Change_Scene_To(next_new_scene) -> void:
	Replace(CURRENT_SCENE, next_new_scene)
	CURRENT_SCENE = get_child(0)
	Update_Cursor_To_Default(_default_cursor)


func Replace(_current_scene_node, _connected_scene) -> void:
		remove_child(_current_scene_node)
		add_child(_connected_scene.instance())

func Update_Cursor_To_Default(cursor) -> void:
	Input.set_custom_mouse_cursor(cursor)

