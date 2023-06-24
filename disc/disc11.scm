(define (vir-fib n)
    (if (< n 2)
        n
        (+ (vir-fib (- n 1)) (vir-fib (- n 2)))
    )
)
(expect (vir-fib 10) 55)
(expect (vir-fib 1) 1)


(define with-list
    (list (list 'a 'b) 'c 'd (list 'e))
)
(draw with-list)


(define with-quote
    '((a b) c d (e))
)
(draw with-quote)


(define helpful-list
   (cons 'a (cons 'b nil)))
(draw helpful-list)


(define another-helpful-list
    (cons 'c (cons 'd (cons (cons 'e nil) nil))))
(draw another-helpful-list)


(define with-cons
    (cons (cons 'a (cons 'b nil)) (cons 'c (cons 'd (cons (cons 'e nil) nil))))
)
(draw with-cons)


(define (add-last lst el)
    (if (null? lst)
        (list el)
        (cons (car lst) (add-last (cdr lst) el))
    )
)


(define (list-concat a b)
    (if (null? b)
        a
        (list-concat (add-last a (car b)) (cdr b))
    )
)
(expect (list-concat '(1 2 3) '(2 3 4)) (1 2 3 2 3 4))
(expect (list-concat '(3) '(2 1 0)) (3 2 1 0))


(define (remove item lst)
  (filter (lambda (x) (not (eq? x item))) lst)
)
(expect (remove 3 nil) ())
(expect (remove 2 '(1 3 2)) (1 3))
(expect (remove 1 '(1 3 2)) (3 2))
(expect (remove 42 '(1 3 2)) (1 3 2))
(expect (remove 3 '(1 3 3 7)) (1 7))


(define (duplicate lst)
    (if (null? lst)
        lst
        (append (list (car lst) (car lst)) (duplicate (cdr lst)))
    )
)
(expect (duplicate '(1 2 3)) (1 1 2 2 3 3))
(expect (duplicate '(1 1)) (1 1 1 1))
