extends Node3D

@onready var maze = $".."
@onready var player = $"../../Player"
@onready var maze_on_screen_notifier = $"../VisibleOnScreenNotifier3D"

func _process(delta: float) -> void:
	if ((not maze_on_screen_notifier.is_on_screen()
			and maze.position.distance_to(player.position) > 30)
			or maze.position.distance_to(player.position) > 150):
		maze.look_at(player.position)
	pass
	
