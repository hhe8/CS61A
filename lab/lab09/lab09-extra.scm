(define (composed f g)
  'YOUR-CODE-HERE
  (lambda (x) (f (g x)))
)

(define (max a b) (if (> a b) a b))
(define (min a b) (if (> a b) b a))
(define (gcd a b)
  'YOUR-CODE-HERE
  (
    cond
         ((= (min a b) 0) (max a b))
         (else
              (
              gcd (min a b) (modulo (max a b) (min a b))
              )
         )
  )
)

(define (filter f lst)
  'YOUR-CODE-HERE
  (cond
      ((null? lst) ())
      ((f (car lst)) (cons (car lst) (filter f (cdr lst))))
      (else (filter f (cdr lst)))
  )
)

(define (all-satisfies lst pred)
  'YOUR-CODE-HERE
  (cond ((null? lst) true)
        ((pred (car lst)) (all-satisfies (cdr lst) pred))
        (else false)
  )
)

(define (accumulate combiner start n term)
  (if (= n 0)
      start
      'YOUR-CODE-HERE
      (combiner (term n) (accumulate combiner start (- n 1) term))
      ))
