extends CharacterBody2D

const SPEED = 400 # constant


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("ui_left"): # When left key is pressed
		velocity.x = -SPEED
	elif Input.is_action_pressed("ui_right"): # When right key is pressed
		velocity.x = SPEED
	else: # if both left key and right key are not pressed
		velocity.x = 0 
	if Input.is_action_pressed("ui_up"): # When up key is pressed
		velocity.y = -SPEED
	elif Input.is_action_pressed("ui_down"): # When down key is pressed
		velocity.y = SPEED
	else: # if both up key and down key are not pressed
		velocity.y = 0
		
	move_and_slide() # update physics and check for collisions
