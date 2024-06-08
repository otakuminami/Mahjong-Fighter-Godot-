extends Control

var blink_duration := 0.5
var blink_timer := 0.0
var jump_duration := 1
var blink_timer2 := 0.0
func _ready():
	$continue.visible = false
 
	
	
func _process(delta):
	blink_timer += delta
	blink_timer2 += delta
	$icon.position.y = $icon.position.y -0.09
	$cloud.position.y = $cloud.position.y -0.09
	
	if blink_timer >= blink_duration:
		blink_timer = 0.0
		$continue.set("visible",!$continue.visible)
		
	if blink_timer2 >= jump_duration:
		blink_timer2 = 0.0
		$icon.position.y = 189.5882
		$cloud.position.y = 359.187530517578

