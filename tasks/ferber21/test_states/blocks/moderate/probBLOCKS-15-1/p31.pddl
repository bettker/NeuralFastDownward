(define (problem blocks-15-1)
(:domain blocks)
(:objects j b k a d h e n c f l m i o g )
		(:init
		(clear e)
		(clear f)
		(clear o)
		(handempty)
		(on a h)
		(on b j)
		(on c m)
		(on e g)
		(on f l)
		(on g a)
		(on h d)
		(on j i)
		(on k b)
		(on l n)
		(on m k)
		(on o c)
		(ontable d)
		(ontable i)
		(ontable n)
		)
(:goal (and (on d g) (on g f) (on f k) (on k j) (on j e) (on e m) (on m a)
            (on a b) (on b c) (on c n) (on n o) (on o i) (on i l) (on l h)))
)
