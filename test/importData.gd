extends Node

#parse my json file into a dictionary for all of my files to read. 
var scene_data

func _ready():
	var scene_data_file = File.new()
	scene_data_file.open("res://Data/SceneList.json", File.READ)
	var scene_data_json = JSON.parse(scene_data_file.get_as_text())
	scene_data_file.close()
	scene_data = scene_data_json.result
#	print(scene_data)

func _on_f_btn_change_scene():
	print("button was pressed")
