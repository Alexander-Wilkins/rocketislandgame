extends Button

onready var current_scene = $".."

func _ready():
	connect("pressed", self, "_on_l_btn_pressed")

func _on_l_btn_pressed() -> void:
	Events.emit_signal("change_the_scene_left", current_scene)
