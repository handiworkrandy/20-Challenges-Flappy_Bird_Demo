extends Node2D

var pipeSpeed = 3
var level_vars = null

# Called when the node enters the scene tree for the first time.
func _ready():
	level_vars = get_node("/root/Level")# How is this possible without autoloading??? My theory: When the child copy is created, it has access to the other nodes in the Scene.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	position.x -= pipeSpeed

func _on_despawn_timeout():
	queue_free()

func _on_score_region_body_exited(_body):
	level_vars.score += 1
	$AudioStreamPlayer.play()
#	print(level_vars.score)
