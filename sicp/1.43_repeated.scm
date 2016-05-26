
(define (compose func1 func2)
  (lambda (x)
    (func1 (func2 x))))

;;func(func(func....(x)))..)  n times
(define (repeated func times)
  (if (> times 0)
      (compose func func)
      (repeated func (- (/ times 2.0) 1))))

((repeated square 2) 5)