extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var dragMouse = false
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
func _process(_delta):
	if(dragMouse):
		set_position(get_viewport().get_mouse_position())
	
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			free()


func _on_Dragable_area_exited():
	hide()
