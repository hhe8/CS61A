(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  ; YOUR-CODE-HERE
  (car (cdr s))
)

(define (caddr s)
  ; YOUR-CODE-HERE
  (car (cdr (cdr s)))
)

(define (sign x)
  ; YOUR-CODE-HERE
  (cond ((> x 0) 1)
        ((= x 0) 0)
        ((< x 0) -1)
  )
)

(define (square x) (* x x))

(define (pow b n)
  ; YOUR-CODE-HERE
  (cond ((= 1 n) b)
        ((even? n) (pow (* b b) (/ n 2)))
        (else (* b (pow (* b b) (quotient n 2))))
  )
)

(define (ordered? s)
  ; YOUR-CODE-HERE
  (cond ((or (null? s) (null? (cdr s))) true)
        ((not (> (car s) (car (cdr s)))) (ordered? (cdr s)))
        (else false)
  )
)

(define (nodots s)
  ; YOUR-CODE-HERE
  ; why use cons here?
    (cond
          ((null? (cdr s)) s)
          ((null? s) ())
          ((not (integer? (car s))) (if (not (integer? (cdr s)))
                              (cons (nodots (car s)) (nodots (cdr s)))
                              (list (nodots (car s)) (cdr s))
                           )
          )
          (else (if (not (integer? (cdr s)))
                    (cons (car s) (nodots (cdr s)))
                    (list (car s) (cdr s))
                )
          )
    )
)

; Sets as sorted lists

(define (empty? s) (null? s))

(define (contains? s v)
    (cond ((empty? s) false)
          ; YOUR-CODE-HERE
          ((> (car s) v) false)
          ((= v (car s)) true)
          (else (contains? (cdr s) v))
          ))

; Equivalent Python code, for your reference:
;
; def empty(s):
;     return len(s) == 0
;
; def contains(s, v):
;     if empty(s):
;         return False
;     elif s.first > v:
;         return False
;     elif s.first == v:
;         return True
;     else:
;         return contains(s.rest, v)

(define (add s v)
    (cond ((empty? s) (list v))
          ; YOUR-CODE-HERE
          ((contains? s v) s)
          ((> (car s) v) (cons v s))
          (else (cons (car s)(add (cdr s) v)))
          ))

(define (intersect s t)
    (cond ((or (empty? s) (empty? t)) nil)
          ; YOUR-CODE-HERE
          ((= (car s) (car t)) (cons (car s) (intersect (cdr s) (cdr t))))
          ((< (car s) (car t)) (intersect (cdr s) t))
          (else (intersect s (cdr t)))
          ))

; Equivalent Python code, for your reference:
;
; def intersect(set1, set2):
;     if empty(set1) or empty(set2):
;         return Link.empty
;     else:
;         e1, e2 = set1.first, set2.first
;         if e1 == e2:
;             return Link(e1, intersect(set1.rest, set2.rest))
;         elif e1 < e2:
;             return intersect(set1.rest, set2)
;         elif e2 < e1:
;             return intersect(set1, set2.rest)

(define (union s t)
    (cond ((empty? s) t)
          ((empty? t) s)
          ; YOUR-CODE-HERE
          ((= (car s) (car t)) (cons (car s) (union (cdr s) (cdr t))))
          ((< (car s) (car t)) (cons (car s) (union (cdr s) t)))
                         (else (cons (car t) (union s (cdr t))))
          ))

; Binary search trees

; A data abstraction for binary trees where nil represents the empty tree
(define (tree entry left right) (list entry left right))
(define (entry t) (car t))
(define (left t) (cadr t))
(define (right t) (caddr t))
(define (empty? s) (null? s))
(define (leaf entry) (tree entry nil nil))

(define (in? t v)
    (cond ((empty? t) false)
          ; YOUR-CODE-HERE
          ((= (entry t) v) true)
          ((< (entry t) v) (in? (right t) v))
          (else (in? (left t) v))
          ))

; Equivalent Python code, for your reference:
;
; def contains(s, v):
;     if s.is_empty:
;         return False
;     elif s.entry == v:
;         return True
;     elif s.entry < v:
;         return contains(s.right, v)
;     elif s.entry > v:
;         return contains(s.left, v)

(define (as-list t)
    ; YOUR-CODE-HERE
    (cond ((empty? t) '())
          (else (append (as-list (left t)) (append (list (entry t)) (as-list (right t)))))
    ))
