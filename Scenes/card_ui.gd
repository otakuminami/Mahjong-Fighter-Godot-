extends Control
var card_state
signal card_selected(card_state)
signal show_card
signal show_no_card



func _ready():
	$Color.color = Color(0.0588, 0.1412, 0.4078, 1)
	print($Color.color)
	pass


func _process(_delta):
	pass


func toggle_selected():
	if $Color.color == Color(0.0588, 0.1412, 0.4078, 1):
		#如果蓝色，就变红
		$Color.color = Color(0.4078, 0.0588, 0.1412, 1)
		#如果不是蓝色，就变蓝色
	else:
		$Color.color = Color(0.0588, 0.1412, 0.4078, 1)
	pass



func _on_drop_point_detector_mouse_entered():
	print("enter")
	self.toggle_selected()
	emit_signal("show_card")
	pass # Replace with function body.


func _on_drop_point_detector_mouse_exited():
	print("exit")
	self.toggle_selected()
	emit_signal("show_no_card")
	pass # Replace with function body.
