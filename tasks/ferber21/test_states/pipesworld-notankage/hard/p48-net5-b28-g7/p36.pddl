
(define (problem network5new_all_28_7_instance)
  (:domain pipesworld_strips)
  (:objects

    	b10 b21 b17 b14 b27 b22 b4 b6 b15 b19 b20 b13 b8 b2 b11 b24 b5 b0 b1 b25 b18 b7 b12 b9 b3 b26 b23 b16 - batch-atom
	a1 a2 a3 a4 a5 - area
	s12 s13 s34 s23 s15 - pipe
	

  )
  (:init
	(first b10 s13)
	(first b11 s15)
	(first b16 s12)
	(first b5 s23)
	(first b7 s34)
	(follow b1 b14)
	(follow b12 b16)
	(follow b13 b5)
	(follow b14 b6)
	(follow b17 b25)
	(follow b23 b8)
	(follow b24 b12)
	(follow b25 b10)
	(follow b6 b9)
	(follow b8 b13)
	(follow b9 b11)
	(last b1 s15)
	(last b17 s13)
	(last b23 s23)
	(last b24 s12)
	(last b7 s34)
	(on b0 a3)
	(on b15 a5)
	(on b18 a5)
	(on b19 a2)
	(on b2 a3)
	(on b20 a2)
	(on b21 a2)
	(on b22 a1)
	(on b26 a2)
	(on b27 a3)
	(on b3 a2)
	(on b4 a5)
	(pop-updating s13)
	(pop-updating s15)
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
	(connect a1 a5 s15)
	;; batch-atoms products
	(is-product b10 rat-a)
	(is-product b21 gasoleo)
	(is-product b17 gasoleo)
	(is-product b14 gasoleo)
	(is-product b27 rat-a)
	(is-product b22 rat-a)
	(is-product b4 rat-a)
	(is-product b6 lco)
	(is-product b15 rat-a)
	(is-product b19 rat-a)
	(is-product b20 rat-a)
	(is-product b13 oca1)
	(is-product b8 lco)
	(is-product b2 gasoleo)
	(is-product b11 lco)
	(is-product b24 oca1)
	(is-product b5 gasoleo)
	(is-product b0 oc1b)
	(is-product b1 oc1b)
	(is-product b25 lco)
	(is-product b18 lco)
	(is-product b7 oca1)
	(is-product b12 oca1)
	(is-product b9 gasoleo)
	(is-product b3 oc1b)
	(is-product b26 rat-a)
	(is-product b23 lco)
	(is-product b16 lco)
	;; batch-atoms initially located in areas
	;; batch-atoms initially located in pipes
	;; unitary pipeline segments
	(not-unitary s12)
	(not-unitary s13)
	(unitary s34)
	(not-unitary s23)
	(not-unitary s15)
)
  (:goal (and
    	(on b17 a2)
	(on b22 a4)
	(on b15 a4)
	(on b13 a3)
	(on b24 a1)
	(on b1 a4)
	(on b23 a2)
	
  ))
)

