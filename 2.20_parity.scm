;even of odd
(define (even? n)
  (if (= (remainder n 2) 0)
      true
      false))

(define (odd? n)
  (if (= (remainder n 2) 0)
      false
      true))

(filter even? (list 1 2 3 4))

(define (same-parity x . z)
  (filter (if (even? x)
	      even?
	      odd?)
	  (cons x z)))

(same-parity 2 3 4 5 6)