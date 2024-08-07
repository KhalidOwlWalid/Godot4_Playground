extends Line2D

@export var datasets: Array[Vector2] = [Vector2(115.231, 97.123), Vector2(329, 237)]

# Called when the node enters the scene tree for the first time.
func _ready():
	
	for point in datasets:
		add_point(point)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
