extends CharacterBody2D

var movespeed = 500

func _ready():
	pass
func _physics_process(delta):
	
	var vel = Vector2.ZERO
	if Input.is_action_just_pressed("move_forwards"):
		vel = transform.x * movespeed
		
	if Input.is_action_just_pressed("move_backwards"):
		vel = transform.x * -movespeed
		
	if Input.is_action_just_pressed("turn_left"):
		vel = transform.y * movespeed
	
	if Input.is_action_just_pressed("turn_right"):
		vel = transform.y * -movespeed
		
	velocity = vel
	
	move_and_slide()
	look_at(get_global_mouse_position())
	
