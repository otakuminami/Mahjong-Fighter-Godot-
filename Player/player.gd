extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var direction = Input.get_vector("left","right","up","down")
	position += direction * 500 *_delta
	
	var is_any_button_pressed = Input.is_action_pressed("left")||Input.is_action_pressed("right")||Input.is_action_pressed("up")||Input.is_action_pressed("down")
	
	if Input.is_action_pressed("attack"):
		print("attack")
	
	if Input.is_action_just_pressed("up"):
		$playerSprite2D.play("run_up", 1.0, false)
		
	if Input.is_action_just_pressed("down"):
		$playerSprite2D.play("run_down", 1.0, false)
	
	if Input.is_action_just_pressed("right"):
		$playerSprite2D.play("run_right", 1.0, false)

	if Input.is_action_just_pressed("left"):
		$playerSprite2D.play("run_left", 1.0, false)
		
	if Input.is_action_just_pressed("exit"):
		get_tree().quit() 
		
	if not is_any_button_pressed:
		$playerSprite2D.play("default")


