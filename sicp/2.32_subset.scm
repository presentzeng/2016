;;(1 2) -> (() (1) (2) (1 2))

;(define (mycar list)
 ; (if (null? list)
  ;    list
   ;    list))

(define (subset s)
  (if (null? s)
      (list ())
      (let ((rest (subset (cdr s))))
	(append rest (map subset rest)))))



(define one (list 1 2 3))

(subset one)
      