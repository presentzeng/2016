;;smooth-function
(define (compose func1 func2)
  (lambda (x)
    (func1 (func2 x))))


(define (repeated func times)
  (if (> times 0)
      (compose func func)
      (repeated func (- (/ times 2.0) 1))))

(define (smooth func)
  (let ((dx 0.0001))
    (lambda (x)
      (/ (+
	  (func (- x dx))
	  (func x)
	  (func (+ x dx)))
	 3))))

((smooth square) 5)