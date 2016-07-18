;; one = (cons 3 2) = 72 ; (car one) = 3  ;(cdr one) = 2
(define (cons x y)
  (* (expt 2 x)
     (expt 3 y)))

;;if remainder is zero count++
(define (car z)
  (if (= 0 (remainder z 2))
      (+ 1 (car (/ z 2)))
      0))

(car 72)
