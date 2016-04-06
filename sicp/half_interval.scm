;;use half-interval method to find roots of an equation f(x) = 0

;;it is an rough results if you want (= 0 result) you might get infinite loop
(define (close-enough? x)
  (< x 0.0001))

(define (half-interval mid func neg posi)
  (display mid)
  (display "\n")
  (if (close-enough? (func mid))
      mid
      (if (< 0 (func mid))
	  (half-interval (/ (+ mid neg) 2)
			 func
			 neg
			 mid)
	  (if (> 0 (func mid))
	      (half-interval (/ (+ posi mid) 2)
			     func
			     mid
			     posi)))))

(define (f x)
  (+ 1 x))

(half-interval 0 f -2 3)
