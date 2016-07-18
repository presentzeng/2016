(define (inc x)
  (+ 1 x))


(define (compose func1 func2)
  (lambda (x)
    (func1 (func2 x))))

((compose square inc) 6)