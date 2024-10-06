extends Node3D

var speed = 10
var target_position

@onready var camera_inner = get_node("CameraInner")
@onready var camera_outer = get_node("CameraOuter")
@onready var camera_wide = get_tree().get_root().get_node("MainScene").get_node("CameraWide")

func _process(delta):
	if target_position == null:
		return
	
	global_position = global_position.move_toward(target_position, delta * speed)
	if(target_position==global_position):
		return
	look_at(target_position)

func _on_area_3d_area_entered(area):
	if target_position == null:
		return
	if(global_position.distance_to(target_position) < 5):
		target_position = null

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_V:
			change_view()

func _on_change_view_button_pressed():
	change_view()

func change_view():
	if camera_inner.is_current():
		camera_outer.make_current()
	elif camera_outer.is_current():
		camera_wide.make_current()
	else:
		camera_inner.make_current()
