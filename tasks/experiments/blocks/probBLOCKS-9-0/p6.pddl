(define (problem blocks-9-0)
(:domain blocks)
(:objects h d i a e g b f c )
(:init
	(clear b)
	(clear d)
	(handempty)
	(on a h)
	(on b a)
	(on c g)
	(on e i)
	(on f e)
	(on h f)
	(on i c)
	(ontable d)
	(ontable g)
)
(:goal (and (on g d) (on d b) (on b c) (on c a) (on a i) (on i f) (on f e)
            (on e h)))
)
