extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print("111") # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("accept"):
		get_tree().change_scene_to_file("res://Battle/battle.tscn")
		#get_tree().change_scene("res://Battle/battle.tscn")
	

