extends Control

@onready var PlotData: Button = $PlotData
@onready var DataLine: Line2D = $DataLine
@onready var AddData: Button = $AddData

# Called when the node enters the scene tree for the first time.
func _ready():
	# This method is good if we want to add more signals programmatically
	# through the use of strings
	# Source: https://docs.godotengine.org/en/stable/classes/class_object.html#class-object-method-connect
	#PlotData.connect("_ready", on_button_pressed())
	PlotData.pressed.connect(plot_data)
	
func plot_data():
	var data: Array[Vector2] = AddData.datasets
	
	for point in data:
		DataLine.add_point(point)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
