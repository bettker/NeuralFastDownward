(define (problem roverprob1243) (:domain rover)
(:objects
	general - lander
	colour high_res low_res - mode
	rover0 rover1 rover2 rover3 rover4 rover5 - rover
	rover0store rover1store rover2store rover3store rover4store rover5store - store
	waypoint0 waypoint1 waypoint2 waypoint3 waypoint4 waypoint5 waypoint6 waypoint7 waypoint8 waypoint9 waypoint10 waypoint11 waypoint12 waypoint13 waypoint14 waypoint15 waypoint16 waypoint17 waypoint18 waypoint19 waypoint20 waypoint21 waypoint22 waypoint23 waypoint24 waypoint25 waypoint26 waypoint27 waypoint28 waypoint29 waypoint30 waypoint31 waypoint32 waypoint33 waypoint34 - waypoint
	camera0 camera1 camera2 camera3 camera4 camera5 camera6 camera7 camera8 - camera
	objective0 objective1 objective2 objective3 objective4 objective5 objective6 objective7 - objective
	)
		(:init
		(at rover0 waypoint19)
		(at rover1 waypoint3)
		(at rover2 waypoint13)
		(at rover3 waypoint0)
		(at rover4 waypoint11)
		(at rover5 waypoint8)
		(at_rock_sample waypoint0)
		(at_rock_sample waypoint11)
		(at_rock_sample waypoint15)
		(at_rock_sample waypoint16)
		(at_rock_sample waypoint20)
		(at_rock_sample waypoint24)
		(at_rock_sample waypoint28)
		(at_rock_sample waypoint30)
		(at_rock_sample waypoint33)
		(at_rock_sample waypoint34)
		(at_rock_sample waypoint7)
		(at_rock_sample waypoint8)
		(at_rock_sample waypoint9)
		(at_soil_sample waypoint10)
		(at_soil_sample waypoint12)
		(at_soil_sample waypoint15)
		(at_soil_sample waypoint16)
		(at_soil_sample waypoint18)
		(at_soil_sample waypoint22)
		(at_soil_sample waypoint25)
		(at_soil_sample waypoint26)
		(at_soil_sample waypoint27)
		(at_soil_sample waypoint29)
		(at_soil_sample waypoint34)
		(at_soil_sample waypoint5)
		(at_soil_sample waypoint6)
		(at_soil_sample waypoint7)
		(communicated_image_data objective3 high_res)
		(communicated_image_data objective4 high_res)
		(communicated_soil_data waypoint14)
		(empty rover0store)
		(empty rover1store)
		(empty rover2store)
		(empty rover3store)
		(empty rover4store)
		(empty rover5store)
		(have_image rover1 objective3 high_res)
		(have_image rover1 objective4 high_res)
		(have_image rover2 objective4 high_res)
		(have_image rover2 objective7 colour)
		(have_image rover5 objective3 high_res)
		(have_rock_analysis rover2 waypoint13)
		(have_rock_analysis rover4 waypoint27)
		(have_rock_analysis rover4 waypoint6)
		(have_soil_analysis rover0 waypoint19)
		(have_soil_analysis rover2 waypoint14)
		(have_soil_analysis rover3 waypoint0)
		(have_soil_analysis rover5 waypoint23)
		(have_soil_analysis rover5 waypoint8)
		(visible waypoint0 waypoint1)
		(visible waypoint1 waypoint0)
		(visible waypoint0 waypoint6)
		(visible waypoint6 waypoint0)
		(visible waypoint0 waypoint10)
		(visible waypoint10 waypoint0)
		(visible waypoint0 waypoint23)
		(visible waypoint23 waypoint0)
		(visible waypoint0 waypoint29)
		(visible waypoint29 waypoint0)
		(visible waypoint0 waypoint31)
		(visible waypoint31 waypoint0)
		(visible waypoint1 waypoint6)
		(visible waypoint6 waypoint1)
		(visible waypoint1 waypoint7)
		(visible waypoint7 waypoint1)
		(visible waypoint1 waypoint17)
		(visible waypoint17 waypoint1)
		(visible waypoint1 waypoint22)
		(visible waypoint22 waypoint1)
		(visible waypoint2 waypoint0)
		(visible waypoint0 waypoint2)
		(visible waypoint2 waypoint17)
		(visible waypoint17 waypoint2)
		(visible waypoint2 waypoint19)
		(visible waypoint19 waypoint2)
		(visible waypoint2 waypoint29)
		(visible waypoint29 waypoint2)
		(visible waypoint2 waypoint30)
		(visible waypoint30 waypoint2)
		(visible waypoint3 waypoint9)
		(visible waypoint9 waypoint3)
		(visible waypoint3 waypoint23)
		(visible waypoint23 waypoint3)
		(visible waypoint3 waypoint27)
		(visible waypoint27 waypoint3)
		(visible waypoint4 waypoint5)
		(visible waypoint5 waypoint4)
		(visible waypoint4 waypoint13)
		(visible waypoint13 waypoint4)
		(visible waypoint4 waypoint27)
		(visible waypoint27 waypoint4)
		(visible waypoint4 waypoint30)
		(visible waypoint30 waypoint4)
		(visible waypoint5 waypoint10)
		(visible waypoint10 waypoint5)
		(visible waypoint5 waypoint24)
		(visible waypoint24 waypoint5)
		(visible waypoint5 waypoint31)
		(visible waypoint31 waypoint5)
		(visible waypoint5 waypoint32)
		(visible waypoint32 waypoint5)
		(visible waypoint6 waypoint5)
		(visible waypoint5 waypoint6)
		(visible waypoint6 waypoint7)
		(visible waypoint7 waypoint6)
		(visible waypoint6 waypoint8)
		(visible waypoint8 waypoint6)
		(visible waypoint6 waypoint17)
		(visible waypoint17 waypoint6)
		(visible waypoint6 waypoint22)
		(visible waypoint22 waypoint6)
		(visible waypoint6 waypoint25)
		(visible waypoint25 waypoint6)
		(visible waypoint6 waypoint27)
		(visible waypoint27 waypoint6)
		(visible waypoint7 waypoint5)
		(visible waypoint5 waypoint7)
		(visible waypoint7 waypoint13)
		(visible waypoint13 waypoint7)
		(visible waypoint7 waypoint16)
		(visible waypoint16 waypoint7)
		(visible waypoint7 waypoint18)
		(visible waypoint18 waypoint7)
		(visible waypoint7 waypoint24)
		(visible waypoint24 waypoint7)
		(visible waypoint7 waypoint25)
		(visible waypoint25 waypoint7)
		(visible waypoint8 waypoint7)
		(visible waypoint7 waypoint8)
		(visible waypoint8 waypoint27)
		(visible waypoint27 waypoint8)
		(visible waypoint8 waypoint30)
		(visible waypoint30 waypoint8)
		(visible waypoint8 waypoint31)
		(visible waypoint31 waypoint8)
		(visible waypoint9 waypoint11)
		(visible waypoint11 waypoint9)
		(visible waypoint9 waypoint12)
		(visible waypoint12 waypoint9)
		(visible waypoint9 waypoint31)
		(visible waypoint31 waypoint9)
		(visible waypoint10 waypoint8)
		(visible waypoint8 waypoint10)
		(visible waypoint10 waypoint25)
		(visible waypoint25 waypoint10)
		(visible waypoint10 waypoint34)
		(visible waypoint34 waypoint10)
		(visible waypoint11 waypoint13)
		(visible waypoint13 waypoint11)
		(visible waypoint11 waypoint17)
		(visible waypoint17 waypoint11)
		(visible waypoint11 waypoint28)
		(visible waypoint28 waypoint11)
		(visible waypoint11 waypoint33)
		(visible waypoint33 waypoint11)
		(visible waypoint12 waypoint5)
		(visible waypoint5 waypoint12)
		(visible waypoint12 waypoint8)
		(visible waypoint8 waypoint12)
		(visible waypoint12 waypoint10)
		(visible waypoint10 waypoint12)
		(visible waypoint12 waypoint16)
		(visible waypoint16 waypoint12)
		(visible waypoint12 waypoint21)
		(visible waypoint21 waypoint12)
		(visible waypoint12 waypoint33)
		(visible waypoint33 waypoint12)
		(visible waypoint13 waypoint2)
		(visible waypoint2 waypoint13)
		(visible waypoint13 waypoint15)
		(visible waypoint15 waypoint13)
		(visible waypoint13 waypoint16)
		(visible waypoint16 waypoint13)
		(visible waypoint13 waypoint17)
		(visible waypoint17 waypoint13)
		(visible waypoint13 waypoint23)
		(visible waypoint23 waypoint13)
		(visible waypoint14 waypoint4)
		(visible waypoint4 waypoint14)
		(visible waypoint14 waypoint25)
		(visible waypoint25 waypoint14)
		(visible waypoint14 waypoint32)
		(visible waypoint32 waypoint14)
		(visible waypoint15 waypoint4)
		(visible waypoint4 waypoint15)
		(visible waypoint15 waypoint6)
		(visible waypoint6 waypoint15)
		(visible waypoint15 waypoint10)
		(visible waypoint10 waypoint15)
		(visible waypoint15 waypoint21)
		(visible waypoint21 waypoint15)
		(visible waypoint15 waypoint30)
		(visible waypoint30 waypoint15)
		(visible waypoint15 waypoint32)
		(visible waypoint32 waypoint15)
		(visible waypoint16 waypoint0)
		(visible waypoint0 waypoint16)
		(visible waypoint16 waypoint23)
		(visible waypoint23 waypoint16)
		(visible waypoint16 waypoint33)
		(visible waypoint33 waypoint16)
		(visible waypoint17 waypoint3)
		(visible waypoint3 waypoint17)
		(visible waypoint17 waypoint5)
		(visible waypoint5 waypoint17)
		(visible waypoint17 waypoint9)
		(visible waypoint9 waypoint17)
		(visible waypoint17 waypoint21)
		(visible waypoint21 waypoint17)
		(visible waypoint18 waypoint26)
		(visible waypoint26 waypoint18)
		(visible waypoint18 waypoint30)
		(visible waypoint30 waypoint18)
		(visible waypoint18 waypoint33)
		(visible waypoint33 waypoint18)
		(visible waypoint19 waypoint1)
		(visible waypoint1 waypoint19)
		(visible waypoint19 waypoint10)
		(visible waypoint10 waypoint19)
		(visible waypoint19 waypoint15)
		(visible waypoint15 waypoint19)
		(visible waypoint19 waypoint28)
		(visible waypoint28 waypoint19)
		(visible waypoint19 waypoint33)
		(visible waypoint33 waypoint19)
		(visible waypoint20 waypoint1)
		(visible waypoint1 waypoint20)
		(visible waypoint20 waypoint10)
		(visible waypoint10 waypoint20)
		(visible waypoint20 waypoint12)
		(visible waypoint12 waypoint20)
		(visible waypoint20 waypoint18)
		(visible waypoint18 waypoint20)
		(visible waypoint20 waypoint26)
		(visible waypoint26 waypoint20)
		(visible waypoint20 waypoint31)
		(visible waypoint31 waypoint20)
		(visible waypoint21 waypoint4)
		(visible waypoint4 waypoint21)
		(visible waypoint21 waypoint20)
		(visible waypoint20 waypoint21)
		(visible waypoint21 waypoint28)
		(visible waypoint28 waypoint21)
		(visible waypoint22 waypoint3)
		(visible waypoint3 waypoint22)
		(visible waypoint22 waypoint25)
		(visible waypoint25 waypoint22)
		(visible waypoint22 waypoint33)
		(visible waypoint33 waypoint22)
		(visible waypoint23 waypoint2)
		(visible waypoint2 waypoint23)
		(visible waypoint23 waypoint7)
		(visible waypoint7 waypoint23)
		(visible waypoint23 waypoint10)
		(visible waypoint10 waypoint23)
		(visible waypoint23 waypoint14)
		(visible waypoint14 waypoint23)
		(visible waypoint23 waypoint30)
		(visible waypoint30 waypoint23)
		(visible waypoint23 waypoint32)
		(visible waypoint32 waypoint23)
		(visible waypoint24 waypoint3)
		(visible waypoint3 waypoint24)
		(visible waypoint24 waypoint18)
		(visible waypoint18 waypoint24)
		(visible waypoint24 waypoint22)
		(visible waypoint22 waypoint24)
		(visible waypoint25 waypoint0)
		(visible waypoint0 waypoint25)
		(visible waypoint25 waypoint3)
		(visible waypoint3 waypoint25)
		(visible waypoint25 waypoint9)
		(visible waypoint9 waypoint25)
		(visible waypoint25 waypoint11)
		(visible waypoint11 waypoint25)
		(visible waypoint25 waypoint16)
		(visible waypoint16 waypoint25)
		(visible waypoint25 waypoint24)
		(visible waypoint24 waypoint25)
		(visible waypoint25 waypoint33)
		(visible waypoint33 waypoint25)
		(visible waypoint26 waypoint1)
		(visible waypoint1 waypoint26)
		(visible waypoint26 waypoint22)
		(visible waypoint22 waypoint26)
		(visible waypoint26 waypoint34)
		(visible waypoint34 waypoint26)
		(visible waypoint27 waypoint11)
		(visible waypoint11 waypoint27)
		(visible waypoint27 waypoint14)
		(visible waypoint14 waypoint27)
		(visible waypoint27 waypoint20)
		(visible waypoint20 waypoint27)
		(visible waypoint27 waypoint21)
		(visible waypoint21 waypoint27)
		(visible waypoint28 waypoint1)
		(visible waypoint1 waypoint28)
		(visible waypoint28 waypoint14)
		(visible waypoint14 waypoint28)
		(visible waypoint29 waypoint24)
		(visible waypoint24 waypoint29)
		(visible waypoint29 waypoint28)
		(visible waypoint28 waypoint29)
		(visible waypoint30 waypoint3)
		(visible waypoint3 waypoint30)
		(visible waypoint30 waypoint17)
		(visible waypoint17 waypoint30)
		(visible waypoint30 waypoint21)
		(visible waypoint21 waypoint30)
		(visible waypoint30 waypoint24)
		(visible waypoint24 waypoint30)
		(visible waypoint30 waypoint27)
		(visible waypoint27 waypoint30)
		(visible waypoint31 waypoint2)
		(visible waypoint2 waypoint31)
		(visible waypoint31 waypoint13)
		(visible waypoint13 waypoint31)
		(visible waypoint31 waypoint14)
		(visible waypoint14 waypoint31)
		(visible waypoint31 waypoint27)
		(visible waypoint27 waypoint31)
		(visible waypoint32 waypoint3)
		(visible waypoint3 waypoint32)
		(visible waypoint32 waypoint4)
		(visible waypoint4 waypoint32)
		(visible waypoint32 waypoint8)
		(visible waypoint8 waypoint32)
		(visible waypoint32 waypoint10)
		(visible waypoint10 waypoint32)
		(visible waypoint32 waypoint11)
		(visible waypoint11 waypoint32)
		(visible waypoint32 waypoint13)
		(visible waypoint13 waypoint32)
		(visible waypoint32 waypoint21)
		(visible waypoint21 waypoint32)
		(visible waypoint32 waypoint25)
		(visible waypoint25 waypoint32)
		(visible waypoint32 waypoint34)
		(visible waypoint34 waypoint32)
		(visible waypoint33 waypoint34)
		(visible waypoint34 waypoint33)
		(visible waypoint34 waypoint13)
		(visible waypoint13 waypoint34)
		(visible waypoint34 waypoint19)
		(visible waypoint19 waypoint34)
		(visible waypoint34 waypoint25)
		(visible waypoint25 waypoint34)
		(visible waypoint34 waypoint30)
		(visible waypoint30 waypoint34)
		(at_lander general waypoint31)
		(channel_free general)
		(available rover0)
		(store_of rover0store rover0)
		(equipped_for_soil_analysis rover0)
		(equipped_for_imaging rover0)
		(can_traverse rover0 waypoint9 waypoint3)
		(can_traverse rover0 waypoint3 waypoint9)
		(can_traverse rover0 waypoint9 waypoint11)
		(can_traverse rover0 waypoint11 waypoint9)
		(can_traverse rover0 waypoint9 waypoint25)
		(can_traverse rover0 waypoint25 waypoint9)
		(can_traverse rover0 waypoint3 waypoint17)
		(can_traverse rover0 waypoint17 waypoint3)
		(can_traverse rover0 waypoint3 waypoint27)
		(can_traverse rover0 waypoint27 waypoint3)
		(can_traverse rover0 waypoint3 waypoint30)
		(can_traverse rover0 waypoint30 waypoint3)
		(can_traverse rover0 waypoint3 waypoint32)
		(can_traverse rover0 waypoint32 waypoint3)
		(can_traverse rover0 waypoint11 waypoint13)
		(can_traverse rover0 waypoint13 waypoint11)
		(can_traverse rover0 waypoint11 waypoint33)
		(can_traverse rover0 waypoint33 waypoint11)
		(can_traverse rover0 waypoint25 waypoint0)
		(can_traverse rover0 waypoint0 waypoint25)
		(can_traverse rover0 waypoint25 waypoint6)
		(can_traverse rover0 waypoint6 waypoint25)
		(can_traverse rover0 waypoint25 waypoint10)
		(can_traverse rover0 waypoint10 waypoint25)
		(can_traverse rover0 waypoint25 waypoint14)
		(can_traverse rover0 waypoint14 waypoint25)
		(can_traverse rover0 waypoint25 waypoint16)
		(can_traverse rover0 waypoint16 waypoint25)
		(can_traverse rover0 waypoint25 waypoint24)
		(can_traverse rover0 waypoint24 waypoint25)
		(can_traverse rover0 waypoint17 waypoint1)
		(can_traverse rover0 waypoint1 waypoint17)
		(can_traverse rover0 waypoint17 waypoint5)
		(can_traverse rover0 waypoint5 waypoint17)
		(can_traverse rover0 waypoint17 waypoint21)
		(can_traverse rover0 waypoint21 waypoint17)
		(can_traverse rover0 waypoint27 waypoint4)
		(can_traverse rover0 waypoint4 waypoint27)
		(can_traverse rover0 waypoint27 waypoint20)
		(can_traverse rover0 waypoint20 waypoint27)
		(can_traverse rover0 waypoint27 waypoint31)
		(can_traverse rover0 waypoint31 waypoint27)
		(can_traverse rover0 waypoint30 waypoint2)
		(can_traverse rover0 waypoint2 waypoint30)
		(can_traverse rover0 waypoint30 waypoint8)
		(can_traverse rover0 waypoint8 waypoint30)
		(can_traverse rover0 waypoint30 waypoint15)
		(can_traverse rover0 waypoint15 waypoint30)
		(can_traverse rover0 waypoint30 waypoint18)
		(can_traverse rover0 waypoint18 waypoint30)
		(can_traverse rover0 waypoint30 waypoint23)
		(can_traverse rover0 waypoint23 waypoint30)
		(can_traverse rover0 waypoint30 waypoint34)
		(can_traverse rover0 waypoint34 waypoint30)
		(can_traverse rover0 waypoint13 waypoint7)
		(can_traverse rover0 waypoint7 waypoint13)
		(can_traverse rover0 waypoint33 waypoint12)
		(can_traverse rover0 waypoint12 waypoint33)
		(can_traverse rover0 waypoint33 waypoint19)
		(can_traverse rover0 waypoint19 waypoint33)
		(can_traverse rover0 waypoint33 waypoint22)
		(can_traverse rover0 waypoint22 waypoint33)
		(can_traverse rover0 waypoint0 waypoint29)
		(can_traverse rover0 waypoint29 waypoint0)
		(can_traverse rover0 waypoint14 waypoint28)
		(can_traverse rover0 waypoint28 waypoint14)
		(can_traverse rover0 waypoint1 waypoint26)
		(can_traverse rover0 waypoint26 waypoint1)
		(available rover1)
		(store_of rover1store rover1)
		(equipped_for_soil_analysis rover1)
		(equipped_for_imaging rover1)
		(can_traverse rover1 waypoint20 waypoint1)
		(can_traverse rover1 waypoint1 waypoint20)
		(can_traverse rover1 waypoint20 waypoint10)
		(can_traverse rover1 waypoint10 waypoint20)
		(can_traverse rover1 waypoint20 waypoint12)
		(can_traverse rover1 waypoint12 waypoint20)
		(can_traverse rover1 waypoint20 waypoint18)
		(can_traverse rover1 waypoint18 waypoint20)
		(can_traverse rover1 waypoint20 waypoint26)
		(can_traverse rover1 waypoint26 waypoint20)
		(can_traverse rover1 waypoint20 waypoint27)
		(can_traverse rover1 waypoint27 waypoint20)
		(can_traverse rover1 waypoint20 waypoint31)
		(can_traverse rover1 waypoint31 waypoint20)
		(can_traverse rover1 waypoint1 waypoint0)
		(can_traverse rover1 waypoint0 waypoint1)
		(can_traverse rover1 waypoint1 waypoint22)
		(can_traverse rover1 waypoint22 waypoint1)
		(can_traverse rover1 waypoint1 waypoint28)
		(can_traverse rover1 waypoint28 waypoint1)
		(can_traverse rover1 waypoint10 waypoint5)
		(can_traverse rover1 waypoint5 waypoint10)
		(can_traverse rover1 waypoint10 waypoint8)
		(can_traverse rover1 waypoint8 waypoint10)
		(can_traverse rover1 waypoint10 waypoint15)
		(can_traverse rover1 waypoint15 waypoint10)
		(can_traverse rover1 waypoint10 waypoint19)
		(can_traverse rover1 waypoint19 waypoint10)
		(can_traverse rover1 waypoint10 waypoint25)
		(can_traverse rover1 waypoint25 waypoint10)
		(can_traverse rover1 waypoint10 waypoint32)
		(can_traverse rover1 waypoint32 waypoint10)
		(can_traverse rover1 waypoint12 waypoint9)
		(can_traverse rover1 waypoint9 waypoint12)
		(can_traverse rover1 waypoint12 waypoint16)
		(can_traverse rover1 waypoint16 waypoint12)
		(can_traverse rover1 waypoint12 waypoint21)
		(can_traverse rover1 waypoint21 waypoint12)
		(can_traverse rover1 waypoint12 waypoint33)
		(can_traverse rover1 waypoint33 waypoint12)
		(can_traverse rover1 waypoint18 waypoint7)
		(can_traverse rover1 waypoint7 waypoint18)
		(can_traverse rover1 waypoint18 waypoint30)
		(can_traverse rover1 waypoint30 waypoint18)
		(can_traverse rover1 waypoint26 waypoint34)
		(can_traverse rover1 waypoint34 waypoint26)
		(can_traverse rover1 waypoint27 waypoint3)
		(can_traverse rover1 waypoint3 waypoint27)
		(can_traverse rover1 waypoint27 waypoint4)
		(can_traverse rover1 waypoint4 waypoint27)
		(can_traverse rover1 waypoint27 waypoint11)
		(can_traverse rover1 waypoint11 waypoint27)
		(can_traverse rover1 waypoint27 waypoint14)
		(can_traverse rover1 waypoint14 waypoint27)
		(can_traverse rover1 waypoint31 waypoint2)
		(can_traverse rover1 waypoint2 waypoint31)
		(can_traverse rover1 waypoint31 waypoint13)
		(can_traverse rover1 waypoint13 waypoint31)
		(can_traverse rover1 waypoint0 waypoint6)
		(can_traverse rover1 waypoint6 waypoint0)
		(can_traverse rover1 waypoint0 waypoint23)
		(can_traverse rover1 waypoint23 waypoint0)
		(can_traverse rover1 waypoint0 waypoint29)
		(can_traverse rover1 waypoint29 waypoint0)
		(can_traverse rover1 waypoint22 waypoint24)
		(can_traverse rover1 waypoint24 waypoint22)
		(can_traverse rover1 waypoint5 waypoint17)
		(can_traverse rover1 waypoint17 waypoint5)
		(available rover2)
		(store_of rover2store rover2)
		(equipped_for_soil_analysis rover2)
		(equipped_for_rock_analysis rover2)
		(equipped_for_imaging rover2)
		(can_traverse rover2 waypoint31 waypoint0)
		(can_traverse rover2 waypoint0 waypoint31)
		(can_traverse rover2 waypoint31 waypoint5)
		(can_traverse rover2 waypoint5 waypoint31)
		(can_traverse rover2 waypoint31 waypoint8)
		(can_traverse rover2 waypoint8 waypoint31)
		(can_traverse rover2 waypoint31 waypoint9)
		(can_traverse rover2 waypoint9 waypoint31)
		(can_traverse rover2 waypoint31 waypoint14)
		(can_traverse rover2 waypoint14 waypoint31)
		(can_traverse rover2 waypoint31 waypoint20)
		(can_traverse rover2 waypoint20 waypoint31)
		(can_traverse rover2 waypoint31 waypoint27)
		(can_traverse rover2 waypoint27 waypoint31)
		(can_traverse rover2 waypoint0 waypoint1)
		(can_traverse rover2 waypoint1 waypoint0)
		(can_traverse rover2 waypoint0 waypoint2)
		(can_traverse rover2 waypoint2 waypoint0)
		(can_traverse rover2 waypoint0 waypoint6)
		(can_traverse rover2 waypoint6 waypoint0)
		(can_traverse rover2 waypoint0 waypoint10)
		(can_traverse rover2 waypoint10 waypoint0)
		(can_traverse rover2 waypoint0 waypoint16)
		(can_traverse rover2 waypoint16 waypoint0)
		(can_traverse rover2 waypoint0 waypoint25)
		(can_traverse rover2 waypoint25 waypoint0)
		(can_traverse rover2 waypoint0 waypoint29)
		(can_traverse rover2 waypoint29 waypoint0)
		(can_traverse rover2 waypoint5 waypoint4)
		(can_traverse rover2 waypoint4 waypoint5)
		(can_traverse rover2 waypoint5 waypoint7)
		(can_traverse rover2 waypoint7 waypoint5)
		(can_traverse rover2 waypoint5 waypoint12)
		(can_traverse rover2 waypoint12 waypoint5)
		(can_traverse rover2 waypoint5 waypoint32)
		(can_traverse rover2 waypoint32 waypoint5)
		(can_traverse rover2 waypoint8 waypoint30)
		(can_traverse rover2 waypoint30 waypoint8)
		(can_traverse rover2 waypoint14 waypoint23)
		(can_traverse rover2 waypoint23 waypoint14)
		(can_traverse rover2 waypoint20 waypoint18)
		(can_traverse rover2 waypoint18 waypoint20)
		(can_traverse rover2 waypoint20 waypoint21)
		(can_traverse rover2 waypoint21 waypoint20)
		(can_traverse rover2 waypoint20 waypoint26)
		(can_traverse rover2 waypoint26 waypoint20)
		(can_traverse rover2 waypoint27 waypoint3)
		(can_traverse rover2 waypoint3 waypoint27)
		(can_traverse rover2 waypoint27 waypoint11)
		(can_traverse rover2 waypoint11 waypoint27)
		(can_traverse rover2 waypoint1 waypoint17)
		(can_traverse rover2 waypoint17 waypoint1)
		(can_traverse rover2 waypoint1 waypoint19)
		(can_traverse rover2 waypoint19 waypoint1)
		(can_traverse rover2 waypoint1 waypoint22)
		(can_traverse rover2 waypoint22 waypoint1)
		(can_traverse rover2 waypoint1 waypoint28)
		(can_traverse rover2 waypoint28 waypoint1)
		(can_traverse rover2 waypoint2 waypoint13)
		(can_traverse rover2 waypoint13 waypoint2)
		(can_traverse rover2 waypoint10 waypoint34)
		(can_traverse rover2 waypoint34 waypoint10)
		(can_traverse rover2 waypoint16 waypoint33)
		(can_traverse rover2 waypoint33 waypoint16)
		(can_traverse rover2 waypoint25 waypoint24)
		(can_traverse rover2 waypoint24 waypoint25)
		(can_traverse rover2 waypoint4 waypoint15)
		(can_traverse rover2 waypoint15 waypoint4)
		(available rover3)
		(store_of rover3store rover3)
		(equipped_for_soil_analysis rover3)
		(equipped_for_rock_analysis rover3)
		(equipped_for_imaging rover3)
		(can_traverse rover3 waypoint25 waypoint0)
		(can_traverse rover3 waypoint0 waypoint25)
		(can_traverse rover3 waypoint25 waypoint3)
		(can_traverse rover3 waypoint3 waypoint25)
		(can_traverse rover3 waypoint25 waypoint7)
		(can_traverse rover3 waypoint7 waypoint25)
		(can_traverse rover3 waypoint25 waypoint10)
		(can_traverse rover3 waypoint10 waypoint25)
		(can_traverse rover3 waypoint25 waypoint11)
		(can_traverse rover3 waypoint11 waypoint25)
		(can_traverse rover3 waypoint25 waypoint16)
		(can_traverse rover3 waypoint16 waypoint25)
		(can_traverse rover3 waypoint25 waypoint24)
		(can_traverse rover3 waypoint24 waypoint25)
		(can_traverse rover3 waypoint0 waypoint1)
		(can_traverse rover3 waypoint1 waypoint0)
		(can_traverse rover3 waypoint0 waypoint2)
		(can_traverse rover3 waypoint2 waypoint0)
		(can_traverse rover3 waypoint0 waypoint6)
		(can_traverse rover3 waypoint6 waypoint0)
		(can_traverse rover3 waypoint0 waypoint23)
		(can_traverse rover3 waypoint23 waypoint0)
		(can_traverse rover3 waypoint0 waypoint29)
		(can_traverse rover3 waypoint29 waypoint0)
		(can_traverse rover3 waypoint3 waypoint9)
		(can_traverse rover3 waypoint9 waypoint3)
		(can_traverse rover3 waypoint3 waypoint17)
		(can_traverse rover3 waypoint17 waypoint3)
		(can_traverse rover3 waypoint3 waypoint27)
		(can_traverse rover3 waypoint27 waypoint3)
		(can_traverse rover3 waypoint3 waypoint30)
		(can_traverse rover3 waypoint30 waypoint3)
		(can_traverse rover3 waypoint7 waypoint13)
		(can_traverse rover3 waypoint13 waypoint7)
		(can_traverse rover3 waypoint7 waypoint18)
		(can_traverse rover3 waypoint18 waypoint7)
		(can_traverse rover3 waypoint10 waypoint5)
		(can_traverse rover3 waypoint5 waypoint10)
		(can_traverse rover3 waypoint10 waypoint8)
		(can_traverse rover3 waypoint8 waypoint10)
		(can_traverse rover3 waypoint10 waypoint12)
		(can_traverse rover3 waypoint12 waypoint10)
		(can_traverse rover3 waypoint10 waypoint15)
		(can_traverse rover3 waypoint15 waypoint10)
		(can_traverse rover3 waypoint10 waypoint20)
		(can_traverse rover3 waypoint20 waypoint10)
		(can_traverse rover3 waypoint10 waypoint34)
		(can_traverse rover3 waypoint34 waypoint10)
		(can_traverse rover3 waypoint11 waypoint33)
		(can_traverse rover3 waypoint33 waypoint11)
		(can_traverse rover3 waypoint24 waypoint22)
		(can_traverse rover3 waypoint22 waypoint24)
		(can_traverse rover3 waypoint1 waypoint26)
		(can_traverse rover3 waypoint26 waypoint1)
		(can_traverse rover3 waypoint1 waypoint28)
		(can_traverse rover3 waypoint28 waypoint1)
		(can_traverse rover3 waypoint2 waypoint19)
		(can_traverse rover3 waypoint19 waypoint2)
		(can_traverse rover3 waypoint23 waypoint32)
		(can_traverse rover3 waypoint32 waypoint23)
		(available rover4)
		(store_of rover4store rover4)
		(equipped_for_rock_analysis rover4)
		(equipped_for_imaging rover4)
		(can_traverse rover4 waypoint8 waypoint6)
		(can_traverse rover4 waypoint6 waypoint8)
		(can_traverse rover4 waypoint8 waypoint7)
		(can_traverse rover4 waypoint7 waypoint8)
		(can_traverse rover4 waypoint8 waypoint10)
		(can_traverse rover4 waypoint10 waypoint8)
		(can_traverse rover4 waypoint8 waypoint12)
		(can_traverse rover4 waypoint12 waypoint8)
		(can_traverse rover4 waypoint8 waypoint30)
		(can_traverse rover4 waypoint30 waypoint8)
		(can_traverse rover4 waypoint8 waypoint31)
		(can_traverse rover4 waypoint31 waypoint8)
		(can_traverse rover4 waypoint8 waypoint32)
		(can_traverse rover4 waypoint32 waypoint8)
		(can_traverse rover4 waypoint6 waypoint1)
		(can_traverse rover4 waypoint1 waypoint6)
		(can_traverse rover4 waypoint6 waypoint5)
		(can_traverse rover4 waypoint5 waypoint6)
		(can_traverse rover4 waypoint6 waypoint15)
		(can_traverse rover4 waypoint15 waypoint6)
		(can_traverse rover4 waypoint6 waypoint17)
		(can_traverse rover4 waypoint17 waypoint6)
		(can_traverse rover4 waypoint6 waypoint25)
		(can_traverse rover4 waypoint25 waypoint6)
		(can_traverse rover4 waypoint6 waypoint27)
		(can_traverse rover4 waypoint27 waypoint6)
		(can_traverse rover4 waypoint7 waypoint16)
		(can_traverse rover4 waypoint16 waypoint7)
		(can_traverse rover4 waypoint7 waypoint24)
		(can_traverse rover4 waypoint24 waypoint7)
		(can_traverse rover4 waypoint10 waypoint0)
		(can_traverse rover4 waypoint0 waypoint10)
		(can_traverse rover4 waypoint10 waypoint20)
		(can_traverse rover4 waypoint20 waypoint10)
		(can_traverse rover4 waypoint10 waypoint23)
		(can_traverse rover4 waypoint23 waypoint10)
		(can_traverse rover4 waypoint10 waypoint34)
		(can_traverse rover4 waypoint34 waypoint10)
		(can_traverse rover4 waypoint12 waypoint21)
		(can_traverse rover4 waypoint21 waypoint12)
		(can_traverse rover4 waypoint12 waypoint33)
		(can_traverse rover4 waypoint33 waypoint12)
		(can_traverse rover4 waypoint30 waypoint2)
		(can_traverse rover4 waypoint2 waypoint30)
		(can_traverse rover4 waypoint30 waypoint4)
		(can_traverse rover4 waypoint4 waypoint30)
		(can_traverse rover4 waypoint31 waypoint9)
		(can_traverse rover4 waypoint9 waypoint31)
		(can_traverse rover4 waypoint31 waypoint13)
		(can_traverse rover4 waypoint13 waypoint31)
		(can_traverse rover4 waypoint32 waypoint14)
		(can_traverse rover4 waypoint14 waypoint32)
		(can_traverse rover4 waypoint1 waypoint19)
		(can_traverse rover4 waypoint19 waypoint1)
		(can_traverse rover4 waypoint1 waypoint22)
		(can_traverse rover4 waypoint22 waypoint1)
		(can_traverse rover4 waypoint1 waypoint26)
		(can_traverse rover4 waypoint26 waypoint1)
		(can_traverse rover4 waypoint1 waypoint28)
		(can_traverse rover4 waypoint28 waypoint1)
		(can_traverse rover4 waypoint17 waypoint11)
		(can_traverse rover4 waypoint11 waypoint17)
		(can_traverse rover4 waypoint25 waypoint3)
		(can_traverse rover4 waypoint3 waypoint25)
		(can_traverse rover4 waypoint24 waypoint18)
		(can_traverse rover4 waypoint18 waypoint24)
		(can_traverse rover4 waypoint24 waypoint29)
		(can_traverse rover4 waypoint29 waypoint24)
		(available rover5)
		(store_of rover5store rover5)
		(equipped_for_soil_analysis rover5)
		(equipped_for_rock_analysis rover5)
		(equipped_for_imaging rover5)
		(can_traverse rover5 waypoint10 waypoint0)
		(can_traverse rover5 waypoint0 waypoint10)
		(can_traverse rover5 waypoint10 waypoint5)
		(can_traverse rover5 waypoint5 waypoint10)
		(can_traverse rover5 waypoint10 waypoint8)
		(can_traverse rover5 waypoint8 waypoint10)
		(can_traverse rover5 waypoint10 waypoint12)
		(can_traverse rover5 waypoint12 waypoint10)
		(can_traverse rover5 waypoint10 waypoint15)
		(can_traverse rover5 waypoint15 waypoint10)
		(can_traverse rover5 waypoint10 waypoint20)
		(can_traverse rover5 waypoint20 waypoint10)
		(can_traverse rover5 waypoint10 waypoint23)
		(can_traverse rover5 waypoint23 waypoint10)
		(can_traverse rover5 waypoint10 waypoint25)
		(can_traverse rover5 waypoint25 waypoint10)
		(can_traverse rover5 waypoint10 waypoint32)
		(can_traverse rover5 waypoint32 waypoint10)
		(can_traverse rover5 waypoint10 waypoint34)
		(can_traverse rover5 waypoint34 waypoint10)
		(can_traverse rover5 waypoint0 waypoint1)
		(can_traverse rover5 waypoint1 waypoint0)
		(can_traverse rover5 waypoint0 waypoint2)
		(can_traverse rover5 waypoint2 waypoint0)
		(can_traverse rover5 waypoint0 waypoint16)
		(can_traverse rover5 waypoint16 waypoint0)
		(can_traverse rover5 waypoint0 waypoint29)
		(can_traverse rover5 waypoint29 waypoint0)
		(can_traverse rover5 waypoint5 waypoint4)
		(can_traverse rover5 waypoint4 waypoint5)
		(can_traverse rover5 waypoint5 waypoint7)
		(can_traverse rover5 waypoint7 waypoint5)
		(can_traverse rover5 waypoint5 waypoint17)
		(can_traverse rover5 waypoint17 waypoint5)
		(can_traverse rover5 waypoint5 waypoint24)
		(can_traverse rover5 waypoint24 waypoint5)
		(can_traverse rover5 waypoint8 waypoint27)
		(can_traverse rover5 waypoint27 waypoint8)
		(can_traverse rover5 waypoint8 waypoint30)
		(can_traverse rover5 waypoint30 waypoint8)
		(can_traverse rover5 waypoint8 waypoint31)
		(can_traverse rover5 waypoint31 waypoint8)
		(can_traverse rover5 waypoint12 waypoint9)
		(can_traverse rover5 waypoint9 waypoint12)
		(can_traverse rover5 waypoint12 waypoint21)
		(can_traverse rover5 waypoint21 waypoint12)
		(can_traverse rover5 waypoint15 waypoint6)
		(can_traverse rover5 waypoint6 waypoint15)
		(can_traverse rover5 waypoint15 waypoint13)
		(can_traverse rover5 waypoint13 waypoint15)
		(can_traverse rover5 waypoint15 waypoint19)
		(can_traverse rover5 waypoint19 waypoint15)
		(can_traverse rover5 waypoint20 waypoint18)
		(can_traverse rover5 waypoint18 waypoint20)
		(can_traverse rover5 waypoint20 waypoint26)
		(can_traverse rover5 waypoint26 waypoint20)
		(can_traverse rover5 waypoint23 waypoint14)
		(can_traverse rover5 waypoint14 waypoint23)
		(can_traverse rover5 waypoint25 waypoint22)
		(can_traverse rover5 waypoint22 waypoint25)
		(can_traverse rover5 waypoint25 waypoint33)
		(can_traverse rover5 waypoint33 waypoint25)
		(can_traverse rover5 waypoint32 waypoint3)
		(can_traverse rover5 waypoint3 waypoint32)
		(can_traverse rover5 waypoint1 waypoint28)
		(can_traverse rover5 waypoint28 waypoint1)
		(can_traverse rover5 waypoint17 waypoint11)
		(can_traverse rover5 waypoint11 waypoint17)
		(on_board camera0 rover2)
		(calibration_target camera0 objective6)
		(supports camera0 colour)
		(supports camera0 high_res)
		(supports camera0 low_res)
		(on_board camera1 rover4)
		(calibration_target camera1 objective1)
		(supports camera1 colour)
		(supports camera1 high_res)
		(supports camera1 low_res)
		(on_board camera2 rover3)
		(calibration_target camera2 objective6)
		(supports camera2 high_res)
		(supports camera2 low_res)
		(on_board camera3 rover0)
		(calibration_target camera3 objective7)
		(supports camera3 colour)
		(supports camera3 high_res)
		(supports camera3 low_res)
		(on_board camera4 rover5)
		(calibration_target camera4 objective4)
		(supports camera4 colour)
		(supports camera4 high_res)
		(on_board camera5 rover4)
		(calibration_target camera5 objective5)
		(supports camera5 colour)
		(supports camera5 high_res)
		(on_board camera6 rover2)
		(calibration_target camera6 objective3)
		(supports camera6 high_res)
		(supports camera6 low_res)
		(on_board camera7 rover2)
		(calibration_target camera7 objective6)
		(supports camera7 high_res)
		(supports camera7 low_res)
		(on_board camera8 rover1)
		(calibration_target camera8 objective7)
		(supports camera8 high_res)
		(visible_from objective0 waypoint0)
		(visible_from objective0 waypoint1)
		(visible_from objective0 waypoint2)
		(visible_from objective0 waypoint3)
		(visible_from objective0 waypoint4)
		(visible_from objective1 waypoint0)
		(visible_from objective1 waypoint1)
		(visible_from objective1 waypoint2)
		(visible_from objective1 waypoint3)
		(visible_from objective1 waypoint4)
		(visible_from objective2 waypoint0)
		(visible_from objective2 waypoint1)
		(visible_from objective2 waypoint2)
		(visible_from objective2 waypoint3)
		(visible_from objective2 waypoint4)
		(visible_from objective2 waypoint5)
		(visible_from objective2 waypoint6)
		(visible_from objective2 waypoint7)
		(visible_from objective2 waypoint8)
		(visible_from objective2 waypoint9)
		(visible_from objective2 waypoint10)
		(visible_from objective2 waypoint11)
		(visible_from objective2 waypoint12)
		(visible_from objective2 waypoint13)
		(visible_from objective2 waypoint14)
		(visible_from objective2 waypoint15)
		(visible_from objective2 waypoint16)
		(visible_from objective2 waypoint17)
		(visible_from objective3 waypoint0)
		(visible_from objective3 waypoint1)
		(visible_from objective3 waypoint2)
		(visible_from objective3 waypoint3)
		(visible_from objective3 waypoint4)
		(visible_from objective3 waypoint5)
		(visible_from objective3 waypoint6)
		(visible_from objective3 waypoint7)
		(visible_from objective3 waypoint8)
		(visible_from objective3 waypoint9)
		(visible_from objective3 waypoint10)
		(visible_from objective3 waypoint11)
		(visible_from objective3 waypoint12)
		(visible_from objective3 waypoint13)
		(visible_from objective3 waypoint14)
		(visible_from objective3 waypoint15)
		(visible_from objective3 waypoint16)
		(visible_from objective3 waypoint17)
		(visible_from objective3 waypoint18)
		(visible_from objective3 waypoint19)
		(visible_from objective3 waypoint20)
		(visible_from objective3 waypoint21)
		(visible_from objective3 waypoint22)
		(visible_from objective3 waypoint23)
		(visible_from objective3 waypoint24)
		(visible_from objective3 waypoint25)
		(visible_from objective3 waypoint26)
		(visible_from objective3 waypoint27)
		(visible_from objective3 waypoint28)
		(visible_from objective3 waypoint29)
		(visible_from objective3 waypoint30)
		(visible_from objective3 waypoint31)
		(visible_from objective3 waypoint32)
		(visible_from objective3 waypoint33)
		(visible_from objective4 waypoint0)
		(visible_from objective4 waypoint1)
		(visible_from objective4 waypoint2)
		(visible_from objective4 waypoint3)
		(visible_from objective4 waypoint4)
		(visible_from objective4 waypoint5)
		(visible_from objective4 waypoint6)
		(visible_from objective4 waypoint7)
		(visible_from objective4 waypoint8)
		(visible_from objective4 waypoint9)
		(visible_from objective4 waypoint10)
		(visible_from objective4 waypoint11)
		(visible_from objective4 waypoint12)
		(visible_from objective4 waypoint13)
		(visible_from objective4 waypoint14)
		(visible_from objective4 waypoint15)
		(visible_from objective4 waypoint16)
		(visible_from objective4 waypoint17)
		(visible_from objective4 waypoint18)
		(visible_from objective4 waypoint19)
		(visible_from objective4 waypoint20)
		(visible_from objective4 waypoint21)
		(visible_from objective4 waypoint22)
		(visible_from objective4 waypoint23)
		(visible_from objective4 waypoint24)
		(visible_from objective4 waypoint25)
		(visible_from objective4 waypoint26)
		(visible_from objective4 waypoint27)
		(visible_from objective4 waypoint28)
		(visible_from objective4 waypoint29)
		(visible_from objective4 waypoint30)
		(visible_from objective5 waypoint0)
		(visible_from objective6 waypoint0)
		(visible_from objective6 waypoint1)
		(visible_from objective6 waypoint2)
		(visible_from objective6 waypoint3)
		(visible_from objective6 waypoint4)
		(visible_from objective6 waypoint5)
		(visible_from objective6 waypoint6)
		(visible_from objective6 waypoint7)
		(visible_from objective6 waypoint8)
		(visible_from objective6 waypoint9)
		(visible_from objective6 waypoint10)
		(visible_from objective6 waypoint11)
		(visible_from objective6 waypoint12)
		(visible_from objective6 waypoint13)
		(visible_from objective7 waypoint0)
		(visible_from objective7 waypoint1)
		(visible_from objective7 waypoint2)
		(visible_from objective7 waypoint3)
		(visible_from objective7 waypoint4)
		(visible_from objective7 waypoint5)
		(visible_from objective7 waypoint6)
		(visible_from objective7 waypoint7)
		(visible_from objective7 waypoint8)
		(visible_from objective7 waypoint9)
		(visible_from objective7 waypoint10)
		(visible_from objective7 waypoint11)
		(visible_from objective7 waypoint12)
		(visible_from objective7 waypoint13)
		(visible_from objective7 waypoint14)
		(visible_from objective7 waypoint15)
		(visible_from objective7 waypoint16)
		(visible_from objective7 waypoint17)
		(visible_from objective7 waypoint18)
		(visible_from objective7 waypoint19)
		(visible_from objective7 waypoint20)
		(visible_from objective7 waypoint21)
		(visible_from objective7 waypoint22)
		(visible_from objective7 waypoint23)
		(visible_from objective7 waypoint24)
		(visible_from objective7 waypoint25)
		(visible_from objective7 waypoint26)
		(visible_from objective7 waypoint27)
		(visible_from objective7 waypoint28)
		(visible_from objective7 waypoint29)
		(visible_from objective7 waypoint30)
		(visible_from objective7 waypoint31)
		(visible_from objective7 waypoint32)
		(visible_from objective7 waypoint33)
		)

(:goal (and
(communicated_soil_data waypoint23)
(communicated_soil_data waypoint0)
(communicated_soil_data waypoint14)
(communicated_soil_data waypoint34)
(communicated_soil_data waypoint18)
(communicated_soil_data waypoint16)
(communicated_soil_data waypoint12)
(communicated_soil_data waypoint6)
(communicated_rock_data waypoint24)
(communicated_rock_data waypoint33)
(communicated_rock_data waypoint9)
(communicated_image_data objective4 high_res)
(communicated_image_data objective3 high_res)
(communicated_image_data objective7 colour)
	)
)
)

