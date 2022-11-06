extends Node2D

onready var current_scene := get_child(0)

onready var scene_library = ImportData.scene_data
const SCENE_PATH = "res://Scenes/"

#onready var bridgef2 := preload("res://Scenes/bridgef2.tscn").instance()
#onready var bridgef3 := preload("res://Scenes/bridgef3.tscn").instance()
#onready var bridgef4 := preload("res://Scenes/bridgef4.tscn").instance()
onready var bridgef5 := preload("res://Scenes/bridgef5.tscn").instance()
#onready var bridgef6 := preload("res://Scenes/bridgef6.tscn").instance()
#onready var bridgef7 := preload("res://Scenes/bridgef7.tscn").instance()
#
#
#onready var bridgeL5 := preload("res://Scenes/bridgeL5.tscn").instance()

func _ready():
# warning-ignore:return_value_discarded
	Events.connect("change_the_scene", self, "_on_f_btn_pressed")
# warning-ignore:return_value_discarded
	Events.connect("change_the_scene_left", self, "_on_l_btn_pressed")
	


	
func _on_f_btn_pressed(new_scene) -> void:
	# when forward button is pressed 
	print("*Signals connected AF! \n ------------------ \n Scene to Compare to: ", new_scene, "\n Current Scene: ", current_scene, "\n ------------------ \n")
	
	var new_scene_prop = scene_library[new_scene.get_name()]
	
	remove_child(current_scene)
	var path = "res://Scenes/{str}.tscn"
	var temp = new_scene_prop["forward_scene"]
	const PATH_FORMAT = path.format({"str": temp})
	
	preload(PATH_FORMAT.instance())
#	add_child(next)
#	current_scene = get_child(0)
	
	print(path_format)
#
#
#	if new_scene == $bridgef1: 
#		add_new_scene(bridgef2)
#		current_scene = get_child(0)
#
#	elif new_scene == $bridgef2: 
#		add_new_scene(bridgef3)
#		current_scene = get_child(0)
#
#	elif new_scene == $bridgef3: 
#		add_new_scene(bridgef4)
#		current_scene = get_child(0)
#
#	elif new_scene == $bridgef4: 
#		add_new_scene(bridgef5)
#		current_scene = get_child(0)
#
#	elif new_scene == $bridgef5: 
#		add_new_scene(bridgef6)
#		current_scene = get_child(0)
#
#	elif new_scene == $bridgef6: 
#		add_new_scene(bridgef7)
#		current_scene = get_child(0)
#
#	else: print("no available scene") 

#func _on_l_btn_pressed(new_scene):
#		print("*Signals connected AF! \n ------------------ \n Scene to Compare to: ", new_scene, "\n Current Scene: ", current_scene, "\n ------------------ \n")
#
#		if new_scene == $bridgef5: 
#			add_new_scene(bridgeL5)
#			current_scene = get_child(0)
#
#		else: print("no available scene") 
		
		
		

	
