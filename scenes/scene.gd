extends Spatial

func _ready():
	pass

func _input(event):
	if (event is InputEventKey):
		# Toggle mouse mode
		if (event.scancode == KEY_CONTROL && event.pressed):
			toggle_mouse();
		
		# Toggle fullscreen
		if (event.scancode == KEY_F1 && event.pressed):
			OS.window_fullscreen = !OS.window_fullscreen;

func toggle_mouse():
	if (Input.get_mouse_mode() != Input.MOUSE_MODE_CAPTURED):
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED);
	else:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE);
