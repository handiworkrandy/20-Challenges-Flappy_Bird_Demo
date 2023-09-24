extends Node2D

var score = 0

func _process(_delta):
	$ScoreLabel.set_text(str(score))
