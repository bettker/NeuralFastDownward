(define (problem blocks-9-0)
(:domain blocks)
(:objects h d i a e g b f c )
(:init
	(clear g)
	(clear i)
	(handempty)
	(on a e)
	(on d b)
	(on e c)
	(on f d)
	(on g h)
	(on h f)
	(on i a)
	(ontable b)
	(ontable c)
)
(:goal (and (on g d) (on d b) (on b c) (on c a) (on a i) (on i f) (on f e)
            (on e h)))
)
