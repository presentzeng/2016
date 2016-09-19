(define (accumulate op init list)
  (if (null? list)
      init
      (op (car list)
	  (accumulate op init (cdr list)))))
      

(define (flatmap proc seq)
  (accumulate append () (map proc seq)))

;;remove element contains in seq if it equals item
;;(remove 1 '(1 2 3)) --> (2 3)
(define (remove item seq)
  (filter (lambda (x) (not (= x item)))
	  seq))

(define (permutations s)
  (if (null? s)
      (list ())
      (flatmap (lambda (x)
		 (map (lambda (p) (cons x p))
		      (permutations (remove x s))))
	       s)))

;(permutations '(1 2 3))

;(remove 1 '(1 2 3))


	    
