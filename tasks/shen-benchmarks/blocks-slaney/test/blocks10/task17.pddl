(define (problem BW-10-7268-17)
    (:domain blocksworld)
    (:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 - block)
    (:init
        (handempty)
        (on b1 b8)
        (on b2 b10)
        (on-table b3)
        (on b4 b1)
        (on-table b5)
        (on-table b6)
        (on b7 b3)
        (on-table b8)
        (on b9 b4)
        (on b10 b7)
        (clear b2)
        (clear b5)
        (clear b6)
        (clear b9)
    )
    (:goal
        (and
            (on b1 b7)
            (on b2 b1)
            (on b3 b9)
            (on b4 b3)
            (on b5 b4)
            (on-table b6)
            (on b7 b10)
            (on b8 b5)
            (on-table b9)
            (on-table b10)
        )
    )
)