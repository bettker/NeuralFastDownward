(define (problem BW-4-5774-42)
    (:domain blocksworld)
    (:objects b1 b2 b3 b4 - block)
    (:init
        (handempty)
        (on b1 b2)
        (on-table b2)
        (on b3 b4)
        (on b4 b1)
        (clear b3)
    )
    (:goal
        (and
            (on b1 b2)
            (on-table b2)
            (on-table b3)
            (on b4 b1)
        )
    )
)