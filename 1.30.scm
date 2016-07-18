(define (sum term a next b)
  (define (iter1 a result)
    (if (> a b)
	result
     (iter1 (next a) (+ (term a) result))))
  (iter1 a 0))
     
	      

(define (inc n)
  (+ 1 n))

(define (cube n)
  (* n n n))

(sum cube 1 inc 3)