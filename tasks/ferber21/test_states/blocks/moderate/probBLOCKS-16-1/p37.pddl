(define (problem blocks-16-1)
(:domain blocks)
(:objects k c d b i n p j m l g e a o h f )
		(:init
		(clear i)
		(clear j)
		(clear m)
		(clear p)
		(handempty)
		(on b d)
		(on c k)
		(on d c)
		(on f g)
		(on g o)
		(on h e)
		(on i n)
		(on j l)
		(on k a)
		(on m b)
		(on o h)
		(on p f)
		(ontable a)
		(ontable e)
		(ontable l)
		(ontable n)
		)
(:goal (and (on d b) (on b p) (on p f) (on f g) (on g k) (on k i) (on i l)
            (on l j) (on j h) (on h a) (on a n) (on n e) (on e m) (on m c)
            (on c o)))
)
