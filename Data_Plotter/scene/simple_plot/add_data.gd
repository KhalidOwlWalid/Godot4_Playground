extends Button

@export var datasets: Array[Vector2] = [Vector2.ZERO]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _pressed():
	print("Button is pressed")
	# Get the last value from the dataset
	var last_element: Vector2 = datasets[-1]
	last_element.x += 100
	last_element.y += 100
	var new_data: Vector2 = Vector2(last_element)
	print("New data added", new_data)
	datasets.append(new_data)
