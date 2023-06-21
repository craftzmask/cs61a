(define (over-or-under num1 num2)
  (cond 
    ((< num1 num2) -1)
    ((= num1 num2) 0 )
    (else 1)
  )
)


(define (make-adder num)
  (define (adder inc) (+ num inc)) 
  adder
)


(define (composed f g)
  (define (compose x) (f (g x)))
  compose
)


(define (repeat f n)
  (define (apply x)
    (if (> n 0)
        ((repeat f (- n 1))(f x))
        x
    )
  )
  apply
)

(define (max a b)
  (if (> a b)
      a
      b
  )
)

(define (min a b)
  (if (> a b)
      b
      a
  )
)

(define (gcd a b)
  (if (zero? (modulo (max a b) (min a b)))
      (min a b)
      (gcd (min a b) (modulo (max a b) (min a b)))
  )
)
