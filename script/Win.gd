extends Control




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.





func _on_Restart_pressed():
	$click.play()
	PlayerInventory.inventory = {}
	Global.emit_signal("picked")
	get_tree().change_scene("res://scene/MainMenu.tscn")
