extends Node2D



func _on_ResetButton_pressed():
	# warning-ignore:return_value_discarded
	get_tree().reload_current_scene()
