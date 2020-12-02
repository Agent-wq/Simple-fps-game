extends KinematicBody
#Stats
var max_hp = 100
var current_hp = 100
var ammo = 30
var medkits = 3 
#physics
var velocity = Vector3(0,0,0)
var gravity = 10
const SPEED = 20

func _physics_process(_delta):
	if Input.is_action_pressed("move_right") and Input.is_action_pressed("move_left"):
		velocity.x = 0
	elif Input.is_action_pressed("move_left"):
		velocity.x = -SPEED
	elif Input.is_action_pressed("move_right"):
		velocity.x = SPEED
	else:
		velocity.x = lerp(velocity.x,0,0.1)
	if Input.is_action_pressed("move_down") and Input.is_action_pressed("move_up"):
			velocity.z = 0
	elif Input.is_action_pressed("move_forward"):
		velocity.z = -SPEED
	elif Input.is_action_pressed("move_backward"):
		velocity.z = SPEED
	else:
		velocity.z = lerp(velocity.z,0,0.1)
	move_and_slide(velocity)
	
