(define (problem blocks-7-0)
(:domain blocks)
(:objects c f a b g d e )
(:init
	(clear c)
	(clear f)
	(handempty)
	(on a e)
	(on c d)
	(on d b)
	(on f g)
	(on g a)
	(ontable b)
	(ontable e)
)
(:goal (and (on a g) (on g d) (on d b) (on b c) (on c f) (on f e)))
)
