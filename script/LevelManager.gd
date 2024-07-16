extends Node

export(Array, PackedScene) var levelScenes

var currentLevelIndex = 0

func change_level(leveIndex):
	currentLevelIndex = leveIndex
	if currentLevelIndex >= levelScenes.size():
		currentLevelIndex = $"/root/ScreenTransitionManager".transition_to_scene("res://scenes/UI/GameComplete.tscn")
	else:
		$"/root/ScreenTransitionManager".transition_to_scene(levelScenes[currentLevelIndex].resource_path)
#	get_tree().change_scene(levelScenes[currentLevelIndex].resource_path)

func increment_level():
	change_level(currentLevelIndex + 1)
	
func restart_level():
	change_level(currentLevelIndex)
