(define (problem blocks-17-0)
(:domain blocks)
(:objects c d e f b i j a n o k m p h g l q )
		(:init
		(clear c)
		(clear e)
		(clear i)
		(clear j)
		(holding k)
		(on a q)
		(on b o)
		(on c l)
		(on e g)
		(on f p)
		(on g m)
		(on h a)
		(on i f)
		(on l h)
		(on m b)
		(on o d)
		(on p n)
		(ontable d)
		(ontable j)
		(ontable n)
		(ontable q)
		)
(:goal (and (on q n) (on n l) (on l o) (on o j) (on j h) (on h c) (on c e)
            (on e m) (on m p) (on p a) (on a g) (on g b) (on b i) (on i k)
            (on k f) (on f d)))
)
