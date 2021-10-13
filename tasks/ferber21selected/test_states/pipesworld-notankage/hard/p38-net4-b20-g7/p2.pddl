
(define (problem network4new_all_20_7_instance)
  (:domain pipesworld_strips)
  (:objects

    	b10 b17 b14 b4 b6 b15 b19 b13 b8 b2 b11 b5 b0 b1 b18 b7 b12 b9 b3 b16 - batch-atom
	a1 a2 a3 a4 - area
	s12 s13 s34 s23 - pipe
	

  )
  (:init
	(first b1 s23)
	(first b10 s34)
	(first b13 s12)
	(first b18 s13)
	(follow b16 b2)
	(follow b17 b7)
	(follow b19 b1)
	(follow b2 b19)
	(follow b4 b13)
	(follow b7 b18)
	(follow b8 b4)
	(last b10 s34)
	(last b16 s23)
	(last b17 s13)
	(last b8 s12)
	(on b0 a3)
	(on b11 a3)
	(on b12 a1)
	(on b14 a2)
	(on b15 a3)
	(on b3 a3)
	(on b5 a1)
	(on b6 a2)
	(on b9 a1)
	(pop-updating s13)
	(pop-updating s23)
	(push-updating s12)
	;; all pipelines segments are in normal state
	(normal s34)
	;; interfaces restrictions
	(may-interface lco lco)
	(may-interface gasoleo gasoleo)
	(may-interface rat-a rat-a)
	(may-interface oca1 oca1)
	(may-interface oc1b oc1b)
	(may-interface lco gasoleo)
	(may-interface gasoleo lco)
	(may-interface lco oca1)
	(may-interface oca1 lco)
	(may-interface lco oc1b)
	(may-interface oc1b lco)
	(may-interface lco rat-a)
	(may-interface rat-a lco)
	(may-interface gasoleo rat-a)
	(may-interface rat-a gasoleo)
	(may-interface gasoleo oca1)
	(may-interface oca1 gasoleo)
	(may-interface gasoleo oc1b)
	(may-interface oc1b gasoleo)
	(may-interface oca1 oc1b)
	(may-interface oc1b oca1)
	;; network topology definition
	(connect a1 a2 s12)
	(connect a1 a3 s13)
	(connect a3 a4 s34)
	(connect a2 a3 s23)
	;; batch-atoms products
	(is-product b10 oc1b)
	(is-product b17 gasoleo)
	(is-product b14 oc1b)
	(is-product b4 rat-a)
	(is-product b6 oc1b)
	(is-product b15 gasoleo)
	(is-product b19 lco)
	(is-product b13 lco)
	(is-product b8 gasoleo)
	(is-product b2 lco)
	(is-product b11 oca1)
	(is-product b5 oc1b)
	(is-product b0 lco)
	(is-product b1 rat-a)
	(is-product b18 lco)
	(is-product b7 rat-a)
	(is-product b12 oc1b)
	(is-product b9 rat-a)
	(is-product b3 rat-a)
	(is-product b16 oca1)
	;; batch-atoms initially located in areas
	;; batch-atoms initially located in pipes
	;; unitary pipeline segments
	(not-unitary s12)
	(not-unitary s13)
	(unitary s34)
	(not-unitary s23)
)
  (:goal (and
    	(on b10 a3)
	(on b17 a4)
	(on b14 a1)
	(on b6 a3)
	(on b13 a1)
	(on b2 a3)
	(on b5 a3)
	
  ))
)

