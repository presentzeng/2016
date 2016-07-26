;;(1 2) -> (() (1) (2) (1 2))

;(define (mycar list)
 ; (if (null? list)
  ;    list
   ;    list))

;;flag
(define (subset s)
  (if (null? s)
      (list ())
      (let ((rest (subset (cdr s))))
	(append rest (map (lambda (x) (cons (car s) x)) rest)))))



(define one (list 1 2 3))

(subset one)
      