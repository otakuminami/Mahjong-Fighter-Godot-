extends CanvasLayer

@onready var animation:AnimationPlayer = $AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready():
	self.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func change_scene(path):
	self.show()
	self.set_layer(999)
	animation.play("changer")
	await animation.animation_finished
	get_tree().change_scene_to_file(path)
	animation.play_backwards("changer")
	await animation.animation_finished
	self.set_layer(-1)
	self.hide()
	pass 
