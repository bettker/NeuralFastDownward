

(define (problem bw-rand-20)
(:domain blocks)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 )
(:init
	(clear b11)
	(clear b15)
	(clear b4)
	(clear b7)
	(handempty)
	(on b1 b8)
	(on b10 b20)
	(on b11 b9)
	(on b12 b5)
	(on b13 b10)
	(on b15 b14)
	(on b16 b18)
	(on b17 b1)
	(on b19 b13)
	(on b2 b12)
	(on b20 b3)
	(on b3 b16)
	(on b4 b17)
	(on b6 b2)
	(on b8 b19)
	(on b9 b6)
	(ontable b14)
	(ontable b18)
	(ontable b5)
	(ontable b7)
)
(:goal
(and
(on b1 b2)
(on b2 b3)
(on b3 b4)
(on b4 b5)
(on b5 b6)
(on b6 b7)
(on b7 b8)
(on b8 b9)
(on b9 b10)
(on b10 b11)
(on b11 b12)
(on b12 b13)
(on b13 b14)
(on b14 b15)
(on b15 b16)
(on b16 b17)
(on b17 b18)
(on b18 b19)
(on b19 b20))
)
)



