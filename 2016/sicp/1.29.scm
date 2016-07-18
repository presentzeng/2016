(define (even? n)
  (if (= 0 (remainder n 2))
      true
      false))

(even? 5)

(define (func x)
  (+ 1 x))

(define (Simpson_Rule_Thread func a b)
  (+ (* 4(func (/ (+ a b) 2))) (func a) (func b)))


(Simpson_Rule_Thread func 1 2)