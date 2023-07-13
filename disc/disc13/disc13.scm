(define (nondecreaselist s)
    (if (null? s)
        s
        (let ((rest (nondecreaselist (cdr s))))
            (if (null? rest)
                (list s)
                (if (> (car s) (car (car rest)))
                    (cons (list (car s)) rest)
                    (cons (cons (car s) (car rest)) (cdr rest))
                )
            )
        )
    )
)

(expect (nondecreaselist '(1 2 3 1 2 3)) ((1 2 3) (1 2 3)))

(expect (nondecreaselist '(1 2 3 4 1 2 3 4 1 1 1 2 1 1 0 4 3 2 1))
        ((1 2 3 4) (1 2 3 4) (1 1 1 2) (1 1) (0 4) (3) (2) (1)))
