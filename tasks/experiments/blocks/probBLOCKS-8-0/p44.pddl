(define (problem blocks-8-0)
(:domain blocks)
(:objects h g f e c b d a )
(:init
	(clear b)
	(clear c)
	(handempty)
	(on a e)
	(on b d)
	(on c g)
	(on e h)
	(on g a)
	(on h f)
	(ontable d)
	(ontable f)
)
(:goal (and (on d f) (on f e) (on e h) (on h c) (on c a) (on a g) (on g b)))
)
