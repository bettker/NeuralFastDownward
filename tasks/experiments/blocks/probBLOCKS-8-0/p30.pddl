(define (problem blocks-8-0)
(:domain blocks)
(:objects h g f e c b d a )
(:init
	(clear a)
	(clear e)
	(handempty)
	(on a f)
	(on c b)
	(on e h)
	(on f c)
	(on g d)
	(on h g)
	(ontable b)
	(ontable d)
)
(:goal (and (on d f) (on f e) (on e h) (on h c) (on c a) (on a g) (on g b)))
)
