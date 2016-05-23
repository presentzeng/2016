(define (inc x)
  (+ x 1))

;(inc 1)
(define (double func)
  (lambda (x)
    (func (func x))))

(((double (double double)) inc) 5)  