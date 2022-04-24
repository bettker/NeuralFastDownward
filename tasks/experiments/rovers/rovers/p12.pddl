(define (problem roverprob3726) (:domain rover)
(:objects
	general - lander
	colour high_res low_res - mode
	rover0 rover1 - rover
	rover0store rover1store - store
	waypoint0 waypoint1 waypoint2 waypoint3 - waypoint
	camera0 camera1 - camera
	objective0 objective1 - objective
	)
(:init
	(at rover0 waypoint3)
	(at rover1 waypoint3)
	(calibrated camera0 rover0)
	(communicated_image_data objective0 colour)
	(communicated_image_data objective0 low_res)
	(communicated_image_data objective1 colour)
	(communicated_image_data objective1 low_res)
	(communicated_rock_data waypoint0)
	(communicated_rock_data waypoint2)
	(communicated_soil_data waypoint2)
	(communicated_soil_data waypoint3)
	(empty rover0store)
	(empty rover1store)
	(have_image rover0 objective0 low_res)
	(have_image rover0 objective1 low_res)
	(have_image rover1 objective0 colour)
	(have_image rover1 objective0 low_res)
	(have_image rover1 objective1 colour)
	(have_rock_analysis rover0 waypoint0)
	(have_rock_analysis rover0 waypoint2)
	(have_soil_analysis rover1 waypoint2)
	(have_soil_analysis rover1 waypoint3)
	(visible waypoint0 waypoint1)
	(visible waypoint1 waypoint0)
	(visible waypoint0 waypoint3)
	(visible waypoint3 waypoint0)
	(visible waypoint1 waypoint2)
	(visible waypoint2 waypoint1)
	(visible waypoint2 waypoint0)
	(visible waypoint0 waypoint2)
	(visible waypoint3 waypoint2)
	(visible waypoint2 waypoint3)
	(visible waypoint1 waypoint3)
	(visible waypoint3 waypoint1)
	(at_lander general waypoint1)
	(channel_free general)
	(available rover0)
	(store_of rover0store rover0)
	(equipped_for_soil_analysis rover0)
	(equipped_for_rock_analysis rover0)
	(equipped_for_imaging rover0)
	(can_traverse rover0 waypoint2 waypoint0)
	(can_traverse rover0 waypoint0 waypoint2)
	(can_traverse rover0 waypoint1 waypoint3)
	(can_traverse rover0 waypoint3 waypoint1)
	(can_traverse rover0 waypoint0 waypoint3)
	(can_traverse rover0 waypoint3 waypoint0)
	(available rover1)
	(store_of rover1store rover1)
	(equipped_for_soil_analysis rover1)
	(equipped_for_imaging rover1)
	(can_traverse rover1 waypoint3 waypoint0)
	(can_traverse rover1 waypoint0 waypoint3)
	(can_traverse rover1 waypoint3 waypoint2)
	(can_traverse rover1 waypoint2 waypoint3)
	(can_traverse rover1 waypoint0 waypoint1)
	(can_traverse rover1 waypoint1 waypoint0)
	(on_board camera0 rover0)
	(calibration_target camera0 objective1)
	(supports camera0 low_res)
	(on_board camera1 rover1)
	(calibration_target camera1 objective0)
	(supports camera1 colour)
	(supports camera1 low_res)
	(visible_from objective0 waypoint0)
	(visible_from objective0 waypoint1)
	(visible_from objective1 waypoint0)
	(visible_from objective1 waypoint1)
)

(:goal (and
(communicated_rock_data waypoint0)
(communicated_rock_data waypoint2)
(communicated_soil_data waypoint2)
(communicated_image_data objective0 colour)
(communicated_image_data objective1 low_res)
	)
)
)

