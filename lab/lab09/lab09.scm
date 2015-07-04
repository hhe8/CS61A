(define (cube x)
  'YOUR-CODE-HERE
  (* x x x)
)

(define (over-or-under x y)
  'YOUR-CODE-HERE
  (if (< x y) -1
    (if (= x y) 0
      1
    )
  )
)

(define (make-adder num)
  'YOUR-CODE-HERE
  (lambda (x) (+ x num) )
)

(define structure (list '(1) 2 '(3 . 4) 5))

(define (remove item lst)
  'YOUR-CODE-HERE
  (cond
        ((null? lst) ())
        ((equal? item (car lst)) (remove item (cdr lst)))
        (else (append (list (car lst)) (remove item (cdr lst))))

  )
)
