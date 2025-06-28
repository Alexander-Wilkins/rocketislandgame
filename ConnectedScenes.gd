extends Node

@export_category("Connected Scenes")
@export var number := 5
@onready var current_scene: Node2D = $".."
@onready var current_scene_name: String = current_scene.to_string()
@onready var scene_path := "res://game_scenes/" + str(current_scene_name) + ".tscn"

enum Direction { FORWARD, RIGHT, BACK, LEFT }
@export var scene_array: Array[PackedScene] = [null, null, null, null]

@export_flags("Forward", "Right", "Back", "Left") var direction: int = 0

func _ready() -> void:
	pass

func test_func() -> void:
	print("scene_path: ", scene_path)

	# Print current_scene parent Node2D information
	print("\n=== CURRENT SCENE INFO ===")
	print("Current scene node: ", current_scene)
	print("Current scene name: ", current_scene.name)
	print("Current scene type: ", current_scene.get_class())
	print("Current scene to_string(): ", current_scene_name)

	# Print scene_array contents
	print("\n=== SCENE ARRAY CONTENTS ===")
	print("Scene array size: ", scene_array.size())

	# Check if any PackedScenes exist and print them
	var has_scenes: bool = false
	for i in range(scene_array.size()):
		var scene: PackedScene = scene_array[i]
		var direction_name = Direction.keys()[i]  # Get enum name (FORWARD, RIGHT, etc.)

		if scene != null:
			has_scenes = true
			print("Index ", i, " (", direction_name, "): ", scene)
			print("  - Scene path: ", scene.resource_path)
		else:
			print("Index ", i, " (", direction_name, "): null")

	if not has_scenes:
		print("No PackedScenes found in scene_array")

	# Alternative: Only print non-null scenes
	print("\n=== NON-NULL SCENES ONLY ===")
	var non_null_scenes: Array = scene_array.filter(func(scene): return scene != null)
	if non_null_scenes.size() > 0:
		for i in range(scene_array.size()):
			if scene_array[i] == null: return
			var direction_name = Direction.keys()[i]
			print(direction_name, " scene: ", scene_array[i].resource_path)
	else:
		print("All scenes are null")

	# Bonus: Print additional parent info if you want more details
	print("\n=== ADDITIONAL PARENT INFO ===")
	print("Parent scene children count: ", current_scene.get_child_count())
	print("Parent scene position: ", current_scene.position)
	if current_scene.get_parent():
		print("Parent's parent: ", current_scene.get_parent().name)
