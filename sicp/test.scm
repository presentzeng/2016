(define (damp f)
  (lambda (x) (average x (f x))))

((damp square) 10)