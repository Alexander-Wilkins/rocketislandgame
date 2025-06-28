extends Node2D

@onready var CURRENT_SCENE: Node = get_child(0)
@onready var _scene_library := SceneData.SCENE_DATA
@onready var _default_cursor := preload("res://Assets/cursor.png")

# when this node is loaded into the root scene
func _ready():
## *** ------------------EVENT SUBSCRIBERS----------------------  *** ##
	Events.connect("change_the_scene_forward", Callable(self,"_on_f_btn_pressed"))
	Events.connect("change_the_scene_right", Callable(self,"_on_r_btn_pressed"))
	Events.connect("change_the_scene_back", Callable(self,"_on_b_btn_pressed"))
	Events.connect("change_the_scene_left", Callable(self,"_on_l_btn_pressed"))
	# Set the custom cursor
	Input.set_custom_mouse_cursor(_default_cursor)
	# helo world

	
## *** ------------------NAVIGATION BUTTONS----------------------  *** ##
func _on_f_btn_pressed(new_scene) -> void:
	var _forward_scene = _scene_library[new_scene.get_name()]["forward_scene"]
	if _forward_scene == null: return
	Change_Scene_To(_forward_scene)

func _on_r_btn_pressed(new_scene) -> void:
	var _right_scene = _scene_library[new_scene.get_name()]["right_scene"]
	if _right_scene == null: return 
	Change_Scene_To(_right_scene)

func _on_b_btn_pressed(new_scene) -> void:
	var _back_scene = _scene_library[new_scene.get_name()]["back_scene"]
	if _back_scene == null: return 
	Change_Scene_To(_back_scene)

func _on_l_btn_pressed(new_scene) -> void:
	var _left_scene = _scene_library[new_scene.get_name()]["left_scene"]
	if _left_scene == null: return 
	Change_Scene_To(_left_scene)



func Change_Scene_To(next_new_scene) -> void:
	Replace(CURRENT_SCENE, next_new_scene)
	CURRENT_SCENE = get_child(0)
	Update_Cursor_To_Default(_default_cursor)


func Replace(_current_scene_node, _connected_scene) -> void:
		remove_child(_current_scene_node)
		add_child(_connected_scene.instantiate())

func Update_Cursor_To_Default(cursor) -> void:
	Input.set_custom_mouse_cursor(cursor)
