(define (problem blocks-15-1)
(:domain blocks)
(:objects j b k a d h e n c f l m i o g )
		(:init
		(clear a)
		(clear d)
		(clear g)
		(clear h)
		(clear l)
		(clear n)
		(handempty)
		(on a e)
		(on b j)
		(on c k)
		(on d f)
		(on e c)
		(on f o)
		(on j i)
		(on k b)
		(on o m)
		(ontable g)
		(ontable h)
		(ontable i)
		(ontable l)
		(ontable m)
		(ontable n)
		)
(:goal (and (on d g) (on g f) (on f k) (on k j) (on j e) (on e m) (on m a)
            (on a b) (on b c) (on c n) (on n o) (on o i) (on i l) (on l h)))
)
