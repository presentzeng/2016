;; A number x is called a fixed point of a function f if x satisfies the equation f(x) = x,

(define (close-enough? v1 v2 tolerance)
  (if (< (abs (- v1 v2)) tolerance) 
      true
      false))
  

(define (fixed-point f first-guess)
  (let ((next-guess (f first-guess)))
  (if (close-enough? first-guess next-guess 0.000001)
      next-guess
      (fixed-point f next-guess))))


;;use fixed-point to define sqrt
;;y^2 = x  (fixed-point x/y)
;;won't converge
(define (sqrt x)
  (fixed-point (lambda (y) (/ x y))
		 1.0))

(define (sqrt2 x)
  (fixed-point (lambda (y) (* (/ 1 2) (+ y (/ x y)))) 1.0))

(sqrt2 2)
