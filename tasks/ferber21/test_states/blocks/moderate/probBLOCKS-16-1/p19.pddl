(define (problem blocks-16-1)
(:domain blocks)
(:objects k c d b i n p j m l g e a o h f )
		(:init
		(clear g)
		(clear l)
		(clear m)
		(clear o)
		(handempty)
		(on b d)
		(on c k)
		(on d c)
		(on e h)
		(on g e)
		(on i b)
		(on j p)
		(on k a)
		(on l f)
		(on m j)
		(on n i)
		(on p n)
		(ontable a)
		(ontable f)
		(ontable h)
		(ontable o)
		)
(:goal (and (on d b) (on b p) (on p f) (on f g) (on g k) (on k i) (on i l)
            (on l j) (on j h) (on h a) (on a n) (on n e) (on e m) (on m c)
            (on c o)))
)
