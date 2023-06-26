(define (substitute s old new)
  (cond
    ((null? s) nil)
    ((pair? (car s)) (cons (substitute (car s) old new) (substitute (cdr s) old new)))
    ((eq? (car s) old) (cons new (substitute (cdr s) old new)))
    (else (cons (car s) (substitute (cdr s) old new)))
  )
)

; Feel free to use these helper procedures in your solution
(define (map fn s)
  (if (null? s)
      nil
      (cons (fn (car s)) (map fn (cdr s)))))

(define (filter fn s)
  (cond 
    ((null? s)    nil)
    ((fn (car s)) (cons (car s) (filter fn (cdr s))))
    (else         (filter fn (cdr s)))))

(define (count x s)
  (cond
    ((null? s) 0)
    ((eq? (car s) x) (+ 1 (count x (cdr s))))
    (else (count x (cdr s)))
  )
)

(define (unique s)
  (if (null? s) 
      nil
      (cons (car s) (filter (lambda (x) (not (eq? x (car s)))) (unique (cdr s))))
  )
)

(define (tally names)
  (define (helper unique_names)
    (if (null? unique_names) 
        nil
        (cons 
          (list (car unique_names) (count (car unique_names) names))
          (helper (cdr unique_names))
        )
    )
  )

  (if (null? names) 
      nil
      (helper (unique names))
  )
)
