(define (problem blocks-17-0)
(:domain blocks)
(:objects c d e f b i j a n o k m p h g l q )
		(:init
		(clear d)
		(clear n)
		(clear o)
		(clear q)
		(handempty)
		(on b m)
		(on c f)
		(on e k)
		(on f p)
		(on g j)
		(on h e)
		(on i b)
		(on j c)
		(on l i)
		(on n l)
		(on o g)
		(on p h)
		(on q a)
		(ontable a)
		(ontable d)
		(ontable k)
		(ontable m)
		)
(:goal (and (on q n) (on n l) (on l o) (on o j) (on j h) (on h c) (on c e)
            (on e m) (on m p) (on p a) (on a g) (on g b) (on b i) (on i k)
            (on k f) (on f d)))
)
