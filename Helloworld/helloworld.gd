extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_pressed("accept"):
		#SceneChanger.change_scene("res://Prepare/prepare.tscn")
		SceneChanger.change_scene("res://Jumpman/jumpman.tscn")


