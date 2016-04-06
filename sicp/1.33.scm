;sum (a, b) func(a) + func(next(a)) .... + func(b)
;accumulate : to construct product & sum
;valid? : to determine is a is valid

(define (even? n)
  (if (= (remainder n 2) 0)
      true
      false))

(define (accumulate valid? term a next b null-value combiner)
 ; (display a)
  (if (> a b)
      null-value
      (let ((func1 (accumulate valid?
			     term
			     (next a)
			     next
			     b
			     null-value
			     combiner)))
      (if (valid? a)
	  (combiner (term a) func1)
	  func1))))
		    



(define (sum valid? term a next b combiner)
  (accumulate valid? term a next b 0 combiner))


;; 2 + 4 + 8 
(sum even? (lambda (x) x) 1 (lambda (x) (+ x 1)) 8 +)
