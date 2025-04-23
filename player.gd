extends CharacterBody2D


const SPEED = 300.0
const ACCEL = 30.0


func _physics_process(delta: float) -> void:

	# Get the input direction and handle the movement/deceleration.
	var direction : Vector2 =  Input.get_vector("move_left", "move_right", "move_up", "move_down")

	velocity.x = move_toward(velocity.x, SPEED * direction.x, ACCEL)
	velocity.y = move_toward(velocity.y, SPEED * direction.y, ACCEL)

	move_and_slide()
