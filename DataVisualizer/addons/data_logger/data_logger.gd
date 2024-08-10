@tool
extends EditorPlugin

var _main_node : Resource = load("res://addons/data_logger/main.gd")
var _node_icon: Resource = preload("res://icon.svg")

func _enter_tree():
	# Initialization of the plugin goes here.
	add_custom_type("DataContainer", "Control", _main_node, _node_icon)
	
func _exit_tree():
	remove_custom_type("DataContainer")
