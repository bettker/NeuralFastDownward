(define (problem blocks-9-0)
(:domain blocks)
(:objects h d i a e g b f c )
(:init
	(clear b)
	(clear e)
	(clear g)
	(handempty)
	(on a c)
	(on b i)
	(on c f)
	(on e h)
	(on g a)
	(on i d)
	(ontable d)
	(ontable f)
	(ontable h)
)
(:goal (and (on g d) (on d b) (on b c) (on c a) (on a i) (on i f) (on f e)
            (on e h)))
)
