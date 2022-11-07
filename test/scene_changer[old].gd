extends Area2D

var next_scene = "res://renders/shot2.jpg"

func _input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.is_pressed():
		self.on_click() 
	
	
func on_click():
	$Sprite.texture = load(next_scene)
	print(next_scene + " was loaded.")
	
