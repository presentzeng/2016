(define (func a b)
  (define (test a)
    (define (my n)
      (+ n 1))
   (my 2))
  (test 3))

(func 1 2)
    