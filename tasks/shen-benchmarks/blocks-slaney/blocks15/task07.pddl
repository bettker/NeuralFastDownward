(define (problem BW-15-4678-7)
    (:domain blocksworld)
    (:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 - block)
    (:init
        (handempty)
        (on-table b1)
        (on b2 b13)
        (on b3 b8)
        (on b4 b3)
        (on b5 b2)
        (on b6 b9)
        (on-table b7)
        (on b8 b1)
        (on b9 b12)
        (on-table b10)
        (on-table b11)
        (on b12 b10)
        (on b13 b11)
        (on b14 b7)
        (on-table b15)
        (clear b4)
        (clear b5)
        (clear b6)
        (clear b14)
        (clear b15)
    )
    (:goal
        (and
            (on-table b1)
            (on b2 b15)
            (on-table b3)
            (on b4 b2)
            (on b5 b12)
            (on b6 b5)
            (on b7 b6)
            (on b8 b3)
            (on b9 b8)
            (on-table b10)
            (on b11 b7)
            (on b12 b13)
            (on b13 b1)
            (on b14 b9)
            (on b15 b11)
        )
    )
)