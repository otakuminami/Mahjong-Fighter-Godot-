extends Node2D

var blink_duration := 0.5
var blink_timer := 0.0
var jump_duration := 1
var blink_timer2 := 0.0

func _ready():
	print($icon.position.y)
	print($cloud.position.y)
	pass


func _process(delta):

	blink_timer += delta
	blink_timer2 += delta
	$icon.position.y = $icon.position.y -0.09
	$cloud.position.y = $cloud.position.y -0.09


	if blink_timer >= blink_duration:
		blink_timer = 0.0
		$Label2.set("visible",!$Label2.visible)
		
	if blink_timer2 >= jump_duration:
		blink_timer2 = 0.0
		$icon.position.y = 122
		$cloud.position.y = 283

	if Input.is_action_pressed("accept"):
		SceneChanger.change_scene("res://Battle/battle.tscn")


func _on_area_2d_body_entered(_body):
	print("laile")
	$go.play("click")
	$Label3.set("visible",!$Label3.visible)
	$Label.set("visible",!$Label.visible)
	$Label4.set("visible",!$Label4.visible)
	



func _on_area_2d_body_exited(_body):
	print("zoule")
	$go.play("default")
	$Label3.set("visible",!$Label3.visible)
	$Label.set("visible",!$Label.visible)
	$Label4.set("visible",!$Label4.visible)
