(define (problem BW-5-168-45)
    (:domain blocksworld)
    (:objects b1 b2 b3 b4 b5 - block)
    (:init
        (handempty)
        (on b1 b2)
        (on b2 b4)
        (on b3 b5)
        (on b4 b3)
        (on-table b5)
        (clear b1)
    )
    (:goal
        (and
            (on b1 b5)
            (on-table b2)
            (on b3 b4)
            (on-table b4)
            (on b5 b2)
        )
    )
)