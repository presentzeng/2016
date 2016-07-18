(define func (lambda (x) (+ x 4)))

; (a, b) func(a) * func(a+1) .... * func(b)
(define (product term a next b)
  (if (> a b)
      1
      (* (term a) (product term (next a) next b))))

(product (lambda (x) x)
	 1
	 (lambda (x) (+ x 1))
	 10)

