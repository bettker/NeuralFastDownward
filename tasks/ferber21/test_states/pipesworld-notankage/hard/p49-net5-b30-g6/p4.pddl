
(define (problem network5new_all_30_6_instance)
  (:domain pipesworld_strips)
  (:objects

    	b10 b21 b17 b14 b27 b22 b4 b28 b6 b15 b19 b29 b20 b13 b8 b2 b11 b24 b5 b0 b1 b25 b18 b7 b12 b9 b3 b26 b23 b16 - batch-atom
	a1 a2 a3 a4 a5 - area
	s12 s13 s34 s23 s15 - pipe
	

  )
  (:init
	(first b18 s12)
	(first b2 s13)
	(first b21 s34)
	(first b7 s23)
	(first b8 s15)
	(follow b0 b24)
	(follow b1 b18)
	(follow b24 b8)
	(follow b26 b2)
	(follow b27 b29)
	(follow b28 b4)
	(follow b29 b7)
	(follow b4 b0)
	(follow b6 b27)
	(last b1 s12)
	(last b21 s34)
	(last b26 s13)
	(last b28 s15)
	(last b6 s23)
	(normal s12)
	(normal s13)
	(on b10 a4)
	(on b11 a4)
	(on b12 a1)
	(on b13 a4)
	(on b14 a2)
	(on b15 a1)
	(on b16 a4)
	(on b17 a2)
	(on b19 a3)
	(on b20 a1)
	(on b22 a5)
	(on b23 a5)
	(on b25 a1)
	(on b3 a4)
	(on b5 a3)
	(on b9 a2)
	(pop-updating s23)
	(push-updating s15)
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
	(is-product b10 oca1)
	(is-product b21 oca1)
	(is-product b17 rat-a)
	(is-product b14 gasoleo)
	(is-product b27 oc1b)
	(is-product b22 oc1b)
	(is-product b4 gasoleo)
	(is-product b28 lco)
	(is-product b6 gasoleo)
	(is-product b15 oc1b)
	(is-product b19 gasoleo)
	(is-product b29 oca1)
	(is-product b20 rat-a)
	(is-product b13 rat-a)
	(is-product b8 oca1)
	(is-product b2 rat-a)
	(is-product b11 lco)
	(is-product b24 lco)
	(is-product b5 lco)
	(is-product b0 rat-a)
	(is-product b1 gasoleo)
	(is-product b25 oca1)
	(is-product b18 gasoleo)
	(is-product b7 lco)
	(is-product b12 oca1)
	(is-product b9 rat-a)
	(is-product b3 gasoleo)
	(is-product b26 rat-a)
	(is-product b23 lco)
	(is-product b16 oc1b)
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
    	(on b17 a3)
	(on b27 a4)
	(on b6 a4)
	(on b20 a2)
	(on b11 a1)
	(on b18 a3)
	
  ))
)

