(define (problem blocks-15-1)
(:domain blocks)
(:objects j b k a d h e n c f l m i o g )
		(:init
		(clear f)
		(clear l)
		(clear n)
		(clear o)
		(handempty)
		(on a k)
		(on b j)
		(on c d)
		(on d a)
		(on e h)
		(on f c)
		(on j i)
		(on k b)
		(on l e)
		(on m g)
		(on n m)
		(ontable g)
		(ontable h)
		(ontable i)
		(ontable o)
		)
(:goal (and (on d g) (on g f) (on f k) (on k j) (on j e) (on e m) (on m a)
            (on a b) (on b c) (on c n) (on n o) (on o i) (on i l) (on l h)))
)
