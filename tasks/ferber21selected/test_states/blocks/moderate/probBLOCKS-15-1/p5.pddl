(define (problem blocks-15-1)
(:domain blocks)
(:objects j b k a d h e n c f l m i o g )
		(:init
		(clear d)
		(clear e)
		(clear h)
		(clear l)
		(clear m)
		(clear o)
		(handempty)
		(on a k)
		(on b j)
		(on d g)
		(on e n)
		(on g a)
		(on j i)
		(on k b)
		(on n f)
		(on o c)
		(ontable c)
		(ontable f)
		(ontable h)
		(ontable i)
		(ontable l)
		(ontable m)
		)
(:goal (and (on d g) (on g f) (on f k) (on k j) (on j e) (on e m) (on m a)
            (on a b) (on b c) (on c n) (on n o) (on o i) (on i l) (on l h)))
)
