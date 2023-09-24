extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -600.0
const customGravity = 2000

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var canFly: bool = true

func _physics_process(delta):
	# Add the gravity.
	velocity.y += customGravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("flap") && canFly:
		velocity.y = JUMP_VELOCITY
		$AudioStreamPlayer.play()
	move_and_slide()

#func _on_hitbox_body_entered(body):
#		print("COLLISION!")

func _on_hitbox_area_entered(area):
	if area.name == "Failstate":
#		print("COLLISION!")
		canFly = false
