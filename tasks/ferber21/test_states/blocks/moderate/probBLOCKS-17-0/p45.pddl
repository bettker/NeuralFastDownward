(define (problem blocks-17-0)
(:domain blocks)
(:objects c d e f b i j a n o k m p h g l q )
		(:init
		(clear c)
		(clear g)
		(clear k)
		(clear l)
		(holding d)
		(on a j)
		(on b m)
		(on c a)
		(on e p)
		(on f n)
		(on g q)
		(on i b)
		(on j i)
		(on l f)
		(on n o)
		(on p h)
		(on q e)
		(ontable h)
		(ontable k)
		(ontable m)
		(ontable o)
		)
(:goal (and (on q n) (on n l) (on l o) (on o j) (on j h) (on h c) (on c e)
            (on e m) (on m p) (on p a) (on a g) (on g b) (on b i) (on i k)
            (on k f) (on f d)))
)
