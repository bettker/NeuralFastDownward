(define (problem blocks-8-0)
(:domain blocks)
(:objects h g f e c b d a )
(:init
	(clear c)
	(clear e)
	(clear g)
	(clear h)
	(handempty)
	(on a f)
	(on b a)
	(on e b)
	(on g d)
	(ontable c)
	(ontable d)
	(ontable f)
	(ontable h)
)
(:goal (and (on d f) (on f e) (on e h) (on h c) (on c a) (on a g) (on g b)))
)
