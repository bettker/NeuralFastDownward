(define (problem blocks-8-0)
(:domain blocks)
(:objects h g f e c b d a )
(:init
	(clear h)
	(handempty)
	(on a g)
	(on b c)
	(on c a)
	(on d b)
	(on f d)
	(on g e)
	(on h f)
	(ontable e)
)
(:goal (and (on d f) (on f e) (on e h) (on h c) (on c a) (on a g) (on g b)))
)
