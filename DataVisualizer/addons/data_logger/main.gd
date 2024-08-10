@tool
extends Control

var BackgroundRect = preload("res://addons/data_logger/custom_node/background_rect.gd")

# This script is developed with reference to the following documentation:
# https://docs.godotengine.org/en/4.2/tutorials/2d/custom_drawing_in_2d.html

var coords_head : Array = [
	[ 22.952, 83.271 ],  [ 28.385, 98.623 ],
	[ 53.168, 107.647 ], [ 72.998, 107.647 ],
	[ 99.546, 98.623 ],  [ 105.048, 83.271 ],
	[ 105.029, 55.237 ], [ 110.740, 47.082 ],
	[ 102.364, 36.104 ], [ 94.050, 40.940 ],
	[ 85.189, 34.445 ],  [ 85.963, 24.194 ],
	[ 73.507, 19.930 ],  [ 68.883, 28.936 ],
	[ 59.118, 28.936 ],  [ 54.494, 19.930 ],
	[ 42.039, 24.194 ],  [ 42.814, 34.445 ],
	[ 33.951, 40.940 ],  [ 25.637, 36.104 ],
	[ 17.262, 47.082 ],  [ 22.973, 55.237 ]
]

var head: PackedVector2Array

@export var rotation_speed : float = 1

func float_array_to_Vector2Array(coords : Array) -> PackedVector2Array:
	# Convert the array of floats into a PackedVector2Array.
	var array : PackedVector2Array = []
	for coord in coords:
		array.append(Vector2(coord[0], coord[1]))
	return array
	
# ColorRect background derived
func get_rect_center():
	pass

func _ready():

	var data_logger_background = BackgroundRect.new()
	data_logger_background.name = "Background"
	data_logger_background.color = Color.BLACK
	data_logger_background.anchor_right = 1.0
	data_logger_background.anchor_bottom = 1.0
	data_logger_background.get_rect_center_position()
	
	var horizontal_grid: Control = Control.new()
	
	# rotation = 0
	# position = Vector2(60, 60)
	# head = float_array_to_Vector2Array(coords_head);

# Called when the node enters the scene tree for the first time.
func _enter_tree():
	pass

func _draw():
	# var godot_blue: Color = Color("478cbf")
	# draw_set_transform(Vector2(60, -60))
	# draw_polygon(head, [godot_blue])
	pass

func _process(delta):
	# rotation -= rotation_speed * delta
	pass
