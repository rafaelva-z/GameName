extends Node3D

@onready var pause_menu = $PauseMenu
var is_paused = false

func _ready() -> void:
	pause_menu.hide()

func _process(delta: float) -> void:
	pass
	
func toggle_pause():
	is_paused = not is_paused
	
	if is_paused:
		print("showing pause menu")
		pause_menu.show()
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		get_tree().paused = true
		#Engine.time_scale = 0
	else:
		print("hiding pause menu")
		pause_menu.hide()
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		get_tree().paused = false
		#Engine.time_scale = 1
