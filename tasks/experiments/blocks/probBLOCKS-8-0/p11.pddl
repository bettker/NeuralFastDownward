(define (problem blocks-8-0)
(:domain blocks)
(:objects h g f e c b d a )
(:init
	(clear f)
	(clear g)
	(handempty)
	(on b d)
	(on c b)
	(on e h)
	(on f e)
	(on g a)
	(on h c)
	(ontable a)
	(ontable d)
)
(:goal (and (on d f) (on f e) (on e h) (on h c) (on c a) (on a g) (on g b)))
)
