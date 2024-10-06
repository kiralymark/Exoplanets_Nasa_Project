extends Node3D

@onready var space_ship = get_tree().get_root().get_node("MainScene").get_node("SpaceShip")
@onready var description_label = get_tree().get_root().get_node("MainScene").get_node("DescriptionLabel")

func _on_area_3d_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed == true:
			set_spaseship_target_position()

func _on_cancri_e_button_pressed():
	set_spaseship_target_position()

func _on_j_1407b_2_button_pressed():
	set_spaseship_target_position()

func _on_kepler_93b_button_pressed():
	set_spaseship_target_position()

func _on_toi_1231b_pressed():
	set_spaseship_target_position()

func _on_wisep_j_121756_91162640_2_a_3_pressed():
	set_spaseship_target_position()

func set_spaseship_target_position():
	space_ship.target_position = global_position
	
	match name:
		"55_Cancri_e":
			show_55_Cancri_e()
		"J1407B":
			show_J1407B()
		"Kepler_93_b":
			show_Kepler_93_b()
		"TOI-1231_b":
			show_TOI_1231_b()
		"WISEP_J121756_91+162640_2_A2":
			show_WISEP_J121756_91_162640_2_A2()
	
func show_55_Cancri_e():
	description_label.text = "Distance from Earth: 41 light-years\nMass: 7.99x heavier than Earth\nType: Super-Earth\nDate of discovery: 2004"

func show_J1407B():
	description_label.text = "Distance from Earth: 433.8 light-years\nMass:  10-40x heavier than Jupiter\nType: Gas Giant\nDate of discovery: 2012"
	
func show_Kepler_93_b():
	description_label.text = "Distance from Earth:  90 light-years\nMass:  4.66x heavier than Earth\nType: Super-Earth\nDate of discovery: 2014"
	
func show_TOI_1231_b():
	description_label.text = "Distance from Earth: 33 light-years\nMass: 15.4x heavier than Earth\nType: Neptunian\nDate of discovery: 2021"
	
func show_WISEP_J121756_91_162640_2_A2():
	description_label.text = "Distance from Earth: 33 light-years\nMass: unkwown\nType: T-type star\nDate of discovery: 2011"
