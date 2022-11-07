extends TextureButton

onready var current_scene = $".."

func _ready():
	# warning-ignore:return_value_discarded
	connect("pressed", self, "_on_b_btn_pressed")

func _on_b_btn_pressed() -> void:
	Events.emit_signal("change_the_scene_back", current_scene)
	print("back button was pressed")
