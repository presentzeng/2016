(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))

(define (cdr z)
  (z (lambda (p q) 1)))

;(define obj1 (cons 2 3))
;(cdr obj1)
;(cdr (cons 5 6))
(define one (list 1 2 3))
(define two (list 4 5 6))

(define three (cons one two))

