extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.connect("show",self,"show")



func _on_Menu2_pressed():
	$CanvasLayer/Menu.show()


func _on_Restart_pressed():
	PlayerInventory.inventory = {}
	Global.emit_signal("picked")
	get_tree().change_scene("res://scene/MainMenu.tscn")


func show():
	$CanvasLayer/Menu.hide()
