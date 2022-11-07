extends Node2D

onready var current_scene: Node = get_child(0)
onready var scene_library = SceneData.scene_data

# when this node is loaded into the root scene
func _ready():
# warning-ignore:return_value_discarded
	Events.connect("change_the_scene", self, "_on_f_btn_pressed")
# warning-ignore:return_value_discarded
	Events.connect("change_the_scene_left", self, "_on_l_btn_pressed")
	


# when forward button is pressed 	
func _on_f_btn_pressed(new_scene) -> void:
	var FORWARD_SCENE = scene_library[new_scene.get_name()]["forward_scene"]
	remove_child(current_scene)
	add_child(FORWARD_SCENE.instance())
	current_scene = get_child(0)

		
		
		

	
