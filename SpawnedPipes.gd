extends Node2D

var pipe_scene = preload("res://pipes.tscn")

func _on_pipe_time_timeout():
	var pipes = pipe_scene.instantiate()
	pipes.position = Vector2(1200,randf_range(500,720))
	add_child(pipes)
