(define (problem blocks-9-0)
(:domain blocks)
(:objects h d i a e g b f c )
(:init
	(clear b)
	(clear e)
	(clear f)
	(handempty)
	(on a g)
	(on b d)
	(on e i)
	(on g h)
	(on h c)
	(on i a)
	(ontable c)
	(ontable d)
	(ontable f)
)
(:goal (and (on g d) (on d b) (on b c) (on c a) (on a i) (on i f) (on f e)
            (on e h)))
)
