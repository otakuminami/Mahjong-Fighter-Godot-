extends Node2D


#var kiss:String = "12"
var level_number: String = "1"
@onready var n
 #= global(nodeA)
func _ready():
	$level.text = "第 " + level_number + " 场战斗"
	#n = $global.node
	print(n)
	#Global.nodeA = $CardPileUI/Pile/CardUI
	
	
	pass
 	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
		
	#
	
	pass
	
	



func _on_card_ui_show_card():
	print("show")
	$CardUI.visible = !$CardUI.visible
	pass # Replace with function body.



func _on_card_ui_show_no_card():
	print("no_show")
	$CardUI.visible = !$CardUI.visible
	pass # Replace with function body.


func _on_go_fight_go():
	SceneChanger.change_scene("res://Battle/battle.tscn")
	pass # Replace with function body.






func _on_button_1_pressed():
	$CardPileUI/Pile/CardUI/State.text = "OK"
	pass # Replace with function body.


func _on_button_2_pressed():
	$CardPileUI/Pile/CardUI2/State.text = "OK"
	pass # Replace with function body.


func _on_button_3_pressed():
	$CardPileUI/Pile/CardUI3/State.text = "OK"
	pass # Replace with function body.
