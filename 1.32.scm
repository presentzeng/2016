;product (a, b) func(a) * func(next(a)) .... * func(b)
;sum (a, b) func(a) + func(next(a)) .... + func(b)
;accumulate : to construct product & sum

(define (accumulate combiner term a next b null-value)
;  (display a)
 ; (display "\n")
  (cond ((> a b) null-value)
  ;(if (> a b)
     ; null-value
      (else
      (combiner (term a)
		(accumulate combiner
			    term
			    (next a)
			    next
			    b
			    null-value)))))

(define (product term a next b)
  (accumulate * term a next b 1))
	      
(product (lambda (x) x) 	      
	 1
	 (lambda (i) (+ i 1))
	 10)
			      
		   