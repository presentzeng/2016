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

(fixed-point cos 1.0)

