
extends Area2D

#var control = null

func _ready():
	#control = get_node("res://Scenes/card_ui.gd")
	#control = $CardPileUI/Pile/CardUI
	#control = $Prepare/CardPileUI/Pile
	#control = get_node("Prepare/CardPileUI/Pile")
	
	#print(control)
	var nodeA = get_tree().get_root().get_node("CardPileUI/Pile")
	#var nodeA = get_tree().get_root().get_node("Sprite2D2")
	#var nodeA = get_node("CardPileUI/Pile")
	if nodeA != null:
		print("找到节点")
	else:
		print("无法找到节点A")



func _input(event):
	#if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.is_pressed():
		#control.visible = !true
		#print(control.visible)
	pass
