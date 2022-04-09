extends Area2D

var pre_x = preload("res://X.tscn")
var pre_o = preload("res://O.tscn")

var used setget set_used

func _on_Quadrant_input_event(_viewport : Viewport, event : InputEvent, _shape_idx):
	if event is InputEventMouseButton and not used:
		self.used = true
		place_xo()
		
func set_used(value : bool):
	used = value
	
func place_xo():
	if Server.can_set_x:
		var x = pre_x.instance()
		add_child(x)
	elif Server.can_set_o:
		var o = pre_o.instance()
		add_child(o)
	
	Server.can_set_x = !Server.can_set_x
	Server.can_set_o = !Server.can_set_o
