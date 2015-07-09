(define (deep-map fn s)
  ; YOUR-CODE-HERE
  (cond ((null? s) '())
        ((list? (car s)) (cons (deep-map fn (car s)) (deep-map fn (cdr s))))
        (else (cons (fn (car s)) (deep-map fn (cdr s))))
  )
)


(define (substitute s old new)
  ; YOUR-CODE-HERE
    (cond ((null? s) '())
          ((list? (car s)) (cons (substitute (car s) old new) (substitute (cdr s) old new)))
          ((equal? (car s) old) (cons new (substitute (cdr s) old new)))
          (else (cons (car s) (substitute (cdr s) old new))))
)

(define (sub-all s olds news)
  ; YOUR-CODE-HERE
  (cond ((null? s) '())
        ((null? olds) s)
        (else (sub-all (substitute s (car olds) (car news)) (cdr olds) (cdr news)))


  )
)
