(define (problem blocks-9-0)
(:domain blocks)
(:objects h d i a e g b f c )
(:init
	(clear c)
	(clear e)
	(clear i)
	(handempty)
	(on a f)
	(on d b)
	(on e a)
	(on f g)
	(on g h)
	(on h d)
	(ontable b)
	(ontable c)
	(ontable i)
)
(:goal (and (on g d) (on d b) (on b c) (on c a) (on a i) (on i f) (on f e)
            (on e h)))
)
