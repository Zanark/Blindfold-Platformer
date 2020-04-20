extends KinematicBody2D

const ACCELERATION = 10
const GRAVITY = 100
const MAX_SPEED = 60
const FRICTION = 0.25
const JUMP_FORCE = 120

var motion = Vector2.ZERO

onready var animationPlayer = $AnimationPlayer

func _physics_process(delta):
	
	motion.x += ACCELERATION * delta

	motion.y += GRAVITY * delta

	if is_on_floor():
		animationPlayer.play("Walk")

	motion = move_and_slide(motion, Vector2.UP)

func _on_Dragable_body_entered(node):

	if(node.name == "Player"):
		node.motion.y = -120
		node.animationPlayer.play("Jump")
	

