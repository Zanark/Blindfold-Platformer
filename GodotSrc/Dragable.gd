extends Area2D

onready var dragMouse = false
onready var GRAVITY = Vector2(0, 100)  # gravity force
onready var VELOCITY = Vector2()  # the area's velocity
var on_floor = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Dragable_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			dragMouse = true
		else:
			dragMouse = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(dragMouse):
		set_position(get_viewport().get_mouse_position())
		on_floor = false
		VELOCITY = Vector2.ZERO

	if !on_floor:
		VELOCITY += GRAVITY * delta
		set_position(get_position() + VELOCITY * delta)
	
	
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			free()
		else :
			VELOCITY = Vector2.ZERO
			on_floor = true


func _on_Dragable_area_exited():
	hide()
