extends Node2D


var selected = false
var mouse_offset
var item_name

# Called when the node enters the scene tree for the first time.
func _ready():
	item_name = "SnowFlower"
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _process(delta):
	if selected:
		followMouse()


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		Global.emit_signal("click_sfx")
		PlayerInventory.add_item("SnowFlower")
		queue_free()

		

func followMouse():
	position = get_global_mouse_position() + mouse_offset


#if event.pressed:
			#mouse_offset = position - get_global_mouse_position()
			#selected = true
		#else:
			#selected = false
