(define (problem BW-12-9546-26)
    (:domain blocksworld)
    (:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 - block)
    (:init
        (handempty)
        (on b1 b10)
        (on b2 b5)
        (on-table b3)
        (on b4 b3)
        (on b5 b8)
        (on b6 b1)
        (on b7 b2)
        (on b8 b11)
        (on-table b9)
        (on-table b10)
        (on b11 b9)
        (on b12 b6)
        (clear b4)
        (clear b7)
        (clear b12)
    )
    (:goal
        (and
            (on b1 b11)
            (on-table b2)
            (on b3 b1)
            (on b4 b9)
            (on-table b5)
            (on b6 b5)
            (on b7 b4)
            (on b8 b6)
            (on b9 b3)
            (on b10 b8)
            (on-table b11)
            (on-table b12)
        )
    )
)