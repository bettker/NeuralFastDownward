(define (problem blocks-8-0)
(:domain blocks)
(:objects h g f e c b d a )
(:init
	(clear a)
	(clear g)
	(handempty)
	(on a e)
	(on d b)
	(on e h)
	(on f d)
	(on g c)
	(on h f)
	(ontable b)
	(ontable c)
)
(:goal (and (on d f) (on f e) (on e h) (on h c) (on c a) (on a g) (on g b)))
)
