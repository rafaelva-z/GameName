extends ColorRect

@onready var resume_button: Button = $CenterContainer/PanelContainer/MarginContainer/VBoxContainer/ResumeButton
@onready var quit_button: Button = $CenterContainer/PanelContainer/MarginContainer/VBoxContainer/QuitButton

func _ready() -> void:
	resume_button.pressed.connect(_on_resumeButton_pressed)
	quit_button.pressed.connect(_on_quitButton_pressed)
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		get_parent().toggle_pause()

# Button functions
func _on_resumeButton_pressed():
	get_parent().toggle_pause()

func _on_quitButton_pressed():
	get_tree().quit() #Change to this: get_tree().change_scene("res://scenes/main_menu.tscn")
