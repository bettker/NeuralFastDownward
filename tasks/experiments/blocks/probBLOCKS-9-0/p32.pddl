(define (problem blocks-9-0)
(:domain blocks)
(:objects h d i a e g b f c )
(:init
	(clear a)
	(clear b)
	(handempty)
	(on a h)
	(on b e)
	(on d f)
	(on e d)
	(on f g)
	(on g i)
	(on i c)
	(ontable c)
	(ontable h)
)
(:goal (and (on g d) (on d b) (on b c) (on c a) (on a i) (on i f) (on f e)
            (on e h)))
)
