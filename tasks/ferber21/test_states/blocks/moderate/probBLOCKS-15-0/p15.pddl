(define (problem blocks-15-0)
(:domain blocks)
(:objects a c l d j h k o n g i f b m e )
		(:init
		(clear b)
		(clear e)
		(clear i)
		(clear m)
		(handempty)
		(on a k)
		(on b d)
		(on c g)
		(on d l)
		(on e o)
		(on f j)
		(on j h)
		(on l c)
		(on m a)
		(on n f)
		(on o n)
		(ontable g)
		(ontable h)
		(ontable i)
		(ontable k)
		)
(:goal (and (on g o) (on o h) (on h k) (on k m) (on m f) (on f e) (on e a)
            (on a b) (on b l) (on l j) (on j d) (on d n) (on n i) (on i c)))
)
